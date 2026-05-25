const bcrypt   = require('bcryptjs');
const { v4: uuidv4 } = require('uuid');
const pool     = require('../config/db');
const {
    generateAccessToken,
    generateRefreshToken,
    verifyRefreshToken,
    durationToDate
} = require('../utils/tokenHelper');
const { refreshExpiresIn } = require('../config/jwt');

// ─────────────────────────────────────────────────────────────
// TABLE REFERENCES (existing schema — no new tables created)
//
//  Tbl_User_Info                 → admin users
//    C_Code, C_UserID, C_Password, N_Lock, n_type, n_attempts
//
//  Tbl_Device_Login_Token_Details → refresh token store
//    c_token_id, c_user_id, c_emp_code, d_token_issued_date,
//    d_token_valid_to, n_enable, c_company_id, n_device_type
//
//  n_type values used:
//    1 = admin
//    2 = superadmin
// ─────────────────────────────────────────────────────────────

const MAX_ATTEMPTS = 5; // lock account after this many failed logins

// ─── REGISTER ────────────────────────────────────────────────
/**
 * POST /api/auth/register
 * Body: { c_code, c_user_id, c_name, c_password, n_type, mobile_number }
 *
 * Creates a new admin in Tbl_User_Info.
 * n_type: 1 = admin, 2 = superadmin  (defaults to 1)
 */
async function register(req, res) {
    const {
        c_code,
        c_user_id,
        c_name        = '',
        c_password,
        n_type        = 1,
        mobile_number = null
    } = req.body;

    // ── Validation ──
    if (!c_code || !c_user_id || !c_password) {
        return res.status(400).json({
            success: false,
            message: 'c_code, c_user_id and c_password are required.'
        });
    }
    if (c_password.length < 6) {
        return res.status(400).json({
            success: false,
            message: 'Password must be at least 6 characters.'
        });
    }
    if (![1, 2].includes(Number(n_type))) {
        return res.status(400).json({
            success: false,
            message: 'n_type must be 1 (admin) or 2 (superadmin).'
        });
    }

    try {
        // ── Check duplicate ──
        const exists = await pool.query(
            `SELECT "C_Code" FROM "Tbl_User_Info"
             WHERE "C_Code" = $1 OR "C_UserID" = $2
             LIMIT 1`,
            [c_code, c_user_id]
        );
        if (exists.rows.length > 0) {
            return res.status(409).json({
                success: false,
                message: 'An admin with this c_code or c_user_id already exists.'
            });
        }

        // ── Hash password ──
        const hashedPassword = await bcrypt.hash(c_password, 10);

        // ── Insert into Tbl_User_Info ──
        await pool.query(
            `INSERT INTO "Tbl_User_Info"
               ("C_Code", "C_UserID", "C_Name", "C_Password",
                "N_Lock", "n_type", "n_attempts", "mobile_number",
                "n_webuser", "D_Create_Date", "D_Modify_Date")
             VALUES ($1, $2, $3, $4, 0, $5, 0, $6, 1, NOW(), NOW())`,
            [c_code, c_user_id, c_name, hashedPassword, n_type, mobile_number]
        );

        return res.status(201).json({
            success: true,
            message: 'Admin registered successfully.',
            data: { c_code, c_user_id, c_name, n_type }
        });

    } catch (err) {
        console.error('Register error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error during registration.' });
    }
}

// ─── LOGIN ────────────────────────────────────────────────────
/**
 * POST /api/auth/login
 * Body: { c_user_id, c_password }
 *
 * Returns accessToken (15 min) + refreshToken (7 days).
 * Refresh token is stored in Tbl_Device_Login_Token_Details.
 */
async function login(req, res) {
    const { c_user_id, c_password } = req.body;

    if (!c_user_id || !c_password) {
        return res.status(400).json({
            success: false,
            message: 'c_user_id and c_password are required.'
        });
    }

    try {
        // ── Fetch user ──
        const result = await pool.query(
            `SELECT "C_Code", "C_UserID", "C_Password",
                    "N_Lock", "n_type", "n_attempts", "C_Name"
             FROM "Tbl_User_Info"
             WHERE "C_UserID" = $1
             LIMIT 1`,
            [c_user_id]
        );

        if (result.rows.length === 0) {
            return res.status(401).json({ success: false, message: 'Invalid credentials.' });
        }

        const user = result.rows[0];

        // ── Admin only — reject field employees ──
        // n_type 1 = admin, 2 = superadmin
        // Field employees have different n_type values (e.g. 3, 4, 5...)
        if (![1, 2].includes(Number(user.n_type))) {
            return res.status(403).json({
                success: false,
                message: 'Access denied. This login is for admins only.'
            });
        }

        // ── Account locked? ──
        if (user.N_Lock === 1) {
            return res.status(403).json({
                success: false,
                message: 'Account is locked. Contact your administrator.'
            });
        }

        // ── Verify password ──
        const passwordMatch = await bcrypt.compare(c_password, user.C_Password);

        if (!passwordMatch) {
            // Increment failed attempts; lock after MAX_ATTEMPTS
            const newAttempts = (user.n_attempts || 0) + 1;
            const lockFlag    = newAttempts >= MAX_ATTEMPTS ? 1 : 0;

            await pool.query(
                `UPDATE "Tbl_User_Info"
                 SET "n_attempts" = $1, "N_Lock" = $2, "D_Modify_Date" = NOW()
                 WHERE "C_UserID" = $3`,
                [newAttempts, lockFlag, c_user_id]
            );

            const remaining = MAX_ATTEMPTS - newAttempts;
            return res.status(401).json({
                success: false,
                message: lockFlag
                    ? 'Account locked after too many failed attempts.'
                    : `Invalid credentials. ${remaining} attempt(s) remaining.`
            });
        }

        // ── Reset failed attempts on success ──
        await pool.query(
            `UPDATE "Tbl_User_Info"
             SET "n_attempts" = 0, "D_Modify_Date" = NOW()
             WHERE "C_UserID" = $1`,
            [c_user_id]
        );

        // ── Generate tokens ──
        const tokenPayload = {
            c_user_id: user.C_UserID,
            c_code:    user.C_Code,
            n_type:    user.n_type
        };

        const accessToken  = generateAccessToken(tokenPayload);
        const refreshToken = generateRefreshToken(tokenPayload);

        // ── Store refresh token in Tbl_Device_Login_Token_Details ──
        const tokenId      = uuidv4();
        const validTo      = durationToDate(refreshExpiresIn);

        await pool.query(
            `INSERT INTO "Tbl_Device_Login_Token_Details"
               ("c_token_id", "c_user_id", "c_emp_code",
                "d_token_issued_date", "d_token_valid_to",
                "n_enable", "n_device_type", "c_company_id")
             VALUES ($1, $2, $3, NOW(), $4, 1, 0, $5)`,
            [refreshToken, user.C_UserID, user.C_Code, validTo, tokenId]
        );

        return res.status(200).json({
            success: true,
            message: 'Login successful.',
            data: {
                admin: {
                    c_code:    user.C_Code,
                    c_user_id: user.C_UserID,
                    c_name:    user.C_Name,
                    n_type:    user.n_type
                },
                accessToken,
                refreshToken,
                accessTokenExpiresIn:  process.env.JWT_ACCESS_EXPIRES_IN  || '15m',
                refreshTokenExpiresIn: process.env.JWT_REFRESH_EXPIRES_IN || '7d'
            }
        });

    } catch (err) {
        console.error('Login error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error during login.' });
    }
}

// ─── REFRESH TOKEN ────────────────────────────────────────────
/**
 * POST /api/auth/refresh
 * Body: { refreshToken }
 *
 * Validates the refresh token against Tbl_Device_Login_Token_Details.
 * Issues a new accessToken (and rotates the refreshToken).
 */
async function refresh(req, res) {
    const { refreshToken } = req.body;

    if (!refreshToken) {
        return res.status(400).json({ success: false, message: 'refreshToken is required.' });
    }

    try {
        // ── Verify JWT signature & expiry ──
        let decoded;
        try {
            decoded = verifyRefreshToken(refreshToken);
        } catch (err) {
            return res.status(401).json({
                success: false,
                message: err.name === 'TokenExpiredError'
                    ? 'Refresh token has expired. Please log in again.'
                    : 'Invalid refresh token.'
            });
        }

        // ── Check token exists in DB and is still active ──
        const tokenRow = await pool.query(
            `SELECT "c_token_id", "c_user_id", "c_emp_code",
                    "d_token_valid_to", "n_enable"
             FROM "Tbl_Device_Login_Token_Details"
             WHERE "c_token_id" = $1
             LIMIT 1`,
            [refreshToken]
        );

        if (tokenRow.rows.length === 0) {
            return res.status(401).json({
                success: false,
                message: 'Refresh token not found. Please log in again.'
            });
        }

        const stored = tokenRow.rows[0];

        if (stored.n_enable !== 1) {
            return res.status(401).json({
                success: false,
                message: 'Refresh token has been revoked. Please log in again.'
            });
        }

        if (new Date(stored.d_token_valid_to) < new Date()) {
            // Mark as revoked
            await pool.query(
                `UPDATE "Tbl_Device_Login_Token_Details"
                 SET "n_enable" = 0
                 WHERE "c_token_id" = $1`,
                [refreshToken]
            );
            return res.status(401).json({
                success: false,
                message: 'Refresh token has expired. Please log in again.'
            });
        }

        // ── Fetch latest user info ──
        const userRow = await pool.query(
            `SELECT "C_Code", "C_UserID", "n_type", "N_Lock"
             FROM "Tbl_User_Info"
             WHERE "C_UserID" = $1
             LIMIT 1`,
            [stored.c_user_id]
        );

        if (userRow.rows.length === 0 || userRow.rows[0].N_Lock === 1) {
            return res.status(403).json({
                success: false,
                message: 'User not found or account is locked.'
            });
        }

        const user = userRow.rows[0];

        // ── Revoke old refresh token (rotation) ──
        await pool.query(
            `UPDATE "Tbl_Device_Login_Token_Details"
             SET "n_enable" = 0
             WHERE "c_token_id" = $1`,
            [refreshToken]
        );

        // ── Issue new tokens ──
        const tokenPayload = {
            c_user_id: user.C_UserID,
            c_code:    user.C_Code,
            n_type:    user.n_type
        };

        const newAccessToken  = generateAccessToken(tokenPayload);
        const newRefreshToken = generateRefreshToken(tokenPayload);
        const validTo         = durationToDate(refreshExpiresIn);
        const tokenId         = uuidv4();

        await pool.query(
            `INSERT INTO "Tbl_Device_Login_Token_Details"
               ("c_token_id", "c_user_id", "c_emp_code",
                "d_token_issued_date", "d_token_valid_to",
                "n_enable", "n_device_type", "c_company_id")
             VALUES ($1, $2, $3, NOW(), $4, 1, 0, $5)`,
            [newRefreshToken, user.C_UserID, user.C_Code, validTo, tokenId]
        );

        return res.status(200).json({
            success: true,
            message: 'Tokens refreshed successfully.',
            data: {
                accessToken:           newAccessToken,
                refreshToken:          newRefreshToken,
                accessTokenExpiresIn:  process.env.JWT_ACCESS_EXPIRES_IN  || '15m',
                refreshTokenExpiresIn: process.env.JWT_REFRESH_EXPIRES_IN || '7d'
            }
        });

    } catch (err) {
        console.error('Refresh error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error during token refresh.' });
    }
}

// ─── LOGOUT ───────────────────────────────────────────────────
/**
 * POST /api/auth/logout
 * Body: { refreshToken }
 * Header: Authorization: Bearer <accessToken>
 *
 * Revokes the refresh token in Tbl_Device_Login_Token_Details.
 */
async function logout(req, res) {
    const { refreshToken } = req.body;

    if (!refreshToken) {
        return res.status(400).json({ success: false, message: 'refreshToken is required.' });
    }

    try {
        await pool.query(
            `UPDATE "Tbl_Device_Login_Token_Details"
             SET "n_enable" = 0
             WHERE "c_token_id" = $1`,
            [refreshToken]
        );

        return res.status(200).json({ success: true, message: 'Logged out successfully.' });

    } catch (err) {
        console.error('Logout error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error during logout.' });
    }
}

// ─── ME ───────────────────────────────────────────────────────
/**
 * GET /api/auth/me
 * Header: Authorization: Bearer <accessToken>
 *
 * Returns the current admin's profile from Tbl_User_Info.
 */
async function me(req, res) {
    try {
        const result = await pool.query(
            `SELECT "C_Code", "C_UserID", "C_Name", "n_type",
                    "mobile_number", "D_Create_Date"
             FROM "Tbl_User_Info"
             WHERE "C_UserID" = $1
             LIMIT 1`,
            [req.admin.c_user_id]
        );

        if (result.rows.length === 0) {
            return res.status(404).json({ success: false, message: 'Admin not found.' });
        }

        const u = result.rows[0];
        return res.status(200).json({
            success: true,
            data: {
                c_code:        u.C_Code,
                c_user_id:     u.C_UserID,
                c_name:        u.C_Name,
                n_type:        u.n_type,
                mobile_number: u.mobile_number,
                created_at:    u.D_Create_Date
            }
        });

    } catch (err) {
        console.error('Me error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

module.exports = { register, login, refresh, logout, me };

const pool = require('../../config/db');

// ─────────────────────────────────────────────────────────────
// TABLE: Tbl_WorkType
//   c_code             VARCHAR(10) PK  — Code (required, manual input)
//   c_name             VARCHAR(50)     — Name (required)
//   c_sh_name          VARCHAR(5)      — Short Name (optional)
//   n_flag             INTEGER         — Doctor Flag (0 = No, 1 = Yes)
//   n_Chflag           INTEGER         — Chemist Flag (0 = No, 1 = Yes)
//   n_stockflag        INTEGER         — Stockist Flag (0 = No, 1 = Yes)
//   n_OthersFlag       INTEGER         — Others Flag (0 = No, 1 = Yes)
//   n_campflag         INTEGER         — Promotional Activities Flag (0 = No, 1 = Yes)
//   n_chemorder        INTEGER         — Orders Flag (0 = No, 1 = Yes)
//   n_PatientFlag      INTEGER         — Patient Flag (0 = No, 1 = Yes)
//   n_HospitalFlag     INTEGER         — Hospital Flag (0 = No, 1 = Yes)
//   N_Status           INTEGER         — status Flag (1 = Active, 0 = Inactive)
//   n_deleted          SMALLINT        — 0 = active, 1 = deleted
//   d_created          TIMESTAMP
//   d_modified         TIMESTAMP
//   c_modifier         VARCHAR(10)     — last modified by (c_user_id)
// ─────────────────────────────────────────────────────────────

// ── Helper: generate next WT code ───────────────────────────
async function generateNextCode() {
    const result = await pool.query(`
        SELECT TRIM("c_code") AS "c_code" FROM "Tbl_WorkType"
        WHERE TRIM("c_code") ~ '^WT[0-9]+$'
        ORDER BY CAST(SUBSTRING(TRIM("c_code") FROM 3) AS INTEGER) DESC
        LIMIT 1
    `);

    if (result.rows.length === 0) return 'WT001';

    const lastNum = parseInt(result.rows[0].c_code.replace('WT', ''), 10);
    const nextNum = lastNum + 1;
    return 'WT' + String(nextNum).padStart(3, '0');
}

// ─── VALIDATION HELPER ─────────────────────────────────────────
function validateWorkTypeBody(body, isUpdate = false) {
    const errors = [];

    if (!isUpdate) {
        if (!body.c_code || !body.c_code.trim()) {
            errors.push('Code (c_code) is required.');
        } else if (body.c_code.trim().length > 10) {
            errors.push('Code (c_code) cannot exceed 10 characters.');
        }
    }

    if (!body.c_name || !body.c_name.trim()) {
        errors.push('Name (c_name) is required.');
    } else if (body.c_name.trim().length > 50) {
        errors.push('Name (c_name) cannot exceed 50 characters.');
    }

    if (body.c_sh_name && body.c_sh_name.trim().length > 5) {
        errors.push('Short Name (c_sh_name) cannot exceed 5 characters.');
    }

    const flags = {
        n_flag: 'Doctor Flag (n_flag)',
        n_Chflag: 'Chemist Flag (n_Chflag)',
        n_stockflag: 'Stockist Flag (n_stockflag)',
        n_OthersFlag: 'Others Flag (n_OthersFlag)',
        n_campflag: 'Promotional Activities Flag (n_campflag)',
        n_chemorder: 'Orders Flag (n_chemorder)',
        n_PatientFlag: 'Patient Flag (n_PatientFlag)',
        n_HospitalFlag: 'Hospital Flag (n_HospitalFlag)',
        n_status: 'Status Flag (n_status)'
    };

    for (const [key, label] of Object.entries(flags)) {
        const val = body[key];
        if (val === undefined || val === null || String(val).trim() === '') {
            errors.push(`${label} is required.`);
        } else {
            const num = Number(val);
            if (num !== 0 && num !== 1) {
                errors.push(`${label} must be 0 or 1.`);
            }
        }
    }

    return errors;
}

// ─── CREATE ───────────────────────────────────────────────────
// POST /api/masters/work-type
async function create(req, res) {
    const errors = validateWorkTypeBody(req.body, false);
    if (errors.length > 0) {
        return res.status(400).json({ success: false, message: errors.join(' ') });
    }

    const {
        c_code,
        c_name,
        c_sh_name = null,
        n_flag,
        n_Chflag,
        n_stockflag,
        n_OthersFlag,
        n_campflag,
        n_chemorder,
        n_PatientFlag,
        n_HospitalFlag,
        n_status
    } = req.body;

    try {
        const cleanCode = c_code.trim().toUpperCase();
        const cleanName = c_name.trim();
        const cleanShName = c_sh_name ? c_sh_name.trim() : null;

        // Check duplicate code
        const dupCode = await pool.query(
            `SELECT "c_code" FROM "Tbl_WorkType" WHERE "c_code" = $1 AND "n_deleted" = 0`,
            [cleanCode]
        );
        if (dupCode.rows.length > 0) {
            return res.status(409).json({
                success: false,
                message: `Work Type with Code "${cleanCode}" already exists.`
            });
        }

        // Check duplicate name
        const dupName = await pool.query(
            `SELECT "c_code" FROM "Tbl_WorkType" WHERE LOWER("c_name") = LOWER($1) AND "n_deleted" = 0`,
            [cleanName]
        );
        if (dupName.rows.length > 0) {
            return res.status(409).json({
                success: false,
                message: `Work Type with Name "${cleanName}" already exists.`
            });
        }

        await pool.query(
            `INSERT INTO "Tbl_WorkType" (
                "c_code", "c_name", "c_sh_name", 
                "n_flag", "n_Chflag", "n_stockflag", "n_OthersFlag", "n_campflag", "n_chemorder", "n_PatientFlag", "n_HospitalFlag", 
                "N_Status", "n_deleted", "d_created", "c_modifier"
             )
             VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, 0, NOW(), $13)`,
            [
                cleanCode,
                cleanName,
                cleanShName,
                Number(n_flag),
                Number(n_Chflag),
                Number(n_stockflag),
                Number(n_OthersFlag),
                Number(n_campflag),
                Number(n_chemorder),
                Number(n_PatientFlag),
                Number(n_HospitalFlag),
                Number(n_status),
                req.admin.c_user_id
            ]
        );

        return res.status(201).json({
            success: true,
            message: 'Work Type created successfully.',
            data: {
                c_code: cleanCode,
                c_name: cleanName,
                c_sh_name: cleanShName,
                n_flag: Number(n_flag),
                n_Chflag: Number(n_Chflag),
                n_stockflag: Number(n_stockflag),
                n_OthersFlag: Number(n_OthersFlag),
                n_campflag: Number(n_campflag),
                n_chemorder: Number(n_chemorder),
                n_PatientFlag: Number(n_PatientFlag),
                n_HospitalFlag: Number(n_HospitalFlag),
                n_status: Number(n_status)
            }
        });

    } catch (err) {
        console.error('Work Type create error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── GET ALL / SEARCH ─────────────────────────────────────────
// GET /api/masters/work-type?search=Field&code=W0001&page=1&limit=10
async function getAll(req, res) {
    const page = parseInt(req.query.page, 10) || 1;
    const limit = parseInt(req.query.limit, 10) || 10;
    const offset = (page - 1) * limit;
    const search = (req.query.search || req.query.name || '').trim();
    const code = (req.query.code || '').trim();

    if (!search && !code) {
        return res.status(200).json({
            success: true,
            pagination: {
                total: 0,
                page,
                limit,
                totalPages: 0
            },
            data: []
        });
    }

    try {
        let query = `
            SELECT "c_code", "c_name", "c_sh_name", 
                   "n_flag", "n_Chflag", "n_stockflag", "n_OthersFlag", "n_campflag", "n_chemorder", "n_PatientFlag", "n_HospitalFlag", 
                   "N_Status" as n_status, "d_created", "d_modified", COUNT(*) OVER() as total_count
            FROM "Tbl_WorkType"
            WHERE "n_deleted" = 0
        `;
        const params = [];

        if (search && search !== '*') {
            let pattern = search;
            if (pattern.includes('*')) {
                pattern = pattern.replace(/\*/g, '%');
            } else {
                pattern = `%${pattern}%`;
            }
            params.push(pattern);
            query += ` AND LOWER("c_name") LIKE LOWER($${params.length})`;
        }

        if (code && code !== '*') {
            let pattern = code;
            if (pattern.includes('*')) {
                pattern = pattern.replace(/\*/g, '%');
            } else {
                pattern = `%${pattern}%`;
            }
            params.push(pattern);
            query += ` AND LOWER("c_code") LIKE LOWER($${params.length})`;
        }

        query += ` ORDER BY "c_code" LIMIT $${params.length + 1} OFFSET $${params.length + 2}`;
        params.push(limit, offset);

        const result = await pool.query(query, params);

        const total = result.rows.length > 0 ? parseInt(result.rows[0].total_count, 10) : 0;
        const totalPages = Math.ceil(total / limit);

        const data = result.rows.map(row => {
            const { total_count, ...rest } = row;
            return {
                ...rest,
                c_code: rest.c_code.trim(), // trim because CHAR(10) padding
                c_sh_name: rest.c_sh_name ? rest.c_sh_name.trim() : null, // trim because CHAR(5) padding
                n_flag: Number(rest.n_flag) || 0,
                n_Chflag: Number(rest.n_Chflag) || 0,
                n_stockflag: Number(rest.n_stockflag) || 0,
                n_OthersFlag: Number(rest.n_OthersFlag) || 0,
                n_campflag: Number(rest.n_campflag) || 0,
                n_chemorder: Number(rest.n_chemorder) || 0,
                n_PatientFlag: Number(rest.n_PatientFlag) || 0,
                n_HospitalFlag: Number(rest.n_HospitalFlag) || 0,
                n_status: Number(rest.n_status) || 0
            };
        });

        return res.status(200).json({
            success: true,
            pagination: {
                total,
                page,
                limit,
                totalPages
            },
            data
        });

    } catch (err) {
        console.error('Work Type getAll error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── UPDATE ───────────────────────────────────────────────────
// PUT /api/masters/work-type/:code
async function update(req, res) {
    const { code } = req.params;
    const errors = validateWorkTypeBody(req.body, true);
    if (errors.length > 0) {
        return res.status(400).json({ success: false, message: errors.join(' ') });
    }

    const {
        c_name,
        c_sh_name = null,
        n_flag,
        n_Chflag,
        n_stockflag,
        n_OthersFlag,
        n_campflag,
        n_chemorder,
        n_PatientFlag,
        n_HospitalFlag,
        n_status
    } = req.body;

    try {
        const targetCode = code.toUpperCase();
        const cleanName = c_name.trim();
        const cleanShName = c_sh_name ? c_sh_name.trim() : null;

        // Check exists
        const exists = await pool.query(
            `SELECT "c_code" FROM "Tbl_WorkType" WHERE "c_code" = $1 AND "n_deleted" = 0`,
            [targetCode]
        );
        if (exists.rows.length === 0) {
            return res.status(404).json({ success: false, message: `Work Type "${code}" not found.` });
        }

        // Check duplicate name (excluding self)
        const dupName = await pool.query(
            `SELECT "c_code" FROM "Tbl_WorkType" 
             WHERE LOWER("c_name") = LOWER($1) AND "n_deleted" = 0 AND "c_code" != $2`,
            [cleanName, targetCode]
        );
        if (dupName.rows.length > 0) {
            return res.status(409).json({
                success: false,
                message: `Another work type with name "${cleanName}" already exists.`
            });
        }

        await pool.query(
            `UPDATE "Tbl_WorkType"
             SET "c_name" = $1, "c_sh_name" = $2,
                 "n_flag" = $3, "n_Chflag" = $4, "n_stockflag" = $5, "n_OthersFlag" = $6,
                 "n_campflag" = $7, "n_chemorder" = $8, "n_PatientFlag" = $9, "n_HospitalFlag" = $10,
                 "N_Status" = $11, "d_modified" = NOW(), "c_modifier" = $12
             WHERE "c_code" = $13`,
            [
                cleanName,
                cleanShName,
                Number(n_flag),
                Number(n_Chflag),
                Number(n_stockflag),
                Number(n_OthersFlag),
                Number(n_campflag),
                Number(n_chemorder),
                Number(n_PatientFlag),
                Number(n_HospitalFlag),
                Number(n_status),
                req.admin.c_user_id,
                targetCode
            ]
        );

        return res.status(200).json({
            success: true,
            message: 'Work Type updated successfully.',
            data: {
                c_code: targetCode,
                c_name: cleanName,
                c_sh_name: cleanShName,
                n_flag: Number(n_flag),
                n_Chflag: Number(n_Chflag),
                n_stockflag: Number(n_stockflag),
                n_OthersFlag: Number(n_OthersFlag),
                n_campflag: Number(n_campflag),
                n_chemorder: Number(n_chemorder),
                n_PatientFlag: Number(n_PatientFlag),
                n_HospitalFlag: Number(n_HospitalFlag),
                n_status: Number(n_status)
            }
        });

    } catch (err) {
        console.error('Work Type update error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── DELETE (soft) ────────────────────────────────────────────
// DELETE /api/masters/work-type/:code
async function remove(req, res) {
    const { code } = req.params;

    try {
        const targetCode = code.toUpperCase();

        const exists = await pool.query(
            `SELECT "c_code" FROM "Tbl_WorkType" WHERE "c_code" = $1 AND "n_deleted" = 0`,
            [targetCode]
        );
        if (exists.rows.length === 0) {
            return res.status(404).json({ success: false, message: `Work Type "${code}" not found.` });
        }

        await pool.query(
            `UPDATE "Tbl_WorkType"
             SET "n_deleted" = 1, "d_modified" = NOW(), "c_modifier" = $1
             WHERE "c_code" = $2`,
            [req.admin.c_user_id, targetCode]
        );

        return res.status(200).json({
            success: true,
            message: `Work Type "${code}" deleted successfully.`
        });

    } catch (err) {
        console.error('Work Type delete error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── GET NEXT CODE ────────────────────────────────────────────
// GET /api/masters/work-type/next-code
async function getNextCode(req, res) {
    try {
        const nextCode = await generateNextCode();
        return res.status(200).json({
            success: true,
            nextCode
        });
    } catch (err) {
        console.error('Work Type getNextCode error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

module.exports = { create, getAll, update, remove, getNextCode };

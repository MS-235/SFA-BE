const jwt = require('jsonwebtoken');
const { accessSecret } = require('../config/jwt');

// n_type values that are considered admin
const ADMIN_TYPES = [1, 2]; // 1 = admin, 2 = superadmin

/**
 * Verifies the JWT access token from the Authorization header.
 * On success attaches decoded payload to req.admin.
 * On expiry returns 401 with TOKEN_EXPIRED code so the client
 * knows to call POST /api/auth/refresh.
 */
function verifyAccessToken(req, res, next) {
    const authHeader = req.headers['authorization'];

    if (!authHeader || !authHeader.startsWith('Bearer ')) {
        return res.status(401).json({
            success: false,
            message: 'Authorization header missing. Use: Bearer <token>'
        });
    }

    const token = authHeader.split(' ')[1];

    try {
        const decoded = jwt.verify(token, accessSecret);

        // Reject non-admin tokens even if JWT is valid
        if (!ADMIN_TYPES.includes(Number(decoded.n_type))) {
            return res.status(403).json({
                success: false,
                message: 'Access denied. Admin privileges required.'
            });
        }

        req.admin = decoded;
        next();
    } catch (err) {
        if (err.name === 'TokenExpiredError') {
            return res.status(401).json({
                success: false,
                code:    'TOKEN_EXPIRED',
                message: 'Access token expired. Use your refresh token to get a new one.',
                hint:    'POST /api/auth/refresh  body: { "refreshToken": "..." }'
            });
        }
        return res.status(401).json({ success: false, message: 'Invalid access token.' });
    }
}

/**
 * Restricts a route to superadmin only (n_type === 2).
 * Must be used AFTER verifyAccessToken.
 */
function requireSuperAdmin(req, res, next) {
    if (Number(req.admin.n_type) === 2) return next();
    return res.status(403).json({
        success: false,
        message: 'Access denied. Superadmin privileges required.'
    });
}

module.exports = { verifyAccessToken, requireSuperAdmin };

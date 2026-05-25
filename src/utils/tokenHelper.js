const jwt  = require('jsonwebtoken');
const { v4: uuidv4 } = require('uuid');
const {
    accessSecret, refreshSecret,
    accessExpiresIn, refreshExpiresIn
} = require('../config/jwt');

/** Short-lived access token (default 15 min) */
function generateAccessToken(payload) {
    return jwt.sign(payload, accessSecret, { expiresIn: accessExpiresIn });
}

/**
 * Long-lived refresh token (default 7 days).
 * Each token gets a unique jti so it can be individually revoked.
 */
function generateRefreshToken(payload) {
    return jwt.sign(
        { ...payload, jti: uuidv4() },
        refreshSecret,
        { expiresIn: refreshExpiresIn }
    );
}

function verifyRefreshToken(token) {
    return jwt.verify(token, refreshSecret);
}

/**
 * Convert a duration string like '7d' / '15m' / '2h' to a future Date.
 * Used to store d_token_valid_to in Tbl_Device_Login_Token_Details.
 */
function durationToDate(duration) {
    const unit  = duration.slice(-1);
    const value = parseInt(duration.slice(0, -1), 10);
    const date  = new Date();
    if      (unit === 'd') date.setDate(date.getDate() + value);
    else if (unit === 'h') date.setHours(date.getHours() + value);
    else if (unit === 'm') date.setMinutes(date.getMinutes() + value);
    return date;
}

module.exports = {
    generateAccessToken,
    generateRefreshToken,
    verifyRefreshToken,
    durationToDate
};

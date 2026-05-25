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
 * Convert a duration string like '7d' / '15m' / '2h' / '1min' / '10sec' to a future Date.
 * Used to store d_token_valid_to in Tbl_Device_Login_Token_Details.
 */
function durationToDate(duration) {
    if (!duration || typeof duration !== 'string') {
        return new Date(Date.now() + 7 * 24 * 60 * 60 * 1000); // 7 days fallback
    }

    const match = duration.trim().match(/^(\d+)\s*(s|sec|second|seconds|m|min|minute|minutes|h|hr|hour|hours|d|day|days)$/i);
    if (!match) {
        // Try fallback parsing
        const val = parseInt(duration, 10);
        if (!isNaN(val)) {
            const lastChar = duration.trim().slice(-1).toLowerCase();
            if (lastChar === 's') return new Date(Date.now() + val * 1000);
            if (lastChar === 'm') return new Date(Date.now() + val * 60 * 1000);
            if (lastChar === 'h') return new Date(Date.now() + val * 60 * 60 * 1000);
            if (lastChar === 'd') return new Date(Date.now() + val * 24 * 60 * 60 * 1000);
        }
        return new Date(Date.now() + 7 * 24 * 60 * 60 * 1000); // 7 days fallback
    }

    const value = parseInt(match[1], 10);
    const unit = match[2].toLowerCase();
    const date = new Date();

    if (unit.startsWith('s')) {
        date.setSeconds(date.getSeconds() + value);
    } else if (unit.startsWith('m')) {
        date.setMinutes(date.getMinutes() + value);
    } else if (unit.startsWith('h')) {
        date.setHours(date.getHours() + value);
    } else if (unit.startsWith('d')) {
        date.setDate(date.getDate() + value);
    }
    return date;
}

module.exports = {
    generateAccessToken,
    generateRefreshToken,
    verifyRefreshToken,
    durationToDate
};

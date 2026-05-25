const express = require('express');
const router  = express.Router();
const { register, login, refresh, logout, me } = require('../controllers/authController');
const { verifyAccessToken } = require('../middleware/auth');

// Public routes
router.post('/register', register);  // Create a new admin
router.post('/login',    login);     // Login → get access + refresh token
router.post('/refresh',  refresh);   // Exchange refresh token → new access + refresh token
router.post('/logout',   logout);    // Revoke refresh token

// Protected routes (require valid access token)
router.get('/me', verifyAccessToken, me); // Get current admin profile

module.exports = router;

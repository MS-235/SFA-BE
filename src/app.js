const express    = require('express');
const authRoutes   = require('./routes/authRoutes');
const masterRoutes = require('./routes/masterRoutes');

const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// ── Routes ──
app.use('/api/auth',       authRoutes);
app.use('/api/masters',    masterRoutes);

// ── Health check ──
app.get('/health', (req, res) => {
    res.json({ status: 'ok', timestamp: new Date().toISOString() });
});

// ── 404 handler ──
app.use((req, res) => {
    res.status(404).json({ success: false, message: `Route ${req.method} ${req.path} not found.` });
});

// ── Global error handler ──
app.use((err, req, res, next) => {
    console.error('Unhandled error:', err.message);
    res.status(500).json({ success: false, message: 'Internal server error.' });
});

module.exports = app;

const express = require('express');
const router  = express.Router();
const { verifyAccessToken } = require('../middleware/auth');
const desig = require('../controllers/designationController');
const dept  = require('../controllers/departmentController');
const division = require('../controllers/divisionController');

// All master routes require a valid admin token
router.use(verifyAccessToken);

// ── Universal next-code endpoint ────────────────────────────
// GET /api/masters/next-code/:type (type: designation, department, division)
router.get('/next-code/:type', (req, res, next) => {
    const type = (req.params.type || '').toLowerCase();
    if (type === 'designation') return desig.getNextCode(req, res, next);
    if (type === 'department')  return dept.getNextCode(req, res, next);
    if (type === 'division')    return division.getNextCode(req, res, next);

    return res.status(400).json({
        success: false,
        message: `Invalid master type: "${req.params.type}". Supported types: designation, department, division.`
    });
});

// ── Designation Master ──────────────────────────────────────
router.get('/designation/next-code', desig.getNextCode);
router.post('/designation',         desig.create);
router.get('/designation',          desig.getAll);
router.put('/designation/:code',    desig.update);
router.delete('/designation/:code', desig.remove);

// ── Department Master ───────────────────────────────────────
router.get('/department/locations',    dept.getLocations); // config — list valid locations
router.get('/department/next-code',    dept.getNextCode);
router.post('/department',             dept.create);
router.get('/department',              dept.getAll);
router.put('/department/:code',        dept.update);
router.delete('/department/:code',     dept.remove);

// ── Division Master ─────────────────────────────────────────
router.get('/division/next-code',    division.getNextCode);
router.post('/division',         division.create);
router.get('/division',          division.getAll);
router.put('/division/:code',    division.update);
router.delete('/division/:code', division.remove);

module.exports = router;

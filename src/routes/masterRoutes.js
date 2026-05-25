const express = require('express');
const router  = express.Router();
const { verifyAccessToken } = require('../middleware/auth');
const desig = require('../controllers/designationController');
const dept  = require('../controllers/departmentController');
const division = require('../controllers/divisionController');

// All master routes require a valid admin token
router.use(verifyAccessToken);

// ── Designation Master ──────────────────────────────────────
router.post('/designation',         desig.create);
router.get('/designation',          desig.getAll);
router.put('/designation/:code',    desig.update);
router.delete('/designation/:code', desig.remove);

// ── Department Master ───────────────────────────────────────
router.get('/department/locations',    dept.getLocations); // config — list valid locations
router.post('/department',             dept.create);
router.get('/department',              dept.getAll);
router.put('/department/:code',        dept.update);
router.delete('/department/:code',     dept.remove);

// ── Division Master ─────────────────────────────────────────
router.post('/division',         division.create);
router.get('/division',          division.getAll);
router.put('/division/:code',    division.update);
router.delete('/division/:code', division.remove);

module.exports = router;

const express = require('express');
const router  = express.Router();
const { verifyAccessToken } = require('../middleware/auth');
const desig = require('../controllers/designationController');
const dept  = require('../controllers/departmentController');

// All master routes require a valid admin token
router.use(verifyAccessToken);

// ── Designation Master ──────────────────────────────────────
router.post('/designation',         desig.create);
router.get('/designation',          desig.getAll);
router.get('/designation/:code',    desig.getOne);
router.put('/designation/:code',    desig.update);
router.delete('/designation/:code', desig.remove);

// ── Department Master ───────────────────────────────────────
router.get('/department/locations',    dept.getLocations); // config — list valid locations
router.post('/department',             dept.create);
router.get('/department',              dept.getAll);
router.get('/department/:code',        dept.getOne);
router.put('/department/:code',        dept.update);
router.delete('/department/:code',     dept.remove);

module.exports = router;

const express = require('express');
const router  = express.Router();
const { verifyAccessToken } = require('../middleware/auth');
const desig = require('../controllers/designationController');
const dept  = require('../controllers/departmentController');
const division = require('../controllers/divisionController');
const zone = require('../controllers/zoneController');
const region = require('../controllers/regionController');
const area = require('../controllers/areaController');
const subArea = require('../controllers/subAreaController');


// All master routes require a valid admin token
router.use(verifyAccessToken);

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

// ── Zone Master ─────────────────────────────────────────────
router.get('/zone/next-code',    zone.getNextCode);
router.post('/zone',             zone.create);
router.get('/zone',              zone.getAll);
router.put('/zone/:code',        zone.update);
router.delete('/zone/:code',     zone.remove);

// ── Region Master ───────────────────────────────────────────
router.get('/region/next-code',  region.getNextCode);
router.post('/region',           region.create);
router.get('/region',            region.getAll);
router.put('/region/:code',      region.update);
router.delete('/region/:code',   region.remove);

// ── Area Master ─────────────────────────────────────────────
router.get('/area/classifications', area.getClassifications);
router.get('/area/next-code',       area.getNextCode);
router.post('/area',                area.create);
router.get('/area',                 area.getAll);
router.put('/area/:code',           area.update);
router.delete('/area/:code',        area.remove);

// ── Sub Area Master ─────────────────────────────────────────
router.get('/sub-area/classifications', subArea.getClassifications);
router.get('/sub-area/next-code',       subArea.getNextCode);
router.post('/sub-area',                subArea.create);
router.get('/sub-area',                 subArea.getAll);
router.put('/sub-area/:code',           subArea.update);
router.delete('/sub-area/:code',        subArea.remove);

module.exports = router;

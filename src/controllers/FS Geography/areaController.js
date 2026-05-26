const pool = require('../../config/db');

// ─────────────────────────────────────────────────────────────
// TABLE: Tbl_Area_Mst
//   C_Code                 VARCHAR(10) PK  — auto-generated: A00001, A00002...
//   C_Name                 VARCHAR(50)     — Name (required)
//   C_Sh_Name              VARCHAR(7)      — Short Name (optional)
//   C_Region_Code          VARCHAR(10)     — FK → Tbl_Region_Mst (required)
//   C_SalesHQ              VARCHAR(50)     — Sale HQ (optional)
//   n_deleted              SMALLINT        — 0 = active, 1 = deleted
//   d_created              TIMESTAMP
//   d_modified             TIMESTAMP
//   c_modifier             VARCHAR(10)     — last modified by (c_user_id)
//   n_lami                 DOUBLE PRECISION — LAT (numerical validation, optional)
//   n_lgmi                 DOUBLE PRECISION — Long (numerical validation, optional)
//   c_district_code        VARCHAR(50)     — District (optional)
//   C_Classification_Code  VARCHAR(10)     — Classification (optional, constant drop-down)
// ─────────────────────────────────────────────────────────────

const CLASSIFICATIONS = [
    { value: 'NON METRO',  label: 'Non Metro' },
    { value: 'METRO',      label: 'Metro' },
    { value: 'MINI METRO', label: 'Mini Metro' },
    { value: 'OTHERS',     label: 'Others' }
];

const VALID_CLASSIFICATION_VALUES = CLASSIFICATIONS.map(c => c.value);

// ── Helper: generate next A code ─────────────────────────────
async function generateNextCode() {
    const result = await pool.query(`
        SELECT "C_Code" FROM "Tbl_Area_Mst"
        WHERE "C_Code" ~ '^A[0-9]+$'
        ORDER BY CAST(SUBSTRING("C_Code" FROM 2) AS INTEGER) DESC
        LIMIT 1
    `);

    if (result.rows.length === 0) return 'A00001';

    const lastNum = parseInt(result.rows[0].C_Code.replace('A', ''), 10);
    const nextNum = lastNum + 1;
    return 'A' + String(nextNum).padStart(5, '0');
}

// ── Helper: validate Region exists and is active ──────────────
async function validateRegion(regionCode) {
    if (!regionCode || !regionCode.trim()) {
        throw { status: 400, message: 'Region Code (c_region_code) is required.' };
    }
    const result = await pool.query(
        `SELECT "C_Code" FROM "Tbl_Region_Mst"
         WHERE "C_Code" = $1 AND "n_deleted" = 0
         LIMIT 1`,
        [regionCode.trim().toUpperCase()]
    );
    if (result.rows.length === 0) {
        throw { status: 400, message: `Region Code "${regionCode}" not found or is deleted.` };
    }
    return regionCode.trim().toUpperCase();
}

// ── Helper: validate coordinates ──────────────────────────────
function validateCoordinate(val, fieldName) {
    if (val === undefined || val === null || val === '') return null;
    const num = Number(val);
    if (isNaN(num)) {
        throw { status: 400, message: `${fieldName} must be a numerical value.` };
    }
    return num;
}

// ── Helper: validate classification ───────────────────────────
function validateClassification(val) {
    if (val === undefined || val === null || val === '') return null;
    const upperVal = String(val).trim().toUpperCase();
    if (!VALID_CLASSIFICATION_VALUES.includes(upperVal)) {
        throw { status: 400, message: `Invalid Classification. Allowed values: ${VALID_CLASSIFICATION_VALUES.join(', ')}` };
    }
    return upperVal;
}

// ─── GET CLASSIFICATIONS (config endpoint) ───────────────────
// GET /api/masters/area/classifications
function getClassifications(req, res) {
    return res.status(200).json({
        success: true,
        data: CLASSIFICATIONS
    });
}

// ─── CREATE ───────────────────────────────────────────────────
// POST /api/masters/area
async function create(req, res) {
    const {
        c_name,
        c_sh_name,
        c_region_code,
        c_sales_hq,
        c_district_code,
        c_classification_code,
        n_lami,
        n_lgmi
    } = req.body;

    if (!c_name || !c_name.trim()) {
        return res.status(400).json({ success: false, message: 'Name (c_name) is required.' });
    }

    try {
        // Validate dependencies and inputs
        let validatedRegionCode;
        let lat;
        let lng;
        let classification;

        try {
            validatedRegionCode = await validateRegion(c_region_code);
            lat = validateCoordinate(n_lami, 'LAT');
            lng = validateCoordinate(n_lgmi, 'Long');
            classification = validateClassification(c_classification_code);
        } catch (e) {
            return res.status(e.status || 400).json({ success: false, message: e.message });
        }

        // Check duplicate name in same region
        const dup = await pool.query(
            `SELECT "C_Code" FROM "Tbl_Area_Mst"
             WHERE LOWER("C_Name") = LOWER($1) AND "C_Region_Code" = $2 AND "n_deleted" = 0`,
            [c_name.trim(), validatedRegionCode]
        );
        if (dup.rows.length > 0) {
            return res.status(409).json({
                success: false,
                message: `Area "${c_name}" already exists in this Region.`
            });
        }

        const c_code = await generateNextCode();

        await pool.query(
            `INSERT INTO "Tbl_Area_Mst"
               ("C_Code", "C_Name", "C_Sh_Name", "C_Region_Code", "C_SalesHQ", "c_district_code", "C_Classification_Code", "n_lami", "n_lgmi", "n_deleted", "d_created", "c_modifier")
             VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, 0, NOW(), $10)`,
            [
                c_code,
                c_name.trim(),
                c_sh_name ? c_sh_name.trim() : null,
                validatedRegionCode,
                c_sales_hq ? c_sales_hq.trim() : null,
                c_district_code ? c_district_code.trim() : null,
                classification,
                lat,
                lng,
                req.admin.c_user_id
            ]
        );

        return res.status(201).json({
            success: true,
            message: 'Area created successfully.',
            data: {
                c_code,
                c_name:                 c_name.trim(),
                c_sh_name:              c_sh_name ? c_sh_name.trim() : null,
                c_region_code:          validatedRegionCode,
                c_sales_hq:             c_sales_hq ? c_sales_hq.trim() : null,
                c_district_code:        c_district_code ? c_district_code.trim() : null,
                c_classification_code:  classification,
                n_lami:                 lat,
                n_lgmi:                 lng
            }
        });

    } catch (err) {
        console.error('Area create error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── GET ALL / SEARCH ─────────────────────────────────────────
// GET /api/masters/area?search=West&code=A00001&region=R0001&page=1&limit=10
async function getAll(req, res) {
    const page = parseInt(req.query.page, 10) || 1;
    const limit = parseInt(req.query.limit, 10) || 10;
    const offset = (page - 1) * limit;
    const search = (req.query.search || req.query.name || '').trim();
    const code = (req.query.code || '').trim();
    const region = (req.query.region || req.query.region_code || req.query.regionCode || '').trim();

    if (!search && !code && !region) {
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
            SELECT a."C_Code" as c_code, a."C_Name" as c_name, a."C_Sh_Name" as c_sh_name, 
                   a."C_Region_Code" as c_region_code, r."C_Name" as c_region_name,
                   a."C_SalesHQ" as c_sales_hq, a."c_district_code" as c_district_code,
                   a."C_Classification_Code" as c_classification_code,
                   a."n_lami", a."n_lgmi", a."d_created", a."d_modified", COUNT(*) OVER() as total_count
            FROM "Tbl_Area_Mst" a
            LEFT JOIN "Tbl_Region_Mst" r ON a."C_Region_Code" = r."C_Code"
            WHERE a."n_deleted" = 0
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
            query += ` AND LOWER(a."C_Name") LIKE LOWER($${params.length})`;
        }

        if (code && code !== '*') {
            let pattern = code;
            if (pattern.includes('*')) {
                pattern = pattern.replace(/\*/g, '%');
            } else {
                pattern = `%${pattern}%`;
            }
            params.push(pattern);
            query += ` AND LOWER(a."C_Code") LIKE LOWER($${params.length})`;
        }

        if (region && region !== '*') {
            let pattern = region;
            if (pattern.includes('*')) {
                pattern = pattern.replace(/\*/g, '%');
            } else {
                pattern = `%${pattern}%`;
            }
            params.push(pattern);
            query += ` AND (LOWER(a."C_Region_Code") LIKE LOWER($${params.length}) OR LOWER(r."C_Name") LIKE LOWER($${params.length}))`;
        }

        query += ` ORDER BY a."C_Code" LIMIT $${params.length + 1} OFFSET $${params.length + 2}`;
        params.push(limit, offset);

        const result = await pool.query(query, params);

        const total = result.rows.length > 0 ? parseInt(result.rows[0].total_count, 10) : 0;
        const totalPages = Math.ceil(total / limit);

        const data = result.rows.map(row => {
            const { total_count, ...rest } = row;
            return rest;
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
        console.error('Area getAll error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── UPDATE ───────────────────────────────────────────────────
// PUT /api/masters/area/:code
async function update(req, res) {
    const { code } = req.params;
    const {
        c_name,
        c_sh_name,
        c_region_code,
        c_sales_hq,
        c_district_code,
        c_classification_code,
        n_lami,
        n_lgmi
    } = req.body;

    if (!c_name || !c_name.trim()) {
        return res.status(400).json({ success: false, message: 'Name (c_name) is required.' });
    }

    try {
        // Check exists
        const exists = await pool.query(
            `SELECT "C_Code" FROM "Tbl_Area_Mst"
             WHERE "C_Code" = $1 AND "n_deleted" = 0`,
            [code.toUpperCase()]
        );
        if (exists.rows.length === 0) {
            return res.status(404).json({ success: false, message: `Area "${code}" not found.` });
        }

        // Validate dependencies and inputs
        let validatedRegionCode;
        let lat;
        let lng;
        let classification;

        try {
            validatedRegionCode = await validateRegion(c_region_code);
            lat = validateCoordinate(n_lami, 'LAT');
            lng = validateCoordinate(n_lgmi, 'Long');
            classification = validateClassification(c_classification_code);
        } catch (e) {
            return res.status(e.status || 400).json({ success: false, message: e.message });
        }

        // Check duplicate name in same region (excluding self)
        const dup = await pool.query(
            `SELECT "C_Code" FROM "Tbl_Area_Mst"
             WHERE LOWER("C_Name") = LOWER($1) AND "C_Region_Code" = $2 AND "n_deleted" = 0 AND "C_Code" != $3`,
            [c_name.trim(), validatedRegionCode, code.toUpperCase()]
        );
        if (dup.rows.length > 0) {
            return res.status(409).json({
                success: false,
                message: `Another area with name "${c_name}" already exists in this Region.`
            });
        }

        await pool.query(
            `UPDATE "Tbl_Area_Mst"
             SET "C_Name" = $1, "C_Sh_Name" = $2, "C_Region_Code" = $3, 
                 "C_SalesHQ" = $4, "c_district_code" = $5, "C_Classification_Code" = $6,
                 "n_lami" = $7, "n_lgmi" = $8,
                 "d_modified" = NOW(), "c_modifier" = $9
             WHERE "C_Code" = $10`,
            [
                c_name.trim(),
                c_sh_name ? c_sh_name.trim() : null,
                validatedRegionCode,
                c_sales_hq ? c_sales_hq.trim() : null,
                c_district_code ? c_district_code.trim() : null,
                classification,
                lat,
                lng,
                req.admin.c_user_id,
                code.toUpperCase()
            ]
        );

        return res.status(200).json({
            success: true,
            message: 'Area updated successfully.',
            data: {
                c_code:                 code.toUpperCase(),
                c_name:                 c_name.trim(),
                c_sh_name:              c_sh_name ? c_sh_name.trim() : null,
                c_region_code:          validatedRegionCode,
                c_sales_hq:             c_sales_hq ? c_sales_hq.trim() : null,
                c_district_code:        c_district_code ? c_district_code.trim() : null,
                c_classification_code:  classification,
                n_lami:                 lat,
                n_lgmi:                 lng
            }
        });

    } catch (err) {
        console.error('Area update error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── DELETE (soft) ────────────────────────────────────────────
// DELETE /api/masters/area/:code
async function remove(req, res) {
    const { code } = req.params;

    try {
        const exists = await pool.query(
            `SELECT "C_Code" FROM "Tbl_Area_Mst"
             WHERE "C_Code" = $1 AND "n_deleted" = 0`,
            [code.toUpperCase()]
        );
        if (exists.rows.length === 0) {
            return res.status(404).json({ success: false, message: `Area "${code}" not found.` });
        }

        await pool.query(
            `UPDATE "Tbl_Area_Mst"
             SET "n_deleted" = 1, "d_modified" = NOW(), "c_modifier" = $1
             WHERE "C_Code" = $2`,
            [req.admin.c_user_id, code.toUpperCase()]
        );

        return res.status(200).json({
            success: true,
            message: `Area "${code}" deleted successfully.`
        });

    } catch (err) {
        console.error('Area delete error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── GET NEXT CODE ────────────────────────────────────────────
// GET /api/masters/area/next-code
async function getNextCode(req, res) {
    try {
        const nextCode = await generateNextCode();
        return res.status(200).json({
            success: true,
            nextCode
        });
    } catch (err) {
        console.error('Area getNextCode error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

module.exports = { getClassifications, create, getAll, update, remove, getNextCode };

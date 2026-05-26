const pool = require('../config/db');

// ─────────────────────────────────────────────────────────────
// TABLE: Tbl_Sub_Area_Mst
//   C_Code                 VARCHAR(10) PK  — auto-generated: SA0001, SA0002...
//   C_Name                 VARCHAR(50)     — Name (required)
//   C_Sh_Name              VARCHAR(7)      — Short Name (optional)
//   C_Area_Code            VARCHAR(10)     — FK → Tbl_Area_Mst (required)
//   N_HQ_Flag              NUMERIC         — 0 = No, 1 = Yes (optional, Same HQ)
//   n_deleted              SMALLINT        — 0 = active, 1 = deleted
//   d_created              TIMESTAMP
//   d_modified             TIMESTAMP
//   c_modifier             VARCHAR(10)     — last modified by (c_user_id)
//   n_lami                 VARCHAR(100)    — LAT (optional)
//   n_lgmi                 VARCHAR(100)    — Long (optional)
//   C_Classification_Code  VARCHAR(20)     — Classification (optional)
// ─────────────────────────────────────────────────────────────

const CLASSIFICATIONS = [
    { value: 'NON METRO',  label: 'Non Metro' },
    { value: 'METRO',      label: 'Metro' },
    { value: 'MINI METRO', label: 'Mini Metro' },
    { value: 'OTHERS',     label: 'Others' }
];

const VALID_CLASSIFICATION_VALUES = CLASSIFICATIONS.map(c => c.value);

// ── Helper: generate next SA code ────────────────────────────
async function generateNextCode() {
    const result = await pool.query(`
        SELECT "C_Code" FROM "Tbl_Sub_Area_Mst"
        WHERE "C_Code" ~ '^SA[0-9]+$'
        ORDER BY CAST(SUBSTRING("C_Code" FROM 3) AS INTEGER) DESC
        LIMIT 1
    `);

    if (result.rows.length === 0) return 'SA0001';

    const lastNum = parseInt(result.rows[0].C_Code.replace('SA', ''), 10);
    const nextNum = lastNum + 1;
    return 'SA' + String(nextNum).padStart(4, '0');
}

// ── Helper: validate Area exists and is active ────────────────
async function validateArea(areaCode) {
    if (!areaCode || !areaCode.trim()) {
        throw { status: 400, message: 'Area Code (c_area_code) is required.' };
    }
    const result = await pool.query(
        `SELECT "C_Code" FROM "Tbl_Area_Mst"
         WHERE "C_Code" = $1 AND "n_deleted" = 0
         LIMIT 1`,
        [areaCode.trim().toUpperCase()]
    );
    if (result.rows.length === 0) {
        throw { status: 400, message: `Area Code "${areaCode}" not found or is deleted.` };
    }
    return areaCode.trim().toUpperCase();
}

// ── Helper: validate coordinates ──────────────────────────────
function validateCoordinate(val, fieldName) {
    if (val === undefined || val === null || String(val).trim() === '') return null;
    const num = Number(val);
    if (isNaN(num)) {
        throw { status: 400, message: `${fieldName} must be a numerical value.` };
    }
    return String(val).trim();
}

// ── Helper: validate classification ───────────────────────────
function validateClassification(val) {
    if (val === undefined || val === null || String(val).trim() === '') return null;
    const upperVal = String(val).trim().toUpperCase();
    if (!VALID_CLASSIFICATION_VALUES.includes(upperVal)) {
        throw { status: 400, message: `Invalid Classification. Allowed values: ${VALID_CLASSIFICATION_VALUES.join(', ')}` };
    }
    return upperVal;
}

// ─── GET CLASSIFICATIONS (config endpoint) ───────────────────
// GET /api/masters/sub-area/classifications
function getClassifications(req, res) {
    return res.status(200).json({
        success: true,
        data: CLASSIFICATIONS
    });
}

// ─── CREATE ───────────────────────────────────────────────────
// POST /api/masters/sub-area
async function create(req, res) {
    const {
        c_name,
        c_sh_name,
        c_area_code,
        n_hq_flag = 0,
        n_lami,
        n_lgmi,
        c_classification_code
    } = req.body;

    if (!c_name || !c_name.trim()) {
        return res.status(400).json({ success: false, message: 'Name (c_name) is required.' });
    }

    try {
        // Validate dependencies and inputs
        let validatedAreaCode;
        let lat;
        let lng;
        let classification;

        try {
            validatedAreaCode = await validateArea(c_area_code);
            lat = validateCoordinate(n_lami, 'LAT');
            lng = validateCoordinate(n_lgmi, 'Long');
            classification = validateClassification(c_classification_code);
        } catch (e) {
            return res.status(e.status || 400).json({ success: false, message: e.message });
        }

        // Check duplicate name in same Area
        const dup = await pool.query(
            `SELECT "C_Code" FROM "Tbl_Sub_Area_Mst"
             WHERE LOWER("C_Name") = LOWER($1) AND "C_Area_Code" = $2 AND "n_deleted" = 0`,
            [c_name.trim(), validatedAreaCode]
        );
        if (dup.rows.length > 0) {
            return res.status(409).json({
                success: false,
                message: `Sub Area "${c_name}" already exists in this Area.`
            });
        }

        const c_code = await generateNextCode();

        await pool.query(
            `INSERT INTO "Tbl_Sub_Area_Mst"
               ("C_Code", "C_Name", "C_Sh_Name", "C_Area_Code", "N_HQ_Flag", "n_lami", "n_lgmi", "C_Classification_Code", "n_deleted", "d_created", "c_modifier")
             VALUES ($1, $2, $3, $4, $5, $6, $7, $8, 0, NOW(), $9)`,
            [
                c_code,
                c_name.trim(),
                c_sh_name ? c_sh_name.trim() : null,
                validatedAreaCode,
                Number(n_hq_flag) === 1 ? 1 : 0,
                lat,
                lng,
                classification,
                req.admin.c_user_id
            ]
        );

        return res.status(201).json({
            success: true,
            message: 'Sub Area created successfully.',
            data: {
                c_code,
                c_name:                 c_name.trim(),
                c_sh_name:              c_sh_name ? c_sh_name.trim() : null,
                c_area_code:            validatedAreaCode,
                n_hq_flag:              Number(n_hq_flag) === 1 ? 1 : 0,
                n_lami:                 lat,
                n_lgmi:                 lng,
                c_classification_code:  classification
            }
        });

    } catch (err) {
        console.error('Sub Area create error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── GET ALL / SEARCH ─────────────────────────────────────────
// GET /api/masters/sub-area?search=West&code=SA0001&area=A00001&page=1&limit=10
async function getAll(req, res) {
    const page = parseInt(req.query.page, 10) || 1;
    const limit = parseInt(req.query.limit, 10) || 10;
    const offset = (page - 1) * limit;
    const search = (req.query.search || req.query.name || '').trim();
    const code = (req.query.code || '').trim();
    const area = (req.query.area || req.query.area_code || req.query.areaCode || '').trim();

    if (!search && !code && !area) {
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
            SELECT sa."C_Code" as c_code, sa."C_Name" as c_name, sa."C_Sh_Name" as c_sh_name, 
                   sa."C_Area_Code" as c_area_code, a."C_Name" as c_area_name,
                   sa."N_HQ_Flag" as n_hq_flag, sa."n_lami" as n_lami, sa."n_lgmi" as n_lgmi,
                   sa."C_Classification_Code" as c_classification_code,
                   sa."d_created", sa."d_modified", COUNT(*) OVER() as total_count
            FROM "Tbl_Sub_Area_Mst" sa
            LEFT JOIN "Tbl_Area_Mst" a ON sa."C_Area_Code" = a."C_Code"
            WHERE sa."n_deleted" = 0
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
            query += ` AND LOWER(sa."C_Name") LIKE LOWER($${params.length})`;
        }

        if (code && code !== '*') {
            let pattern = code;
            if (pattern.includes('*')) {
                pattern = pattern.replace(/\*/g, '%');
            } else {
                pattern = `%${pattern}%`;
            }
            params.push(pattern);
            query += ` AND LOWER(sa."C_Code") LIKE LOWER($${params.length})`;
        }

        if (area && area !== '*') {
            let pattern = area;
            if (pattern.includes('*')) {
                pattern = pattern.replace(/\*/g, '%');
            } else {
                pattern = `%${pattern}%`;
            }
            params.push(pattern);
            query += ` AND (LOWER(sa."C_Area_Code") LIKE LOWER($${params.length}) OR LOWER(a."C_Name") LIKE LOWER($${params.length}))`;
        }

        query += ` ORDER BY sa."C_Code" LIMIT $${params.length + 1} OFFSET $${params.length + 2}`;
        params.push(limit, offset);

        const result = await pool.query(query, params);

        const total = result.rows.length > 0 ? parseInt(result.rows[0].total_count, 10) : 0;
        const totalPages = Math.ceil(total / limit);

        const data = result.rows.map(row => {
            const { total_count, ...rest } = row;
            return {
                ...rest,
                n_hq_flag: Number(rest.n_hq_flag) || 0
            };
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
        console.error('Sub Area getAll error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── UPDATE ───────────────────────────────────────────────────
// PUT /api/masters/sub-area/:code
async function update(req, res) {
    const { code } = req.params;
    const {
        c_name,
        c_sh_name,
        c_area_code,
        n_hq_flag = 0,
        n_lami,
        n_lgmi,
        c_classification_code
    } = req.body;

    if (!c_name || !c_name.trim()) {
        return res.status(400).json({ success: false, message: 'Name (c_name) is required.' });
    }

    try {
        // Check exists
        const exists = await pool.query(
            `SELECT "C_Code" FROM "Tbl_Sub_Area_Mst"
             WHERE "C_Code" = $1 AND "n_deleted" = 0`,
            [code.toUpperCase()]
        );
        if (exists.rows.length === 0) {
            return res.status(404).json({ success: false, message: `Sub Area "${code}" not found.` });
        }

        // Validate dependencies and inputs
        let validatedAreaCode;
        let lat;
        let lng;
        let classification;

        try {
            validatedAreaCode = await validateArea(c_area_code);
            lat = validateCoordinate(n_lami, 'LAT');
            lng = validateCoordinate(n_lgmi, 'Long');
            classification = validateClassification(c_classification_code);
        } catch (e) {
            return res.status(e.status || 400).json({ success: false, message: e.message });
        }

        // Check duplicate name in same Area (excluding self)
        const dup = await pool.query(
            `SELECT "C_Code" FROM "Tbl_Sub_Area_Mst"
             WHERE LOWER("C_Name") = LOWER($1) AND "C_Area_Code" = $2 AND "n_deleted" = 0 AND "C_Code" != $3`,
            [c_name.trim(), validatedAreaCode, code.toUpperCase()]
        );
        if (dup.rows.length > 0) {
            return res.status(409).json({
                success: false,
                message: `Another sub area with name "${c_name}" already exists in this Area.`
            });
        }

        await pool.query(
            `UPDATE "Tbl_Sub_Area_Mst"
             SET "C_Name" = $1, "C_Sh_Name" = $2, "C_Area_Code" = $3, 
                 "N_HQ_Flag" = $4, "n_lami" = $5, "n_lgmi" = $6, "C_Classification_Code" = $7,
                 "d_modified" = NOW(), "c_modifier" = $8
             WHERE "C_Code" = $9`,
            [
                c_name.trim(),
                c_sh_name ? c_sh_name.trim() : null,
                validatedAreaCode,
                Number(n_hq_flag) === 1 ? 1 : 0,
                lat,
                lng,
                classification,
                req.admin.c_user_id,
                code.toUpperCase()
            ]
        );

        return res.status(200).json({
            success: true,
            message: 'Sub Area updated successfully.',
            data: {
                c_code:                 code.toUpperCase(),
                c_name:                 c_name.trim(),
                c_sh_name:              c_sh_name ? c_sh_name.trim() : null,
                c_area_code:            validatedAreaCode,
                n_hq_flag:              Number(n_hq_flag) === 1 ? 1 : 0,
                n_lami:                 lat,
                n_lgmi:                 lng,
                c_classification_code:  classification
            }
        });

    } catch (err) {
        console.error('Sub Area update error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── DELETE (soft) ────────────────────────────────────────────
// DELETE /api/masters/sub-area/:code
async function remove(req, res) {
    const { code } = req.params;

    try {
        const exists = await pool.query(
            `SELECT "C_Code" FROM "Tbl_Sub_Area_Mst"
             WHERE "C_Code" = $1 AND "n_deleted" = 0`,
            [code.toUpperCase()]
        );
        if (exists.rows.length === 0) {
            return res.status(404).json({ success: false, message: `Sub Area "${code}" not found.` });
        }

        await pool.query(
            `UPDATE "Tbl_Sub_Area_Mst"
             SET "n_deleted" = 1, "d_modified" = NOW(), "c_modifier" = $1
             WHERE "C_Code" = $2`,
            [req.admin.c_user_id, code.toUpperCase()]
        );

        return res.status(200).json({
            success: true,
            message: `Sub Area "${code}" deleted successfully.`
        });

    } catch (err) {
        console.error('Sub Area delete error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── GET NEXT CODE ────────────────────────────────────────────
// GET /api/masters/sub-area/next-code
async function getNextCode(req, res) {
    try {
        const nextCode = await generateNextCode();
        return res.status(200).json({
            success: true,
            nextCode
        });
    } catch (err) {
        console.error('Sub Area getNextCode error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

module.exports = { getClassifications, create, getAll, update, remove, getNextCode };

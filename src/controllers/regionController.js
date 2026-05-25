const pool = require('../config/db');

// ─────────────────────────────────────────────────────────────
// TABLE: Tbl_Region_Mst
//   C_Code         VARCHAR(10) PK  — auto-generated: R0001, R0002...
//   C_Name         VARCHAR(50)     — Name
//   C_Sh_Name      VARCHAR(7)      — Short Name (optional)
//   C_Zone_Code    VARCHAR(10)     — FK → Tbl_Zone_Mst (required)
//   n_deleted      SMALLINT        — 0 = active, 1 = deleted
//   d_created      TIMESTAMP
//   d_modified     TIMESTAMP
//   c_modifier     VARCHAR(10)     — last modified by (c_user_id)
//   n_lami         DOUBLE PRECISION — LAT (numerical validation)
//   n_lgmi         DOUBLE PRECISION — Long (numerical validation)
// ─────────────────────────────────────────────────────────────

// ── Helper: generate next R code ─────────────────────────────
async function generateNextCode() {
    const result = await pool.query(`
        SELECT "C_Code" FROM "Tbl_Region_Mst"
        WHERE "C_Code" ~ '^R[0-9]+$'
        ORDER BY CAST(SUBSTRING("C_Code" FROM 2) AS INTEGER) DESC
        LIMIT 1
    `);

    if (result.rows.length === 0) return 'R0001';

    const lastNum = parseInt(result.rows[0].C_Code.replace('R', ''), 10);
    const nextNum = lastNum + 1;
    return 'R' + String(nextNum).padStart(4, '0');
}

// ── Helper: validate Zone exists and is active ────────────────
async function validateZone(zoneCode) {
    if (!zoneCode || !zoneCode.trim()) {
        throw { status: 400, message: 'Zone Code (c_zone_code) is required.' };
    }
    const result = await pool.query(
        `SELECT "C_Code" FROM "Tbl_Zone_Mst"
         WHERE "C_Code" = $1 AND "n_deleted" = 0
         LIMIT 1`,
        [zoneCode.trim().toUpperCase()]
    );
    if (result.rows.length === 0) {
        throw { status: 400, message: `Zone Code "${zoneCode}" not found or is deleted.` };
    }
    return zoneCode.trim().toUpperCase();
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

// ─── CREATE ───────────────────────────────────────────────────
// POST /api/masters/region
async function create(req, res) {
    const { c_name, c_sh_name, c_zone_code, n_lami, n_lgmi } = req.body;

    if (!c_name || !c_name.trim()) {
        return res.status(400).json({ success: false, message: 'Name (c_name) is required.' });
    }

    try {
        // Validate dependencies and inputs
        let validatedZoneCode;
        let lat;
        let lng;
        try {
            validatedZoneCode = await validateZone(c_zone_code);
            lat = validateCoordinate(n_lami, 'LAT');
            lng = validateCoordinate(n_lgmi, 'Long');
        } catch (e) {
            return res.status(e.status || 400).json({ success: false, message: e.message });
        }

        // Check duplicate name in same zone
        const dup = await pool.query(
            `SELECT "C_Code" FROM "Tbl_Region_Mst"
             WHERE LOWER("C_Name") = LOWER($1) AND "C_Zone_Code" = $2 AND "n_deleted" = 0`,
            [c_name.trim(), validatedZoneCode]
        );
        if (dup.rows.length > 0) {
            return res.status(409).json({
                success: false,
                message: `Region "${c_name}" already exists in this Zone.`
            });
        }

        const c_code = await generateNextCode();

        await pool.query(
            `INSERT INTO "Tbl_Region_Mst"
               ("C_Code", "C_Name", "C_Sh_Name", "C_Zone_Code", "n_lami", "n_lgmi", "n_deleted", "d_created", "c_modifier")
             VALUES ($1, $2, $3, $4, $5, $6, 0, NOW(), $7)`,
            [
                c_code,
                c_name.trim(),
                c_sh_name ? c_sh_name.trim() : null,
                validatedZoneCode,
                lat,
                lng,
                req.admin.c_user_id
            ]
        );

        return res.status(201).json({
            success: true,
            message: 'Region created successfully.',
            data: {
                c_code,
                c_name:      c_name.trim(),
                c_sh_name:   c_sh_name ? c_sh_name.trim() : null,
                c_zone_code: validatedZoneCode,
                n_lami:      lat,
                n_lgmi:      lng
            }
        });

    } catch (err) {
        console.error('Region create error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── GET ALL / SEARCH ─────────────────────────────────────────
// GET /api/masters/region?search=West&code=R0001&page=1&limit=10
async function getAll(req, res) {
    const page = parseInt(req.query.page, 10) || 1;
    const limit = parseInt(req.query.limit, 10) || 10;
    const offset = (page - 1) * limit;
    const search = (req.query.search || req.query.name || '').trim();
    const code = (req.query.code || '').trim();

    if (!search && !code) {
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
            SELECT r."C_Code" as c_code, r."C_Name" as c_name, r."C_Sh_Name" as c_sh_name, 
                   r."C_Zone_Code" as c_zone_code, z."C_Name" as c_zone_name,
                   r."n_lami", r."n_lgmi", r."d_created", r."d_modified", COUNT(*) OVER() as total_count
            FROM "Tbl_Region_Mst" r
            LEFT JOIN "Tbl_Zone_Mst" z ON r."C_Zone_Code" = z."C_Code"
            WHERE r."n_deleted" = 0
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
            query += ` AND LOWER(r."C_Name") LIKE LOWER($${params.length})`;
        }

        if (code && code !== '*') {
            let pattern = code;
            if (pattern.includes('*')) {
                pattern = pattern.replace(/\*/g, '%');
            } else {
                pattern = `%${pattern}%`;
            }
            params.push(pattern);
            query += ` AND LOWER(r."C_Code") LIKE LOWER($${params.length})`;
        }

        query += ` ORDER BY r."C_Code" LIMIT $${params.length + 1} OFFSET $${params.length + 2}`;
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
        console.error('Region getAll error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── UPDATE ───────────────────────────────────────────────────
// PUT /api/masters/region/:code
async function update(req, res) {
    const { code } = req.params;
    const { c_name, c_sh_name, c_zone_code, n_lami, n_lgmi } = req.body;

    if (!c_name || !c_name.trim()) {
        return res.status(400).json({ success: false, message: 'Name (c_name) is required.' });
    }

    try {
        // Check exists
        const exists = await pool.query(
            `SELECT "C_Code" FROM "Tbl_Region_Mst"
             WHERE "C_Code" = $1 AND "n_deleted" = 0`,
            [code.toUpperCase()]
        );
        if (exists.rows.length === 0) {
            return res.status(404).json({ success: false, message: `Region "${code}" not found.` });
        }

        // Validate dependencies and inputs
        let validatedZoneCode;
        let lat;
        let lng;
        try {
            validatedZoneCode = await validateZone(c_zone_code);
            lat = validateCoordinate(n_lami, 'LAT');
            lng = validateCoordinate(n_lgmi, 'Long');
        } catch (e) {
            return res.status(e.status || 400).json({ success: false, message: e.message });
        }

        // Check duplicate name in same zone (excluding self)
        const dup = await pool.query(
            `SELECT "C_Code" FROM "Tbl_Region_Mst"
             WHERE LOWER("C_Name") = LOWER($1) AND "C_Zone_Code" = $2 AND "n_deleted" = 0 AND "C_Code" != $3`,
            [c_name.trim(), validatedZoneCode, code.toUpperCase()]
        );
        if (dup.rows.length > 0) {
            return res.status(409).json({
                success: false,
                message: `Another region with name "${c_name}" already exists in this Zone.`
            });
        }

        await pool.query(
            `UPDATE "Tbl_Region_Mst"
             SET "C_Name" = $1, "C_Sh_Name" = $2, "C_Zone_Code" = $3, 
                 "n_lami" = $4, "n_lgmi" = $5,
                 "d_modified" = NOW(), "c_modifier" = $6
             WHERE "C_Code" = $7`,
            [
                c_name.trim(),
                c_sh_name ? c_sh_name.trim() : null,
                validatedZoneCode,
                lat,
                lng,
                req.admin.c_user_id,
                code.toUpperCase()
            ]
        );

        return res.status(200).json({
            success: true,
            message: 'Region updated successfully.',
            data: {
                c_code:      code.toUpperCase(),
                c_name:      c_name.trim(),
                c_sh_name:   c_sh_name ? c_sh_name.trim() : null,
                c_zone_code: validatedZoneCode,
                n_lami:      lat,
                n_lgmi:      lng
            }
        });

    } catch (err) {
        console.error('Region update error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── DELETE (soft) ────────────────────────────────────────────
// DELETE /api/masters/region/:code
async function remove(req, res) {
    const { code } = req.params;

    try {
        const exists = await pool.query(
            `SELECT "C_Code" FROM "Tbl_Region_Mst"
             WHERE "C_Code" = $1 AND "n_deleted" = 0`,
            [code.toUpperCase()]
        );
        if (exists.rows.length === 0) {
            return res.status(404).json({ success: false, message: `Region "${code}" not found.` });
        }

        await pool.query(
            `UPDATE "Tbl_Region_Mst"
             SET "n_deleted" = 1, "d_modified" = NOW(), "c_modifier" = $1
             WHERE "C_Code" = $2`,
            [req.admin.c_user_id, code.toUpperCase()]
        );

        return res.status(200).json({
            success: true,
            message: `Region "${code}" deleted successfully.`
        });

    } catch (err) {
        console.error('Region delete error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── GET NEXT CODE ────────────────────────────────────────────
// GET /api/masters/region/next-code
async function getNextCode(req, res) {
    try {
        const nextCode = await generateNextCode();
        return res.status(200).json({
            success: true,
            nextCode
        });
    } catch (err) {
        console.error('Region getNextCode error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

module.exports = { create, getAll, update, remove, getNextCode };

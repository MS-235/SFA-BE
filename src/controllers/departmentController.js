const pool = require('../config/db');

// ─────────────────────────────────────────────────────────────
// TABLE: tbl_department_mst
//
//  C_Code                  VARCHAR(10)  PK  — auto: DP0001, DP0002...
//  c_name                  VARCHAR(50)      — Name (required)
//  c_short_name            VARCHAR(10)      — Short Name
//  C_travel_desk_location  VARCHAR(50)      — from TRAVEL_DESK_LOCATIONS list
//  C_travel_desk_incharge  VARCHAR(10)      — FK → Tbl_FS_Mst.C_Code (optional now)
//  C_material_desk_location VARCHAR(50)     — from TRAVEL_DESK_LOCATIONS list (optional now)
//  C_material_desk_incharge VARCHAR(10)     — FK → Tbl_FS_Mst.C_Code (optional now)
//  C_material_desk_empcode VARCHAR(10)      — original column kept as-is
//  N_SFA_ROLE              INTEGER          — 0 = No, 1 = Yes (checkbox)
//  N_deleted               SMALLINT         — 0 = active, 1 = deleted
//  D_created               TIMESTAMP
//  D_modified              TIMESTAMP
//  C_modifier              VARCHAR(50)
//  C_Gadget_code           VARCHAR(50)
// ─────────────────────────────────────────────────────────────

// ── Travel desk locations — fixed from backend, scalable ─────
// To add more locations in future, just add to this array.
const TRAVEL_DESK_LOCATIONS = [
    { value: 'HYDERABAD', label: 'Hyderabad' },
    { value: 'MUMBAI',    label: 'Mumbai'    },
    // Add more here as needed:
    // { value: 'DELHI',     label: 'Delhi'     },
    // { value: 'CHENNAI',   label: 'Chennai'   },
];

const VALID_LOCATION_VALUES = TRAVEL_DESK_LOCATIONS.map(l => l.value);

// ── Helper: generate next DP code ────────────────────────────
async function generateNextCode() {
    const result = await pool.query(`
        SELECT "C_Code" FROM "tbl_department_mst"
        WHERE "C_Code" ~ '^DP[0-9]+$'
        ORDER BY CAST(SUBSTRING("C_Code" FROM 3) AS INTEGER) DESC
        LIMIT 1
    `);
    if (result.rows.length === 0) return 'DP0001';
    const lastNum = parseInt(result.rows[0].C_Code.replace('DP', ''), 10);
    return 'DP' + String(lastNum + 1).padStart(4, '0');
}

// ── Helper: validate incharge code exists in Tbl_FS_Mst ──────
async function validateIncharge(code, fieldName) {
    if (!code) return null; // optional field
    const r = await pool.query(
        `SELECT "C_Code" FROM "Tbl_FS_Mst" WHERE "C_Code" = $1 LIMIT 1`,
        [code]
    );
    if (r.rows.length === 0) {
        throw { status: 400, message: `${fieldName} code "${code}" not found in employee master.` };
    }
    return code;
}

// ─── GET TRAVEL DESK LOCATIONS (config endpoint) ─────────────
// GET /api/masters/department/locations
function getLocations(req, res) {
    return res.status(200).json({
        success: true,
        data: TRAVEL_DESK_LOCATIONS
    });
}

// ─── CREATE ───────────────────────────────────────────────────
// POST /api/masters/department
async function create(req, res) {
    const {
        c_name,
        c_short_name             = null,
        c_travel_desk_location   = null,
        c_travel_desk_incharge   = null,
        c_material_desk_location = null,
        c_material_desk_incharge = null,
        n_sfa_role               = 0      // checkbox: 0=No, 1=Yes
    } = req.body;

    // ── Validations ──
    const errors = [];

    if (!c_name || !c_name.trim()) {
        errors.push('Name (c_name) is required.');
    }

    // Travel desk location must be from the fixed list if provided
    if (c_travel_desk_location && !VALID_LOCATION_VALUES.includes(c_travel_desk_location.toUpperCase())) {
        errors.push(`Travel desk location must be one of: ${VALID_LOCATION_VALUES.join(', ')}.`);
    }

    // Material desk location must be from the fixed list if provided
    if (c_material_desk_location && !VALID_LOCATION_VALUES.includes(c_material_desk_location.toUpperCase())) {
        errors.push(`Material desk location must be one of: ${VALID_LOCATION_VALUES.join(', ')}.`);
    }

    // SFA Role must be 0 or 1
    if (![0, 1].includes(Number(n_sfa_role))) {
        errors.push('SFA Role (n_sfa_role) must be 0 (No) or 1 (Yes).');
    }

    if (errors.length > 0) {
        return res.status(400).json({ success: false, errors });
    }

    try {
        // Duplicate name check
        const dup = await pool.query(
            `SELECT "C_Code" FROM "tbl_department_mst"
             WHERE LOWER("c_name") = LOWER($1) AND "N_deleted" = 0`,
            [c_name.trim()]
        );
        if (dup.rows.length > 0) {
            return res.status(409).json({
                success: false,
                message: `Department "${c_name}" already exists.`
            });
        }

        // Validate incharge codes against FS master (optional fields)
        try {
            await validateIncharge(c_travel_desk_incharge,   'Travel desk incharge');
            await validateIncharge(c_material_desk_incharge, 'Material desk incharge');
        } catch (e) {
            return res.status(e.status).json({ success: false, message: e.message });
        }

        const c_code = await generateNextCode();

        await pool.query(
            `INSERT INTO "tbl_department_mst"
               ("C_Code", "c_name", "c_short_name",
                "C_travel_desk_location", "C_travel_desk_incharge",
                "C_material_desk_location", "C_material_desk_incharge",
                "N_SFA_ROLE", "N_deleted", "D_created", "C_modifier")
             VALUES ($1,$2,$3,$4,$5,$6,$7,$8,0,NOW(),$9)`,
            [
                c_code,
                c_name.trim(),
                c_short_name ? c_short_name.trim() : null,
                c_travel_desk_location   ? c_travel_desk_location.toUpperCase()   : null,
                c_travel_desk_incharge   ? c_travel_desk_incharge.trim()           : null,
                c_material_desk_location ? c_material_desk_location.toUpperCase() : null,
                c_material_desk_incharge ? c_material_desk_incharge.trim()         : null,
                Number(n_sfa_role),
                req.admin.c_user_id
            ]
        );

        return res.status(201).json({
            success: true,
            message: 'Department created successfully.',
            data: {
                c_code,
                c_name:                    c_name.trim(),
                c_short_name:              c_short_name || null,
                c_travel_desk_location:    c_travel_desk_location   ? c_travel_desk_location.toUpperCase()   : null,
                c_travel_desk_incharge:    c_travel_desk_incharge   || null,
                c_material_desk_location:  c_material_desk_location ? c_material_desk_location.toUpperCase() : null,
                c_material_desk_incharge:  c_material_desk_incharge || null,
                n_sfa_role:                Number(n_sfa_role),
                sfa_role_label:            Number(n_sfa_role) === 1 ? 'Yes' : 'No'
            }
        });

    } catch (err) {
        console.error('Department create error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── GET ALL / SEARCH ─────────────────────────────────────────
// GET /api/masters/department?search=Sales&page=1&limit=10
async function getAll(req, res) {
    const page = parseInt(req.query.page, 10) || 1;
    const limit = parseInt(req.query.limit, 10) || 10;
    const offset = (page - 1) * limit;
    const search = (req.query.search || req.query.name || '').trim();

    if (!search) {
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
            SELECT "C_Code","c_name","c_short_name",
                   "C_travel_desk_location","C_travel_desk_incharge",
                   "C_material_desk_location","C_material_desk_incharge",
                   "N_SFA_ROLE","D_created","D_modified", COUNT(*) OVER() as total_count
            FROM "tbl_department_mst"
            WHERE "N_deleted" = 0
        `;
        const params = [];

        if (search && search !== '*') {
            let pattern = search;
            if (pattern.includes('*')) {
                pattern = pattern.replace(/\*/g, '%');
            } else {
                pattern = `%${pattern}%`;
            }
            query += ` AND (LOWER("c_name") LIKE LOWER($1) OR LOWER("C_Code") LIKE LOWER($1))`;
            params.push(pattern);
        }

        query += ` ORDER BY "C_Code" LIMIT $${params.length + 1} OFFSET $${params.length + 2}`;
        params.push(limit, offset);

        const result = await pool.query(query, params);

        const total = result.rows.length > 0 ? parseInt(result.rows[0].total_count, 10) : 0;
        const totalPages = Math.ceil(total / limit);

        const data = result.rows.map(row => {
            const { total_count, ...rest } = row;
            return {
                ...rest,
                sfa_role_label: rest.N_SFA_ROLE === 1 ? 'Yes' : 'No'
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
        console.error('Department getAll error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── UPDATE ───────────────────────────────────────────────────
// PUT /api/masters/department/:code
async function update(req, res) {
    const { code } = req.params;
    const {
        c_name,
        c_short_name             = null,
        c_travel_desk_location   = null,
        c_travel_desk_incharge   = null,
        c_material_desk_location = null,
        c_material_desk_incharge = null,
        n_sfa_role               = 0
    } = req.body;

    // ── Validations ──
    const errors = [];

    if (!c_name || !c_name.trim()) errors.push('Name (c_name) is required.');

    if (c_travel_desk_location && !VALID_LOCATION_VALUES.includes(c_travel_desk_location.toUpperCase())) {
        errors.push(`Travel desk location must be one of: ${VALID_LOCATION_VALUES.join(', ')}.`);
    }
    if (c_material_desk_location && !VALID_LOCATION_VALUES.includes(c_material_desk_location.toUpperCase())) {
        errors.push(`Material desk location must be one of: ${VALID_LOCATION_VALUES.join(', ')}.`);
    }
    if (![0, 1].includes(Number(n_sfa_role))) {
        errors.push('SFA Role (n_sfa_role) must be 0 (No) or 1 (Yes).');
    }

    if (errors.length > 0) {
        return res.status(400).json({ success: false, errors });
    }

    try {
        // Exists check
        const exists = await pool.query(
            `SELECT "C_Code" FROM "tbl_department_mst"
             WHERE "C_Code" = $1 AND "N_deleted" = 0`,
            [code.toUpperCase()]
        );
        if (exists.rows.length === 0) {
            return res.status(404).json({ success: false, message: `Department "${code}" not found.` });
        }

        // Duplicate name check (excluding self)
        const dup = await pool.query(
            `SELECT "C_Code" FROM "tbl_department_mst"
             WHERE LOWER("c_name") = LOWER($1) AND "N_deleted" = 0 AND "C_Code" != $2`,
            [c_name.trim(), code.toUpperCase()]
        );
        if (dup.rows.length > 0) {
            return res.status(409).json({
                success: false,
                message: `Another department with name "${c_name}" already exists.`
            });
        }

        // Validate incharge codes
        try {
            await validateIncharge(c_travel_desk_incharge,   'Travel desk incharge');
            await validateIncharge(c_material_desk_incharge, 'Material desk incharge');
        } catch (e) {
            return res.status(e.status).json({ success: false, message: e.message });
        }

        await pool.query(
            `UPDATE "tbl_department_mst"
             SET "c_name"                    = $1,
                 "c_short_name"              = $2,
                 "C_travel_desk_location"    = $3,
                 "C_travel_desk_incharge"    = $4,
                 "C_material_desk_location"  = $5,
                 "C_material_desk_incharge"  = $6,
                 "N_SFA_ROLE"                = $7,
                 "D_modified"                = NOW(),
                 "C_modifier"                = $8
             WHERE "C_Code" = $9`,
            [
                c_name.trim(),
                c_short_name ? c_short_name.trim() : null,
                c_travel_desk_location   ? c_travel_desk_location.toUpperCase()   : null,
                c_travel_desk_incharge   ? c_travel_desk_incharge.trim()           : null,
                c_material_desk_location ? c_material_desk_location.toUpperCase() : null,
                c_material_desk_incharge ? c_material_desk_incharge.trim()         : null,
                Number(n_sfa_role),
                req.admin.c_user_id,
                code.toUpperCase()
            ]
        );

        return res.status(200).json({
            success: true,
            message: 'Department updated successfully.',
            data: {
                c_code:                   code.toUpperCase(),
                c_name:                   c_name.trim(),
                c_short_name:             c_short_name || null,
                c_travel_desk_location:   c_travel_desk_location   ? c_travel_desk_location.toUpperCase()   : null,
                c_travel_desk_incharge:   c_travel_desk_incharge   || null,
                c_material_desk_location: c_material_desk_location ? c_material_desk_location.toUpperCase() : null,
                c_material_desk_incharge: c_material_desk_incharge || null,
                n_sfa_role:               Number(n_sfa_role),
                sfa_role_label:           Number(n_sfa_role) === 1 ? 'Yes' : 'No'
            }
        });

    } catch (err) {
        console.error('Department update error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── DELETE (soft) ────────────────────────────────────────────
// DELETE /api/masters/department/:code
async function remove(req, res) {
    const { code } = req.params;

    try {
        const exists = await pool.query(
            `SELECT "C_Code" FROM "tbl_department_mst"
             WHERE "C_Code" = $1 AND "N_deleted" = 0`,
            [code.toUpperCase()]
        );
        if (exists.rows.length === 0) {
            return res.status(404).json({ success: false, message: `Department "${code}" not found.` });
        }

        await pool.query(
            `UPDATE "tbl_department_mst"
             SET "N_deleted" = 1, "D_modified" = NOW(), "C_modifier" = $1
             WHERE "C_Code" = $2`,
            [req.admin.c_user_id, code.toUpperCase()]
        );

        return res.status(200).json({
            success: true,
            message: `Department "${code}" deleted successfully.`
        });

    } catch (err) {
        console.error('Department delete error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

module.exports = { getLocations, create, getAll, update, remove };

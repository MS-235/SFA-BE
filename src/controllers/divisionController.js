const pool = require('../config/db');

// ─────────────────────────────────────────────────────────────
// TABLE: Tbl_Div_Mst
//   c_code     VARCHAR(10) PK  — auto-generated: DI0001, DI0034...
//   c_name     VARCHAR(50)     — Name
//   c_sh_name  VARCHAR(7)      — Short Name (optional)
//   n_deleted  SMALLINT        — 0 = active, 1 = deleted
//   d_created  TIMESTAMP
//   d_modified TIMESTAMP
//   c_modifier VARCHAR(10)     — last modified by (c_user_id)
// ─────────────────────────────────────────────────────────────

// ── Helper: generate next DI code ───────────────────────────
async function generateNextCode() {
    const result = await pool.query(`
        SELECT "c_code" FROM "Tbl_Div_Mst"
        WHERE "c_code" ~ '^DI[0-9]+$'
        ORDER BY CAST(SUBSTRING("c_code" FROM 3) AS INTEGER) DESC
        LIMIT 1
    `);

    if (result.rows.length === 0) return 'DI0001';

    const lastNum = parseInt(result.rows[0].c_code.replace('DI', ''), 10);
    const nextNum = lastNum + 1;
    return 'DI' + String(nextNum).padStart(4, '0');
}

// ─── CREATE ───────────────────────────────────────────────────
// POST /api/masters/division
async function create(req, res) {
    const { c_name, c_sh_name } = req.body;

    if (!c_name || !c_name.trim()) {
        return res.status(400).json({ success: false, message: 'Name (c_name) is required.' });
    }

    try {
        // Check duplicate name
        const dup = await pool.query(
            `SELECT "c_code" FROM "Tbl_Div_Mst"
             WHERE LOWER("c_name") = LOWER($1) AND "n_deleted" = 0`,
            [c_name.trim()]
        );
        if (dup.rows.length > 0) {
            return res.status(409).json({
                success: false,
                message: `Division "${c_name}" already exists.`
            });
        }

        const c_code = await generateNextCode();

        await pool.query(
            `INSERT INTO "Tbl_Div_Mst"
               ("c_code", "c_name", "c_sh_name", "n_deleted", "d_created", "c_modifier")
             VALUES ($1, $2, $3, 0, NOW(), $4)`,
            [c_code, c_name.trim(), c_sh_name ? c_sh_name.trim() : null, req.admin.c_user_id]
        );

        return res.status(201).json({
            success: true,
            message: 'Division created successfully.',
            data: {
                c_code,
                c_name:    c_name.trim(),
                c_sh_name: c_sh_name ? c_sh_name.trim() : null
            }
        });

    } catch (err) {
        console.error('Division create error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── GET ALL / SEARCH ─────────────────────────────────────────
// GET /api/masters/division?search=Sales&code=DI0001&page=1&limit=10
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
            SELECT "c_code", "c_name", "c_sh_name", "d_created", "d_modified", COUNT(*) OVER() as total_count
            FROM "Tbl_Div_Mst"
            WHERE "n_deleted" = 0
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
            query += ` AND LOWER("c_name") LIKE LOWER($${params.length})`;
        }

        if (code && code !== '*') {
            let pattern = code;
            if (pattern.includes('*')) {
                pattern = pattern.replace(/\*/g, '%');
            } else {
                pattern = `%${pattern}%`;
            }
            params.push(pattern);
            query += ` AND LOWER("c_code") LIKE LOWER($${params.length})`;
        }

        query += ` ORDER BY "c_code" LIMIT $${params.length + 1} OFFSET $${params.length + 2}`;
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
        console.error('Division getAll error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── UPDATE ───────────────────────────────────────────────────
// PUT /api/masters/division/:code
async function update(req, res) {
    const { code } = req.params;
    const { c_name, c_sh_name } = req.body;

    if (!c_name || !c_name.trim()) {
        return res.status(400).json({ success: false, message: 'Name (c_name) is required.' });
    }

    try {
        // Check exists
        const exists = await pool.query(
            `SELECT "c_code" FROM "Tbl_Div_Mst"
             WHERE "c_code" = $1 AND "n_deleted" = 0`,
            [code.toUpperCase()]
        );
        if (exists.rows.length === 0) {
            return res.status(404).json({ success: false, message: `Division "${code}" not found.` });
        }

        // Check duplicate name (excluding self)
        const dup = await pool.query(
            `SELECT "c_code" FROM "Tbl_Div_Mst"
             WHERE LOWER("c_name") = LOWER($1) AND "n_deleted" = 0 AND "c_code" != $2`,
            [c_name.trim(), code.toUpperCase()]
        );
        if (dup.rows.length > 0) {
            return res.status(409).json({
                success: false,
                message: `Another division with name "${c_name}" already exists.`
            });
        }

        await pool.query(
            `UPDATE "Tbl_Div_Mst"
             SET "c_name" = $1, "c_sh_name" = $2,
                 "d_modified" = NOW(), "c_modifier" = $3
             WHERE "c_code" = $4`,
            [c_name.trim(), c_sh_name ? c_sh_name.trim() : null, req.admin.c_user_id, code.toUpperCase()]
        );

        return res.status(200).json({
            success: true,
            message: 'Division updated successfully.',
            data: {
                c_code:    code.toUpperCase(),
                c_name:    c_name.trim(),
                c_sh_name: c_sh_name ? c_sh_name.trim() : null
            }
        });

    } catch (err) {
        console.error('Division update error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── DELETE (soft) ────────────────────────────────────────────
// DELETE /api/masters/division/:code
async function remove(req, res) {
    const { code } = req.params;

    try {
        const exists = await pool.query(
            `SELECT "c_code" FROM "Tbl_Div_Mst"
             WHERE "c_code" = $1 AND "n_deleted" = 0`,
            [code.toUpperCase()]
        );
        if (exists.rows.length === 0) {
            return res.status(404).json({ success: false, message: `Division "${code}" not found.` });
        }

        await pool.query(
            `UPDATE "Tbl_Div_Mst"
             SET "n_deleted" = 1, "d_modified" = NOW(), "c_modifier" = $1
             WHERE "c_code" = $2`,
            [req.admin.c_user_id, code.toUpperCase()]
        );

        return res.status(200).json({
            success: true,
            message: `Division "${code}" deleted successfully.`
        });

    } catch (err) {
        console.error('Division delete error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

module.exports = { create, getAll, update, remove };

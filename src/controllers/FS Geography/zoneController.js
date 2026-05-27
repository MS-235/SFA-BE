const pool = require('../../config/db');

// ─────────────────────────────────────────────────────────────
// TABLE: Tbl_Zone_Mst
//   C_Code     VARCHAR(10) PK  — auto-generated: Z00001, Z00002...
//   C_Name     VARCHAR(50)     — Name
//   C_Sh_Name  VARCHAR(7)      — Short Name (optional)
//   n_deleted  SMALLINT        — legacy column, hard delete now in use
//   d_created  TIMESTAMP
//   d_modified TIMESTAMP
//   c_modifier VARCHAR(10)     — last modified by (c_user_id)
// ─────────────────────────────────────────────────────────────

// ── Helper: peek next Z code (no increment) ──────────────────
async function peekNextCode() {
    const seq = await pool.query(
        `SELECT last_value, is_called FROM "Tbl_Zone_Mst_n_seq_seq"`
    );
    const nextNum = seq.rows[0].is_called
        ? parseInt(seq.rows[0].last_value, 10) + 1
        : parseInt(seq.rows[0].last_value, 10);
    return 'Z' + String(nextNum).padStart(5, '0');
}

// ─── CREATE ───────────────────────────────────────────────────
// POST /api/masters/zone
async function create(req, res) {
    const { c_name, c_sh_name } = req.body;

    if (!c_name || !c_name.trim()) {
        return res.status(400).json({ success: false, message: 'Name (c_name) is required.' });
    }

    try {
        const dup = await pool.query(
            `SELECT "C_Code" FROM "Tbl_Zone_Mst" WHERE LOWER("C_Name") = LOWER($1)`,
            [c_name.trim()]
        );
        if (dup.rows.length > 0) {
            return res.status(409).json({ success: false, message: `Zone "${c_name}" already exists.` });
        }

        const inserted = await pool.query(
            `INSERT INTO "Tbl_Zone_Mst" ("C_Code", "C_Name", "C_Sh_Name", "d_created", "c_modifier")
             VALUES ('TEMP', $1, $2, NOW(), $3) RETURNING "n_seq"`,
            [c_name.trim(), c_sh_name ? c_sh_name.trim() : null, req.admin.c_user_id]
        );
        const n_seq = parseInt(inserted.rows[0].n_seq, 10);
        const c_code = 'Z' + String(n_seq).padStart(5, '0');
        await pool.query(`UPDATE "Tbl_Zone_Mst" SET "C_Code" = $1 WHERE "n_seq" = $2`, [c_code, n_seq]);

        return res.status(201).json({
            success: true,
            message: 'Zone created successfully.',
            data: { c_code, c_name: c_name.trim(), c_sh_name: c_sh_name ? c_sh_name.trim() : null }
        });

    } catch (err) {
        console.error('Zone create error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── GET ALL / SEARCH ─────────────────────────────────────────
// GET /api/masters/zone?search=South&code=Z00001&page=1&limit=10
async function getAll(req, res) {
    const page = parseInt(req.query.page, 10) || 1;
    const limit = parseInt(req.query.limit, 10) || 10;
    const offset = (page - 1) * limit;
    const search = (req.query.search || req.query.name || '').trim();
    const code = (req.query.code || '').trim();

    if (!search && !code) {
        return res.status(200).json({ success: true, pagination: { total: 0, page, limit, totalPages: 0 }, data: [] });
    }

    try {
        let query = `
            SELECT "C_Code" as c_code, "C_Name" as c_name, "C_Sh_Name" as c_sh_name,
                   "d_created", "d_modified", COUNT(*) OVER() as total_count
            FROM "Tbl_Zone_Mst"
            WHERE 1=1
        `;
        const params = [];

        if (search && search !== '*') {
            params.push(search.includes('*') ? search.replace(/\*/g, '%') : `%${search}%`);
            query += ` AND LOWER("C_Name") LIKE LOWER($${params.length})`;
        }
        if (code && code !== '*') {
            params.push(code.includes('*') ? code.replace(/\*/g, '%') : `%${code}%`);
            query += ` AND LOWER("C_Code") LIKE LOWER($${params.length})`;
        }

        query += ` ORDER BY "C_Code" LIMIT $${params.length + 1} OFFSET $${params.length + 2}`;
        params.push(limit, offset);

        const result = await pool.query(query, params);
        const total = result.rows.length > 0 ? parseInt(result.rows[0].total_count, 10) : 0;
        const data = result.rows.map(({ total_count, ...rest }) => rest);

        return res.status(200).json({ success: true, pagination: { total, page, limit, totalPages: Math.ceil(total / limit) }, data });

    } catch (err) {
        console.error('Zone getAll error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── UPDATE ───────────────────────────────────────────────────
// PUT /api/masters/zone/:code
async function update(req, res) {
    const { code } = req.params;
    const { c_name, c_sh_name } = req.body;

    if (!c_name || !c_name.trim()) {
        return res.status(400).json({ success: false, message: 'Name (c_name) is required.' });
    }

    try {
        const exists = await pool.query(
            `SELECT "C_Code" FROM "Tbl_Zone_Mst" WHERE "C_Code" = $1`, [code.toUpperCase()]
        );
        if (exists.rows.length === 0) {
            return res.status(404).json({ success: false, message: `Zone "${code}" not found.` });
        }

        const dup = await pool.query(
            `SELECT "C_Code" FROM "Tbl_Zone_Mst" WHERE LOWER("C_Name") = LOWER($1) AND "C_Code" != $2`,
            [c_name.trim(), code.toUpperCase()]
        );
        if (dup.rows.length > 0) {
            return res.status(409).json({ success: false, message: `Another zone with name "${c_name}" already exists.` });
        }

        await pool.query(
            `UPDATE "Tbl_Zone_Mst" SET "C_Name" = $1, "C_Sh_Name" = $2, "d_modified" = NOW(), "c_modifier" = $3 WHERE "C_Code" = $4`,
            [c_name.trim(), c_sh_name ? c_sh_name.trim() : null, req.admin.c_user_id, code.toUpperCase()]
        );

        return res.status(200).json({
            success: true,
            message: 'Zone updated successfully.',
            data: { c_code: code.toUpperCase(), c_name: c_name.trim(), c_sh_name: c_sh_name ? c_sh_name.trim() : null }
        });

    } catch (err) {
        console.error('Zone update error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── DELETE (hard) ────────────────────────────────────────────
// DELETE /api/masters/zone/:code
async function remove(req, res) {
    const { code } = req.params;

    try {
        const exists = await pool.query(
            `SELECT "C_Code" FROM "Tbl_Zone_Mst" WHERE "C_Code" = $1`, [code.toUpperCase()]
        );
        if (exists.rows.length === 0) {
            return res.status(404).json({ success: false, message: `Zone "${code}" not found.` });
        }

        await pool.query(`DELETE FROM "Tbl_Zone_Mst" WHERE "C_Code" = $1`, [code.toUpperCase()]);

        return res.status(200).json({ success: true, message: `Zone "${code}" deleted successfully.` });

    } catch (err) {
        console.error('Zone delete error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── GET NEXT CODE ────────────────────────────────────────────
// GET /api/masters/zone/next-code
async function getNextCode(req, res) {
    try {
        const nextCode = await peekNextCode();
        return res.status(200).json({ success: true, nextCode });
    } catch (err) {
        console.error('Zone getNextCode error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

module.exports = { create, getAll, update, remove, getNextCode };

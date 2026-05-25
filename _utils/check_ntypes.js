require('dotenv').config();
const { Pool } = require('pg');
const pool = new Pool({ connectionString: process.env.DATABASE_URL, ssl: { rejectUnauthorized: false } });

async function run() {
    // What n_type values exist in Tbl_User_Info
    const users = await pool.query(`
        SELECT "n_type", COUNT(*) as count
        FROM "Tbl_User_Info"
        GROUP BY "n_type"
        ORDER BY "n_type"
    `);
    console.log('\n📋 n_type distribution in Tbl_User_Info:');
    users.rows.forEach(r => console.log(`  n_type = ${r.n_type}  →  ${r.count} user(s)`));

    // What n_type values exist in Tbl_User_Access (the lookup/label table)
    const access = await pool.query(`
        SELECT "N_Type", "C_Name" FROM "Tbl_User_Access" ORDER BY "N_Type"
    `);
    console.log('\n📋 Tbl_User_Access (type definitions):');
    if (access.rows.length === 0) {
        console.log('  (empty — no type definitions found)');
    } else {
        access.rows.forEach(r => console.log(`  N_Type = ${r.N_Type}  →  "${r.C_Name}"`));
    }

    pool.end();
}

run().catch(e => { console.error(e.message); pool.end(); });

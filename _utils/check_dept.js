require('dotenv').config();
const { Pool } = require('pg');
const pool = new Pool({ connectionString: process.env.DATABASE_URL, ssl: { rejectUnauthorized: false } });

async function run() {
    // 1. Exact columns in tbl_department_mst
    const cols = await pool.query(`
        SELECT column_name, data_type, character_maximum_length, is_nullable
        FROM information_schema.columns
        WHERE table_name = 'tbl_department_mst'
        ORDER BY ordinal_position
    `);
    console.log('\n📋 tbl_department_mst columns:');
    cols.rows.forEach(c => console.log(`  ${c.column_name}  ${c.data_type}(${c.character_maximum_length})  nullable:${c.is_nullable}`));

    // 2. Sample existing data
    const data = await pool.query(`SELECT * FROM "tbl_department_mst" LIMIT 5`);
    console.log('\n📋 Existing rows:', data.rows);

    // 3. Check Tbl_FS_Mst for incharge lookup
    const fs = await pool.query(`
        SELECT column_name, data_type, character_maximum_length
        FROM information_schema.columns
        WHERE table_name = 'Tbl_FS_Mst'
        ORDER BY ordinal_position
        LIMIT 10
    `);
    console.log('\n📋 Tbl_FS_Mst columns (first 10):');
    fs.rows.forEach(c => console.log(`  ${c.column_name}  ${c.data_type}(${c.character_maximum_length})`));

    pool.end();
}
run().catch(e => { console.error(e.message); pool.end(); });

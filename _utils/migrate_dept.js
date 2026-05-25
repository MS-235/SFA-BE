require('dotenv').config();
const { Pool } = require('pg');
const pool = new Pool({ connectionString: process.env.DATABASE_URL, ssl: { rejectUnauthorized: false } });

async function run() {
    console.log('Adding missing columns to tbl_department_mst...');

    // Add travel_desk_location column
    await pool.query(`
        ALTER TABLE "tbl_department_mst"
        ADD COLUMN IF NOT EXISTS "C_travel_desk_location" VARCHAR(50) NULL
    `);
    console.log('✅ C_travel_desk_location added');

    // Add material_desk_location column
    await pool.query(`
        ALTER TABLE "tbl_department_mst"
        ADD COLUMN IF NOT EXISTS "C_material_desk_location" VARCHAR(50) NULL
    `);
    console.log('✅ C_material_desk_location added');

    // Add material_desk_incharge column (separate from empcode for future use)
    await pool.query(`
        ALTER TABLE "tbl_department_mst"
        ADD COLUMN IF NOT EXISTS "C_material_desk_incharge" VARCHAR(10) NULL
    `);
    console.log('✅ C_material_desk_incharge added');

    console.log('\n✅ Migration complete.');
    pool.end();
}

run().catch(e => { console.error('❌ Migration failed:', e.message); pool.end(); });

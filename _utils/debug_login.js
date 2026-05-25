require('dotenv').config();
const { Pool } = require('pg');
const pool = new Pool({ connectionString: process.env.DATABASE_URL, ssl: { rejectUnauthorized: false } });

async function run() {
    // 1. Check columns in Tbl_User_Info
    const cols = await pool.query(`
        SELECT column_name, data_type 
        FROM information_schema.columns 
        WHERE table_name = 'Tbl_User_Info'
        ORDER BY ordinal_position
    `);
    console.log('\n📋 Tbl_User_Info columns:');
    cols.rows.forEach(c => console.log(`  ${c.column_name}  (${c.data_type})`));

    // 2. Check columns in Tbl_Device_Login_Token_Details
    const cols2 = await pool.query(`
        SELECT column_name, data_type 
        FROM information_schema.columns 
        WHERE table_name = 'Tbl_Device_Login_Token_Details'
        ORDER BY ordinal_position
    `);
    console.log('\n📋 Tbl_Device_Login_Token_Details columns:');
    cols2.rows.forEach(c => console.log(`  ${c.column_name}  (${c.data_type})`));

    // 3. Try the exact login query
    try {
        const r = await pool.query(`
            SELECT "C_Code", "C_UserID", "C_Password", "N_Lock", "n_type", "n_attempts", "C_Name"
            FROM "Tbl_User_Info"
            WHERE "C_UserID" = $1
            LIMIT 1
        `, ['admin1']);
        console.log('\n✅ Login query works. Rows found:', r.rows.length);
    } catch(e) {
        console.error('\n❌ Login query failed:', e.message);
    }

    pool.end();
}

run().catch(e => { console.error(e.message); pool.end(); });

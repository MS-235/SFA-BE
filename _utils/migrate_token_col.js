require('dotenv').config();
const { Pool } = require('pg');
const pool = new Pool({ connectionString: process.env.DATABASE_URL, ssl: { rejectUnauthorized: false } });

async function run() {
    console.log('Altering column sizes in Tbl_Device_Login_Token_Details...');

    // c_token_id: store full JWT refresh token (up to 512 chars)
    await pool.query(`ALTER TABLE "Tbl_Device_Login_Token_Details" ALTER COLUMN "c_token_id" TYPE VARCHAR(512)`);
    console.log('✅ c_token_id → VARCHAR(512)');

    // c_user_id: match Tbl_User_Info.C_UserID which is VARCHAR(20) — already fine
    // c_emp_code: match Tbl_User_Info.C_Code which is VARCHAR(10) — already fine

    console.log('✅ Migration complete. You can now start the server.');
    pool.end();
}

run().catch(e => { console.error('❌ Migration failed:', e.message); pool.end(); });

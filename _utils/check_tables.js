require('dotenv').config();
const { Pool } = require('pg');
const pool = new Pool({ connectionString: process.env.DATABASE_URL, ssl: { rejectUnauthorized: false } });

pool.query(`
    SELECT table_name 
    FROM information_schema.tables 
    WHERE table_schema = 'public' 
    AND table_name IN ('Tbl_User_Info','Tbl_Device_Login_Token_Details')
    ORDER BY table_name
`).then(r => {
    console.log('Tables found in Neon DB:', r.rows.map(x => x.table_name));
    if (r.rows.length < 2) {
        console.log('❌ Missing tables! You need to run the schema migration first.');
    } else {
        console.log('✅ Both tables exist.');
    }
    pool.end();
}).catch(e => {
    console.error('Error:', e.message);
    pool.end();
});

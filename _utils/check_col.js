require('dotenv').config();
const { Pool } = require('pg');
const pool = new Pool({ connectionString: process.env.DATABASE_URL, ssl: { rejectUnauthorized: false } });

pool.query(`
    SELECT column_name, character_maximum_length, data_type
    FROM information_schema.columns 
    WHERE table_name = 'Tbl_Device_Login_Token_Details'
    AND column_name IN ('c_token_id', 'c_user_id', 'c_emp_code', 'c_company_id')
`).then(r => {
    console.log('Column sizes:');
    r.rows.forEach(c => console.log(`  ${c.column_name}: ${c.data_type}(${c.character_maximum_length})`));
    pool.end();
}).catch(e => { console.error(e.message); pool.end(); });

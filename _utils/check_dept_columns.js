require('dotenv').config({ path: require('path').join(__dirname, '../.env') });
const { Pool } = require('pg');

const pool = new Pool({
    connectionString: process.env.DATABASE_URL,
    ssl: { rejectUnauthorized: false }
});

pool.query(`
    SELECT column_name, data_type, character_maximum_length, is_nullable, column_default
    FROM information_schema.columns
    WHERE table_name = 'tbl_department_mst'
    ORDER BY ordinal_position
`).then(result => {
    console.log('\n📋 LIVE DB — tbl_department_mst columns:\n');
    console.log(result.rows.map((r, i) =>
        `${String(i+1).padStart(2)}. ${r.column_name.padEnd(35)} ${(r.data_type + (r.character_maximum_length ? `(${r.character_maximum_length})` : '')).padEnd(25)} nullable:${r.is_nullable.padEnd(5)} default:${r.column_default || 'none'}`
    ).join('\n'));
    pool.end();
}).catch(err => {
    console.error('Error:', err.message);
    pool.end();
});

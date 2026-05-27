require('dotenv').config({ path: require('path').join(__dirname, '../.env') });
const { Pool } = require('pg');

const pool = new Pool({
    connectionString: process.env.DATABASE_URL,
    ssl: { rejectUnauthorized: false }
});

async function run() {
    // Create a simple sequence tracker table
    await pool.query(`
        CREATE TABLE IF NOT EXISTS "tbl_code_sequence" (
            "prefix"    VARCHAR(20) PRIMARY KEY,
            "last_seq"  INTEGER     NOT NULL DEFAULT 0
        )
    `);

    // Seed current max values from existing live data
    // Designation: DES prefix, 3-digit pad
    const desig = await pool.query(`
        SELECT COALESCE(MAX(CAST(SUBSTRING("c_code" FROM 4) AS INTEGER)), 0) AS max_seq
        FROM "tbl_desig_mst"
        WHERE "c_code" ~ '^DES[0-9]+$'
    `);
    await pool.query(`
        INSERT INTO "tbl_code_sequence" ("prefix", "last_seq")
        VALUES ('DES', $1)
        ON CONFLICT ("prefix") DO UPDATE SET "last_seq" = GREATEST("tbl_code_sequence"."last_seq", $1)
    `, [desig.rows[0].max_seq]);

    // Department: DP prefix, 4-digit pad
    const dept = await pool.query(`
        SELECT COALESCE(MAX(CAST(SUBSTRING("C_Code" FROM 3) AS INTEGER)), 0) AS max_seq
        FROM "tbl_department_mst"
        WHERE "C_Code" ~ '^DP[0-9]+$'
    `);
    await pool.query(`
        INSERT INTO "tbl_code_sequence" ("prefix", "last_seq")
        VALUES ('DP', $1)
        ON CONFLICT ("prefix") DO UPDATE SET "last_seq" = GREATEST("tbl_code_sequence"."last_seq", $1)
    `, [dept.rows[0].max_seq]);

    const result = await pool.query(`SELECT * FROM "tbl_code_sequence"`);
    console.log('✅ tbl_code_sequence ready:');
    console.table(result.rows);
    pool.end();
}

run().catch(err => { console.error(err.message); pool.end(); });

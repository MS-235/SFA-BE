const { Client } = require('pg');
const fs = require('fs');

async function checkSchema() {
    const connectionString = "postgresql://neondb_owner:npg_ZJ7hlw9BycUj@ep-square-boat-apt8qya2-pooler.c-7.us-east-1.aws.neon.tech/neondb?sslmode=require";
    const client = new Client({
        connectionString,
    });

    try {
        await client.connect();
        
        // Count tables
        const countRes = await client.query("SELECT count(*) FROM information_schema.tables WHERE table_schema = 'public'");
        const tableCount = countRes.rows[0].count;
        
        console.log(`Total Tables: ${tableCount}`);
        
        // If there are tables, list them and maybe some column stats
        if (tableCount > 0) {
            const tableRes = await client.query(`
                SELECT table_name 
                FROM information_schema.tables 
                WHERE table_schema = 'public' 
                ORDER BY table_name
            `);
            
            const tables = tableRes.rows.map(row => row.table_name);
            fs.writeFileSync('d:/sfa/schema_tables_list.txt', tables.join('\n'));
            console.log(`Saved the list of tables to d:/sfa/schema_tables_list.txt`);
        }
        
    } catch (err) {
        console.error("Error connecting to database:", err.message);
    } finally {
        await client.end();
    }
}

checkSchema();

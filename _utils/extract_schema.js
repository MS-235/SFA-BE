const { Client } = require('pg');
const fs = require('fs');

async function extractSchema() {
    const connectionString = "postgresql://neondb_owner:npg_ZJ7hlw9BycUj@ep-square-boat-apt8qya2-pooler.c-7.us-east-1.aws.neon.tech/neondb?sslmode=require";
    const client = new Client({ connectionString });

    try {
        await client.connect();
        
        console.log("Fetching live schema structure...");
        // Get all tables and columns from information_schema
        const query = `
            SELECT 
                c.table_name,
                c.column_name,
                c.data_type,
                c.character_maximum_length,
                c.column_default,
                c.is_nullable
            FROM 
                information_schema.columns c
            JOIN 
                information_schema.tables t ON c.table_name = t.table_name
            WHERE 
                t.table_schema = 'public' 
                AND c.table_schema = 'public'
            ORDER BY 
                c.table_name, c.ordinal_position;
        `;
        
        const res = await client.query(query);
        
        // Group columns by table
        const tables = {};
        for (const row of res.rows) {
            if (!tables[row.table_name]) {
                tables[row.table_name] = [];
            }
            tables[row.table_name].push(row);
        }
        
        let schemaOutput = "-- PostgreSQL Schema Extracted from Live NeonDB\n";
        schemaOutput += "-- This shows exactly what is currently running in the database\n\n";
        
        for (const [tableName, columns] of Object.entries(tables)) {
            schemaOutput += `CREATE TABLE "${tableName}" (\n`;
            
            const colDefs = columns.map(col => {
                let def = `    "${col.column_name}" ${col.data_type}`;
                
                // Add length for varchar/char if applicable
                if (col.character_maximum_length && ['character varying', 'character'].includes(col.data_type)) {
                    def += `(${col.character_maximum_length})`;
                }
                
                if (col.is_nullable === 'NO') {
                    def += ` NOT NULL`;
                }
                
                if (col.column_default !== null) {
                    def += ` DEFAULT ${col.column_default}`;
                }
                
                return def;
            });
            
            schemaOutput += colDefs.join(",\n");
            schemaOutput += "\n);\n\n";
        }
        
        const outputPath = 'd:/sfa/live_neon_schema.sql';
        fs.writeFileSync(outputPath, schemaOutput);
        console.log(`Successfully extracted ${Object.keys(tables).length} tables into ${outputPath}`);
        
    } catch (err) {
        console.error("Error connecting or querying:", err.message);
    } finally {
        await client.end();
    }
}

extractSchema();

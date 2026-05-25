const fs = require('fs');

function extractOriginalTables(filePath) {
    const content = fs.readFileSync(filePath, 'utf8');
    const lines = content.split('\n');
    const tables = {};
    let currentTable = null;
    
    for (let i = 0; i < lines.length; i++) {
        let line = lines[i].trim();
        if (line.toUpperCase().startsWith('CREATE TABLE')) {
            const match = line.match(/CREATE TABLE \[.*?\]\.\[(.*?)\]/i);
            if (match) {
                currentTable = match[1];
                tables[currentTable] = [];
            }
        } else if (currentTable) {
            if (line.startsWith('CONSTRAINT') || line.startsWith(')') || line.toUpperCase().startsWith('PRIMARY KEY') || line.toUpperCase().startsWith('UNIQUE')) {
                currentTable = null;
            } else if (line.startsWith('[')) {
                // column definition
                const colMatch = line.match(/^\[(.*?)\]/);
                if (colMatch) {
                    tables[currentTable].push(colMatch[1]);
                }
            }
        }
    }
    return tables;
}

function extractNeonTables(filePath) {
    const content = fs.readFileSync(filePath, 'utf8');
    const lines = content.split('\n');
    const tables = {};
    let currentTable = null;
    
    for (let i = 0; i < lines.length; i++) {
        let line = lines[i].trim();
        if (line.toUpperCase().startsWith('CREATE TABLE')) {
            const match = line.match(/CREATE TABLE "(.*?)"/i);
            if (match) {
                currentTable = match[1];
                tables[currentTable] = [];
            }
        } else if (currentTable) {
            if (line.startsWith(')')) {
                currentTable = null;
            } else if (line.startsWith('"')) {
                const colMatch = line.match(/^"(.*?)"/);
                if (colMatch) {
                    tables[currentTable].push(colMatch[1]);
                }
            }
        }
    }
    return tables;
}

const origTables = extractOriginalTables('d:/sfa/sfaschema_utf8.sql');
const neonTables = extractNeonTables('d:/sfa/live_neon_schema.sql');

let matchCount = 0;
let mismatchCount = 0;
let missingTables = 0;

for (const tableName in origTables) {
    // Postgres makes unquoted table names lowercase sometimes, but we quoted them so they should match exactly
    if (!neonTables[tableName]) {
        console.log(`Missing table in Postgres: ${tableName}`);
        missingTables++;
        continue;
    }
    
    const origCols = origTables[tableName];
    const neonCols = neonTables[tableName];
    
    // Check if column counts match
    if (origCols.length !== neonCols.length) {
        console.log(`Mismatch in table ${tableName}: Orig has ${origCols.length}, Neon has ${neonCols.length} columns`);
        mismatchCount++;
    } else {
        // We could also check column names here, but verifying length is a solid start
        let colsMatch = true;
        for (let i = 0; i < origCols.length; i++) {
            if (origCols[i] !== neonCols[i]) {
                console.log(`Column mismatch in ${tableName}: Orig '${origCols[i]}' != Neon '${neonCols[i]}'`);
                colsMatch = false;
            }
        }
        if (colsMatch) {
            matchCount++;
        } else {
            mismatchCount++;
        }
    }
}

console.log(`\n================ Comparison Results ================`);
console.log(`Total Original Tables: ${Object.keys(origTables).length}`);
console.log(`Total Postgres Tables: ${Object.keys(neonTables).length}`);
console.log(`Perfect Matches (Table Name, Column Count & Column Names): ${matchCount}`);
console.log(`Mismatches: ${mismatchCount}`);
console.log(`Missing Tables: ${missingTables}`);
console.log(`====================================================`);

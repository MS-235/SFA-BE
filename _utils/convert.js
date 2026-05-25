const fs = require('fs');
const readline = require('readline');

async function processFile() {
    const fileStream = fs.createReadStream('d:/sfa/sfaschema_utf8.sql', { encoding: 'utf8' });
    const outStream = fs.createWriteStream('d:/sfa/sfaschema_postgres.sql', { encoding: 'utf8' });

    const rl = readline.createInterface({
        input: fileStream,
        crlfDelay: Infinity
    });

    for await (let line of rl) {
        // Replace GO with semicolon
        if (line.trim().toUpperCase() === 'GO') {
            outStream.write(';\n');
            continue;
        }

        // Remove USE [Database]
        if (line.trim().toUpperCase().startsWith('USE ')) continue;

        // Remove SET statements
        if (line.trim().toUpperCase().startsWith('SET ')) continue;

        // Remove SQL Server extended properties (like MS_Description)
        if (line.trim().toUpperCase().startsWith('EXEC SYS.SP_ADDEXTENDEDPROPERTY') || 
            line.trim().toUpperCase().startsWith('EXEC SP_ADDEXTENDEDPROPERTY')) {
            continue;
        }

        // Remove ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
        line = line.replace(/ON \[PRIMARY\] TEXTIMAGE_ON \[PRIMARY\]/gi, '');
        
        // Remove ON [PRIMARY]
        line = line.replace(/ON \[PRIMARY\]/gi, '');

        // Remove Clustered constraints parts
        line = line.replace(/WITH\s*\([\s\S]*?\)/gi, '');
        line = line.replace(/NONCLUSTERED/gi, '');
        line = line.replace(/CLUSTERED/gi, '');
        line = line.replace(/\bASC\b/gi, '');
        line = line.replace(/\bDESC\b/gi, '');
        
        // Remove NOT FOR REPLICATION
        line = line.replace(/NOT FOR REPLICATION/gi, '');

        // Replace type + IDENTITY(1,1) with SERIAL
        line = line.replace(/\[[a-zA-Z]+\](?:\s*\(\d+(?:,\s*\d+)?\))?\s*IDENTITY\(\d+,\s*\d+\)/gi, 'SERIAL');
        line = line.replace(/IDENTITY\(\d+,\s*\d+\)/gi, 'SERIAL');
        
        // Replace something like "numeric(9, 0) SERIAL" -> "SERIAL"
        line = line.replace(/numeric\(\d+,\s*\d+\)\s*SERIAL/gi, 'SERIAL');
        line = line.replace(/integer\s*SERIAL/gi, 'SERIAL');
        line = line.replace(/bigint\s*SERIAL/gi, 'BIGSERIAL');
        line = line.replace(/smallint\s*SERIAL/gi, 'SMALLSERIAL');

        // Replace [dbo]. with nothing
        line = line.replace(/\[dbo\]\./gi, '');

        // Data type replacements
        line = line.replace(/\[nvarchar\]\s*\(\s*max\s*\)/gi, 'text');
        line = line.replace(/\[varchar\]\s*\(\s*max\s*\)/gi, 'text');
        line = line.replace(/\[nvarchar\]/gi, 'varchar');
        line = line.replace(/\[datetime\]/gi, 'timestamp');
        line = line.replace(/\[smalldatetime\]/gi, 'timestamp');
        line = line.replace(/\[tinyint\]/gi, 'smallint');
        line = line.replace(/\[int\]/gi, 'integer');
        line = line.replace(/\[bigint\]/gi, 'bigint');
        line = line.replace(/\[float\]/gi, 'double precision');
        line = line.replace(/\[numeric\]/gi, 'numeric');
        line = line.replace(/\[decimal\]/gi, 'numeric');
        line = line.replace(/\[char\]/gi, 'char');
        line = line.replace(/\[varchar\]/gi, 'varchar');
        line = line.replace(/\[smallint\]/gi, 'smallint');
        line = line.replace(/\[bit\]/gi, 'boolean');
        line = line.replace(/\[text\]/gi, 'text');
        line = line.replace(/\[ntext\]/gi, 'text');
        line = line.replace(/\[image\]/gi, 'bytea');
        line = line.replace(/\[varbinary\](?:\s*\([^)]+\))?/gi, 'bytea');
        line = line.replace(/\[binary\](?:\s*\([^)]+\))?/gi, 'bytea');
        line = line.replace(/\[uniqueidentifier\]/gi, 'uuid');
        line = line.replace(/\[money\]/gi, 'numeric(19,4)');
        line = line.replace(/\[sysname\]/gi, 'varchar(128)');
        line = line.replace(/\[nchar\]/gi, 'char');
        
        // Fix up if quotes were already applied in a previous run (in case we're processing a file that already had quotes)
        line = line.replace(/"sysname"/gi, 'varchar(128)');
        line = line.replace(/"nchar"/gi, 'char');        
        // Postgres double precision precision/scale fix
        line = line.replace(/double precision\s*\(\s*\d+\s*\)/gi, 'double precision');



        // Replace brackets around identifiers: [Name] -> "Name"
        line = line.replace(/\[(.*?)\]/g, '"$1"');

        // Fix ALTER TABLE DEFAULT constraints (now that brackets are converted to quotes)
        // This regex handles both named and unnamed default constraints
        line = line.replace(/ALTER TABLE\s+("[^"]+")\s+ADD\s+(?:CONSTRAINT\s+"[^"]+"\s+)?DEFAULT\s+(.*?)\s+FOR\s+("[^"]+")/gi, 'ALTER TABLE $1 ALTER COLUMN $3 SET DEFAULT $2');
        
        // Fix SQL Server boolean/integer default formats ((0)), ((1)), (0), (1) which fail Postgres strict type checks on boolean columns.
        // Postgres accepts string literals '0' and '1' for both boolean and integer columns.
        line = line.replace(/SET DEFAULT \(\(0\)\)/gi, "SET DEFAULT '0'");
        line = line.replace(/SET DEFAULT \(\(1\)\)/gi, "SET DEFAULT '1'");
        line = line.replace(/SET DEFAULT \(0\)/gi, "SET DEFAULT '0'");
        line = line.replace(/SET DEFAULT \(1\)/gi, "SET DEFAULT '1'");
        
        // Convert SQL Server getdate() to Postgres CURRENT_TIMESTAMP
        line = line.replace(/\bgetdate\(\)/gi, 'CURRENT_TIMESTAMP');

        // Fix SQL Server CONVERT for dates (e.g. CONVERT(varchar(10),CURRENT_TIMESTAMP,(103)))
        line = line.replace(/CONVERT\(varchar\(\d+\),\s*CURRENT_TIMESTAMP\s*,\s*\(\d+\)\)/gi, "to_char(CURRENT_TIMESTAMP, 'DD/MM/YYYY')");

        // Fix Foreign Key syntax (remove WITH CHECK / WITH NOCHECK)
        line = line.replace(/WITH CHECK ADD/gi, 'ADD');
        line = line.replace(/WITH NOCHECK ADD/gi, 'ADD');
        
        // Remove ALTER TABLE ... CHECK CONSTRAINT ... (Postgres does not have this command for enabling/disabling constraints)
        if (line.trim().toUpperCase().startsWith('ALTER TABLE') && line.toUpperCase().includes('CHECK CONSTRAINT')) {
            continue;
        }
        
        // Wait, if an EXEC sp_... spanned multiple lines, we might miss it. But in the user's snippet, it's on one line.
        // E.g. EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'...'
        
        outStream.write(line + '\n');
    }
    outStream.end();
    console.log('Conversion complete. Check d:/sfa/sfaschema_postgres.sql');
}

processFile().catch(console.error);

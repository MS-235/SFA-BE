const {
    Document, Packer, Paragraph, Table, TableRow, TableCell,
    TextRun, HeadingLevel, AlignmentType, WidthType, BorderStyle,
    ShadingType, convertInchesToTwip, TableLayoutType
} = require('docx');
const fs = require('fs');
const path = require('path');

// ── Helpers ──────────────────────────────────────────────────

function heading1(text) {
    return new Paragraph({
        text,
        heading: HeadingLevel.HEADING_1,
        spacing: { before: 400, after: 200 },
    });
}

function heading2(text) {
    return new Paragraph({
        text,
        heading: HeadingLevel.HEADING_2,
        spacing: { before: 300, after: 150 },
    });
}

function heading3(text) {
    return new Paragraph({
        text,
        heading: HeadingLevel.HEADING_3,
        spacing: { before: 200, after: 100 },
    });
}

function para(text, bold = false) {
    return new Paragraph({
        children: [new TextRun({ text, bold, size: 22 })],
        spacing: { before: 80, after: 80 },
    });
}

function bullet(text) {
    return new Paragraph({
        children: [new TextRun({ text, size: 22 })],
        bullet: { level: 0 },
        spacing: { before: 60, after: 60 },
    });
}

const HEADER_SHADE = { type: ShadingType.SOLID, color: '1F3864', fill: '1F3864' };
const ALT_SHADE    = { type: ShadingType.SOLID, color: 'DCE6F1', fill: 'DCE6F1' };

function headerCell(text) {
    return new TableCell({
        shading: HEADER_SHADE,
        children: [new Paragraph({
            children: [new TextRun({ text, bold: true, color: 'FFFFFF', size: 20 })],
            alignment: AlignmentType.CENTER,
        })],
    });
}

function dataCell(text, shade = false) {
    return new TableCell({
        shading: shade ? ALT_SHADE : undefined,
        children: [new Paragraph({
            children: [new TextRun({ text: String(text ?? ''), size: 20 })],
        })],
    });
}

function codeCell(text, shade = false) {
    return new TableCell({
        shading: shade ? ALT_SHADE : undefined,
        children: [new Paragraph({
            children: [new TextRun({ text: String(text ?? ''), font: 'Courier New', size: 18 })],
        })],
    });
}

function makeTable(headers, rows, widths) {
    return new Table({
        layout: TableLayoutType.FIXED,
        width: { size: 100, type: WidthType.PERCENTAGE },
        rows: [
            new TableRow({
                tableHeader: true,
                children: headers.map((h, i) =>
                    new TableCell({
                        shading: HEADER_SHADE,
                        width: widths ? { size: widths[i], type: WidthType.PERCENTAGE } : undefined,
                        children: [new Paragraph({
                            children: [new TextRun({ text: h, bold: true, color: 'FFFFFF', size: 20 })],
                            alignment: AlignmentType.CENTER,
                        })],
                    })
                ),
            }),
            ...rows.map((row, ri) =>
                new TableRow({
                    children: row.map((cell, ci) =>
                        new TableCell({
                            shading: ri % 2 !== 0 ? ALT_SHADE : undefined,
                            width: widths ? { size: widths[ci], type: WidthType.PERCENTAGE } : undefined,
                            children: [new Paragraph({
                                children: [new TextRun({
                                    text: String(cell ?? ''),
                                    font: ci === 0 ? 'Courier New' : undefined,
                                    size: 20,
                                })],
                            })],
                        })
                    ),
                })
            ),
        ],
    });
}

function sqlBlock(sql) {
    const lines = sql.trim().split('\n');
    return lines.map(line =>
        new Paragraph({
            children: [new TextRun({ text: line, font: 'Courier New', size: 18, color: '1F3864' })],
            spacing: { before: 0, after: 0 },
            shading: { type: ShadingType.SOLID, color: 'F2F2F2', fill: 'F2F2F2' },
            indent: { left: convertInchesToTwip(0.2) },
        })
    );
}

function spacer() {
    return new Paragraph({ text: '', spacing: { before: 100, after: 100 } });
}

// ── DESIGNATION MASTER ───────────────────────────────────────

const desigTableRows = [
    ['c_code',     'VARCHAR(50)',  'PK',  'No',  'Auto-generated code: DES001, DES002…'],
    ['c_name',     'VARCHAR(50)',  '',    'No',  'Full name of the designation'],
    ['c_sh_name',  'VARCHAR(50)',  '',    'Yes', 'Short / abbreviated name'],
    ['n_deleted',  'SMALLINT',     '',    'No',  '0 = Active, 1 = Deleted (legacy column — hard delete now in use)'],
    ['d_created',  'TIMESTAMP',    '',    'No',  'Record creation timestamp'],
    ['d_modified', 'TIMESTAMP',    '',    'Yes', 'Last update timestamp'],
    ['c_modifier', 'VARCHAR(50)',  '',    'Yes', 'User ID of last modifier'],
];

const desigEndpoints = [
    ['GET',    '/api/masters/designation/next-code',  'Returns the next auto-generated code (e.g. DES004)'],
    ['POST',   '/api/masters/designation',            'Create a new designation'],
    ['GET',    '/api/masters/designation',            'Search / list designations (paginated)'],
    ['PUT',    '/api/masters/designation/:code',      'Update an existing designation by code'],
    ['DELETE', '/api/masters/designation/:code',      'Permanently delete a designation by code'],
];

// ── DEPARTMENT MASTER ────────────────────────────────────────

const deptTableRows = [
    ['C_Code',                    'VARCHAR(10)',  'PK',  'No',  'Auto-generated code: DP0001, DP0002…'],
    ['c_name',                    'VARCHAR(50)',  '',    'No',  'Full name of the department'],
    ['c_short_name',              'VARCHAR(10)',  '',    'Yes', 'Short / abbreviated name'],
    ['C_travel_desk_location',    'VARCHAR(50)',  '',    'Yes', 'Travel desk location (HYDERABAD / MUMBAI)'],
    ['C_travel_desk_incharge',    'VARCHAR(10)',  'FK',  'Yes', 'FK → Tbl_FS_Mst.C_Code — travel desk incharge'],
    ['C_material_desk_location',  'VARCHAR(50)',  '',    'Yes', 'Material desk location (HYDERABAD / MUMBAI)'],
    ['C_material_desk_incharge',  'VARCHAR(10)',  'FK',  'Yes', 'FK → Tbl_FS_Mst.C_Code — material desk incharge'],
    ['C_material_desk_empcode',   'VARCHAR(10)',  '',    'Yes', 'Original material desk employee code column'],
    ['N_SFA_ROLE',                'INTEGER',      '',    'Yes', '0 = No SFA Role, 1 = Has SFA Role'],
    ['N_deleted',                 'SMALLINT',     '',    'No',  '0 = Active, 1 = Deleted (legacy column — hard delete now in use, default 0)'],
    ['D_created',                 'TIMESTAMP',    '',    'No',  'Record creation timestamp (default NOW())'],
    ['D_modified',                'TIMESTAMP',    '',    'Yes', 'Last update timestamp'],
    ['C_modifier',                'VARCHAR(50)',  '',    'Yes', 'User ID of last modifier'],
    ['C_Gadget_code',             'VARCHAR(50)',  '',    'Yes', 'Gadget / device code'],
];

const deptEndpoints = [
    ['GET',    '/api/masters/department/locations',  'Returns fixed list of valid desk locations'],
    ['GET',    '/api/masters/department/next-code',  'Returns the next auto-generated code (e.g. DP0003)'],
    ['POST',   '/api/masters/department',            'Create a new department'],
    ['GET',    '/api/masters/department',            'Search / list departments (paginated)'],
    ['PUT',    '/api/masters/department/:code',      'Update an existing department by code'],
    ['DELETE', '/api/masters/department/:code',      'Permanently delete a department by code'],
];

// ── SQL QUERIES ──────────────────────────────────────────────

const queries = {
    desig: [
        {
            label: '1. Preview Next Code (no increment)',
            endpoint: 'GET /api/masters/designation/next-code',
            sql: `SELECT last_value, is_called
FROM tbl_desig_mst_n_seq_seq`,
            params: [],
            explanation: `Reads the current state of the SERIAL sequence directly without consuming it. If is_called = true, the next code = last_value + 1. If is_called = false (sequence never used), next code = last_value. This is a safe peek — calling this endpoint 100 times will always return the same value and never skip a number.`,
        },
        {
            label: '2. Duplicate Name Check (Create)',
            endpoint: 'POST /api/masters/designation',
            sql: `SELECT "c_code" FROM "tbl_desig_mst"
WHERE LOWER("c_name") = LOWER($1)`,
            params: ['$1 → c_name (req.body) — the designation name to check for duplicates'],
            explanation: `Before inserting, checks whether a designation with the same name already exists. LOWER() on both sides makes the comparison case-insensitive. No n_deleted filter — since hard delete is in use, every row in the table is active.`,
        },
        {
            label: '3. Insert New Designation',
            endpoint: 'POST /api/masters/designation',
            sql: `-- Step 1: Insert with TEMP code, let n_seq auto-increment, get it back
INSERT INTO "tbl_desig_mst"
  ("c_code", "c_name", "c_sh_name", "d_created", "c_modifier")
VALUES ('TEMP', $1, $2, NOW(), $3)
RETURNING "n_seq"

-- Step 2: Derive real code from n_seq and update the row
UPDATE "tbl_desig_mst"
SET "c_code" = $1
WHERE "n_seq" = $2`,
            params: [
                'INSERT → $1: c_name (req.body), $2: c_sh_name (req.body), $3: req.admin.c_user_id',
                'UPDATE → $1: derived c_code (e.g. DES008 from n_seq=8), $2: n_seq returned from INSERT',
            ],
            explanation: `Uses a two-step approach to avoid double-incrementing the sequence. Step 1 inserts with a TEMP placeholder for c_code — PostgreSQL auto-assigns n_seq (SERIAL) exactly once. RETURNING n_seq captures that value. Step 2 derives the real code (e.g. n_seq=8 → DES008) and updates the row. This guarantees exactly one sequence increment per record created — no gaps.`,
        },
        {
            label: '4. Search / List (Paginated)',
            endpoint: 'GET /api/masters/designation',
            sql: `SELECT "c_code", "c_name", "c_sh_name", "d_created", "d_modified",
       COUNT(*) OVER() AS total_count
FROM "tbl_desig_mst"
WHERE 1=1
  AND LOWER("c_name") LIKE LOWER($1)   -- if search param provided
  AND LOWER("c_code") LIKE LOWER($2)   -- if code param provided
ORDER BY "c_code"
LIMIT $3 OFFSET $4`,
            params: [
                '$1 → %search% — name filter from query param ?search= or ?name= (wrapped in % for partial match)',
                '$2 → %code% — code filter from query param ?code= (wrapped in % for partial match)',
                '$3 → limit — number of records per page (default 10)',
                '$4 → offset — (page - 1) * limit',
            ],
            explanation: `Retrieves all designations with optional name/code filters. LIKE with % wildcards enables partial matching; the search term is wrapped in % automatically unless the caller uses * as a wildcard. COUNT(*) OVER() is a window function that returns the total matching row count in the same query pass — avoiding a separate COUNT query. LIMIT/OFFSET implement pagination.`,
        },
        {
            label: '5. Exists Check (Update / Delete)',
            endpoint: 'PUT or DELETE /api/masters/designation/:code',
            sql: `SELECT "c_code" FROM "tbl_desig_mst"
WHERE "c_code" = $1`,
            params: ['$1 → req.params.code.toUpperCase() — designation code from the URL path parameter'],
            explanation: `Verifies the designation exists before allowing an update or delete. No n_deleted filter is needed — for update, the record must simply exist; for delete, the row will be physically removed. Returns 404 if not found.`,
        },
        {
            label: '6. Duplicate Name Check (Update)',
            endpoint: 'PUT /api/masters/designation/:code',
            sql: `SELECT "c_code" FROM "tbl_desig_mst"
WHERE LOWER("c_name") = LOWER($1)
  AND "c_code" != $2`,
            params: [
                '$1 → c_name (req.body) — the new name being set',
                '$2 → req.params.code.toUpperCase() — current record\'s code (excluded from clash check)',
            ],
            explanation: `Checks for a name clash with any other designation, excluding the record being updated. No n_deleted filter — hard delete means every row in the table is active.`,
        },
        {
            label: '7. Update Designation',
            endpoint: 'PUT /api/masters/designation/:code',
            sql: `UPDATE "tbl_desig_mst"
SET "c_name"     = $1,
    "c_sh_name"  = $2,
    "d_modified" = NOW(),
    "c_modifier" = $3
WHERE "c_code" = $4`,
            params: [
                '$1 → c_name (req.body) — updated designation name',
                '$2 → c_sh_name (req.body) — updated short name (nullable)',
                '$3 → req.admin.c_user_id — logged-in admin user ID',
                '$4 → req.params.code.toUpperCase() — designation code to update',
            ],
            explanation: `Updates the name and short name of the designation. d_modified is refreshed to NOW() and c_modifier is set to the current admin's user ID for a full audit trail. The primary key c_code in the WHERE clause ensures only the targeted row is updated.`,
        },
        {
            label: '8. Hard Delete',
            endpoint: 'DELETE /api/masters/designation/:code',
            sql: `SELECT "c_code" FROM "tbl_desig_mst"
WHERE "c_code" = $1

DELETE FROM "tbl_desig_mst"
WHERE "c_code" = $1`,
            params: [
                '$1 → req.params.code.toUpperCase() — designation code to permanently delete',
            ],
            explanation: `Permanently removes the designation row from the database. First checks existence (without any n_deleted filter since the row will be gone after deletion). If not found returns 404. On success the row is physically deleted and cannot be recovered — no soft-delete flag is used.`,
        },
    ],

    dept: [
        {
            label: '1. Preview Next Code (no increment)',
            endpoint: 'GET /api/masters/department/next-code',
            sql: `SELECT last_value, is_called
FROM tbl_department_mst_n_seq_seq`,
            params: [],
            explanation: `Reads the current state of the SERIAL sequence directly without consuming it. If is_called = true, the next code = last_value + 1. If is_called = false (sequence never used), next code = last_value. Safe to call any number of times — never skips a number.`,
        },
        {
            label: '2. Duplicate Name Check (Create)',
            endpoint: 'POST /api/masters/department',
            sql: `SELECT "C_Code" FROM "tbl_department_mst"
WHERE LOWER("c_name") = LOWER($1)`,
            params: ['$1 → c_name (req.body) — the department name to check for duplicates'],
            explanation: `Case-insensitive check for an existing department with the same name. No N_deleted filter — hard delete means every row in the table is active.`,
        },
        {
            label: '3. Validate Incharge Code',
            endpoint: 'POST / PUT /api/masters/department',
            sql: `SELECT "C_Code" FROM "Tbl_FS_Mst"
WHERE "C_Code" = $1
LIMIT 1`,
            params: ['$1 → c_travel_desk_incharge or c_material_desk_incharge (req.body) — the incharge employee code to validate (runs once per incharge field if provided)'],
            explanation: `Validates that the provided travel desk or material desk incharge code actually exists in the Field Staff master table (Tbl_FS_Mst). This is a referential integrity check done at the application layer since no hard FK constraint is enforced at the DB level. Runs once for each incharge field if provided.`,
        },
        {
            label: '4. Insert New Department',
            endpoint: 'POST /api/masters/department',
            sql: `-- Step 1: Insert with TEMP code, let n_seq auto-increment, get it back
INSERT INTO "tbl_department_mst"
  ("C_Code", "c_name", "c_short_name",
   "C_travel_desk_location", "C_travel_desk_incharge",
   "C_material_desk_location", "C_material_desk_incharge",
   "N_SFA_ROLE", "D_created", "C_modifier")
VALUES ('TEMP',$1,$2,$3,$4,$5,$6,$7,NOW(),$8)
RETURNING "n_seq"

-- Step 2: Derive real code from n_seq and update the row
UPDATE "tbl_department_mst"
SET "C_Code" = $1
WHERE "n_seq" = $2`,
            params: [
                'INSERT → $1: c_name, $2: c_short_name, $3: c_travel_desk_location (uppercase), $4: c_travel_desk_incharge, $5: c_material_desk_location (uppercase), $6: c_material_desk_incharge, $7: n_sfa_role, $8: req.admin.c_user_id',
                'UPDATE → $1: derived C_Code (e.g. DP0008 from n_seq=8), $2: n_seq returned from INSERT',
            ],
            explanation: `Uses a two-step approach to avoid double-incrementing the sequence. Step 1 inserts with a TEMP placeholder — PostgreSQL auto-assigns n_seq (SERIAL) exactly once. RETURNING n_seq captures that value. Step 2 derives the real code (e.g. n_seq=8 → DP0008) and updates the row. Exactly one sequence increment per record — no gaps.`,
        },
        {
            label: '5. Search / List (Paginated)',
            endpoint: 'GET /api/masters/department',
            sql: `SELECT "C_Code","c_name","c_short_name",
       "C_travel_desk_location","C_travel_desk_incharge",
       "C_material_desk_location","C_material_desk_incharge",
       "N_SFA_ROLE","D_created","D_modified",
       COUNT(*) OVER() AS total_count
FROM "tbl_department_mst"
WHERE 1=1
  AND LOWER("c_name") LIKE LOWER($1)   -- if search param provided
  AND LOWER("C_Code") LIKE LOWER($2)   -- if code param provided
ORDER BY "C_Code"
LIMIT $3 OFFSET $4`,
            params: [
                '$1 → %search% — name filter from query param ?search= or ?name= (wrapped in % for partial match)',
                '$2 → %code% — code filter from query param ?code= (wrapped in % for partial match)',
                '$3 → limit — records per page (default 10)',
                '$4 → offset — (page - 1) * limit',
            ],
            explanation: `Returns all departments with optional name/code partial-match filters. The window function COUNT(*) OVER() provides the total result count without a second query. Results are ordered by C_Code and paginated via LIMIT/OFFSET. At least one of search or code must be provided — if neither is given, the API returns an empty result immediately without hitting the DB.`,
        },
        {
            label: '6. Exists Check (Update / Delete)',
            endpoint: 'PUT or DELETE /api/masters/department/:code',
            sql: `SELECT "C_Code" FROM "tbl_department_mst"
WHERE "C_Code" = $1`,
            params: ['$1 → req.params.code.toUpperCase() — department code from the URL path parameter'],
            explanation: `Verifies the department exists before allowing an update or delete. No N_deleted filter is needed — for update, the record must simply exist; for delete, the row will be physically removed. Returns 404 if not found.`,
        },
        {
            label: '7. Duplicate Name Check (Update)',
            endpoint: 'PUT /api/masters/department/:code',
            sql: `SELECT "C_Code" FROM "tbl_department_mst"
WHERE LOWER("c_name") = LOWER($1)
  AND "C_Code" != $2`,
            params: [
                '$1 → c_name (req.body) — the new name being set',
                '$2 → req.params.code.toUpperCase() — current record\'s code (excluded from clash check)',
            ],
            explanation: `Checks for a name clash with any other department, excluding the record being updated. No N_deleted filter — hard delete means every row in the table is active.`,
        },
        {
            label: '8. Update Department',
            endpoint: 'PUT /api/masters/department/:code',
            sql: `UPDATE "tbl_department_mst"
SET "c_name"                   = $1,
    "c_short_name"             = $2,
    "C_travel_desk_location"   = $3,
    "C_travel_desk_incharge"   = $4,
    "C_material_desk_location" = $5,
    "C_material_desk_incharge" = $6,
    "N_SFA_ROLE"               = $7,
    "D_modified"               = NOW(),
    "C_modifier"               = $8
WHERE "C_Code" = $9`,
            params: [
                '$1 → c_name (req.body) — updated department name',
                '$2 → c_short_name (req.body) — updated short name (nullable)',
                '$3 → c_travel_desk_location (req.body).toUpperCase() — e.g. HYDERABAD (nullable)',
                '$4 → c_travel_desk_incharge (req.body) — incharge employee code (nullable)',
                '$5 → c_material_desk_location (req.body).toUpperCase() — e.g. MUMBAI (nullable)',
                '$6 → c_material_desk_incharge (req.body) — incharge employee code (nullable)',
                '$7 → n_sfa_role (req.body) — 0 or 1',
                '$8 → req.admin.c_user_id — logged-in admin user ID',
                '$9 → req.params.code.toUpperCase() — department code to update',
            ],
            explanation: `Updates all editable fields of a department in a single statement. D_modified is refreshed to NOW() and C_modifier is set to the current admin's user ID. The WHERE clause targets only the specific department by its primary key.`,
        },
        {
            label: '9. Hard Delete',
            endpoint: 'DELETE /api/masters/department/:code',
            sql: `SELECT "C_Code" FROM "tbl_department_mst"
WHERE "C_Code" = $1

DELETE FROM "tbl_department_mst"
WHERE "C_Code" = $1`,
            params: [
                '$1 → req.params.code.toUpperCase() — department code to permanently delete',
            ],
            explanation: `Permanently removes the department row from the database. First checks existence (without any N_deleted filter since the row will be gone after deletion). If not found returns 404. On success the row is physically deleted and cannot be recovered — no soft-delete flag is used.`,
        },
    ],
};

// ── BUILD DOCUMENT ───────────────────────────────────────────

function buildSection(title, tableName, tableRows, endpoints, sqlList) {
    const colWidths = [20, 14, 8, 10, 48];
    const epWidths  = [10, 40, 50];

    const children = [
        heading1(title),
        spacer(),

        // 1. DB Table
        heading2('1. Database Table'),
        para(`Table Name: ${tableName}`, true),
        spacer(),
        makeTable(
            ['Column', 'Data Type', 'Key', 'Nullable', 'Description'],
            tableRows,
            colWidths
        ),
        spacer(),

        // 2. Endpoints
        heading2('2. API Endpoints'),
        para('Base path: /api/masters  |  All endpoints require a valid JWT (Authorization: Bearer <token>)'),
        spacer(),
        makeTable(
            ['Method', 'Endpoint', 'Description'],
            endpoints,
            epWidths
        ),
        spacer(),

        // 3. SQL Queries
        heading2('3. SQL Queries'),
    ];

    for (const q of sqlList) {
        children.push(heading3(q.label));
        children.push(para(`Endpoint: ${q.endpoint}`, true));
        children.push(spacer());
        children.push(...sqlBlock(q.sql));
        children.push(spacer());

        // Parameters table
        if (q.params && q.params.length > 0) {
            children.push(para('Parameters:', true));
            children.push(makeTable(
                ['Placeholder', 'Value Passed'],
                q.params.map(p => {
                    const arrow = p.indexOf(' → ');
                    if (arrow !== -1) {
                        return [p.substring(0, arrow).trim(), p.substring(arrow + 3).trim()];
                    }
                    return [p, ''];
                }),
                [20, 80]
            ));
            children.push(spacer());
        } else if (q.params && q.params.length === 0) {
            children.push(para('Parameters: None — no placeholders used in this query.'));
            children.push(spacer());
        }

        children.push(para('Explanation:'));
        children.push(bullet(q.explanation));
        children.push(spacer());
    }

    return children;
}

const desigSection = buildSection(
    'Designation Master',
    'tbl_desig_mst',
    desigTableRows,
    desigEndpoints,
    queries.desig
);

const deptSection = buildSection(
    'Department Master',
    'tbl_department_mst',
    deptTableRows,
    deptEndpoints,
    queries.dept
);

// ── ASSEMBLE & WRITE ─────────────────────────────────────────

const doc = new Document({
    creator: 'SFA-BE',
    title: 'SFA — Designation & Department Master Documentation',
    description: 'DB tables, API endpoints, and SQL queries for Designation and Department masters',
    styles: {
        paragraphStyles: [
            {
                id: 'Heading1',
                name: 'Heading 1',
                basedOn: 'Normal',
                next: 'Normal',
                run: { size: 32, bold: true, color: '1F3864' },
                paragraph: { spacing: { before: 400, after: 200 } },
            },
            {
                id: 'Heading2',
                name: 'Heading 2',
                basedOn: 'Normal',
                next: 'Normal',
                run: { size: 26, bold: true, color: '2E75B6' },
                paragraph: { spacing: { before: 300, after: 150 } },
            },
            {
                id: 'Heading3',
                name: 'Heading 3',
                basedOn: 'Normal',
                next: 'Normal',
                run: { size: 22, bold: true, color: '404040' },
                paragraph: { spacing: { before: 200, after: 100 } },
            },
        ],
    },
    sections: [
        {
            properties: {
                page: {
                    margin: {
                        top:    convertInchesToTwip(1),
                        bottom: convertInchesToTwip(1),
                        left:   convertInchesToTwip(1),
                        right:  convertInchesToTwip(1),
                    },
                },
            },
            children: [
                // Cover
                new Paragraph({
                    children: [new TextRun({ text: 'SFA — Master Documentation', bold: true, size: 48, color: '1F3864' })],
                    alignment: AlignmentType.CENTER,
                    spacing: { before: 1000, after: 200 },
                }),
                new Paragraph({
                    children: [new TextRun({ text: 'Designation Master  &  Department Master', size: 32, color: '2E75B6' })],
                    alignment: AlignmentType.CENTER,
                    spacing: { before: 0, after: 200 },
                }),
                new Paragraph({
                    children: [new TextRun({ text: 'DB Tables · API Endpoints · SQL Queries', size: 24, color: '666666' })],
                    alignment: AlignmentType.CENTER,
                    spacing: { before: 0, after: 1000 },
                }),

                ...desigSection,
                spacer(),
                spacer(),
                ...deptSection,
            ],
        },
    ],
});

Packer.toBuffer(doc).then(buffer => {
    const outPath = path.join(__dirname, 'SFA_Designation_Department_Master.docx');
    fs.writeFileSync(outPath, buffer);
    console.log('✅  Document created:', outPath);
});

const pool = require('../../config/db');

// ─── VALIDATION HELPER ─────────────────────────────────────────
async function validateEmployeeBody(body, isUpdate = false) {
    const errors = [];

    // 1. Code
    if (!isUpdate) {
        if (!body.c_emp_code || !body.c_emp_code.trim()) {
            errors.push('Employee Code (c_emp_code) is required.');
        } else if (body.c_emp_code.trim().length > 10) {
            errors.push('Employee Code (c_emp_code) cannot exceed 10 characters.');
        }
    }

    // 2. Name
    if (!body.c_name || !body.c_name.trim()) {
        errors.push('Name (c_name) is required.');
    } else if (body.c_name.trim().length > 50) {
        errors.push('Name (c_name) cannot exceed 50 characters.');
    }

    // 3. Title (C_NAMEPREFIX)
    if (!body.c_name_prefix || !body.c_name_prefix.trim()) {
        errors.push('Title (c_name_prefix) is required.');
    } else if (body.c_name_prefix.trim().length > 6) {
        errors.push('Title (c_name_prefix) cannot exceed 6 characters (e.g. Mr., Mrs., Dr.).');
    }

    // 4. Sex (C_SEX)
    if (!body.c_sex || !body.c_sex.trim()) {
        errors.push('Sex (c_sex) is required.');
    } else if (!['M', 'F'].includes(body.c_sex.trim().toUpperCase())) {
        errors.push('Sex (c_sex) must be M or F.');
    }

    // 5. Designation (C_Desig)
    if (!body.c_desig || !body.c_desig.trim()) {
        errors.push('Designation (c_desig) is required.');
    } else {
        const desigCheck = await pool.query(
            `SELECT "c_code" FROM "tbl_desig_mst" WHERE "c_code" = $1 AND "n_deleted" = 0 LIMIT 1`,
            [body.c_desig.trim().toUpperCase()]
        );
        if (desigCheck.rows.length === 0) {
            errors.push(`Designation Code "${body.c_desig}" not found or is deleted.`);
        }
    }

    // 6. Department (C_DEPT_CODE)
    if (!body.c_dept_code || !body.c_dept_code.trim()) {
        errors.push('Department (c_dept_code) is required.');
    } else {
        const deptCheck = await pool.query(
            `SELECT "C_Code" FROM "tbl_department_mst" WHERE "C_Code" = $1 AND "N_deleted" = 0 LIMIT 1`,
            [body.c_dept_code.trim().toUpperCase()]
        );
        if (deptCheck.rows.length === 0) {
            errors.push(`Department Code "${body.c_dept_code}" not found or is deleted.`);
        }
    }

    // 7. Location (C_LOC_CODE)
    if (!body.c_loc_code || !body.c_loc_code.trim()) {
        errors.push('Location (c_loc_code) is required.');
    } else if (body.c_loc_code.trim().length > 10) {
        errors.push('Location code (c_loc_code) cannot exceed 10 characters.');
    } else {
        const locCheck = await pool.query(
            `SELECT "C_Code" FROM "Tbl_Officelocation_Mst" WHERE "C_Code" = $1 AND "N_Deleted" = 0 LIMIT 1`,
            [body.c_loc_code.trim().toUpperCase()]
        );
        if (locCheck.rows.length === 0) {
            errors.push(`Location Code "${body.c_loc_code}" not found or is deleted.`);
        }
    }

    // 8. Role (C_ROLE) — stored as a code, MAX 10 chars
    if (!body.c_role || !body.c_role.trim()) {
        errors.push('Role (c_role) is required.');
    } else if (body.c_role.trim().length > 10) {
        errors.push('Role (c_role) cannot exceed 10 characters. Use a code like: HRADMIN, SFAADMIN, SFAUSER, OTHER.');
    }

    // 9. Employee Type (c_emp_type)
    if (body.c_emp_type === undefined || body.c_emp_type === null || String(body.c_emp_type).trim() === '') {
        errors.push('Employee Type (c_emp_type) is required.');
    } else {
        const typeNum = Number(body.c_emp_type);
        if (typeNum !== 1 && typeNum !== 2) {
            errors.push('Employee Type (c_emp_type) must be 1 (Permanent) or 2 (Contract).');
        }
    }

    // Helper: validate dates
    const dateFields = {
        d_dob: 'Date of Birth (d_dob)',
        d_doj: 'Date of Joining (d_doj)',
        d_conf_date: 'Date of Confirmation (d_conf_date)',
        d_dow: 'Date of Wedding (d_dow)',
        d_relieve_date: 'Date of Relieving (d_relieve_date)'
    };
    for (const [key, label] of Object.entries(dateFields)) {
        if (body[key]) {
            const dateVal = new Date(body[key]);
            if (isNaN(dateVal.getTime())) {
                errors.push(`${label} must be a valid date.`);
            }
        }
    }

    // Helper: validate email formats
    const emailFields = {
        c_email_personal: 'Personal Email (c_email_personal)',
        c_email_office: 'Office Email (c_email_office)',
        c_auto_report_email: 'Auto Report Email (c_auto_report_email)'
    };
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    for (const [key, label] of Object.entries(emailFields)) {
        if (body[key] && body[key].trim()) {
            if (!emailRegex.test(body[key].trim())) {
                errors.push(`${label} must be a valid email address.`);
            }
        }
    }

    return errors;
}

// ── Helper: generate next EMP code ────────────────────────────
async function generateNextCode() {
    const result = await pool.query(`
        SELECT TRIM("C_EmpCode") AS "c_code" FROM "Tbl_Emp_Mst"
        WHERE TRIM("C_EmpCode") ~ '^[0-9]+$'
        ORDER BY CAST(TRIM("C_EmpCode") AS INTEGER) DESC
        LIMIT 1
    `);

    if (result.rows.length === 0) return '100001';

    const lastNum = parseInt(result.rows[0].c_code, 10);
    const nextNum = lastNum + 1;
    return String(nextNum);
}

// ─── CREATE ───────────────────────────────────────────────────
// POST /api/masters/employee
async function create(req, res) {
    try {
        const errors = await validateEmployeeBody(req.body, false);
        if (errors.length > 0) {
            return res.status(400).json({ success: false, message: errors.join(' ') });
        }

        const {
            c_emp_code,
            c_name_prefix,
            c_name,
            c_grade = null,
            c_qualification = null,
            c_mobile_no = null,
            c_office_phone_no = null,
            c_office_phone_extnno = null,
            c_fax = null,
            c_desc = null,
            c_sex,
            d_dob = null,
            d_doj = null,
            d_conf_date = null,
            d_dow = null,
            c_email_office = null,
            c_email_personal = null,
            c_desig,
            c_bank_name = null,
            c_accno = null,
            c_dept_code,
            c_loc_code,
            d_relieve_date = null,
            c_role,
            c_job_desc = null,
            c_branch_name = null,
            c_rtgs_neft = null,
            c_emp_type,
            c_pan = null,
            c_auto_report_email = null,
            c_contact_name = null,
            c_esi_no = null,
            c_aadhar_no = null,
            c_emergency_mobile_no = null,
            // HQ Address Group
            c_hq_address = null,
            c_hq_place = null,
            c_hq_city = null,
            c_hq_state = null,
            c_hq_pin = null,
            // Personal Address Group
            c_padd_address = null,
            c_padd_place = null,
            c_padd_city = null,
            c_padd_state = null,
            c_padd_pin = null,
            // Mailing Address Group
            c_madd_address = null,
            c_madd_place = null,
            c_madd_city = null,
            c_madd_state = null,
            c_madd_pin = null
        } = req.body;

        const cleanCode = c_emp_code.trim().toUpperCase();
        const cleanName = c_name.trim();

        // Check duplicate code
        const dupCode = await pool.query(
            `SELECT "C_EmpCode" FROM "Tbl_Emp_Mst" WHERE "C_EmpCode" = $1 AND "N_Deleted" = 0`,
            [cleanCode]
        );
        if (dupCode.rows.length > 0) {
            return res.status(409).json({
                success: false,
                message: `Employee with Code "${cleanCode}" already exists.`
            });
        }

        // Check duplicate name
        const dupName = await pool.query(
            `SELECT "C_EmpCode" FROM "Tbl_Emp_Mst" WHERE LOWER("C_Name") = LOWER($1) AND "N_Deleted" = 0`,
            [cleanName]
        );
        if (dupName.rows.length > 0) {
            return res.status(409).json({
                success: false,
                message: `Employee with Name "${cleanName}" already exists.`
            });
        }

        await pool.query(
            `INSERT INTO "Tbl_Emp_Mst" (
                "C_EmpCode", "C_NAMEPREFIX", "C_Name", "C_Grade", "C_Qualification",
                "C_Add_1", "C_Add_2", "C_Add_3", "C_Add_4", "C_Pin",
                "C_Mobile_No", "C_OFFICE_PHONE_NO", "C_OFFICE_PHONE_EXTNNO", "C_Fax", "C_Desc", "C_SEX",
                "D_DOB", "D_DOJ", "D_CONF_DATE", "D_DOW", "C_EMAIL_OFFICE", "C_EMAIL_PERSONAL",
                "C_Desig", "c_bankcode", "C_Accno", "N_Deleted", "d_created", "c_modifier",
                "C_DEPT_CODE", "C_LOC_CODE", "D_RELIEVE_DATE", "C_ROLE", "C_JobDesc",
                "C_Hq_Address", "C_PAdd_1", "C_PAdd_2", "C_PAdd_3", "C_PAdd_4",
                "C_MAdd_1", "C_MAdd_2", "C_MAdd_3", "C_MAdd_4",
                "c_branch_name", "c_rtgs_neft", "c_hq_pin", "c_padd_pin", "c_madd_pin",
                "c_emp_type", "c_pan", "c_auto_report_email", "Aadhar_No", "C_ADHAR_NO",
                "C_ESI_NO", "C_EMERGENCYMOBILE_NO", "C_CONTACTNAME"
             )
             VALUES (
                $1, $2, $3, $4, $5,
                $6, $7, $8, $9, $10,
                $11, $12, $13, $14, $15, $16,
                $17, $18, $19, $20, $21, $22,
                $23, $24, $25, 0, NOW(), $26,
                $27, $28, $29, $30, $31,
                $32, $33, $34, $35, $36,
                $37, $38, $39, $40,
                $41, $42, $43, $44, $45,
                $46, $47, $48, $49, $50,
                $51, $52, $53
             )`,
            [
                cleanCode,
                c_name_prefix.trim(),
                cleanName,
                c_grade ? c_grade.trim() : null,
                c_qualification ? c_qualification.trim() : null,
                c_hq_address ? c_hq_address.trim() : null, // C_Add_1
                c_hq_place ? c_hq_place.trim() : null,     // C_Add_2
                c_hq_city ? c_hq_city.trim() : null,       // C_Add_3
                c_hq_state ? c_hq_state.trim() : null,     // C_Add_4
                c_hq_pin ? c_hq_pin.trim() : null,         // C_Pin
                c_mobile_no ? c_mobile_no.trim() : null,
                c_office_phone_no ? c_office_phone_no.trim() : null,
                c_office_phone_extnno ? c_office_phone_extnno.trim() : null,
                c_fax ? c_fax.trim() : null,
                c_desc ? c_desc.trim() : null,
                c_sex.trim().toUpperCase(),
                d_dob ? new Date(d_dob) : null,
                d_doj ? new Date(d_doj) : null,
                d_conf_date ? new Date(d_conf_date) : null,
                d_dow ? new Date(d_dow) : null,
                c_email_office ? c_email_office.trim() : null,
                c_email_personal ? c_email_personal.trim() : null,
                c_desig.trim().toUpperCase(),
                c_bank_name ? c_bank_name.trim() : null,
                c_accno ? c_accno.trim() : null,
                req.admin.c_user_id,
                c_dept_code.trim().toUpperCase(),
                c_loc_code.trim().toUpperCase(),
                d_relieve_date ? new Date(d_relieve_date) : null,
                c_role.trim(),
                c_job_desc ? c_job_desc.trim() : null,
                c_hq_address ? c_hq_address.trim() : null, // C_Hq_Address
                c_padd_address ? c_padd_address.trim() : null,
                c_padd_place ? c_padd_place.trim() : null,
                c_padd_city ? c_padd_city.trim() : null,
                c_padd_state ? c_padd_state.trim() : null,
                c_madd_address ? c_madd_address.trim() : null,
                c_madd_place ? c_madd_place.trim() : null,
                c_madd_city ? c_madd_city.trim() : null,
                c_madd_state ? c_madd_state.trim() : null,
                c_branch_name ? c_branch_name.trim() : null,
                c_rtgs_neft ? c_rtgs_neft.trim() : null,
                c_hq_pin ? c_hq_pin.trim() : null,
                c_padd_pin ? c_padd_pin.trim() : null,
                c_madd_pin ? c_madd_pin.trim() : null,
                Number(c_emp_type),
                c_pan ? c_pan.trim().toUpperCase() : null,
                c_auto_report_email ? c_auto_report_email.trim() : null,
                c_aadhar_no ? c_aadhar_no.trim() : null, // Aadhar_No
                c_aadhar_no ? c_aadhar_no.trim() : null, // C_ADHAR_NO
                c_esi_no ? c_esi_no.trim() : null,
                c_emergency_mobile_no ? c_emergency_mobile_no.trim() : null,
                c_contact_name ? c_contact_name.trim() : null
            ]
        );

        return res.status(201).json({
            success: true,
            message: 'Employee created successfully.',
            data: {
                c_emp_code: cleanCode,
                c_name: cleanName
            }
        });

    } catch (err) {
        console.error('Employee create error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── GET ALL / SEARCH ─────────────────────────────────────────
// GET /api/masters/employee?search=Sohel&code=109414&page=1&limit=10
async function getAll(req, res) {
    const page = parseInt(req.query.page, 10) || 1;
    const limit = parseInt(req.query.limit, 10) || 10;
    const offset = (page - 1) * limit;
    const search = (req.query.emp_name || req.query.empName || req.query.employee_name || req.query.employeeName || req.query.search || req.query.name || '').trim();
    const code = (req.query.emp_code || req.query.empCode || req.query.employee_code || req.query.employeeCode || req.query.code || '').trim();

    if (!search && !code) {
        return res.status(200).json({
            success: true,
            pagination: {
                total: 0,
                page,
                limit,
                totalPages: 0
            },
            data: []
        });
    }

    try {
        let query = `
            SELECT e."C_EmpCode" as c_emp_code, e."C_NAMEPREFIX" as c_name_prefix, e."C_Name" as c_name,
                   e."C_Grade" as c_grade, e."C_Qualification" as c_qualification, e."C_SEX" as c_sex,
                   e."C_Mobile_No" as c_mobile_no, e."C_OFFICE_PHONE_NO" as c_office_phone_no,
                   e."C_Desig" as c_desig, d."c_name" as c_desig_name,
                   e."C_DEPT_CODE" as c_dept_code, dept."c_name" as c_dept_name,
                   e."C_LOC_CODE" as c_loc_code, e."C_ROLE" as c_role, e."c_emp_type",
                   e."d_created", COUNT(*) OVER() as total_count
            FROM "Tbl_Emp_Mst" e
            LEFT JOIN "tbl_desig_mst" d ON e."C_Desig" = d."c_code"
            LEFT JOIN "tbl_department_mst" dept ON e."C_DEPT_CODE" = dept."C_Code"
            WHERE e."N_Deleted" = 0
        `;
        const params = [];

        if (search && search !== '*') {
            let pattern = search;
            if (pattern.includes('*')) {
                pattern = pattern.replace(/\*/g, '%');
            } else {
                pattern = `%${pattern}%`;
            }
            params.push(pattern);
            query += ` AND LOWER(e."C_Name") LIKE LOWER($${params.length})`;
        }

        if (code && code !== '*') {
            let pattern = code;
            if (pattern.includes('*')) {
                pattern = pattern.replace(/\*/g, '%');
            } else {
                pattern = `%${pattern}%`;
            }
            params.push(pattern);
            query += ` AND LOWER(e."C_EmpCode") LIKE LOWER($${params.length})`;
        }

        query += ` ORDER BY e."C_EmpCode" LIMIT $${params.length + 1} OFFSET $${params.length + 2}`;
        params.push(limit, offset);

        const result = await pool.query(query, params);

        const total = result.rows.length > 0 ? parseInt(result.rows[0].total_count, 10) : 0;
        const totalPages = Math.ceil(total / limit);

        const data = result.rows.map(row => {
            const { total_count, ...rest } = row;
            return {
                ...rest,
                c_emp_code: rest.c_emp_code.trim(),
                c_name: rest.c_name.trim()
            };
        });

        return res.status(200).json({
            success: true,
            pagination: {
                total,
                page,
                limit,
                totalPages
            },
            data
        });

    } catch (err) {
        console.error('Employee getAll error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── UPDATE ───────────────────────────────────────────────────
// PUT /api/masters/employee/:code
async function update(req, res) {
    const { code } = req.params;

    try {
        const errors = await validateEmployeeBody(req.body, true);
        if (errors.length > 0) {
            return res.status(400).json({ success: false, message: errors.join(' ') });
        }

        const {
            c_name_prefix,
            c_name,
            c_grade = null,
            c_qualification = null,
            c_mobile_no = null,
            c_office_phone_no = null,
            c_office_phone_extnno = null,
            c_fax = null,
            c_desc = null,
            c_sex,
            d_dob = null,
            d_doj = null,
            d_conf_date = null,
            d_dow = null,
            c_email_office = null,
            c_email_personal = null,
            c_desig,
            c_bank_name = null,
            c_accno = null,
            c_dept_code,
            c_loc_code,
            d_relieve_date = null,
            c_role,
            c_job_desc = null,
            c_branch_name = null,
            c_rtgs_neft = null,
            c_emp_type,
            c_pan = null,
            c_auto_report_email = null,
            c_contact_name = null,
            c_esi_no = null,
            c_aadhar_no = null,
            c_emergency_mobile_no = null,
            // HQ Address Group
            c_hq_address = null,
            c_hq_place = null,
            c_hq_city = null,
            c_hq_state = null,
            c_hq_pin = null,
            // Personal Address Group
            c_padd_address = null,
            c_padd_place = null,
            c_padd_city = null,
            c_padd_state = null,
            c_padd_pin = null,
            // Mailing Address Group
            c_madd_address = null,
            c_madd_place = null,
            c_madd_city = null,
            c_madd_state = null,
            c_madd_pin = null
        } = req.body;

        const targetCode = code.toUpperCase();
        const cleanName = c_name.trim();

        // Check exists
        const exists = await pool.query(
            `SELECT "C_EmpCode" FROM "Tbl_Emp_Mst" WHERE "C_EmpCode" = $1 AND "N_Deleted" = 0`,
            [targetCode]
        );
        if (exists.rows.length === 0) {
            return res.status(404).json({ success: false, message: `Employee "${code}" not found.` });
        }

        // Check duplicate name excluding self
        const dupName = await pool.query(
            `SELECT "C_EmpCode" FROM "Tbl_Emp_Mst" WHERE LOWER("C_Name") = LOWER($1) AND "N_Deleted" = 0 AND "C_EmpCode" != $2`,
            [cleanName, targetCode]
        );
        if (dupName.rows.length > 0) {
            return res.status(409).json({
                success: false,
                message: `Another employee with Name "${cleanName}" already exists.`
            });
        }

        await pool.query(
            `UPDATE "Tbl_Emp_Mst"
             SET "C_NAMEPREFIX" = $1, "C_Name" = $2, "C_Grade" = $3, "C_Qualification" = $4,
                 "C_Add_1" = $5, "C_Add_2" = $6, "C_Add_3" = $7, "C_Add_4" = $8, "C_Pin" = $9,
                 "C_Mobile_No" = $10, "C_OFFICE_PHONE_NO" = $11, "C_OFFICE_PHONE_EXTNNO" = $12, "C_Fax" = $13, "C_Desc" = $14, "C_SEX" = $15,
                 "D_DOB" = $16, "D_DOJ" = $17, "D_CONF_DATE" = $18, "D_DOW" = $19, "C_EMAIL_OFFICE" = $20, "C_EMAIL_PERSONAL" = $21,
                 "C_Desig" = $22, "c_bankcode" = $23, "C_Accno" = $24, "d_modified" = NOW(), "c_modifier" = $25,
                 "C_DEPT_CODE" = $26, "C_LOC_CODE" = $27, "D_RELIEVE_DATE" = $28, "C_ROLE" = $29, "C_JobDesc" = $30,
                 "C_Hq_Address" = $31, "C_PAdd_1" = $32, "C_PAdd_2" = $33, "C_PAdd_3" = $34, "C_PAdd_4" = $35,
                 "C_MAdd_1" = $36, "C_MAdd_2" = $37, "C_MAdd_3" = $38, "C_MAdd_4" = $39,
                 "c_branch_name" = $40, "c_rtgs_neft" = $41, "c_hq_pin" = $42, "c_padd_pin" = $43, "c_madd_pin" = $44,
                 "c_emp_type" = $45, "c_pan" = $46, "c_auto_report_email" = $47, "Aadhar_No" = $48, "C_ADHAR_NO" = $49,
                 "C_ESI_NO" = $50, "C_EMERGENCYMOBILE_NO" = $51, "C_CONTACTNAME" = $52
             WHERE "C_EmpCode" = $53`,
            [
                c_name_prefix.trim(),
                cleanName,
                c_grade ? c_grade.trim() : null,
                c_qualification ? c_qualification.trim() : null,
                c_hq_address ? c_hq_address.trim() : null, // C_Add_1
                c_hq_place ? c_hq_place.trim() : null,     // C_Add_2
                c_hq_city ? c_hq_city.trim() : null,       // C_Add_3
                c_hq_state ? c_hq_state.trim() : null,     // C_Add_4
                c_hq_pin ? c_hq_pin.trim() : null,         // C_Pin
                c_mobile_no ? c_mobile_no.trim() : null,
                c_office_phone_no ? c_office_phone_no.trim() : null,
                c_office_phone_extnno ? c_office_phone_extnno.trim() : null,
                c_fax ? c_fax.trim() : null,
                c_desc ? c_desc.trim() : null,
                c_sex.trim().toUpperCase(),
                d_dob ? new Date(d_dob) : null,
                d_doj ? new Date(d_doj) : null,
                d_conf_date ? new Date(d_conf_date) : null,
                d_dow ? new Date(d_dow) : null,
                c_email_office ? c_email_office.trim() : null,
                c_email_personal ? c_email_personal.trim() : null,
                c_desig.trim().toUpperCase(),
                c_bank_name ? c_bank_name.trim() : null,
                c_accno ? c_accno.trim() : null,
                req.admin.c_user_id,
                c_dept_code.trim().toUpperCase(),
                c_loc_code.trim().toUpperCase(),
                d_relieve_date ? new Date(d_relieve_date) : null,
                c_role.trim(),
                c_job_desc ? c_job_desc.trim() : null,
                c_hq_address ? c_hq_address.trim() : null, // C_Hq_Address
                c_padd_address ? c_padd_address.trim() : null,
                c_padd_place ? c_padd_place.trim() : null,
                c_padd_city ? c_padd_city.trim() : null,
                c_padd_state ? c_padd_state.trim() : null,
                c_madd_address ? c_madd_address.trim() : null,
                c_madd_place ? c_madd_place.trim() : null,
                c_madd_city ? c_madd_city.trim() : null,
                c_madd_state ? c_madd_state.trim() : null,
                c_branch_name ? c_branch_name.trim() : null,
                c_rtgs_neft ? c_rtgs_neft.trim() : null,
                c_hq_pin ? c_hq_pin.trim() : null,
                c_padd_pin ? c_padd_pin.trim() : null,
                c_madd_pin ? c_madd_pin.trim() : null,
                Number(c_emp_type),
                c_pan ? c_pan.trim().toUpperCase() : null,
                c_auto_report_email ? c_auto_report_email.trim() : null,
                c_aadhar_no ? c_aadhar_no.trim() : null, // Aadhar_No
                c_aadhar_no ? c_aadhar_no.trim() : null, // C_ADHAR_NO
                c_esi_no ? c_esi_no.trim() : null,
                c_emergency_mobile_no ? c_emergency_mobile_no.trim() : null,
                c_contact_name ? c_contact_name.trim() : null,
                targetCode
            ]
        );

        return res.status(200).json({
            success: true,
            message: 'Employee updated successfully.',
            data: {
                c_emp_code: targetCode,
                c_name: cleanName
            }
        });

    } catch (err) {
        console.error('Employee update error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── DELETE (soft) ────────────────────────────────────────────
// DELETE /api/masters/employee/:code
async function remove(req, res) {
    const { code } = req.params;

    try {
        const targetCode = code.toUpperCase();

        const exists = await pool.query(
            `SELECT "C_EmpCode" FROM "Tbl_Emp_Mst" WHERE "C_EmpCode" = $1 AND "N_Deleted" = 0`,
            [targetCode]
        );
        if (exists.rows.length === 0) {
            return res.status(404).json({ success: false, message: `Employee "${code}" not found.` });
        }

        await pool.query(
            `UPDATE "Tbl_Emp_Mst"
             SET "N_Deleted" = 1, "d_modified" = NOW(), "c_modifier" = $1
             WHERE "C_EmpCode" = $2`,
            [req.admin.c_user_id, targetCode]
        );

        return res.status(200).json({
            success: true,
            message: `Employee "${code}" deleted successfully.`
        });

    } catch (err) {
        console.error('Employee delete error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

// ─── GET NEXT CODE ────────────────────────────────────────────
// GET /api/masters/employee/next-code
async function getNextCode(req, res) {
    try {
        const nextCode = await generateNextCode();
        return res.status(200).json({
            success: true,
            nextCode
        });
    } catch (err) {
        console.error('Employee getNextCode error:', err.message);
        return res.status(500).json({ success: false, message: 'Server error.' });
    }
}

module.exports = { create, getAll, update, remove, getNextCode };

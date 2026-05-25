-- PostgreSQL Schema Extracted from Live NeonDB
-- This shows exactly what is currently running in the database

CREATE TABLE "'UPDATE SUBAREAS$'" (
    "DocCode" character varying(255),
    "SubAreaCode" character varying(255),
    "areamaster" character varying(255),
    "regionmst" character varying(255)
);

CREATE TABLE "ABSENTEES" (
    "DIVISION" character varying(50),
    "REGION" character varying(50),
    "DESIGNATION" character varying(50),
    "HQ" character varying(50),
    "NOOFVACANTS" character varying(50)
);

CREATE TABLE "Auto_Report_Selected_Reprot_Parameter" (
    "n_srno" numeric NOT NULL,
    "n_param_id" numeric NOT NULL,
    "n_value" numeric
);

CREATE TABLE "Auto_Report_Send_Report_Logs" (
    "n_srno" integer NOT NULL DEFAULT nextval('"Auto_Report_Send_Report_Logs_n_srno_seq"'::regclass),
    "n_report_id" numeric,
    "c_emp_id" character varying(10),
    "c_email_id" character varying(50),
    "d_send_on" timestamp without time zone,
    "n_rate" numeric,
    "c_start_time" character varying(50),
    "c_end_time" character varying(50)
);

CREATE TABLE "Auto_Report_Senders_Details" (
    "c_email_id" character varying(50) NOT NULL,
    "c_password" character varying(50),
    "c_smtp_server" character varying(50),
    "c_sender_name" character varying(50),
    "c_smtpusessl" character varying(10),
    "n_port" integer,
    "c_email_Id_Android" character varying(200),
    "c_password_Android" character varying(200)
);

CREATE TABLE "Auto_Reprot_Param_mst" (
    "n_srno" numeric NOT NULL,
    "c_decription" character varying(100)
);

CREATE TABLE "Auto_Reprot_Report_master" (
    "n_reportid" numeric NOT NULL,
    "c_reportname" character varying(100),
    "c_linkpage" character varying(100),
    "n_rate" numeric,
    "n_enable" integer,
    "c_header" character varying(255),
    "c_footer" character varying(255)
);

CREATE TABLE "Auto_report_Report_Master_Parameter" (
    "n_report_id" numeric NOT NULL,
    "n_param_id" numeric NOT NULL,
    "n_value" numeric,
    "n_range_from" numeric,
    "n_range_to" numeric
);

CREATE TABLE "Auto_report_Selected_Report" (
    "n_srno" numeric NOT NULL,
    "n_report_id" numeric,
    "c_description" character varying(100),
    "c_header" character varying(100),
    "c_footer" character varying(100),
    "c_created_by" character varying(50),
    "d_created_on" timestamp without time zone,
    "d_sent_on" timestamp without time zone,
    "d_next_date" timestamp without time zone,
    "n_enable" integer
);

CREATE TABLE "Auto_report_parm_values" (
    "n_srno" numeric NOT NULL,
    "n_seq" numeric NOT NULL,
    "c_dispvalue" character varying(100),
    "n_value" numeric
);

CREATE TABLE "CUSBACKUP" (
    "c_cust_code" character(10) NOT NULL,
    "c_div_code" character varying(10) NOT NULL,
    "c_fs_code" character(10) NOT NULL,
    "d_date" timestamp without time zone NOT NULL,
    "c_grade" character varying(10),
    "d_date_to" timestamp without time zone,
    "n_per" integer,
    "C_ref_no" character varying(52),
    "d_modified" timestamp without time zone,
    "N_CRNTBUSINES" character varying(150),
    "C_BUSINES_POTENTIAL" character varying(150),
    "N_drpotential" character varying(50)
);

CREATE TABLE "DynamicMasterSetup" (
    "Id" integer NOT NULL,
    "TableName" character varying(100),
    "Header" character varying(150),
    "Priority" integer NOT NULL,
    "ColumnName" character varying(50),
    "LabelDisplay" character varying(150),
    "ValueType" character varying(50),
    "Visible" boolean,
    "DefaultValue" character varying(50),
    "DefaultValueEvent" character varying(50),
    "Mandatory" boolean,
    "DisplayType" character varying(50),
    "DisplayValue" text,
    "DisplayName" character varying(50),
    "ReadOnly" boolean,
    "AjaxBehaviour" boolean,
    "TriggerOnFieldChange" character varying(50),
    "SqlQuery" character varying(5000),
    "AutoCode" character varying(50),
    "CodeLength" character varying(50),
    "Prefix" character varying(50),
    "RegularExpression" text,
    "ControlID" character varying(50),
    "Event" character varying(20),
    "OnLoad" boolean,
    "OnChangeQuery" character varying(5000),
    "P_key" boolean,
    "TextType" character varying(10),
    "RequiredInList" boolean,
    "NumericLength" character varying(10),
    "FilterColumn" character varying(200),
    "JoinCondition" text,
    "RequiredToSave" boolean,
    "FilterOperator" character varying(3),
    "ControlText" character varying(1000),
    "ControlTextQuery" character varying(5000),
    "ErrorMsg" character varying(200),
    "groupid" integer DEFAULT 0,
    "ListCondition" character varying(250),
    "DetailsTableName" text,
    "n_DetailsTable_flag" integer,
    "PK_alias_name" character varying(100),
    "n_modifier" integer DEFAULT 0,
    "n_NameOrShName" integer,
    "n_Validator" integer NOT NULL DEFAULT 0,
    "Validator" character varying(100),
    "TargetValidator" character varying(1000),
    "RequiredToupdate" integer,
    "n_order" integer,
    "n_combination" integer NOT NULL DEFAULT 0,
    "n_editQuery" integer NOT NULL DEFAULT 0,
    "editQuery" text,
    "EditFilterColumn" character varying(1000),
    "N_Split" integer,
    "Split_char" character varying(10),
    "N_from_Master" integer,
    "Requiredupdate" integer DEFAULT 0,
    "Requiredsave" integer DEFAULT 0,
    "ValidatorResult" character varying(100),
    "C_ControlPanelValidation_COLUMN" character varying(1000),
    "n_pop_up" integer NOT NULL DEFAULT 0,
    "n_delete_chek" integer DEFAULT 0,
    "c_deleteQuery" text,
    "c_delete_Filter" character varying(100),
    "n_toggle" integer NOT NULL DEFAULT 0,
    "LabelDisplay2" character varying(100),
    "C_SqlParameter" character varying(200),
    "n_dsca_type" integer
);

CREATE TABLE "EMPDETAILS" (
    "EMPCODE" character varying(50),
    "FSCODE" character varying(50),
    "REPORTINGMANAGER" character varying(50),
    "VISITEDDOCTORS" character varying(50),
    "FIELDADYS" character varying(50),
    "LEAVEDAYS" character varying(50),
    "HOLIDAYS" character varying(50),
    "WORKINGDAYS" character varying(50),
    "CALLAVG" character varying(50),
    "REGION" character varying(50),
    "DIVISION" character varying(50),
    "FSNAME" character varying(50),
    "HQ" character varying(50),
    "DaysCnt" character varying(50)
);

CREATE TABLE "EMPDETAILSS" (
    "FSCODE" character varying(50),
    "EMPCODE" character varying(50),
    "FSNAME" character varying(50),
    "REPORTINGMANAGER" character varying(50),
    "FIELDDAYS" integer,
    "LEAVEDAYS" integer,
    "HOLIDAYS" integer,
    "SUNDAYS" integer,
    "TOTALDAYS" integer,
    "REGION" character varying(50),
    "DIVISION" character varying(50),
    "DOJ" timestamp without time zone
);

CREATE TABLE "FIELD" (
    "EMPCODE" character varying(50),
    "WORKINGDAYS" character varying(50),
    "FSCODE" character varying(50)
);

CREATE TABLE "FIELDDAYS" (
    "FSCODE" character varying(50),
    "WORKDAYS" character varying(50),
    "WORKINGDAYS" character varying(50),
    "VISITEDDOCTORS" character varying(50),
    "CALLAVG" character varying(50),
    "DaysCnt" character varying(50)
);

CREATE TABLE "FldDays" (
    "Docs" character varying(50),
    "ReportingDate" character varying(50),
    "FSCode" character varying(50)
);

CREATE TABLE "FldDaysCnt" (
    "DaysCnt" integer,
    "FsCode" character varying(50)
);

CREATE TABLE "GDNdetails" (
    "C_DEP_CODE" character varying(10) NOT NULL,
    "C_YEAR" character(4) NOT NULL,
    "C_PREFIX" character(10) NOT NULL,
    "N_SRNO" numeric NOT NULL,
    "N_ROW_ID" numeric NOT NULL,
    "C_ITEM_CODE" character varying(10),
    "C_BATCH_NO" character varying(15),
    "N_QTY" numeric,
    "N_RATE" numeric
);

CREATE TABLE "GDNheader" (
    "C_DEP_CODE" character varying(10) NOT NULL,
    "C_YEAR" character(4) NOT NULL,
    "C_PREFIX" character(10) NOT NULL,
    "N_SRNO" numeric NOT NULL,
    "D_Date" timestamp without time zone,
    "C_FS_CODE" character varying(10),
    "N_FLG" integer,
    "N_TOTAL" numeric,
    "C_INVOICE" character varying(50),
    "modidt" timestamp without time zone
);

CREATE TABLE "HCP_setup_det" (
    "n_srno" integer,
    "n_setup_type" integer,
    "c_mngr_type" character varying(100),
    "n_multiple_approval" integer,
    "c_confirmator" character varying(50)
);

CREATE TABLE "HOLIDAYMASTER" (
    "NOOFHOLIDAYS" character varying(50),
    "FSCODE" character varying(50)
);

CREATE TABLE "HOLYDAYS" (
    "NoOfHolidays" character varying(50),
    "FSCODE" character varying(50),
    "EMPCODE" character varying(50)
);

CREATE TABLE "HOLYDAYSS" (
    "EMPCODE" character varying(50),
    "FSCODE" character varying(50),
    "NoOfHolidays" timestamp without time zone
);

CREATE TABLE "LEAVEDETAILS" (
    "EMPCODE" character varying(50),
    "FSCODE" character varying(50),
    "LEAVEDAYS" character varying(50)
);

CREATE TABLE "LEAVEMASTER" (
    "EMPCODE" character varying(50),
    "FSCODE" character varying(50),
    "LEAVEDAYS" character varying(50)
);

CREATE TABLE "NewWorkedRpt" (
    "Empcode" character varying(50),
    "DIVISION" character varying(50),
    "REGION" character varying(50),
    "FSCODE" character varying(50),
    "FSNAME" character varying(50),
    "HQ" character varying(50),
    "REPORTINGMANAGER" character varying(50),
    "PREVDAYSTATUS" character varying(50),
    "PREVDAYCALLS" character varying(50),
    "WORKINGDAYS" character varying(50),
    "WORKDDAYS" character varying(50),
    "VISITEDDOCTORS" integer,
    "CALLAVG" character varying(50),
    "LEAVEDAYS" character varying(50),
    "HOLIDAYS" character varying(50),
    "Dayscnt" integer
);

CREATE TABLE "PrevDayStatus" (
    "EmpCode" character varying(20),
    "Stat" character varying(20),
    "visitedDocs" character varying(50)
);

CREATE TABLE "PrevDayStatuss" (
    "EmpCode" character varying(20),
    "Stat" character varying(20),
    "visitedDocs" character varying(50)
);

CREATE TABLE "Prev_day_rpt" (
    "C_Fs_Code" character varying(10),
    "Attendance" character varying(50),
    "WorkType" character varying(50)
);

CREATE TABLE "Previousdaycalls" (
    "C_FS_Code" character varying(50),
    "Prevdaycalls" character varying(50)
);

CREATE TABLE "REPPP" (
    "DIVISION" character varying(50),
    "REGION" character varying(50),
    "HQ" character varying(50),
    "DESIGNATION" character varying(50),
    "TOTAL" character varying(50),
    "NOTREPORTED" character varying(50),
    "VACANT" character varying(50),
    "REPORTED" character varying(50)
);

CREATE TABLE "SMS_Email_Send_Report_Logs" (
    "n_srno" integer NOT NULL DEFAULT nextval('"SMS_Email_Send_Report_Logs_n_srno_seq"'::regclass),
    "n_sms_srno" integer,
    "c_emp_id" character varying(50),
    "c_email_id" character varying(50),
    "d_send_on" timestamp without time zone
);

CREATE TABLE "Sa_update_stp" (
    "Division" character varying(255),
    "Region Name" character varying(255),
    "STPNo" double precision,
    "FS CODE" character varying(255),
    "FS NAME" character varying(255),
    "HQ CODE" character varying(255),
    "HQ NAME" character varying(255),
    "Based At Code" character varying(255),
    "Based At Name" character varying(255),
    "STP Date From" timestamp without time zone,
    "STP Date To" timestamp without time zone,
    "HQDA" double precision,
    "EXDA" double precision,
    "OSDA" double precision,
    "TAType" double precision,
    "RateKM" double precision,
    "distnace" double precision,
    "TA" double precision,
    "From Area Code" character varying(255),
    "From Area Name" character varying(255),
    "ToAreaCode" character varying(255),
    "ToAreaname" character varying(255)
);

CREATE TABLE "Sheet1$" (
    "CODE " character varying(255),
    "PRESENT NAME" character varying(255),
    "F3" character varying(255),
    "CODE 1" character varying(255),
    "MERGE NAME" character varying(255)
);

CREATE TABLE "St" (
    "Region Name" character varying(255),
    "STPNo" double precision,
    "rowid" double precision,
    "Division" character varying(255),
    "FS CODE" character varying(255),
    "FS NAME" character varying(255),
    "HQ CODE" character varying(255),
    "HQ NAME" character varying(255),
    "Based At Code" character varying(255),
    "Based At Name" character varying(255),
    "STP Date From" timestamp without time zone,
    "STP Date To" timestamp without time zone,
    "HQDA" double precision,
    "EXDA" double precision,
    "OSDA" double precision,
    "TAType" double precision,
    "RateKM" double precision,
    "From Area Code" character varying(255),
    "From Area Name" character varying(255),
    "ToAreaCode" character varying(255),
    "ToAreaname" character varying(255),
    "A grade doct count" double precision,
    "B grade doctor count" double precision,
    "chemist count" double precision,
    "stockiest count" double precision,
    "curent business" double precision,
    "expected business" double precision,
    "AreaType" character varying(255),
    "Distance" double precision,
    "TA" double precision
);

CREATE TABLE "Stp" (
    "Region Name" character varying(255),
    "STPNo" double precision,
    "rowid" double precision,
    "Division" character varying(255),
    "FS CODE" character varying(255),
    "FS NAME" character varying(255),
    "HQ CODE" character varying(255),
    "HQ NAME" character varying(255),
    "Based At Code" character varying(255),
    "Based At Name" character varying(255),
    "STP Date From" timestamp without time zone,
    "STP Date To" timestamp without time zone,
    "HQDA" double precision,
    "EXDA" double precision,
    "OSDA" double precision,
    "TAType" double precision,
    "RateKM" double precision,
    "From Area Code" character varying(255),
    "From Area Name" character varying(255),
    "ToAreaCode" character varying(255),
    "ToAreaname" character varying(255),
    "A grade doct count" double precision,
    "B grade doctor count" double precision,
    "chemist count" double precision,
    "stockiest count" double precision,
    "curent business" double precision,
    "expected business" double precision,
    "AreaType" character varying(255),
    "Distance" double precision,
    "TA" double precision
);

CREATE TABLE "Stp09082023" (
    "Region Name" character varying(255),
    "STPNo" double precision,
    "rowid" double precision,
    "Division" character varying(255),
    "FS CODE" character varying(255),
    "FS NAME" character varying(255),
    "HQ CODE" character varying(255),
    "HQ NAME" character varying(255),
    "Based At Code" character varying(255),
    "Based At Name" character varying(255),
    "HQDA" double precision,
    "EXDA" double precision,
    "OSDA" double precision,
    "TAType" double precision,
    "RateKM" double precision,
    "From Area Code" character varying(255),
    "From Area Name" character varying(255),
    "ToAreaCode" character varying(255),
    "ToAreaname" character varying(255),
    "AreaType" character varying(255),
    "Distance" double precision,
    "TA" double precision
);

CREATE TABLE "Stp5" (
    "Region Name" character varying(255),
    "STPNo" double precision,
    "rowid" double precision,
    "Division" character varying(255),
    "FS CODE" character varying(255),
    "FS NAME" character varying(255),
    "HQ CODE" character varying(255),
    "HQ NAME" character varying(255),
    "Based At Code" character varying(255),
    "Based At Name" character varying(255),
    "STP Date From" timestamp without time zone,
    "STP Date To" timestamp without time zone,
    "HQDA" double precision,
    "EXDA" double precision,
    "OSDA" double precision,
    "TAType" double precision,
    "RateKM" double precision,
    "From Area Code" character varying(255),
    "From Area Name" character varying(255),
    "ToAreaCode" character varying(255),
    "ToAreaname" character varying(255),
    "A grade doct count" double precision,
    "B grade doctor count" double precision,
    "chemist count" double precision,
    "stockiest count" double precision,
    "curent business" double precision,
    "expected business" double precision,
    "AreaType" character varying(255),
    "Distance" double precision,
    "TA" double precision
);

CREATE TABLE "Stpnew" (
    "Region Name" character varying(255),
    "STPNo" double precision,
    "rowid" double precision,
    "Division" character varying(255),
    "FS CODE" character varying(255),
    "FS NAME" character varying(255),
    "HQ CODE" character varying(255),
    "HQ NAME" character varying(255),
    "Based At Code" character varying(255),
    "Based At Name" character varying(255),
    "STP Date From" timestamp without time zone,
    "STP Date To" timestamp without time zone,
    "HQDA" double precision,
    "EXDA" double precision,
    "OSDA" double precision,
    "TAType" double precision,
    "RateKM" double precision,
    "From Area Code" character varying(255),
    "From Area Name" character varying(255),
    "ToAreaCode" character varying(255),
    "ToAreaname" character varying(255),
    "A grade doct count" double precision,
    "B grade doctor count" double precision,
    "chemist count" double precision,
    "stockiest count" double precision,
    "curent business" double precision,
    "expected business" double precision,
    "AreaType" character varying(255),
    "Distance" double precision,
    "TA" double precision
);

CREATE TABLE "TBL_ANDROID_LOGIN" (
    "C_FSCODE" character varying(100) NOT NULL,
    "D_LOGINTIME" timestamp without time zone,
    "D_LOGOUTTIME" timestamp without time zone
);

CREATE TABLE "TBL_DOCINV_DESK_map" (
    "n_srno" integer NOT NULL DEFAULT nextval('"TBL_DOCINV_DESK_map_n_srno_seq"'::regclass),
    "n_setup_no" integer,
    "c_desk_code" character varying(20),
    "c_empcode" character varying(20)
);

CREATE TABLE "TBL_DOCINV_Hierarchy_map" (
    "n_srno" integer NOT NULL DEFAULT nextval('"TBL_DOCINV_Hierarchy_map_n_srno_seq"'::regclass),
    "n_setup_no" integer,
    "n_fstype" integer,
    "c_fscode" character varying(20)
);

CREATE TABLE "TBL_DOCINV_SETUP" (
    "n_srno" numeric NOT NULL,
    "c_name" character varying(50),
    "n_inv_mode_min" numeric,
    "n_inv_mode_max" numeric,
    "d_date_from" timestamp without time zone,
    "d_date_to" timestamp without time zone,
    "n_months" integer,
    "n_roi_on" integer,
    "n_roi_value" integer,
    "n_roi_det" integer,
    "n_roi_reconci" integer,
    "c_budget_view" character varying(20),
    "c_budget_validate" character varying(20),
    "n_mcl_mand" integer,
    "n_drph" integer,
    "n_update_drmst" integer,
    "n_email_id" integer,
    "n_commit_dr" integer,
    "n_req_dr" integer,
    "n_rmks" integer,
    "n_curr_sale" integer,
    "n_disp_sale" integer,
    "n_visit_det" integer,
    "n_docprof_months" integer,
    "n_Fs_invhistory" integer,
    "n_dr_invhistory" integer,
    "n_inv_productrate" integer,
    "n_product_rate" integer,
    "n_single_approval" integer,
    "n_upload" integer,
    "c_status" character varying(20),
    "c_ratetype" character varying(10),
    "n_actualrate" numeric,
    "n_print" integer,
    "n_deleted" integer,
    "c_modifier" character varying(20),
    "d_modified" timestamp without time zone,
    "c_print_opt" character varying(20),
    "c_req_editable" character varying(50),
    "c_rcpa_view" character varying(50),
    "n_AmntValidate" integer NOT NULL DEFAULT 1,
    "n_rps_flow" integer,
    "n_gift_nongift" integer NOT NULL DEFAULT 0,
    "n_auto_approval" integer,
    "n_auto_confirm" integer,
    "n_mcl_edit" integer,
    "n_drph_mand" integer,
    "n_email_id_mand" integer,
    "n_mobno_update_drmst" integer,
    "n_vendor" integer DEFAULT 0,
    "n_item_type" integer,
    "n_type" integer
);

CREATE TABLE "TBL_DOCINV_STAG_Map" (
    "n_srno" integer NOT NULL DEFAULT nextval('"TBL_DOCINV_STAG_Map_n_srno_seq"'::regclass),
    "n_setup_no" integer,
    "n_fstype" integer,
    "c_type" character varying(20),
    "n_amount" numeric
);

CREATE TABLE "TBL_DOCINV_TYPE_Map" (
    "n_setup_no" integer,
    "c_code" character varying(20),
    "c_modifier" character varying(20),
    "d_modified" timestamp without time zone
);

CREATE TABLE "TBL_DOCINV_empgrpmst" (
    "c_empcode" character varying(20)
);

CREATE TABLE "TBL_DOCINV_inv_frwdhistory" (
    "n_inv_no" numeric,
    "c_emp_from" character varying(20),
    "c_emp_to" character varying(20),
    "d_date" timestamp without time zone,
    "c_note" character varying(1000)
);

CREATE TABLE "TBL_DOCINV_inv_frwdhistory_log" (
    "n_inv_no" numeric,
    "c_emp_from" character varying(20),
    "c_emp_to" character varying(20),
    "d_date" timestamp without time zone,
    "c_note" character varying(1000)
);

CREATE TABLE "TBL_DOCINV_inv_notes" (
    "n_req_no" numeric,
    "n_inv_req" numeric,
    "c_note" character varying(1000),
    "c_empcode" character varying(20),
    "c_holdnote" character varying(250)
);

CREATE TABLE "TBL_DOCINV_inv_notes_log" (
    "n_req_no" numeric,
    "n_inv_req" numeric,
    "c_note" character varying(1000),
    "c_empcode" character varying(20),
    "c_holdnote" character varying(1000)
);

CREATE TABLE "TBL_DWR_ANDROID_LOCATION" (
    "N_DcrNo" numeric NOT NULL,
    "N_Latitude" numeric NOT NULL,
    "N_Longitude" numeric
);

CREATE TABLE "TBL_DWR_DETAILS_ANDROID_LOCATION" (
    "N_DcrNo" numeric NOT NULL,
    "C_DSCA_CODE" character varying(20) NOT NULL,
    "N_Latitude" numeric NOT NULL,
    "N_Longitude" numeric,
    "C_CHARGE" character varying(10),
    "C_DEVICE" character varying(100),
    "C_DEVICE_ID" character varying(200),
    "N_ANDROID_VERSION" integer,
    "N_SIGNAL" integer,
    "N_GPRS" integer,
    "D_DATE" timestamp without time zone,
    "c_placename" character varying(2000)
);

CREATE TABLE "TBL_DWR_DSCOIMAGE" (
    "n_dwr_no" numeric,
    "c_dsco_code" character varying(100),
    "c_imgname" character varying(1000),
    "d_date" date NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "TBL_DocInv_EXPENSE" (
    "N_RPS_REQID" numeric,
    "N_AdvanceReceived" numeric,
    "N_ActualExpense" numeric,
    "n_status" integer,
    "c_servicereqfrmho" integer,
    "d_date" timestamp without time zone,
    "N_Balance" numeric,
    "n_btc" integer,
    "n_EstimatedAmount" numeric,
    "n_paid_recover_amt" numeric,
    "d_date_exp" timestamp without time zone,
    "c_remark" text,
    "n_flg" integer,
    "n_advflg" integer,
    "n_cancelled" integer,
    "n_exp_cancel_req" integer,
    "c_exp_cancel_Remarks" character varying(1500),
    "n_ActualBillAmount1" numeric,
    "n_ActualBillAmount2" numeric,
    "n_MiscExpense" numeric
);

CREATE TABLE "TBL_DocInv_EXPENSE_Hist" (
    "N_RPS_REQID" numeric,
    "N_AdvanceReceived" numeric,
    "N_ActualExpense" numeric,
    "n_status" integer,
    "c_servicereqfrmho" character varying(500),
    "d_date" timestamp without time zone,
    "N_Balance" numeric,
    "n_btc" integer,
    "n_EstimatedAmount" numeric,
    "n_paid_recover_amt" numeric,
    "d_date_exp" timestamp without time zone,
    "c_remark" text,
    "n_flg" integer,
    "n_advflg" integer,
    "n_cycle" integer
);

CREATE TABLE "TBL_DocInv_EXPENSE_LOG" (
    "N_RPS_REQID" numeric NOT NULL,
    "N_REQAMOUNT" numeric NOT NULL,
    "C_REQREMARKS" character varying(500),
    "D_REQDATE" timestamp without time zone,
    "N_APPAMOUNT" numeric,
    "C_APPREMARKS" character varying(500),
    "C_APPROVEDBY" character varying(50),
    "D_APPDATE" timestamp without time zone,
    "N_CONFAMOUNT" numeric,
    "C_CONFREMARKS" character varying(500),
    "C_CONFIRMEDBY" character varying(50),
    "D_CONFDATE" timestamp without time zone,
    "N_DESKAMOUNT" numeric,
    "C_DESKREMARKS" character varying(500),
    "C_DESKCONFIRMEDBY" character varying(50),
    "D_DESKCONFDATE" timestamp without time zone
);

CREATE TABLE "TBL_Expense_Account_Det" (
    "N_Srno" integer,
    "C_EmpCode" character varying(50),
    "C_Bank_Name" character varying(250),
    "C_Account_No" character varying(50),
    "C_Branch_Name" character varying(250),
    "C_IFSC" character varying(50),
    "N_Deleted" integer,
    "C_Bank_Code" character varying(50)
);

CREATE TABLE "TBL_LOG" (
    "Indexs" character varying(1000),
    "data" text,
    "fscode" character varying(50),
    "dat" timestamp without time zone
);

CREATE TABLE "TBL_PRP_EXPENSE" (
    "N_RPS_REQID" numeric NOT NULL,
    "N_REQAMOUNT" numeric NOT NULL,
    "C_REQREMARKS" character varying(500),
    "C_Doctor" character varying(200),
    "D_REQDATE" timestamp without time zone,
    "N_APPAMOUNT" numeric,
    "C_APPREMARKS" character varying(500),
    "C_APPROVEDBY" character varying(50),
    "D_APPDATE" timestamp without time zone,
    "N_CONFAMOUNT" numeric,
    "C_CONFREMARKS" character varying(500),
    "C_CONFIRMEDBY" character varying(50),
    "D_CONFDATE" timestamp without time zone,
    "N_DESKAMOUNT" numeric,
    "C_DESKREMARKS" character varying(500),
    "C_DESKCONFIRMEDBY" character varying(50),
    "D_DESKCONFDATE" timestamp without time zone
);

CREATE TABLE "TBL_PRP_EXPENSE_LOG" (
    "N_RPS_REQID" numeric NOT NULL,
    "N_REQAMOUNT" numeric NOT NULL,
    "C_REQREMARKS" character varying(500),
    "C_Doctor" character varying(200),
    "D_REQDATE" timestamp without time zone,
    "N_APPAMOUNT" numeric,
    "C_APPREMARKS" character varying(500),
    "C_APPROVEDBY" character varying(50),
    "D_APPDATE" timestamp without time zone,
    "N_CONFAMOUNT" numeric,
    "C_CONFREMARKS" character varying(500),
    "C_CONFIRMEDBY" character varying(50),
    "D_CONFDATE" timestamp without time zone,
    "N_DESKAMOUNT" numeric,
    "C_DESKREMARKS" character varying(500),
    "C_DESKCONFIRMEDBY" character varying(50),
    "D_DESKCONFDATE" timestamp without time zone
);

CREATE TABLE "TBL_SFA_ANDROID_LOGINDETAILS" (
    "C_USERID" character varying(100),
    "C_EMPCODE" character varying(100),
    "D_DATE" character varying(500)
);

CREATE TABLE "TBL_USER_LOGOUT" (
    "C_USERID" character varying(200) NOT NULL,
    "C_DEVICE_ID" character varying(2000),
    "D_DATE_LOGIN" timestamp without time zone,
    "C_FSCODE" character varying(50)
);

CREATE TABLE "TBL_USER_LOGOUT_log" (
    "C_USERID" character varying(200) NOT NULL,
    "C_DEVICE_ID" character varying(2000),
    "D_DATE_LOGIN" timestamp without time zone,
    "C_FSCODE" character varying(50)
);

CREATE TABLE "TOTALFS" (
    "DIVISION" character varying(50),
    "REGION" character varying(50),
    "HQ" character varying(50),
    "TOTAL" character varying(50),
    "DESIGNATION" character varying(50)
);

CREATE TABLE "Tbl_Account_Mst" (
    "C_Code" character varying(20) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "C_Address" character varying(100),
    "D_Activation" timestamp without time zone,
    "D_Start_date" timestamp without time zone,
    "No_of_days" integer,
    "Created_by" character varying(100),
    "Acc_purchase_manager" character varying(50),
    "Purchase_manager_contactno" character varying(50),
    "n_deleted" integer NOT NULL DEFAULT 0,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "C_Classification" character varying(10)
);

CREATE TABLE "Tbl_AdminMessage_Mst" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code_From" character(10) NOT NULL,
    "C_Parent" character(10) NOT NULL,
    "C_FS_Code_To" character(10) NOT NULL,
    "C_Subject" character varying(500),
    "C_Message" character varying(500),
    "Msg_Type" integer,
    "D_Created_Date" timestamp without time zone,
    "N_Read" numeric NOT NULL DEFAULT '0'::numeric
);

CREATE TABLE "Tbl_Alert_Activated" (
    "n_srno" numeric NOT NULL,
    "c_message" character varying(150),
    "n_criteria1" numeric,
    "n_criteria2" numeric,
    "n_criteria3" numeric,
    "n_criteria4" numeric,
    "n_criteria5" numeric,
    "n_criteria6" numeric,
    "n_sch_type" numeric,
    "n_day" numeric,
    "d_time" timestamp without time zone,
    "d_nextdate" timestamp without time zone,
    "d_lastdate" timestamp without time zone,
    "n_block_flag" numeric,
    "n_Deleted" integer,
    "n_sms_email" integer NOT NULL DEFAULT 0,
    "c_criteria7" character varying(1000)
);

CREATE TABLE "Tbl_Alert_Blocked" (
    "c_empcode" character varying(10) NOT NULL,
    "c_fscode" character varying(10) NOT NULL,
    "n_alert_code" numeric NOT NULL,
    "n_type" numeric
);

CREATE TABLE "Tbl_Alert_Email_Detail1" (
    "N_EmailId" numeric NOT NULL,
    "N_Rowid" numeric NOT NULL,
    "C_DataField" character varying(100) NOT NULL,
    "N_variable" numeric NOT NULL,
    "N_hidden" numeric NOT NULL,
    "N_VrtclSumFlg" numeric,
    "N_HrzclSumFlg" numeric,
    "C_SubGroupHeader" character varying(100),
    "N_GrpFactor" integer
);

CREATE TABLE "Tbl_Alert_Email_Header2" (
    "N_EmailId" numeric NOT NULL,
    "N_Rowid" numeric NOT NULL,
    "C_Text" character varying(300),
    "N_variable" numeric
);

CREATE TABLE "Tbl_Alert_Email_Header3" (
    "N_EmailId" numeric NOT NULL,
    "N_Rowid" numeric NOT NULL,
    "C_Text" character varying(300),
    "N_Variable" numeric
);

CREATE TABLE "Tbl_Alert_Email_header1" (
    "N_EmailId" numeric NOT NULL,
    "N_Rowid" numeric NOT NULL,
    "C_Text" character varying(300),
    "N_Variable" numeric,
    "C_headerTemplate" text,
    "c_subject" text
);

CREATE TABLE "Tbl_Alert_Mst" (
    "n_srno" numeric NOT NULL,
    "c_name" character varying(100),
    "c_remark" character varying(200),
    "c_message" character varying(150),
    "n_type" numeric,
    "n_maxparm" numeric,
    "n_criteria1" numeric,
    "n_criteria2" numeric,
    "n_criteria3" numeric,
    "n_criteria4" numeric,
    "n_criteria5" numeric,
    "n_criteria6" numeric,
    "c_head1" character varying(20),
    "c_head2" character varying(20),
    "c_head3" character varying(20),
    "c_head4" character varying(20),
    "c_head5" character varying(20),
    "c_head6" character varying(20),
    "n_sch_type" numeric,
    "n_day" numeric,
    "d_time" timestamp without time zone,
    "c_head7" character varying(1000),
    "c_criteria7" character varying(1000)
);

CREATE TABLE "Tbl_Alert_Setup" (
    "c_provider" character varying(20),
    "c_user" character varying(20),
    "c_psw" character varying(30),
    "n_active" numeric,
    "n_No_sms_purchased" numeric,
    "n_sms_left" numeric,
    "c_sms_prefix" character varying(7000),
    "c_sms_suffix" character varying(7000),
    "c_sms_to_prefix" character varying(1000),
    "c_sms_to_suffix" character varying(1000),
    "c_sms_url" character varying(1000),
    "n_msg_account_flag" integer,
    "C_APIkey" character varying(100),
    "C_Sender" character varying(100)
);

CREATE TABLE "Tbl_Alert_Sms" (
    "n_srno" integer NOT NULL DEFAULT nextval('"Tbl_Alert_Sms_n_srno_seq"'::regclass),
    "n_sms_srno" numeric,
    "c_message" text,
    "d_date" timestamp without time zone,
    "n_send" numeric DEFAULT '0'::numeric,
    "d_sendon" timestamp without time zone,
    "c_emp_code" character(10),
    "c_mobile_no" character(15),
    "c_return_no" character(100),
    "n_attempt" numeric,
    "n_Sms_count" numeric,
    "C_EmpCode_From" character varying(10) NOT NULL DEFAULT 'Auto'::character varying,
    "c_return_xml" xml
);

CREATE TABLE "Tbl_Alert_Sms_Det" (
    "n_srno" numeric NOT NULL,
    "c_emp_code" character varying(50) NOT NULL,
    "c_mobileno" character varying(50) NOT NULL,
    "n_rowid" numeric NOT NULL
);

CREATE TABLE "Tbl_Allowance_Mst" (
    "C_Code1" character(10) NOT NULL,
    "C_Name1" character(20) NOT NULL
);

CREATE TABLE "Tbl_Area_Mst" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "C_Sh_Name" character varying(7),
    "C_Region_Code" character varying(10) NOT NULL,
    "C_SalesHQ" character varying(50),
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "n_lami" double precision,
    "n_lgmi" double precision,
    "c_district_code" character varying(50),
    "C_Classification_Code" character varying(10)
);

CREATE TABLE "Tbl_Autocode_Mst" (
    "c_name" character varying(50),
    "n_autoflag" smallint,
    "n_autocodelgth" integer DEFAULT 7
);

CREATE TABLE "Tbl_BrandFstypeMap" (
    "C_Brand_code" character varying(10) NOT NULL,
    "N_flag" integer,
    "N_fstype" integer NOT NULL
);

CREATE TABLE "Tbl_CME_RTM_Air_Booking" (
    "n_id" integer NOT NULL DEFAULT nextval('"Tbl_CME_RTM_Air_Booking_n_id_seq"'::regclass),
    "N_Request_ID" numeric NOT NULL,
    "N_Entity_Type" integer NOT NULL,
    "N_Entity_ID" numeric NOT NULL,
    "c_doc_code" character varying(1000),
    "c_fs_code" character varying(1000),
    "NameofPassenger" character varying(500),
    "PREFIX" character varying(500),
    "AGE" character varying(500),
    "MOBILENO" character varying(500),
    "GENDER" character varying(500),
    "PURPOSEOFTRAVEL" character varying(500),
    "JOURNEYTYPE" character varying(500),
    "TRAVELDATE" character varying(500),
    "TRAVELTYPESINGLERETURN" character varying(500),
    "TRAVELFROMCITY" character varying(500),
    "DEPATURETIMEPREFERENCE" character varying(500),
    "TRAVELTOCITY" character varying(500),
    "ARRIVALTIMEPREFERENCE" character varying(500),
    "MEALS" character varying(500),
    "SEATPREFERENCE" character varying(500),
    "AIRLINEPREFERENCE" character varying(500),
    "AdditionalInformation" character varying(500),
    "EXPHEAD" character varying(500),
    "DEPOT" character varying(500),
    "IFINTERNATIONALVISAEXIST" character varying(500),
    "DATEOFBIRTHOFCHILD" character varying(500),
    "DOBOFCHILD" character varying(500)
);

CREATE TABLE "Tbl_CME_RTM_Assets_Mst" (
    "N_Srno" integer NOT NULL DEFAULT nextval('"Tbl_CME_RTM_Assets_Mst_N_Srno_seq"'::regclass),
    "C_Name" character varying(200) NOT NULL,
    "N_Quantity_Required" integer,
    "N_Deleted" integer,
    "C_Created_By" character varying(10) NOT NULL,
    "D_Created_On" timestamp without time zone NOT NULL,
    "C_Modified_By" character varying(10),
    "D_Modified_On" timestamp without time zone
);

CREATE TABLE "Tbl_CME_RTM_Cab_Booking" (
    "n_id" integer NOT NULL DEFAULT nextval('"Tbl_CME_RTM_Cab_Booking_n_id_seq"'::regclass),
    "N_Request_ID" numeric NOT NULL,
    "N_Entity_Type" integer NOT NULL,
    "N_Entity_ID" numeric NOT NULL,
    "c_doc_code" character varying(1000),
    "c_fs_code" character varying(1000),
    "NameOfTheGuest" character varying(500),
    "MobileNoOfTheGuest" character varying(500),
    "CoordinatorPersonFromAlkem" character varying(500),
    "MobileNoOfCoordinator" character varying(500),
    "DutyType" character varying(500),
    "VehicleGroup" character varying(500),
    "CityFrom" character varying(500),
    "CityTo" character varying(500),
    "StartDate" character varying(500),
    "EndDate" character varying(500),
    "ReportingTime" character varying(500),
    "ReportingAddress" character varying(500),
    "DropAddress" character varying(500),
    "FlightNumber" character varying(500),
    "Remarks" character varying(500),
    "PurposeOfTravel" character varying(500),
    "ExpHead" character varying(500),
    "Depot" character varying(500),
    "AdditionalContactsName1" character varying(500),
    "AdditionalContactsMobileNo1" character varying(500),
    "AdditionalContactsEmail" character varying(500),
    "AdditionalContactsName2" character varying(500),
    "AdditionalContactsMobileNo2" character varying(500),
    "AdditionalContactsEmail2" character varying(500),
    "AdditionalContactsName3" character varying(500),
    "AdditionalContacts3Mobile" character varying(500),
    "AdditionalContacts3Email" character varying(500),
    "RequirementFor" character varying(500),
    "requiredfor" character varying(200),
    "requiredagain" character varying(200)
);

CREATE TABLE "Tbl_CME_RTM_Control_Panel" (
    "N_Srno" integer NOT NULL DEFAULT nextval('"Tbl_CME_RTM_Control_Panel_N_Srno_seq"'::regclass),
    "C_Request_Acknowledgement_Url" character varying(500),
    "C_Approve_Acknowledgement_Url" character varying(500),
    "C_Confirm_Acknowledgement_Url" character varying(500),
    "C_UCPMP_Guidelines_Url" character varying(500),
    "C_Created_By" character varying(10) NOT NULL,
    "D_Created_On" timestamp without time zone NOT NULL,
    "C_Modified_By" character varying(10) NOT NULL,
    "D_Modified_On" timestamp without time zone NOT NULL
);

CREATE TABLE "Tbl_CME_RTM_Control_Panel_Active_Rps_Mode" (
    "N_Srno" integer NOT NULL DEFAULT nextval('"Tbl_CME_RTM_Control_Panel_Active_Rps_Mode_N_Srno_seq"'::regclass),
    "C_Docinv_Code" character varying(200),
    "N_Deleted" integer,
    "C_Created_By" character varying(10),
    "D_Created_On" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "C_Modified_By" character varying(10),
    "D_Modified_On" timestamp without time zone
);

CREATE TABLE "Tbl_CME_RTM_Day_Eve_Items" (
    "N_Srno" integer NOT NULL DEFAULT nextval('"Tbl_CME_RTM_Day_Eve_Items_N_Srno_seq"'::regclass),
    "N_Day_Eve" integer,
    "C_Name" character varying(200) NOT NULL,
    "N_Deleted" integer,
    "C_Created_By" character varying(10) NOT NULL,
    "D_Created_On" timestamp without time zone NOT NULL,
    "C_Modified_By" character varying(10),
    "D_Modified_On" timestamp without time zone
);

CREATE TABLE "Tbl_CME_RTM_Expense" (
    "N_Srno" integer NOT NULL DEFAULT nextval('"Tbl_CME_RTM_Expense_N_Srno_seq"'::regclass),
    "N_Request_ID" numeric NOT NULL,
    "N_General_Setup_ID" numeric NOT NULL,
    "D_Activity_Date" timestamp without time zone NOT NULL,
    "C_Start_Time" character varying(20) NOT NULL,
    "C_End_Time" character varying(20) NOT NULL,
    "N_No_Attendance_Docters" integer NOT NULL,
    "N_No_Attendance_Moderator" integer NOT NULL,
    "N_No_Attendance_Employees" integer NOT NULL,
    "N_No_Attendance_Field_Team" integer NOT NULL,
    "C_MOM_Document_Url" character varying(500),
    "C_MOM_Document_Name" character varying(200),
    "C_MOM_Document_File_Type" character varying(100),
    "C_Remarks" text NOT NULL,
    "N_Status" integer,
    "N_Last_Activity_Done_By" character varying(20),
    "d_Last_Activity_Date" timestamp without time zone,
    "C_Last_Activity_Remarks" character varying(1000),
    "C_Created_By" character varying(10) NOT NULL,
    "D_Created_On" timestamp without time zone NOT NULL,
    "C_Modified_By" character varying(10) NOT NULL,
    "D_Modified_On" timestamp without time zone NOT NULL
);

CREATE TABLE "Tbl_CME_RTM_Expense_Details" (
    "N_Srno" integer NOT NULL DEFAULT nextval('"Tbl_CME_RTM_Expense_Details_N_Srno_seq"'::regclass),
    "N_Expence_ID" numeric NOT NULL,
    "D_Bill_Date" timestamp without time zone NOT NULL,
    "C_Bill_Number" character varying(200),
    "N_Bill_Amount" numeric NOT NULL,
    "N_Expence_Code" character varying(20),
    "C_Bill_Url" character varying(500),
    "C_Receipt_Url" character varying(500),
    "N_Deleted" integer,
    "C_Created_By" character varying(10) NOT NULL,
    "D_Created_On" timestamp without time zone NOT NULL,
    "C_Modified_By" character varying(10) NOT NULL,
    "D_Modified_On" timestamp without time zone NOT NULL
);

CREATE TABLE "Tbl_CME_RTM_Expense_Documents" (
    "N_Srno" integer NOT NULL DEFAULT nextval('"Tbl_CME_RTM_Expense_Documents_N_Srno_seq"'::regclass),
    "N_Expense_ID" numeric NOT NULL,
    "C_Document_Type" integer,
    "C_Document_Url" character varying(500),
    "C_Document_Name" character varying(200),
    "C_Document_File_Type" character varying(100),
    "N_Deleted" integer,
    "C_Created_By" character varying(10) NOT NULL,
    "D_Created_On" timestamp without time zone NOT NULL,
    "C_Modified_By" character varying(10) NOT NULL,
    "D_Modified_On" timestamp without time zone NOT NULL
);

CREATE TABLE "Tbl_CME_RTM_Hotel_Booking" (
    "n_id" integer NOT NULL DEFAULT nextval('"Tbl_CME_RTM_Hotel_Booking_n_id_seq"'::regclass),
    "N_Request_ID" numeric NOT NULL,
    "N_Entity_Type" integer NOT NULL,
    "N_Entity_ID" numeric NOT NULL,
    "c_doc_code" character varying(1000) NOT NULL,
    "c_fs_code" character varying(1000),
    "GuestName" character varying(500),
    "MOBILENO" character varying(500),
    "NOOFPAX" character varying(500),
    "NOOFCHILD" character varying(500),
    "AGEOFTHECHILD" character varying(500),
    "CHILDWITHBED" character varying(500),
    "NOOFROOMS" character varying(500),
    "TYPEOFROOM" character varying(500),
    "CHECKINDATE" character varying(500),
    "CHECKINTIME" character varying(500),
    "CHECKOUTDATE" character varying(500),
    "CHECKOUTTIME" character varying(500),
    "MEALPLAN" character varying(500),
    "HOTELCATEGORY" character varying(500),
    "PREFERREDHOTELNAME" character varying(500),
    "PREFERREDLOCATION" character varying(500),
    "COORDINATORPERSON" character varying(500),
    "COORDINATORCONTACTNUMBER" character varying(500),
    "ADDITIONALINFORMATION" character varying(500),
    "PURPOSEOFTRAVEL" character varying(500),
    "EXPHEAD" character varying(500),
    "DEPOT" character varying(500),
    "ADDITIONALCONTACTPERSONNAME" character varying(500),
    "ADDITIONALCONTACTPERSONNUMBER" character varying(500),
    "ADDITIONALCONTACTPERSONEMAIL" character varying(500),
    "NOOFADULTS" character varying(500)
);

CREATE TABLE "Tbl_CME_RTM_Meal_Plan" (
    "Id" integer NOT NULL DEFAULT nextval('"Tbl_CME_RTM_Meal_Plan_Id_seq"'::regclass),
    "c_code" character varying(500) NOT NULL,
    "c_name" character varying(500) NOT NULL,
    "n_delete" integer NOT NULL
);

CREATE TABLE "Tbl_CME_RTM_Request" (
    "N_Srno" integer NOT NULL DEFAULT nextval('"Tbl_CME_RTM_Request_N_Srno_seq"'::regclass),
    "N_General_Setup_ID" numeric NOT NULL,
    "D_Request_Date" timestamp without time zone NOT NULL,
    "D_Activity_Date" timestamp without time zone NOT NULL,
    "C_FS_Code" character varying(20) NOT NULL,
    "C_Request_Type" integer,
    "N_Topic_ID" character varying(200) NOT NULL,
    "N_Type_ID" character varying(200) NOT NULL,
    "C_Reamrks" text,
    "N_Day_Eve" integer,
    "C_Day_Eve_Data" character varying(200),
    "C_Document_Url" character varying(500),
    "N_Expected_Attendance_DR" integer,
    "N_Expected_Attendance_Employee" integer,
    "N_Booking_Mode" integer,
    "N_Status" integer,
    "Acknowledgement_check" integer DEFAULT 0,
    "N_Last_Activity_Done_By" character varying(20),
    "d_Last_Activity_Date" timestamp without time zone,
    "C_Last_Activity_Remarks" character varying(1000),
    "C_Created_By" character varying(10) NOT NULL,
    "D_Created_On" timestamp without time zone NOT NULL,
    "C_Modified_By" character varying(10),
    "D_Modified_On" timestamp without time zone,
    "C_UCPMP_Guidelines_Url" character varying(500),
    "C_Acknowledgement_Url" character varying(500)
);

CREATE TABLE "Tbl_CME_RTM_Request_Asset_Details" (
    "N_Srno" integer NOT NULL DEFAULT nextval('"Tbl_CME_RTM_Request_Asset_Details_N_Srno_seq"'::regclass),
    "N_Request_ID" numeric NOT NULL,
    "N_Asset_ID" numeric NOT NULL,
    "N_Qty" numeric,
    "C_Remarks" text,
    "C_Created_By" character varying(10) NOT NULL,
    "D_Created_On" timestamp without time zone NOT NULL,
    "C_Modified_By" character varying(10),
    "D_Modified_On" timestamp without time zone
);

CREATE TABLE "Tbl_CME_RTM_Request_Booking_Details_Local" (
    "N_Srno" integer NOT NULL DEFAULT nextval('"Tbl_CME_RTM_Request_Booking_Details_Local_N_Srno_seq"'::regclass),
    "N_Request_ID" numeric NOT NULL,
    "C_Hotel_Name" character varying(200),
    "C_Address" character varying(500),
    "N_City" character varying(200),
    "N_Pin_Code" integer,
    "N_No_Pax" integer,
    "C_Paymet_Terms_Conditions" character varying(500),
    "N_Advance_Amount" double precision,
    "N_EmailID" character varying(200),
    "N_Advance_Fs_Type" integer,
    "C_Fs_Code" character varying(20),
    "C_Created_By" character varying(10) NOT NULL,
    "D_Created_On" timestamp without time zone NOT NULL,
    "C_Modified_By" character varying(10),
    "D_Modified_On" timestamp without time zone
);

CREATE TABLE "Tbl_CME_RTM_Request_Booking_Details_Travel_Desk" (
    "N_Srno" integer NOT NULL DEFAULT nextval('"Tbl_CME_RTM_Request_Booking_Details_Travel_Desk_N_Srno_seq"'::regclass),
    "N_Request_ID" numeric NOT NULL,
    "C_Location" character varying(200),
    "D_Date" timestamp without time zone,
    "C_Preferred_Hotel" character varying(200),
    "C_Time" character varying(20),
    "C_Seating_Arrangement" character varying(200),
    "C_Meal_Preference" character varying(200),
    "C_Remarks" text,
    "C_Created_By" character varying(10) NOT NULL,
    "D_Created_On" timestamp without time zone NOT NULL,
    "C_Modified_By" character varying(10),
    "D_Modified_On" timestamp without time zone
);

CREATE TABLE "Tbl_CME_RTM_Request_Moderators" (
    "N_Srno" integer NOT NULL DEFAULT nextval('"Tbl_CME_RTM_Request_Moderators_N_Srno_seq"'::regclass),
    "N_Request_ID" numeric NOT NULL,
    "C_Moderator_Code" character varying(20) NOT NULL,
    "C_Pan_Number" character varying(20),
    "C_Pan_URL" character varying(500),
    "N_Deleted" integer,
    "C_Created_By" character varying(10) NOT NULL,
    "D_Created_On" timestamp without time zone NOT NULL,
    "C_Modified_By" character varying(10),
    "D_Modified_On" timestamp without time zone
);

CREATE TABLE "Tbl_CME_RTM_Request_Speakers" (
    "N_Srno" integer NOT NULL DEFAULT nextval('"Tbl_CME_RTM_Request_Speakers_N_Srno_seq"'::regclass),
    "N_Request_ID" numeric NOT NULL,
    "C_Speaker_Code" character varying(20) NOT NULL,
    "C_Pan_Number" character varying(20),
    "C_Pan_URL" character varying(500),
    "N_Deleted" integer,
    "C_Created_By" character varying(10) NOT NULL,
    "D_Created_On" timestamp without time zone NOT NULL,
    "C_Modified_By" character varying(10),
    "D_Modified_On" timestamp without time zone
);

CREATE TABLE "Tbl_CRM_TemplateUser_Filter" (
    "n_srno" numeric NOT NULL,
    "n_template_ID" numeric NOT NULL,
    "n_flag" smallint NOT NULL,
    "c_empcode" character varying(50),
    "c_location" character varying(50),
    "c_department" character varying(50),
    "n_fstype" integer,
    "c_hqcode" character varying(50),
    "c_regioncode" character varying(50),
    "c_zonecode" character varying(50),
    "n_status" integer
);

CREATE TABLE "Tbl_CampaignRequest_Det" (
    "n_srNo" integer,
    "c_DoctCode" character varying(50)
);

CREATE TABLE "Tbl_CampaignRequest_Hdr" (
    "n_srNo" integer NOT NULL DEFAULT nextval('"Tbl_CampaignRequest_Hdr_n_srNo_seq"'::regclass),
    "c_CampaignCode" character varying(10),
    "d_Date" timestamp without time zone,
    "c_Note" character varying(200),
    "n_Status" smallint,
    "c_RequestedBy" character varying(50),
    "c_ApprovedBy" character varying(50),
    "d_ApprovedDate" timestamp without time zone,
    "c_ApprovelNote" character varying(200),
    "n_Deleted" smallint DEFAULT '0'::smallint,
    "n_Rejected" smallint DEFAULT '0'::smallint,
    "c_SelectedFs" character varying(20),
    "c_subarea_code" text,
    "C_rqst_Status" character varying(5),
    "c_NextApprvl_FS" character varying(10),
    "c_confirmedby" character varying(10),
    "d_confirmed_date" timestamp without time zone,
    "c_confirmnote" character varying(200)
);

CREATE TABLE "Tbl_Campaign_Itemdet" (
    "c_Code" character varying(10),
    "c_ItemCode" character varying(50),
    "n_Type" smallint
);

CREATE TABLE "Tbl_Campaign_Mst" (
    "c_Code" character varying(10) NOT NULL,
    "c_Name" character varying(100),
    "d_Date_From" timestamp without time zone,
    "d_Date_to" timestamp without time zone,
    "n_No_Visit" numeric,
    "c_Division_Name" character varying(50),
    "c_BrandGrp" text,
    "c_Grade" text,
    "n_Incentive" numeric,
    "c_Category" text,
    "c_Note" character varying(100),
    "n_Status" integer,
    "n_Deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "d_Created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_Modified" timestamp without time zone,
    "c_Modifier" character varying(10),
    "c_RegionCode" text,
    "n_No_of_Doctors" integer,
    "n_rqst_setupid" integer
);

CREATE TABLE "Tbl_Campaign_Zonedet" (
    "c_Code" character varying(10),
    "c_ZoneCode" character varying(50)
);

CREATE TABLE "Tbl_Candidate_Document" (
    "C_Document_code" character varying(50),
    "C_Candidate_Code" character varying(50),
    "c_doc_path" character varying(50),
    "n_deleted" integer
);

CREATE TABLE "Tbl_Category_Mst" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "C_Sh_Name" character(10),
    "N_Type" integer,
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10) DEFAULT 'ADM0001'::character varying,
    "n_CatStatus" integer DEFAULT 1,
    "c_image" character varying(500)
);

CREATE TABLE "Tbl_Category_Mst_temp" (
    "c_code" character varying(10),
    "c_name" character varying(50),
    "c_sh_name" character varying(10),
    "n_deleted" integer,
    "d_date" character varying(30),
    "d_ldate" character varying(30),
    "c_modiuser" character varying(30)
);

CREATE TABLE "Tbl_Change_Req_Log" (
    "C_fs_code" character varying(10) NOT NULL,
    "C_Emp_Code" character varying(10) NOT NULL,
    "C_Doctor_Code" character varying(10) NOT NULL,
    "D_datetime" timestamp without time zone NOT NULL,
    "C_Field_Name" character varying(100) NOT NULL,
    "C_old_value" character varying(500),
    "C_new_value" character varying(500)
);

CREATE TABLE "Tbl_Chem_Request" (
    "n_SerialNo" integer NOT NULL DEFAULT nextval('"Tbl_Chem_Request_n_SerialNo_seq"'::regclass),
    "C_Name" character varying(50) NOT NULL,
    "N_Type" integer NOT NULL,
    "C_Add_1" character varying(50),
    "C_Add_2" character varying(50),
    "C_City" character varying(50),
    "C_State" character varying(50),
    "C_Pin" character varying(10),
    "C_Phone" character varying(20),
    "C_RefNo" character varying(50),
    "C_Area_Code" character varying(10),
    "C_Subarea_Code" character varying(10),
    "C_CreatedBy" character varying(50),
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "C_TinNo" character varying(50),
    "C_LicNo" character varying(50),
    "C_Add_3" character varying(50),
    "C_Add_4" character varying(50),
    "C_ContactPersonMobileNo" character varying(20),
    "C_OutletType" character varying(20),
    "C_Grade" character varying(50),
    "C_Landmark" character varying(50),
    "C_ContactPerson" character varying(50),
    "C_Email_ID" character varying(50),
    "D_DOB" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "C_LicenseNo_Food" character varying(50),
    "C_OutletContactNo" character varying(20),
    "C_Approved" character varying(1) NOT NULL DEFAULT '0'::character varying,
    "n_Sft_shop" numeric,
    "n_No_of_display_Shelf" numeric,
    "c_desc_display_shelf" character varying(100),
    "n_Front_Board_Height" numeric,
    "n_Front_Board_length" numeric,
    "n_Backlit" numeric,
    "n_Computerised" numeric,
    "n_lami" double precision,
    "n_lgmi" double precision,
    "c_sort" character varying(10)
);

CREATE TABLE "Tbl_Chem_SalesD" (
    "n_srno" numeric NOT NULL,
    "n_row_id" numeric NOT NULL,
    "c_item_code" character varying(10),
    "n_qty" numeric
);

CREATE TABLE "Tbl_Chem_SalesH" (
    "n_srno" numeric NOT NULL,
    "d_date" timestamp without time zone,
    "c_chem_code" character varying(10),
    "c_doc_code" character varying(10),
    "n_total" numeric
);

CREATE TABLE "Tbl_Chemist_Type" (
    "c_code" character varying(10) NOT NULL,
    "c_name" character varying(50) NOT NULL,
    "c_sh_name" character varying(7),
    "n_pur" numeric,
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "C_EMailPassword" character varying(500),
    "C_EMailID" character varying(3000),
    "C_DisplayNameEmail" character varying(100)
);

CREATE TABLE "Tbl_Circular_Def_Det" (
    "c_code" character varying(10) NOT NULL,
    "c_emp_code" character varying(50) NOT NULL,
    "n_status" integer NOT NULL DEFAULT 0,
    "d_Assigned_Date" timestamp without time zone NOT NULL,
    "d_read_Date" timestamp without time zone,
    "n_must_read" integer NOT NULL
);

CREATE TABLE "Tbl_Classification_Mst" (
    "C_Code" character varying(20) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "C_Sh_Name" character varying(7),
    "n_deleted" integer NOT NULL DEFAULT 0,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "c_type" integer
);

CREATE TABLE "Tbl_Clinical_Trail_Experience" (
    "c_code" character varying(50),
    "c_name" character varying(200),
    "d_created" timestamp without time zone,
    "d_modified_date" timestamp without time zone,
    "n_deleted" integer,
    "n_status" integer,
    "n_score" integer
);

CREATE TABLE "Tbl_Collateral_Item_Master_Mst" (
    "C_Code" character varying(20) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "C_Sh_Name" character varying(7),
    "n_deleted" integer NOT NULL,
    "n_status" integer NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10)
);

CREATE TABLE "Tbl_Commessage_Mst" (
    "N_Srno" integer NOT NULL DEFAULT nextval('"Tbl_Commessage_Mst_N_Srno_seq"'::regclass),
    "C_CreatedBy" character varying(50) NOT NULL,
    "C_Subject" character varying(50),
    "C_Message" text,
    "D_Date" timestamp without time zone NOT NULL,
    "N_Day" numeric,
    "D_Modified" timestamp without time zone,
    "C_ModifiedBy" character varying(50),
    "N_Deleted" integer NOT NULL DEFAULT 0
);

CREATE TABLE "Tbl_Compensation_mst" (
    "C_Code" character varying(10),
    "C_Name" character varying(100),
    "N_MaxLimit" numeric,
    "C_Sh_Name" character varying(50),
    "C_Note" character varying(100),
    "N_Deleted" numeric,
    "D_Created" timestamp without time zone,
    "D_Modified" timestamp without time zone,
    "C_Modifier" character varying(10),
    "C_Designation" character varying(50),
    "C_GrpCode" character varying(50),
    "n_CompensationOrder" integer
);

CREATE TABLE "Tbl_Competator_Audit_Cycle" (
    "C_CODE" character varying(10) NOT NULL,
    "C_CYCLENAME" character varying(10) NOT NULL,
    "D_DATE_FROM" timestamp without time zone NOT NULL,
    "D_DATE_TO" timestamp without time zone,
    "N_DELETED" smallint NOT NULL DEFAULT '0'::smallint
);

CREATE TABLE "Tbl_Competator_Info_Det" (
    "N_SRNO" numeric NOT NULL,
    "C_BRAND_CODE" character varying(10) NOT NULL,
    "n_rowid" integer NOT NULL,
    "C_COMPETITOR_PR_NAME" character varying(100),
    "N_RX" numeric NOT NULL,
    "N_QTY" numeric NOT NULL,
    "N_VALUE" numeric NOT NULL,
    "N_RXTYPE" numeric NOT NULL,
    "N_QTYTYPE" numeric NOT NULL,
    "N_VALUETYPE" numeric NOT NULL,
    "N_VALUEIN" numeric NOT NULL,
    "n_type" integer NOT NULL DEFAULT 0,
    "N_WEIGHTAGE" numeric,
    "N_WEIGHTAGETYPE" numeric
);

CREATE TABLE "Tbl_Competator_Info_Mst" (
    "N_SRNO" numeric NOT NULL,
    "C_FS_CODE" character varying(10) NOT NULL,
    "C_DOCTOR_CODE" character varying(10) NOT NULL,
    "C_CHEMIST_NAME" character varying(100),
    "C_CHEMIST_PLACE" character varying(50) NOT NULL,
    "C_CHEMIST_PHNO" character varying(25) NOT NULL,
    "C_SOURCE_CODE" character varying(10) NOT NULL,
    "D_DATE" timestamp without time zone NOT NULL,
    "C_AUDIT_CYCLE_CODE" character(10),
    "C_CHEMIST_CODE" character varying(20),
    "N_DCRNO" numeric
);

CREATE TABLE "Tbl_Competator_Mst" (
    "C_BRAND_CODE" character varying(10) NOT NULL,
    "C_PRODUCT_NAME" character varying(100) NOT NULL,
    "C_MFAC_NAME" character varying(50) NOT NULL,
    "N_PRIORITY" integer NOT NULL DEFAULT 0,
    "N_CREATION_TYPE" smallint NOT NULL DEFAULT '0'::smallint,
    "D_CREATE_DATE" timestamp without time zone NOT NULL,
    "D_MODIFY_DATE" timestamp without time zone,
    "C_CREATE_USER" character varying(10) NOT NULL,
    "C_MODIFY_USER" character varying(10),
    "N_DELETED" smallint NOT NULL DEFAULT '0'::smallint,
    "N_unit_price" numeric NOT NULL DEFAULT '0'::numeric
);

CREATE TABLE "Tbl_Competator_Setup" (
    "N_RX_ACTIVE" smallint NOT NULL,
    "N_QTYTYPE_ACTIVE" smallint NOT NULL,
    "N_VALUETYPE_ACTIVE" smallint NOT NULL,
    "N_RXTYPE" numeric NOT NULL,
    "N_QTYTYPE" numeric NOT NULL,
    "N_VALUETYPE" numeric NOT NULL,
    "N_RXTYPE_CHANGE" smallint NOT NULL,
    "N_QTYTYPE_CHANGE" smallint NOT NULL,
    "N_VALUETYPE_CHANGE" smallint NOT NULL,
    "N_AUDIT_FREQUENCY" integer NOT NULL,
    "N_VALUE_IN" numeric NOT NULL,
    "N_EDITDAYS" integer NOT NULL DEFAULT 0,
    "N_WEIGHTAGE_ACTIVE" smallint,
    "N_WEIGHTAGETYPE" numeric,
    "N_WEIGHTAGETYPE_CHANGE" smallint,
    "n_SourceVisibility" integer,
    "n_value_auto" integer NOT NULL DEFAULT 0,
    "n_unitprice_consider" integer NOT NULL DEFAULT 1,
    "n_item_display" integer NOT NULL DEFAULT 0,
    "n_rcpa_doctor_display" integer NOT NULL DEFAULT 0,
    "n_emailtrigger_fs" integer,
    "n_emailtrigger_manager" integer,
    "n_emailtrigger_manager_desg" text
);

CREATE TABLE "Tbl_Competator_Source" (
    "C_CODE" character varying(10) NOT NULL,
    "C_NAME" character varying(50) NOT NULL,
    "N_DELETED" smallint NOT NULL DEFAULT '0'::smallint,
    "n_chemist_flag" integer
);

CREATE TABLE "Tbl_ControlPanel_Mst" (
    "N_Srno" integer NOT NULL DEFAULT nextval('"Tbl_ControlPanel_Mst_N_Srno_seq"'::regclass),
    "N_Visitorder" integer NOT NULL,
    "N_workedwithmcr" integer,
    "N_MCLshow" integer NOT NULL,
    "N_MtpSbmMcr" integer NOT NULL,
    "N_MtpSbmDcr" integer NOT NULL,
    "N_MtpappMcr" integer NOT NULL,
    "N_MtpappDcr" integer NOT NULL,
    "N_Stpsubmitiondcr" integer,
    "N_PriTargetOn" integer,
    "N_Doctortime" integer,
    "n_mscexpences" integer,
    "N_SecTargeton" integer,
    "N_mtpsubarea" integer NOT NULL,
    "c_prefixTN" character varying(5),
    "c_prefixGDN" character varying(5),
    "N_year" integer,
    "N_secvalue" integer,
    "N_Stpsubmitionmcr" integer,
    "N_TargItemBrand" integer,
    "n_closingday" integer,
    "n_pri_inv_imp" integer,
    "c_tacode" character varying(50),
    "c_dacode" character varying(50),
    "c_monthly" character varying(10),
    "c_reimbursement" character varying(10),
    "c_rate1" character varying(100),
    "c_rate3" character varying(100),
    "c_rate4" character varying(100),
    "c_rate5" character varying(100),
    "n_monthfrom" integer,
    "n_monthto" integer,
    "n_da_flag" integer,
    "n_da_per" numeric,
    "c_rate2" character varying(100),
    "n_Dcr_Product_Mandatory" integer,
    "n_Dcr_sample_madatory" integer,
    "n_employ_login" integer,
    "n_month_exp_review" integer DEFAULT 0,
    "N_JobDesc" integer NOT NULL DEFAULT 0,
    "N_HQ_Address" integer NOT NULL DEFAULT 0,
    "n_Circular_DashB" integer,
    "n_webuserLimit" numeric,
    "n_dcrinvrt" integer,
    "N_ValuVisible" integer,
    "n_summary_details" integer,
    "n_no_mnth" integer,
    "n_gdnflag" integer,
    "n_Exp_Reconfirm_days" integer,
    "n_pri_sales" integer,
    "n_sec_sales" integer,
    "c_company_type" character varying(10),
    "n_tinno" integer,
    "n_licno" integer,
    "n_licfoodno" integer,
    "c_inv_plan_lblamt" character varying(50),
    "n_inv_saleshistory" integer,
    "n_inv_rate_edit" integer,
    "n_chem_pin" integer,
    "n_chem_phone" integer,
    "n_doctor_pob_details" integer,
    "n_divisionPopupInterval" integer,
    "n_chem_req_approval_req" integer,
    "n_claim_type" integer,
    "n_Doc_Mcr_WorkDetails" integer,
    "n_factor" numeric,
    "n_edit_order" integer,
    "n_MCRAddmarks" integer DEFAULT 0,
    "n_dcr_doctorlrole_disply" integer,
    "n_Mcr_subarea_multi_validation" integer,
    "c_integration_alert_email" character varying(500),
    "n_pri_order_rate_on" integer,
    "n_sec_order_rate_on" integer,
    "n_Dcr_Others_Product_Mandatory" integer NOT NULL DEFAULT 0,
    "n_Dcr_Others_sample_madatory" integer NOT NULL DEFAULT 0,
    "n_empmst_email_mandatory" integer,
    "n_Others_pob_details" integer,
    "n_Edetail_Voice_rec" integer,
    "n_CompetitorFlag_mob" integer,
    "n_ConsiderGrade_NoOfVisit_ForDrDisplay" integer NOT NULL DEFAULT 0,
    "n_coreproduct_priority" integer,
    "c_DownLoad_FilePath" character varying(1000) NOT NULL DEFAULT 'D:\ExportReport'::character varying,
    "n_payment" integer,
    "n_WH_flag" integer,
    "n_leaveValidationDCR" integer DEFAULT 0,
    "c_circularfileext" character varying(1000),
    "n_MMIEnabled" integer,
    "n_edetail" integer,
    "n_dcr_visit" integer,
    "n_cat_edetail" integer,
    "n_DcrExistsOnDayBeforeRptDt" integer,
    "n_AddSTPDAForOther" integer,
    "n_MtpApproval_format" integer,
    "c_password" character varying(100) NOT NULL DEFAULT '0'::character varying,
    "n_McrExistsOnDayBeforeRptDt" integer DEFAULT 0,
    "n_DaysExtendedForExpApproval" integer,
    "n_STPUploadEnabled" integer DEFAULT 0,
    "n_HolidayValidationDCR" integer,
    "n_SundayValidationDCR" integer,
    "n_secsales_import_multidivision" integer,
    "n_ExpenseDailyUpload" integer DEFAULT 0,
    "n_DcrDrNoteMandatory" integer DEFAULT 0,
    "n_DcrMCrMiscellaneousEnable" integer DEFAULT 0,
    "n_stayflg" character varying(10),
    "n_stayflg_mcr" character varying(10),
    "n_syncdays" integer NOT NULL DEFAULT 3,
    "n_timeout" integer NOT NULL DEFAULT 120,
    "n_company_status" integer NOT NULL DEFAULT 1,
    "n_Mcr_doctor_pob_details" integer NOT NULL DEFAULT 0,
    "c_hr_recruit_confirm_fsType" integer,
    "N_DOC_FLAG_MAND" integer,
    "n_stay_auto_mcr" integer,
    "n_stay_auto" integer,
    "c_candidte_confrm" character varying(50),
    "n_Dcr_productvalidateornot" integer,
    "n_SetWeeklyHoliday" integer,
    "n_DCR_autoreportingdate" integer,
    "n_addworkedwithself" integer DEFAULT 0,
    "dcr_misc_limit_hide" integer DEFAULT 0,
    "mcr_misc_limit_hide" integer DEFAULT 0,
    "n_doc_phone_order" integer DEFAULT 0,
    "n_android_camera" integer NOT NULL DEFAULT 0,
    "n_SequentialCheckingDCRMCRSeperate" integer DEFAULT 0,
    "n_GPS" integer,
    "n_Dcr_Patient_Product_Mandatory" integer DEFAULT 0,
    "n_DcrPatientNoteMandatory" integer DEFAULT 0,
    "n_DcrPatientSalesEntry" integer DEFAULT 0,
    "n_Exp_RelDoc_Upload" integer DEFAULT 1,
    "n_multi_category_edetail" integer,
    "n_mtp_sfs_btnapproval" integer,
    "n_mcr_chemistPOB" integer,
    "n_android_mtp_variance" integer,
    "n_android_remark" integer,
    "n_android_expense_entry" integer,
    "n_android_promotional_activity" integer,
    "n_android_others" integer,
    "n_alkem_logo" integer,
    "n_Core_Product_Mapping" integer,
    "N_DoctorPOBlockSettings" integer,
    "n_Android_User_limit" integer,
    "n_Mobweb_User_limit" integer,
    "n_Edetailing_User_limit" integer,
    "n_core_product_autosave" integer,
    "n_ManageMandatoryTempDrListDCR" integer,
    "n_chemist_phone_DCR" integer,
    "n_stockist_phone_dcr" integer,
    "n_chemist_SOH_dcr" integer,
    "n_stockist_SOH_dcr" integer,
    "n_chemist_Photo_dcr" integer,
    "n_stockist_Photo_dcr" integer,
    "c_queryup" character varying(200),
    "c_querys" character varying(200),
    "n_disablelocalfilesave" integer,
    "c_filecopyIP" character varying(100),
    "n_FmcgDaywise" integer NOT NULL DEFAULT 0,
    "n_FmcgWeekwise" integer NOT NULL DEFAULT 0,
    "n_FmcgMonthwise" integer NOT NULL DEFAULT 0,
    "N_MtpCopy" integer,
    "N_DocUpdateMngr" integer NOT NULL DEFAULT 0,
    "n_ModuleLeaveSkipApproval" integer,
    "n_Dcr_Hospital_Product_Mandatory" integer,
    "n_Dcr_Hospital_sample_mandatory" integer,
    "n_Hospital_pob_details" integer,
    "n_MTP_ProductMandatory" integer,
    "n_MTP_SampleMandatory" integer,
    "n_MTPPlaceOfWorkMandatory" integer,
    "N_RoiCalcFlag" integer,
    "d_LoginTime_Check" character varying(100),
    "N_STP_VIEW" integer,
    "n_subareaFilter_FMCG" integer,
    "n_mtp_list_in_dcr" integer,
    "n_No_of_Campaign_Doctors" integer,
    "c_latecalltime" character varying(50),
    "n_WorkedWithManagerType" integer,
    "n_STP_Update" integer,
    "n_ModuleMTPSkipApproval" integer,
    "n_Mcr_Product_Mandatory" integer,
    "n_Mcr_Gift_Mandatory" integer,
    "n_Mcr_Sample_Mandatory" integer,
    "n_ClinicHospitalAddressCboOrTxt" integer DEFAULT 0,
    "n_exclud_Sun_Holi_lock" integer,
    "n_balqtyvalidateDCR" integer,
    "n_captchavalidate" integer DEFAULT 0,
    "n_ShowMtpSubareaINRetailerActivity" integer,
    "n_campaign_confirmation" integer DEFAULT 0,
    "c_androidautologouttime" character varying(50),
    "n_mtp_DoctorMandatory" integer,
    "n_Mtp_ExcelUpload_Subarea_NameOrCode" integer,
    "n_geo_distance" integer,
    "n_geo_track" integer,
    "n_download_worked_data" integer,
    "n_geo_time" integer,
    "c_android_db_mail_address" character varying(500),
    "n_holidayleave_flg" integer,
    "n_sundayleave_flg" integer,
    "n_ModuleExpenseSkipApproval" integer,
    "n_gps_mand_logout" integer,
    "c_GoogleAPIKey_Placename" character varying(500),
    "c_location_tracking_time" character varying(50),
    "n_Core_Pdt" integer,
    "n_PrpPreviousDateEnable" integer,
    "N_RpsPreviousDateEnable" integer,
    "c_GoogleAPIKey_MapLoad" character varying(100),
    "n_Geo_fencing" integer,
    "n_Geo_fencing_meters" integer,
    "n_stpMandForMTp" integer,
    "n_ConsiderCampDrCount" integer,
    "n_dr_CountFlag" integer,
    "n_campgn_frmdate" integer NOT NULL DEFAULT 0,
    "n_RPS_prev_exe_date" integer NOT NULL DEFAULT 0,
    "n_prp_prev_date" integer NOT NULL DEFAULT 0,
    "N_Multilogin_Android" integer,
    "n_BlockDCRMCROnLeaveRequest" integer,
    "n_MultiLogin_Disable" integer,
    "N_internalemail" integer,
    "n_ExpWorkedWithLink" integer,
    "n_edit_TP_in_approval" integer NOT NULL DEFAULT 1,
    "n_expns_areavisited" integer NOT NULL DEFAULT 1,
    "n_expns_leavetype" integer NOT NULL DEFAULT 1,
    "n_Doclimitcheck" integer NOT NULL DEFAULT 0,
    "n_RPSexpensesubmitdays" integer,
    "PrpRps_EmailSMSSend" integer,
    "n_PRP_RPS_send_days" integer,
    "n_PRP_RPS_Enable_sms" integer DEFAULT 0,
    "n_PRP_RPS_Enable_email" integer DEFAULT 0,
    "n_PRPExpenseSubmitDays" integer,
    "N_Auto_Sync" integer,
    "c_EDServiceUserId" character varying(50),
    "c_EDServicePassword" character varying(50),
    "n_survey_agree" integer,
    "n_survey_refNo" integer,
    "n_survey_image" integer,
    "c_survey_authorization_msg" character varying(1000),
    "n_android_mob_notification" integer,
    "n_masterpassword" character varying(100),
    "n_MultipleDcr_PsgQty" integer,
    "n_exp_reconfirm_block" integer NOT NULL DEFAULT 0,
    "n_multiplemcr_pgs" integer,
    "n_dsc_visibleon_fswise_wc" integer,
    "n_balqtyvalidateMCR" integer,
    "n_SampleAllocation_Mcr" integer,
    "n_SampleAllocation_Dcr" integer,
    "n_core_product_numbers" integer NOT NULL DEFAULT 0,
    "n_auto_STP_page" integer NOT NULL DEFAULT 0,
    "n_MandatoryCircular" integer,
    "n_stpvalidityperioddatewise" integer,
    "n_stphqtype" integer,
    "n_stpTAvalidationAllowance" integer,
    "n_stpmodeoftraveldisplay" integer,
    "n_stpexpensesentry" integer,
    "n_stpdailyclaimlimitTA" integer,
    "n_stpvalidityperiodmonthwise" integer,
    "n_visitTypeLimitCheck" integer NOT NULL DEFAULT 0,
    "n_visitTypeLimit" numeric,
    "n_stpdist_block_same_subarea_chk" integer NOT NULL DEFAULT 0,
    "n_hide_stp_visit_type" integer,
    "n_stpfrmtemplate" integer,
    "n_stpdetailsexists_dcr" integer,
    "n_stpdetailsexists_mcr" integer,
    "n_other_area_subarea" integer,
    "n_visibleplusinstpreqappcon" character varying(50),
    "n_transactionlock_dcr" integer,
    "n_transactionlock_mcr" integer,
    "n_transactiondelete_mcr" integer,
    "n_transactiondelete_dcr" integer,
    "n_Balanceqtydisplay_dcr" integer,
    "n_Balanceqtydisplay_mcr" integer,
    "n_auto_leave" integer NOT NULL DEFAULT 0,
    "c_plel_code" character varying(20),
    "n_androiddcr_rcpa_flag" integer,
    "n_expns_aprv_aftr_ss" integer NOT NULL DEFAULT 0,
    "n_mngr_expns_aftr_me" integer NOT NULL DEFAULT 0,
    "n_dcrtomcrcopy" integer DEFAULT 0,
    "n_sessiontimeout" integer,
    "n_passwordvalidation" integer,
    "n_passwordage" integer,
    "n_passwordlength" integer,
    "n_passwordhistory" integer,
    "c_http_header" character varying(10),
    "c_email_server" character varying(100),
    "c_smtp" character varying(1000),
    "c_port" character varying(10),
    "c_mailboxnameallowed" character varying(10),
    "c_enablessl" character varying(10),
    "usedefaultcredentials" character varying(10),
    "c_tanks" text,
    "n_wh_sfa360" boolean,
    "n_dcr_stayAt" integer DEFAULT 0,
    "n_workcontact_no_days" integer,
    "pop_doc_dcr_details_360" integer,
    "pop_che_dcr_details_360" integer,
    "pop_other_details_360" integer,
    "c_c2code" character varying(40),
    "n_geo_max_distance_flag" integer DEFAULT 0,
    "n_geo_max_distance" integer,
    "n_android_edetail_popup_time" integer,
    "n_android_edetail_popup_show" integer,
    "n_distance_entry_dcr" integer NOT NULL DEFAULT 0,
    "n_distance_entry_mcr" integer NOT NULL DEFAULT 0,
    "n_asset_newemp_days" integer,
    "n_asset_resignemp_days" integer,
    "n_assetsmsemail" integer,
    "n_max_distance_entry_ta_claim_dcr" numeric,
    "n_max_distance_entry_ta_claim_mcr" numeric,
    "n_download_file_delete_enable" integer NOT NULL DEFAULT 0,
    "n_rpsflow" integer DEFAULT 0,
    "n_rps_ini_downline_fstype" integer,
    "n_rps_email" integer,
    "n_android_edit_flag" integer DEFAULT 0,
    "n_doc_conf_mngr" integer,
    "n_android_rcpa_offline" integer,
    "n_login_questionnaire" integer DEFAULT 0,
    "n_leave_fy" integer NOT NULL DEFAULT 0,
    "n_leave_fy_start_year" integer,
    "n_leavebalanceshowhide" integer NOT NULL DEFAULT 0,
    "n_DCRMorngevgMand" integer NOT NULL DEFAULT 0,
    "n_corepro_mand" integer NOT NULL DEFAULT 0,
    "n_visit_type_dcr" integer NOT NULL DEFAULT 0,
    "n_visit_type_mcr" integer NOT NULL DEFAULT 0,
    "n_input_track_exp_block" integer NOT NULL DEFAULT 0,
    "n_SelfAss" integer,
    "n_allow_master_entry_nonadmin" integer,
    "n_area_captionto_beat" integer,
    "n_android_dashboard" integer NOT NULL DEFAULT 0,
    "n_self_assessment_validate" integer NOT NULL DEFAULT 0,
    "n_lopleavetype" integer,
    "n_maternityleavetype" integer,
    "n_paternityleavetype" integer,
    "n_plel_months" integer,
    "n_mcr_online_android" integer,
    "n_sickleavetype" integer,
    "n_android_fmcg_retailer_menu_hide" integer,
    "c_doc_img_request_type" integer,
    "c_doc_img_approve_type" integer,
    "n_asset_email" integer NOT NULL DEFAULT 0,
    "n_fmcg_hunter_calls" integer NOT NULL DEFAULT 0,
    "n_fmcg_farmer_calls" integer NOT NULL DEFAULT 0,
    "n_fmcg_hunterfarmer_calls" integer NOT NULL DEFAULT 0,
    "n_asset_master_email" integer NOT NULL DEFAULT 0,
    "n_sandwitch_leave" integer NOT NULL DEFAULT 0,
    "n_plel_months_mngr" integer,
    "c_hospital_report_user_det" text,
    "c_hospital_report_division_det" text,
    "n_Dcr_Mcr_edit_android" integer,
    "RegionWise_CategoryWiseDocVisit_heteroo" integer NOT NULL DEFAULT 0,
    "n_excel_redownload_maxtime" bigint,
    "Ideltimeout" integer DEFAULT 15,
    "n_display_other_subarea_doctors_dwr" integer,
    "n_chemistdisplaysetup" integer,
    "n_expense_moreve_show_areavisit" integer DEFAULT 0,
    "n_dwr_delete_unlock_approve_email_flag" integer NOT NULL DEFAULT 0,
    "n_dcr_unlock_prevoius_alldays" integer NOT NULL DEFAULT 0,
    "n_rps_gift_max_doc_count" integer NOT NULL DEFAULT 0,
    "n_rps_item_mapping_required" integer NOT NULL DEFAULT 0,
    "n_rps_approval_skip_days" integer NOT NULL DEFAULT 0,
    "c_file_download_url_android" character varying(500),
    "c_fileIP_Android_Second" character varying(500),
    "c_fileIP_Android" character varying(500),
    "n_roi_new_android_visible" integer,
    "c_rps_giftitem_upload_enabled_divisions" character varying(2000),
    "n_dcrmcr_approval" integer,
    "n_DcrMcr_EnableEditOnRejection" integer,
    "n_dcrblock_on_pendig_approvals" integer,
    "n_expense_list_limit" integer DEFAULT 0,
    "n_expense_entry_dcrdays" integer DEFAULT 0,
    "n_c2c_dr_wise_mandatory_settings_days" integer DEFAULT 0,
    "n_c2c_item_multipleselection" integer DEFAULT 0,
    "n_create_mcr_from_subordinate_data" integer,
    "n_file_storage_structure" integer,
    "n_vacany_alert_frequency" integer DEFAULT 0,
    "c_validate_pancard_flag" integer,
    "n_psa_docmst_email_phno_direct_update" integer,
    "n_cme_rtm_final_approver_leval_start" integer,
    "n_identify_eagleeye_in_dr_list" integer,
    "n_dcr_data_mismatch_sync_days" integer,
    "n_edetail_download_from_ip" integer,
    "n_caution_notice_flag" integer,
    "N_SFA_360_Android_Dashboard_Empty_Data" character varying(500),
    "n_tp_hide_multiple_patches" integer,
    "n_tp_hide_loadtpt" integer,
    "n_dwr_from_tp_approved_data" integer,
    "n_dbe_dwr_blockstartday" integer DEFAULT 0,
    "n_tp_customersave_msg" integer,
    "mtp_enable_from_to_flag" integer,
    "tp_block_month_flags" integer,
    "n_is_show_all_customers" integer,
    "n_mgr_performance_survey" integer,
    "c_blob_base_url" character varying(500),
    "n_android_deviceid_check" integer,
    "n_ios_deviceid_check" integer,
    "n_dwr_delete_android_ios" integer,
    "n_consider_doc_chem_map_rcpa" integer,
    "n_dcr_customer_search_criteria" integer,
    "n_is_vacant_fs" integer,
    "n_menu_favourite_maxcount" integer,
    "d_menu_favourite_starttime" time without time zone,
    "d_menu_favourite_endtime" time without time zone
);

CREATE TABLE "Tbl_ControlPanel_Mst_Log" (
    "N_Srno" integer NOT NULL DEFAULT nextval('"Tbl_ControlPanel_Mst_Log_N_Srno_seq"'::regclass),
    "N_Visitorder" integer NOT NULL,
    "N_workedwithmcr" integer,
    "N_MCLshow" integer NOT NULL,
    "N_MtpSbmMcr" integer NOT NULL,
    "N_MtpSbmDcr" integer NOT NULL,
    "N_MtpappMcr" integer NOT NULL,
    "N_MtpappDcr" integer NOT NULL,
    "N_Stpsubmitiondcr" integer,
    "N_PriTargetOn" integer,
    "N_Doctortime" integer,
    "n_mscexpences" integer,
    "N_SecTargeton" integer,
    "N_mtpsubarea" integer NOT NULL,
    "c_prefixTN" character varying(5),
    "c_prefixGDN" character varying(5),
    "N_year" integer,
    "N_secvalue" integer,
    "N_Stpsubmitionmcr" integer,
    "N_TargItemBrand" integer,
    "n_closingday" integer,
    "n_pri_inv_imp" integer,
    "c_tacode" character varying(50),
    "c_dacode" character varying(50),
    "c_monthly" character varying(10),
    "c_reimbursement" character varying(10),
    "c_rate1" character varying(100),
    "c_rate3" character varying(100),
    "c_rate4" character varying(100),
    "c_rate5" character varying(100),
    "n_monthfrom" integer,
    "n_monthto" integer,
    "n_da_flag" integer,
    "n_da_per" numeric,
    "c_rate2" character varying(100),
    "d_date" timestamp without time zone,
    "c_user" character varying(10),
    "n_Circular_DashB" integer,
    "n_Dcr_Product_Mandatory" integer,
    "n_Dcr_sample_madatory" integer,
    "n_employ_login" integer,
    "n_month_exp_review" integer,
    "N_JobDesc" integer,
    "N_HQ_Address" integer,
    "n_gdnflag" integer,
    "n_Exp_Reconfirm_days" integer,
    "n_pri_sales" integer,
    "n_sec_sales" integer,
    "n_tinno" integer,
    "n_licno" integer,
    "n_licfoodno" integer,
    "c_inv_plan_lblamt" character varying(50),
    "n_inv_saleshistory" integer,
    "n_inv_rate_edit" integer,
    "n_chem_pin" integer,
    "n_chem_phone" integer,
    "n_factor" numeric,
    "n_dcr_doctorlrole_disply" integer,
    "n_Mcr_subarea_multi_validation" integer,
    "n_pri_order_rate_on" integer,
    "n_sec_order_rate_on" integer,
    "n_distance_entry_dcr" integer NOT NULL DEFAULT 0,
    "n_distance_entry_mcr" integer NOT NULL DEFAULT 0,
    "n_max_distance_entry_ta_claim_dcr" numeric,
    "n_max_distance_entry_ta_claim_mcr" numeric,
    "n_download_file_delete_enable" integer NOT NULL DEFAULT 0
);

CREATE TABLE "Tbl_Core_Product" (
    "C_Doc_Code" character varying(10) NOT NULL,
    "c_Product_Code" character varying(10) NOT NULL,
    "n_priority" integer,
    "c_category" character varying(10)
);

CREATE TABLE "Tbl_Core_Product_CategoryWise" (
    "C_Doc_Code" character varying(10) NOT NULL,
    "c_Product_Code" character varying(10) NOT NULL,
    "n_priority" integer,
    "C_category" character varying(15),
    "d_modified" timestamp without time zone
);

CREATE TABLE "Tbl_Core_Product_Log" (
    "C_Doc_Code" character varying(10) NOT NULL,
    "c_Product_Code" character varying(10) NOT NULL,
    "n_priority" integer
);

CREATE TABLE "Tbl_Core_Product_log_Ins" (
    "C_Doc_Code" character varying(10) NOT NULL,
    "c_Product_Code" character varying(10) NOT NULL,
    "n_priority" integer,
    "d_date" timestamp without time zone
);

CREATE TABLE "Tbl_Core_Product_log_Upd" (
    "C_Doc_Code" character varying(10) NOT NULL,
    "c_Product_Code" character varying(10) NOT NULL,
    "n_priority" integer,
    "d_date" timestamp without time zone,
    "n_primary_id" integer NOT NULL DEFAULT nextval('"Tbl_Core_Product_log_Upd_n_primary_id_seq"'::regclass)
);

CREATE TABLE "Tbl_Core_Product_log_delete" (
    "C_Doc_Code" character varying(10) NOT NULL,
    "c_Product_Code" character varying(10) NOT NULL,
    "n_priority" integer,
    "D_Date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "Tbl_Credit_Limit_Increase_Det" (
    "N_SRNO" integer,
    "N_Multi_approve" character varying(50)
);

CREATE TABLE "Tbl_Credit_Limit_Increase_Mst" (
    "N_SRNO" integer NOT NULL DEFAULT nextval('"Tbl_Credit_Limit_Increase_Mst_N_SRNO_seq"'::regclass),
    "C_Zone" text,
    "C_Region" text,
    "C_Initiator" character varying(50),
    "N_Multi_approve" integer,
    "C_Confirm" character varying(50),
    "C_Created_Date" timestamp without time zone,
    "c_Created_User" character varying(50),
    "C_Modified_Date" timestamp without time zone,
    "c_Modified_User" character varying(50),
    "N_Deleted" integer,
    "n_stage" integer
);

CREATE TABLE "Tbl_Credit_Limit_Increase_StageDet" (
    "n_srno" integer NOT NULL,
    "n_fstype" integer,
    "c_type" character varying(20),
    "n_amount" numeric
);

CREATE TABLE "Tbl_Credit_Limit_Increase_StageDet_tmp" (
    "n_srno" integer NOT NULL DEFAULT nextval('"Tbl_Credit_Limit_Increase_StageDet_tmp_n_srno_seq"'::regclass),
    "n_setup_no" integer,
    "n_fstype" integer,
    "c_type" character varying(20),
    "n_amount" numeric
);

CREATE TABLE "Tbl_Cust_Div" (
    "c_cust_code" character(10) NOT NULL,
    "c_div_code" character varying(10) NOT NULL,
    "c_fs_code" character(10) NOT NULL,
    "d_date" timestamp without time zone NOT NULL,
    "c_grade" character varying(10),
    "d_date_to" timestamp without time zone,
    "n_per" integer,
    "C_ref_no" character varying(52),
    "d_modified" timestamp without time zone,
    "N_CRNTBUSINES" character varying(150),
    "C_BUSINES_POTENTIAL" character varying(150),
    "N_drpotential" character varying(50),
    "c_DocSubAreacode" character varying(50) NOT NULL
);

CREATE TABLE "Tbl_Cust_Div_Bck_D59379" (
    "c_cust_code" character(10) NOT NULL,
    "c_div_code" character varying(10) NOT NULL,
    "c_fs_code" character(10) NOT NULL,
    "d_date" timestamp without time zone NOT NULL,
    "c_grade" character varying(10),
    "d_date_to" timestamp without time zone,
    "n_per" integer,
    "C_ref_no" character varying(52),
    "d_modified" timestamp without time zone,
    "N_CRNTBUSINES" character varying(150),
    "C_BUSINES_POTENTIAL" character varying(150),
    "N_drpotential" character varying(50),
    "c_DocSubAreacode" character varying(50) NOT NULL
);

CREATE TABLE "Tbl_Cust_Div_detemp" (
    "c_cust_code" character(10) NOT NULL,
    "c_div_code" character varying(10) NOT NULL,
    "c_fs_code" character(10) NOT NULL,
    "d_date" timestamp without time zone NOT NULL,
    "c_grade" character varying(10),
    "d_date_to" timestamp without time zone,
    "n_per" integer,
    "C_ref_no" character varying(52),
    "d_modified" timestamp without time zone,
    "N_CRNTBUSINES" character varying(150),
    "C_BUSINES_POTENTIAL" character varying(150),
    "N_drpotential" character varying(50),
    "c_DocSubAreacode" character varying(50) NOT NULL
);

CREATE TABLE "Tbl_DCRMCR_Chemist_Mandatory_setup_DET" (
    "n_id" integer,
    "c_code" character varying(50)
);

CREATE TABLE "Tbl_DCRMCR_Chemist_Mandatory_setup_MST" (
    "n_id" integer NOT NULL DEFAULT nextval('"Tbl_DCRMCR_Chemist_Mandatory_setup_MST_n_id_seq"'::regclass),
    "n_Rpttype" integer,
    "n_applicabletype" character varying(1),
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone
);

CREATE TABLE "Tbl_DSCA_Type" (
    "N_Type" integer NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "c_display_name" character varying(50),
    "n_report_flag" character varying(50),
    "n_DCRdisplay" smallint,
    "n_status" smallint,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "c_created" character varying(50),
    "c_modifier" character varying(50),
    "n_deleted" smallint,
    "c_image_enable" character varying(500),
    "c_image_disable" character varying(500),
    "n_CreateUserrights" integer DEFAULT 0,
    "n_Approvalrequired" integer,
    "n_ActiveStatus" integer,
    "n_AddIn_HeirarchySetup" integer DEFAULT 0,
    "n_menuid_dyanamic_master" text,
    "c_class_enable" integer,
    "n_show_customer_in_mandatory_setup" integer
);

CREATE TABLE "Tbl_DWR" (
    "N_Srno" numeric NOT NULL DEFAULT '0'::numeric,
    "D_Date_Report" timestamp without time zone NOT NULL,
    "D_Entry_Date" timestamp without time zone NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "C_HQ_Code" character varying(10) NOT NULL,
    "C_Worked_With" character varying(10),
    "C_Reason" character varying(1000),
    "C_Area_Code" character varying(10) NOT NULL,
    "C_Area_Stay" character varying(10) NOT NULL,
    "C_Note1" character varying(1000),
    "C_Note2" character varying(200),
    "C_Note3" character varying(200),
    "N_Distance" numeric,
    "n_Fare" numeric,
    "n_Allowance" integer,
    "C_Allowance_Type" character(10),
    "c_WrkType" character varying(10),
    "N_Sort_Order" numeric,
    "N_Flag" integer,
    "C_Placeof_Work" character varying(10) NOT NULL,
    "C_Stayed_At" character varying(10) NOT NULL,
    "c_Emp_Code" character varying(10) NOT NULL,
    "c_temp_fs" character varying(10),
    "c_temp_emp" character varying(10),
    "D_Created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "D_Modified" timestamp without time zone,
    "C_WorkContactRemarks" character varying(200),
    "n_workedwithself" integer DEFAULT 0,
    "n_srnodisableretflg" integer,
    "n_androidflg" integer,
    "n_distance_entry" numeric DEFAULT '0'::numeric,
    "c_subarea_type" character varying(10),
    "n_status" integer,
    "c_approver" character varying(50),
    "d_date_approved" timestamp without time zone,
    "n_setupid" integer
);

CREATE TABLE "Tbl_DWR_Details" (
    "N_Srno" integer NOT NULL,
    "n_rowid" integer NOT NULL,
    "n_type" integer NOT NULL,
    "C_DSC_Code" character varying(10) NOT NULL,
    "C_BA" character varying(50),
    "N_POB" numeric,
    "N_Closing" numeric,
    "N_Stock_Value" numeric,
    "N_Sales_Value" numeric,
    "N_Outstanding" numeric,
    "C_Note" character varying(1000),
    "c_time" character varying(50),
    "c_doc_note" character varying(50),
    "c_doc_grade" character varying(50),
    "c_fmcg_stk_code" character varying(10),
    "n_process_status" integer,
    "c_Comments" character varying(200),
    "c_moreve" character(1),
    "c_PhoneNo" character varying(20),
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_no_promotional" character varying(5) DEFAULT '0'::character varying,
    "c_no_ctoc" character varying(5) DEFAULT '0'::character varying,
    "c_no_asset" character varying(5) DEFAULT '0'::character varying,
    "c_no_camp" character varying(5) DEFAULT '0'::character varying,
    "n_recovery_call" integer
);

CREATE TABLE "Tbl_DWR_Details_OtherRegionDrs" (
    "N_Srno" integer NOT NULL,
    "n_rowid" integer NOT NULL,
    "n_type" integer NOT NULL,
    "C_DSC_Code" character varying(10) NOT NULL,
    "C_BA" character varying(50),
    "N_POB" numeric,
    "N_Closing" numeric,
    "N_Stock_Value" numeric,
    "N_Sales_Value" numeric,
    "N_Outstanding" numeric,
    "C_Note" character varying(1000),
    "c_time" character varying(50),
    "c_doc_note" character varying(50),
    "c_doc_grade" character varying(50),
    "c_fmcg_stk_code" character varying(10),
    "n_process_status" integer,
    "c_Comments" character varying(200),
    "c_moreve" character(1),
    "c_PhoneNo" character varying(20),
    "d_created" timestamp without time zone
);

CREATE TABLE "Tbl_DWR_Expense" (
    "N_Srno" numeric NOT NULL,
    "N_RowId" integer NOT NULL,
    "C_Exp_Code" character(10) NOT NULL,
    "D_Date" timestamp without time zone,
    "n_Amount" numeric,
    "C_Note" character varying(100)
);

CREATE TABLE "Tbl_DWR_Expense_log" (
    "N_Srno" numeric NOT NULL,
    "N_RowId" integer NOT NULL,
    "C_Exp_Code" character(10) NOT NULL,
    "D_Date" timestamp without time zone,
    "n_Amount" numeric,
    "C_Note" character varying(100)
);

CREATE TABLE "Tbl_DWR_Mobile" (
    "N_DCRNO" integer,
    "d_CreatedDate" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "Tbl_DWR_SETUP" (
    "N_DCR_RCPA_FLAG" integer
);

CREATE TABLE "Tbl_DWR_Sub_Details" (
    "N_Srno" numeric NOT NULL,
    "C_Doc_Code" character varying(10),
    "N_RowId" integer,
    "C_Item_Code" character(10),
    "C_ITEM_EXP" character(10),
    "n_Product_Unit" numeric,
    "N_Type" integer,
    "N_AUTO" numeric,
    "c_title_code" character varying(20),
    "c_item_note" character varying(200)
);

CREATE TABLE "Tbl_DWR_Sub_Details_OtherRegionDrs" (
    "N_Srno" numeric NOT NULL,
    "C_Doc_Code" character varying(10) NOT NULL,
    "N_RowId" integer NOT NULL,
    "C_Item_Code" character(10) NOT NULL,
    "C_ITEM_EXP" character(10),
    "n_Product_Unit" numeric,
    "N_Type" integer,
    "c_title_code" character varying(20),
    "c_item_note" character varying(200),
    "N_AUTO" numeric
);

CREATE TABLE "Tbl_DWR_dcrdelete_log" (
    "N_Srno" numeric NOT NULL,
    "D_Date_Report" timestamp without time zone NOT NULL,
    "D_Entry_Date" timestamp without time zone NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "C_HQ_Code" character varying(10),
    "C_Worked_With" character varying(10),
    "C_Reason" character varying(200),
    "C_Area_Code" character varying(10),
    "C_Area_Stay" character varying(10),
    "C_Note1" character varying(200),
    "C_Note2" character varying(200),
    "C_Note3" character varying(200),
    "N_Distance" numeric,
    "n_Fare" numeric,
    "n_Allowance" integer,
    "C_Allowance_Type" character(10),
    "c_WrkType" character varying(10),
    "N_Sort_Order" numeric,
    "N_Flag" integer,
    "C_Placeof_Work" character varying(10),
    "C_Stayed_At" character varying(10),
    "C_EMP_CODE" character varying(10),
    "c_temp_fs" character varying(10),
    "c_temp_emp" character varying(10),
    "D_Created" timestamp without time zone,
    "D_Modified" timestamp without time zone,
    "C_WorkContactRemarks" character varying(200)
);

CREATE TABLE "Tbl_DWR_log_Details" (
    "N_Srno" integer NOT NULL,
    "n_rowid" integer NOT NULL,
    "n_type" integer NOT NULL,
    "C_DSC_Code" character varying(10) NOT NULL,
    "C_BA" character varying(50),
    "N_POB" numeric,
    "N_Closing" numeric,
    "N_Stock_Value" numeric,
    "N_Sales_Value" numeric,
    "N_Outstanding" numeric,
    "C_Note" character varying(200),
    "c_time" character varying(50),
    "c_doc_note" character varying(50),
    "c_doc_grade" character varying(50),
    "n_process_status" integer,
    "c_fmcg_stk_code" character varying(10),
    "c_Comments" character varying(200)
);

CREATE TABLE "Tbl_DWR_log_Sub_Details" (
    "N_Srno" numeric NOT NULL,
    "C_Doc_Code" character varying(10),
    "N_RowId" integer,
    "C_Item_Code" character(10),
    "C_ITEM_EXP" character(10),
    "n_Product_Unit" numeric,
    "N_Type" integer,
    "c_title_code" character varying(20),
    "c_item_note" character varying(200)
);

CREATE TABLE "Tbl_Degree_Mst" (
    "C_Code" character varying(20) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "C_Sh_Name" character varying(7),
    "n_deleted" integer NOT NULL DEFAULT 0,
    "n_status" integer NOT NULL DEFAULT 0,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10)
);

CREATE TABLE "Tbl_Delivery_mst" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "C_Address" character varying(200),
    "C_phone" character varying(20),
    "N_Flag" integer NOT NULL DEFAULT 0,
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10)
);

CREATE TABLE "Tbl_Depot_Mst" (
    "C_DEP_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "C_SH_Name" character varying(10),
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10)
);

CREATE TABLE "Tbl_Depot_Mst_temp" (
    "c_code" character(6),
    "c_name" character varying(100),
    "c_sh_name" character varying(100),
    "n_deleted" integer,
    "d_date" character varying(30),
    "d_ldate" character varying(30),
    "c_modiuser" character varying(30)
);

CREATE TABLE "Tbl_Depot_Stock" (
    "c_depo_code" character varying(10) NOT NULL,
    "c_item_code" character varying(10) NOT NULL,
    "c_batch_no" character varying(10) NOT NULL,
    "d_exp_dt" timestamp without time zone NOT NULL,
    "n_bal_qty" numeric NOT NULL DEFAULT '0'::numeric,
    "n_brk_qty" numeric NOT NULL DEFAULT '0'::numeric,
    "n_srt" numeric NOT NULL DEFAULT '0'::numeric,
    "n_mrp" numeric NOT NULL DEFAULT '0'::numeric,
    "n_exc_rt" numeric NOT NULL DEFAULT '0'::numeric,
    "n_trt" numeric NOT NULL DEFAULT '0'::numeric,
    "n_strip_box" numeric NOT NULL DEFAULT '0'::numeric,
    "n_box_case" numeric NOT NULL DEFAULT '0'::numeric,
    "n_lock" integer NOT NULL DEFAULT 0,
    "c_cpn_name" character varying(15),
    "n_prt" numeric DEFAULT '0'::numeric
);

CREATE TABLE "Tbl_Device_Login_Token_Details" (
    "n_id" integer NOT NULL DEFAULT nextval('"Tbl_Device_Login_Token_Details_n_id_seq"'::regclass),
    "c_token_id" character varying(50) NOT NULL,
    "c_company_id" character varying(100),
    "c_device_id" character varying(50),
    "n_device_type" integer,
    "c_fs_code" character varying(10),
    "c_emp_code" character varying(10),
    "c_user_id" character varying(20),
    "c_password" character varying(100),
    "d_token_issued_date" timestamp without time zone,
    "d_token_valid_to" timestamp without time zone,
    "n_enable" integer
);

CREATE TABLE "Tbl_Distance_Repository_For_STP" (
    "C_From" character varying(20),
    "C_To" character varying(20),
    "C_Distance" character varying(25)
);

CREATE TABLE "Tbl_District_Mst" (
    "c_code" character varying(10) NOT NULL,
    "c_name" character varying(50) NOT NULL,
    "c_sh_name" character varying(7),
    "c_region_code" character varying(50),
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10)
);

CREATE TABLE "Tbl_Div_Mst" (
    "c_code" character varying(10) NOT NULL,
    "c_name" character varying(50) NOT NULL,
    "c_sh_name" character varying(7),
    "n_pur" numeric,
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "C_EMailPassword" character varying(500),
    "C_EMailID" character varying(3000),
    "C_DisplayNameEmail" character varying(100)
);

CREATE TABLE "Tbl_DocInv_Req_Item_Curr" (
    "n_srno" integer,
    "n_setup_req" integer,
    "c_item_code" character varying(10),
    "n_item_rate" integer,
    "n_item_actrate" integer,
    "n_cur_rx" integer,
    "n_cur_qty" integer,
    "n_cur_val" numeric
);

CREATE TABLE "Tbl_DocInv_Req_Item_Exp" (
    "n_srno" integer,
    "n_exp_rx" integer,
    "n_exp_qty" integer,
    "n_exp_val" numeric
);

CREATE TABLE "Tbl_Doc_Details" (
    "C_Doc_Code" character varying(10) NOT NULL,
    "C_Doc_Day_Meet" character varying(20),
    "C_Doc_Ftime_Meet" character varying(50),
    "C_Doc_Ttime_Meet" character varying(50),
    "C_Doc_App_Criteria" character varying(300),
    "N_Doc_App_Fixed" smallint,
    "n_MonthlyOrWeekly" integer,
    "n_WeekOfMonth" integer,
    "n_srno" integer NOT NULL DEFAULT nextval('"Tbl_Doc_Details_n_srno_seq"'::regclass)
);

CREATE TABLE "Tbl_Doc_Exp" (
    "N_SRNO" numeric NOT NULL,
    "D_DATE" timestamp without time zone,
    "C_FS_CODE" character varying(10),
    "C_DOC_CODE" character varying(10),
    "N_AMOUNT" numeric,
    "C_NOTE" character varying(100),
    "C_CREATE_USER" character varying(10),
    "N_deleted" integer,
    "C_EMP_CODE" character varying(10) NOT NULL
);

CREATE TABLE "Tbl_Doc_Imag_Save" (
    "c_doc_code" character varying(20),
    "n_imagetype" integer,
    "c_doc_image" character varying(500),
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "Tbl_Doc_Prefer_Details" (
    "n_srNo" integer NOT NULL DEFAULT nextval('"Tbl_Doc_Prefer_Details_n_srNo_seq"'::regclass),
    "C_Doc_Code" character varying(50),
    "C_Doc_Ftime_prefer" character varying(50),
    "C_Doc_Ttime_prefer" character varying(50)
);

CREATE TABLE "Tbl_Doc_Req_Setup" (
    "n_Code" bigint NOT NULL DEFAULT '0'::bigint,
    "n_Name" bigint NOT NULL DEFAULT '0'::bigint,
    "n_Qualification" bigint NOT NULL DEFAULT '0'::bigint,
    "n_Address1" bigint NOT NULL DEFAULT '0'::bigint,
    "n_Address2" bigint NOT NULL DEFAULT '0'::bigint,
    "n_Address3" bigint NOT NULL DEFAULT '0'::bigint,
    "n_Address4" bigint NOT NULL,
    "n_SubArea" bigint NOT NULL DEFAULT '0'::bigint,
    "n_Phone" bigint NOT NULL DEFAULT '0'::bigint,
    "n_MCL_No" bigint NOT NULL DEFAULT '0'::bigint,
    "n_Category" bigint NOT NULL DEFAULT '0'::bigint,
    "n_PinCode" bigint NOT NULL DEFAULT '0'::bigint,
    "n_DateOfBirth" bigint NOT NULL DEFAULT '0'::bigint,
    "n_DateOfWedding" bigint NOT NULL DEFAULT '0'::bigint,
    "n_EMail" bigint NOT NULL DEFAULT '0'::bigint,
    "n_Grade" bigint NOT NULL DEFAULT '0'::bigint,
    "n_ApprovalFlag" smallint NOT NULL DEFAULT '0'::smallint,
    "n_type" smallint NOT NULL DEFAULT '0'::smallint,
    "n_DrClass" bigint NOT NULL DEFAULT '0'::bigint,
    "C_FName" character varying(50),
    "C_LName" character varying(50),
    "n_mci_no" character varying(20),
    "n_SingleOrMultiApproval" integer,
    "n_city1" integer,
    "n_house" integer,
    "n_area2" integer,
    "n_landmark2" integer,
    "n_city2" integer,
    "n_street2" integer,
    "n_pincode2" integer,
    "n_state2" integer,
    "n_drpotential" integer,
    "n_childname1" integer,
    "n_childname2" integer,
    "n_childname3" integer,
    "n_age" integer,
    "n_speciality" integer,
    "n_patients" integer,
    "n_drpurchasing" integer,
    "n_curentbusines" integer,
    "n_businespotential" integer,
    "n_child1dob" integer,
    "n_child2dob" integer,
    "n_child3dob" integer,
    "n_state1" integer,
    "n_prescribing" integer,
    "n_SetupId" integer,
    "n_drprescribing" integer,
    "n_landline" integer,
    "n_idealtime" integer,
    "n_spousename" integer,
    "n_spousedob" integer,
    "n_dr_coreproduct_mapping" integer,
    "c_docmstpan" character varying(10),
    "n_clarea" integer,
    "n_clsubarea" integer
);

CREATE TABLE "Tbl_Doc_Stock_Chem_Add_Det" (
    "c_doc_code" character varying(50) NOT NULL,
    "c_doc_unique_code" character varying(50),
    "c_doc_vendor_code" character varying(50),
    "d_dwr_lastvisitdate" timestamp without time zone,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "C_PAN_PhotoLocation" character varying(500),
    "c_pan_photo_location_azure_url" text
);

CREATE TABLE "Tbl_Doc_Stock_Chem_Add_Mst" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(200),
    "N_Type" integer NOT NULL,
    "C_Grade" character varying(10),
    "C_Qualification" character varying(50),
    "C_Add_1" character varying(200),
    "C_Add_2" character varying(50),
    "C_Add_3" character varying(50),
    "C_Add_4" character varying(50),
    "C_Pin" character varying(10),
    "C_Phone" character varying(20),
    "C_Fax" character varying(50),
    "C_Category" text,
    "C_Area_Code" character varying(10),
    "C_Subarea_Code" character varying(10),
    "D_DOB" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "n_Status" integer,
    "D_Create_Date" timestamp without time zone,
    "D_modify_Date" timestamp without time zone,
    "C_Email_ID" character varying(50),
    "C_FsCode" character varying(10),
    "c_region_code" character varying(10),
    "n_convert" numeric,
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(20),
    "n_lami" double precision,
    "n_lgmi" double precision,
    "c_tin_no" character varying(50),
    "c_lic_no" character varying(50),
    "c_contact_name" character varying(50),
    "n_Sft_shop" numeric,
    "n_No_of_display_Shelf" numeric,
    "c_desc_display_shelf" character varying(100),
    "n_Front_Board_Height" numeric,
    "n_Front_Board_length" numeric,
    "n_Backlit" smallint,
    "n_Computerised" smallint,
    "c_lic_food" character varying(50),
    "c_sort" character varying(10),
    "c_contact_mob" character varying(50),
    "c_contact_outlet_num" character varying(50),
    "C_Landmark" character varying(100),
    "C_Short_Name" character varying(10),
    "C_Doc_Class" character varying(10),
    "C_Spousename" character varying(100),
    "D_SpouseDob" timestamp without time zone,
    "C_FName" character varying(50),
    "C_LName" character varying(50),
    "n_mcino" character varying(40),
    "C_HOSPITAL_NAME" character varying(200),
    "C_STREET_NAME" character varying(150),
    "C_AREA_NAME" character varying(150),
    "C_LANDMARK1" character varying(150),
    "C_CITY" character varying(150),
    "C_STATE" character varying(150),
    "C_HOUSE_NAME" character varying(150),
    "C_STREET_NAME1" character varying(150),
    "C_AREA_NAME1" character varying(150),
    "C_LANDMARK2" character varying(150),
    "C_CITY_1" character varying(150),
    "N_PATIENTS" character varying(150),
    "N_CRNTBUSINES" character varying(150),
    "C_STATE1" character varying(150),
    "C_PINCODE1" character varying(150),
    "C_BUSINES_POTENTIAL" character varying(150),
    "D_CHILD_DOB1" timestamp without time zone,
    "D_CHILD_DOB2" timestamp without time zone,
    "D_CHILD_DOB3" timestamp without time zone,
    "n_age" character varying(10),
    "C_SPECIALITY" character varying(150),
    "C_childnname1" character varying(150),
    "C_childnname2" character varying(150),
    "C_childnname3" character varying(150),
    "n_drpurchase" integer,
    "N_drprescription" integer,
    "N_drpotential" character varying(50),
    "c_landline" character varying(20),
    "c_middlename" character varying(50),
    "c_tldl1" character varying(100),
    "c_tldl2" character varying(100),
    "c_dlfood1" character varying(100),
    "c_tldl11" character varying(100),
    "c_tldl12" character varying(100),
    "c_dlfood2" character varying(100),
    "d_DLDate1" timestamp without time zone,
    "d_DLDate2" timestamp without time zone,
    "c_pan1" character varying(100),
    "c_pan2" character varying(100),
    "c_Purchase_manager_Name" character varying(100),
    "c_Purchase_manager_Mob" character varying(20),
    "c_Account_Type" character varying(50),
    "n_visit_freq" integer,
    "n_fridge" integer,
    "c_Institutn_type" character varying(100),
    "c_Account_Grp" character varying(100),
    "n_hostel" integer,
    "n_no_of_canteen" integer,
    "c_type_of_food" text,
    "c_Canteen_contr_name" character varying(100),
    "c_Canteen_contr_addr" character varying(500),
    "D_agreement_date" timestamp without time zone,
    "n_Total_Disc" numeric,
    "D_Total_Disc_From" timestamp without time zone,
    "D_Total_Disc_To" timestamp without time zone,
    "c_Store_Classification" character varying(100),
    "n_Store_Type" integer,
    "c_Distributor" character varying(20),
    "c_store_type" character varying(50),
    "c_Store_Manager" character varying(50),
    "c_Distributor_name" character varying(100),
    "n_active" integer,
    "c_classification" character varying(10),
    "c_chemisttype" character varying(10),
    "n_WindowSize" character varying(50),
    "C_AccountClassfctn" character varying(5),
    "C_AccountAddress" character varying(100),
    "C_AccountCode" character varying(10),
    "n_DaysTo_Activate" integer,
    "d_Start_Date" timestamp without time zone,
    "d_activation_Date" timestamp without time zone,
    "c_storetype" character varying(50),
    "c_distributorcode" character varying(50),
    "c_visitfrequency" character varying(50),
    "c_classificationcode" character varying(50),
    "c_stmanager" character varying(50),
    "C_SA_Classification" character varying(20),
    "c_Hospital_Code" character varying(200),
    "C_TypeofHsptl" character varying(300),
    "C_Area" character varying(100),
    "C_Inhouse_phar_exist" character varying(100),
    "C_Fin_Turnover" character varying(100),
    "C_Potencial" character varying(100),
    "C_No_of_Beds" character varying(100),
    "C_No_of_Emer_Beds" character varying(100),
    "C_No_of_Critic_ICU_Beds" character varying(100),
    "C_No_of_Sur_Theaters" character varying(100),
    "C_Hospital" character varying(100),
    "C_Tot_No_of_Doctors" character varying(100),
    "C_Pur_Mgr_Name" character varying(100),
    "C_Pur_Mgr__Contact" character varying(100),
    "C_Stk_Inchrg_Name" character varying(100),
    "C_Stk_Inchrg_Contact" character varying(100),
    "C_Fin_Ofcr_Name" character varying(100),
    "C_Fin_Ofcr_Contact" character varying(100),
    "C_No_of_Thrputc_Group" character varying(100),
    "C_Techng_Institution" character varying(100),
    "C_Gstno" character varying(50),
    "c_docmstpan" character varying(10),
    "c_classtype" character varying(10),
    "n_SASCollection" integer,
    "c_uniqueid" character varying(50),
    "c_contact_person" character varying(200),
    "c_purchasemanagermail" character varying(200),
    "n_purchaseteam_size" integer,
    "c_stockiesname" character varying(200),
    "n_lami_res" double precision,
    "n_lgmi_res" double precision,
    "C_profile_Image" text,
    "c_department_catered" integer,
    "c_brands_focused" character varying(2000),
    "C_Phone_Enc" character varying(500),
    "doctors_covered_hospital" integer,
    "c_hetero_distributor_supplier" character varying(10),
    "c_hetero_brands_available" character varying(10),
    "n_no_new_admissions_perday" integer,
    "c_diagnostic_lab_iside_hospital" integer,
    "n_no_of_cafes" integer,
    "n_patient_kiosk" integer,
    "n_hospital_digitally_active" integer,
    "n_digital_handle_hospital_promotions" integer,
    "n_hospital_involved_mass_screening" integer,
    "n_hospital_organizing_specific_seminars" integer,
    "n_is_hospital_medical_emergency" integer,
    "n_pharmacy_scheme_specificity" integer,
    "n_dnb_hospital" integer,
    "n_number_of_patients" integer,
    "n_no_oncology_hospitals" integer,
    "n_no_of_beds_oncology_patients" integer,
    "n_no_patients_chemotherapy_surgery" integer,
    "n_no_chemotherapy_per_day" integer,
    "c_indication_wise_regiments" integer,
    "c_expected_business_activity_customers" character varying(250)
);

CREATE TABLE "Tbl_Doc_Stock_Chem_Add_Mst_bkp_Hospital_Code_Issue_20250909" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(200),
    "N_Type" integer NOT NULL,
    "C_Grade" character varying(10),
    "C_Qualification" character varying(50),
    "C_Add_1" character varying(200),
    "C_Add_2" character varying(50),
    "C_Add_3" character varying(50),
    "C_Add_4" character varying(50),
    "C_Pin" character varying(10),
    "C_Phone" character varying(20),
    "C_Fax" character varying(50),
    "C_Category" text,
    "C_Area_Code" character varying(10),
    "C_Subarea_Code" character varying(10),
    "D_DOB" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "n_Status" integer,
    "D_Create_Date" timestamp without time zone,
    "D_modify_Date" timestamp without time zone,
    "C_Email_ID" character varying(50),
    "C_FsCode" character varying(10),
    "c_region_code" character varying(10),
    "n_convert" numeric,
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(20),
    "n_lami" double precision,
    "n_lgmi" double precision,
    "c_tin_no" character varying(50),
    "c_lic_no" character varying(50),
    "c_contact_name" character varying(50),
    "n_Sft_shop" numeric,
    "n_No_of_display_Shelf" numeric,
    "c_desc_display_shelf" character varying(100),
    "n_Front_Board_Height" numeric,
    "n_Front_Board_length" numeric,
    "n_Backlit" smallint,
    "n_Computerised" smallint,
    "c_lic_food" character varying(50),
    "c_sort" character varying(10),
    "c_contact_mob" character varying(50),
    "c_contact_outlet_num" character varying(50),
    "C_Landmark" character varying(100),
    "C_Short_Name" character varying(10),
    "C_Doc_Class" character varying(10),
    "C_Spousename" character varying(100),
    "D_SpouseDob" timestamp without time zone,
    "C_FName" character varying(50),
    "C_LName" character varying(50),
    "n_mcino" character varying(40),
    "C_HOSPITAL_NAME" character varying(200),
    "C_STREET_NAME" character varying(150),
    "C_AREA_NAME" character varying(150),
    "C_LANDMARK1" character varying(150),
    "C_CITY" character varying(150),
    "C_STATE" character varying(150),
    "C_HOUSE_NAME" character varying(150),
    "C_STREET_NAME1" character varying(150),
    "C_AREA_NAME1" character varying(150),
    "C_LANDMARK2" character varying(150),
    "C_CITY_1" character varying(150),
    "N_PATIENTS" character varying(150),
    "N_CRNTBUSINES" character varying(150),
    "C_STATE1" character varying(150),
    "C_PINCODE1" character varying(150),
    "C_BUSINES_POTENTIAL" character varying(150),
    "D_CHILD_DOB1" timestamp without time zone,
    "D_CHILD_DOB2" timestamp without time zone,
    "D_CHILD_DOB3" timestamp without time zone,
    "n_age" character varying(10),
    "C_SPECIALITY" character varying(150),
    "C_childnname1" character varying(150),
    "C_childnname2" character varying(150),
    "C_childnname3" character varying(150),
    "n_drpurchase" integer,
    "N_drprescription" integer,
    "N_drpotential" character varying(50),
    "c_landline" character varying(20),
    "c_middlename" character varying(50),
    "c_tldl1" character varying(100),
    "c_tldl2" character varying(100),
    "c_dlfood1" character varying(100),
    "c_tldl11" character varying(100),
    "c_tldl12" character varying(100),
    "c_dlfood2" character varying(100),
    "d_DLDate1" timestamp without time zone,
    "d_DLDate2" timestamp without time zone,
    "c_pan1" character varying(100),
    "c_pan2" character varying(100),
    "c_Purchase_manager_Name" character varying(100),
    "c_Purchase_manager_Mob" character varying(20),
    "c_Account_Type" character varying(50),
    "n_visit_freq" integer,
    "n_fridge" integer,
    "c_Institutn_type" character varying(100),
    "c_Account_Grp" character varying(100),
    "n_hostel" integer,
    "n_no_of_canteen" integer,
    "c_type_of_food" text,
    "c_Canteen_contr_name" character varying(100),
    "c_Canteen_contr_addr" character varying(500),
    "D_agreement_date" timestamp without time zone,
    "n_Total_Disc" numeric,
    "D_Total_Disc_From" timestamp without time zone,
    "D_Total_Disc_To" timestamp without time zone,
    "c_Store_Classification" character varying(100),
    "n_Store_Type" integer,
    "c_Distributor" character varying(20),
    "c_store_type" character varying(50),
    "c_Store_Manager" character varying(50),
    "c_Distributor_name" character varying(100),
    "n_active" integer,
    "c_classification" character varying(10),
    "c_chemisttype" character varying(10),
    "n_WindowSize" character varying(50),
    "C_AccountClassfctn" character varying(5),
    "C_AccountAddress" character varying(100),
    "C_AccountCode" character varying(10),
    "n_DaysTo_Activate" integer,
    "d_Start_Date" timestamp without time zone,
    "d_activation_Date" timestamp without time zone,
    "c_storetype" character varying(50),
    "c_distributorcode" character varying(50),
    "c_visitfrequency" character varying(50),
    "c_classificationcode" character varying(50),
    "c_stmanager" character varying(50),
    "C_SA_Classification" character varying(20),
    "c_Hospital_Code" character varying(200),
    "C_TypeofHsptl" character varying(300),
    "C_Area" character varying(100),
    "C_Inhouse_phar_exist" character varying(100),
    "C_Fin_Turnover" character varying(100),
    "C_Potencial" character varying(100),
    "C_No_of_Beds" character varying(100),
    "C_No_of_Emer_Beds" character varying(100),
    "C_No_of_Critic_ICU_Beds" character varying(100),
    "C_No_of_Sur_Theaters" character varying(100),
    "C_Hospital" character varying(100),
    "C_Tot_No_of_Doctors" character varying(100),
    "C_Pur_Mgr_Name" character varying(100),
    "C_Pur_Mgr__Contact" character varying(100),
    "C_Stk_Inchrg_Name" character varying(100),
    "C_Stk_Inchrg_Contact" character varying(100),
    "C_Fin_Ofcr_Name" character varying(100),
    "C_Fin_Ofcr_Contact" character varying(100),
    "C_No_of_Thrputc_Group" character varying(100),
    "C_Techng_Institution" character varying(100),
    "C_Gstno" character varying(50),
    "c_docmstpan" character varying(10),
    "c_classtype" character varying(10),
    "n_SASCollection" integer,
    "c_uniqueid" character varying(50),
    "c_contact_person" character varying(200),
    "c_purchasemanagermail" character varying(200),
    "n_purchaseteam_size" integer,
    "c_stockiesname" character varying(200),
    "n_lami_res" double precision,
    "n_lgmi_res" double precision,
    "C_profile_Image" text
);

CREATE TABLE "Tbl_Doc_Stock_Chem_Add_Mst_c_Hospital_Code_update_bkp_07052026" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(200),
    "N_Type" integer NOT NULL,
    "C_Grade" character varying(10),
    "C_Qualification" character varying(50),
    "C_Add_1" character varying(200),
    "C_Add_2" character varying(50),
    "C_Add_3" character varying(50),
    "C_Add_4" character varying(50),
    "C_Pin" character varying(10),
    "C_Phone" character varying(20),
    "C_Fax" character varying(50),
    "C_Category" text,
    "C_Area_Code" character varying(10),
    "C_Subarea_Code" character varying(10),
    "D_DOB" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "n_Status" integer,
    "D_Create_Date" timestamp without time zone,
    "D_modify_Date" timestamp without time zone,
    "C_Email_ID" character varying(50),
    "C_FsCode" character varying(10),
    "c_region_code" character varying(10),
    "n_convert" numeric,
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(20),
    "n_lami" double precision,
    "n_lgmi" double precision,
    "c_tin_no" character varying(50),
    "c_lic_no" character varying(50),
    "c_contact_name" character varying(50),
    "n_Sft_shop" numeric,
    "n_No_of_display_Shelf" numeric,
    "c_desc_display_shelf" character varying(100),
    "n_Front_Board_Height" numeric,
    "n_Front_Board_length" numeric,
    "n_Backlit" smallint,
    "n_Computerised" smallint,
    "c_lic_food" character varying(50),
    "c_sort" character varying(10),
    "c_contact_mob" character varying(50),
    "c_contact_outlet_num" character varying(50),
    "C_Landmark" character varying(100),
    "C_Short_Name" character varying(10),
    "C_Doc_Class" character varying(10),
    "C_Spousename" character varying(100),
    "D_SpouseDob" timestamp without time zone,
    "C_FName" character varying(50),
    "C_LName" character varying(50),
    "n_mcino" character varying(40),
    "C_HOSPITAL_NAME" character varying(200),
    "C_STREET_NAME" character varying(150),
    "C_AREA_NAME" character varying(150),
    "C_LANDMARK1" character varying(150),
    "C_CITY" character varying(150),
    "C_STATE" character varying(150),
    "C_HOUSE_NAME" character varying(150),
    "C_STREET_NAME1" character varying(150),
    "C_AREA_NAME1" character varying(150),
    "C_LANDMARK2" character varying(150),
    "C_CITY_1" character varying(150),
    "N_PATIENTS" character varying(150),
    "N_CRNTBUSINES" character varying(150),
    "C_STATE1" character varying(150),
    "C_PINCODE1" character varying(150),
    "C_BUSINES_POTENTIAL" character varying(150),
    "D_CHILD_DOB1" timestamp without time zone,
    "D_CHILD_DOB2" timestamp without time zone,
    "D_CHILD_DOB3" timestamp without time zone,
    "n_age" character varying(10),
    "C_SPECIALITY" character varying(150),
    "C_childnname1" character varying(150),
    "C_childnname2" character varying(150),
    "C_childnname3" character varying(150),
    "n_drpurchase" integer,
    "N_drprescription" integer,
    "N_drpotential" character varying(50),
    "c_landline" character varying(20),
    "c_middlename" character varying(50),
    "c_tldl1" character varying(100),
    "c_tldl2" character varying(100),
    "c_dlfood1" character varying(100),
    "c_tldl11" character varying(100),
    "c_tldl12" character varying(100),
    "c_dlfood2" character varying(100),
    "d_DLDate1" timestamp without time zone,
    "d_DLDate2" timestamp without time zone,
    "c_pan1" character varying(100),
    "c_pan2" character varying(100),
    "c_Purchase_manager_Name" character varying(100),
    "c_Purchase_manager_Mob" character varying(20),
    "c_Account_Type" character varying(50),
    "n_visit_freq" integer,
    "n_fridge" integer,
    "c_Institutn_type" character varying(100),
    "c_Account_Grp" character varying(100),
    "n_hostel" integer,
    "n_no_of_canteen" integer,
    "c_type_of_food" text,
    "c_Canteen_contr_name" character varying(100),
    "c_Canteen_contr_addr" character varying(500),
    "D_agreement_date" timestamp without time zone,
    "n_Total_Disc" numeric,
    "D_Total_Disc_From" timestamp without time zone,
    "D_Total_Disc_To" timestamp without time zone,
    "c_Store_Classification" character varying(100),
    "n_Store_Type" integer,
    "c_Distributor" character varying(20),
    "c_store_type" character varying(50),
    "c_Store_Manager" character varying(50),
    "c_Distributor_name" character varying(100),
    "n_active" integer,
    "c_classification" character varying(10),
    "c_chemisttype" character varying(10),
    "n_WindowSize" character varying(50),
    "C_AccountClassfctn" character varying(5),
    "C_AccountAddress" character varying(100),
    "C_AccountCode" character varying(10),
    "n_DaysTo_Activate" integer,
    "d_Start_Date" timestamp without time zone,
    "d_activation_Date" timestamp without time zone,
    "c_storetype" character varying(50),
    "c_distributorcode" character varying(50),
    "c_visitfrequency" character varying(50),
    "c_classificationcode" character varying(50),
    "c_stmanager" character varying(50),
    "C_SA_Classification" character varying(20),
    "c_Hospital_Code" character varying(200),
    "C_TypeofHsptl" character varying(300),
    "C_Area" character varying(100),
    "C_Inhouse_phar_exist" character varying(100),
    "C_Fin_Turnover" character varying(100),
    "C_Potencial" character varying(100),
    "C_No_of_Beds" character varying(100),
    "C_No_of_Emer_Beds" character varying(100),
    "C_No_of_Critic_ICU_Beds" character varying(100),
    "C_No_of_Sur_Theaters" character varying(100),
    "C_Hospital" character varying(100),
    "C_Tot_No_of_Doctors" character varying(100),
    "C_Pur_Mgr_Name" character varying(100),
    "C_Pur_Mgr__Contact" character varying(100),
    "C_Stk_Inchrg_Name" character varying(100),
    "C_Stk_Inchrg_Contact" character varying(100),
    "C_Fin_Ofcr_Name" character varying(100),
    "C_Fin_Ofcr_Contact" character varying(100),
    "C_No_of_Thrputc_Group" character varying(100),
    "C_Techng_Institution" character varying(100),
    "C_Gstno" character varying(50),
    "c_docmstpan" character varying(10),
    "c_classtype" character varying(10),
    "n_SASCollection" integer,
    "c_uniqueid" character varying(50),
    "c_contact_person" character varying(200),
    "c_purchasemanagermail" character varying(200),
    "n_purchaseteam_size" integer,
    "c_stockiesname" character varying(200),
    "n_lami_res" double precision,
    "n_lgmi_res" double precision,
    "C_profile_Image" text,
    "c_department_catered" integer,
    "c_brands_focused" character varying(2000),
    "C_Phone_Enc" character varying(500),
    "doctors_covered_hospital" integer,
    "c_hetero_distributor_supplier" character varying(10),
    "c_hetero_brands_available" character varying(10),
    "n_no_new_admissions_perday" integer,
    "c_diagnostic_lab_iside_hospital" integer,
    "n_no_of_cafes" integer,
    "n_patient_kiosk" integer,
    "n_hospital_digitally_active" integer,
    "n_digital_handle_hospital_promotions" integer,
    "n_hospital_involved_mass_screening" integer,
    "n_hospital_organizing_specific_seminars" integer,
    "n_is_hospital_medical_emergency" integer,
    "n_pharmacy_scheme_specificity" integer,
    "n_dnb_hospital" integer,
    "n_number_of_patients" integer,
    "n_no_oncology_hospitals" integer,
    "n_no_of_beds_oncology_patients" integer,
    "n_no_patients_chemotherapy_surgery" integer,
    "n_no_chemotherapy_per_day" integer,
    "c_indication_wise_regiments" integer,
    "c_expected_business_activity_customers" character varying(250)
);

CREATE TABLE "Tbl_Doc_Stock_Chem_Add_Mst_log" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(200),
    "N_Type" integer NOT NULL,
    "C_Grade" character varying(10),
    "C_Qualification" character varying(50),
    "C_Add_1" character varying(200),
    "C_Add_2" character varying(200),
    "C_Add_3" character varying(70),
    "C_Add_4" character varying(70),
    "C_Pin" character varying(20),
    "C_Phone" character varying(30),
    "C_Fax" character varying(50),
    "C_Category" character varying(10),
    "C_Area_Code" character varying(10),
    "C_Subarea_Code" character varying(10),
    "D_DOB" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "n_Status" integer,
    "D_Create_Date" timestamp without time zone,
    "D_modify_Date" timestamp without time zone,
    "C_Email_ID" character varying(50),
    "C_FsCode" character varying(10),
    "c_region_code" character varying(10),
    "n_convert" numeric,
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "n_lami" double precision,
    "n_lgmi" double precision,
    "c_tin_no" character varying(50),
    "c_lic_no" character varying(50),
    "c_contact_name" character varying(50),
    "n_Sft_shop" numeric,
    "n_No_of_display_Shelf" numeric,
    "c_desc_display_shelf" character varying(100),
    "n_Front_Board_Height" numeric,
    "n_Front_Board_length" numeric,
    "n_Backlit" smallint,
    "n_Computerised" smallint,
    "c_lic_food" character varying(50),
    "c_sort" character varying(10),
    "c_contact_mob" character varying(50),
    "c_contact_outlet_num" character varying(50),
    "C_Landmark" character varying(100),
    "C_Short_Name" character varying(10),
    "C_Doc_Class" character varying(10),
    "C_Spousename" character varying(100),
    "D_SpouseDob" timestamp without time zone,
    "C_FName" character varying(50),
    "C_LName" character varying(50),
    "n_mcino" character varying(30)
);

CREATE TABLE "Tbl_Doc_Stock_Chem_Add_Mst_temp" (
    "C_Code" character(6),
    "C_Name" character(50),
    "N_Type" numeric,
    "C_Grade" character(20),
    "C_Qualification" character(30),
    "C_Add_1" character(40),
    "C_Add_2" character(40),
    "C_Add_3" character(40),
    "C_Add_4" character(40),
    "C_Pin" character(6),
    "C_Phone" character(30),
    "C_Fax" character(30),
    "C_Category" character(6),
    "C_Area_Code" character(6),
    "C_Subarea_Code" character(6),
    "D_DOB" character varying(30),
    "D_DOW" character varying(30),
    "n_Status" numeric,
    "D_Create_Date" character varying(30),
    "D_modify_Date" character varying(30),
    "C_Email_ID" character varying(30),
    "C_FsCode" character(6),
    "c_region_code" character(6),
    "n_convert" numeric,
    "n_deleted" numeric,
    "d_created" character varying(30),
    "d_modified" character varying(30),
    "c_modifier" character varying(30)
);

CREATE TABLE "Tbl_Doclist_Excel_Progressflag" (
    "n_no" integer NOT NULL DEFAULT nextval('"Tbl_Doclist_Excel_Progressflag_n_no_seq"'::regclass),
    "c_fscode" character(10),
    "n_flag" integer,
    "URL" text,
    "page" character varying(500),
    "Division" character varying(500),
    "Region" character varying(500),
    "Area" character varying(500),
    "FS" character varying(500),
    "d_created_time" timestamp without time zone,
    "d_req_pro_start_time" timestamp without time zone,
    "d_req_pro_completed_time" timestamp without time zone,
    "d_req_accessed_time" timestamp without time zone
);

CREATE TABLE "Tbl_Doctor_Target" (
    "c_doc_code" character varying(10) NOT NULL,
    "d_date" timestamp without time zone NOT NULL,
    "n_target" numeric
);

CREATE TABLE "Tbl_Document_Mst" (
    "C_code" character varying(10),
    "C_name" character varying(100),
    "C_sh_name" character varying(10),
    "N_Status" integer,
    "C_template_format_path" character varying(100),
    "C_mandatory" character varying(10),
    "N_Deleted" numeric,
    "D_Created" timestamp without time zone,
    "D_Modified" timestamp without time zone,
    "C_Modifier" character varying(50),
    "c_freshermandatory" character varying(5)
);

CREATE TABLE "Tbl_Download" (
    "ID" numeric NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "C_PdfFile" character varying(50),
    "C_Description" character varying(100)
);

CREATE TABLE "Tbl_Dr_Category_Filter" (
    "c_divcode" character varying(50)
);

CREATE TABLE "Tbl_Dwr_Doctor_Query" (
    "n_srno" numeric NOT NULL,
    "c_dsc_code" character varying(10) NOT NULL,
    "c_subject" character varying(50),
    "c_details" character varying(250),
    "c_email" character varying(100),
    "n_type" integer NOT NULL
);

CREATE TABLE "Tbl_ED_ZipExcel_Temp_Upload" (
    "n_srno" integer NOT NULL DEFAULT nextval('"Tbl_ED_ZipExcel_Temp_Upload_n_srno_seq"'::regclass),
    "Type_Brand_Item" character varying(50),
    "Brand_Code" character varying(100),
    "Category_Code" character varying(100),
    "VA_NAME" text,
    "VA_PAGENAME" text,
    "ZIP_FILENAME" character varying(500),
    "ZIP_FILEPATH" character varying(500),
    "Slide1_File" character varying(50),
    "Slide1" character varying(50),
    "Slide2_File" character varying(50),
    "Slide2" character varying(50),
    "Slide3_File" character varying(50),
    "Slide3" character varying(50),
    "Slide4_File" character varying(50),
    "Slide4" character varying(50),
    "Slide5_File" character varying(50),
    "Slide5" character varying(50),
    "Slide6_File" character varying(50),
    "Slide6" character varying(50),
    "Slide7_File" character varying(50),
    "Slide7" character varying(50),
    "Slide8_File" character varying(50),
    "Slide8" character varying(50),
    "Slide9_File" character varying(50),
    "Slide9" character varying(50),
    "Slide10_File" character varying(50),
    "Slide10" character varying(50),
    "Slide11_File" character varying(50),
    "Slide11" character varying(50),
    "Slide12_File" character varying(50),
    "Slide12" character varying(50),
    "Slide13_File" character varying(50),
    "Slide13" character varying(50),
    "Slide14_File" character varying(50),
    "Slide14" character varying(50),
    "Slide15_File" character varying(50),
    "Slide15" character varying(50),
    "Slide16_File" character varying(50),
    "Slide16" character varying(50),
    "Slide17_File" character varying(50),
    "Slide17" character varying(50),
    "Slide18_File" character varying(50),
    "Slide18" character varying(50),
    "Slide19_File" character varying(50),
    "Slide19" character varying(50),
    "Slide20_File" character varying(50),
    "Slide20" character varying(50),
    "Slide21_File" character varying(50),
    "Slide21" character varying(50),
    "Slide22_File" character varying(50),
    "Slide22" character varying(50),
    "Slide23_File" character varying(50),
    "Slide23" character varying(50),
    "Slide24_File" character varying(50),
    "Slide24" character varying(50),
    "Slide25_File" character varying(50),
    "Slide25" character varying(50),
    "Slide26_File" character varying(50),
    "Slide26" character varying(50),
    "Slide27_File" character varying(50),
    "Slide27" character varying(50),
    "Slide28_File" character varying(50),
    "Slide28" character varying(50),
    "Slide29_File" character varying(50),
    "Slide29" character varying(50),
    "Slide30_File" character varying(50),
    "Slide30" character varying(50),
    "d_date" character varying(20) DEFAULT to_char(CURRENT_TIMESTAMP, 'DD/MM/YYYY'::text),
    "c_emp_no" character varying(50),
    "c_azure_url" text,
    "c_azurehtml_urls" text
);

CREATE TABLE "Tbl_Email_Inbox" (
    "n_inboxid" integer NOT NULL DEFAULT nextval('"Tbl_Email_Inbox_n_inboxid_seq"'::regclass),
    "c_fromuserid" text,
    "c_ToUserID" text,
    "c_cc" text,
    "d_Created" timestamp without time zone NOT NULL,
    "c_Subject" character varying(255),
    "c_Body" text,
    "c_filepath" text,
    "n_parentid" integer,
    "n_trash_moved" character varying(50)
);

CREATE TABLE "Tbl_Emp_Mst" (
    "C_EmpCode" character varying(10) NOT NULL,
    "C_NAMEPREFIX" character varying(6),
    "C_Name" character varying(50),
    "C_Grade" character(10),
    "C_Qualification" character varying(30),
    "C_Add_1" character varying(50),
    "C_Add_2" character varying(50),
    "C_Add_3" character varying(50),
    "C_Add_4" character varying(50),
    "C_Pin" character(10),
    "C_Mobile_No" character varying(50),
    "C_OFFICE_PHONE_NO" character varying(20),
    "C_OFFICE_PHONE_EXTNNO" character varying(20),
    "C_Fax" character(20),
    "C_Desc" character varying(50),
    "C_SEX" character(3),
    "D_DOB" timestamp without time zone,
    "D_DOJ" timestamp without time zone,
    "D_CONF_DATE" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "C_EMAIL_OFFICE" character varying(50),
    "C_EMAIL_PERSONAL" character varying(50),
    "C_Desig" character varying(20),
    "c_bankcode" character varying(100),
    "C_Accno" character varying(50),
    "N_Deleted" integer NOT NULL DEFAULT 0,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "C_DEPT_CODE" character varying(10),
    "C_LOC_CODE" character varying(10),
    "D_RELIEVE_DATE" timestamp without time zone,
    "C_ROLE" character varying(10) DEFAULT '0'::character varying,
    "C_JobDesc" character varying(50),
    "C_Hq_Address" character varying(200),
    "C_PAdd_1" character varying(200),
    "C_PAdd_2" character varying(200),
    "C_PAdd_3" character varying(200),
    "C_PAdd_4" character varying(200),
    "C_MAdd_1" character varying(200),
    "C_MAdd_2" character varying(200),
    "C_MAdd_3" character varying(200),
    "C_MAdd_4" character varying(200),
    "c_branch_name" character varying(100),
    "c_rtgs_neft" character varying(12),
    "c_hq_pin" character varying(50),
    "c_padd_pin" character varying(50),
    "c_madd_pin" character varying(50),
    "c_emp_type" integer,
    "c_pan" character varying(10),
    "c_auto_report_email" character varying(50),
    "c_email_pwd" character varying(50),
    "Name_InAadhar" character varying(500),
    "Aadhar_No" character varying(20),
    "DOB_InAadhar" timestamp without time zone,
    "AdharImgPath" character varying(200),
    "C_ESI_NO" character varying(15),
    "C_ADHAR_NO" character varying(50),
    "C_EMERGENCYMOBILE_NO" character varying(20),
    "C_CONTACTNAME" character varying(200),
    "C_profile_Image" text
);

CREATE TABLE "Tbl_Emp_parent_fs" (
    "C_EmpCode" character varying(10) NOT NULL,
    "C_ParentCode" character varying(10),
    "C_FSCode" character varying(10)
);

CREATE TABLE "Tbl_Excel_File" (
    "N_Srno" integer,
    "C_Display_Name" character varying(50),
    "C_Excel_Name" character varying(50)
);

CREATE TABLE "Tbl_Excelupload_Mst" (
    "C_CompID" character varying(50) NOT NULL,
    "C_CompFolder" character varying(50) NOT NULL,
    "C_Path" character varying(100)
);

CREATE TABLE "Tbl_Expense" (
    "C_FS_CODE" character varying(10) NOT NULL,
    "D_DATE" timestamp without time zone NOT NULL,
    "N_TA" numeric DEFAULT '0'::numeric,
    "N_DA" numeric DEFAULT '0'::numeric,
    "N_DA_APP" numeric DEFAULT '0'::numeric,
    "N_TA_APP" numeric DEFAULT '0'::numeric,
    "N_TOT_KM" numeric DEFAULT '0'::numeric,
    "N_EXPA" numeric DEFAULT '0'::numeric,
    "N_EXPB" numeric DEFAULT '0'::numeric,
    "N_EXPC" numeric DEFAULT '0'::numeric,
    "N_EXPA_APP" numeric DEFAULT '0'::numeric,
    "N_EXPB_APP" numeric DEFAULT '0'::numeric,
    "N_EXPC_APP" numeric DEFAULT '0'::numeric,
    "N_APPROVED" numeric DEFAULT '0'::numeric,
    "N_CONFIRMED" numeric DEFAULT '0'::numeric,
    "C_NOTE" character varying(100),
    "C_PLACE_VISIT" character varying(100),
    "C_EMP_CODE" character varying(10) NOT NULL,
    "n_AdditionalTA" numeric
);

CREATE TABLE "Tbl_ExpenseCategory" (
    "N_Type" integer NOT NULL,
    "C_Name" character varying(50),
    "c_shname" character varying(20),
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10)
);

CREATE TABLE "Tbl_Expense_Mst" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50),
    "n_Upper_Amount" numeric,
    "C_Account_code" character varying(6),
    "N_Type" integer,
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "n_visible" integer NOT NULL DEFAULT 1
);

CREATE TABLE "Tbl_Expense_Request_Management" (
    "n_srno" numeric NOT NULL,
    "c_fs_code" character varying(100),
    "n_NextHeirarchyType" integer,
    "c_NextHeirarchyFSCode" character varying(100),
    "n_setupid" integer,
    "n_status" integer,
    "d_Modifieddate" timestamp without time zone,
    "n_apprequired" integer,
    "n_SingleOrMultiple" integer,
    "c_DeskCode" character varying(50),
    "n_submit" integer,
    "n_confirmsubmit" integer,
    "c_empno" character varying(20),
    "c_approvedby" character varying(2000),
    "c_confirmedby" character varying(100)
);

CREATE TABLE "Tbl_External_Employee_Sale" (
    "c_emp_code" character varying(10) NOT NULL,
    "d_date" timestamp without time zone NOT NULL,
    "c_month" character varying(2),
    "c_year" character varying(4),
    "c_item_code" character varying(10) NOT NULL,
    "n_qty" numeric,
    "n_value" numeric,
    "n_tgt_qty" numeric,
    "n_tgt_value" numeric,
    "c_group_name" character varying(200),
    "c_incentive_group_name" character varying(300),
    "c_incentive_sub_group_name" character varying(500)
);

CREATE TABLE "Tbl_External_Stockist_Sale" (
    "c_stockist_code" character varying(10) NOT NULL,
    "c_stockist_name" character varying(200),
    "d_date" timestamp without time zone NOT NULL,
    "c_month" character varying(2),
    "c_year" character varying(4),
    "c_item_code" character varying(10) NOT NULL,
    "n_qty" numeric,
    "n_value" numeric,
    "c_div_code" character varying(10),
    "c_emp_code" character varying(10) NOT NULL
);

CREATE TABLE "Tbl_FMV_Grade" (
    "N_ID" integer NOT NULL DEFAULT nextval('"Tbl_FMV_Grade_N_ID_seq"'::regclass),
    "C_Category_Code" character varying(50),
    "C_Category_Name" character varying(100),
    "N_Priority" integer,
    "N_Status" integer,
    "D_CreatedOn" timestamp without time zone,
    "C_CreatedBy" character varying(50),
    "D_ModifiedOn" timestamp without time zone,
    "C_ModifiedBy" character varying(50)
);

CREATE TABLE "Tbl_FS_Det" (
    "c_code" character varying(10) NOT NULL,
    "n_type" integer NOT NULL,
    "d_date" timestamp without time zone,
    "c_note" character varying(1000)
);

CREATE TABLE "Tbl_FS_Mst" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(100),
    "N_Type" numeric NOT NULL,
    "C_Grade" character(10),
    "C_Qualification" character varying(30),
    "C_Add_1" character varying(50),
    "C_Add_2" character varying(50),
    "C_Add_3" character varying(50),
    "C_Add_4" character varying(50),
    "C_Pin" character(10),
    "C_Phone" character(20),
    "C_Fax" character(20),
    "C_Category" character(10),
    "C_Area_Code" character varying(10) NOT NULL,
    "C_Parent" character(10),
    "C_EmpNo" character varying(10) NOT NULL,
    "C_Desc" character varying(50),
    "D_DOB" timestamp without time zone,
    "D_DOJ" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "n_Status" integer,
    "C_Email_ID" character varying(50),
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "N_ptype" integer,
    "c_div_code" character varying(10),
    "d_relieving_date" timestamp without time zone
);

CREATE TABLE "Tbl_FS_Mst_LogTable" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "N_Type" numeric NOT NULL,
    "C_Grade" character(10),
    "C_Qualification" character varying(30),
    "C_Add_1" character varying(50),
    "C_Add_2" character varying(50),
    "C_Add_3" character varying(50),
    "C_Add_4" character varying(50),
    "C_Pin" character(10),
    "C_Phone" character(20),
    "C_Fax" character(20),
    "C_Category" character(10),
    "C_Area_Code" character varying(10) NOT NULL,
    "C_Parent" character(10),
    "C_EmpNo" character varying(10) NOT NULL,
    "C_Desc" character varying(50),
    "D_DOB" timestamp without time zone,
    "D_DOJ" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "n_Status" integer,
    "C_Email_ID" character varying(50),
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "N_ptype" integer,
    "c_div_code" character varying(10),
    "d_relieving_date" timestamp without time zone
);

CREATE TABLE "Tbl_FS_Mst_bkp_21042026" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(100),
    "N_Type" numeric NOT NULL,
    "C_Grade" character(10),
    "C_Qualification" character varying(30),
    "C_Add_1" character varying(50),
    "C_Add_2" character varying(50),
    "C_Add_3" character varying(50),
    "C_Add_4" character varying(50),
    "C_Pin" character(10),
    "C_Phone" character(20),
    "C_Fax" character(20),
    "C_Category" character(10),
    "C_Area_Code" character varying(10) NOT NULL,
    "C_Parent" character(10),
    "C_EmpNo" character varying(10) NOT NULL,
    "C_Desc" character varying(50),
    "D_DOB" timestamp without time zone,
    "D_DOJ" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "n_Status" integer,
    "C_Email_ID" character varying(50),
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "N_ptype" integer,
    "c_div_code" character varying(10),
    "d_relieving_date" timestamp without time zone
);

CREATE TABLE "Tbl_FocussedBrands" (
    "c_Brand_Code" character varying(50),
    "d_From_Date" timestamp without time zone,
    "d_To_Date" timestamp without time zone,
    "c_Note" character varying(200),
    "n_SrNo" integer NOT NULL
);

CREATE TABLE "Tbl_GDN" (
    "C_DEP_CODE" character varying(10) NOT NULL,
    "C_YEAR" character(4) NOT NULL,
    "C_PREFIX" character(10) NOT NULL,
    "N_SRNO" numeric NOT NULL,
    "D_Date" timestamp without time zone,
    "C_FS_CODE" character varying(10),
    "N_FLG" integer,
    "N_TOTAL" numeric,
    "C_INVOICE" character varying(50),
    "modidt" timestamp without time zone
);

CREATE TABLE "Tbl_GDN_Details" (
    "C_DEP_CODE" character varying(10) NOT NULL,
    "C_YEAR" character(4) NOT NULL,
    "C_PREFIX" character(10) NOT NULL,
    "N_SRNO" numeric NOT NULL,
    "N_ROW_ID" numeric NOT NULL,
    "C_ITEM_CODE" character varying(10),
    "C_BATCH_NO" character varying(15),
    "N_QTY" numeric,
    "N_RATE" numeric
);

CREATE TABLE "Tbl_GDN_NotificationDetails" (
    "N_SRNO" numeric NOT NULL,
    "C_FS_CODE" character varying(20),
    "D_Date" timestamp without time zone
);

CREATE TABLE "Tbl_Gadget_Mst" (
    "c_code" character varying(10) NOT NULL,
    "c_name" character varying(50) NOT NULL,
    "c_description" character varying(200),
    "d_fromdate" timestamp without time zone,
    "d_todate" timestamp without time zone,
    "n_deleted" integer NOT NULL,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(50),
    "n_active" boolean NOT NULL DEFAULT true,
    "c_url" character varying(100),
    "N_Must_Read" integer
);

CREATE TABLE "Tbl_Heirarchy_PSG_DSCA_Settings" (
    "N_DscaType" integer NOT NULL,
    "N_Product" integer DEFAULT 0,
    "N_Sample" integer DEFAULT 0,
    "N_Gift" integer DEFAULT 0,
    "n_promo" integer NOT NULL DEFAULT 1,
    "n_c2c" integer NOT NULL DEFAULT 1,
    "n_assetdoctors" integer NOT NULL DEFAULT 1,
    "n_camp" integer NOT NULL DEFAULT 1
);

CREATE TABLE "Tbl_Holiday_Desc" (
    "N_Type" numeric NOT NULL,
    "C_Des" character varying(50) NOT NULL,
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "c_modifier" character varying(10),
    "d_modified" timestamp without time zone,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "Tbl_Holiday_Mst" (
    "C_State_Code" character(10) NOT NULL,
    "D_Date" timestamp without time zone NOT NULL,
    "N_Type" integer NOT NULL,
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "c_division" character varying(2000)
);

CREATE TABLE "Tbl_HospitalMst_Det" (
    "C_Code" character varying(10) NOT NULL,
    "C_therap_grp_code" character varying(300),
    "C_pg_code" character varying(200)
);

CREATE TABLE "Tbl_Integers" (
    "i" numeric NOT NULL
);

CREATE TABLE "Tbl_Integration_Alert" (
    "c_code" character varying(10),
    "c_name" character varying(50),
    "c_divcode" character varying(10),
    "c_divname" character varying(50),
    "n_mrp" numeric,
    "n_std_rate" numeric,
    "n_pts_rate" numeric,
    "c_prefix" character varying(10)
);

CREATE TABLE "Tbl_InvestmentPlan_MST" (
    "n_srno" integer NOT NULL,
    "d_date" timestamp without time zone,
    "c_investcode" character varying(10),
    "c_fscode" character varying(10),
    "c_drcode" character varying(10),
    "n_current_business" numeric,
    "n_investment_planned" integer,
    "c_request" character varying(200),
    "c_commitment" character varying(200),
    "c_promises" character varying(200),
    "n_total_expected_business" numeric,
    "c_emp_code" character varying(10),
    "n_confirmed" integer,
    "d_confirmedon" timestamp without time zone,
    "c_confirmedby" character varying(50),
    "n_paid_amount" numeric,
    "d_paid_on" timestamp without time zone,
    "c_paid_by" character varying(50),
    "c_paid_as" character varying(10),
    "c_paid_refno" character varying(10),
    "c_pay_details1" character varying(200),
    "c_pay_details2" character varying(200),
    "n_months" integer,
    "n_closed" integer,
    "d_closeddate" timestamp without time zone,
    "n_type" integer,
    "d_BussExpctd_to" timestamp without time zone,
    "d_BussExpctd_Frm" timestamp without time zone,
    "c_parentCode" character varying(50),
    "c_desk_code" character varying(50),
    "childfscode" character varying(50),
    "n_patient" integer,
    "c_buss_Rxed" character varying(200),
    "n_avg_buss" numeric,
    "c_type_details" text,
    "n_month_split" integer
);

CREATE TABLE "Tbl_Investment_Mst" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "C_Note" character varying(50),
    "D_date_from" timestamp without time zone,
    "d_date_to" timestamp without time zone,
    "n_amt_from" integer,
    "n_amt_to" integer,
    "n_months_min" integer,
    "n_months_max" integer,
    "n_active" integer,
    "n_deleted" integer,
    "c_modifier" character varying(50),
    "d_modifieddate" timestamp without time zone,
    "n_MaxNRV" integer,
    "n_TotalBudget" numeric,
    "n_MinNRV" integer,
    "n_rate_editable" double precision,
    "c_inv_type" character varying(100)
);

CREATE TABLE "Tbl_Investment_desk" (
    "C_CODE" character varying(10) NOT NULL,
    "C_NAME" character varying(50) NOT NULL,
    "C_EMP_CODE" character varying(10) NOT NULL,
    "N_DELETED" integer NOT NULL DEFAULT 0,
    "D_CREATED" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "D_MODIFIED" timestamp without time zone,
    "C_MODIFIER" character varying(50),
    "C_Div_Code" character varying(50),
    "C_Region_Code" character varying(50),
    "C_Location_Code" character varying(50)
);

CREATE TABLE "Tbl_Investment_plan_det" (
    "n_srno" integer NOT NULL,
    "c_item_code" character varying(10),
    "n_month" integer,
    "d_date" timestamp without time zone,
    "n_Rx" integer,
    "n_Qty" integer,
    "n_val" numeric,
    "n_actrate" numeric,
    "n_rate" numeric
);

CREATE TABLE "Tbl_ItemDetail_Mst" (
    "c_item_code" character varying(10) NOT NULL,
    "n_flag" integer,
    "n_fstype" integer NOT NULL DEFAULT 1
);

CREATE TABLE "Tbl_ItemDetail_Mst1" (
    "c_item_code" character varying(10) NOT NULL,
    "n_flag" integer,
    "n_fstype" integer NOT NULL
);

CREATE TABLE "Tbl_ItemGroup_Category" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "C_Shortname" character varying(20),
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "c_modifier" character varying(10),
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone
);

CREATE TABLE "Tbl_ItemGroup_Category_temp" (
    "C_Code" character(6),
    "C_Name" character(50),
    "C_Shortname" character(20),
    "n_deleted" numeric,
    "c_modifier" character varying(30),
    "d_created" character varying(30),
    "d_modified" character varying(30)
);

CREATE TABLE "Tbl_Item_Category_Mst" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "C_Sh_Name" character(7),
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10)
);

CREATE TABLE "Tbl_Item_Category_Mst_temp" (
    "C_Code" character(6),
    "C_Name" character(50),
    "C_Sh_name" character(20),
    "n_deleted" numeric,
    "c_modifier" character varying(30),
    "d_created" character varying(30),
    "d_modified" character varying(30)
);

CREATE TABLE "Tbl_Item_Div" (
    "c_item_code" character varying(10) NOT NULL,
    "c_div_code" character varying(10) NOT NULL,
    "d_date_from" timestamp without time zone NOT NULL,
    "d_date_to" timestamp without time zone
);

CREATE TABLE "Tbl_Item_Mst" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "C_SH_Name" character varying(7),
    "c_company" character varying(30),
    "C_desc" character varying(50),
    "C_Pack" character(6),
    "n_Rate" numeric,
    "n_MRP" numeric,
    "n_Standard_Rate" numeric,
    "N_Type" numeric,
    "C_Category_Code" character varying(10),
    "C_DIV_CODE" character varying(10),
    "c_brand_code" character varying(10),
    "n_pts_rate" numeric,
    "D_Deleted" timestamp without time zone,
    "N_Status" integer DEFAULT 0,
    "C_Group_Code" character varying(50),
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "N_NRVRate" numeric,
    "c_qty_strip" character(6),
    "c_mfac_code" character varying(50),
    "c_refcode" character varying(50),
    "c_imageName" character varying(1000),
    "n_factor" numeric,
    "n_inner_quantity" integer,
    "n_outer_quantity" integer,
    "c_imageName_bloburl" text
);

CREATE TABLE "Tbl_Item_Mst_temp" (
    "C_Code" character(6),
    "C_Name" character(50),
    "C_SH_Name" character(6),
    "c_company" character varying(15),
    "C_desc" character varying(20),
    "C_Pack" character varying(6),
    "n_Rate" numeric,
    "n_MRP" numeric,
    "n_Standard_Rate" numeric,
    "N_Type" numeric,
    "C_Category_Code" character(6),
    "C_DIV_CODE" character(10),
    "c_brand_code" character(6),
    "n_pts_rate" numeric,
    "D_Deleted" numeric,
    "N_Status" numeric,
    "C_Group_Code" character(6),
    "n_deleted" numeric,
    "d_created" character varying(30),
    "d_modified" character varying(30),
    "c_modifier" character varying(16),
    "N_NRVRate" numeric
);

CREATE TABLE "Tbl_LC_Integration" (
    "N_ID" integer NOT NULL DEFAULT nextval('"Tbl_LC_Integration_N_ID_seq"'::regclass),
    "C_LC_C2Code" character varying(50),
    "C_LC_Base_Url" text,
    "C_LC_Api_Key" character varying(500),
    "C_LC_Token" character varying(500),
    "D_CreatedOn" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "C_CreatedBy" character varying(50),
    "D_ModifiedOn" timestamp without time zone,
    "C_ModifiedBy" character varying(50)
);

CREATE TABLE "Tbl_LandMark_Mst" (
    "C_Code" character varying(20) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "C_Sh_Name" character varying(7),
    "n_deleted" integer NOT NULL DEFAULT 0,
    "n_status" integer NOT NULL DEFAULT 0,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10)
);

CREATE TABLE "Tbl_Leave_Details" (
    "N_Srno" integer NOT NULL,
    "D_Date" timestamp without time zone NOT NULL,
    "N_Type" integer NOT NULL,
    "n_sandwitch_leave" integer,
    "n_sand_dependent_srno" integer,
    "n_leave_status" character varying(5)
);

CREATE TABLE "Tbl_Leave_Log" (
    "N_Srno" integer NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Apply_Date" timestamp without time zone NOT NULL,
    "D_Date_From" timestamp without time zone NOT NULL,
    "D_Date_To" timestamp without time zone,
    "N_Type" integer,
    "c_approved" character(1),
    "C_Approved_By" character(10),
    "C_Reason" character varying(100),
    "c_comment" character varying(250),
    "a_comment" character varying(250),
    "r_comment" character varying(250),
    "c_mgr_deleted" character(1),
    "c_mr_deleted" character(1),
    "c_cancelcomment" character varying(250),
    "d_approved_date" timestamp without time zone
);

CREATE TABLE "Tbl_Leave_Mst" (
    "N_Srno" integer NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Apply_Date" timestamp without time zone NOT NULL,
    "D_Date_From" timestamp without time zone NOT NULL,
    "D_Date_To" timestamp without time zone,
    "N_Type" integer,
    "c_approved" character(1),
    "C_Approved_By" character(10),
    "C_Reason" character varying(100),
    "c_comment" character varying(250),
    "r_comment" character varying(250),
    "a_comment" character varying(250),
    "c_mgr_deleted" character(1),
    "c_mr_deleted" character(1),
    "d_approved_date" timestamp without time zone,
    "c_autoapprove" character varying(2),
    "n_dayswaitedforapproval" integer,
    "n_setupdays" integer
);

CREATE TABLE "Tbl_Leave_Type" (
    "N_Srno" numeric NOT NULL,
    "C_Type" character varying(50) NOT NULL,
    "N_CarryForward" integer,
    "N_Default" numeric,
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "c_modifier" character varying(10),
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_sh_name" character varying(50)
);

CREATE TABLE "Tbl_LogColumnList" (
    "FieldName" character varying(20) NOT NULL,
    "FieldDescription" character varying(50) NOT NULL
);

CREATE TABLE "Tbl_MTP" (
    "N_Srno" integer NOT NULL,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "C_HQ_Code" character(10) NOT NULL,
    "N_Month" integer NOT NULL,
    "N_Year" integer NOT NULL,
    "c_approved" character(1),
    "C_Approved_By" character varying(50),
    "C_EMP_CODE" character varying(10) NOT NULL,
    "Lock_flag" integer,
    "C_Reason" character varying(200),
    "N_BLOCK_FLAG" integer,
    "D_Approved_Date" timestamp without time zone,
    "n_copy" integer,
    "c_approvedby_shifted" character varying(100),
    "D_Auto_MTP_Date" timestamp without time zone,
    "auto_appr_flag" integer NOT NULL DEFAULT 0,
    "auto_appr_date" timestamp without time zone,
    "c_is_approved" character varying(2) DEFAULT NULL::character varying,
    "n_resubmitted_count" integer DEFAULT 0,
    "d_resubmitted_date" date
);

CREATE TABLE "Tbl_MTP_Details" (
    "N_Srno" numeric NOT NULL,
    "N_RowId" numeric NOT NULL,
    "D_Date" timestamp without time zone NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" numeric NOT NULL,
    "C_Mode" character(10) NOT NULL,
    "N_DocVst" numeric,
    "N_ChemVst" numeric,
    "N_StkVst" numeric,
    "C_Subarea_Note" character varying(100),
    "c_subarea_code" character varying(10) NOT NULL,
    "c_work_type" character varying(10),
    "c_work_with" character varying(50),
    "N_OtherVst" numeric,
    "c_fs_code" character varying(10),
    "n_copy" integer,
    "N_HosVst" numeric,
    "n_From_Android" integer,
    "n_campvst" numeric,
    "c_is_approved" character varying(2) DEFAULT NULL::character varying
);

CREATE TABLE "Tbl_MTP_SubDetails" (
    "N_SrNo" numeric NOT NULL,
    "N_MTPRowId" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Doc_Code" character varying(10),
    "C_Note" character varying(500),
    "c_work_with" character varying(50),
    "n_type" integer,
    "n_copy" integer,
    "C_meet_from" character varying(50),
    "C_meet_to" character varying(50),
    "c_is_approved" character varying(2) DEFAULT NULL::character varying
);

CREATE TABLE "Tbl_MTP_Sub_Details" (
    "N_Srno" numeric NOT NULL,
    "C_Doc_Code" character varying(10),
    "N_RowId" integer,
    "C_Item_Code" character(10),
    "C_ITEM_EXP" character(10),
    "n_Product_Unit" numeric,
    "N_Type" integer,
    "N_AUTO" numeric,
    "N_MTPRowId" numeric,
    "n_copy" integer,
    "c_is_approved" character varying(2) DEFAULT NULL::character varying
);

CREATE TABLE "Tbl_MTP_stp" (
    "N_Srno" integer NOT NULL,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "C_HQ_Code" character(10) NOT NULL,
    "N_Month" integer NOT NULL,
    "N_Year" integer NOT NULL,
    "c_approved" character(1),
    "C_Approved_By" character varying(50),
    "C_EMP_CODE" character varying(10) NOT NULL,
    "Lock_flag" integer,
    "C_Reason" character varying(200),
    "N_BLOCK_FLAG" integer,
    "D_Approved_Date" timestamp without time zone,
    "N_STP_Template_Created_For" numeric
);

CREATE TABLE "Tbl_MTP_stp_20092018" (
    "N_Srno" integer NOT NULL,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "C_HQ_Code" character(10) NOT NULL,
    "N_Month" integer NOT NULL,
    "N_Year" integer NOT NULL,
    "c_approved" character(1),
    "C_Approved_By" character varying(50),
    "C_EMP_CODE" character varying(10) NOT NULL,
    "Lock_flag" integer,
    "C_Reason" character varying(200),
    "N_BLOCK_FLAG" integer,
    "D_Approved_Date" timestamp without time zone
);

CREATE TABLE "Tbl_MTP_stp_Details" (
    "N_Srno" numeric NOT NULL,
    "N_RowId" numeric NOT NULL,
    "N_dayof_week" character varying(20) NOT NULL,
    "n_week" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" numeric NOT NULL,
    "C_Mode" character(10) NOT NULL,
    "N_DocVst" numeric,
    "N_ChemVst" numeric,
    "N_StkVst" numeric,
    "C_Subarea_Note" character varying(100),
    "c_subarea_code" character varying(10) NOT NULL,
    "c_work_type" character varying(10),
    "c_work_with" character varying(50),
    "N_OtherVst" numeric,
    "c_fs_code" character varying(10)
);

CREATE TABLE "Tbl_MTP_stp_Details_20092018" (
    "N_Srno" numeric NOT NULL,
    "N_RowId" numeric NOT NULL,
    "N_dayof_week" character varying(20) NOT NULL,
    "n_week" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" numeric NOT NULL,
    "C_Mode" character(10) NOT NULL,
    "N_DocVst" numeric,
    "N_ChemVst" numeric,
    "N_StkVst" numeric,
    "C_Subarea_Note" character varying(100),
    "c_subarea_code" character varying(10) NOT NULL,
    "c_work_type" character varying(10),
    "c_work_with" character varying(50),
    "N_OtherVst" numeric,
    "c_fs_code" character varying(10)
);

CREATE TABLE "Tbl_MTP_stp_SubDetails" (
    "N_SrNo" numeric NOT NULL,
    "N_MTPRowId" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Doc_Code" character varying(10),
    "C_Note" character varying(500),
    "c_work_with" character varying(50),
    "n_type" integer
);

CREATE TABLE "Tbl_MTP_stp_SubDetails_20092018" (
    "N_SrNo" numeric NOT NULL,
    "N_MTPRowId" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Doc_Code" character varying(10),
    "C_Note" character varying(500),
    "c_work_with" character varying(50),
    "n_type" integer
);

CREATE TABLE "Tbl_MTP_stp_Sub_Details" (
    "N_Srno" numeric NOT NULL,
    "C_Doc_Code" character varying(10),
    "N_RowId" integer,
    "C_Item_Code" character(10),
    "C_ITEM_EXP" character(10),
    "n_Product_Unit" numeric,
    "N_Type" integer,
    "N_AUTO" numeric,
    "N_MTPRowId" numeric
);

CREATE TABLE "Tbl_MTP_stp_Sub_Details_20092018" (
    "N_Srno" numeric NOT NULL,
    "C_Doc_Code" character varying(10),
    "N_RowId" integer,
    "C_Item_Code" character(10),
    "C_ITEM_EXP" character(10),
    "n_Product_Unit" numeric,
    "N_Type" integer,
    "N_AUTO" numeric,
    "N_MTPRowId" numeric
);

CREATE TABLE "Tbl_ManageExpenseTA_AdditionalSettings" (
    "n_srno" integer NOT NULL DEFAULT nextval('"Tbl_ManageExpenseTA_AdditionalSettings_n_srno_seq"'::regclass),
    "n_FsType" integer,
    "c_ExpCode" character varying(20),
    "n_SeqNo" integer,
    "n_Flag" integer,
    "n_Amount" numeric,
    "n_TotalCall" integer,
    "n_DrCall" integer,
    "n_ChCall" integer,
    "n_StkCall" integer,
    "n_OtherCall" integer,
    "n_deleted" integer NOT NULL DEFAULT 0,
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "Tbl_ManageExpenseTA_AdditionalSettings_bck" (
    "n_srno" integer NOT NULL DEFAULT nextval('"Tbl_ManageExpenseTA_AdditionalSettings_bck_n_srno_seq"'::regclass),
    "n_FsType" integer,
    "c_ExpCode" character varying(20),
    "n_SeqNo" integer,
    "n_Flag" integer,
    "n_Amount" numeric,
    "n_TotalCall" integer,
    "n_DrCall" integer,
    "n_ChCall" integer,
    "n_StkCall" integer,
    "n_OtherCall" integer,
    "n_deleted" integer NOT NULL,
    "d_date" timestamp without time zone
);

CREATE TABLE "Tbl_MandatoryCircular" (
    "C_Code" character varying(10) NOT NULL,
    "c_subject" character varying(100) NOT NULL,
    "c_circular_type" character varying(10) NOT NULL,
    "d_entry_date" timestamp without time zone NOT NULL,
    "d_from_date" timestamp without time zone NOT NULL,
    "d_to_date" timestamp without time zone,
    "n_active" boolean NOT NULL,
    "c_modifier" character varying(10),
    "d_modified" timestamp without time zone,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "n_deleted" integer NOT NULL DEFAULT 0,
    "c_filename" character varying(1000),
    "c_description" text,
    "n_filetype" integer
);

CREATE TABLE "Tbl_MandatoryCircular_ImageDtls" (
    "c_code" character varying(20),
    "c_filename" character varying(50),
    "n_filetype" integer,
    "n_srort" integer
);

CREATE TABLE "Tbl_Map_Chem_Doc" (
    "c_doc_code" character(10) NOT NULL,
    "c_chem_code" character(10) NOT NULL,
    "Weightage" numeric
);

CREATE TABLE "Tbl_Map_Hospital_Doc" (
    "c_doc_code" character(10) NOT NULL,
    "c_hospital_code" character(10) NOT NULL,
    "Weightage" numeric
);

CREATE TABLE "Tbl_MasterCreated_Date" (
    "D_Created_Date" timestamp without time zone NOT NULL
);

CREATE TABLE "Tbl_Master_Setup_Header" (
    "n_ID" integer NOT NULL,
    "c_TableName" character varying(100),
    "c_DisplayNameInTheHeader" character varying(100),
    "c_DisplayNameForList" character varying(100),
    "c_extra_search_condition" character varying(7000),
    "menuid" character varying(100),
    "c_role" character varying(20)
);

CREATE TABLE "Tbl_Menu_Items" (
    "itemid" integer NOT NULL,
    "menuid" integer,
    "text" character varying(100),
    "url" character varying(255),
    "showmenu" character varying(50),
    "image" character varying(200),
    "overimage" character varying(200),
    "flag" integer,
    "n_visible" integer,
    "N_Autocode_Flag" integer,
    "SFARole" character varying(5) NOT NULL,
    "n_rights_flag" integer NOT NULL,
    "projectid" integer,
    "c_Disply_Header" character varying(200),
    "n_Disply_Header_flag" boolean,
    "n_shift" integer,
    "N_MenuRights" integer
);

CREATE TABLE "Tbl_Menu_Projects" (
    "projectid" integer NOT NULL,
    "name" character varying(100),
    "menuCloseDelay" integer,
    "menuOpenDelay" integer,
    "subOffsetTop" integer,
    "subOffsetLeft" integer
);

CREATE TABLE "Tbl_Menu_Styles" (
    "styleid" integer NOT NULL,
    "name" character varying(50),
    "oncolor" character(6),
    "onbgcolor" character(6),
    "offcolor" character(6),
    "offbgcolor" character(6),
    "padding" integer,
    "borderwidth" integer,
    "fontfamily" character varying(25),
    "fontsize" character(6),
    "bordercolor" character(6),
    "borderstyle" character(10),
    "fontstyle" character(10),
    "headerbgcolor" character(6),
    "headercolor" character(6),
    "outfilter" character varying(500),
    "overfilter" character varying(500),
    "pagebgcolor" character(6),
    "pagecolor" character(25),
    "separatorcolor" character(6),
    "subimage" character varying(100),
    "subimagepadding" integer,
    "onborder" character varying(100),
    "fontweight" character varying(100),
    "onsubimage" character varying(100),
    "c" character varying(100),
    "headerborder" character varying(100),
    "menubgimage" character varying(100),
    "imagepadding" integer,
    "image" character varying(100),
    "menubgcolor" character varying(6),
    "separatorpadding" integer,
    "separatorwidth" character(10),
    "separatoralign" character(10),
    "separatorsize" integer
);

CREATE TABLE "Tbl_Menu_Styles_copy" (
    "styleid" integer NOT NULL,
    "name" character varying(50),
    "oncolor" character(6),
    "onbgcolor" character(6),
    "offcolor" character(6),
    "offbgcolor" character(6),
    "padding" integer,
    "borderwidth" integer,
    "fontfamily" character varying(25),
    "fontsize" character(6),
    "bordercolor" character(6),
    "borderstyle" character(10),
    "fontstyle" character(10),
    "headerbgcolor" character(6),
    "headercolor" character(6),
    "outfilter" character varying(500),
    "overfilter" character varying(500),
    "pagebgcolor" character(6),
    "pagecolor" character(25),
    "separatorcolor" character(6),
    "subimage" character varying(100),
    "subimagepadding" integer,
    "onborder" character varying(100),
    "fontweight" character varying(100),
    "onsubimage" character varying(100),
    "c" character varying(100),
    "headerborder" character varying(100),
    "menubgimage" character varying(100),
    "imagepadding" integer,
    "image" character varying(100),
    "menubgcolor" character varying(6),
    "separatorpadding" integer,
    "separatorwidth" character(10),
    "separatoralign" character(10),
    "separatorsize" integer
);

CREATE TABLE "Tbl_Menus_copy" (
    "menuid" integer NOT NULL,
    "projectid" integer,
    "styleid" integer,
    "name" character varying(50),
    "alwaysvisible" integer,
    "orientation" integer,
    "overflow" character varying(50),
    "margin" integer,
    "top" character varying(50),
    "left" integer
);

CREATE TABLE "Tbl_Message_Details" (
    "N_Srno" character(10) NOT NULL,
    "C_Attach_Name" character varying(50) NOT NULL
);

CREATE TABLE "Tbl_Message_Mst" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code_From" character(10) NOT NULL,
    "C_Parent" character(10),
    "C_FS_Code_To" character(10) NOT NULL,
    "C_Subject" character varying(500),
    "C_Message" character varying(500),
    "n_Read" integer,
    "n_ReadParent" integer,
    "N_Delete" integer,
    "N_DeleteParent" integer,
    "n_Msg_Type" integer,
    "D_Created_Date" timestamp without time zone,
    "n_msgid" numeric,
    "c_empcode" character(10),
    "n_UpdateRequest_Srno" numeric,
    "n_Transaction_Srno" numeric,
    "n_Module_Srno" integer
);

CREATE TABLE "Tbl_Message_Mst_temp" (
    "C_FS_Code_From" character(10) NOT NULL,
    "C_Parent" character(10),
    "C_FS_Code_To" character(10) NOT NULL,
    "C_Subject" character varying(500),
    "C_Message" character varying(500),
    "n_Read" integer,
    "n_ReadParent" integer,
    "N_Delete" integer,
    "N_DeleteParent" integer,
    "n_Msg_Type" integer,
    "D_Created_Date" timestamp without time zone,
    "n_msgid" numeric
);

CREATE TABLE "Tbl_Message_Type" (
    "N_Msg_Type" integer NOT NULL,
    "C_Description" character varying(50) NOT NULL,
    "url" character varying(250)
);

CREATE TABLE "Tbl_Mkt_DSCA_Type" (
    "N_Type" integer NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "c_display_name" character varying(50),
    "n_report_flag" character varying(50),
    "n_DCRdisplay" smallint,
    "n_status" smallint,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "c_created" character varying(50),
    "c_modifier" character varying(50),
    "n_deleted" smallint,
    "c_image_enable" character varying(500),
    "c_image_disable" character varying(500)
);

CREATE TABLE "Tbl_Mkt_STP" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "d_modified" timestamp without time zone,
    "N_DA_OTHER" numeric
);

CREATE TABLE "Tbl_Mkt_STP_Det_Temp_Upload" (
    "n_Srno" numeric NOT NULL,
    "c_Subarea" character varying(50),
    "c_AreaToVisit" character varying(50),
    "c_Type" character varying(5),
    "n_wkg_days" integer,
    "n_Distance" numeric,
    "n_Ta" numeric,
    "d_date" character varying(20) DEFAULT to_char(CURRENT_TIMESTAMP, 'DD/MM/YYYY'::text)
);

CREATE TABLE "Tbl_Mkt_STP_Exp" (
    "N_Srno" integer NOT NULL,
    "C_Exp_Code" character(10) NOT NULL,
    "N_Amount" numeric
);

CREATE TABLE "Tbl_ModuleEvent_Mst" (
    "C_Mod_code" character varying(10) NOT NULL,
    "C_Event" character varying(50) NOT NULL,
    "C_Group_code" character varying(10) NOT NULL
);

CREATE TABLE "Tbl_ModuleGroup_det" (
    "C_Group_code" character varying(10) NOT NULL,
    "C_Emp_code" character varying(10) NOT NULL
);

CREATE TABLE "Tbl_ModuleGroup_mst" (
    "C_code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL
);

CREATE TABLE "Tbl_Module_mst" (
    "C_code" character varying(10) NOT NULL,
    "C_modname" character varying(50) NOT NULL
);

CREATE TABLE "Tbl_Mon" (
    "MonthNo" integer,
    "MonthName" character varying(20)
);

CREATE TABLE "Tbl_MstCreator" (
    "C_Code" character varying(10),
    "C_FS_Code" character varying(10)
);

CREATE TABLE "Tbl_NonPurchase_Mst" (
    "C_Code" character varying(20) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "C_Sh_Name" character varying(7),
    "n_deleted" integer NOT NULL DEFAULT 0,
    "n_status" integer NOT NULL DEFAULT 0,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10)
);

CREATE TABLE "Tbl_OfferValiditySetup" (
    "n_srno" integer NOT NULL DEFAULT nextval('"Tbl_OfferValiditySetup_n_srno_seq"'::regclass),
    "n_FsType" numeric NOT NULL,
    "n_Days" integer
);

CREATE TABLE "Tbl_Officelocation_Mst" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "C_Sh_Name" character varying(7),
    "C_Description" character varying(100) NOT NULL,
    "N_Deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "D_Created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "D_Modified" timestamp without time zone,
    "C_Modifier" character varying(10)
);

CREATE TABLE "Tbl_OtherInfo" (
    "C_MSG" character varying(8000)
);

CREATE TABLE "Tbl_PG_Course_Mst" (
    "C_Code" character varying(20) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "C_NoOfSeats" integer NOT NULL,
    "n_deleted" integer NOT NULL DEFAULT 0,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10)
);

CREATE TABLE "Tbl_PRP_AccHeadMst" (
    "C_Code" character varying(15) NOT NULL,
    "c_name" character varying(50),
    "n_deleted" smallint,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10)
);

CREATE TABLE "Tbl_PRP_AccountType_Mst" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "n_deleted" smallint NOT NULL,
    "c_modifier" character varying(10),
    "d_modified" timestamp without time zone,
    "d_created" timestamp without time zone NOT NULL,
    "n_status" integer
);

CREATE TABLE "Tbl_PRP_OtherTopic_Mst" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "n_deleted" smallint NOT NULL,
    "c_modifier" character varying(10),
    "d_modified" timestamp without time zone,
    "d_created" timestamp without time zone NOT NULL,
    "n_status" integer
);

CREATE TABLE "Tbl_PRP_OtherType_Mst" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "n_deleted" smallint NOT NULL,
    "c_modifier" character varying(10),
    "d_modified" timestamp without time zone,
    "d_created" timestamp without time zone NOT NULL,
    "n_status" integer
);

CREATE TABLE "Tbl_PRP_Type_Mst" (
    "C_Code" character varying(15) NOT NULL,
    "c_Name" character varying(50),
    "n_Deleted" smallint NOT NULL,
    "d_Created" timestamp without time zone NOT NULL,
    "d_Modified" timestamp without time zone NOT NULL,
    "c_Modifier" character varying(10)
);

CREATE TABLE "Tbl_Patient_Survey" (
    "N_Pid" integer NOT NULL DEFAULT nextval('"Tbl_Patient_Survey_N_Pid_seq"'::regclass),
    "C_Name" character varying(100),
    "C_Mobile_No" character varying(100),
    "C_Email" character varying(50),
    "C_Gender" character varying(5),
    "D_Dob" timestamp without time zone,
    "N_Age" integer,
    "C_Address" character varying(1000),
    "C_Survey_Code" character varying(150)
);

CREATE TABLE "Tbl_Payments_Mst" (
    "N_SRNO" integer NOT NULL DEFAULT nextval('"Tbl_Payments_Mst_N_SRNO_seq"'::regclass),
    "C_PAYTYPE_CODE" character varying(10) NOT NULL,
    "C_EMP_CODE" character varying(10) NOT NULL,
    "C_DEPT_CODE" character varying(10),
    "C_GRADE" character varying(50),
    "C_HQNAME" character varying(50),
    "C_HQCODE" character varying(50),
    "D_DATE" timestamp without time zone,
    "N_ADDITIONS" numeric,
    "N_DEDUCTIONS" numeric,
    "N_NETPAY" numeric,
    "C_NOTE1" character varying(100),
    "C_APPROVED_BY" character varying(50),
    "D_APPROVED" timestamp without time zone,
    "C_NOTE2" character varying(100)
);

CREATE TABLE "Tbl_Payments_det" (
    "N_SRNO" integer NOT NULL,
    "C_PAYCODE" character varying(50),
    "N_AMOUNT" numeric,
    "C_Note" character varying(100)
);

CREATE TABLE "Tbl_Paytype_Display" (
    "ID" integer NOT NULL DEFAULT nextval('"Tbl_Paytype_Display_ID_seq"'::regclass),
    "C_form_name" character varying(50),
    "C_description" character varying(100),
    "C_Type" character varying(20)
);

CREATE TABLE "Tbl_Pool_Details" (
    "C_Code" character varying(10) NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "N_Percentage" numeric,
    "d_from_dt" timestamp without time zone,
    "d_to_dt" timestamp without time zone,
    "d_modified" timestamp without time zone
);

CREATE TABLE "Tbl_ProdSample_Android_Caption" (
    "N_Type" integer,
    "C_Caption" character varying(50),
    "C_Display_Caption" character varying(50)
);

CREATE TABLE "Tbl_Project" (
    "n_SrNo" integer NOT NULL DEFAULT nextval('"Tbl_Project_n_SrNo_seq"'::regclass),
    "c_Name" character varying(50),
    "c_Description" character varying(200),
    "n_Deleted" integer DEFAULT 0,
    "d_Deleted" timestamp without time zone
);

CREATE TABLE "Tbl_Prp_KOL_Attended_DocDetails" (
    "n_Srno" numeric,
    "c_DoctorCode" character varying(100),
    "d_Date" timestamp without time zone
);

CREATE TABLE "Tbl_Prp_Request" (
    "n_Srno" integer NOT NULL DEFAULT nextval('"Tbl_Prp_Request_n_Srno_seq"'::regclass),
    "d_PostedDate" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "d_PrpDate" timestamp without time zone,
    "c_Place" text,
    "c_Location" character varying(100),
    "c_PrpCode" character varying(100),
    "c_TopicCode" character varying(100),
    "n_ExpAudience" integer,
    "c_RequestNote" character varying(500),
    "c_ApprovalNote" character varying(500),
    "c_ConfirmationNote" character varying(500),
    "c_fs_code" character varying(50),
    "c_Hq" character varying(50),
    "c_AccNo" character varying(100),
    "c_Division" character varying(50),
    "c_FID" character varying(100),
    "c_Bank" character varying(200),
    "d_InstrumentDate" timestamp without time zone,
    "n_Status" integer DEFAULT 0,
    "c_ApprovedBy" character varying(100),
    "c_ConfirmedBy" character varying(100),
    "n_Attendees" integer,
    "c_AudioQual" character varying(100),
    "c_VideoQual" character varying(100),
    "c_InvitSpeakCom" character varying(500),
    "c_nextHeirchyFs" character varying(100),
    "c_nextHeirchyFsType" integer,
    "n_ExpenseEntryStatus" integer,
    "d_confirmedDate" timestamp without time zone,
    "c_venue" character varying(500),
    "n_BTC" numeric,
    "n_CurrBussiness" numeric,
    "n_ExpBussiness" numeric,
    "n_AprRej_flag" integer,
    "c_RejectNote" character varying(500),
    "c_holdnote" character varying(250),
    "d_acc_date" timestamp without time zone,
    "c_region" character varying(50),
    "c_month" character varying(50),
    "n_year" integer,
    "c_hotel" character varying(50),
    "n_type" integer,
    "d_EvtDate" timestamp without time zone
);

CREATE TABLE "Tbl_Prp_Request_Brand" (
    "n_Srno" numeric,
    "c_BrandCode" character varying(100),
    "d_Date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "Tbl_Prp_Request_Estimate" (
    "n_Srno" numeric,
    "c_AccountHead" character varying(100),
    "n_EstimatedAmount" numeric,
    "n_ApprovedAmount" numeric,
    "n_ConfirmedAmount" numeric,
    "d_Date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "n_AdvanceAmount" numeric,
    "n_checked" integer
);

CREATE TABLE "Tbl_Qualification_Master" (
    "C_Code" character varying(50),
    "C_Name" character varying(100),
    "C_Sh_Name" character varying(50),
    "N_Deleted" numeric,
    "D_Created" timestamp without time zone,
    "D_Modified" timestamp without time zone,
    "C_Modifier" character varying(10)
);

CREATE TABLE "Tbl_Qualification_mst" (
    "C_Code" character varying(100) NOT NULL,
    "C_Name" character varying(100),
    "C_Sh_Name" character varying(7),
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10)
);

CREATE TABLE "Tbl_Qualification_mst_02_12_2025" (
    "C_Code" character varying(100) NOT NULL,
    "C_Name" character varying(100),
    "C_Sh_Name" character varying(7),
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10)
);

CREATE TABLE "Tbl_RSP" (
    "C_FS_Code" character(10),
    "C_Item_Code" character(10),
    "N_Qty" numeric NOT NULL,
    "N_Value" numeric,
    "N_Month" numeric NOT NULL,
    "N_year" numeric NOT NULL,
    "C_Created_By" character(10)
);

CREATE TABLE "Tbl_ReasonForSalesRtn_Mst" (
    "C_Code" character varying(20) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "C_Sh_Name" character varying(7),
    "n_deleted" integer NOT NULL DEFAULT 0,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10)
);

CREATE TABLE "Tbl_Reason_Non_Purchase" (
    "N_Id" integer NOT NULL DEFAULT nextval('"Tbl_Reason_Non_Purchase_N_Id_seq"'::regclass),
    "C_Reason" character varying(100)
);

CREATE TABLE "Tbl_Reason_Return" (
    "N_Id" integer NOT NULL DEFAULT nextval('"Tbl_Reason_Return_N_Id_seq"'::regclass),
    "C_Reason" character varying(100)
);

CREATE TABLE "Tbl_Region_Mst" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "C_Sh_Name" character varying(7),
    "C_Zone_Code" character varying(10) NOT NULL,
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "n_lami" double precision,
    "n_lgmi" double precision,
    "n_dcr_disabled" integer NOT NULL DEFAULT 0,
    "n_mcr_disabled" integer NOT NULL DEFAULT 0
);

CREATE TABLE "Tbl_Remove_SideTray" (
    "c_div_code" character varying(50)
);

CREATE TABLE "Tbl_Rep_Sub_title_det" (
    "C_QuesId" character varying(50),
    "C_Spid" character varying(50),
    "C_ColId" character varying(50),
    "C_Editable" boolean,
    "n_width" integer,
    "C_HeadingName" character varying(50)
);

CREATE TABLE "Tbl_Rep_TemplatMst" (
    "C_Id" character varying(10) NOT NULL,
    "c_name" character varying(50),
    "c_usertype" integer,
    "c_reporttype" character varying(10)
);

CREATE TABLE "Tbl_Rep_TemplateDet" (
    "c_id" character varying(10) NOT NULL,
    "c_grp_id" character varying(20) NOT NULL,
    "c_quest_id" character varying(20),
    "d_modified" timestamp without time zone
);

CREATE TABLE "Tbl_Rep_sub_title_mst" (
    "C_Quest_Id" character varying(50) NOT NULL,
    "C_Quest_Text" text NOT NULL,
    "C_Result_Type" character varying(50) NOT NULL,
    "C_Rep_Grp_ID" character varying(10) NOT NULL,
    "N_Editable" boolean NOT NULL,
    "N_deleted" boolean,
    "D_Created" timestamp without time zone,
    "D_Modified" timestamp without time zone,
    "C_CreatedBy" character varying(10),
    "C_ModifiedBy" character varying(10),
    "c_sp_id" character varying(10),
    "c_col_Id" character varying(10),
    "c_userOption" character varying(250)
);

CREATE TABLE "Tbl_Rep_type_mst" (
    "C_Id" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "N_deleted" boolean,
    "D_Created" timestamp without time zone,
    "D_Modified" timestamp without time zone,
    "C_CreatedBy" character varying(10),
    "C_ModifiedBy" character varying(10)
);

CREATE TABLE "Tbl_ReplaceDoc_VisitDetails" (
    "n_srno" numeric NOT NULL,
    "C_Doc_Day_Meet" character varying(20),
    "C_Doc_Ftime_Meet" character varying(50),
    "C_Doc_Ttime_Meet" character varying(50),
    "C_Doc_App_Criteria" character varying(300),
    "N_Doc_App_Fixed" smallint
);

CREATE TABLE "Tbl_Replace_Doc" (
    "n_srno" integer NOT NULL DEFAULT nextval('"Tbl_Replace_Doc_n_srno_seq"'::regclass),
    "C_Code" character varying(10),
    "C_Name" character varying(200),
    "N_type" integer,
    "C_Grade" character varying(10),
    "C_Qualification" character varying(50),
    "C_Add_1" character varying(200),
    "C_Add_2" character varying(200),
    "C_Add_3" character varying(50),
    "C_Add_4" character varying(50),
    "C_Pin" character varying(10),
    "C_Phone" character varying(20),
    "C_Fax" character varying(50),
    "C_Category" character varying(10),
    "C_Area_Code" character varying(10),
    "C_Subarea_Code" character varying(10),
    "D_DOB" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "C_Email_ID" character varying(50),
    "C_FsCode" character varying(10),
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "n_flag" integer NOT NULL DEFAULT 0,
    "c_reason" character varying(500),
    "d_closedt" timestamp without time zone,
    "N_Status" integer NOT NULL DEFAULT 0,
    "d_openindate" timestamp without time zone,
    "d_approvedate" timestamp without time zone,
    "d_confirmdate" timestamp without time zone,
    "C_Region_Code" character varying(10),
    "C_Div_Code" character varying(10),
    "c_DrClass_Code" character varying(10),
    "c_Approval_Remarks" character varying(500) DEFAULT NULL::character varying,
    "c_Confirmation_Remarks" character varying(500) DEFAULT NULL::character varying,
    "n_mci" character varying(40),
    "C_FName" character varying(50),
    "C_LName" character varying(50),
    "C_ApprovedBy" character varying(50),
    "n_SetupId" bigint,
    "n_age" character varying(100),
    "c_speciality" character varying(200),
    "n_noofpatients" character varying(100),
    "n_drpurchase" integer,
    "n_crntbusines" character varying(200),
    "n_drpotentcial" character varying(200),
    "n_businespotential" character varying(200),
    "c_childname1" character varying(200),
    "d_child1dob" timestamp without time zone,
    "c_childname2" character varying(200),
    "d_child2dob" timestamp without time zone,
    "c_childname3" character varying(200),
    "d_child3dob" timestamp without time zone,
    "c_city" character varying(200),
    "c_state" character varying(200),
    "c_house" character varying(200),
    "c_street" character varying(200),
    "c_area" character varying(200),
    "c_landmark" character varying(200),
    "c_city1" character varying(200),
    "c_state2" character varying(200),
    "c_pincode" character varying(200),
    "N_DRPRESCRIPTION" character varying(200),
    "n_child2dob" integer,
    "c_landline" character varying(20),
    "c_middlename" character varying(50),
    "c_spousename" character varying(100),
    "D_spousedob" timestamp without time zone,
    "c_ConfirmDeskCode" character varying(100),
    "c_RefFsCode" character varying(10),
    "c_confirmedBy" character varying(15),
    "c_docmstpan" character varying(10),
    "c_img_url" character varying(100) DEFAULT NULL::character varying
);

CREATE TABLE "Tbl_Replace_Doc_CoreProduct" (
    "c_srno" character varying(100) NOT NULL,
    "C_Doc_Code" character varying(20),
    "c_Product_Code" character varying(20) NOT NULL,
    "n_priority" integer
);

CREATE TABLE "Tbl_Replace_Doc_LogData" (
    "n_srno" numeric NOT NULL,
    "C_Code" character varying(10),
    "C_Name" character varying(200),
    "N_type" integer,
    "C_Grade" character varying(10),
    "C_Qualification" character varying(50),
    "C_Add_1" character varying(200),
    "C_Add_2" character varying(200),
    "C_Add_3" character varying(50),
    "C_Add_4" character varying(50),
    "C_Pin" character varying(10),
    "C_Phone" character varying(20),
    "C_Fax" character varying(50),
    "C_Category" character varying(10),
    "C_Area_Code" character varying(10),
    "C_Subarea_Code" character varying(10),
    "D_DOB" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "C_Email_ID" character varying(50),
    "C_FsCode" character varying(10),
    "d_created" timestamp without time zone NOT NULL,
    "n_flag" integer NOT NULL,
    "c_reason" character varying(500),
    "d_closedt" timestamp without time zone,
    "N_Status" integer NOT NULL,
    "d_openindate" timestamp without time zone,
    "d_approvedate" timestamp without time zone,
    "d_confirmdate" timestamp without time zone,
    "C_Region_Code" character varying(10),
    "C_Div_Code" character varying(10),
    "c_DrClass_Code" character varying(10),
    "c_Approval_Remarks" character varying(500),
    "c_Confirmation_Remarks" character varying(500),
    "n_mci" character varying(40),
    "C_FName" character varying(50),
    "C_LName" character varying(50),
    "C_ApprovedBy" character varying(50),
    "n_SetupId" bigint,
    "n_age" character varying(100),
    "c_speciality" character varying(200),
    "n_noofpatients" character varying(100),
    "n_drpurchase" integer,
    "n_crntbusines" character varying(200),
    "n_drpotentcial" character varying(200),
    "n_businespotential" character varying(200),
    "c_childname1" character varying(200),
    "d_child1dob" timestamp without time zone,
    "c_childname2" character varying(200),
    "d_child2dob" timestamp without time zone,
    "c_childname3" character varying(200),
    "d_child3dob" timestamp without time zone,
    "c_city" character varying(200),
    "c_state" character varying(200),
    "c_house" character varying(200),
    "c_street" character varying(200),
    "c_area" character varying(200),
    "c_landmark" character varying(200),
    "c_city1" character varying(200),
    "c_state2" character varying(200),
    "c_pincode" character varying(200),
    "N_DRPRESCRIPTION" character varying(200),
    "n_child2dob" integer,
    "c_landline" character varying(20),
    "c_middlename" character varying(50),
    "c_spousename" character varying(100),
    "D_spousedob" timestamp without time zone,
    "c_ConfirmDeskCode" character varying(100),
    "c_RefFsCode" character varying(10),
    "c_confirmedBy" character varying(15)
);

CREATE TABLE "Tbl_Replace_Doc_MultiApproval_Log" (
    "n_srno" numeric NOT NULL,
    "C_Code" character varying(10),
    "C_Name" character varying(200),
    "N_type" integer,
    "C_Grade" character varying(10),
    "C_Qualification" character varying(50),
    "C_Add_1" character varying(50),
    "C_Add_2" character varying(50),
    "C_Add_3" character varying(50),
    "C_Add_4" character varying(50),
    "C_Pin" character varying(10),
    "C_Phone" character varying(20),
    "C_Fax" character varying(50),
    "C_Category" character varying(10),
    "C_Area_Code" character varying(10),
    "C_Subarea_Code" character varying(10),
    "D_DOB" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "C_Email_ID" character varying(50),
    "C_FsCode" character varying(10),
    "d_created" timestamp without time zone,
    "n_flag" integer NOT NULL,
    "c_reason" character varying(500),
    "d_closedt" timestamp without time zone,
    "N_Status" integer NOT NULL,
    "d_openindate" timestamp without time zone,
    "d_approvedate" timestamp without time zone,
    "d_confirmdate" timestamp without time zone,
    "C_Region_Code" character varying(10),
    "C_Div_Code" character varying(10),
    "c_DrClass_Code" character varying(10),
    "c_Approval_Remarks" character varying(500),
    "c_Confirmation_Remarks" character varying(500),
    "n_mci" character varying(40),
    "C_FName" character varying(50),
    "C_LName" character varying(50),
    "C_ApprovedBy" character varying(50),
    "n_SetupId" bigint,
    "n_age" character varying(100),
    "c_speciality" character varying(200),
    "n_noofpatients" character varying(100),
    "n_drpurchase" integer,
    "n_crntbusines" character varying(200),
    "n_drpotentcial" character varying(200),
    "n_businespotential" character varying(200),
    "c_childname1" character varying(200),
    "d_child1dob" timestamp without time zone,
    "c_childname2" character varying(200),
    "d_child2dob" timestamp without time zone,
    "c_childname3" character varying(200),
    "d_child3dob" timestamp without time zone,
    "c_city" character varying(200),
    "c_state" character varying(200),
    "c_house" character varying(200),
    "c_street" character varying(200),
    "c_area" character varying(200),
    "c_landmark" character varying(200),
    "c_city1" character varying(200),
    "c_state2" character varying(200),
    "c_pincode" character varying(200),
    "N_DRPRESCRIPTION" character varying(200),
    "n_child2dob" integer,
    "c_landline" character varying(20),
    "c_middlename" character varying(50),
    "c_spousename" character varying(100),
    "D_spousedob" timestamp without time zone,
    "c_RefFsCode" character varying(10)
);

CREATE TABLE "Tbl_Replace_Doc_Request_Management" (
    "n_srno" numeric NOT NULL,
    "c_fs_code" character varying(100),
    "n_NextHeirarchyType" integer,
    "c_NextHeirarchyFSCode" character varying(100),
    "n_setupid" integer,
    "n_status" integer,
    "d_Modifieddate" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "n_apprequired" integer,
    "n_SingleOrMultiple" integer,
    "n_DeskFsType" integer,
    "n_ConfRequiredFieldExists" integer DEFAULT 0
);

CREATE TABLE "Tbl_Replace_Doc_log" (
    "n_srno" numeric NOT NULL,
    "C_Code" character varying(10),
    "C_Name" character varying(200),
    "N_type" integer,
    "C_Grade" character varying(10),
    "C_Qualification" character(40),
    "C_Add_1" character varying(200),
    "C_Add_2" character varying(200),
    "C_Add_3" character varying(50),
    "C_Add_4" character varying(50),
    "C_Pin" character varying(10),
    "C_Phone" character varying(20),
    "C_Fax" character varying(50),
    "C_Category" character varying(10),
    "C_Area_Code" character varying(10),
    "C_Subarea_Code" character varying(10),
    "D_DOB" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "C_Email_ID" character varying(50),
    "C_FsCode" character varying(10),
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "n_flag" integer NOT NULL DEFAULT 0,
    "c_reason" character varying(500),
    "d_closedt" timestamp without time zone,
    "N_Status" integer NOT NULL DEFAULT 0,
    "d_openindate" timestamp without time zone,
    "d_approvedate" timestamp without time zone,
    "d_confirmdate" timestamp without time zone,
    "C_Region_Code" character varying(10),
    "C_Div_Code" character varying(10),
    "c_DrClass_Code" character varying(10),
    "c_Approval_Remarks" character varying(500) DEFAULT NULL::character varying,
    "c_Confirmation_Remarks" character varying(500) DEFAULT NULL::character varying,
    "n_mci" character varying(40),
    "C_FName" character varying(50),
    "C_LName" character varying(50),
    "n_SetupId" bigint,
    "c_landline" character varying(20),
    "c_middlename" character varying(50),
    "c_spousename" character varying(100),
    "D_spousedob" timestamp without time zone,
    "c_ConfirmDeskCode" character varying(100),
    "c_RefFsCode" character varying(10),
    "c_confirmedBy" character varying(15)
);

CREATE TABLE "Tbl_Report_Setup_Header" (
    "N_ID" integer NOT NULL,
    "C_MenuName" character varying(200),
    "C_ReportHeaderName" character varying(500),
    "C_ReportDetailName" character varying(500),
    "C_PageLocation" character varying(200),
    "C_PageName" character varying(200),
    "c_parameter" character varying(100),
    "menuid" integer
);

CREATE TABLE "Tbl_Reported" (
    "DIVISION" character varying(50),
    "REGION" character varying(50),
    "DESIGNATION" character varying(50),
    "REPORTED" integer
);

CREATE TABLE "Tbl_Retailer_Classification" (
    "c_code" character varying(10) NOT NULL,
    "c_name" character varying(50) NOT NULL,
    "c_sh_name" character varying(7),
    "n_pur" numeric,
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "C_EMailPassword" character varying(500),
    "C_EMailID" character varying(3000),
    "C_DisplayNameEmail" character varying(100)
);

CREATE TABLE "Tbl_Retailer_Sales_Entry_Mst" (
    "N_Srno" numeric NOT NULL,
    "N_stockstsetup" integer NOT NULL,
    "N_chemistsetup" integer,
    "N_productrate" integer NOT NULL,
    "N_SchemeQuantityAdded" integer NOT NULL,
    "N_QuantityValue" integer NOT NULL
);

CREATE TABLE "Tbl_SFA_Table_List_Integration" (
    "n_table_id" numeric,
    "c_name" character varying(50),
    "n_flag" numeric,
    "n_in_out_flag" integer,
    "d_last_sync_date" timestamp without time zone
);

CREATE TABLE "Tbl_SFC_Subarea_Combinations_Mst" (
    "N_ID" integer NOT NULL DEFAULT nextval('"Tbl_SFC_Subarea_Combinations_Mst_N_ID_seq"'::regclass),
    "C_Subarea_Code_From" character varying(50),
    "C_Subarea_Code_To" character(10),
    "N_Distance" double precision,
    "N_Area_Type" integer,
    "C_Map_Link" text,
    "C_Image_Name" character varying(1000),
    "C_Image_URL" character varying(1000),
    "N_Status" integer,
    "C_CreatedBy" character varying(50),
    "D_CreatedOn" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "C_ModifiedBy" character varying(50),
    "D_ModifiedOn" timestamp without time zone,
    "C_Area" text,
    "C_Region" text
);

CREATE TABLE "Tbl_STP28june2021" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL DEFAULT 0,
    "N_MONTHLY_EXP" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "d_modified" timestamp without time zone,
    "N_DA_OTHER" numeric,
    "n_tempsrno" integer,
    "C_Approved" character(1),
    "C_Approved_By" character varying(50),
    "D_Approved_Date" timestamp without time zone,
    "C_Reason" character varying(500)
);

CREATE TABLE "Tbl_STPA_Mst" (
    "N_SrNo" integer NOT NULL DEFAULT nextval('"Tbl_STPA_Mst_N_SrNo_seq"'::regclass),
    "C_From" character varying(20),
    "C_To" character varying(20),
    "N_Distance" numeric,
    "N_Visit_Type" integer
);

CREATE TABLE "Tbl_STP_Auto" (
    "N_Srno" integer NOT NULL DEFAULT nextval('"Tbl_STP_Auto_N_Srno_seq"'::regclass),
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "n_monthly_exp" numeric,
    "N_DA_Other" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "c_ApprovedBy" character varying(50),
    "d_ApprovedDate" timestamp without time zone,
    "c_ApprovelNote" character varying(200),
    "c_confirmedby" character varying(10),
    "d_confirmed_date" timestamp without time zone,
    "c_confirmnote" character varying(200),
    "n_Status" integer,
    "n_Deleted" integer,
    "d_modified" timestamp without time zone,
    "n_setup_id" integer,
    "n_stp_setup_id" integer
);

CREATE TABLE "Tbl_STP_Auto_Approval_Det" (
    "N_Srno" numeric NOT NULL,
    "c_ApprovedBy" character varying(50),
    "d_created_date" timestamp without time zone
);

CREATE TABLE "Tbl_STP_Auto_Approval_Det_log" (
    "N_Srno" numeric NOT NULL,
    "c_ApprovedBy" character varying(50),
    "d_created_date" timestamp without time zone,
    "n_rowid" integer
);

CREATE TABLE "Tbl_STP_Auto_Confirmation_Det" (
    "N_Srno" numeric NOT NULL,
    "c_ConfirmedBy" character varying(50),
    "d_created_date" timestamp without time zone,
    "n_rowid" integer
);

CREATE TABLE "Tbl_STP_Det_Temp_Upload" (
    "n_Srno" numeric NOT NULL,
    "c_Subarea" character varying(50),
    "c_AreaToVisit" character varying(50),
    "c_Type" character varying(5),
    "n_wkg_days" integer,
    "n_Distance" numeric,
    "n_Ta" numeric,
    "d_date" character varying(20) DEFAULT to_char(CURRENT_TIMESTAMP, 'DD/MM/YYYY'::text)
);

CREATE TABLE "Tbl_STP_Details28june2021" (
    "N_Srno" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" integer,
    "N_Distance" numeric,
    "N_Ta" numeric,
    "n_Cur_Business" numeric,
    "n_Exp_Business" numeric,
    "N_Doc_Visit_A" integer,
    "N_Doc_Visit_B" integer,
    "C_Area_From" character(10),
    "N_Chem_Visit" integer,
    "N_Stk_Visit" integer,
    "C_Subarea_code_From" character varying(10) NOT NULL,
    "C_Subarea_code_to" character varying(10) NOT NULL,
    "n_wkg_days" integer DEFAULT 0,
    "N_Transit_Days" integer,
    "N_MMIDistance" numeric,
    "c_MMIMapLink" character varying(5000),
    "n_mode_of_travel" integer,
    "C_Mode_of_Travel" character varying(50)
);

CREATE TABLE "Tbl_STP_Details_Auto" (
    "N_Srno" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" integer,
    "N_Distance" numeric,
    "N_Ta" numeric,
    "n_Cur_Business" numeric,
    "n_Exp_Business" numeric,
    "N_Doc_Visit_A" integer,
    "N_Doc_Visit_B" integer,
    "C_Area_From" character(10),
    "N_Chem_Visit" integer,
    "N_Stk_Visit" integer,
    "C_Subarea_code_From" character varying(10) NOT NULL,
    "C_Subarea_code_to" character varying(10) NOT NULL,
    "n_wkg_days" integer DEFAULT 0,
    "N_Transit_Days" integer,
    "N_MMIDistance" numeric,
    "c_MMIMapLink" character varying(5000),
    "n_delete_subarea" integer,
    "n_Confirmed" integer,
    "d_confirmed" timestamp without time zone,
    "n_mode_of_travel" integer,
    "n_delete" integer
);

CREATE TABLE "Tbl_STP_Exp" (
    "N_Srno" integer NOT NULL,
    "C_Exp_Code" character(10) NOT NULL,
    "N_Amount" numeric
);

CREATE TABLE "Tbl_STP_Mkt_Details" (
    "N_Srno" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" integer,
    "N_Distance" numeric,
    "N_Ta" numeric,
    "n_Cur_Business" numeric,
    "n_Exp_Business" numeric,
    "N_Doc_Visit_A" integer,
    "N_Doc_Visit_B" integer,
    "C_Area_From" character(10),
    "N_Chem_Visit" integer,
    "N_Stk_Visit" integer,
    "C_Subarea_code_From" character varying(10) NOT NULL,
    "C_Subarea_code_to" character varying(10) NOT NULL,
    "n_wkg_days" integer DEFAULT 0,
    "N_Transit_Days" integer,
    "N_MMIDistance" numeric,
    "c_MMIMapLink" character varying(5000)
);

CREATE TABLE "Tbl_STP_link_fs" (
    "Region Name" character varying(255),
    "STPNo" character varying(255),
    "rowid" character varying(255),
    "Division" character varying(255),
    "FS CODE" character varying(255),
    "FS NAME" character varying(255),
    "HQ CODE" character varying(255),
    "HQ NAME" character varying(255),
    "Based At Code" character varying(255),
    "Based At Name" character varying(255),
    "STP Date From" timestamp without time zone,
    "STP Date To" timestamp without time zone,
    "HQDA" character varying(255),
    "EXDA" character varying(255),
    "OSDA" character varying(255),
    "TAType" character varying(255),
    "RateKM" character varying(255),
    "From Area Code" character varying(255),
    "From Area Name" character varying(255),
    "ToAreaCode" character varying(255),
    "ToAreaname" character varying(255),
    "A grade doct count" character varying(255),
    "B grade doctor count" character varying(255),
    "chemist count" character varying(255),
    "stockiest count" character varying(255),
    "curent business" character varying(255),
    "expected business" character varying(255),
    "AreaType" character varying(255),
    "Distance" character varying(255),
    "TA" character varying(255)
);

CREATE TABLE "Tbl_Sales" (
    "C_DEP_CODE" character varying(10) NOT NULL,
    "c_year" character varying(4) NOT NULL,
    "c_prefix" character varying(10) NOT NULL,
    "N_SRNO" numeric NOT NULL,
    "D_DATE" timestamp without time zone,
    "C_CUST_CODE" character varying(50),
    "N_TOTAL" numeric,
    "N_TAX_AMT" numeric,
    "N_NON_TAX_AMT" numeric,
    "C_LRNO" character varying(20),
    "D_LRDT" timestamp without time zone,
    "C_FS_CODE" character(10),
    "C_AM_CODE" character(10),
    "C_RM" character(10),
    "C_ZM" character(10),
    "C_GM" character(10),
    "C_INVOICE" character varying(50),
    "D_DUEDATE" timestamp without time zone,
    "N_FLAG" integer DEFAULT 0,
    "C_DIV_CODE" character varying(10),
    "d_inv_date" timestamp without time zone,
    "modidt" timestamp without time zone,
    "depocode" character varying(20),
    "c_order_br_code" character varying(20),
    "n_cancel_flag" numeric,
    "c_order_c2code" character varying(20),
    "SalableReturn_Qty" integer,
    "SalableReturn_Val" numeric,
    "NonSalableReturn_Qty" integer,
    "NonSalableReturn_Val" numeric,
    "Net_Qty" integer,
    "Net_Val" numeric
);

CREATE TABLE "Tbl_Sales_Details" (
    "C_DEP_CODE" character varying(10) NOT NULL,
    "c_YEAR" character varying(4) NOT NULL,
    "C_PREFIX" character varying(10) NOT NULL,
    "N_SRNO" numeric NOT NULL,
    "N_ROW_ID" numeric NOT NULL,
    "C_ITEM_CODE" character varying(10),
    "C_BATCH_NO" character(20),
    "N_QTY" numeric,
    "N_SCH_QTY" numeric,
    "N_RECPT_QTY" numeric,
    "N_SRT" numeric,
    "N_VALUE" numeric,
    "c_reason_code" character varying(20),
    "d_date" timestamp without time zone,
    "n_cancel_flag" numeric,
    "d_print_exp_dt" date
);

CREATE TABLE "Tbl_Sales_Details_log" (
    "C_DEP_CODE" character varying(10) NOT NULL,
    "c_YEAR" character varying(4) NOT NULL,
    "C_PREFIX" character varying(10) NOT NULL,
    "N_SRNO" numeric NOT NULL,
    "N_ROW_ID" numeric NOT NULL,
    "C_ITEM_CODE" character varying(10),
    "C_BATCH_NO" character(20),
    "N_QTY" numeric,
    "N_SCH_QTY" numeric,
    "N_RECPT_QTY" numeric,
    "N_SRT" numeric,
    "N_VALUE" numeric,
    "C_Action" character varying(100)
);

CREATE TABLE "Tbl_Sales_Details_temp" (
    "C_DEP_CODE" character varying(10) NOT NULL,
    "c_YEAR" character varying(4) NOT NULL,
    "C_PREFIX" character varying(10) NOT NULL,
    "N_SRNO" numeric NOT NULL,
    "N_ROW_ID" numeric NOT NULL,
    "C_ITEM_CODE" character varying(10),
    "C_BATCH_NO" character(20),
    "N_QTY" numeric,
    "N_SCH_QTY" numeric,
    "N_RECPT_QTY" numeric,
    "N_SRT" numeric,
    "N_VALUE" numeric
);

CREATE TABLE "Tbl_Sales_Import" (
    "C_DEP_CODE" character varying(10) NOT NULL,
    "N_YEAR" numeric NOT NULL,
    "C_PREFIX" character varying(10) NOT NULL,
    "N_SRNO" numeric NOT NULL,
    "N_IMPORT_MONTH" numeric NOT NULL,
    "N_IMPORT_YEAR" numeric NOT NULL,
    "c_division" character varying(100)
);

CREATE TABLE "Tbl_Sales_log" (
    "C_DEP_CODE" character varying(10) NOT NULL,
    "c_year" character varying(4) NOT NULL,
    "c_prefix" character varying(10) NOT NULL,
    "N_SRNO" numeric NOT NULL,
    "D_DATE" timestamp without time zone,
    "C_CUST_CODE" character varying(50),
    "N_TOTAL" numeric,
    "N_TAX_AMT" numeric,
    "N_NON_TAX_AMT" numeric,
    "C_LRNO" character(10),
    "D_LRDT" timestamp without time zone,
    "C_FS_CODE" character(10),
    "C_AM_CODE" character(10),
    "C_RM" character(10),
    "C_ZM" character(10),
    "C_GM" character(10),
    "C_INVOICE" character varying(50),
    "D_DUEDATE" timestamp without time zone,
    "N_FLAG" integer,
    "C_DIV_CODE" character varying(10),
    "d_inv_date" timestamp without time zone,
    "modidt" timestamp without time zone,
    "depocode" character varying(20),
    "C_Action" character varying(100)
);

CREATE TABLE "Tbl_Sales_temp" (
    "C_DEP_CODE" character varying(10) NOT NULL,
    "c_year" character varying(4) NOT NULL,
    "c_prefix" character varying(10) NOT NULL,
    "N_SRNO" numeric NOT NULL,
    "D_DATE" timestamp without time zone,
    "C_CUST_CODE" character varying(10),
    "N_TOTAL" numeric,
    "N_TAX_AMT" numeric,
    "N_NON_TAX_AMT" numeric,
    "C_LRNO" character(10),
    "D_LRDT" timestamp without time zone,
    "C_FS_CODE" character(10),
    "C_AM_CODE" character(10),
    "C_RM" character(10),
    "C_ZM" character(10),
    "C_GM" character(10),
    "C_INVOICE" character varying(50),
    "D_DUEDATE" timestamp without time zone,
    "N_FLAG" integer,
    "C_DIV_CODE" character varying(10),
    "d_inv_date" timestamp without time zone,
    "modidt" timestamp without time zone,
    "depocode" character varying(20)
);

CREATE TABLE "Tbl_Secondary_Target_Mst" (
    "C_FS_HQ_Code" character(10) NOT NULL,
    "C_Item_Brand_Code" character(10) NOT NULL,
    "N_Qty" numeric,
    "N_Value" numeric,
    "N_Month" numeric NOT NULL,
    "N_Year" numeric NOT NULL,
    "N_Flag" integer,
    "C_Created_By" character(10)
);

CREATE TABLE "Tbl_Setting" (
    "N_Type" integer,
    "C_Code" character(10),
    "N_Days" integer,
    "n_leave_days" integer,
    "n_flag" integer
);

CREATE TABLE "Tbl_Speciality_mst" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "C_Sh_Name" character varying(7),
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "c_qualification" character varying(100)
);

CREATE TABLE "Tbl_Stk_Item_Order" (
    "C_Stockist_Code" character varying(10) NOT NULL,
    "C_Item_Code" character varying(50) NOT NULL,
    "N_Order" numeric
);

CREATE TABLE "Tbl_StockNSales_Details" (
    "N_Srno" numeric NOT NULL,
    "C_Stockist_Code" character(10) NOT NULL,
    "N_Month" integer NOT NULL,
    "N_Year" integer NOT NULL,
    "C_Item_Code" character(10) NOT NULL,
    "N_Sales_Qty" numeric,
    "N_Scheme_Qty" numeric,
    "N_Sales_Value" numeric,
    "N_Receipt_Qty" numeric,
    "N_Receipt_Scheme" numeric,
    "N_Receipt_Value" numeric,
    "N_Closing_Qty" numeric,
    "N_Closing_Value" numeric,
    "N_Other_Qty" numeric,
    "N_SalesRtn_qty" numeric,
    "N_SalesRtn_Scheme" numeric,
    "N_transit_Qty" numeric,
    "C_Note" character varying(1000),
    "C_Created_By" character(10),
    "N_Closing_Scheme" numeric,
    "N_Other_Scheme" numeric,
    "n_other_value" numeric,
    "n_item_rate" numeric,
    "N_retCfa_Qty" numeric,
    "N_retCfa_Scheme" numeric,
    "N_retCfa_value" numeric,
    "N_Opening_Sch_Qty" numeric,
    "N_Closing_Sch_Qty" numeric
);

CREATE TABLE "Tbl_StockNSales_Details_log" (
    "N_Srno" numeric NOT NULL,
    "C_Stockist_Code" character varying(10) NOT NULL,
    "N_Month" integer NOT NULL,
    "N_Year" integer NOT NULL,
    "C_Item_Code" character varying(10) NOT NULL,
    "N_Sales_Qty" numeric,
    "N_Scheme_Qty" numeric,
    "N_Sales_Value" numeric,
    "N_Receipt_Qty" numeric,
    "N_Receipt_Scheme" numeric,
    "N_Receipt_Value" numeric,
    "N_Closing_Qty" numeric,
    "N_Closing_Value" numeric,
    "N_Other_Qty" numeric,
    "N_SalesRtn_qty" numeric,
    "N_SalesRtn_Scheme" numeric,
    "N_transit_Qty" numeric,
    "C_Note" character varying(1000),
    "C_Created_By" character varying(10),
    "N_Closing_Scheme" numeric,
    "N_Other_Scheme" numeric,
    "n_other_value" numeric,
    "n_item_rate" numeric,
    "C_Action" character varying(100)
);

CREATE TABLE "Tbl_StockNSales_Details_temp" (
    "N_Srno" numeric NOT NULL,
    "C_Item_Code" character(10) NOT NULL,
    "N_Sales_Qty" numeric,
    "N_Scheme_Qty" numeric,
    "N_Sales_Value" numeric,
    "N_Receipt_Qty" numeric,
    "N_Receipt_Scheme" numeric,
    "N_Receipt_Value" numeric,
    "N_Closing_Qty" numeric,
    "N_Closing_Value" numeric,
    "N_Other_Qty" numeric,
    "N_SalesRtn_qty" numeric,
    "N_SalesRtn_Scheme" numeric,
    "N_transit_Qty" numeric,
    "C_Note" character varying(1000),
    "C_Created_By" character(10),
    "N_Closing_Scheme" numeric,
    "N_Other_Scheme" numeric,
    "n_other_value" numeric,
    "n_item_rate" numeric
);

CREATE TABLE "Tbl_Store_Type_Mst" (
    "C_Code" character varying(20) NOT NULL,
    "C_Name" character varying(20) NOT NULL,
    "n_deleted" integer NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10)
);

CREATE TABLE "Tbl_Sub_Area_Mst" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "C_Sh_Name" character varying(7),
    "C_Area_Code" character varying(10) NOT NULL,
    "N_HQ_Flag" numeric,
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "n_lami" character varying(100),
    "n_lgmi" character varying(100),
    "C_Classification_Code" character varying(20)
);

CREATE TABLE "Tbl_Subarea_Target" (
    "c_subarea_code" character varying(10) NOT NULL,
    "c_item_code" character varying(10) NOT NULL,
    "n_target" numeric,
    "n_month" numeric NOT NULL,
    "n_year" numeric NOT NULL
);

CREATE TABLE "Tbl_Target_Mst" (
    "C_FSHQ_Code" character(10) NOT NULL,
    "C_ItemBrand_Code" character(10) NOT NULL,
    "N_Qty" numeric NOT NULL DEFAULT '0'::numeric,
    "N_Value" numeric,
    "N_Month" numeric NOT NULL,
    "N_year" numeric NOT NULL,
    "C_Created_By" character(10),
    "N_HqFsFlag" integer,
    "N_BrdItmflag" integer,
    "N_PriSecFlag" integer NOT NULL,
    "d_date" timestamp without time zone,
    "c_typecode" character varying(10)
);

CREATE TABLE "Tbl_Task_Mst" (
    "c_task_id" character varying(10) NOT NULL,
    "c_taskName" character varying(50) NOT NULL,
    "n_deleted" integer NOT NULL DEFAULT 0,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(50),
    "d_datefrom" timestamp without time zone,
    "d_dateto" timestamp without time zone
);

CREATE TABLE "Tbl_Tem_MkT_Stp" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Ref_Srno" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "N_DA_OTHER" numeric
);

CREATE TABLE "Tbl_Tem_Stp" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Ref_Srno" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "N_DA_OTHER" numeric
);

CREATE TABLE "Tbl_Temp_Stp_Details" (
    "N_Srno" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" integer,
    "N_Distance" numeric,
    "N_Ta" numeric,
    "n_Cur_Business" numeric,
    "n_Exp_Business" numeric,
    "N_Doc_Visit_A" integer,
    "N_Doc_Visit_B" integer,
    "C_Area_From" character(10),
    "N_Chem_Visit" integer,
    "N_Stk_Visit" integer,
    "C_Subarea_code_From" character varying(10) NOT NULL,
    "C_Subarea_code_to" character varying(10) NOT NULL,
    "N_Wkg_Days" integer,
    "N_ref_srno" numeric
);

CREATE TABLE "Tbl_Therapeutic_Area_Mst" (
    "c_code" character varying(50),
    "c_name" character varying(200),
    "d_created" timestamp without time zone,
    "d_modified_date" timestamp without time zone,
    "n_deleted" integer,
    "n_status" integer
);

CREATE TABLE "Tbl_Unique_Doctor_Mst" (
    "c_doc_uniqueid" character varying(50),
    "C_Name" character varying(200),
    "C_Phone" character varying(20),
    "C_Pin" character varying(10),
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "Tbl_UserEnable_Setup" (
    "N_Type" integer NOT NULL,
    "C_UserrightsID" character varying(20),
    "n_webUser" integer,
    "n_AndroidUser" integer,
    "n_mobUser" integer,
    "n_EdetailUser" integer,
    "C_AndroidUserID" character varying(20),
    "n_DCRLock" integer,
    "n_MCRLock" integer,
    "n_Leavedays" integer,
    "n_deleted" integer,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone
);

CREATE TABLE "Tbl_UserRights" (
    "c_code" character(10) NOT NULL,
    "c_userid" character varying(20) NOT NULL,
    "c_menu1" character(100),
    "c_menu2" character(100),
    "c_menu3" character(100),
    "c_menu4" character(100),
    "c_menu5" character(100),
    "c_menu6" character(100),
    "c_menu7" character(100),
    "c_menu8" character(100),
    "c_menu9" character(100),
    "c_menu10" character(100),
    "c_menu11" character(100),
    "c_menu12" character(100),
    "c_menu13" character(100),
    "c_menu14" character(100),
    "c_menu15" character(100),
    "c_menu16" character(100),
    "c_menu17" character(100),
    "c_menu18" character(100),
    "c_menu19" character(100),
    "c_menu20" character(100),
    "c_menu21" character(100),
    "c_modify_user" character varying(20),
    "d_modify_date" timestamp without time zone,
    "n_deleted" integer,
    "c_menu22" character(100),
    "c_menu23" character(100),
    "projectid" integer,
    "c_menu24" character varying(100),
    "c_menu25" character varying(100),
    "c_menu26" character varying(100),
    "c_menu27" character varying(100),
    "c_menu28" character varying(100),
    "c_menu29" character varying(100),
    "c_menu30" character varying(100),
    "c_menu31" character varying(100),
    "c_menu32" character varying(100),
    "c_menu33" character varying(100),
    "c_menu34" character varying(100),
    "c_menu35" character varying(100),
    "c_menu36" character varying(100),
    "c_menu37" character varying(100),
    "c_menu38" character varying(100),
    "c_menu39" character varying(100),
    "c_menu40" character varying(100),
    "c_menu41" character varying(100),
    "c_menu42" character varying(100),
    "c_menu43" character varying(100),
    "c_menu44" character varying(100),
    "c_menu45" character varying(100),
    "c_menu46" character varying(100),
    "c_menu47" character varying(100),
    "c_menu48" character varying(100),
    "c_menu49" character varying(100),
    "c_menu50" character varying(100),
    "c_menu51" character varying(100),
    "n_dsca_default_Rights" integer
);

CREATE TABLE "Tbl_UserRights_360" (
    "n_id" integer NOT NULL DEFAULT nextval('"Tbl_UserRights_360_n_id_seq"'::regclass),
    "c_itemid" character varying(20),
    "c_menuid" character varying(20),
    "c_userid" character varying(200)
);

CREATE TABLE "Tbl_UserRights_360_type" (
    "n_id" integer NOT NULL DEFAULT nextval('"Tbl_UserRights_360_type_n_id_seq"'::regclass),
    "c_type" character varying(200) NOT NULL,
    "n_active" integer NOT NULL,
    "n_menu" integer NOT NULL,
    "d_creation" timestamp without time zone,
    "c_createdby" timestamp without time zone,
    "Region" character varying(200),
    "Divsion" character varying(200),
    "c_itemid" character varying(200)
);

CREATE TABLE "Tbl_UserRights_log" (
    "c_code" character(10) NOT NULL,
    "c_userid" character varying(20) NOT NULL,
    "c_menu1" character(100),
    "c_menu2" character(100),
    "c_menu3" character(100),
    "c_menu4" character(100),
    "c_menu5" character(100),
    "c_menu6" character(100),
    "c_menu7" character(100),
    "c_menu8" character(100),
    "c_menu9" character(100),
    "c_menu10" character(100),
    "c_menu11" character(100),
    "c_menu12" character(100),
    "c_menu13" character(100),
    "c_menu14" character(100),
    "c_menu15" character(100),
    "c_menu16" character(100),
    "c_menu17" character(100),
    "c_menu18" character(100),
    "c_menu19" character(100),
    "c_menu20" character(100),
    "c_menu21" character(100),
    "c_modify_user" character varying(20),
    "d_modify_date" timestamp without time zone,
    "n_deleted" integer,
    "c_menu22" character(100),
    "c_menu23" character(100),
    "projectid" integer,
    "c_menu24" character varying(100),
    "c_menu25" character varying(100),
    "c_menu26" character varying(100),
    "c_menu27" character varying(100),
    "c_menu28" character varying(100),
    "c_menu29" character varying(100),
    "c_menu30" character varying(100),
    "c_menu31" character varying(100),
    "c_menu32" character varying(100),
    "c_menu33" character varying(100),
    "c_menu34" character varying(100),
    "c_menu35" character varying(100),
    "c_menu36" character varying(100),
    "c_menu37" character varying(100),
    "c_menu38" character varying(100),
    "c_menu39" character varying(100),
    "c_menu40" character varying(100),
    "c_menu41" character varying(100),
    "c_menu42" character varying(100),
    "c_menu43" character varying(100),
    "c_menu44" character varying(100),
    "c_menu45" character varying(100),
    "c_menu46" character varying(100),
    "c_menu47" character varying(100),
    "c_menu48" character varying(100),
    "c_menu49" character varying(100),
    "c_menu50" character varying(100),
    "c_menu51" character varying(100),
    "n_dsca_default_Rights" integer,
    "d_loginsertedate" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_action" character varying(100)
);

CREATE TABLE "Tbl_User_Access" (
    "N_Type" numeric NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "c_sh_name" character varying(10),
    "n_CI_FLag" smallint,
    "n_fs_flag" smallint,
    "c_gadgetcode" character varying(50),
    "n_dashboard_type" integer
);

CREATE TABLE "Tbl_User_Access_Rights" (
    "N_Type" numeric NOT NULL,
    "C_Page" character varying(50),
    "C_Name_Show" character(20),
    "N_Order" numeric
);

CREATE TABLE "Tbl_User_Allowance" (
    "C_Code" character(10) NOT NULL,
    "C_Allow_ID" character(10) NOT NULL,
    "C_Name" character(10) NOT NULL,
    "M_Amount" numeric NOT NULL
);

CREATE TABLE "Tbl_User_Info" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(500),
    "C_UserID" character varying(20) NOT NULL,
    "C_Password" character varying(100),
    "N_Lock" integer NOT NULL,
    "C_Description" character varying(250),
    "N_Edit" integer,
    "N_Delete" integer,
    "N_AddNew" integer,
    "N_Shift" integer DEFAULT 0,
    "N_ShiftEdit" integer DEFAULT 0,
    "D_Create_Date" timestamp without time zone,
    "D_Modify_Date" timestamp without time zone,
    "c_mob_UniqueID" character varying(10) DEFAULT 'newproc'::character varying,
    "c_mob_Prev_ID" character varying(10) DEFAULT 'newproc'::character varying,
    "n_mobile_user" integer DEFAULT 0,
    "n_type" integer,
    "n_menuid" integer,
    "n_webuser" integer,
    "n_Mobwebuser" integer,
    "n_edetailng" integer,
    "n_Androiduser" integer,
    "n_attempts" integer DEFAULT 0,
    "n_encryptexe" integer,
    "mobile_number" character varying(200)
);

CREATE TABLE "Tbl_Version_Mst" (
    "V_ID" numeric NOT NULL,
    "V_Name" character varying(50) NOT NULL,
    "V_Type" numeric NOT NULL,
    "V_Date" timestamp without time zone NOT NULL
);

CREATE TABLE "Tbl_Video_Def_Det" (
    "c_code" character varying(10) NOT NULL,
    "c_emp_code" character varying(50) NOT NULL,
    "n_status" integer NOT NULL DEFAULT 0,
    "d_Assigned_Date" timestamp without time zone NOT NULL,
    "d_read_Date" timestamp without time zone,
    "n_must_read" integer NOT NULL
);

CREATE TABLE "Tbl_Video_desk_mst" (
    "C_CODE" character varying(10) NOT NULL,
    "C_NAME" character varying(50) NOT NULL,
    "C_EMP_CODE" character varying(10) NOT NULL,
    "N_DELETED" integer NOT NULL,
    "D_CREATED" timestamp without time zone NOT NULL,
    "D_MODIFIED" timestamp without time zone,
    "C_MODIFIER" character varying(50)
);

CREATE TABLE "Tbl_Visit_Frequency_Mst" (
    "C_Code" character varying(20) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "n_deleted" integer NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10)
);

CREATE TABLE "Tbl_WorkType" (
    "c_code" character(10) NOT NULL,
    "c_name" character varying(50),
    "c_sh_name" character(5),
    "n_flag" integer NOT NULL DEFAULT 0,
    "n_Chflag" integer NOT NULL DEFAULT 0,
    "n_stockflag" integer NOT NULL DEFAULT 0,
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "c_modifier" character varying(10),
    "N_Status" integer NOT NULL DEFAULT 1,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "n_chemorder" integer,
    "n_OthersFlag" integer DEFAULT 0,
    "n_campflag" integer DEFAULT 0,
    "n_PatientFlag" integer DEFAULT 0,
    "n_DoctorMandatory" integer DEFAULT 0,
    "n_HospitalFlag" integer,
    "n_workcontact" integer,
    "n_DoctorMandatory_mcr" integer,
    "n_group_activity" integer,
    "c_division" character varying(2000)
);

CREATE TABLE "Tbl_Zone_Mst" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "C_Sh_Name" character varying(7),
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10)
);

CREATE TABLE "Tbl_Zone_Mst_temp" (
    "C_Code" character varying(10),
    "C_Name" character varying(50),
    "C_Sh_Name" character varying(20),
    "n_deleted" numeric,
    "d_created" character varying(30),
    "d_modified" character varying(30),
    "c_modifier" character varying(20)
);

CREATE TABLE "Tbl_claim_desk" (
    "C_CODE" character varying(10) NOT NULL,
    "C_NAME" character varying(50) NOT NULL,
    "C_EMP_CODE" character varying(10) NOT NULL,
    "N_DELETED" integer NOT NULL DEFAULT 0,
    "D_CREATED" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "D_MODIFIED" timestamp without time zone,
    "C_MODIFIER" character varying(50)
);

CREATE TABLE "Tbl_claim_desk_det" (
    "C_DESK_CODE" character varying(10) NOT NULL,
    "C_DIVISION" character varying(10) NOT NULL,
    "C_LOCATION" character varying(10) NOT NULL,
    "C_DEPARTMENT" character varying(10) NOT NULL,
    "N_FSTYPE" numeric NOT NULL,
    "N_SRNO" integer NOT NULL DEFAULT nextval('"Tbl_claim_desk_det_N_SRNO_seq"'::regclass),
    "c_zone_code" character varying(10),
    "c_reg_code" character varying(10)
);

CREATE TABLE "Tbl_claim_det" (
    "N_SRNO" numeric NOT NULL,
    "D_DATE" timestamp without time zone NOT NULL,
    "N_DAYTYPE" integer NOT NULL DEFAULT 0,
    "C_DESCRIPTION" character varying(500),
    "N_NO_DR" numeric NOT NULL DEFAULT '0'::numeric,
    "N_NO_CHM" numeric NOT NULL DEFAULT '0'::numeric,
    "N_NO_STK" numeric NOT NULL DEFAULT '0'::numeric,
    "C_WORKED_WITH" character varying(500),
    "N_DISTANCE" numeric NOT NULL DEFAULT '0'::numeric,
    "N_STPDISTANCE" numeric NOT NULL DEFAULT '0'::numeric,
    "N_VISITTYPE" integer NOT NULL DEFAULT 4,
    "C_stayed_at" character varying(1000),
    "c_modeoftravel" character varying(100)
);

CREATE TABLE "Tbl_claim_format_det" (
    "C_CODE" character varying(10) NOT NULL,
    "N_FLAG" numeric NOT NULL DEFAULT '0'::numeric,
    "C_EXP_CODE" character varying(10) NOT NULL,
    "n_type" integer NOT NULL DEFAULT 2,
    "C_EXP_HEADING" character varying(50) NOT NULL,
    "N_PRIORITY" numeric NOT NULL,
    "N_UPPER_LIMIT" numeric NOT NULL DEFAULT '0'::numeric,
    "N_DEFAULT_VALUE" numeric NOT NULL DEFAULT '0'::numeric,
    "n_check" integer DEFAULT 0,
    "n_RemarksStatus" integer,
    "N_MonthlyFixdExp" numeric DEFAULT '0'::numeric,
    "n_MonthlyFixedExpFromSTP" integer
);

CREATE TABLE "Tbl_claim_format_mst" (
    "C_CODE" character varying(50) NOT NULL,
    "C_NAME" character varying(50) NOT NULL,
    "N_MONTH_DAY" numeric NOT NULL DEFAULT '0'::numeric,
    "N_VISITDETAIL_FROM" numeric NOT NULL DEFAULT '0'::numeric,
    "N_PLACEVISIT_HEADER" numeric NOT NULL DEFAULT '0'::numeric,
    "N_PRE_CLAIM_REF" numeric NOT NULL DEFAULT '0'::numeric,
    "N_DETAIL_REQUIRED" numeric NOT NULL DEFAULT '0'::numeric,
    "N_SUMMARY_REQUIRED" numeric NOT NULL DEFAULT '0'::numeric,
    "N_REIMBURSMENT_REQUIRED" numeric NOT NULL DEFAULT '0'::numeric,
    "N_DETAIL_DR_COUNT" numeric NOT NULL DEFAULT '0'::numeric,
    "N_DETAIL_CHEM_COUNT" numeric NOT NULL DEFAULT '0'::numeric,
    "N_DETAIL_STK_COUNT" numeric NOT NULL DEFAULT '0'::numeric,
    "N_DETAIL_DIST_KM" numeric NOT NULL DEFAULT '0'::numeric,
    "n_detail_dist_stp_km" numeric NOT NULL DEFAULT '0'::numeric,
    "N_DETAIL_VISITTYPE" numeric NOT NULL DEFAULT '0'::numeric,
    "N_DETAIL_WORKWITH" numeric NOT NULL DEFAULT '0'::numeric,
    "N_DETAIL_DESCRIPTION_LOOKUP" numeric NOT NULL DEFAULT '0'::numeric,
    "N_STATUS" integer DEFAULT 0,
    "N_DELETED" integer DEFAULT 0,
    "D_CREATED" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "D_MODIFIED" timestamp without time zone,
    "C_MODIFIER" character varying(50),
    "n_AdditionalTA" integer,
    "n_stayed_at" integer DEFAULT 0,
    "N_MonthlyFixdExp" numeric DEFAULT '0'::numeric,
    "n_Sup_Mer_Details" integer,
    "n_ModeOfTravel" integer NOT NULL DEFAULT 0,
    "n_DA_TA_Confn_Remarks" integer NOT NULL DEFAULT 0,
    "n_day_wise_upload" integer
);

CREATE TABLE "Tbl_claim_log" (
    "N_SRNO" numeric,
    "C_CLAIM_CODE" character varying(10),
    "C_FS_CODE" character varying(10),
    "C_EMP_CODE" character varying(10),
    "C_PARENT_CODE" character varying(10),
    "C_DESK_CODE" character varying(10),
    "D_DATE" timestamp without time zone,
    "D_DATE_FROM" timestamp without time zone,
    "D_DATE_TO" timestamp without time zone,
    "C_DESCRIPTION" character varying(500),
    "C_NOTE1" character varying(500),
    "C_NOTE2" character varying(500),
    "C_NOTE3" character varying(500),
    "N_APPROVED" integer,
    "D_APPROVED_ON" timestamp without time zone,
    "C_APPROVED_BY" character varying(10),
    "N_MANUAL_AUTO" integer,
    "N_CONFIRMED" integer,
    "D_CONFIRMED_ON" timestamp without time zone,
    "C_CONFIRMED_BY" character varying(10),
    "N_DELETED" integer DEFAULT 0,
    "D_MODIFIED" timestamp without time zone,
    "n_claimed_amt" numeric,
    "n_approved_amt" numeric DEFAULT '0'::numeric,
    "n_confirmed_amt" numeric,
    "d_Reconfirmed_on" timestamp without time zone,
    "c_Reconfirmation_Det" character varying(500),
    "n_claimsetup_srno" integer,
    "N_Submit" integer
);

CREATE TABLE "Tbl_claim_mst" (
    "N_SRNO" numeric NOT NULL,
    "C_CLAIM_CODE" character varying(10) NOT NULL,
    "C_FS_CODE" character varying(10) NOT NULL,
    "C_EMP_CODE" character varying(10) NOT NULL,
    "C_PARENT_CODE" character varying(10) NOT NULL,
    "C_DESK_CODE" character varying(10) NOT NULL,
    "D_DATE" timestamp without time zone NOT NULL,
    "D_DATE_FROM" timestamp without time zone NOT NULL,
    "D_DATE_TO" timestamp without time zone NOT NULL,
    "C_DESCRIPTION" character varying(500),
    "C_NOTE1" character varying(500),
    "C_NOTE2" character varying(500),
    "C_NOTE3" character varying(500),
    "N_APPROVED" integer NOT NULL DEFAULT 0,
    "D_APPROVED_ON" timestamp without time zone,
    "C_APPROVED_BY" character varying(10),
    "N_MANUAL_AUTO" integer NOT NULL DEFAULT 1,
    "N_CONFIRMED" integer NOT NULL DEFAULT 0,
    "D_CONFIRMED_ON" timestamp without time zone,
    "C_CONFIRMED_BY" character varying(10),
    "N_DELETED" integer NOT NULL DEFAULT 0,
    "D_MODIFIED" timestamp without time zone,
    "n_claimed_amt" numeric NOT NULL DEFAULT '0'::numeric,
    "n_approved_amt" numeric NOT NULL DEFAULT '0'::numeric,
    "n_confirmed_amt" numeric NOT NULL DEFAULT '0'::numeric,
    "d_Reconfirmed_on" timestamp without time zone,
    "c_Reconfirmation_Det" character varying(500),
    "n_claimsetup_srno" integer,
    "N_SUBMIT" integer,
    "n_confirmsubmit" integer DEFAULT 0,
    "d_confirm_dt" timestamp without time zone,
    "n_reconfirm" integer NOT NULL DEFAULT 0
);

CREATE TABLE "Tbl_claim_mst_approval_log" (
    "N_SRNO" numeric NOT NULL,
    "C_CLAIM_CODE" character varying(10) NOT NULL,
    "C_FS_CODE" character varying(10) NOT NULL,
    "C_EMP_CODE" character varying(10) NOT NULL,
    "C_PARENT_CODE" character varying(10) NOT NULL,
    "C_DESK_CODE" character varying(10) NOT NULL,
    "C_NOTE1" character varying(500),
    "C_NOTE2" character varying(500),
    "C_NOTE3" character varying(500),
    "N_APPROVED" integer NOT NULL,
    "D_APPROVED_ON" timestamp without time zone,
    "C_APPROVED_BY" character varying(10),
    "D_MODIFIED" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "n_claimsetup_srno" integer,
    "n_claimed_amt" numeric,
    "n_approved_amt" numeric,
    "n_type" integer
);

CREATE TABLE "Tbl_claim_setup" (
    "n_srno" integer NOT NULL DEFAULT nextval('"Tbl_claim_setup_n_srno_seq"'::regclass),
    "n_fstype" integer NOT NULL,
    "c_claim_define_code" character varying(10) NOT NULL,
    "n_auto_claim" integer NOT NULL DEFAULT 1,
    "n_approval_required" integer NOT NULL DEFAULT 1,
    "n_claim_approval" integer NOT NULL DEFAULT 0,
    "N_CLAIM_LIMIT" numeric,
    "n_lock_days" integer DEFAULT 0,
    "n_EditRequired" integer NOT NULL DEFAULT 1,
    "n_ApplicableHierarchy_Type" integer,
    "c_ApplicableHierarchy_Fscode" character varying(20),
    "n_setup_status" integer DEFAULT 0,
    "n_PrintButtonOnSubmit" integer DEFAULT 0
);

CREATE TABLE "Tbl_claim_sub_det" (
    "N_SRNO" numeric NOT NULL,
    "D_DATE" timestamp without time zone NOT NULL,
    "C_EXP_CODE" character varying(10) NOT NULL DEFAULT '0'::character varying,
    "N_ROWID" integer NOT NULL DEFAULT 0,
    "N_SUBMIT_AMT" numeric,
    "N_APPROVED_AMT" numeric DEFAULT '0'::numeric,
    "N_CONFIRMED_AMT" numeric,
    "C_CONFIRMATION_NOTE" character varying(50),
    "N_TYPE" numeric NOT NULL DEFAULT '1'::numeric,
    "C_REF_NO" character varying(50),
    "C_NOTE1" character varying(500),
    "C_NOTE2" character varying(500),
    "C_NOTE3" character varying(500),
    "C_APPROVED_NOTE" character varying(50),
    "C_DA_TA_REMARKS" text,
    "C_DA_TA_CONFN_REMARKS" text
);

CREATE TABLE "Tbl_distance_chart" (
    "n_srno" numeric,
    "c_subarea_code_from" character varying(10),
    "c_subarea_code_to" character varying(10),
    "n_distance" numeric
);

CREATE TABLE "Tbl_emp_MandatoryCircular" (
    "c_emp_code" character varying(10),
    "c_fs_code" character varying(10),
    "C_Code" character varying(100),
    "d_date" timestamp without time zone
);

CREATE TABLE "Tbl_favoritelist" (
    "N_typ" integer,
    "C_user" character varying(50),
    "N_menu_id" character varying(50),
    "N_order" integer
);

CREATE TABLE "Tbl_feedback" (
    "c_name" character varying(10),
    "y_name" character varying(50),
    "d_designation" character varying(50),
    "e_address" character varying(50),
    "p_phoneno" character varying(50),
    "d_dob" timestamp without time zone
);

CREATE TABLE "Tbl_feedback2" (
    "list_1" character varying(100),
    "list_2" character varying(100),
    "list_3" character varying(100),
    "list_4" character varying(100),
    "list_5" character varying(100),
    "c_companycode" character varying(50),
    "c_enteredby" character varying(50)
);

CREATE TABLE "Tbl_leave_setting" (
    "n_srno" numeric,
    "d_date" timestamp without time zone,
    "c_fs_code" character varying(10),
    "n_type" integer,
    "n_Actual_Leave" numeric,
    "n_leave" numeric,
    "n_CF" integer,
    "n_EnCash" integer,
    "n_setup" integer,
    "d_fy_fromdate" timestamp without time zone,
    "d_fy_todate" timestamp without time zone,
    "d_plel_entry" timestamp without time zone
);

CREATE TABLE "Tbl_leave_setting_log" (
    "n_srno" numeric,
    "d_date" timestamp without time zone,
    "c_fs_code" character varying(10),
    "n_type" integer,
    "n_Actual_Leave" numeric,
    "n_leave" numeric,
    "n_CF" integer,
    "n_EnCash" integer,
    "n_setup" integer
);

CREATE TABLE "Tbl_location_det" (
    "c_type" character varying(10),
    "n_srno" numeric NOT NULL,
    "c_code" character varying(10) NOT NULL,
    "c_subarea_code" character varying(10),
    "c_cellid" character varying(20),
    "c_mcc" character varying(20),
    "c_mnc" character varying(20),
    "c_lac" character varying(20),
    "c_cellinfo" character varying(50)
);

CREATE TABLE "Tbl_location_mst" (
    "c_cellid" character varying(20),
    "c_mcc" character varying(20),
    "c_mnc" character varying(20),
    "c_lac" character varying(20),
    "c_lat" character varying(10),
    "c_lon" character varying(10),
    "c_locationname" character varying(100)
);

CREATE TABLE "Tbl_menu_items_1643711670" (
    "itemid" integer NOT NULL,
    "menuid" integer,
    "text" character varying(100),
    "url" character varying(255),
    "showmenu" character varying(50),
    "image" character varying(200),
    "overimage" character varying(200),
    "flag" integer,
    "n_visible" integer,
    "N_Autocode_Flag" integer,
    "SFARole" character varying(5) NOT NULL,
    "n_rights_flag" integer NOT NULL,
    "projectid" integer,
    "c_Disply_Header" character varying(200),
    "n_Disply_Header_flag" boolean,
    "n_shift" integer
);

CREATE TABLE "Tbl_mktUser_Access" (
    "N_Type" numeric NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "c_sh_name" character varying(20),
    "n_CI_FLag" smallint,
    "n_fs_flag" smallint,
    "c_gadgetcode" character varying(50)
);

CREATE TABLE "Tbl_mkt_DWR" (
    "N_Srno" numeric NOT NULL DEFAULT '0'::numeric,
    "D_Date_Report" timestamp without time zone NOT NULL,
    "D_Entry_Date" timestamp without time zone NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "C_HQ_Code" character varying(10) NOT NULL,
    "C_Worked_With" character varying(10),
    "C_Reason" character varying(200),
    "C_Area_Code" character varying(10) NOT NULL,
    "C_Area_Stay" character varying(10) NOT NULL,
    "C_Note1" character varying(200),
    "C_Note2" character varying(200),
    "C_Note3" character varying(200),
    "N_Distance" numeric,
    "n_Fare" numeric,
    "n_Allowance" integer,
    "C_Allowance_Type" character(10),
    "c_WrkType" character varying(10),
    "N_Sort_Order" numeric,
    "N_Flag" integer,
    "C_Placeof_Work" character varying(10) NOT NULL,
    "C_Stayed_At" character varying(10) NOT NULL,
    "c_Emp_Code" character varying(10) NOT NULL,
    "c_temp_fs" character varying(10),
    "c_temp_emp" character varying(10),
    "D_Created" timestamp without time zone,
    "D_Modified" timestamp without time zone,
    "C_WorkContactRemarks" character varying(200)
);

CREATE TABLE "Tbl_mkt_DWR_Details" (
    "N_Srno" integer NOT NULL,
    "n_rowid" integer NOT NULL,
    "n_type" integer NOT NULL,
    "C_DSC_Code" character varying(10) NOT NULL,
    "C_BA" character varying(50),
    "N_POB" numeric,
    "N_Closing" numeric,
    "N_Stock_Value" numeric,
    "N_Sales_Value" numeric,
    "N_Outstanding" numeric,
    "C_Note" character varying(200),
    "c_time" character varying(50),
    "c_doc_note" character varying(50),
    "c_doc_grade" character varying(50),
    "c_fmcg_stk_code" character varying(10),
    "n_process_status" integer,
    "c_Comments" character varying(200)
);

CREATE TABLE "Tbl_mkt_DWR_Sub_Details" (
    "N_Srno" numeric NOT NULL,
    "C_Doc_Code" character varying(10),
    "N_RowId" integer,
    "C_Item_Code" character(10),
    "C_ITEM_EXP" character(10),
    "n_Product_Unit" numeric,
    "N_Type" integer,
    "N_AUTO" numeric,
    "c_title_code" character varying(20),
    "c_item_note" character varying(200)
);

CREATE TABLE "Tbl_mkt_DWR_doc_item_role_det" (
    "n_dcr_no" character varying(20),
    "c_doc_code" character varying(20),
    "c_itemcode" character varying(20),
    "c_pref_code" character varying(2)
);

CREATE TABLE "Tbl_mkt_DWR_prec_sub_details" (
    "n_srno" numeric,
    "c_doc_code" character varying(10),
    "c_item_code" character varying(15),
    "n_prec_qty" numeric
);

CREATE TABLE "Tbl_mkt_Mst" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "N_Type" numeric NOT NULL,
    "C_Grade" character(10),
    "C_Qualification" character varying(30),
    "C_Add_1" character varying(50),
    "C_Add_2" character varying(50),
    "C_Add_3" character varying(50),
    "C_Add_4" character varying(50),
    "C_Pin" character(10),
    "C_Phone" character(20),
    "C_Fax" character(20),
    "C_Category" character(10),
    "C_Area_Code" character varying(10) NOT NULL,
    "C_Parent" character(10),
    "C_EmpNo" character varying(10) NOT NULL,
    "C_Desc" character varying(50),
    "D_DOB" timestamp without time zone,
    "D_DOJ" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "n_Status" integer,
    "C_Email_ID" character varying(50),
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "N_ptype" integer,
    "c_div_code" character varying(25)
);

CREATE TABLE "Tbl_mkt_Mst_29102021" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "N_Type" numeric NOT NULL,
    "C_Grade" character(10),
    "C_Qualification" character varying(30),
    "C_Add_1" character varying(50),
    "C_Add_2" character varying(50),
    "C_Add_3" character varying(50),
    "C_Add_4" character varying(50),
    "C_Pin" character(10),
    "C_Phone" character(20),
    "C_Fax" character(20),
    "C_Category" character(10),
    "C_Area_Code" character varying(10) NOT NULL,
    "C_Parent" character(10),
    "C_EmpNo" character varying(10) NOT NULL,
    "C_Desc" character varying(50),
    "D_DOB" timestamp without time zone,
    "D_DOJ" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "n_Status" integer,
    "C_Email_ID" character varying(50),
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "N_ptype" integer,
    "c_div_code" character varying(25)
);

CREATE TABLE "Tbl_mkt_Mst_LogTable" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "N_Type" numeric NOT NULL,
    "C_Grade" character(10),
    "C_Qualification" character varying(30),
    "C_Add_1" character varying(50),
    "C_Add_2" character varying(50),
    "C_Add_3" character varying(50),
    "C_Add_4" character varying(50),
    "C_Pin" character(10),
    "C_Phone" character(20),
    "C_Fax" character(20),
    "C_Category" character(10),
    "C_Area_Code" character varying(10) NOT NULL,
    "C_Parent" character(10),
    "C_EmpNo" character varying(10) NOT NULL,
    "C_Desc" character varying(50),
    "D_DOB" timestamp without time zone,
    "D_DOJ" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "n_Status" integer,
    "C_Email_ID" character varying(50),
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "N_ptype" integer
);

CREATE TABLE "Tbl_mkt_WorkType" (
    "c_code" character(10) NOT NULL,
    "c_name" character(10),
    "c_sh_name" character(5),
    "n_flag" integer NOT NULL DEFAULT 0,
    "n_Chflag" integer NOT NULL DEFAULT 0,
    "n_stockflag" integer NOT NULL DEFAULT 0,
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "c_modifier" character varying(10),
    "N_Status" integer NOT NULL DEFAULT 1,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "n_chemorder" integer,
    "n_OthersFlag" integer DEFAULT 0,
    "n_campflag" integer DEFAULT 0
);

CREATE TABLE "Tbl_region_Mst_temp" (
    "c_code" character varying(10),
    "c_name" character varying(50),
    "c_sh_name" character varying(20),
    "c_zone_code" character varying(10),
    "n_deleted" numeric,
    "d_created" character varying(30),
    "d_modified" character varying(30),
    "c_modifier" character varying(20)
);

CREATE TABLE "Tbl_rep_group_mapping" (
    "C_report_id" character varying(10) NOT NULL,
    "C_rep_group_id" character varying(10) NOT NULL,
    "C_Subtitle_id" character varying(10) NOT NULL,
    "D_modified" timestamp without time zone
);

CREATE TABLE "Tbl_rep_sp_column_def" (
    "C_Sp_Id" character varying(10) NOT NULL,
    "C_Id" character varying(10) NOT NULL,
    "C_Col_Name" character varying(10) NOT NULL,
    "C_Col_Type" character varying(10) NOT NULL
);

CREATE TABLE "Tbl_rep_sp_mst" (
    "C_Spid" character varying(10) NOT NULL,
    "C_name" character varying(50) NOT NULL,
    "C_Sp_Type" character varying(10) NOT NULL,
    "C_Sp_ParamDet" text NOT NULL
);

CREATE TABLE "Tbl_rep_sp_type" (
    "C_Sp_Type" character varying(10) NOT NULL,
    "C_name" character varying(50) NOT NULL,
    "N_deleted" bytea
);

CREATE TABLE "Tbl_replace_doc_compare_DocMst" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(200),
    "N_Type" integer NOT NULL,
    "C_Grade" character varying(10),
    "C_Qualification" character varying(50),
    "C_Add_1" character varying(200),
    "C_Add_2" character varying(200),
    "C_Add_3" character varying(70),
    "C_Add_4" character varying(70),
    "C_Pin" character varying(10),
    "C_Phone" character varying(20),
    "C_Fax" character varying(50),
    "C_Category" character varying(10),
    "C_Area_Code" character varying(10),
    "C_Subarea_Code" character varying(10),
    "D_DOB" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "n_Status" integer,
    "D_Create_Date" timestamp without time zone,
    "D_modify_Date" timestamp without time zone,
    "C_Email_ID" character varying(50),
    "C_FsCode" character varying(10),
    "c_region_code" character varying(10),
    "n_convert" numeric,
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(20),
    "n_lami" double precision,
    "n_lgmi" double precision,
    "c_tin_no" character varying(50),
    "c_lic_no" character varying(50),
    "c_contact_name" character varying(50),
    "n_Sft_shop" numeric,
    "n_No_of_display_Shelf" numeric,
    "c_desc_display_shelf" character varying(100),
    "n_Front_Board_Height" numeric,
    "n_Front_Board_length" numeric,
    "n_Backlit" smallint,
    "n_Computerised" smallint,
    "c_lic_food" character varying(50),
    "c_sort" character varying(10),
    "c_contact_mob" character varying(50),
    "c_contact_outlet_num" character varying(50),
    "C_Landmark" character varying(100),
    "C_Short_Name" character varying(10),
    "C_Doc_Class" character varying(10),
    "C_Spousename" character varying(100),
    "D_SpouseDob" timestamp without time zone,
    "C_FName" character varying(200),
    "C_LName" character varying(50),
    "n_mcino" character varying(40),
    "C_HOSPITAL_NAME" character varying(200),
    "C_STREET_NAME" character varying(150),
    "C_AREA_NAME" character varying(150),
    "C_LANDMARK1" character varying(150),
    "C_CITY" character varying(150),
    "C_STATE" character varying(150),
    "C_HOUSE_NAME" character varying(150),
    "C_STREET_NAME1" character varying(150),
    "C_AREA_NAME1" character varying(150),
    "C_LANDMARK2" character varying(150),
    "C_CITY_1" character varying(150),
    "N_PATIENTS" character varying(150),
    "N_CRNTBUSINES" character varying(150),
    "C_STATE1" character varying(150),
    "C_PINCODE1" character varying(150),
    "C_BUSINES_POTENTIAL" character varying(150),
    "D_CHILD_DOB1" timestamp without time zone,
    "D_CHILD_DOB2" timestamp without time zone,
    "D_CHILD_DOB3" timestamp without time zone,
    "n_age" character varying(10),
    "C_SPECIALITY" character varying(150),
    "C_childnname1" character varying(150),
    "C_childnname2" character varying(150),
    "C_childnname3" character varying(150),
    "n_drpurchase" integer,
    "N_drprescription" integer,
    "N_drpotential" character varying(50),
    "c_landline" character varying(40),
    "c_middlename" character varying(50),
    "c_tldl1" character varying(100),
    "c_tldl2" character varying(100),
    "c_dlfood1" character varying(100),
    "c_tldl11" character varying(100),
    "c_tldl12" character varying(100),
    "c_dlfood2" character varying(100),
    "d_DLDate1" timestamp without time zone,
    "d_DLDate2" timestamp without time zone,
    "c_pan1" character varying(100),
    "c_pan2" character varying(100),
    "c_Purchase_manager_Name" character varying(100),
    "c_Purchase_manager_Mob" character varying(20),
    "c_Account_Type" character varying(50),
    "n_visit_freq" integer,
    "n_fridge" integer,
    "c_Institutn_type" character varying(100),
    "c_Account_Grp" character varying(100),
    "n_hostel" integer,
    "n_no_of_canteen" integer,
    "c_type_of_food" text,
    "c_Canteen_contr_name" character varying(100),
    "c_Canteen_contr_addr" character varying(500),
    "D_agreement_date" timestamp without time zone,
    "n_Total_Disc" numeric,
    "D_Total_Disc_From" timestamp without time zone,
    "D_Total_Disc_To" timestamp without time zone,
    "c_Store_Classification" character varying(100),
    "n_Store_Type" integer,
    "c_Distributor" character varying(20),
    "c_store_type" character varying(50),
    "c_Store_Manager" character varying(50),
    "c_Distributor_name" character varying(100),
    "n_active" integer,
    "c_classification" character varying(10),
    "c_chemisttype" character varying(10),
    "n_WindowSize" character varying(50),
    "C_AccountClassfctn" character varying(5),
    "C_AccountAddress" character varying(100),
    "C_AccountCode" character varying(10),
    "n_DaysTo_Activate" integer,
    "d_Start_Date" timestamp without time zone,
    "d_activation_Date" timestamp without time zone,
    "c_storetype" character varying(50),
    "c_distributorcode" character varying(50),
    "c_visitfrequency" character varying(50),
    "c_classificationcode" character varying(50),
    "c_stmanager" character varying(50),
    "C_SA_Classification" character varying(20),
    "c_Hospital_Code" character varying(200),
    "C_TypeofHsptl" character varying(300),
    "C_Area" character varying(100),
    "C_Inhouse_phar_exist" character varying(100),
    "C_Fin_Turnover" character varying(100),
    "C_Potencial" character varying(100),
    "C_No_of_Beds" character varying(100),
    "C_No_of_Emer_Beds" character varying(100),
    "C_No_of_Critic_ICU_Beds" character varying(100),
    "C_No_of_Sur_Theaters" character varying(100),
    "C_Hospital" character varying(100),
    "C_Tot_No_of_Doctors" character varying(100),
    "C_Pur_Mgr_Name" character varying(100),
    "C_Pur_Mgr__Contact" character varying(100),
    "C_Stk_Inchrg_Name" character varying(100),
    "C_Stk_Inchrg_Contact" character varying(100),
    "C_Fin_Ofcr_Name" character varying(100),
    "C_Fin_Ofcr_Contact" character varying(100),
    "C_No_of_Thrputc_Group" character varying(100),
    "C_Techng_Institution" character varying(100),
    "C_Gstno" character varying(50),
    "c_docmstpan" character varying(10),
    "c_classtype" character varying(10),
    "n_SASCollection" integer,
    "n_DrUpdateReqNo" numeric,
    "c_clinicsubarea" character varying(150)
);

CREATE TABLE "Tbl_sub_area_Mst_temp" (
    "C_Code" character(6),
    "C_Name" character(50),
    "C_Sh_Name" character(20),
    "C_Area_Code" character(6),
    "N_HQ_Flag" numeric,
    "n_deleted" numeric,
    "d_created" character varying(30),
    "d_modified" character varying(30),
    "c_modifier" character(20)
);

CREATE TABLE "Tbl_version_error_log" (
    "N_srno" numeric NOT NULL,
    "V_ID" integer NOT NULL DEFAULT nextval('"Tbl_version_error_log_V_ID_seq"'::regclass),
    "C_message" character varying(300) NOT NULL,
    "D_Date" timestamp without time zone NOT NULL
);

CREATE TABLE "Tbl_video_desk_det" (
    "n_srno" integer,
    "c_code" character varying(30),
    "c_empcode" character varying(20),
    "c_region" character varying(20)
);

CREATE TABLE "Tbl_visualaid_desk_det" (
    "n_srno" integer,
    "c_code" character varying(30),
    "c_empcode" character varying(20),
    "c_item_code" character varying(20)
);

CREATE TABLE "Tbl_visualaid_desk_mst" (
    "C_CODE" character varying(10) NOT NULL,
    "C_NAME" character varying(50) NOT NULL,
    "C_EMP_CODE" character varying(20),
    "N_DELETED" integer NOT NULL,
    "D_CREATED" timestamp without time zone NOT NULL,
    "D_MODIFIED" timestamp without time zone,
    "C_MODIFIER" character varying(50)
);

CREATE TABLE "Tbl_wc_Fs_Mapping" (
    "n_SrNo" integer NOT NULL DEFAULT nextval('"Tbl_wc_Fs_Mapping_n_SrNo_seq"'::regclass),
    "c_wc_GrpCode" character varying(50),
    "n_FsType" smallint,
    "n_Active" smallint,
    "d_FromDate" timestamp without time zone,
    "d_ToDate" timestamp without time zone,
    "c_EnteredBy" character varying(10),
    "n_deleted" smallint,
    "d_Created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "c_division" character varying(1000),
    "c_region" character varying(1000),
    "n_frequency" smallint,
    "n_applicableday" smallint,
    "n_Survey_Type" integer
);

CREATE TABLE "Tbl_wc_QuestionGrp_Mst" (
    "N_SrNo" integer NOT NULL DEFAULT nextval('"Tbl_wc_QuestionGrp_Mst_N_SrNo_seq"'::regclass),
    "C_Code" character varying(10),
    "C_Name" character varying(100),
    "C_Description" character varying(1000),
    "n_Type" smallint,
    "N_deleted" smallint,
    "D_Created" timestamp without time zone,
    "d_Modified" timestamp without time zone,
    "c_Modifier" character varying(10),
    "n_assesment_startdate" integer,
    "n_assesment_enddate" integer,
    "n_mandatory_days" integer,
    "n_applicable" integer NOT NULL DEFAULT 0
);

CREATE TABLE "Tbl_wc_QuestionMst" (
    "N_SrNo" integer NOT NULL DEFAULT nextval('"Tbl_wc_QuestionMst_N_SrNo_seq"'::regclass),
    "C_Code" character varying(10),
    "C_Name" character varying(100),
    "C_ShortName" character varying(50),
    "C_Description" character varying(1000),
    "N_Active" smallint,
    "N_deleted" smallint,
    "D_Created" timestamp without time zone,
    "d_Modified" timestamp without time zone,
    "c_Modifier" character varying(10),
    "n_QuestionType" integer,
    "c_Choice1" character varying(100),
    "c_Choice2" character varying(100),
    "c_Choice3" character varying(100),
    "c_Choice4" character varying(100),
    "c_Choice5" character varying(100),
    "N_textdata" integer,
    "n_orderno" integer
);

CREATE TABLE "Tbl_wc_Questiongrp_det" (
    "N_SrNo" integer NOT NULL,
    "C_wc_questionid" character varying(10),
    "n_visible_to_downlevel" smallint,
    "n_Quesorderno" integer,
    "n_feedbackquestion" integer
);

CREATE TABLE "Tbl_wc_Res_Det" (
    "n_McrNo" integer NOT NULL,
    "c_Dsc_Code" character varying(10),
    "c_Question_Id" character varying(10),
    "n_Mark" character varying(100),
    "n_Applicable" smallint,
    "n_Type" smallint,
    "c_QuestionGrpCode" character varying(10),
    "n_wc_Mapping_SrNo" integer,
    "c_Comments" character varying(200)
);

CREATE TABLE "Tbl_wc_Res_Mst" (
    "n_McrNo" integer NOT NULL,
    "c_EnteredBy" character varying(10),
    "d_Date" timestamp without time zone,
    "n_Type" smallint
);

CREATE TABLE "Temp_fielactivity_HTMLDownload" (
    "Zone" character varying(500),
    "Region" character varying(500),
    "Area" character varying(500),
    "Fs_name" character varying(500),
    "DCRDate" character varying(10),
    "DcrEntryDate" character varying(10),
    "WorkType" character varying(50),
    "Planned" character varying(500),
    "Worked" character varying(500),
    "MCL" integer,
    "NONMCL" integer,
    "Chemist_Count" integer,
    "Chemist_POB" integer,
    "WorkedWith" text,
    "Calendar_Days" integer,
    "Field_WorkDays" integer,
    "NonField_WorkDays" integer,
    "Leave_Days" integer,
    "Holidays" integer,
    "DCRMCRnotreceived" integer,
    "Missed_Doctors" integer
);

CREATE TABLE "VG_DR" (
    "DR" character varying(7) NOT NULL
);

CREATE TABLE "VG_DR2" (
    "Division Code" character varying(255),
    "employee name" character varying(255),
    "fs code" character varying(255),
    "Doctor Code" character varying(255),
    "DoctorName" character varying(255),
    "Qualification 1" character varying(255),
    "Qualification 2" character varying(255),
    "Qualification 3" character varying(255),
    "Qualification 4" character varying(255),
    "Qualification 5" character varying(255),
    "Grade" character varying(255),
    "Speciality Type" character varying(255),
    "Doctor Class" character varying(255),
    "Mobile No" character varying(255),
    "Land Line No" character varying(255),
    "SubArea" character varying(255),
    "MCLNO" character varying(255),
    "DR Registration No" character varying(255),
    "DOB" character varying(255),
    "Age" character varying(255),
    "DOW" character varying(255),
    "Product Mapped" character varying(255),
    "Spouse name" character varying(255),
    "Spouse DOB" character varying(255),
    "EmailID" character varying(255),
    "Speciality As Per Qualification" character varying(255),
    "Clinic/Hospital Name" character varying(255),
    "Address 1" character varying(255),
    "Address 2" character varying(255),
    "Address 3" character varying(255),
    "Area" character varying(255),
    "Landmark" character varying(255),
    "City" character varying(255),
    "District" character varying(255),
    "State" character varying(255),
    "PIN" double precision,
    "House/Building Name" character varying(255),
    "Street Name" character varying(255),
    "Area1" character varying(255),
    "Landmark1" character varying(255),
    "City1" character varying(255),
    "State1" character varying(255),
    "PIN1" character varying(255),
    "No Of Patients Per Day" character varying(255),
    "Current Business" character varying(255),
    "Business Potential" character varying(255),
    "Doctor Potential" character varying(255),
    "Is doctor Is Prescribing" character varying(255),
    "Is doctor Is Purchasing" character varying(255),
    "Child1 Name" character varying(255),
    "Child1 DOB" character varying(255),
    "Child2 Name" character varying(255),
    "Child2 DOB" character varying(255),
    "Child3 Name" character varying(255),
    "Child3 DOB" character varying(255)
);

CREATE TABLE "WorkedRpt" (
    "Empcode" integer,
    "DIVISION" character varying(50),
    "REGION" character varying(50),
    "FSCODE" character varying(50),
    "FSNAME" character varying(50),
    "HQ" character varying(50),
    "REPORTINGMANAGER" character varying(50),
    "PREVDAYSTATUS" character varying(50),
    "PREVDAYCALLS" character varying(50),
    "WORKINGDAYS" character varying(50),
    "WORKDDAYS" character varying(50),
    "VISITEDDOCTORS" integer,
    "CALLAVG" character varying(50),
    "LEAVEDAYS" character varying(50),
    "HOLIDAYS" character varying(50),
    "Dayscnt" integer
);

CREATE TABLE "arv_stp" (
    "Region Name" character varying(255),
    "STPNo" double precision,
    "FS CODE" character varying(255),
    "division" character varying(255),
    "FS NAME" character varying(255),
    "HQ CODE" character varying(255),
    "HQ NAME" character varying(255),
    "Based At Code" character varying(255),
    "Based At Name" character varying(255),
    "STP Date From" timestamp without time zone,
    "STP Date To" timestamp without time zone,
    "HQDA" double precision,
    "EXDA" double precision,
    "OSDA" double precision,
    "TAType" double precision,
    "RateKM" double precision,
    "distnace" double precision,
    "TA" double precision,
    "From Area Code" character varying(255),
    "From Area Name" character varying(255),
    "ToAreaCode" character varying(255),
    "ToAreaname" character varying(255),
    "A grade doct count" double precision,
    "B grade doctor count" double precision,
    "workingdays" double precision,
    "chemist count" double precision,
    "stockiest count" double precision,
    "curent business" double precision,
    "expected business" double precision,
    "AreaType" character varying(255)
);

CREATE TABLE "att" (
    "EMPCODE" character varying(50),
    "FSCODE" character varying(50),
    "FSNAME" character varying(50),
    "DOJ" character varying(50),
    "REPORTINGMANAGER" character varying(50),
    "FIELDDAYS" character varying(50),
    "HOLIDAYS" character varying(50),
    "LEAVEDAYS" character varying(50),
    "NR" character varying(50),
    "TOTALDAYS" character varying(50),
    "SUNDAYS" character varying(50),
    "REGION" character varying(50),
    "DIVISION" character varying(50),
    "PAIDDAYS" character varying(50)
);

CREATE TABLE "backupdoc" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(200),
    "N_Type" integer NOT NULL,
    "C_Grade" character varying(10),
    "C_Qualification" character varying(50),
    "C_Add_1" character varying(50),
    "C_Add_2" character varying(50),
    "C_Add_3" character varying(50),
    "C_Add_4" character varying(50),
    "C_Pin" character varying(10),
    "C_Phone" character varying(20),
    "C_Fax" character varying(50),
    "C_Category" character varying(10),
    "C_Area_Code" character varying(10),
    "C_Subarea_Code" character varying(10),
    "D_DOB" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "n_Status" integer,
    "D_Create_Date" timestamp without time zone,
    "D_modify_Date" timestamp without time zone,
    "C_Email_ID" character varying(50),
    "C_FsCode" character varying(10),
    "c_region_code" character varying(10),
    "n_convert" numeric,
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(20),
    "n_lami" double precision,
    "n_lgmi" double precision,
    "c_tin_no" character varying(50),
    "c_lic_no" character varying(50),
    "c_contact_name" character varying(50),
    "n_Sft_shop" numeric,
    "n_No_of_display_Shelf" numeric,
    "c_desc_display_shelf" character varying(100),
    "n_Front_Board_Height" numeric,
    "n_Front_Board_length" numeric,
    "n_Backlit" smallint,
    "n_Computerised" smallint,
    "c_lic_food" character varying(50),
    "c_sort" character varying(10),
    "c_contact_mob" character varying(50),
    "c_contact_outlet_num" character varying(50),
    "C_Landmark" character varying(100),
    "C_Short_Name" character varying(10),
    "C_Doc_Class" character varying(10),
    "C_Spousename" character varying(100),
    "D_SpouseDob" timestamp without time zone,
    "C_FName" character varying(50),
    "C_LName" character varying(50),
    "n_mcino" character varying(20),
    "C_HOSPITAL_NAME" character varying(150),
    "C_STREET_NAME" character varying(150),
    "C_AREA_NAME" character varying(150),
    "C_LANDMARK1" character varying(150),
    "C_CITY" character varying(150),
    "C_STATE" character varying(150),
    "C_HOUSE_NAME" character varying(150),
    "C_STREET_NAME1" character varying(150),
    "C_AREA_NAME1" character varying(150),
    "C_LANDMARK2" character varying(150),
    "C_CITY_1" character varying(150),
    "N_PATIENTS" character varying(150),
    "N_CRNTBUSINES" character varying(150),
    "C_STATE1" character varying(150),
    "C_PINCODE1" character varying(150),
    "C_BUSINES_POTENTIAL" character varying(150),
    "D_CHILD_DOB1" timestamp without time zone,
    "D_CHILD_DOB2" timestamp without time zone,
    "D_CHILD_DOB3" timestamp without time zone,
    "n_age" character varying(10),
    "C_SPECIALITY" character varying(150),
    "C_childnname1" character varying(150),
    "C_childnname2" character varying(150),
    "C_childnname3" character varying(150),
    "n_drpurchase" integer,
    "N_drprescription" integer,
    "N_drpotential" character varying(50),
    "c_landline" character varying(20),
    "c_middlename" character varying(50),
    "c_tldl1" character varying(100),
    "c_tldl2" character varying(100),
    "c_dlfood1" character varying(100),
    "c_tldl11" character varying(100),
    "c_tldl12" character varying(100),
    "c_dlfood2" character varying(100),
    "d_DLDate1" timestamp without time zone,
    "d_DLDate2" timestamp without time zone,
    "c_pan1" character varying(100),
    "c_pan2" character varying(100),
    "c_Purchase_manager_Name" character varying(100),
    "c_Purchase_manager_Mob" character varying(20),
    "c_Account_Type" character varying(50),
    "n_visit_freq" integer,
    "n_fridge" integer,
    "c_Institutn_type" character varying(100),
    "c_Account_Grp" character varying(100),
    "n_hostel" integer,
    "n_no_of_canteen" integer,
    "c_type_of_food" text,
    "c_Canteen_contr_name" character varying(100),
    "c_Canteen_contr_addr" character varying(500),
    "D_agreement_date" timestamp without time zone,
    "n_Total_Disc" numeric,
    "D_Total_Disc_From" timestamp without time zone,
    "D_Total_Disc_To" timestamp without time zone,
    "c_Store_Classification" character varying(100),
    "n_Store_Type" integer,
    "c_Distributor" character varying(20),
    "c_store_type" character varying(50),
    "c_Store_Manager" character varying(50),
    "c_Distributor_name" character varying(100),
    "n_active" integer,
    "c_classification" character varying(10),
    "c_chemisttype" character varying(10),
    "n_WindowSize" character varying(50),
    "C_AccountClassfctn" character varying(5),
    "C_AccountAddress" character varying(100),
    "C_AccountCode" character varying(10),
    "n_DaysTo_Activate" integer,
    "d_Start_Date" timestamp without time zone,
    "d_activation_Date" timestamp without time zone,
    "c_storetype" character varying(50),
    "c_distributorcode" character varying(50),
    "c_visitfrequency" character varying(50),
    "c_classificationcode" character varying(50),
    "c_stmanager" character varying(50),
    "C_SA_Classification" character varying(20),
    "c_Hospital_Code" character varying(10),
    "C_TypeofHsptl" character varying(300),
    "C_Area" character varying(100),
    "C_Inhouse_phar_exist" character varying(100),
    "C_Fin_Turnover" character varying(100),
    "C_Potencial" character varying(100),
    "C_No_of_Beds" character varying(100),
    "C_No_of_Emer_Beds" character varying(100),
    "C_No_of_Critic_ICU_Beds" character varying(100),
    "C_No_of_Sur_Theaters" character varying(100),
    "C_Hospital" character varying(100),
    "C_Tot_No_of_Doctors" character varying(100),
    "C_Pur_Mgr_Name" character varying(100),
    "C_Pur_Mgr__Contact" character varying(100),
    "C_Stk_Inchrg_Name" character varying(100),
    "C_Stk_Inchrg_Contact" character varying(100),
    "C_Fin_Ofcr_Name" character varying(100),
    "C_Fin_Ofcr_Contact" character varying(100),
    "C_No_of_Thrputc_Group" character varying(100),
    "C_Techng_Institution" character varying(100),
    "C_Gstno" character varying(50),
    "c_docmstpan" character varying(10)
);

CREATE TABLE "bkptbl_user_access2023262023" (
    "N_Type" numeric NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "c_sh_name" character varying(10),
    "n_CI_FLag" smallint,
    "n_fs_flag" smallint,
    "c_gadgetcode" character varying(50),
    "n_dashboard_type" integer
);

CREATE TABLE "callavg" (
    "EmpCode" character varying(50),
    "Division" character varying(50),
    "Region" character varying(50),
    "FSCode" character varying(50),
    "FSName" character varying(50),
    "ReportingManager" character varying(50),
    "WorkingDays" character varying(50),
    "WorkedDays" character varying(50),
    "TotalCalls" character varying(50),
    "Callavg" character varying(50)
);

CREATE TABLE "claimbackup" (
    "N_SRNO" numeric NOT NULL,
    "C_CLAIM_CODE" character varying(10) NOT NULL,
    "C_FS_CODE" character varying(10) NOT NULL,
    "C_EMP_CODE" character varying(10) NOT NULL,
    "C_PARENT_CODE" character varying(10) NOT NULL,
    "C_DESK_CODE" character varying(10) NOT NULL,
    "D_DATE" timestamp without time zone NOT NULL,
    "D_DATE_FROM" timestamp without time zone NOT NULL,
    "D_DATE_TO" timestamp without time zone NOT NULL,
    "C_DESCRIPTION" character varying(500),
    "C_NOTE1" character varying(500),
    "C_NOTE2" character varying(500),
    "C_NOTE3" character varying(500),
    "N_APPROVED" integer NOT NULL,
    "D_APPROVED_ON" timestamp without time zone,
    "C_APPROVED_BY" character varying(10),
    "N_MANUAL_AUTO" integer NOT NULL,
    "N_CONFIRMED" integer NOT NULL,
    "D_CONFIRMED_ON" timestamp without time zone,
    "C_CONFIRMED_BY" character varying(10),
    "N_DELETED" integer NOT NULL,
    "D_MODIFIED" timestamp without time zone,
    "n_claimed_amt" numeric NOT NULL,
    "n_approved_amt" numeric NOT NULL,
    "n_confirmed_amt" numeric NOT NULL,
    "d_Reconfirmed_on" timestamp without time zone,
    "c_Reconfirmation_Det" character varying(500),
    "n_claimsetup_srno" integer,
    "N_SUBMIT" integer,
    "n_confirmsubmit" integer,
    "d_confirm_dt" timestamp without time zone
);

CREATE TABLE "claimformatbkp" (
    "C_CODE" character varying(50) NOT NULL,
    "C_NAME" character varying(50) NOT NULL,
    "N_MONTH_DAY" numeric NOT NULL,
    "N_VISITDETAIL_FROM" numeric NOT NULL,
    "N_PLACEVISIT_HEADER" numeric NOT NULL,
    "N_PRE_CLAIM_REF" numeric NOT NULL,
    "N_DETAIL_REQUIRED" numeric NOT NULL,
    "N_SUMMARY_REQUIRED" numeric NOT NULL,
    "N_REIMBURSMENT_REQUIRED" numeric NOT NULL,
    "N_DETAIL_DR_COUNT" numeric NOT NULL,
    "N_DETAIL_CHEM_COUNT" numeric NOT NULL,
    "N_DETAIL_STK_COUNT" numeric NOT NULL,
    "N_DETAIL_DIST_KM" numeric NOT NULL,
    "n_detail_dist_stp_km" numeric NOT NULL,
    "N_DETAIL_VISITTYPE" numeric NOT NULL,
    "N_DETAIL_WORKWITH" numeric NOT NULL,
    "N_DETAIL_DESCRIPTION_LOOKUP" numeric NOT NULL,
    "N_STATUS" integer,
    "N_DELETED" integer,
    "D_CREATED" timestamp without time zone,
    "D_MODIFIED" timestamp without time zone,
    "C_MODIFIER" character varying(50),
    "n_AdditionalTA" integer,
    "n_stayed_at" integer,
    "N_MonthlyFixdExp" numeric,
    "n_Sup_Mer_Details" integer,
    "n_ModeOfTravel" integer NOT NULL
);

CREATE TABLE "cusback" (
    "c_cust_code" character(10) NOT NULL,
    "c_div_code" character varying(10) NOT NULL,
    "c_fs_code" character(10) NOT NULL,
    "d_date" timestamp without time zone NOT NULL,
    "c_grade" character varying(10),
    "d_date_to" timestamp without time zone,
    "n_per" integer,
    "C_ref_no" character varying(52),
    "d_modified" timestamp without time zone,
    "N_CRNTBUSINES" character varying(150),
    "C_BUSINES_POTENTIAL" character varying(150),
    "N_drpotential" character varying(50),
    "c_DocSubAreacode" character varying(50) NOT NULL
);

CREATE TABLE "cusbackup2017" (
    "c_cust_code" character(10) NOT NULL,
    "c_div_code" character varying(10) NOT NULL,
    "c_fs_code" character(10) NOT NULL,
    "d_date" timestamp without time zone NOT NULL,
    "c_grade" character varying(10),
    "d_date_to" timestamp without time zone,
    "n_per" integer,
    "C_ref_no" character varying(52),
    "d_modified" timestamp without time zone,
    "N_CRNTBUSINES" character varying(150),
    "C_BUSINES_POTENTIAL" character varying(150),
    "N_drpotential" character varying(50)
);

CREATE TABLE "cusbck2017_06_01" (
    "c_cust_code" character(10) NOT NULL,
    "c_div_code" character varying(10) NOT NULL,
    "c_fs_code" character(10) NOT NULL,
    "d_date" timestamp without time zone NOT NULL,
    "c_grade" character varying(10),
    "d_date_to" timestamp without time zone,
    "n_per" integer,
    "C_ref_no" character varying(52),
    "d_modified" timestamp without time zone,
    "N_CRNTBUSINES" character varying(150),
    "C_BUSINES_POTENTIAL" character varying(150),
    "N_drpotential" character varying(50)
);

CREATE TABLE "custdiv2020" (
    "c_cust_code" character(10) NOT NULL,
    "c_div_code" character varying(10) NOT NULL,
    "c_fs_code" character(10) NOT NULL,
    "d_date" timestamp without time zone NOT NULL,
    "c_grade" character varying(10),
    "d_date_to" timestamp without time zone,
    "n_per" integer,
    "C_ref_no" character varying(52),
    "d_modified" timestamp without time zone,
    "N_CRNTBUSINES" character varying(150),
    "C_BUSINES_POTENTIAL" character varying(150),
    "N_drpotential" character varying(50),
    "c_DocSubAreacode" character varying(50) NOT NULL
);

CREATE TABLE "dadaa" (
    "CategoryCode" character varying(50),
    "Specialization" character varying(50),
    "DRCount" character varying(255),
    "HQ" character varying(255),
    "State" character varying(255)
);

CREATE TABLE "daywisestatus" (
    "N_Srno" numeric NOT NULL DEFAULT '0'::numeric,
    "D_Date_Report" timestamp without time zone NOT NULL,
    "D_Entry_Date" timestamp without time zone NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "C_HQ_Code" character varying(10) NOT NULL,
    "C_Worked_With" character varying(10),
    "C_Reason" character varying(200),
    "C_Area_Code" character varying(10) NOT NULL,
    "C_Area_Stay" character varying(10) NOT NULL,
    "C_Note1" character varying(200),
    "C_Note2" character varying(200),
    "C_Note3" character varying(200),
    "N_Distance" numeric,
    "n_Fare" numeric,
    "n_Allowance" integer,
    "C_Allowance_Type" character(10),
    "c_WrkType" character varying(10),
    "N_Sort_Order" numeric,
    "N_Flag" integer,
    "C_Placeof_Work" character varying(10) NOT NULL,
    "C_Stayed_At" character varying(10) NOT NULL,
    "c_Emp_Code" character varying(10) NOT NULL,
    "c_temp_fs" character varying(10),
    "c_temp_emp" character varying(10),
    "D_Created" timestamp without time zone,
    "D_Modified" timestamp without time zone,
    "C_WorkContactRemarks" character varying(200)
);

CREATE TABLE "det" (
    "EmpID" character varying(50),
    "Date" character varying(50),
    "Status" character varying(50)
);

CREATE TABLE "detb" (
    "EmpID" character varying(50),
    "Date" date,
    "Status" character varying(50)
);

CREATE TABLE "dmap" (
    "Division code" character varying(255),
    "Fscode" character varying(255),
    "Doctor code" character varying(255),
    "DoctorName" character varying(255),
    "Qualification 1" character varying(255),
    "Qualification 2" character varying(255),
    "Qualification 3" character varying(255),
    "Qualification 4" character varying(255),
    "Qualification 5" character varying(255),
    "Grade" character varying(255),
    "Speciality Type" character varying(255),
    "Doctor Class" character varying(255),
    "Mobile No" double precision,
    "Land Line No" character varying(255),
    "SubArea" character varying(255),
    "MCLNO" character varying(255),
    "DR Registration No" character varying(255),
    "DOB" character varying(255),
    "Age" character varying(255),
    "DOW" timestamp without time zone,
    "Product Mapped" character varying(255),
    "Spouse name" character varying(255),
    "Spouse DOB" character varying(255),
    "EmailID" character varying(255),
    "Speciality As Per Qualification" character varying(255),
    "Clinic/Hospital Name" character varying(255),
    "Address 1" character varying(255),
    "Address 2" character varying(255),
    "Address 3" character varying(255),
    "Area" character varying(255),
    "Landmark" character varying(255),
    "City" character varying(255),
    "District" character varying(255),
    "State" character varying(255),
    "PIN" double precision,
    "House/Building Name" character varying(255),
    "Street Name" character varying(255),
    "Area1" character varying(255),
    "Landmark1" character varying(255),
    "City1" character varying(255),
    "State1" character varying(255),
    "PIN1" character varying(255),
    "No Of Patients Per Day" double precision,
    "Current Business" character varying(255),
    "Business Potential" character varying(255),
    "Doctor Potential" double precision,
    "Is doctor Is Prescribing" character varying(255),
    "Is doctor Is Purchasing" character varying(255),
    "Child1 Name" character varying(255),
    "Child1 DOB" character varying(255),
    "Child2 Name" character varying(255),
    "Child2 DOB" character varying(255),
    "Child3 Name" character varying(255),
    "Child3 DOB" character varying(255)
);

CREATE TABLE "doc" (
    "DoctorCode" character varying(10) NOT NULL,
    "DoctorName" character varying(200),
    "FSCode" character varying(10) NOT NULL,
    "FSName" character varying(100),
    "FSHQ" character varying(50),
    "Category" character varying(50),
    "Grade" character varying(30),
    "Class" character varying(100),
    "Qualification" character varying(100),
    "Subarea" character varying(50),
    "Area" character varying(50),
    "Region" character varying(50),
    "refno" character varying(52),
    "DivCode" character varying(10) NOT NULL,
    "Div" character varying(50),
    "DocEmailid" character varying(50)
);

CREATE TABLE "docbackup2021" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(200),
    "N_Type" integer NOT NULL,
    "C_Grade" character varying(10),
    "C_Qualification" character varying(50),
    "C_Add_1" character varying(200),
    "C_Add_2" character varying(50),
    "C_Add_3" character varying(50),
    "C_Add_4" character varying(50),
    "C_Pin" character varying(10),
    "C_Phone" character varying(20),
    "C_Fax" character varying(50),
    "C_Category" character varying(10),
    "C_Area_Code" character varying(10),
    "C_Subarea_Code" character varying(10),
    "D_DOB" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "n_Status" integer,
    "D_Create_Date" timestamp without time zone,
    "D_modify_Date" timestamp without time zone,
    "C_Email_ID" character varying(50),
    "C_FsCode" character varying(10),
    "c_region_code" character varying(10),
    "n_convert" numeric,
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(20),
    "n_lami" double precision,
    "n_lgmi" double precision,
    "c_tin_no" character varying(50),
    "c_lic_no" character varying(50),
    "c_contact_name" character varying(50),
    "n_Sft_shop" numeric,
    "n_No_of_display_Shelf" numeric,
    "c_desc_display_shelf" character varying(100),
    "n_Front_Board_Height" numeric,
    "n_Front_Board_length" numeric,
    "n_Backlit" smallint,
    "n_Computerised" smallint,
    "c_lic_food" character varying(50),
    "c_sort" character varying(10),
    "c_contact_mob" character varying(50),
    "c_contact_outlet_num" character varying(50),
    "C_Landmark" character varying(100),
    "C_Short_Name" character varying(10),
    "C_Doc_Class" character varying(10),
    "C_Spousename" character varying(100),
    "D_SpouseDob" timestamp without time zone,
    "C_FName" character varying(50),
    "C_LName" character varying(50),
    "n_mcino" character varying(20),
    "C_HOSPITAL_NAME" character varying(200),
    "C_STREET_NAME" character varying(150),
    "C_AREA_NAME" character varying(150),
    "C_LANDMARK1" character varying(150),
    "C_CITY" character varying(150),
    "C_STATE" character varying(150),
    "C_HOUSE_NAME" character varying(150),
    "C_STREET_NAME1" character varying(150),
    "C_AREA_NAME1" character varying(150),
    "C_LANDMARK2" character varying(150),
    "C_CITY_1" character varying(150),
    "N_PATIENTS" character varying(150),
    "N_CRNTBUSINES" character varying(150),
    "C_STATE1" character varying(150),
    "C_PINCODE1" character varying(150),
    "C_BUSINES_POTENTIAL" character varying(150),
    "D_CHILD_DOB1" timestamp without time zone,
    "D_CHILD_DOB2" timestamp without time zone,
    "D_CHILD_DOB3" timestamp without time zone,
    "n_age" character varying(10),
    "C_SPECIALITY" character varying(150),
    "C_childnname1" character varying(150),
    "C_childnname2" character varying(150),
    "C_childnname3" character varying(150),
    "n_drpurchase" integer,
    "N_drprescription" integer,
    "N_drpotential" character varying(50),
    "c_landline" character varying(20),
    "c_middlename" character varying(50),
    "c_tldl1" character varying(100),
    "c_tldl2" character varying(100),
    "c_dlfood1" character varying(100),
    "c_tldl11" character varying(100),
    "c_tldl12" character varying(100),
    "c_dlfood2" character varying(100),
    "d_DLDate1" timestamp without time zone,
    "d_DLDate2" timestamp without time zone,
    "c_pan1" character varying(100),
    "c_pan2" character varying(100),
    "c_Purchase_manager_Name" character varying(100),
    "c_Purchase_manager_Mob" character varying(20),
    "c_Account_Type" character varying(50),
    "n_visit_freq" integer,
    "n_fridge" integer,
    "c_Institutn_type" character varying(100),
    "c_Account_Grp" character varying(100),
    "n_hostel" integer,
    "n_no_of_canteen" integer,
    "c_type_of_food" text,
    "c_Canteen_contr_name" character varying(100),
    "c_Canteen_contr_addr" character varying(500),
    "D_agreement_date" timestamp without time zone,
    "n_Total_Disc" numeric,
    "D_Total_Disc_From" timestamp without time zone,
    "D_Total_Disc_To" timestamp without time zone,
    "c_Store_Classification" character varying(100),
    "n_Store_Type" integer,
    "c_Distributor" character varying(20),
    "c_store_type" character varying(50),
    "c_Store_Manager" character varying(50),
    "c_Distributor_name" character varying(100),
    "n_active" integer,
    "c_classification" character varying(10),
    "c_chemisttype" character varying(10),
    "n_WindowSize" character varying(50),
    "C_AccountClassfctn" character varying(5),
    "C_AccountAddress" character varying(100),
    "C_AccountCode" character varying(10),
    "n_DaysTo_Activate" integer,
    "d_Start_Date" timestamp without time zone,
    "d_activation_Date" timestamp without time zone,
    "c_storetype" character varying(50),
    "c_distributorcode" character varying(50),
    "c_visitfrequency" character varying(50),
    "c_classificationcode" character varying(50),
    "c_stmanager" character varying(50),
    "C_SA_Classification" character varying(20),
    "c_Hospital_Code" character varying(200),
    "C_TypeofHsptl" character varying(300),
    "C_Area" character varying(100),
    "C_Inhouse_phar_exist" character varying(100),
    "C_Fin_Turnover" character varying(100),
    "C_Potencial" character varying(100),
    "C_No_of_Beds" character varying(100),
    "C_No_of_Emer_Beds" character varying(100),
    "C_No_of_Critic_ICU_Beds" character varying(100),
    "C_No_of_Sur_Theaters" character varying(100),
    "C_Hospital" character varying(100),
    "C_Tot_No_of_Doctors" character varying(100),
    "C_Pur_Mgr_Name" character varying(100),
    "C_Pur_Mgr__Contact" character varying(100),
    "C_Stk_Inchrg_Name" character varying(100),
    "C_Stk_Inchrg_Contact" character varying(100),
    "C_Fin_Ofcr_Name" character varying(100),
    "C_Fin_Ofcr_Contact" character varying(100),
    "C_No_of_Thrputc_Group" character varying(100),
    "C_Techng_Institution" character varying(100),
    "C_Gstno" character varying(50),
    "c_docmstpan" character varying(10),
    "c_classtype" character varying(10),
    "n_SASCollection" integer,
    "c_uniqueid" character varying(50)
);

CREATE TABLE "docchemist" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(200),
    "N_Type" integer NOT NULL,
    "C_Grade" character varying(10),
    "C_Qualification" character varying(50),
    "C_Add_1" character varying(200),
    "C_Add_2" character varying(50),
    "C_Add_3" character varying(50),
    "C_Add_4" character varying(50),
    "C_Pin" character varying(10),
    "C_Phone" character varying(20),
    "C_Fax" character varying(50),
    "C_Category" text,
    "C_Area_Code" character varying(10),
    "C_Subarea_Code" character varying(10),
    "D_DOB" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "n_Status" integer,
    "D_Create_Date" timestamp without time zone,
    "D_modify_Date" timestamp without time zone,
    "C_Email_ID" character varying(50),
    "C_FsCode" character varying(10),
    "c_region_code" character varying(10),
    "n_convert" numeric,
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(20),
    "n_lami" double precision,
    "n_lgmi" double precision,
    "c_tin_no" character varying(50),
    "c_lic_no" character varying(50),
    "c_contact_name" character varying(50),
    "n_Sft_shop" numeric,
    "n_No_of_display_Shelf" numeric,
    "c_desc_display_shelf" character varying(100),
    "n_Front_Board_Height" numeric,
    "n_Front_Board_length" numeric,
    "n_Backlit" smallint,
    "n_Computerised" smallint,
    "c_lic_food" character varying(50),
    "c_sort" character varying(10),
    "c_contact_mob" character varying(50),
    "c_contact_outlet_num" character varying(50),
    "C_Landmark" character varying(100),
    "C_Short_Name" character varying(10),
    "C_Doc_Class" character varying(10),
    "C_Spousename" character varying(100),
    "D_SpouseDob" timestamp without time zone,
    "C_FName" character varying(50),
    "C_LName" character varying(50),
    "n_mcino" character varying(40),
    "C_HOSPITAL_NAME" character varying(200),
    "C_STREET_NAME" character varying(150),
    "C_AREA_NAME" character varying(150),
    "C_LANDMARK1" character varying(150),
    "C_CITY" character varying(150),
    "C_STATE" character varying(150),
    "C_HOUSE_NAME" character varying(150),
    "C_STREET_NAME1" character varying(150),
    "C_AREA_NAME1" character varying(150),
    "C_LANDMARK2" character varying(150),
    "C_CITY_1" character varying(150),
    "N_PATIENTS" character varying(150),
    "N_CRNTBUSINES" character varying(150),
    "C_STATE1" character varying(150),
    "C_PINCODE1" character varying(150),
    "C_BUSINES_POTENTIAL" character varying(150),
    "D_CHILD_DOB1" timestamp without time zone,
    "D_CHILD_DOB2" timestamp without time zone,
    "D_CHILD_DOB3" timestamp without time zone,
    "n_age" character varying(10),
    "C_SPECIALITY" character varying(150),
    "C_childnname1" character varying(150),
    "C_childnname2" character varying(150),
    "C_childnname3" character varying(150),
    "n_drpurchase" integer,
    "N_drprescription" integer,
    "N_drpotential" character varying(50),
    "c_landline" character varying(20),
    "c_middlename" character varying(50),
    "c_tldl1" character varying(100),
    "c_tldl2" character varying(100),
    "c_dlfood1" character varying(100),
    "c_tldl11" character varying(100),
    "c_tldl12" character varying(100),
    "c_dlfood2" character varying(100),
    "d_DLDate1" timestamp without time zone,
    "d_DLDate2" timestamp without time zone,
    "c_pan1" character varying(100),
    "c_pan2" character varying(100),
    "c_Purchase_manager_Name" character varying(100),
    "c_Purchase_manager_Mob" character varying(20),
    "c_Account_Type" character varying(50),
    "n_visit_freq" integer,
    "n_fridge" integer,
    "c_Institutn_type" character varying(100),
    "c_Account_Grp" character varying(100),
    "n_hostel" integer,
    "n_no_of_canteen" integer,
    "c_type_of_food" text,
    "c_Canteen_contr_name" character varying(100),
    "c_Canteen_contr_addr" character varying(500),
    "D_agreement_date" timestamp without time zone,
    "n_Total_Disc" numeric,
    "D_Total_Disc_From" timestamp without time zone,
    "D_Total_Disc_To" timestamp without time zone,
    "c_Store_Classification" character varying(100),
    "n_Store_Type" integer,
    "c_Distributor" character varying(20),
    "c_store_type" character varying(50),
    "c_Store_Manager" character varying(50),
    "c_Distributor_name" character varying(100),
    "n_active" integer,
    "c_classification" character varying(10),
    "c_chemisttype" character varying(10),
    "n_WindowSize" character varying(50),
    "C_AccountClassfctn" character varying(5),
    "C_AccountAddress" character varying(100),
    "C_AccountCode" character varying(10),
    "n_DaysTo_Activate" integer,
    "d_Start_Date" timestamp without time zone,
    "d_activation_Date" timestamp without time zone,
    "c_storetype" character varying(50),
    "c_distributorcode" character varying(50),
    "c_visitfrequency" character varying(50),
    "c_classificationcode" character varying(50),
    "c_stmanager" character varying(50),
    "C_SA_Classification" character varying(20),
    "c_Hospital_Code" character varying(200),
    "C_TypeofHsptl" character varying(300),
    "C_Area" character varying(100),
    "C_Inhouse_phar_exist" character varying(100),
    "C_Fin_Turnover" character varying(100),
    "C_Potencial" character varying(100),
    "C_No_of_Beds" character varying(100),
    "C_No_of_Emer_Beds" character varying(100),
    "C_No_of_Critic_ICU_Beds" character varying(100),
    "C_No_of_Sur_Theaters" character varying(100),
    "C_Hospital" character varying(100),
    "C_Tot_No_of_Doctors" character varying(100),
    "C_Pur_Mgr_Name" character varying(100),
    "C_Pur_Mgr__Contact" character varying(100),
    "C_Stk_Inchrg_Name" character varying(100),
    "C_Stk_Inchrg_Contact" character varying(100),
    "C_Fin_Ofcr_Name" character varying(100),
    "C_Fin_Ofcr_Contact" character varying(100),
    "C_No_of_Thrputc_Group" character varying(100),
    "C_Techng_Institution" character varying(100),
    "C_Gstno" character varying(50),
    "c_docmstpan" character varying(10),
    "c_classtype" character varying(10),
    "n_SASCollection" integer,
    "c_uniqueid" character varying(50),
    "c_contact_person" character varying(200),
    "c_purchasemanagermail" character varying(200),
    "n_purchaseteam_size" integer,
    "c_stockiesname" character varying(200),
    "n_lami_res" double precision,
    "n_lgmi_res" double precision,
    "C_profile_Image" text,
    "c_department_catered" integer,
    "c_brands_focused" character varying(2000),
    "C_Phone_Enc" character varying(500),
    "doctors_covered_hospital" integer,
    "c_hetero_distributor_supplier" character varying(10),
    "c_hetero_brands_available" character varying(10),
    "n_no_new_admissions_perday" integer,
    "c_diagnostic_lab_iside_hospital" integer,
    "n_no_of_cafes" integer,
    "n_patient_kiosk" integer,
    "n_hospital_digitally_active" integer,
    "n_digital_handle_hospital_promotions" integer,
    "n_hospital_involved_mass_screening" integer,
    "n_hospital_organizing_specific_seminars" integer,
    "n_is_hospital_medical_emergency" integer,
    "n_pharmacy_scheme_specificity" integer,
    "n_dnb_hospital" integer,
    "n_number_of_patients" integer,
    "n_no_oncology_hospitals" integer,
    "n_no_of_beds_oncology_patients" integer,
    "n_no_patients_chemotherapy_surgery" integer,
    "n_no_chemotherapy_per_day" integer,
    "c_indication_wise_regiments" integer,
    "c_expected_business_activity_customers" character varying(250)
);

CREATE TABLE "docheirarchybackup" (
    "n_srno" numeric NOT NULL,
    "c_fs_code" character varying(100),
    "n_NextHeirarchyType" integer,
    "c_NextHeirarchyFSCode" character varying(100),
    "n_setupid" integer,
    "n_status" integer,
    "d_Modifieddate" timestamp without time zone,
    "n_apprequired" integer,
    "n_SingleOrMultiple" integer,
    "n_DeskFsType" integer,
    "n_ConfRequiredFieldExists" integer
);

CREATE TABLE "docmasterbackup2019" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(200),
    "N_Type" integer NOT NULL,
    "C_Grade" character varying(10),
    "C_Qualification" character varying(50),
    "C_Add_1" character varying(200),
    "C_Add_2" character varying(50),
    "C_Add_3" character varying(50),
    "C_Add_4" character varying(50),
    "C_Pin" character varying(10),
    "C_Phone" character varying(20),
    "C_Fax" character varying(50),
    "C_Category" character varying(10),
    "C_Area_Code" character varying(10),
    "C_Subarea_Code" character varying(10),
    "D_DOB" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "n_Status" integer,
    "D_Create_Date" timestamp without time zone,
    "D_modify_Date" timestamp without time zone,
    "C_Email_ID" character varying(50),
    "C_FsCode" character varying(10),
    "c_region_code" character varying(10),
    "n_convert" numeric,
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(20),
    "n_lami" double precision,
    "n_lgmi" double precision,
    "c_tin_no" character varying(50),
    "c_lic_no" character varying(50),
    "c_contact_name" character varying(50),
    "n_Sft_shop" numeric,
    "n_No_of_display_Shelf" numeric,
    "c_desc_display_shelf" character varying(100),
    "n_Front_Board_Height" numeric,
    "n_Front_Board_length" numeric,
    "n_Backlit" smallint,
    "n_Computerised" smallint,
    "c_lic_food" character varying(50),
    "c_sort" character varying(10),
    "c_contact_mob" character varying(50),
    "c_contact_outlet_num" character varying(50),
    "C_Landmark" character varying(100),
    "C_Short_Name" character varying(10),
    "C_Doc_Class" character varying(10),
    "C_Spousename" character varying(100),
    "D_SpouseDob" timestamp without time zone,
    "C_FName" character varying(50),
    "C_LName" character varying(50),
    "n_mcino" character varying(20),
    "C_HOSPITAL_NAME" character varying(150),
    "C_STREET_NAME" character varying(150),
    "C_AREA_NAME" character varying(150),
    "C_LANDMARK1" character varying(150),
    "C_CITY" character varying(150),
    "C_STATE" character varying(150),
    "C_HOUSE_NAME" character varying(150),
    "C_STREET_NAME1" character varying(150),
    "C_AREA_NAME1" character varying(150),
    "C_LANDMARK2" character varying(150),
    "C_CITY_1" character varying(150),
    "N_PATIENTS" character varying(150),
    "N_CRNTBUSINES" character varying(150),
    "C_STATE1" character varying(150),
    "C_PINCODE1" character varying(150),
    "C_BUSINES_POTENTIAL" character varying(150),
    "D_CHILD_DOB1" timestamp without time zone,
    "D_CHILD_DOB2" timestamp without time zone,
    "D_CHILD_DOB3" timestamp without time zone,
    "n_age" character varying(10),
    "C_SPECIALITY" character varying(150),
    "C_childnname1" character varying(150),
    "C_childnname2" character varying(150),
    "C_childnname3" character varying(150),
    "n_drpurchase" integer,
    "N_drprescription" integer,
    "N_drpotential" character varying(50),
    "c_landline" character varying(20),
    "c_middlename" character varying(50),
    "c_tldl1" character varying(100),
    "c_tldl2" character varying(100),
    "c_dlfood1" character varying(100),
    "c_tldl11" character varying(100),
    "c_tldl12" character varying(100),
    "c_dlfood2" character varying(100),
    "d_DLDate1" timestamp without time zone,
    "d_DLDate2" timestamp without time zone,
    "c_pan1" character varying(100),
    "c_pan2" character varying(100),
    "c_Purchase_manager_Name" character varying(100),
    "c_Purchase_manager_Mob" character varying(20),
    "c_Account_Type" character varying(50),
    "n_visit_freq" integer,
    "n_fridge" integer,
    "c_Institutn_type" character varying(100),
    "c_Account_Grp" character varying(100),
    "n_hostel" integer,
    "n_no_of_canteen" integer,
    "c_type_of_food" text,
    "c_Canteen_contr_name" character varying(100),
    "c_Canteen_contr_addr" character varying(500),
    "D_agreement_date" timestamp without time zone,
    "n_Total_Disc" numeric,
    "D_Total_Disc_From" timestamp without time zone,
    "D_Total_Disc_To" timestamp without time zone,
    "c_Store_Classification" character varying(100),
    "n_Store_Type" integer,
    "c_Distributor" character varying(20),
    "c_store_type" character varying(50),
    "c_Store_Manager" character varying(50),
    "c_Distributor_name" character varying(100),
    "n_active" integer,
    "c_classification" character varying(10),
    "c_chemisttype" character varying(10),
    "n_WindowSize" character varying(50),
    "C_AccountClassfctn" character varying(5),
    "C_AccountAddress" character varying(100),
    "C_AccountCode" character varying(10),
    "n_DaysTo_Activate" integer,
    "d_Start_Date" timestamp without time zone,
    "d_activation_Date" timestamp without time zone,
    "c_storetype" character varying(50),
    "c_distributorcode" character varying(50),
    "c_visitfrequency" character varying(50),
    "c_classificationcode" character varying(50),
    "c_stmanager" character varying(50),
    "C_SA_Classification" character varying(20),
    "c_Hospital_Code" character varying(50),
    "C_TypeofHsptl" character varying(300),
    "C_Area" character varying(100),
    "C_Inhouse_phar_exist" character varying(100),
    "C_Fin_Turnover" character varying(100),
    "C_Potencial" character varying(100),
    "C_No_of_Beds" character varying(100),
    "C_No_of_Emer_Beds" character varying(100),
    "C_No_of_Critic_ICU_Beds" character varying(100),
    "C_No_of_Sur_Theaters" character varying(100),
    "C_Hospital" character varying(100),
    "C_Tot_No_of_Doctors" character varying(100),
    "C_Pur_Mgr_Name" character varying(100),
    "C_Pur_Mgr__Contact" character varying(100),
    "C_Stk_Inchrg_Name" character varying(100),
    "C_Stk_Inchrg_Contact" character varying(100),
    "C_Fin_Ofcr_Name" character varying(100),
    "C_Fin_Ofcr_Contact" character varying(100),
    "C_No_of_Thrputc_Group" character varying(100),
    "C_Techng_Institution" character varying(100),
    "C_Gstno" character varying(50),
    "c_docmstpan" character varying(10),
    "c_classtype" character varying(10),
    "n_SASCollection" integer
);

CREATE TABLE "doctorcusbck" (
    "c_cust_code" character(10) NOT NULL,
    "c_div_code" character varying(10) NOT NULL,
    "c_fs_code" character(10) NOT NULL,
    "d_date" timestamp without time zone NOT NULL,
    "c_grade" character varying(10),
    "d_date_to" timestamp without time zone,
    "n_per" integer,
    "C_ref_no" character varying(52),
    "d_modified" timestamp without time zone,
    "N_CRNTBUSINES" character varying(150),
    "C_BUSINES_POTENTIAL" character varying(150),
    "N_drpotential" character varying(50)
);

CREATE TABLE "doctormasteraugustmonthbackup" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(200),
    "N_Type" integer NOT NULL,
    "C_Grade" character varying(10),
    "C_Qualification" character varying(50),
    "C_Add_1" character varying(50),
    "C_Add_2" character varying(50),
    "C_Add_3" character varying(50),
    "C_Add_4" character varying(50),
    "C_Pin" character varying(10),
    "C_Phone" character varying(20),
    "C_Fax" character varying(50),
    "C_Category" character varying(10),
    "C_Area_Code" character varying(10),
    "C_Subarea_Code" character varying(10),
    "D_DOB" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "n_Status" integer,
    "D_Create_Date" timestamp without time zone,
    "D_modify_Date" timestamp without time zone,
    "C_Email_ID" character varying(50),
    "C_FsCode" character varying(10),
    "c_region_code" character varying(10),
    "n_convert" numeric,
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(20),
    "n_lami" double precision,
    "n_lgmi" double precision,
    "c_tin_no" character varying(50),
    "c_lic_no" character varying(50),
    "c_contact_name" character varying(50),
    "n_Sft_shop" numeric,
    "n_No_of_display_Shelf" numeric,
    "c_desc_display_shelf" character varying(100),
    "n_Front_Board_Height" numeric,
    "n_Front_Board_length" numeric,
    "n_Backlit" smallint,
    "n_Computerised" smallint,
    "c_lic_food" character varying(50),
    "c_sort" character varying(10),
    "c_contact_mob" character varying(50),
    "c_contact_outlet_num" character varying(50),
    "C_Landmark" character varying(100),
    "C_Short_Name" character varying(10),
    "C_Doc_Class" character varying(10),
    "C_Spousename" character varying(100),
    "D_SpouseDob" timestamp without time zone,
    "C_FName" character varying(50),
    "C_LName" character varying(50),
    "n_mcino" character varying(20),
    "C_HOSPITAL_NAME" character varying(150),
    "C_STREET_NAME" character varying(150),
    "C_AREA_NAME" character varying(150),
    "C_LANDMARK1" character varying(150),
    "C_CITY" character varying(150),
    "C_STATE" character varying(150),
    "C_HOUSE_NAME" character varying(150),
    "C_STREET_NAME1" character varying(150),
    "C_AREA_NAME1" character varying(150),
    "C_LANDMARK2" character varying(150),
    "C_CITY_1" character varying(150),
    "N_PATIENTS" character varying(150),
    "N_CRNTBUSINES" character varying(150),
    "C_STATE1" character varying(150),
    "C_PINCODE1" character varying(150),
    "C_BUSINES_POTENTIAL" character varying(150),
    "D_CHILD_DOB1" timestamp without time zone,
    "D_CHILD_DOB2" timestamp without time zone,
    "D_CHILD_DOB3" timestamp without time zone,
    "n_age" character varying(10),
    "C_SPECIALITY" character varying(150),
    "C_childnname1" character varying(150),
    "C_childnname2" character varying(150),
    "C_childnname3" character varying(150),
    "n_drpurchase" integer,
    "N_drprescription" integer,
    "N_drpotential" character varying(50),
    "c_landline" character varying(20),
    "c_middlename" character varying(50),
    "c_tldl1" character varying(100),
    "c_tldl2" character varying(100),
    "c_dlfood1" character varying(100),
    "c_tldl11" character varying(100),
    "c_tldl12" character varying(100),
    "c_dlfood2" character varying(100),
    "d_DLDate1" timestamp without time zone,
    "d_DLDate2" timestamp without time zone,
    "c_pan1" character varying(100),
    "c_pan2" character varying(100),
    "c_Purchase_manager_Name" character varying(100),
    "c_Purchase_manager_Mob" character varying(20),
    "c_Account_Type" character varying(50),
    "n_visit_freq" integer,
    "n_fridge" integer,
    "c_Institutn_type" character varying(100),
    "c_Account_Grp" character varying(100),
    "n_hostel" integer,
    "n_no_of_canteen" integer,
    "c_type_of_food" text,
    "c_Canteen_contr_name" character varying(100),
    "c_Canteen_contr_addr" character varying(500),
    "D_agreement_date" timestamp without time zone,
    "n_Total_Disc" numeric,
    "D_Total_Disc_From" timestamp without time zone,
    "D_Total_Disc_To" timestamp without time zone,
    "c_Store_Classification" character varying(100),
    "n_Store_Type" integer,
    "c_Distributor" character varying(20),
    "c_store_type" character varying(50),
    "c_Store_Manager" character varying(50),
    "c_Distributor_name" character varying(100),
    "n_active" integer,
    "c_classification" character varying(10),
    "c_chemisttype" character varying(10),
    "n_WindowSize" character varying(50),
    "C_AccountClassfctn" character varying(5),
    "C_AccountAddress" character varying(100),
    "C_AccountCode" character varying(10),
    "n_DaysTo_Activate" integer,
    "d_Start_Date" timestamp without time zone,
    "d_activation_Date" timestamp without time zone,
    "c_storetype" character varying(50),
    "c_distributorcode" character varying(50),
    "c_visitfrequency" character varying(50),
    "c_classificationcode" character varying(50),
    "c_stmanager" character varying(50),
    "C_SA_Classification" character varying(20),
    "c_Hospital_Code" character varying(10),
    "C_TypeofHsptl" character varying(300),
    "C_Area" character varying(100),
    "C_Inhouse_phar_exist" character varying(100),
    "C_Fin_Turnover" character varying(100),
    "C_Potencial" character varying(100),
    "C_No_of_Beds" character varying(100),
    "C_No_of_Emer_Beds" character varying(100),
    "C_No_of_Critic_ICU_Beds" character varying(100),
    "C_No_of_Sur_Theaters" character varying(100),
    "C_Hospital" character varying(100),
    "C_Tot_No_of_Doctors" character varying(100),
    "C_Pur_Mgr_Name" character varying(100),
    "C_Pur_Mgr__Contact" character varying(100),
    "C_Stk_Inchrg_Name" character varying(100),
    "C_Stk_Inchrg_Contact" character varying(100),
    "C_Fin_Ofcr_Name" character varying(100),
    "C_Fin_Ofcr_Contact" character varying(100),
    "C_No_of_Thrputc_Group" character varying(100),
    "C_Techng_Institution" character varying(100),
    "C_Gstno" character varying(50),
    "c_docmstpan" character varying(10)
);

CREATE TABLE "dw" (
    "N_Srno" numeric NOT NULL,
    "D_Date_Report" timestamp without time zone NOT NULL,
    "D_Entry_Date" timestamp without time zone NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "C_HQ_Code" character varying(10) NOT NULL,
    "C_Worked_With" character varying(10),
    "C_Reason" character varying(200),
    "C_Area_Code" character varying(10) NOT NULL,
    "C_Area_Stay" character varying(10) NOT NULL,
    "C_Note1" character varying(200),
    "C_Note2" character varying(200),
    "C_Note3" character varying(200),
    "N_Distance" numeric,
    "n_Fare" numeric,
    "n_Allowance" integer,
    "C_Allowance_Type" character(10),
    "c_WrkType" character varying(10),
    "N_Sort_Order" numeric,
    "N_Flag" integer,
    "C_Placeof_Work" character varying(10) NOT NULL,
    "C_Stayed_At" character varying(10) NOT NULL,
    "c_Emp_Code" character varying(10) NOT NULL,
    "c_temp_fs" character varying(10),
    "c_temp_emp" character varying(10),
    "D_Created" timestamp without time zone,
    "D_Modified" timestamp without time zone,
    "C_WorkContactRemarks" character varying(200),
    "n_workedwithself" integer,
    "n_srnodisableretflg" integer,
    "n_androidflg" integer,
    "C_DSC_Code" character varying(10) NOT NULL
);

CREATE TABLE "dwr" (
    "N_Srno" numeric NOT NULL,
    "D_Date_Report" timestamp without time zone NOT NULL,
    "D_Entry_Date" timestamp without time zone NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "C_HQ_Code" character varying(10) NOT NULL,
    "C_Worked_With" character varying(10),
    "C_Reason" character varying(1000),
    "C_Area_Code" character varying(10) NOT NULL,
    "C_Area_Stay" character varying(10) NOT NULL,
    "C_Note1" character varying(1000),
    "C_Note2" character varying(200),
    "C_Note3" character varying(200),
    "N_Distance" numeric,
    "n_Fare" numeric,
    "n_Allowance" integer,
    "C_Allowance_Type" character(10),
    "c_WrkType" character varying(10),
    "N_Sort_Order" numeric,
    "N_Flag" integer,
    "C_Placeof_Work" character varying(10) NOT NULL,
    "C_Stayed_At" character varying(10) NOT NULL,
    "c_Emp_Code" character varying(10) NOT NULL,
    "c_temp_fs" character varying(10),
    "c_temp_emp" character varying(10),
    "D_Created" timestamp without time zone,
    "D_Modified" timestamp without time zone,
    "C_WorkContactRemarks" character varying(200),
    "n_workedwithself" integer,
    "n_srnodisableretflg" integer,
    "n_androidflg" integer,
    "n_distance_entry" numeric,
    "c_subarea_type" character varying(10),
    "n_status" integer,
    "c_approver" character varying(50),
    "d_date_approved" timestamp without time zone,
    "n_setupid" integer
);

CREATE TABLE "dwr_det" (
    "N_Srno" integer NOT NULL,
    "C_DSC_Code" character varying(10) NOT NULL,
    "n_rowid" integer NOT NULL,
    "n_type" integer NOT NULL
);

CREATE TABLE "dwrdetails" (
    "N_Srno" integer NOT NULL,
    "n_rowid" integer NOT NULL,
    "n_type" integer NOT NULL,
    "C_DSC_Code" character varying(10) NOT NULL,
    "C_BA" character varying(50),
    "N_POB" numeric,
    "N_Closing" numeric,
    "N_Stock_Value" numeric,
    "N_Sales_Value" numeric,
    "N_Outstanding" numeric,
    "C_Note" character varying(1000),
    "c_time" character varying(50),
    "c_doc_note" character varying(50),
    "c_doc_grade" character varying(50),
    "c_fmcg_stk_code" character varying(10),
    "n_process_status" integer,
    "c_Comments" character varying(200),
    "c_moreve" character(1),
    "c_PhoneNo" character varying(20),
    "d_created" timestamp without time zone,
    "c_no_promotional" character varying(5),
    "c_no_ctoc" character varying(5),
    "c_no_asset" character varying(5),
    "c_no_camp" character varying(5),
    "n_recovery_call" integer
);

CREATE TABLE "dwrmst" (
    "d_date_report" timestamp without time zone NOT NULL,
    "N_Srno" numeric NOT NULL,
    "c_fs_code" character varying(10) NOT NULL
);

CREATE TABLE "ed" (
    "n_srno" integer,
    "d_starting_time" character varying(50),
    "d_endingtime" character varying(50),
    "c_slideID" character varying(50),
    "d_date" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "c_item_code" character varying(50),
    "c_doc_code" character varying(50),
    "c_doc_grade" character varying(50),
    "C_voice_Rec" character varying(200),
    "c_title_code" character varying(20)
);

CREATE TABLE "fprac" (
    "DIVISION" character varying(50),
    "REGION" character varying(50),
    "DESIGNATION" character varying(50),
    "TOTAL" integer,
    "VACANT" integer,
    "REPORTED" integer
);

CREATE TABLE "fpracc" (
    "DIVISION" character varying(50),
    "DESIGNATION" character varying(50),
    "TOTAL" integer,
    "VACANT" integer,
    "REPORTED" integer
);

CREATE TABLE "fsbackup2020" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(100),
    "N_Type" numeric NOT NULL,
    "C_Grade" character(10),
    "C_Qualification" character varying(30),
    "C_Add_1" character varying(50),
    "C_Add_2" character varying(50),
    "C_Add_3" character varying(50),
    "C_Add_4" character varying(50),
    "C_Pin" character(10),
    "C_Phone" character(20),
    "C_Fax" character(20),
    "C_Category" character(10),
    "C_Area_Code" character varying(10) NOT NULL,
    "C_Parent" character(10),
    "C_EmpNo" character varying(10) NOT NULL,
    "C_Desc" character varying(50),
    "D_DOB" timestamp without time zone,
    "D_DOJ" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "n_Status" integer,
    "C_Email_ID" character varying(50),
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "N_ptype" integer,
    "c_div_code" character varying(10)
);

CREATE TABLE "fsh" (
    "FSNAME" character varying(50) NOT NULL,
    "FSCODE" character varying(10) NOT NULL,
    "empcode" character varying(10) NOT NULL,
    "NTYPE" integer NOT NULL,
    "AREACODE" character varying(10) NOT NULL,
    "AREANAME" character varying(50) NOT NULL,
    "FS2" character varying(10),
    "FS3" character varying(10),
    "FS4" character varying(10),
    "FS5" character varying(10),
    "FS6" character varying(10),
    "FS7" character varying(10),
    "FS8" character varying(10),
    "FS9" character varying(10),
    "DIVCODE" character varying(10),
    "FS10" character varying(10),
    "FS11" character varying(10),
    "FS12" character varying(10),
    "FS13" character varying(10),
    "FS14" character varying(10),
    "FS15" character varying(10)
);

CREATE TABLE "fsheirarchy" (
    "FSNAME" character varying(50) NOT NULL,
    "FSCODE" character varying(10) NOT NULL,
    "empcode" character varying(10) NOT NULL,
    "NTYPE" integer NOT NULL,
    "AREACODE" character varying(10) NOT NULL,
    "AREANAME" character varying(50) NOT NULL,
    "FS2" character varying(10),
    "FS3" character varying(10),
    "FS4" character varying(10),
    "FS5" character varying(10),
    "FS6" character varying(10),
    "FS7" character varying(10),
    "FS8" character varying(10),
    "FS9" character varying(10),
    "DIVCODE" character varying(10),
    "FS10" character varying(10),
    "FS11" character varying(10),
    "FS12" character varying(10),
    "FS13" character varying(10),
    "FS14" character varying(10),
    "FS15" character varying(10),
    "FS16" character varying(10),
    "FS17" character varying(10),
    "FS18" character varying(10),
    "FS19" character varying(10),
    "FS20" character varying(10),
    "FS21" character varying(10),
    "FS22" character varying(10),
    "FS23" character varying(10),
    "FS24" character varying(10),
    "FS25" character varying(10),
    "FS26" character varying(10),
    "FS27" character varying(10),
    "FS28" character varying(10),
    "FS29" character varying(10),
    "FS30" character varying(10),
    "FS31" character varying(10),
    "FS32" character varying(10),
    "FS33" character varying(10),
    "FS34" character varying(10),
    "FS35" character varying(10),
    "FS36" character varying(10),
    "FS37" character varying(10),
    "FS38" character varying(10),
    "FS39" character varying(10),
    "FS40" character varying(10),
    "FS41" character varying(10),
    "FS42" character varying(10),
    "FS43" character varying(10),
    "FS44" character varying(10),
    "FS45" character varying(10),
    "FS46" character varying(10),
    "FS47" character varying(10),
    "FS48" character varying(10),
    "FS49" character varying(10),
    "FS50" character varying(10)
);

CREATE TABLE "fsheirarchy_bkp_21042026" (
    "FSNAME" character varying(50) NOT NULL,
    "FSCODE" character varying(10) NOT NULL,
    "empcode" character varying(10) NOT NULL,
    "NTYPE" integer NOT NULL,
    "AREACODE" character varying(10) NOT NULL,
    "AREANAME" character varying(50) NOT NULL,
    "FS2" character varying(10),
    "FS3" character varying(10),
    "FS4" character varying(10),
    "FS5" character varying(10),
    "FS6" character varying(10),
    "FS7" character varying(10),
    "FS8" character varying(10),
    "FS9" character varying(10),
    "DIVCODE" character varying(10),
    "FS10" character varying(10),
    "FS11" character varying(10),
    "FS12" character varying(10),
    "FS13" character varying(10),
    "FS14" character varying(10),
    "FS15" character varying(10),
    "FS16" character varying(10),
    "FS17" character varying(10),
    "FS18" character varying(10),
    "FS19" character varying(10),
    "FS20" character varying(10),
    "FS21" character varying(10),
    "FS22" character varying(10),
    "FS23" character varying(10),
    "FS24" character varying(10),
    "FS25" character varying(10),
    "FS26" character varying(10),
    "FS27" character varying(10),
    "FS28" character varying(10),
    "FS29" character varying(10),
    "FS30" character varying(10),
    "FS31" character varying(10),
    "FS32" character varying(10),
    "FS33" character varying(10),
    "FS34" character varying(10),
    "FS35" character varying(10),
    "FS36" character varying(10),
    "FS37" character varying(10),
    "FS38" character varying(10),
    "FS39" character varying(10),
    "FS40" character varying(10),
    "FS41" character varying(10),
    "FS42" character varying(10),
    "FS43" character varying(10),
    "FS44" character varying(10),
    "FS45" character varying(10),
    "FS46" character varying(10),
    "FS47" character varying(10),
    "FS48" character varying(10),
    "FS49" character varying(10),
    "FS50" character varying(10)
);

CREATE TABLE "fsheirarchy_bkp_22042026" (
    "FSNAME" character varying(50) NOT NULL,
    "FSCODE" character varying(10) NOT NULL,
    "empcode" character varying(10) NOT NULL,
    "NTYPE" integer NOT NULL,
    "AREACODE" character varying(10) NOT NULL,
    "AREANAME" character varying(50) NOT NULL,
    "FS2" character varying(10),
    "FS3" character varying(10),
    "FS4" character varying(10),
    "FS5" character varying(10),
    "FS6" character varying(10),
    "FS7" character varying(10),
    "FS8" character varying(10),
    "FS9" character varying(10),
    "DIVCODE" character varying(10),
    "FS10" character varying(10),
    "FS11" character varying(10),
    "FS12" character varying(10),
    "FS13" character varying(10),
    "FS14" character varying(10),
    "FS15" character varying(10),
    "FS16" character varying(10),
    "FS17" character varying(10),
    "FS18" character varying(10),
    "FS19" character varying(10),
    "FS20" character varying(10),
    "FS21" character varying(10),
    "FS22" character varying(10),
    "FS23" character varying(10),
    "FS24" character varying(10),
    "FS25" character varying(10),
    "FS26" character varying(10),
    "FS27" character varying(10),
    "FS28" character varying(10),
    "FS29" character varying(10),
    "FS30" character varying(10),
    "FS31" character varying(10),
    "FS32" character varying(10),
    "FS33" character varying(10),
    "FS34" character varying(10),
    "FS35" character varying(10),
    "FS36" character varying(10),
    "FS37" character varying(10),
    "FS38" character varying(10),
    "FS39" character varying(10),
    "FS40" character varying(10),
    "FS41" character varying(10),
    "FS42" character varying(10),
    "FS43" character varying(10),
    "FS44" character varying(10),
    "FS45" character varying(10),
    "FS46" character varying(10),
    "FS47" character varying(10),
    "FS48" character varying(10),
    "FS49" character varying(10),
    "FS50" character varying(10)
);

CREATE TABLE "fsheirarchybackup" (
    "FSNAME" character varying(50) NOT NULL,
    "FSCODE" character varying(10) NOT NULL,
    "empcode" character varying(10) NOT NULL,
    "NTYPE" integer NOT NULL,
    "AREACODE" character varying(10) NOT NULL,
    "AREANAME" character varying(50) NOT NULL,
    "FS2" character varying(10),
    "FS3" character varying(10),
    "FS4" character varying(10),
    "FS5" character varying(10),
    "FS6" character varying(10),
    "FS7" character varying(10),
    "FS8" character varying(10),
    "FS9" character varying(10),
    "DIVCODE" character varying(10),
    "FS10" character varying(10),
    "FS11" character varying(10),
    "FS12" character varying(10),
    "FS13" character varying(10),
    "FS14" character varying(10),
    "FS15" character varying(10)
);

CREATE TABLE "fshtemp" (
    "FSNAME" character varying(50) NOT NULL,
    "FSCODE" character varying(10) NOT NULL,
    "empcode" character varying(10) NOT NULL,
    "NTYPE" integer NOT NULL,
    "AREACODE" character varying(10) NOT NULL,
    "AREANAME" character varying(50) NOT NULL,
    "FS2" character varying(10),
    "FS3" character varying(10),
    "FS4" character varying(10),
    "FS5" character varying(10),
    "FS6" character varying(10),
    "FS7" character varying(10),
    "FS8" character varying(10),
    "FS9" character varying(10),
    "DIVCODE" character varying(10),
    "FS10" character varying(10),
    "FS11" character varying(10),
    "FS12" character varying(10),
    "FS13" character varying(10),
    "FS14" character varying(10),
    "FS15" character varying(10)
);

CREATE TABLE "fsmsttemp" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(100),
    "N_Type" numeric NOT NULL,
    "C_Grade" character(10),
    "C_Qualification" character varying(30),
    "C_Add_1" character varying(50),
    "C_Add_2" character varying(50),
    "C_Add_3" character varying(50),
    "C_Add_4" character varying(50),
    "C_Pin" character(10),
    "C_Phone" character(20),
    "C_Fax" character(20),
    "C_Category" character(10),
    "C_Area_Code" character varying(10) NOT NULL,
    "C_Parent" character(10),
    "C_EmpNo" character varying(10) NOT NULL,
    "C_Desc" character varying(50),
    "D_DOB" timestamp without time zone,
    "D_DOJ" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "n_Status" integer,
    "C_Email_ID" character varying(50),
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "N_ptype" integer,
    "c_div_code" character varying(10)
);

CREATE TABLE "h_doc" (
    "custcode" character varying(255),
    "div" character varying(255),
    "fscode" character varying(255),
    "from" timestamp without time zone,
    "grade" character varying(255),
    "n_per" double precision,
    "C_ref_no" character varying(255)
);

CREATE TABLE "heter" (
    "doc" character varying(255),
    "grade" character varying(255),
    "fscode" character varying(255),
    "Division" character varying(255)
);

CREATE TABLE "holiday_map" (
    "Regioncode" character varying(255),
    "Holidaycode" double precision,
    "Date" character varying(255)
);

CREATE TABLE "hospitalmasterbackup17_04_2018" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(200),
    "N_Type" integer NOT NULL,
    "C_Grade" character varying(10),
    "C_Qualification" character varying(50),
    "C_Add_1" character varying(200),
    "C_Add_2" character varying(50),
    "C_Add_3" character varying(50),
    "C_Add_4" character varying(50),
    "C_Pin" character varying(10),
    "C_Phone" character varying(20),
    "C_Fax" character varying(50),
    "C_Category" character varying(10),
    "C_Area_Code" character varying(10),
    "C_Subarea_Code" character varying(10),
    "D_DOB" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "n_Status" integer,
    "D_Create_Date" timestamp without time zone,
    "D_modify_Date" timestamp without time zone,
    "C_Email_ID" character varying(50),
    "C_FsCode" character varying(10),
    "c_region_code" character varying(10),
    "n_convert" numeric,
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(20),
    "n_lami" double precision,
    "n_lgmi" double precision,
    "c_tin_no" character varying(50),
    "c_lic_no" character varying(50),
    "c_contact_name" character varying(50),
    "n_Sft_shop" numeric,
    "n_No_of_display_Shelf" numeric,
    "c_desc_display_shelf" character varying(100),
    "n_Front_Board_Height" numeric,
    "n_Front_Board_length" numeric,
    "n_Backlit" smallint,
    "n_Computerised" smallint,
    "c_lic_food" character varying(50),
    "c_sort" character varying(10),
    "c_contact_mob" character varying(50),
    "c_contact_outlet_num" character varying(50),
    "C_Landmark" character varying(100),
    "C_Short_Name" character varying(10),
    "C_Doc_Class" character varying(10),
    "C_Spousename" character varying(100),
    "D_SpouseDob" timestamp without time zone,
    "C_FName" character varying(50),
    "C_LName" character varying(50),
    "n_mcino" character varying(20),
    "C_HOSPITAL_NAME" character varying(150),
    "C_STREET_NAME" character varying(150),
    "C_AREA_NAME" character varying(150),
    "C_LANDMARK1" character varying(150),
    "C_CITY" character varying(150),
    "C_STATE" character varying(150),
    "C_HOUSE_NAME" character varying(150),
    "C_STREET_NAME1" character varying(150),
    "C_AREA_NAME1" character varying(150),
    "C_LANDMARK2" character varying(150),
    "C_CITY_1" character varying(150),
    "N_PATIENTS" character varying(150),
    "N_CRNTBUSINES" character varying(150),
    "C_STATE1" character varying(150),
    "C_PINCODE1" character varying(150),
    "C_BUSINES_POTENTIAL" character varying(150),
    "D_CHILD_DOB1" timestamp without time zone,
    "D_CHILD_DOB2" timestamp without time zone,
    "D_CHILD_DOB3" timestamp without time zone,
    "n_age" character varying(10),
    "C_SPECIALITY" character varying(150),
    "C_childnname1" character varying(150),
    "C_childnname2" character varying(150),
    "C_childnname3" character varying(150),
    "n_drpurchase" integer,
    "N_drprescription" integer,
    "N_drpotential" character varying(50),
    "c_landline" character varying(20),
    "c_middlename" character varying(50),
    "c_tldl1" character varying(100),
    "c_tldl2" character varying(100),
    "c_dlfood1" character varying(100),
    "c_tldl11" character varying(100),
    "c_tldl12" character varying(100),
    "c_dlfood2" character varying(100),
    "d_DLDate1" timestamp without time zone,
    "d_DLDate2" timestamp without time zone,
    "c_pan1" character varying(100),
    "c_pan2" character varying(100),
    "c_Purchase_manager_Name" character varying(100),
    "c_Purchase_manager_Mob" character varying(20),
    "c_Account_Type" character varying(50),
    "n_visit_freq" integer,
    "n_fridge" integer,
    "c_Institutn_type" character varying(100),
    "c_Account_Grp" character varying(100),
    "n_hostel" integer,
    "n_no_of_canteen" integer,
    "c_type_of_food" text,
    "c_Canteen_contr_name" character varying(100),
    "c_Canteen_contr_addr" character varying(500),
    "D_agreement_date" timestamp without time zone,
    "n_Total_Disc" numeric,
    "D_Total_Disc_From" timestamp without time zone,
    "D_Total_Disc_To" timestamp without time zone,
    "c_Store_Classification" character varying(100),
    "n_Store_Type" integer,
    "c_Distributor" character varying(20),
    "c_store_type" character varying(50),
    "c_Store_Manager" character varying(50),
    "c_Distributor_name" character varying(100),
    "n_active" integer,
    "c_classification" character varying(10),
    "c_chemisttype" character varying(10),
    "n_WindowSize" character varying(50),
    "C_AccountClassfctn" character varying(5),
    "C_AccountAddress" character varying(100),
    "C_AccountCode" character varying(10),
    "n_DaysTo_Activate" integer,
    "d_Start_Date" timestamp without time zone,
    "d_activation_Date" timestamp without time zone,
    "c_storetype" character varying(50),
    "c_distributorcode" character varying(50),
    "c_visitfrequency" character varying(50),
    "c_classificationcode" character varying(50),
    "c_stmanager" character varying(50),
    "C_SA_Classification" character varying(20),
    "c_Hospital_Code" character varying(50),
    "C_TypeofHsptl" character varying(300),
    "C_Area" character varying(100),
    "C_Inhouse_phar_exist" character varying(100),
    "C_Fin_Turnover" character varying(100),
    "C_Potencial" character varying(100),
    "C_No_of_Beds" character varying(100),
    "C_No_of_Emer_Beds" character varying(100),
    "C_No_of_Critic_ICU_Beds" character varying(100),
    "C_No_of_Sur_Theaters" character varying(100),
    "C_Hospital" character varying(100),
    "C_Tot_No_of_Doctors" character varying(100),
    "C_Pur_Mgr_Name" character varying(100),
    "C_Pur_Mgr__Contact" character varying(100),
    "C_Stk_Inchrg_Name" character varying(100),
    "C_Stk_Inchrg_Contact" character varying(100),
    "C_Fin_Ofcr_Name" character varying(100),
    "C_Fin_Ofcr_Contact" character varying(100),
    "C_No_of_Thrputc_Group" character varying(100),
    "C_Techng_Institution" character varying(100),
    "C_Gstno" character varying(50),
    "c_docmstpan" character varying(10),
    "c_classtype" character varying(10),
    "n_SASCollection" integer
);

CREATE TABLE "icon_update_stp" (
    "Region Name" character varying(255),
    "STPNo" double precision,
    "FS CODE" character varying(255),
    "division" character varying(255),
    "FS NAME" character varying(255),
    "HQ CODE" character varying(255),
    "HQ NAME" character varying(255),
    "Based At Code" character varying(255),
    "Based At Name" character varying(255),
    "STP Date From" timestamp without time zone,
    "STP Date To" timestamp without time zone,
    "HQDA" double precision,
    "EXDA" double precision,
    "OSDA" double precision,
    "TAType" double precision,
    "RateKM" double precision,
    "distnace" double precision,
    "TA" double precision,
    "From Area Code" character varying(255),
    "From Area Name" character varying(255),
    "ToAreaCode" character varying(255),
    "ToAreaname" character varying(255),
    "A grade doct count" double precision,
    "B grade doctor count" double precision,
    "workingdays" double precision,
    "chemist count" double precision,
    "stockiest count" double precision,
    "curent business" double precision,
    "expected business" double precision,
    "AreaType" character varying(255),
    "Areatype1" double precision
);

CREATE TABLE "mclinsertion" (
    "data" character varying(1000),
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "megh_doct" (
    "code" character varying(255),
    "Firstname" character varying(255),
    "Middlename" character varying(255),
    "Lastname" character varying(255),
    "gradecode" character varying(255),
    "qualification" character varying(255),
    "Clinic/Hospital Name" character varying(255),
    "Street Name" character varying(255),
    "Area" character varying(255),
    "Landmark" character varying(255),
    "City" double precision,
    "State" character varying(255),
    "pin" character varying(255),
    "House/Building Name" character varying(255),
    "Street Name1" character varying(255),
    "Area1" timestamp without time zone,
    "Landmark1" character varying(255),
    "City1" character varying(255),
    "State1" character varying(255),
    "pin1" character varying(255),
    "Mobileno " character varying(255),
    "Landno" character varying(255),
    "referenceno" character varying(255),
    "categorycode" character varying(255),
    "subareacode" character varying(255),
    "Age" character varying(255),
    "dob" character varying(255),
    "dow" character varying(255),
    "email" timestamp without time zone,
    "fscode" character varying(255),
    "divcode" character varying(255),
    "LAT" character varying(255),
    "LONG" character varying(255),
    "Class" character varying(255),
    "Spousename" character varying(255),
    "SpouseDOB" character varying(255),
    "Drregno" character varying(255),
    "Speciality As Per Practice" character varying(255),
    "No Of Patients Per Day" character varying(255),
    "Current Business" character varying(255),
    "Business Potential" character varying(255),
    "Doctor Potential" character varying(255),
    "Is doctor Purchasing" character varying(255),
    "Is doctor Prescribing" character varying(255),
    "Child1 Name" character varying(255),
    "Child1 Dob" character varying(255),
    "Child2 Name" character varying(255),
    "Child2 Dob" character varying(255),
    "Child3 Name" character varying(255),
    "Child3 Dob" character varying(255)
);

CREATE TABLE "megh_sht" (
    "code" character varying(255),
    "Firstname" character varying(255),
    "Lastname" character varying(255)
);

CREATE TABLE "meghbkp" (
    "N_Type" numeric NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "c_sh_name" character varying(10),
    "n_CI_FLag" smallint,
    "n_fs_flag" smallint,
    "c_gadgetcode" character varying(50)
);

CREATE TABLE "meghbkp1" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "N_Type" numeric NOT NULL,
    "C_Grade" character(10),
    "C_Qualification" character varying(30),
    "C_Add_1" character varying(50),
    "C_Add_2" character varying(50),
    "C_Add_3" character varying(50),
    "C_Add_4" character varying(50),
    "C_Pin" character(10),
    "C_Phone" character(20),
    "C_Fax" character(20),
    "C_Category" character(10),
    "C_Area_Code" character varying(10) NOT NULL,
    "C_Parent" character(10),
    "C_EmpNo" character varying(10) NOT NULL,
    "C_Desc" character varying(50),
    "D_DOB" timestamp without time zone,
    "D_DOJ" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "n_Status" integer,
    "C_Email_ID" character varying(50),
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "N_ptype" integer,
    "c_div_code" character varying(10)
);

CREATE TABLE "meghdoc1" (
    "code" character varying(255),
    "Firstname" character varying(255),
    "Middlename" character varying(255),
    "Lastname" character varying(255),
    "gradecode" character varying(255),
    "qualification" character varying(255),
    "Clinic/Hospital Name" character varying(255),
    "Street Name" character varying(255),
    "Area" character varying(255),
    "Landmark" character varying(255),
    "City" character varying(255),
    "State" character varying(255),
    "pin" character varying(255),
    "House/Building Name" character varying(255),
    "Street Name1" character varying(255),
    "Area1" character varying(255),
    "Landmark1" character varying(255),
    "City1" character varying(255),
    "State1" character varying(255),
    "pin1" character varying(255),
    "Mobileno " character varying(255),
    "Landno" character varying(255),
    "referenceno" character varying(255),
    "categorycode" character varying(255),
    "subareacode" character varying(255),
    "Age" character varying(255),
    "dob" character varying(255),
    "dow" character varying(255),
    "email" character varying(255),
    "fscode" character varying(255),
    "divcode" character varying(255),
    "LAT" character varying(255),
    "LONG" character varying(255),
    "Class" character varying(255),
    "Spousename" character varying(255),
    "SpouseDOB" character varying(255),
    "Drregno" character varying(255),
    "Speciality As Per Practice" character varying(255),
    "No Of Patients Per Day" character varying(255),
    "Current Business" character varying(255),
    "Business Potential" character varying(255),
    "Doctor Potential" character varying(255),
    "Is doctor Purchasing" character varying(255),
    "Is doctor Prescribing" character varying(255),
    "Child1 Name" character varying(255),
    "Child1 Dob" character varying(255),
    "Child2 Name" character varying(255),
    "Child2 Dob" character varying(255),
    "Child3 Name" character varying(255),
    "Child3 Dob" character varying(255)
);

CREATE TABLE "meghdoc12" (
    "doc" character varying(255),
    "fs" character varying(255),
    "div" character varying(255)
);

CREATE TABLE "meghdoc3" (
    "Doctor code " character varying(255),
    "Fs name " character varying(255),
    "division" character varying(255)
);

CREATE TABLE "meghdoc5" (
    "code" character varying(255),
    "Firstname" character varying(255),
    "Middlename" character varying(255),
    "Lastname" character varying(255),
    "gradecode" character varying(255),
    "qualification" character varying(255),
    "Clinic/Hospital Name" character varying(255),
    "Street Name" character varying(255),
    "Area" character varying(255),
    "Landmark" character varying(255),
    "City" character varying(255),
    "State" character varying(255),
    "pin" character varying(255),
    "House/Building Name" character varying(255),
    "Street Name1" character varying(255),
    "Area1" character varying(255),
    "Landmark1" character varying(255),
    "City1" character varying(255),
    "State1" character varying(255),
    "pin1" character varying(255),
    "Mobileno " character varying(255),
    "Landno" character varying(255),
    "referenceno" character varying(255),
    "categorycode" character varying(255),
    "subareacode" character varying(255),
    "Age" character varying(255),
    "dob" character varying(255),
    "dow" character varying(255),
    "email" character varying(255),
    "fscode" character varying(255),
    "divcode" character varying(255),
    "LAT" character varying(255),
    "LONG" character varying(255),
    "Class" character varying(255),
    "Spousename" character varying(255),
    "SpouseDOB" character varying(255),
    "Drregno" double precision,
    "Speciality As Per Practice" character varying(255),
    "No Of Patients Per Day" character varying(255),
    "Current Business" character varying(255),
    "Business Potential" character varying(255),
    "Doctor Potential" character varying(255),
    "Is doctor Purchasing" character varying(255),
    "Is doctor Prescribing" character varying(255),
    "Child1 Name" character varying(255),
    "Child1 Dob" character varying(255),
    "Child2 Name" character varying(255),
    "Child2 Dob" character varying(255),
    "Child3 Name" character varying(255),
    "Child3 Dob" character varying(255)
);

CREATE TABLE "meghdoco" (
    "code" character varying(255),
    "Firstname" character varying(255),
    "Middlename" character varying(255),
    "Lastname" character varying(255),
    "gradecode" character varying(255),
    "qualification" character varying(255),
    "Clinic/Hospital Name" character varying(255),
    "Street Name" character varying(255),
    "Area" character varying(255),
    "Landmark" character varying(255),
    "City" character varying(255),
    "State" character varying(255),
    "pin" character varying(255),
    "House/Building Name" character varying(255),
    "Street Name1" character varying(255),
    "Area1" character varying(255),
    "Landmark1" character varying(255),
    "City1" character varying(255),
    "State1" character varying(255),
    "pin1" character varying(255),
    "Mobileno " character varying(255),
    "Landno" character varying(255),
    "referenceno" character varying(255),
    "categorycode" character varying(255),
    "subareacode" character varying(255),
    "Age" character varying(255),
    "dob" character varying(255),
    "dow" character varying(255),
    "email" character varying(255),
    "fscode" character varying(255),
    "divcode" character varying(255),
    "LAT" character varying(255),
    "LONG" character varying(255),
    "Class" character varying(255),
    "Spousename" character varying(255),
    "SpouseDOB" character varying(255),
    "Drregno" character varying(255),
    "Speciality As Per Practice" character varying(255),
    "No Of Patients Per Day" character varying(255),
    "Current Business" character varying(255),
    "Business Potential" character varying(255),
    "Doctor Potential" character varying(255),
    "Is doctor Purchasing" character varying(255),
    "Is doctor Prescribing" character varying(255),
    "Child1 Name" character varying(255),
    "Child1 Dob" character varying(255),
    "Child2 Name" character varying(255),
    "Child2 Dob" character varying(255),
    "Child3 Name" character varying(255),
    "Child3 Dob" character varying(255)
);

CREATE TABLE "meghsht7" (
    "doc" character varying(255),
    "mci" double precision
);

CREATE TABLE "meghsht8" (
    "doc" character varying(255),
    "mci" double precision
);

CREATE TABLE "meghstp" (
    "Fs Name " character varying(255),
    "from" character varying(255),
    "area to visit " character varying(255),
    "type " character varying(255),
    "wrky dys " double precision,
    "dis " double precision,
    "ta " double precision
);

CREATE TABLE "meghty" (
    "doc" character varying(255),
    "fs" character varying(255),
    "div" character varying(255)
);

CREATE TABLE "meghtyr" (
    "fscode" character varying(255),
    "FROM " character varying(255),
    "area" character varying(255),
    "TYPE " double precision,
    "wrkg" double precision,
    "DIS " double precision,
    "ta" double precision
);

CREATE TABLE "mgh" (
    "doc" character varying(50),
    "name" character varying(50),
    "mci" character varying(50)
);

CREATE TABLE "mktheirarchy" (
    "FSNAME" character varying(50) NOT NULL,
    "FSCODE" character varying(10) NOT NULL,
    "empcode" character varying(10) NOT NULL,
    "NTYPE" integer NOT NULL,
    "AREACODE" character varying(10) NOT NULL,
    "AREANAME" character varying(50) NOT NULL,
    "FS2" character varying(10),
    "FS3" character varying(10),
    "FS4" character varying(10),
    "FS5" character varying(10),
    "FS6" character varying(10),
    "FS7" character varying(10),
    "FS8" character varying(10),
    "FS9" character varying(10)
);

CREATE TABLE "mob_ErrorLog" (
    "ErrorLogID" integer NOT NULL DEFAULT nextval('"mob_ErrorLog_ErrorLogID_seq"'::regclass),
    "ErrorTime" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "UserName" character varying(128) NOT NULL,
    "ErrorProcedure" text,
    "ErrorMessage" text NOT NULL
);

CREATE TABLE "mreported" (
    "division" character varying(50),
    "designation" character varying(50),
    "totalcount" character varying(50),
    "total" character varying(50),
    "vacant" character varying(50),
    "reported" character varying(50)
);

CREATE TABLE "mtotal" (
    "division" character varying(50),
    "designation" character varying(50),
    "totalcount" character varying(50),
    "total" character varying(50),
    "vacant" character varying(50),
    "reported" character varying(50)
);

CREATE TABLE "mtpdetailsbackup" (
    "N_Srno" numeric NOT NULL,
    "N_RowId" numeric NOT NULL,
    "N_dayof_week" character varying(20) NOT NULL,
    "n_week" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" numeric NOT NULL,
    "C_Mode" character(10) NOT NULL,
    "N_DocVst" numeric,
    "N_ChemVst" numeric,
    "N_StkVst" numeric,
    "C_Subarea_Note" character varying(100),
    "c_subarea_code" character varying(10) NOT NULL,
    "c_work_type" character varying(10),
    "c_work_with" character varying(50),
    "N_OtherVst" numeric,
    "c_fs_code" character varying(10)
);

CREATE TABLE "mvacant" (
    "division" character varying(50),
    "designation" character varying(50),
    "totalcount" character varying(50),
    "total" character varying(50),
    "vacant" character varying(50),
    "reported" character varying(50)
);

CREATE TABLE "mydadaa" (
    "Code" character varying(50),
    "Specialization" character varying(50),
    "DoctorName" character varying(50),
    "HQ" character varying(50),
    "Region" character varying(50),
    "GRADE" character varying(50),
    "FSName" character varying(50),
    "Division" character varying(50)
);

CREATE TABLE "notreported" (
    "DIVISION" character varying(50),
    "DIVISIONC" character varying(50),
    "REGION" character varying(50),
    "HQ" character varying(50),
    "EMPCODE" character varying(50),
    "FSCODE" character varying(50),
    "FSNAME" character varying(50),
    "DESIGNATION" character varying(50)
);

CREATE TABLE "present" (
    "EmpCode" character varying(50),
    "Division" character varying(100),
    "Docs" character varying(100)
);

CREATE TABLE "productmappinglog" (
    "fstype" character varying(50),
    "itm" text,
    "div" character varying(50)
);

CREATE TABLE "quali" (
    "C_Code" character varying(100) NOT NULL,
    "C_Name" character varying(100),
    "C_Sh_Name" character varying(7),
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10)
);

CREATE TABLE "repp" (
    "division" character varying(50),
    "region" character varying(50),
    "hq" character varying(50),
    "designation" character varying(50),
    "total" integer,
    "notreported" integer,
    "vacant" integer
);

CREATE TABLE "sa_cls" (
    "doctors code" character varying(255),
    "fs code" character varying(255),
    "date" timestamp without time zone
);

CREATE TABLE "sa_doc" (
    "Doctors Code" character varying(255),
    "FS Code" character varying(255)
);

CREATE TABLE "sa_doc08" (
    "custcode" character varying(255),
    "divcode" character varying(255),
    "fscode" character varying(255),
    "fromdate" timestamp without time zone,
    "grade" character varying(255),
    "todate" timestamp without time zone,
    "n_per" double precision
);

CREATE TABLE "sa_doc3" (
    "DocCode" character varying(255),
    "SubAreaCode" character varying(255),
    "areacode" character varying(255),
    "region code" character varying(255)
);

CREATE TABLE "sa_updatedoc" (
    "DOCCODE" character varying(255),
    "SUBAREA CODE" character varying(255)
);

CREATE TABLE "sreported" (
    "division" character varying(50),
    "region" character varying(50),
    "designation" character varying(50),
    "totalcount" character varying(50),
    "total" character varying(50),
    "vacant" character varying(50),
    "reported" character varying(50)
);

CREATE TABLE "std" (
    "Region Name" character varying(255),
    "STPNo" double precision,
    "rowid" double precision,
    "Division" character varying(255),
    "FS CODE" character varying(255),
    "FS NAME" character varying(255),
    "HQ CODE" character varying(255),
    "HQ NAME" character varying(255),
    "Based At Code" character varying(255),
    "Based At Name" character varying(255),
    "STP Date From" timestamp without time zone,
    "STP Date To" timestamp without time zone,
    "HQDA" double precision,
    "EXDA" double precision,
    "OSDA" double precision,
    "TAType" double precision,
    "RateKM" double precision,
    "From Area Code" character varying(255),
    "From Area Name" character varying(255),
    "ToAreaCode" character varying(255),
    "ToAreaname" character varying(255),
    "A grade doct count" double precision,
    "B grade doctor count" double precision,
    "chemist count" double precision,
    "stockiest count" double precision,
    "curent business" double precision,
    "expected business" double precision,
    "AreaType" character varying(255),
    "Distance" double precision,
    "TA" double precision
);

CREATE TABLE "stotal" (
    "division" character varying(50),
    "region" character varying(50),
    "designation" character varying(50),
    "totalcount" character varying(50),
    "total" character varying(50),
    "vacant" character varying(50),
    "reported" character varying(50)
);

CREATE TABLE "stp03_04_2018" (
    "N_Srno" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" integer,
    "N_Distance" numeric,
    "N_Ta" numeric,
    "n_Cur_Business" numeric,
    "n_Exp_Business" numeric,
    "N_Doc_Visit_A" integer,
    "N_Doc_Visit_B" integer,
    "C_Area_From" character(10),
    "N_Chem_Visit" integer,
    "N_Stk_Visit" integer,
    "C_Subarea_code_From" character varying(10) NOT NULL,
    "C_Subarea_code_to" character varying(10) NOT NULL,
    "n_wkg_days" integer,
    "N_Transit_Days" integer,
    "N_MMIDistance" numeric,
    "c_MMIMapLink" character varying(5000)
);

CREATE TABLE "stp_2023" (
    "Region Name" character varying(255),
    "STPNo" double precision,
    "rowid" double precision,
    "Division" character varying(255),
    "FS CODE" character varying(255),
    "FS NAME" character varying(255),
    "HQ CODE" character varying(255),
    "HQ NAME" character varying(255),
    "Based At Code" character varying(255),
    "Based At Name" character varying(255),
    "STP Date From" timestamp without time zone,
    "STP Date To" timestamp without time zone,
    "HQDA" double precision,
    "EXDA" double precision,
    "OSDA" double precision,
    "TAType" double precision,
    "RateKM" double precision,
    "From Area Code" character varying(255),
    "From Area Name" character varying(255),
    "ToAreaCode" character varying(255),
    "ToAreaname" character varying(255),
    "A grade doct count" double precision,
    "B grade doctor count" double precision,
    "chemist count" double precision,
    "stockiest count" double precision,
    "curent business" double precision,
    "expected business" double precision,
    "AreaType" character varying(255),
    "Distance" double precision,
    "TA" double precision
);

CREATE TABLE "stp_details" (
    "N_Srno" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" integer,
    "N_Distance" numeric,
    "N_Ta" numeric,
    "n_Cur_Business" numeric,
    "n_Exp_Business" numeric,
    "N_Doc_Visit_A" integer,
    "N_Doc_Visit_B" integer,
    "C_Area_From" character(10),
    "N_Chem_Visit" integer,
    "N_Stk_Visit" integer,
    "C_Subarea_code_From" character varying(10) NOT NULL,
    "C_Subarea_code_to" character varying(10) NOT NULL,
    "n_wkg_days" integer,
    "N_Transit_Days" integer,
    "N_MMIDistance" numeric,
    "c_MMIMapLink" character varying(5000)
);

CREATE TABLE "stp_header" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "d_modified" timestamp without time zone,
    "N_DA_OTHER" numeric
);

CREATE TABLE "stp_update" (
    "Region Name" character varying(255),
    "STPNo" double precision,
    "FS CODE" character varying(255),
    "division" character varying(255),
    "FS NAME" character varying(255),
    "HQ CODE" character varying(255),
    "HQ NAME" character varying(255),
    "Based At Code" character varying(255),
    "Based At Name" character varying(255),
    "STP Date From" timestamp without time zone,
    "STP Date To" timestamp without time zone,
    "HQDA" double precision,
    "EXDA" double precision,
    "OSDA" double precision,
    "TAType" double precision,
    "RateKM" double precision,
    "distnace" double precision,
    "TA" double precision,
    "From Area Code" character varying(255),
    "From Area Name" character varying(255),
    "ToAreaCode" character varying(255),
    "ToAreaname" character varying(255),
    "A grade doct count" double precision,
    "B grade doctor count" double precision,
    "workingdays" double precision,
    "chemist count" double precision,
    "stockiest count" double precision,
    "curent business" double precision,
    "expected business" double precision,
    "AreaType" character varying(255),
    "areatype1" double precision
);

CREATE TABLE "stpbackup" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "d_modified" timestamp without time zone,
    "N_DA_OTHER" numeric
);

CREATE TABLE "stpbackup01_12_2017" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "d_modified" timestamp without time zone,
    "N_DA_OTHER" numeric
);

CREATE TABLE "stpbackup2020" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "d_modified" timestamp without time zone,
    "N_DA_OTHER" numeric,
    "n_tempsrno" integer
);

CREATE TABLE "stpbackupdetails2017" (
    "N_Srno" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" integer,
    "N_Distance" numeric,
    "N_Ta" numeric,
    "n_Cur_Business" numeric,
    "n_Exp_Business" numeric,
    "N_Doc_Visit_A" integer,
    "N_Doc_Visit_B" integer,
    "C_Area_From" character(10),
    "N_Chem_Visit" integer,
    "N_Stk_Visit" integer,
    "C_Subarea_code_From" character varying(10) NOT NULL,
    "C_Subarea_code_to" character varying(10) NOT NULL,
    "n_wkg_days" integer,
    "N_Transit_Days" integer,
    "N_MMIDistance" numeric,
    "c_MMIMapLink" character varying(5000)
);

CREATE TABLE "stpbackupdetails2017_07_24" (
    "N_Srno" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" integer,
    "N_Distance" numeric,
    "N_Ta" numeric,
    "n_Cur_Business" numeric,
    "n_Exp_Business" numeric,
    "N_Doc_Visit_A" integer,
    "N_Doc_Visit_B" integer,
    "C_Area_From" character(10),
    "N_Chem_Visit" integer,
    "N_Stk_Visit" integer,
    "C_Subarea_code_From" character varying(10) NOT NULL,
    "C_Subarea_code_to" character varying(10) NOT NULL,
    "n_wkg_days" integer,
    "N_Transit_Days" integer,
    "N_MMIDistance" numeric,
    "c_MMIMapLink" character varying(5000)
);

CREATE TABLE "stpbkp20231204header" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "d_modified" timestamp without time zone,
    "N_DA_OTHER" numeric,
    "n_tempsrno" integer,
    "C_Approved" character(1),
    "C_Approved_By" character varying(50),
    "D_Approved_Date" timestamp without time zone,
    "C_Reason" character varying(500),
    "C_Region_Code" character varying(20)
);

CREATE TABLE "stpbkp2024" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "d_modified" timestamp without time zone,
    "N_DA_OTHER" numeric,
    "n_tempsrno" integer,
    "C_Approved" character(1),
    "C_Approved_By" character varying(50),
    "D_Approved_Date" timestamp without time zone,
    "C_Reason" character varying(500),
    "C_Region_Code" character varying(20)
);

CREATE TABLE "stpbkp20250516" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "d_modified" timestamp without time zone,
    "N_DA_OTHER" numeric,
    "n_tempsrno" integer,
    "C_Approved" character(1),
    "C_Approved_By" character varying(50),
    "D_Approved_Date" timestamp without time zone,
    "C_Reason" character varying(500),
    "C_Region_Code" character varying(20)
);

CREATE TABLE "stpdet" (
    "N_Srno" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" integer,
    "N_Distance" numeric,
    "N_Ta" numeric,
    "n_Cur_Business" numeric,
    "n_Exp_Business" numeric,
    "N_Doc_Visit_A" integer,
    "N_Doc_Visit_B" integer,
    "C_Area_From" character(10),
    "N_Chem_Visit" integer,
    "N_Stk_Visit" integer,
    "C_Subarea_code_From" character varying(10) NOT NULL,
    "C_Subarea_code_to" character varying(10) NOT NULL,
    "n_wkg_days" integer,
    "N_Transit_Days" integer,
    "N_MMIDistance" numeric,
    "c_MMIMapLink" character varying(5000)
);

CREATE TABLE "stpdet2023bkp" (
    "N_Srno" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" integer,
    "N_Distance" numeric,
    "N_Ta" numeric,
    "n_Cur_Business" numeric,
    "n_Exp_Business" numeric,
    "N_Doc_Visit_A" integer,
    "N_Doc_Visit_B" integer,
    "C_Area_From" character(10),
    "N_Chem_Visit" integer,
    "N_Stk_Visit" integer,
    "C_Subarea_code_From" character varying(10) NOT NULL,
    "C_Subarea_code_to" character varying(10) NOT NULL,
    "n_wkg_days" integer,
    "N_Transit_Days" integer,
    "N_MMIDistance" numeric,
    "c_MMIMapLink" character varying(5000),
    "n_mode_of_travel" integer,
    "C_Mode_of_Travel" character varying(50)
);

CREATE TABLE "stpdetails" (
    "N_Srno" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" integer,
    "N_Distance" numeric,
    "N_Ta" numeric,
    "n_Cur_Business" numeric,
    "n_Exp_Business" numeric,
    "N_Doc_Visit_A" integer,
    "N_Doc_Visit_B" integer,
    "C_Area_From" character(10),
    "N_Chem_Visit" integer,
    "N_Stk_Visit" integer,
    "C_Subarea_code_From" character varying(10) NOT NULL,
    "C_Subarea_code_to" character varying(10) NOT NULL,
    "n_wkg_days" integer,
    "N_Transit_Days" integer,
    "N_MMIDistance" numeric,
    "c_MMIMapLink" character varying(5000)
);

CREATE TABLE "stpdetails3_12aug" (
    "N_Srno" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" integer,
    "N_Distance" numeric,
    "N_Ta" numeric,
    "n_Cur_Business" numeric,
    "n_Exp_Business" numeric,
    "N_Doc_Visit_A" integer,
    "N_Doc_Visit_B" integer,
    "C_Area_From" character(10),
    "N_Chem_Visit" integer,
    "N_Stk_Visit" integer,
    "C_Subarea_code_From" character varying(10) NOT NULL,
    "C_Subarea_code_to" character varying(10) NOT NULL,
    "n_wkg_days" integer,
    "N_Transit_Days" integer,
    "N_MMIDistance" numeric,
    "c_MMIMapLink" character varying(5000)
);

CREATE TABLE "stpdetailsbackup" (
    "N_Srno" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" integer,
    "N_Distance" numeric,
    "N_Ta" numeric,
    "n_Cur_Business" numeric,
    "n_Exp_Business" numeric,
    "N_Doc_Visit_A" integer,
    "N_Doc_Visit_B" integer,
    "C_Area_From" character(10),
    "N_Chem_Visit" integer,
    "N_Stk_Visit" integer,
    "C_Subarea_code_From" character varying(10) NOT NULL,
    "C_Subarea_code_to" character varying(10) NOT NULL,
    "n_wkg_days" integer,
    "N_Transit_Days" integer,
    "N_MMIDistance" numeric,
    "c_MMIMapLink" character varying(5000)
);

CREATE TABLE "stpdetailsbackup2019_feb_01" (
    "N_Srno" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" integer,
    "N_Distance" numeric,
    "N_Ta" numeric,
    "n_Cur_Business" numeric,
    "n_Exp_Business" numeric,
    "N_Doc_Visit_A" integer,
    "N_Doc_Visit_B" integer,
    "C_Area_From" character(10),
    "N_Chem_Visit" integer,
    "N_Stk_Visit" integer,
    "C_Subarea_code_From" character varying(10) NOT NULL,
    "C_Subarea_code_to" character varying(10) NOT NULL,
    "n_wkg_days" integer,
    "N_Transit_Days" integer,
    "N_MMIDistance" numeric,
    "c_MMIMapLink" character varying(5000)
);

CREATE TABLE "stpdetailsbackup2020" (
    "N_Srno" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" integer,
    "N_Distance" numeric,
    "N_Ta" numeric,
    "n_Cur_Business" numeric,
    "n_Exp_Business" numeric,
    "N_Doc_Visit_A" integer,
    "N_Doc_Visit_B" integer,
    "C_Area_From" character(10),
    "N_Chem_Visit" integer,
    "N_Stk_Visit" integer,
    "C_Subarea_code_From" character varying(10) NOT NULL,
    "C_Subarea_code_to" character varying(10) NOT NULL,
    "n_wkg_days" integer,
    "N_Transit_Days" integer,
    "N_MMIDistance" numeric,
    "c_MMIMapLink" character varying(5000),
    "n_mode_of_travel" integer
);

CREATE TABLE "stpdetailsbck2017" (
    "N_Srno" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" integer,
    "N_Distance" numeric,
    "N_Ta" numeric,
    "n_Cur_Business" numeric,
    "n_Exp_Business" numeric,
    "N_Doc_Visit_A" integer,
    "N_Doc_Visit_B" integer,
    "C_Area_From" character(10),
    "N_Chem_Visit" integer,
    "N_Stk_Visit" integer,
    "C_Subarea_code_From" character varying(10) NOT NULL,
    "C_Subarea_code_to" character varying(10) NOT NULL,
    "n_wkg_days" integer,
    "N_Transit_Days" integer,
    "N_MMIDistance" numeric,
    "c_MMIMapLink" character varying(5000)
);

CREATE TABLE "stpdetbackup2019_11_07" (
    "N_Srno" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" integer,
    "N_Distance" numeric,
    "N_Ta" numeric,
    "n_Cur_Business" numeric,
    "n_Exp_Business" numeric,
    "N_Doc_Visit_A" integer,
    "N_Doc_Visit_B" integer,
    "C_Area_From" character(10),
    "N_Chem_Visit" integer,
    "N_Stk_Visit" integer,
    "C_Subarea_code_From" character varying(10) NOT NULL,
    "C_Subarea_code_to" character varying(10) NOT NULL,
    "n_wkg_days" integer,
    "N_Transit_Days" integer,
    "N_MMIDistance" numeric,
    "c_MMIMapLink" character varying(5000)
);

CREATE TABLE "stpdetbackup2020" (
    "N_Srno" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" integer,
    "N_Distance" numeric,
    "N_Ta" numeric,
    "n_Cur_Business" numeric,
    "n_Exp_Business" numeric,
    "N_Doc_Visit_A" integer,
    "N_Doc_Visit_B" integer,
    "C_Area_From" character(10),
    "N_Chem_Visit" integer,
    "N_Stk_Visit" integer,
    "C_Subarea_code_From" character varying(10) NOT NULL,
    "C_Subarea_code_to" character varying(10) NOT NULL,
    "n_wkg_days" integer,
    "N_Transit_Days" integer,
    "N_MMIDistance" numeric,
    "c_MMIMapLink" character varying(5000),
    "n_mode_of_travel" integer
);

CREATE TABLE "stpdetbkp" (
    "N_Srno" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" integer,
    "N_Distance" numeric,
    "N_Ta" numeric,
    "n_Cur_Business" numeric,
    "n_Exp_Business" numeric,
    "N_Doc_Visit_A" integer,
    "N_Doc_Visit_B" integer,
    "C_Area_From" character(10),
    "N_Chem_Visit" integer,
    "N_Stk_Visit" integer,
    "C_Subarea_code_From" character varying(10) NOT NULL,
    "C_Subarea_code_to" character varying(10) NOT NULL,
    "n_wkg_days" integer,
    "N_Transit_Days" integer,
    "N_MMIDistance" numeric,
    "c_MMIMapLink" character varying(5000),
    "n_mode_of_travel" integer,
    "C_Mode_of_Travel" character varying(50)
);

CREATE TABLE "stpdetbkp2024" (
    "N_Srno" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" integer,
    "N_Distance" numeric,
    "N_Ta" numeric,
    "n_Cur_Business" numeric,
    "n_Exp_Business" numeric,
    "N_Doc_Visit_A" integer,
    "N_Doc_Visit_B" integer,
    "C_Area_From" character(10),
    "N_Chem_Visit" integer,
    "N_Stk_Visit" integer,
    "C_Subarea_code_From" character varying(10) NOT NULL,
    "C_Subarea_code_to" character varying(10) NOT NULL,
    "n_wkg_days" integer,
    "N_Transit_Days" integer,
    "N_MMIDistance" numeric,
    "c_MMIMapLink" character varying(5000),
    "n_mode_of_travel" integer,
    "C_Mode_of_Travel" character varying(50)
);

CREATE TABLE "stpdetbkp20250516" (
    "N_Srno" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" integer,
    "N_Distance" numeric,
    "N_Ta" numeric,
    "n_Cur_Business" numeric,
    "n_Exp_Business" numeric,
    "N_Doc_Visit_A" integer,
    "N_Doc_Visit_B" integer,
    "C_Area_From" character(10),
    "N_Chem_Visit" integer,
    "N_Stk_Visit" integer,
    "C_Subarea_code_From" character varying(10) NOT NULL,
    "C_Subarea_code_to" character varying(10) NOT NULL,
    "n_wkg_days" integer,
    "N_Transit_Days" integer,
    "N_MMIDistance" numeric,
    "c_MMIMapLink" character varying(5000),
    "n_mode_of_travel" integer,
    "C_Mode_of_Travel" character varying(50)
);

CREATE TABLE "stph" (
    "Region Name" character varying(255),
    "STPNo" double precision,
    "rowid" double precision,
    "Division" character varying(255),
    "FS CODE" character varying(255),
    "FS NAME" character varying(255),
    "HQ CODE" character varying(255),
    "HQ NAME" character varying(255),
    "Based At Code" character varying(255),
    "Based At Name" character varying(255),
    "STP Date From" timestamp without time zone,
    "STP Date To" timestamp without time zone,
    "HQDA" double precision,
    "EXDA" double precision,
    "OSDA" double precision,
    "TAType" double precision,
    "RateKM" double precision,
    "From Area Code" character varying(255),
    "From Area Name" character varying(255),
    "ToAreaCode" character varying(255),
    "ToAreaname" character varying(255),
    "A grade doct count" double precision,
    "B grade doctor count" double precision,
    "chemist count" double precision,
    "stockiest count" double precision,
    "curent business" double precision,
    "expected business" double precision,
    "AreaType" character varying(255),
    "Distance" double precision,
    "TA" double precision
);

CREATE TABLE "stphdr" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "d_modified" timestamp without time zone,
    "N_DA_OTHER" numeric
);

CREATE TABLE "stphdr2023bkp" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "d_modified" timestamp without time zone,
    "N_DA_OTHER" numeric,
    "n_tempsrno" integer,
    "C_Approved" character(1),
    "C_Approved_By" character varying(50),
    "D_Approved_Date" timestamp without time zone,
    "C_Reason" character varying(500),
    "C_Region_Code" character varying(20)
);

CREATE TABLE "stphdrbkp" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "d_modified" timestamp without time zone,
    "N_DA_OTHER" numeric,
    "n_tempsrno" integer,
    "C_Approved" character(1),
    "C_Approved_By" character varying(50),
    "D_Approved_Date" timestamp without time zone,
    "C_Reason" character varying(500),
    "C_Region_Code" character varying(20)
);

CREATE TABLE "stphdrbkp14122022" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "d_modified" timestamp without time zone,
    "N_DA_OTHER" numeric,
    "n_tempsrno" integer,
    "C_Approved" character(1),
    "C_Approved_By" character varying(50),
    "D_Approved_Date" timestamp without time zone,
    "C_Reason" character varying(500),
    "C_Region_Code" character varying(20)
);

CREATE TABLE "stpheader" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "d_modified" timestamp without time zone,
    "N_DA_OTHER" numeric
);

CREATE TABLE "stpheader03_04_2018" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "d_modified" timestamp without time zone,
    "N_DA_OTHER" numeric
);

CREATE TABLE "stpheader3_12aug" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "d_modified" timestamp without time zone,
    "N_DA_OTHER" numeric
);

CREATE TABLE "stpheaderback" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "d_modified" timestamp without time zone,
    "N_DA_OTHER" numeric
);

CREATE TABLE "stpheaderbackup" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "d_modified" timestamp without time zone,
    "N_DA_OTHER" numeric
);

CREATE TABLE "stpheaderbackup01_02_2019" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "d_modified" timestamp without time zone,
    "N_DA_OTHER" numeric
);

CREATE TABLE "stpheaderbackup2019_11_07" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "d_modified" timestamp without time zone,
    "N_DA_OTHER" numeric
);

CREATE TABLE "stpheaderbackup2020" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "d_modified" timestamp without time zone,
    "N_DA_OTHER" numeric,
    "n_tempsrno" integer
);

CREATE TABLE "stphearderbackup2020" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "d_modified" timestamp without time zone,
    "N_DA_OTHER" numeric,
    "n_tempsrno" integer,
    "C_Approved" character(1),
    "C_Approved_By" character varying(50),
    "D_Approved_Date" timestamp without time zone,
    "C_Reason" character varying(500)
);

CREATE TABLE "stpp" (
    "Region Name" character varying(255),
    "STPNo" double precision,
    "rowid" double precision,
    "Division" character varying(255),
    "FS CODE" character varying(255),
    "FS NAME" character varying(255),
    "HQ CODE" character varying(255),
    "HQ NAME" character varying(255),
    "Based At Code" character varying(255),
    "Based At Name" character varying(255),
    "STP Date From" timestamp without time zone,
    "STP Date To" timestamp without time zone,
    "HQDA" double precision,
    "EXDA" double precision,
    "OSDA" double precision,
    "TAType" double precision,
    "RateKM" double precision,
    "From Area Code" character varying(255),
    "From Area Name" character varying(255),
    "ToAreaCode" character varying(255),
    "ToAreaname" character varying(255),
    "A grade doct count" double precision,
    "B grade doctor count" double precision,
    "chemist count" double precision,
    "stockiest count" double precision,
    "curent business" double precision,
    "expected business" double precision,
    "AreaType" character varying(255),
    "Distance" double precision,
    "TA" double precision
);

CREATE TABLE "stpupdate1" (
    "Division" character varying(255),
    "Region Name" character varying(255),
    "STPNo" double precision,
    "rowid" double precision,
    "FS CODE" character varying(255),
    "FS NAME" character varying(255),
    "HQ CODE" character varying(255),
    "HQ NAME" character varying(255),
    "Based At Code" character varying(255),
    "Based At Name" character varying(255),
    "STP Date From" timestamp without time zone,
    "STP Date To" timestamp without time zone,
    "HQDA" double precision,
    "EXDA" double precision,
    "OSDA" double precision,
    "TAType" double precision,
    "RateKM" double precision,
    "From Area Code" character varying(255),
    "From Area Name" character varying(255),
    "ToAreaCode" character varying(255),
    "ToAreaname" character varying(255),
    "A grade doct count" double precision,
    "B grade doctor count" double precision,
    "chemist count" double precision,
    "stockiest count" double precision,
    "curent business" double precision,
    "expected business" double precision,
    "AreaType" double precision,
    "Distance" double precision,
    "TA" double precision
);

CREATE TABLE "stpupdate3" (
    "Division" character varying(255),
    "Region Name" character varying(255),
    "STPNo" double precision,
    "FS CODE" character varying(255),
    "FS NAME" character varying(255),
    "HQ CODE" character varying(255),
    "HQ NAME" character varying(255),
    "Based At Code" character varying(255),
    "Based At Name" character varying(255),
    "STP Date From" timestamp without time zone,
    "STP Date To" timestamp without time zone,
    "HQDA" double precision,
    "EXDA" double precision,
    "OSDA" double precision,
    "TAType" double precision,
    "RateKM" double precision,
    "distnace" double precision,
    "TA" double precision,
    "From Area Code" character varying(255),
    "From Area Name" character varying(255),
    "ToAreaCode" character varying(255),
    "ToAreaname" character varying(255),
    "A grade doct count" double precision,
    "B grade doctor count" double precision,
    "workingdays" double precision,
    "chemist count" double precision,
    "stockiest count" double precision,
    "curent business" double precision,
    "expected business" double precision,
    "AreaType" character varying(255)
);

CREATE TABLE "stt" (
    "Region Name" character varying(255),
    "STPNo" double precision,
    "rowid" double precision,
    "Division" character varying(255),
    "FS CODE" character varying(255),
    "FS NAME" character varying(255),
    "HQ CODE" character varying(255),
    "HQ NAME" character varying(255),
    "Based At Code" character varying(255),
    "Based At Name" character varying(255),
    "STP Date From" timestamp without time zone,
    "STP Date To" timestamp without time zone,
    "HQDA" double precision,
    "EXDA" double precision,
    "OSDA" double precision,
    "TAType" double precision,
    "RateKM" double precision,
    "From Area Code" character varying(255),
    "From Area Name" character varying(255),
    "ToAreaCode" character varying(255),
    "ToAreaname" character varying(255),
    "A grade doct count" double precision,
    "B grade doctor count" double precision,
    "chemist count" double precision,
    "stockiest count" double precision,
    "curent business" double precision,
    "expected business" double precision,
    "AreaType" double precision,
    "Distance" double precision,
    "TA" double precision
);

CREATE TABLE "sub_doc" (
    "DOCCODE" character varying(255),
    "NEW SUBAREA" character varying(255)
);

CREATE TABLE "subfielddays" (
    "FSCODE" character varying(50),
    "Workdays" character varying(50)
);

CREATE TABLE "sun" (
    "div" character varying(50),
    "sundate" character varying(50)
);

CREATE TABLE "sund" (
    "Empcode" character varying(50),
    "WorkType" character varying(50),
    "SunDate" character varying(50)
);

CREATE TABLE "sundays" (
    "empcode" character varying(50),
    "Sundays" character varying(50),
    "DOJ" character varying(50)
);

CREATE TABLE "svacant" (
    "division" character varying(50),
    "region" character varying(50),
    "designation" character varying(50),
    "totalcount" character varying(50),
    "total" character varying(50),
    "vacant" character varying(50),
    "reported" character varying(50)
);

CREATE TABLE "tb_DetailingForwardBackwardSetup" (
    "n_srNo" integer NOT NULL DEFAULT nextval('"tb_DetailingForwardBackwardSetup_n_srNo_seq"'::regclass),
    "c_Divison" text,
    "c_Region" text,
    "c_Designation" integer,
    "c_Fs" text,
    "n_delete" integer NOT NULL,
    "d_Cdae" timestamp without time zone,
    "c_user" character varying(50)
);

CREATE TABLE "tblCollateralItem" (
    "n_SetupCode" character varying(50),
    "c_ItemCode" character varying(50),
    "n_Qty" numeric
);

CREATE TABLE "tbl_ANDROID_API_LOG" (
    "n_id" integer NOT NULL DEFAULT nextval('"tbl_ANDROID_API_LOG_n_id_seq"'::regclass),
    "c_fscode" character varying(50),
    "C_index" character varying(200),
    "c_data" text,
    "d_Date" timestamp without time zone
);

CREATE TABLE "tbl_APIData_Configure" (
    "c_companyid" character varying(20),
    "c_userid" character varying(20),
    "c_password" character varying(20),
    "c_IndexNo" character varying(100)
);

CREATE TABLE "tbl_Account_Group" (
    "c_code" character varying(20) NOT NULL,
    "c_name" character varying(50),
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "n_active" integer NOT NULL DEFAULT 0,
    "n_deleted" integer NOT NULL DEFAULT 0
);

CREATE TABLE "tbl_Admin_Display_setup_Det" (
    "c_Code" character varying(50),
    "c_grade" character varying(50),
    "n_amount" numeric,
    "n_type" integer
);

CREATE TABLE "tbl_Admin_Display_setup_Mst" (
    "c_code" character varying(50) NOT NULL,
    "c_name" character varying(500),
    "c_productcode" character varying(50),
    "c_regioncode" character varying(50),
    "d_date_from" timestamp without time zone,
    "d_date_to" timestamp without time zone,
    "n_deleted" integer,
    "d_Created" timestamp without time zone,
    "d_Modified" timestamp without time zone,
    "c_modifier" character varying(50),
    "n_status" integer,
    "n_total_qty" numeric,
    "n_purchase_value" numeric,
    "n_qty" numeric,
    "n_budget" numeric,
    "n_display_count" numeric
);

CREATE TABLE "tbl_Admin_displaySetup_item_brand" (
    "c_setup_code" character varying(20),
    "c_itemcode" character varying(20),
    "c_item_brand_type" integer,
    "n_qty" integer
);

CREATE TABLE "tbl_Admin_display_Allocation" (
    "c_setup_code" character varying(50),
    "c_allocatedby_Fscode" character varying(50),
    "c_allowcatedto_Fscode" character varying(50),
    "n_allocated_qty" numeric,
    "n_allocated_budget" numeric,
    "d_date" timestamp without time zone
);

CREATE TABLE "tbl_AlkemQuestionnireUsers" (
    "n_Id" integer NOT NULL DEFAULT nextval('"tbl_AlkemQuestionnireUsers_n_Id_seq"'::regclass),
    "c_fscode" character varying(20),
    "c_empno" character varying(20),
    "d_date" timestamp without time zone
);

CREATE TABLE "tbl_Alkem_DrLocation_Hitcount" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Alkem_DrLocation_Hitcount_n_srno_seq"'::regclass),
    "c_loginfscode" character varying(20),
    "c_loginempcode" character varying(20),
    "c_userid" character varying(100),
    "c_deviceid" character varying(500),
    "c_version" character varying(100),
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_Alkem_DrLocation_ImgSaveDetails" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Alkem_DrLocation_ImgSaveDetails_n_srno_seq"'::regclass),
    "c_loginfscode" character varying(20),
    "c_loginempcode" character varying(20),
    "c_selectedfs" character varying(20),
    "c_selectedempcode" character varying(20),
    "c_drcode" character varying(20),
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_imagename" character varying(200)
);

CREATE TABLE "tbl_Alkem_DrLocation_UpdateDrDetails" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Alkem_DrLocation_UpdateDrDetails_n_srno_seq"'::regclass),
    "c_loginfscode" character varying(20),
    "c_loginempcode" character varying(20),
    "c_selectedfs" character varying(20),
    "c_selectedempcode" character varying(20),
    "c_drcode" character varying(20),
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_Android_Crash_Log" (
    "n_id" integer NOT NULL DEFAULT nextval('"tbl_Android_Crash_Log_n_id_seq"'::regclass),
    "c_fsCode" character varying(50),
    "c_empCode" character varying(50),
    "c_crash_details" text,
    "c_device_model" character varying(200),
    "c_device_id" character varying(100),
    "c_os_version" character varying(100),
    "d_date" timestamp without time zone,
    "c_Apk" character varying(10) DEFAULT NULL::character varying,
    "c_apk_version" character varying(50)
);

CREATE TABLE "tbl_Android_Service_CallTime" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Android_Service_CallTime_n_srno_seq"'::regclass),
    "c_index" character varying(500),
    "d_datetime" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_data" text,
    "c_id" integer DEFAULT 1
);

CREATE TABLE "tbl_AppError_log" (
    "c_error" character varying(5000),
    "d_date" timestamp without time zone,
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_AppError_log_n_srno_seq"'::regclass)
);

CREATE TABLE "tbl_Auto_Email_FS_List" (
    "n_srno" integer,
    "C_FS_Code" character varying(50),
    "n_type" integer
);

CREATE TABLE "tbl_Auto_MTP_Setup" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Auto_MTP_Setup_n_srno_seq"'::regclass),
    "c_Division_Code" character varying(2000),
    "c_Region_Code" character varying(3000),
    "c_Desc_Code" character varying(100),
    "c_Fscode" character varying(100),
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_Auto_Stp_Define_Months" (
    "n_srno" integer NOT NULL,
    "C_Div_Reg_Des_FS_code" text,
    "n_count" integer,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_Auto_Stp_Define_Months_Approval" (
    "n_setupid" integer NOT NULL DEFAULT nextval('"tbl_Auto_Stp_Define_Months_Approval_n_setupid_seq"'::regclass),
    "n_app_req" integer,
    "n_singleormultiple" integer,
    "n_deleted" integer
);

CREATE TABLE "tbl_Auto_Stp_Define_Months_Approval_det" (
    "n_setupid" integer,
    "n_type" integer
);

CREATE TABLE "tbl_Auto_Stp_Months" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Auto_Stp_Months_n_srno_seq"'::regclass),
    "n_type" integer,
    "c_Division_Code" text,
    "c_Region_Code" text,
    "c_Desc_Code" text,
    "c_Fs_Code" text,
    "n_deleted" integer,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_Auto_Stp_Setup" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Auto_Stp_Setup_n_srno_seq"'::regclass),
    "n_type" integer,
    "c_Division_Code" character varying(2000),
    "c_Region_Code" character varying(3000),
    "c_Desc_Code" character varying(100),
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "n_HQ" integer
);

CREATE TABLE "tbl_Auto_Stp_Setup_Details" (
    "n_srno" integer NOT NULL,
    "C_Reg_FS_code" character varying(100),
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "n_TALimit" numeric
);

CREATE TABLE "tbl_Auto_Stp_Setup_Details_log" (
    "n_srno" integer NOT NULL,
    "C_Reg_FS_code" character varying(100),
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric
);

CREATE TABLE "tbl_Auto_Stp_Setup_ExpenseType" (
    "n_srno" integer,
    "c_ExpenseType" character varying(150),
    "n_ExpenseAmount" numeric
);

CREATE TABLE "tbl_Auto_Stp_Setup_Perioddet" (
    "n_srno" integer,
    "n_Period" integer,
    "d_fromDate" date,
    "d_toDate" date,
    "n_month" integer
);

CREATE TABLE "tbl_Auto_Stp_Setup_TAallowance_det" (
    "n_srno" integer,
    "n_fromkm" numeric,
    "n_tokm" numeric,
    "n_rupeesperkm" numeric,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_TravelMode" text
);

CREATE TABLE "tbl_Auto_Stp_Setup_log" (
    "n_srno" integer,
    "n_type" integer,
    "c_Division_Code" text,
    "c_Region_Code" text,
    "c_Desc_Code" character varying(50),
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_CME_RTM_Expense_Activity_Det" (
    "N_ID" integer NOT NULL DEFAULT nextval('"tbl_CME_RTM_Expense_Activity_Det_N_ID_seq"'::regclass),
    "N_CME_RTM_Expense_ID" numeric,
    "N_General_Setup_ID" numeric,
    "C_FS_Code" character varying(20),
    "C_EMP_Code" character varying(20),
    "D_Activity_On" timestamp without time zone,
    "N_Status" integer,
    "C_Remarks" character varying(1000)
);

CREATE TABLE "tbl_CME_RTM_Request_Activity_Det" (
    "N_ID" integer NOT NULL DEFAULT nextval('"tbl_CME_RTM_Request_Activity_Det_N_ID_seq"'::regclass),
    "N_CME_RTM_Request_ID" numeric,
    "N_General_Setup_ID" numeric,
    "C_FS_Code" character varying(20),
    "C_EMP_Code" character varying(20),
    "D_Activity_On" timestamp without time zone,
    "N_Status" integer,
    "C_Remarks" character varying(1000),
    "C_Acknowledgement_Url" character varying(500)
);

CREATE TABLE "tbl_CRM_Specification_MST" (
    "n_Spec_ID" numeric NOT NULL,
    "C_Spec_Desc" character varying(50)
);

CREATE TABLE "tbl_CRM_Template_Det" (
    "n_Template_ID" numeric,
    "n_Question_ID" numeric,
    "n_DisplayOrder" numeric,
    "C_GrpName" character varying(50),
    "n_GroupDisplyOrder" integer,
    "n_QuestionDisplayOrder" integer
);

CREATE TABLE "tbl_CRM_Template_Mst" (
    "n_Template_ID" numeric NOT NULL,
    "C_Template_Name" character varying(50),
    "C_Template_Desc" character varying(50),
    "C_Active" character(1),
    "C_Mode" character(1),
    "n_ModifyDays" numeric,
    "n_Specification" numeric,
    "n_Deleted" smallint NOT NULL DEFAULT '0'::smallint
);

CREATE TABLE "tbl_CRM_questionGroup_Mst" (
    "n_groupID" integer NOT NULL DEFAULT nextval('"tbl_CRM_questionGroup_Mst_n_groupID_seq"'::regclass),
    "C_Groupname" character varying(50),
    "C_GroupCaption" character varying(50),
    "n_deleted" integer,
    "d_createdDate" timestamp without time zone,
    "d_modifydate" timestamp without time zone,
    "c_createdBy" character varying(20),
    "c_ModifiedBy" character varying(20)
);

CREATE TABLE "tbl_CRM_question_mst" (
    "C_Question" character varying(1000),
    "n_QuestionID" integer NOT NULL DEFAULT nextval('"tbl_CRM_question_mst_n_QuestionID_seq"'::regclass),
    "n_Quest_groupid" integer,
    "c_Questiontype" character varying(50),
    "c_Question_popup_data" character varying(250),
    "C_Active" character(1),
    "C_OtherOption" character(1),
    "n_control_width" integer
);

CREATE TABLE "tbl_CampTopic_Mst" (
    "c_CTopic_Code" character varying(10),
    "c_CTopic_Name" character varying(100),
    "n_deleted" integer DEFAULT 0,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(20)
);

CREATE TABLE "tbl_CampTye_CampTopic_Mapping" (
    "n_CType_Code" bigint,
    "c_CTopic_Code" character varying(10)
);

CREATE TABLE "tbl_CampTye_Fs_Mapping" (
    "n_CType_Code" bigint,
    "c_Fs_Code" character varying(10),
    "d_modified" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_CampType_Mst" (
    "n_CType_Code" integer NOT NULL DEFAULT nextval('"tbl_CampType_Mst_n_CType_Code_seq"'::regclass),
    "c_CType_Name" character varying(100),
    "d_date_from" timestamp without time zone,
    "d_date_to" timestamp without time zone,
    "n_HierarchyType" integer,
    "c_fs_code" character varying(20),
    "n_status" integer DEFAULT 0,
    "n_deleted" integer DEFAULT 0,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(20),
    "n_lami" numeric,
    "n_lgmi" numeric
);

CREATE TABLE "tbl_Camp_image" (
    "n_srno" numeric,
    "n_CType_Code" bigint,
    "c_CTopic_Code" character varying(10),
    "c_image_name" character varying(100),
    "c_imageReview" character varying(500),
    "d_uploaddate" timestamp without time zone
);

CREATE TABLE "tbl_Campaign_Multiple_Approval_Det" (
    "n_camp_hdr_srno" character varying(10),
    "c_approvedby" character varying(50),
    "fstype" integer,
    "d_approved" timestamp without time zone,
    "c_approvalNote" character varying(200)
);

CREATE TABLE "tbl_Campiagn_Req_setup_det" (
    "n_setupid" integer,
    "n_type" integer
);

CREATE TABLE "tbl_Campiagn_Req_setup_mst" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Campiagn_Req_setup_mst_n_srno_seq"'::regclass),
    "c_name" character varying(50),
    "n_app_type" integer,
    "c_desk_code" character varying(50),
    "n_deleted" integer
);

CREATE TABLE "tbl_Candidate_Compensation" (
    "C_Comp_Code" character varying(50),
    "C_Candidate_Code" character varying(50),
    "n_amount" numeric
);

CREATE TABLE "tbl_Candidate_Status" (
    "n_srno" numeric,
    "C_Reason" character varying(200),
    "C_EmpCode" character varying(50),
    "D_Date" timestamp without time zone,
    "C_Status" character varying(10)
);

CREATE TABLE "tbl_ChemistActivityStatus" (
    "N_Id" integer NOT NULL DEFAULT nextval('"tbl_ChemistActivityStatus_N_Id_seq"'::regclass),
    "C_ChemistCode" character varying(50),
    "N_ActivityStatus" integer,
    "C_EnteredBy" character varying(50),
    "D_EnteredDate" timestamp without time zone,
    "C_UpdatedBy" character varying(50),
    "D_UpdatedOn" timestamp without time zone
);

CREATE TABLE "tbl_City_Mst" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "C_State_Code" character varying(10) NOT NULL,
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "n_metroclassification" integer NOT NULL DEFAULT 1,
    "c_sh_name" text
);

CREATE TABLE "tbl_ClaimType_Mst" (
    "c_code" character varying(10) NOT NULL,
    "c_name" character varying(50) NOT NULL,
    "n_sfatype" integer DEFAULT 0,
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10)
);

CREATE TABLE "tbl_Claim_FileUpload" (
    "n_srno" integer,
    "C_Subject" character varying(100),
    "C_FileName" character varying(100),
    "C_TempName" character varying(100),
    "d_Date" timestamp without time zone,
    "C_Docpath" character varying(200)
);

CREATE TABLE "tbl_Claim_FileUpload_Daily" (
    "n_rowid" integer,
    "n_srno" integer,
    "C_Subject" character varying(100),
    "C_FileName" character varying(100),
    "C_TempName" character varying(100),
    "d_Date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_DCR_Display_Setup" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_DCR_Display_Setup_n_srno_seq"'::regclass),
    "n_type" integer,
    "c_Division_Code" text,
    "c_Region_Code" text,
    "c_Desc_Code" character varying(100),
    "C_FsCode" text,
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_DCSA_Degree_Students_Number" (
    "c_DSC_code" character varying(50),
    "c_Degree_code" character varying(50),
    "n_nmbr" integer
);

CREATE TABLE "tbl_DSC_def_type" (
    "n_srno" character varying(10),
    "n_dsc_type" integer,
    "c_description" character varying(20),
    "c_short_name" character varying(10),
    "c_img_path" character varying(100),
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_Dcr_LockActivation" (
    "c_fs_code" character varying(20) NOT NULL,
    "d_Unlock_From" timestamp without time zone,
    "d_Unlock_To" timestamp without time zone,
    "c_EntryMandatory" character varying(5),
    "c_Remark" character varying(500),
    "c_ModifiedBy" character varying(20),
    "d_Modified" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "n_flag" integer DEFAULT 0,
    "n_lock_entry_type" integer
);

CREATE TABLE "tbl_Dcr_LockActivation_history" (
    "c_fs_code" character varying(20) NOT NULL,
    "d_Unlock_From" timestamp without time zone,
    "d_Unlock_To" timestamp without time zone,
    "c_EntryMandatory" character varying(5),
    "c_Remark" character varying(500),
    "c_ModifiedBy" character varying(20),
    "d_Modified" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "n_flag" integer DEFAULT 0,
    "n_lock_entry_type" integer
);

CREATE TABLE "tbl_Dcr_LockActivation_log" (
    "c_fs_code" character varying(20) NOT NULL,
    "d_Unlock_From" timestamp without time zone,
    "d_Unlock_To" timestamp without time zone,
    "c_EntryMandatory" character varying(5),
    "c_Remark" character varying(500),
    "c_ModifiedBy" character varying(20),
    "d_Modified" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "n_flag" integer DEFAULT 0
);

CREATE TABLE "tbl_Dcr_PSG_Mandatory" (
    "c_div_code" character varying(50),
    "n_product" integer DEFAULT 0,
    "n_sample" integer DEFAULT 0,
    "n_gift" integer DEFAULT 0
);

CREATE TABLE "tbl_Dcr_PreviousEntry_FoRHTMLDownload" (
    "n_month" integer,
    "n_year" integer
);

CREATE TABLE "tbl_Dcr_log" (
    "N_Dcr_No" numeric NOT NULL,
    "D_Date_Report" timestamp without time zone NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL
);

CREATE TABLE "tbl_Depo_xl_columns_mst" (
    "c_Depo_columnname" character varying(200),
    "d_Createddate" timestamp without time zone,
    "d_modifieddate" timestamp without time zone,
    "c_createdby" character varying(100),
    "n_deleted" integer,
    "n_status" integer
);

CREATE TABLE "tbl_Desig_WorkType_Allowance_Mapping" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Desig_WorkType_Allowance_Mapping_n_srno_seq"'::regclass),
    "n_designation" integer,
    "c_worktype" character varying(20),
    "n_allowance" numeric
);

CREATE TABLE "tbl_Desig_WorkType_Allowance_Mapping_Marketing" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Desig_WorkType_Allowance_Mapping_Marketing_n_srno_seq"'::regclass),
    "n_designation" integer,
    "c_worktype" character varying(20),
    "n_allowance" numeric
);

CREATE TABLE "tbl_Desig_WorkType_Fs_Mapping" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Desig_WorkType_Fs_Mapping_n_srno_seq"'::regclass),
    "c_fscode" character varying(20),
    "c_worktype" character varying(20),
    "n_allowance" integer
);

CREATE TABLE "tbl_Desig_WorkType_Fs_Mapping_Marketing" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Desig_WorkType_Fs_Mapping_Marketing_n_srno_seq"'::regclass),
    "c_fscode" character varying(20),
    "c_worktype" character varying(20),
    "n_allowance" integer
);

CREATE TABLE "tbl_DirectBackend_Update_Det" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_DirectBackend_Update_Det_n_srno_seq"'::regclass),
    "n_code" integer NOT NULL,
    "c_fscode" character varying(10),
    "n_fstype" integer
);

CREATE TABLE "tbl_DirectBackend_Update_Mst" (
    "n_code" integer NOT NULL DEFAULT nextval('"tbl_DirectBackend_Update_Mst_n_code_seq"'::regclass),
    "c_Proc_Display_Name" character varying(800),
    "c_sp_name" character varying(1000),
    "c_parameter_description" text,
    "c_filestartswith" character varying(5000),
    "c_division" character varying(5000),
    "n_month" integer,
    "n_year" integer,
    "d_date_update" timestamp without time zone,
    "c_fs_selection" character varying(10),
    "c_Report_Type" character varying(10)
);

CREATE TABLE "tbl_DisplaySetupRequest" (
    "n_id" integer NOT NULL DEFAULT nextval('"tbl_DisplaySetupRequest_n_id_seq"'::regclass),
    "c_retailer" character varying(20),
    "c_fscode" character varying(20),
    "c_displaysetup" character varying(20),
    "d_from" timestamp without time zone,
    "d_to" timestamp without time zone,
    "n_purchasevalue" numeric,
    "n_pobstatus" integer,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "n_status" integer DEFAULT 0,
    "c_statusby" character varying(50),
    "d_statuson" timestamp without time zone,
    "C_Reject_Note" character varying(250),
    "n_displaycount" integer,
    "n_displaybudget" numeric
);

CREATE TABLE "tbl_DisplaySetup_Followup" (
    "N_Id" integer NOT NULL DEFAULT nextval('"tbl_DisplaySetup_Followup_N_Id_seq"'::regclass),
    "C_Chemist" character varying(20),
    "N_DisplayId" character varying(50),
    "D_ValDate" timestamp without time zone,
    "C_DisplayStatus" character varying(20),
    "C_Image" character varying(500),
    "C_Remark" character varying(100),
    "C_Fscode" character varying(20),
    "D_Date" timestamp without time zone,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_Display_Status_Mst" (
    "C_Code" character varying(20) NOT NULL,
    "C_Name" character varying(50),
    "N_Active" integer
);

CREATE TABLE "tbl_Div_DrGrade_Mapping" (
    "c_div_code" character varying(50),
    "c_Dr_Grade" character varying(50)
);

CREATE TABLE "tbl_DocInv_Amount" (
    "n_id" integer NOT NULL DEFAULT nextval('"tbl_DocInv_Amount_n_id_seq"'::regclass),
    "n_srno" integer NOT NULL,
    "n_setupno" integer,
    "c_invcode" character varying(10),
    "n_amount" numeric,
    "c_inv_status" character varying(10),
    "c_empcode" character varying(20),
    "c_fwstatus" character varying(10),
    "x_MandatoryHtml" xml,
    "x_MandatoryHtmlModified" xml,
    "n_approveramt" numeric,
    "n_confirmeramt" numeric,
    "n_deskamt" numeric,
    "n_deskstaffamt" numeric,
    "n_AdvanceAmount" numeric
);

CREATE TABLE "tbl_DocInv_Amount_log" (
    "n_id" integer,
    "n_srno" integer NOT NULL,
    "n_setupno" integer,
    "c_invcode" character varying(10),
    "n_amount" numeric,
    "c_inv_status" character varying(10),
    "c_empcode" character varying(20),
    "c_fwstatus" character varying(10),
    "x_MandatoryHtml" xml,
    "x_MandatoryHtmlModified" xml,
    "n_approveramt" numeric,
    "n_confirmeramt" numeric,
    "n_deskamt" numeric,
    "n_deskstaffamt" numeric,
    "n_advanceAmount" numeric
);

CREATE TABLE "tbl_DocInv_Exp_Req_approval" (
    "n_reqno" numeric,
    "n_setup_no" numeric,
    "d_date" timestamp without time zone,
    "c_status" character varying(5),
    "c_note" character varying(250),
    "c_enteredbyempcode" character varying(20),
    "c_enteredbyfscode" character varying(20)
);

CREATE TABLE "tbl_DocInv_Followup" (
    "n_srno" integer NOT NULL,
    "d_date" timestamp without time zone,
    "c_note" text,
    "c_workedwith" character varying(10),
    "c_fscode" character varying(10)
);

CREATE TABLE "tbl_DocInv_Followup_log" (
    "n_srno" integer,
    "d_date" timestamp without time zone,
    "c_note" text,
    "c_workedwith" character varying(10),
    "c_fscode" character varying(10)
);

CREATE TABLE "tbl_DocInv_InvHtml" (
    "n_srno" integer,
    "MandatoryHtml" xml,
    "x_InvDetHtml" xml,
    "MandatoryHtml_Modified" xml,
    "x_itementryhtml" xml
);

CREATE TABLE "tbl_DocInv_InvHtml_SAvecopy" (
    "n_srno" integer,
    "x_itementryhtml" xml,
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_DocInv_InvHtml_log" (
    "n_srno" integer,
    "MandatoryHtml" xml,
    "x_InvDetHtml" xml,
    "MandatoryHtml_Modified" xml,
    "x_itementryhtml" xml
);

CREATE TABLE "tbl_DocInv_Req_ItemEntry_Det" (
    "n_Srno" integer,
    "c_itemcode" character varying(10),
    "n_RX" integer,
    "n_Qty" integer,
    "n_Value" integer,
    "n_Month" integer
);

CREATE TABLE "tbl_DocInv_Req_ItemEntry_Det_log" (
    "n_Srno" integer,
    "c_itemcode" character varying(10),
    "n_RX" integer,
    "n_Qty" integer,
    "n_Value" integer,
    "n_Month" integer
);

CREATE TABLE "tbl_DocInv_Req_ItemEntry_Hdr" (
    "n_Srno" integer,
    "c_itemcode" character varying(10),
    "n_ItemType" integer,
    "n_Rate" numeric,
    "n_actRate" numeric,
    "n_Value" numeric
);

CREATE TABLE "tbl_DocInv_Req_ItemEntry_Hdr_log" (
    "n_Srno" integer,
    "c_itemcode" character varying(10),
    "n_ItemType" integer,
    "n_Rate" numeric,
    "n_actRate" numeric,
    "n_Value" numeric
);

CREATE TABLE "tbl_DocInv_Req_ItemEntry_Sub_Det" (
    "n_Srno" integer,
    "n_totalsalesDr" numeric,
    "n_ExpTotal" numeric,
    "n_PatientsNo" numeric,
    "n_avgBusiness" numeric,
    "c_Alliances" text
);

CREATE TABLE "tbl_DocInv_Req_ItemEntry_Sub_Det_log" (
    "n_Srno" integer,
    "n_totalsalesDr" numeric,
    "n_ExpTotal" numeric,
    "n_PatientsNo" numeric,
    "n_avgBusiness" numeric,
    "c_Alliances" text
);

CREATE TABLE "tbl_DocInv_Req_Mst" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_DocInv_Req_Mst_n_srno_seq"'::regclass),
    "n_setupno" integer,
    "c_fscode" character varying(10),
    "c_empcode" character varying(10),
    "c_doctorcode" character varying(20),
    "c_dr_category" character varying(10),
    "c_dr_class" character varying(10),
    "c_dr_grade" character varying(10),
    "c_mobile_no" character varying(20),
    "c_dr_email_id" character varying(50),
    "c_mclno" character varying(20),
    "d_businessExpectedFrom" timestamp without time zone,
    "n_no_Of_Investments" integer,
    "d_businessExpectedTo" timestamp without time zone,
    "n_RPS_AMount" numeric,
    "c_commitment" text,
    "c_requirement" text,
    "c_Remarks" text,
    "d_date" timestamp without time zone,
    "c_status" character varying(10),
    "d_closingdate" timestamp without time zone,
    "n_deleted" integer,
    "c_modifier" character varying(20),
    "d_modified" timestamp without time zone,
    "c_ApprovedBy" character varying(20),
    "c_deskstatus" character varying(20),
    "c_deskempcode" character varying(20),
    "c_childfs_code" character varying(20),
    "n_ExpenseEntryStatus" integer,
    "n_advanceRequested" integer,
    "n_btc" integer,
    "n_EstimatedAmount" numeric,
    "d_acc_date" timestamp without time zone,
    "n_confirm_bu_skip" integer DEFAULT 0,
    "c_stage_status" character varying(200),
    "n_allocationId" numeric,
    "n_rpsno" character varying(10)
);

CREATE TABLE "tbl_DocInv_Req_Mst_log" (
    "n_srno" integer,
    "n_setupno" integer,
    "c_fscode" character varying(10),
    "c_empcode" character varying(10),
    "c_doctorcode" character varying(20),
    "c_dr_category" character varying(10),
    "c_dr_class" character varying(10),
    "c_dr_grade" character varying(10),
    "c_mobile_no" character varying(20),
    "c_dr_email_id" character varying(50),
    "c_mclno" character varying(10),
    "d_businessExpectedFrom" timestamp without time zone,
    "n_no_Of_Investments" integer,
    "d_businessExpectedTo" timestamp without time zone,
    "n_RPS_AMount" numeric,
    "c_commitment" text,
    "c_requirement" text,
    "c_Remarks" text,
    "d_date" timestamp without time zone,
    "c_status" character varying(10),
    "d_closingdate" timestamp without time zone,
    "n_deleted" integer,
    "c_modifier" character varying(20),
    "d_modified" timestamp without time zone,
    "c_ApprovedBy" character varying(20),
    "c_deskstatus" character varying(20),
    "c_deskempcode" character varying(20),
    "c_childfs_code" character varying(20)
);

CREATE TABLE "tbl_DocInv_Req_Mst_rps_reject_log" (
    "n_srno" integer NOT NULL,
    "n_setupno" integer,
    "c_fscode" character varying(10),
    "c_empcode" character varying(10),
    "c_doctorcode" character varying(20),
    "c_dr_category" character varying(10),
    "c_dr_class" character varying(10),
    "c_dr_grade" character varying(10),
    "c_mobile_no" character varying(20),
    "c_dr_email_id" character varying(50),
    "c_mclno" character varying(20),
    "d_businessExpectedFrom" timestamp without time zone,
    "n_no_Of_Investments" integer,
    "d_businessExpectedTo" timestamp without time zone,
    "n_RPS_AMount" numeric,
    "c_commitment" text,
    "c_requirement" text,
    "c_Remarks" text,
    "d_date" timestamp without time zone,
    "c_status" character varying(10),
    "d_closingdate" timestamp without time zone,
    "n_deleted" integer,
    "c_modifier" character varying(20),
    "d_modified" timestamp without time zone,
    "c_ApprovedBy" character varying(20),
    "c_deskstatus" character varying(20),
    "c_deskempcode" character varying(20),
    "c_childfs_code" character varying(20),
    "n_ExpenseEntryStatus" integer,
    "n_advanceRequested" integer,
    "n_btc" integer,
    "n_EstimatedAmount" numeric,
    "d_acc_date" timestamp without time zone,
    "n_confirm_bu_skip" integer NOT NULL DEFAULT 0,
    "c_stage_status" character varying(200)
);

CREATE TABLE "tbl_DocInv_Req_approval" (
    "n_reqno" numeric NOT NULL,
    "n_setup_no" numeric NOT NULL,
    "d_date" timestamp without time zone,
    "c_status" character varying(5),
    "c_note" character varying(250),
    "c_enteredbyempcode" character varying(20) NOT NULL,
    "c_enteredbyfscode" character varying(20) NOT NULL
);

CREATE TABLE "tbl_DocInv_Req_approval_expense" (
    "n_reqno" numeric NOT NULL,
    "n_setup_no" numeric NOT NULL,
    "d_date" timestamp without time zone,
    "c_status" character varying(5),
    "c_note" character varying(250),
    "c_enteredbyempcode" character varying(20) NOT NULL,
    "c_enteredbyfscode" character varying(20) NOT NULL,
    "c_remarks" text
);

CREATE TABLE "tbl_DocInv_Req_approval_expense_Hist" (
    "n_reqno" numeric NOT NULL,
    "n_setup_no" numeric NOT NULL,
    "d_date" timestamp without time zone,
    "c_status" character varying(5),
    "c_note" character varying(250),
    "c_enteredbyempcode" character varying(20) NOT NULL,
    "c_enteredbyfscode" character varying(20) NOT NULL,
    "c_remarks" text,
    "n_cycle" integer
);

CREATE TABLE "tbl_DocInv_Req_approval_log" (
    "n_reqno" numeric NOT NULL,
    "n_setup_no" numeric NOT NULL,
    "d_date" timestamp without time zone,
    "c_status" character varying(5),
    "c_note" character varying(250),
    "c_enteredbyempcode" character varying(20) NOT NULL,
    "c_enteredbyfscode" character varying(20) NOT NULL
);

CREATE TABLE "tbl_DocInv_req_docs" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_DocInv_req_docs_n_srno_seq"'::regclass),
    "N_reqno" integer,
    "n_inv_req" numeric,
    "c_filename" character varying(50),
    "n_deleted" integer,
    "c_modified" character varying(20),
    "d_modified" timestamp without time zone,
    "c_doctype" character varying(20)
);

CREATE TABLE "tbl_DocInv_req_docs_log" (
    "n_srno" integer,
    "N_reqno" integer,
    "n_inv_req" numeric,
    "c_filename" character varying(50),
    "n_deleted" integer,
    "c_modified" character varying(20),
    "d_modified" timestamp without time zone,
    "c_doctype" character varying(20)
);

CREATE TABLE "tbl_Doc_Adr_Rpt" (
    "C_LabelName" character varying(20) NOT NULL,
    "C_Reportfile" character varying(50) NOT NULL,
    "N_Deleted" numeric
);

CREATE TABLE "tbl_Doc_MultipleSub_Det" (
    "c_DSC_Code" character varying(50),
    "c_DocAreacode" character varying(50),
    "c_DocSubAreacode" character varying(50),
    "n_deleted" integer DEFAULT 0,
    "n_SubType" integer
);

CREATE TABLE "tbl_Doc_MultipleSub_Det_Bckup" (
    "c_DSC_Code" character varying(50),
    "c_DocAreacode" character varying(50),
    "c_DocSubAreacode" character varying(50),
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "n_SubType" integer
);

CREATE TABLE "tbl_Doc_Stock_LimitChk_Det" (
    "n_id" integer,
    "c_HQ_Cat_Gr_code" character varying(50),
    "n_Count" integer,
    "d_from_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "d_to_Date" timestamp without time zone
);

CREATE TABLE "tbl_Doc_Stock_LimitChk_Det_log" (
    "n_id" integer,
    "c_HQ_Cat_Gr_code" character varying(50),
    "n_Count" integer,
    "d_from_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "d_to_Date" timestamp without time zone,
    "d_inserteddate" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_Doc_Stock_LimitChk_HDR" (
    "n_id" integer NOT NULL DEFAULT nextval('"tbl_Doc_Stock_LimitChk_HDR_n_id_seq"'::regclass),
    "n_Maptype" integer,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_Doc_appointment_Details" (
    "c_code" character varying(50),
    "c_empNo" character varying(50),
    "c_fscode" character varying(50),
    "c_Source" character varying(50),
    "d_app_date" timestamp without time zone,
    "c_time" character varying(50),
    "n_type" integer,
    "d_date" timestamp without time zone NOT NULL
);

CREATE TABLE "tbl_DoctorEvent_Mappings" (
    "c_div_code" character varying(50),
    "c_region_Code" character varying(50),
    "d_date_From" timestamp without time zone,
    "d_date_To" timestamp without time zone,
    "c_Doc_Code" character varying(50),
    "c_Imagename" character varying(200),
    "n_type" integer
);

CREATE TABLE "tbl_DoctorPOB_FMCG_HDR" (
    "n_OrderNo" numeric NOT NULL,
    "c_DSC_Code" character varying(10),
    "d_Date" timestamp without time zone,
    "n_Type" integer NOT NULL,
    "c_Note" character varying(300),
    "c_EnteredBy" character varying(10),
    "n_ref_dcr_srno" numeric,
    "n_total" numeric,
    "c_cust_code" character varying(10),
    "n_process_status" integer,
    "c_inv_no" character varying(50),
    "d_invdate" timestamp without time zone,
    "n_inv_amt" numeric,
    "c_inv_note" character varying(250),
    "d_order_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "n_transactiontype" integer,
    "d_OrderCancelDate" timestamp without time zone,
    "C_CancelFlg" character varying(10),
    "d_lastModifiedDate" timestamp without time zone,
    "d_salesentrydate" timestamp without time zone,
    "c_reasoncode" character varying(100)
);

CREATE TABLE "tbl_DoctorPOB_FMCG_HDR_History" (
    "n_SrNo" integer NOT NULL DEFAULT nextval('"tbl_DoctorPOB_FMCG_HDR_History_n_SrNo_seq"'::regclass),
    "c_DSC_Code" character varying(10),
    "d_Date" timestamp without time zone,
    "n_Type" integer NOT NULL,
    "c_Note" character varying(300),
    "c_EnteredBy" character varying(10)
);

CREATE TABLE "tbl_DoctorPOB_Locksettings" (
    "n_Day" integer
);

CREATE TABLE "tbl_DoctorPOB_log_FMCG_HDR" (
    "n_OrderNo" numeric NOT NULL,
    "c_DSC_Code" character varying(10),
    "d_Date" timestamp without time zone,
    "n_Type" integer NOT NULL,
    "c_Note" character varying(300),
    "c_EnteredBy" character varying(10),
    "n_ref_dcr_srno" numeric,
    "n_total" numeric,
    "c_cust_code" character varying(10),
    "n_process_status" integer,
    "c_inv_no" character varying(50),
    "d_invdate" timestamp without time zone,
    "n_inv_amt" numeric,
    "c_inv_note" character varying(250),
    "d_order_date" timestamp without time zone
);

CREATE TABLE "tbl_Doctors_mst" (
    "employeecode" character varying(255),
    "Employeename" character varying(255),
    "Division Name" character varying(255),
    "DocCode" character varying(255),
    "Doctor Firstname" character varying(255),
    "Lastname" character varying(255),
    "Grade Name" character varying(255),
    "qualification" character varying(255),
    "add1" character varying(255),
    "add2" character varying(255),
    "add3" character varying(255),
    "add4" character varying(255),
    "pin" character varying(255),
    "phone" character varying(255),
    "referenceno" character varying(255),
    "category Name" character varying(255),
    "subarea Name" character varying(255),
    "Type Of area" character varying(255),
    "Brand/Product" character varying(255),
    "Priority" character varying(255),
    "dob" timestamp without time zone,
    "dow" timestamp without time zone,
    "email" character varying(255),
    "LAT" character varying(255),
    "LONG" character varying(255),
    "Class" character varying(255),
    "Spousename" character varying(255),
    "SpouseDOB" character varying(255),
    "Mcino" character varying(255),
    "distance" character varying(255),
    "TA" character varying(255),
    "ChemCode" character varying(255),
    "Name" character varying(255),
    "add11" character varying(255),
    "add21" character varying(255),
    "city" character varying(255),
    "state" character varying(255),
    "pin1" character varying(255),
    "phone1" character varying(255),
    "referenceno1" character varying(255),
    "email1" character varying(255),
    "subareacode" character varying(255),
    "Type of Area1" character varying(255),
    "lat1" character varying(255),
    "long1" character varying(255),
    "tin" character varying(255),
    "lic" character varying(255),
    "contactname" character varying(255),
    "sftshop" character varying(255),
    "displayshelf" character varying(255),
    "descdisplayshelf" character varying(255),
    "fboardheight" character varying(255),
    "fboardlength" character varying(255),
    "backlit" character varying(255),
    "computerised" character varying(255),
    "licfood" character varying(255),
    "sort" character varying(255),
    "contactmob" character varying(255),
    "contoutletnumber" character varying(255),
    "landmark" character varying(255),
    "grade" character varying(255),
    "dob1" character varying(255),
    "dow1" character varying(255),
    "outlettype" character varying(255),
    "shortname" character varying(255),
    "c_sfa_doc_code" character varying(255),
    "c_sfa_div_code" character varying(255),
    "c_sfa_doc_grade" character varying(255),
    "c_sfa_doc_qualification" character varying(255),
    "c_sfa_doc_category" character varying(255),
    "c_sfa_doc_subarea" character varying(255),
    "c_sfa_doc_product" character varying(255),
    "c_sfa_doc_class" character varying(255),
    "c_sfa_chem_code" character varying(255),
    "c_sfa_chem_city" character varying(255),
    "c_sfa_chem_state" character varying(255),
    "c_sfa_chem_subarea" character varying(255),
    "c_sfa_chem_grade" character varying(255),
    "c_sfa_visit_type" character varying(50),
    "c_sfa_StoreType" character varying(100),
    "excelname" character varying(500),
    "c_sfa_outlet_type" character varying(50),
    "doccity" character varying(255),
    "docstate" character varying(255),
    "speciality" character varying(100),
    "noofpatients" character varying(100),
    "currentbusiness" character varying(150),
    "businespotential" character varying(150),
    "doctorpotential" character varying(150),
    "isdoctorpurchase" character varying(150),
    "isdoctorprescribe" character varying(150),
    "child1name" character varying(150),
    "child2name" character varying(150),
    "child3name" character varying(150),
    "child1dob" timestamp without time zone,
    "child2dob" timestamp without time zone,
    "child3dob" timestamp without time zone,
    "pannumber" character varying(255),
    "hosname" character varying(255),
    "hosstreet" character varying(255),
    "hosarea" character varying(255),
    "hosland" character varying(255),
    "hoscity" character varying(255),
    "hosstate" character varying(255),
    "hospin" character varying(255),
    "c_sfa_speciality" character varying(100),
    "c_sfa_noofpatients" character varying(100),
    "c_sfa_hosname" character varying(100),
    "fridge" character varying(50),
    "windowsize" character varying(50),
    "storemanager" character varying(100),
    "storeclassification" character varying(100),
    "storetype" character varying(150),
    "distributor" character varying(150),
    "agreementdate" timestamp without time zone,
    "totaldiscountperc" character varying(150),
    "fromdate" timestamp without time zone,
    "todate" timestamp without time zone,
    "account" character varying(150),
    "hostelfacility" character varying(150),
    "noofcanteens" character varying(150),
    "canteencontractorname" character varying(150),
    "canteencontractoraddress" character varying(200),
    "c_sfa_storeclassification" character varying(100),
    "c_sfa_Distributor" character varying(100),
    "c_sfa_Account" character varying(100)
);

CREATE TABLE "tbl_Document_Designation" (
    "C_Doc_Code" character varying(50),
    "C_Des_Code" character varying(50)
);

CREATE TABLE "tbl_DrCategory_Division_Mapping" (
    "C_CatCode" character varying(100),
    "C_Division" character varying(200)
);

CREATE TABLE "tbl_DrDuplication_Group" (
    "c_GroupDr" character varying(20),
    "c_drcode" character varying(20),
    "n_status" integer,
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "n_sort" integer
);

CREATE TABLE "tbl_DrDuplication_Group_Unique" (
    "c_GroupDr" character varying(20),
    "c_drcode" character varying(20),
    "n_status" integer,
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "n_sort" integer
);

CREATE TABLE "tbl_DrGrade_Division_Mapping" (
    "C_GradeCode" character varying(100),
    "C_Division" character varying(200)
);

CREATE TABLE "tbl_DrUpdateRequestSetup_Mst" (
    "n_SetupId" integer NOT NULL DEFAULT nextval('"tbl_DrUpdateRequestSetup_Mst_n_SetupId_seq"'::regclass),
    "c_setupname" character varying(200),
    "d_datefrom" timestamp without time zone,
    "d_dateto" timestamp without time zone,
    "n_deleted" integer DEFAULT 0,
    "d_created" timestamp without time zone,
    "n_default" integer,
    "n_mandatory" integer,
    "n_defaultclosingdt" integer
);

CREATE TABLE "tbl_DrUpdateRequest_DivRegMapping" (
    "n_SetupId" bigint,
    "c_RegionCode" character varying(50),
    "c_divcode" character varying(50)
);

CREATE TABLE "tbl_Dr_confirmationSetup_mst" (
    "C_Code" character varying(20) NOT NULL,
    "C_Name" character varying(500) NOT NULL,
    "N_Type" integer,
    "n_deleted" integer DEFAULT 0,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "n_status" integer
);

CREATE TABLE "tbl_Dwr_CType_Details" (
    "n_srno" numeric,
    "n_CType_Code" bigint,
    "c_CTopic_Code" character varying(10),
    "c_KOL_Details" character varying(100),
    "c_Qualification" character varying(100),
    "c_VillageName" character varying(1000),
    "n_NumPatients" integer,
    "c_Footfalls" character varying(3),
    "n_Footfalls" integer,
    "n_noofcards" integer,
    "n_rowid" integer NOT NULL DEFAULT nextval('"tbl_Dwr_CType_Details_n_rowid_seq"'::regclass),
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_Dwr_CType_Details_log" (
    "n_srno" numeric,
    "n_CType_Code" bigint,
    "c_CTopic_Code" character varying(10),
    "c_KOL_Details" character varying(100),
    "c_Qualification" character varying(100),
    "c_VillageName" character varying(100),
    "n_NumPatients" integer,
    "c_Footfalls" character varying(3),
    "n_Footfalls" integer,
    "n_noofcards" integer,
    "n_rowid" bigint NOT NULL
);

CREATE TABLE "tbl_Dwr_Edit_History" (
    "n_id" integer NOT NULL DEFAULT nextval('"tbl_Dwr_Edit_History_n_id_seq"'::regclass),
    "n_dcrno" numeric,
    "d_EditDate" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_table" character varying(10),
    "c_action" character varying(50)
);

CREATE TABLE "tbl_DynamicRoleMasterSetup" (
    "Id" integer NOT NULL,
    "TableName" character varying(100),
    "Header" character varying(150),
    "Priority" integer NOT NULL,
    "ColumnName" character varying(50),
    "LabelDisplay" character varying(150),
    "ValueType" character varying(50),
    "Visible" boolean,
    "DefaultValue" character varying(50),
    "DefaultValueEvent" character varying(50),
    "Mandatory" boolean,
    "DisplayType" character varying(50),
    "DisplayValue" text,
    "DisplayName" character varying(50),
    "ReadOnly" boolean,
    "AjaxBehaviour" boolean,
    "TriggerOnFieldChange" character varying(50),
    "SqlQuery" character varying(5000),
    "AutoCode" character varying(50),
    "CodeLength" character varying(50),
    "Prefix" character varying(50),
    "RegularExpression" text,
    "ControlID" character varying(50),
    "Event" character varying(20),
    "OnLoad" boolean,
    "OnChangeQuery" character varying(5000),
    "P_key" boolean,
    "TextType" character varying(10),
    "RequiredInList" boolean,
    "NumericLength" character varying(10),
    "FilterColumn" character varying(200),
    "JoinCondition" character varying(7000),
    "RequiredToSave" boolean,
    "FilterOperator" character varying(3),
    "ControlText" character varying(1000),
    "ControlTextQuery" character varying(5000),
    "ErrorMsg" character varying(200),
    "groupid" integer DEFAULT 0,
    "ListCondition" character varying(250),
    "DetailsTableName" text,
    "n_DetailsTable_flag" integer,
    "PK_alias_name" character varying(100),
    "n_modifier" integer DEFAULT 0,
    "n_NameOrShName" integer,
    "n_Validator" integer NOT NULL DEFAULT 0,
    "Validator" character varying(100),
    "TargetValidator" character varying(1000),
    "RequiredToupdate" integer,
    "n_order" integer,
    "n_combination" integer NOT NULL DEFAULT 0,
    "n_editQuery" integer NOT NULL DEFAULT 0,
    "editQuery" text,
    "EditFilterColumn" character varying(1000),
    "N_Split" integer,
    "Split_char" character varying(10),
    "N_from_Master" integer,
    "Requiredupdate" integer DEFAULT 0,
    "Requiredsave" integer DEFAULT 0,
    "N_role" integer,
    "n_pop_up" integer NOT NULL DEFAULT 0,
    "LabelDisplay2" character varying(100),
    "C_SqlParameter" character varying(200),
    "n_dsca_type" integer
);

CREATE TABLE "tbl_Dynamic_Compare_Master" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Dynamic_Compare_Master_n_srno_seq"'::regclass),
    "c_name" character varying(200),
    "c_description" character varying(2000),
    "n_status" boolean DEFAULT false,
    "d_createdon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_createdby" character varying(50),
    "d_modifiedon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_modifiedby" character varying(50)
);

CREATE TABLE "tbl_Dynamic_Control_Category_Master" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Dynamic_Control_Category_Master_n_srno_seq"'::regclass),
    "c_name" character varying(200) NOT NULL,
    "c_description" character varying(2000),
    "n_status" boolean DEFAULT false,
    "d_createdon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_createdby" character varying(50),
    "d_modifiedon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_modifiedby" character varying(50)
);

CREATE TABLE "tbl_Dynamic_Control_Compare_Table" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Dynamic_Control_Compare_Table_n_srno_seq"'::regclass),
    "n_control_id" numeric,
    "n_report_id" numeric,
    "n_compare_control_id" numeric,
    "n_compare_type_id" integer,
    "c_maxdiff" character varying(500),
    "c_mindiff" character varying(500),
    "n_status" boolean DEFAULT false,
    "d_createdon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_createdby" character varying(50),
    "d_modifiedon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_modifiedby" character varying(50)
);

CREATE TABLE "tbl_Dynamic_Control_Custom_Default_Data" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Dynamic_Control_Custom_Default_Data_n_srno_seq"'::regclass),
    "n_control_map_id" integer,
    "c_text" character varying(500),
    "c_value" character varying(500),
    "n_sortorder" integer,
    "n_status" boolean DEFAULT false,
    "d_createdon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_createdby" character varying(50),
    "d_modifiedon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_modifiedby" character varying(50)
);

CREATE TABLE "tbl_Dynamic_Control_Default_Data" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Dynamic_Control_Default_Data_n_srno_seq"'::regclass),
    "n_control_id" integer,
    "c_text" character varying(500),
    "c_value" character varying(500),
    "n_sortorder" integer,
    "n_status" boolean DEFAULT false,
    "d_createdon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_createdby" character varying(50),
    "d_modifiedon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_modifiedby" character varying(50)
);

CREATE TABLE "tbl_Dynamic_Control_Dependency" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Dynamic_Control_Dependency_n_srno_seq"'::regclass),
    "n_control_id" integer,
    "n_dependent_control_id" integer,
    "n_report_id" numeric,
    "n_status" boolean DEFAULT false,
    "d_createdon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_createdby" character varying(50),
    "d_modifiedon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_modifiedby" character varying(50)
);

CREATE TABLE "tbl_Dynamic_Control_Types_Master" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Dynamic_Control_Types_Master_n_srno_seq"'::regclass),
    "c_name" character varying(200) NOT NULL,
    "c_description" character varying(2000),
    "n_datatype_id" integer,
    "n_status" boolean DEFAULT false,
    "d_createdon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_createdby" character varying(50),
    "d_modifiedon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_modifiedby" character varying(50)
);

CREATE TABLE "tbl_Dynamic_Control_Validation_Details" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Dynamic_Control_Validation_Details_n_srno_seq"'::regclass),
    "n_control_id" numeric,
    "n_report_id" numeric,
    "n_validation_type_id" integer,
    "n_validation_entity_id" integer,
    "c_validation_text" character varying(2000),
    "n_status" boolean DEFAULT false,
    "d_createdon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_createdby" character varying(50),
    "d_modifiedon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_modifiedby" character varying(50)
);

CREATE TABLE "tbl_Dynamic_Controls" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Dynamic_Controls_n_srno_seq"'::regclass),
    "c_name" character varying(200),
    "c_description" character varying(2000),
    "c_display_Label" character varying(200),
    "n_control_datatype_id" integer,
    "n_control_type_id" integer,
    "n_control_category_id" integer,
    "n_ismandatory" boolean,
    "c_placeholder" character varying(200),
    "c_default_text" character varying(200),
    "c_default_value" character varying(200),
    "c_query" character varying(2000),
    "c_parameter" character varying(500),
    "c_text_column" character varying(200),
    "c_value_column" character varying(200),
    "c_min_value" character varying(200),
    "c_max_value" character varying(200),
    "c_validationlevel" character varying(500),
    "c_comparelevel" character varying(500),
    "c_dependentlevel" character varying(500),
    "n_status" boolean DEFAULT false,
    "d_createdon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_createdby" character varying(50),
    "d_modifiedon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_modifiedby" character varying(50),
    "n_case_sensitivity" integer
);

CREATE TABLE "tbl_Dynamic_Controls_bck" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Dynamic_Controls_bck_n_srno_seq"'::regclass),
    "c_name" character varying(200),
    "c_description" character varying(2000),
    "c_display_Label" character varying(200),
    "n_control_datatype_id" integer,
    "n_control_type_id" integer,
    "n_control_category_id" integer,
    "n_ismandatory" boolean,
    "c_placeholder" character varying(200),
    "c_default_text" character varying(200),
    "c_default_value" character varying(200),
    "c_query" character varying(2000),
    "c_parameter" character varying(500),
    "c_text_column" character varying(200),
    "c_value_column" character varying(200),
    "c_min_value" character varying(200),
    "c_max_value" character varying(200),
    "c_validationlevel" character varying(500),
    "c_comparelevel" character varying(500),
    "c_dependentlevel" character varying(500),
    "n_status" boolean,
    "d_createdon" timestamp without time zone,
    "c_createdby" character varying(50),
    "d_modifiedon" timestamp without time zone,
    "c_modifiedby" character varying(50)
);

CREATE TABLE "tbl_Dynamic_Controls_bck_new" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Dynamic_Controls_bck_new_n_srno_seq"'::regclass),
    "c_name" character varying(200),
    "c_description" character varying(2000),
    "c_display_Label" character varying(200),
    "n_control_datatype_id" integer,
    "n_control_type_id" integer,
    "n_control_category_id" integer,
    "n_ismandatory" boolean,
    "c_placeholder" character varying(200),
    "c_default_text" character varying(200),
    "c_default_value" character varying(200),
    "c_query" character varying(2000),
    "c_parameter" character varying(500),
    "c_text_column" character varying(200),
    "c_value_column" character varying(200),
    "c_min_value" character varying(200),
    "c_max_value" character varying(200),
    "c_validationlevel" character varying(500),
    "c_comparelevel" character varying(500),
    "c_dependentlevel" character varying(500),
    "n_status" boolean,
    "d_createdon" timestamp without time zone,
    "c_createdby" character varying(50),
    "d_modifiedon" timestamp without time zone,
    "c_modifiedby" character varying(50)
);

CREATE TABLE "tbl_Dynamic_DataType_Master" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Dynamic_DataType_Master_n_srno_seq"'::regclass),
    "c_name" character varying(200),
    "c_description" character varying(2000),
    "n_status" boolean DEFAULT false,
    "d_createdon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_createdby" character varying(50),
    "d_modifiedon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_modifiedby" character varying(50)
);

CREATE TABLE "tbl_Dynamic_RegEx_Expressions_Master" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Dynamic_RegEx_Expressions_Master_n_srno_seq"'::regclass),
    "c_name" character varying(200),
    "c_description" character varying(2000),
    "c_expressions" character varying(1000),
    "n_status" boolean DEFAULT false,
    "d_createdon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_createdby" character varying(50),
    "d_modifiedon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_modifiedby" character varying(50)
);

CREATE TABLE "tbl_Dynamic_Report_Controls" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Dynamic_Report_Controls_n_srno_seq"'::regclass),
    "n_report_id" numeric,
    "n_control_id" numeric,
    "c_control_mode" character varying(200),
    "c_display_Label" character varying(200),
    "n_control_datatype_id" integer,
    "n_control_type_id" integer,
    "n_control_category_id" integer,
    "n_ismandatory" boolean,
    "c_placeholder" character varying(200),
    "c_default_text" character varying(200),
    "c_default_value" character varying(200),
    "c_query" text,
    "c_parameter" character varying(500),
    "c_text_column" character varying(200),
    "c_value_column" character varying(200),
    "c_min_value" character varying(200),
    "c_max_value" character varying(200),
    "c_validationlevel" character varying(500),
    "c_comparelevel" character varying(500),
    "c_dependentlevel" character varying(500),
    "n_status" boolean DEFAULT false,
    "d_createdon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_createdby" character varying(50),
    "d_modifiedon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_modifiedby" character varying(50),
    "n_case_sensitivity" integer
);

CREATE TABLE "tbl_Dynamic_Report_Master" (
    "n_srno" numeric NOT NULL,
    "n_menu_id" integer,
    "c_code" character varying(50),
    "c_name" character varying(500),
    "c_description" character varying(2000),
    "n_report_head_type" boolean,
    "c_report_head_display_text" character varying(2000),
    "n_columns_cnt" integer,
    "c_column_names" text,
    "c_query" text,
    "c_parameters" text,
    "n_page_default_rows_cnt" integer,
    "n_parent_srno" numeric,
    "n_status" boolean,
    "d_createdon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_createdby" character varying(50),
    "d_modifiedon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_modifiedby" character varying(50),
    "c_columns_type" character varying(200),
    "n_isCSV" smallint DEFAULT '1'::smallint,
    "n_isDirectView" boolean DEFAULT false,
    "c_additional_note" text,
    "n_id" integer NOT NULL DEFAULT nextval('"tbl_Dynamic_Report_Master_n_id_seq"'::regclass)
);

CREATE TABLE "tbl_Dynamic_Report_Master_bck" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Dynamic_Report_Master_bck_n_srno_seq"'::regclass),
    "n_menu_id" integer,
    "c_code" character varying(50),
    "c_name" character varying(500),
    "c_description" character varying(2000),
    "n_report_head_type" boolean,
    "c_report_head_display_text" character varying(2000),
    "n_columns_cnt" integer,
    "c_column_names" text,
    "c_query" text,
    "c_parameters" text,
    "n_page_default_rows_cnt" integer,
    "n_parent_srno" numeric,
    "n_status" boolean,
    "d_createdon" timestamp without time zone,
    "c_createdby" character varying(50),
    "d_modifiedon" timestamp without time zone,
    "c_modifiedby" character varying(50),
    "c_columns_type" character varying(200),
    "n_isCSV" smallint,
    "n_isDirectView" boolean,
    "c_additional_note" text
);

CREATE TABLE "tbl_Dynamic_Report_Master_bck_new" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Dynamic_Report_Master_bck_new_n_srno_seq"'::regclass),
    "n_menu_id" integer,
    "c_code" character varying(50),
    "c_name" character varying(500),
    "c_description" character varying(2000),
    "n_report_head_type" boolean,
    "c_report_head_display_text" character varying(2000),
    "n_columns_cnt" integer,
    "c_column_names" text,
    "c_query" text,
    "c_parameters" text,
    "n_page_default_rows_cnt" integer,
    "n_parent_srno" numeric,
    "n_status" boolean,
    "d_createdon" timestamp without time zone,
    "c_createdby" character varying(50),
    "d_modifiedon" timestamp without time zone,
    "c_modifiedby" character varying(50),
    "c_columns_type" character varying(200),
    "n_isCSV" smallint,
    "n_isDirectView" boolean,
    "c_additional_note" text
);

CREATE TABLE "tbl_Dynamic_Report_View" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Dynamic_Report_View_n_srno_seq"'::regclass),
    "n_report_id" numeric,
    "n_columns_cnt" integer,
    "c_column_names" text,
    "c_column_type" character varying(200),
    "n_report_head_type" boolean,
    "c_report_header_text" text,
    "c_query" text,
    "c_parameters" text,
    "n_parent_srno" numeric,
    "c_payload" text,
    "n_page_default_rows_cnt" integer,
    "d_viewedon" timestamp without time zone,
    "d_downlodedon" timestamp without time zone,
    "c_created_by" character varying(50),
    "c_created_on" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_Dynamic_Report_View_Data" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Dynamic_Report_View_Data_n_srno_seq"'::regclass),
    "n_report_view_id" numeric,
    "c_column_1" text,
    "c_column_2" text,
    "c_column_3" text,
    "c_column_4" text,
    "c_column_5" text,
    "c_column_6" text,
    "c_column_7" text,
    "c_column_8" text,
    "c_column_9" text,
    "c_column_10" text,
    "c_column_11" text,
    "c_column_12" text,
    "c_column_13" text,
    "c_column_14" text,
    "c_column_15" text,
    "c_column_16" text,
    "c_column_17" text,
    "c_column_18" text,
    "c_column_19" text,
    "c_column_20" text,
    "c_column_21" text,
    "c_column_22" text,
    "c_column_23" text,
    "c_column_24" text,
    "c_column_25" text,
    "c_column_26" text,
    "c_column_27" text,
    "c_column_28" text,
    "c_column_29" text,
    "c_column_30" text,
    "c_column_31" text,
    "c_column_32" text,
    "c_column_33" text,
    "c_column_34" text,
    "c_column_35" text,
    "c_column_36" text,
    "c_column_37" text,
    "c_column_38" text,
    "c_column_39" text,
    "c_column_40" text,
    "c_column_41" text,
    "c_column_42" text,
    "c_column_43" text,
    "c_column_44" text,
    "c_column_45" text,
    "c_column_46" text,
    "c_column_47" text,
    "c_column_48" text,
    "c_column_49" text,
    "c_column_50" text,
    "c_column_51" text,
    "c_column_52" text,
    "c_column_53" text,
    "c_column_54" text,
    "c_column_55" text,
    "c_column_56" text,
    "c_column_57" text,
    "c_column_58" text,
    "c_column_59" text,
    "c_column_60" text,
    "c_column_61" text,
    "c_column_62" text,
    "c_column_63" text,
    "c_column_64" text,
    "c_column_65" text,
    "c_column_66" text,
    "c_column_67" text,
    "c_column_68" text,
    "c_column_69" text,
    "c_column_70" text,
    "c_column_71" text,
    "c_column_72" text,
    "c_column_73" text,
    "c_column_74" text,
    "c_column_75" text,
    "d_createdon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_createdby" character varying(50)
);

CREATE TABLE "tbl_Dynamic_Reprot_Details" (
    "n_id" integer NOT NULL DEFAULT nextval('"tbl_Dynamic_Reprot_Details_n_id_seq"'::regclass),
    "n_reportId" integer,
    "n_columnIndex" integer,
    "c_description" character varying(200),
    "c_displayName" character varying(200),
    "n_visibility" smallint,
    "n_sortEnabled" smallint,
    "c_columnFormat" character varying(100),
    "c_displayFormatText" character varying(200),
    "c_displayCustomFormat" character varying(200),
    "c_columnMode" character varying(100),
    "c_relatedColumns" character varying(200),
    "n_alternateIndex" integer
);

CREATE TABLE "tbl_Dynamic_Validation_Type_Master" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Dynamic_Validation_Type_Master_n_srno_seq"'::regclass),
    "c_name" character varying(200) NOT NULL,
    "c_description" character varying(2000),
    "n_status" boolean DEFAULT false,
    "d_createdon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_createdby" character varying(50),
    "d_modifiedon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_modifiedby" character varying(50)
);

CREATE TABLE "tbl_Dynamic_report_Controls_bck_new" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Dynamic_report_Controls_bck_new_n_srno_seq"'::regclass),
    "n_report_id" numeric,
    "n_control_id" numeric,
    "c_control_mode" character varying(200),
    "c_display_Label" character varying(200),
    "n_control_datatype_id" integer,
    "n_control_type_id" integer,
    "n_control_category_id" integer,
    "n_ismandatory" boolean,
    "c_placeholder" character varying(200),
    "c_default_text" character varying(200),
    "c_default_value" character varying(200),
    "c_query" character varying(2000),
    "c_parameter" character varying(500),
    "c_text_column" character varying(200),
    "c_value_column" character varying(200),
    "c_min_value" character varying(200),
    "c_max_value" character varying(200),
    "c_validationlevel" character varying(500),
    "c_comparelevel" character varying(500),
    "c_dependentlevel" character varying(500),
    "n_status" boolean,
    "d_createdon" timestamp without time zone,
    "c_createdby" character varying(50),
    "d_modifiedon" timestamp without time zone,
    "c_modifiedby" character varying(50)
);

CREATE TABLE "tbl_Edetail_File_Download_Data" (
    "n_Id" integer NOT NULL DEFAULT nextval('"tbl_Edetail_File_Download_Data_n_Id_seq"'::regclass),
    "c_fscode" character varying(50),
    "c_empcode" character varying(50),
    "c_filename" character varying(1000),
    "n_filesize" numeric,
    "d_downloadStartdate" timestamp without time zone,
    "d_downloadEnddate" timestamp without time zone,
    "c_downloadspeed" character varying(50),
    "c_Downloadtype" character varying(20),
    "c_ip" character varying(50)
);

CREATE TABLE "tbl_Edetail_VisualAid_approval" (
    "n_title_code" numeric NOT NULL,
    "d_date" timestamp without time zone,
    "c_status" character varying(5),
    "c_note" character varying(250),
    "c_enteredbyempcode" character varying(20) NOT NULL,
    "c_enteredbyfscode" character varying(20) NOT NULL,
    "n_reject_type" integer,
    "n_fsType" integer,
    "c_AprSts" character varying(20)
);

CREATE TABLE "tbl_Edetail_VisualAid_approval_new" (
    "n_title_code" numeric NOT NULL,
    "d_date" timestamp without time zone,
    "c_status" character varying(5),
    "c_note" character varying(250),
    "c_enteredbyempcode" character varying(20) NOT NULL,
    "c_enteredbyfscode" character varying(20) NOT NULL,
    "n_reject_type" integer,
    "n_fsType" integer,
    "c_AprSts" character varying(20),
    "n_hist_srno" bigint
);

CREATE TABLE "tbl_Edetail_VisualAid_approval_old" (
    "n_title_code" numeric NOT NULL,
    "d_date" timestamp without time zone,
    "c_status" character varying(5),
    "c_note" character varying(250),
    "c_enteredbyempcode" character varying(20) NOT NULL,
    "c_enteredbyfscode" character varying(20) NOT NULL,
    "n_reject_type" integer,
    "n_fsType" integer,
    "c_AprSts" character varying(20),
    "n_hist_srno" bigint
);

CREATE TABLE "tbl_Emp_LeaveDetails" (
    "N_srno" integer NOT NULL,
    "n_LeaveTypeId" integer NOT NULL,
    "n_MaxLimit" integer,
    "n_CF" integer,
    "n_CFLimit" integer,
    "n_EnCash" integer,
    "n_EnLimit" integer,
    "n_total_leave_limit" integer,
    "n_display_report" integer DEFAULT 0
);

CREATE TABLE "tbl_EventPlaner_mst" (
    "c_code" character varying(10) NOT NULL,
    "c_name" character varying(100),
    "c_division" text,
    "c_region" text,
    "n_status" numeric,
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "d_EventDate" timestamp without time zone NOT NULL
);

CREATE TABLE "tbl_ExpClaimFormat_MultiApproval" (
    "n_SetupNo" bigint,
    "n_HeirarchyType" integer
);

CREATE TABLE "tbl_ExpenceClaim_PrpRps" (
    "N_Srno" integer,
    "N_PRPRPS" numeric NOT NULL,
    "C_Event" character varying(50) NOT NULL,
    "N_ActualExpence" numeric NOT NULL DEFAULT '0'::numeric,
    "N_AdvanceReceived" numeric NOT NULL DEFAULT '0'::numeric,
    "N_AddRecovery" numeric
);

CREATE TABLE "tbl_Expense_LockActivation" (
    "c_fs_code" character varying(20) NOT NULL,
    "d_ExpPeriod_From" timestamp without time zone,
    "d_ExpPeriod_To" timestamp without time zone,
    "d_ExpEntryExtended_From" timestamp without time zone,
    "d_ExpEntryExtended_To" timestamp without time zone,
    "c_Remark" character varying(500),
    "c_ModifiedBy" character varying(20),
    "d_Modified" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_Expense_LockActivation_log" (
    "c_fs_code" character varying(20) NOT NULL,
    "d_ExpPeriod_From" timestamp without time zone,
    "d_ExpPeriod_To" timestamp without time zone,
    "d_ExpEntryExtended_From" timestamp without time zone,
    "d_ExpEntryExtended_To" timestamp without time zone,
    "c_Remark" character varying(500),
    "c_ModifiedBy" character varying(20),
    "d_Modified" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_ExportReport_Tables_mst" (
    "n_id" integer NOT NULL,
    "c_Name" character varying(500),
    "n_active" integer,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_FileNameStartsWith" character varying(1000)
);

CREATE TABLE "tbl_Food_Master" (
    "c_code" character varying(20) NOT NULL,
    "c_name" character varying(50),
    "n_deleted" integer DEFAULT 0,
    "n_status" integer,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10)
);

CREATE TABLE "tbl_FsWisecallavg_report_log" (
    "DB" character varying(100),
    "StartTime" timestamp without time zone,
    "EndTime" timestamp without time zone,
    "Month" integer,
    "Year" integer
);

CREATE TABLE "tbl_Fscode_DrToDisplay_Mapping" (
    "c_fscode" character varying(10) NOT NULL
);

CREATE TABLE "tbl_Fscode_DrToDisplay_Mapping_Det" (
    "fscode" character varying(50),
    "c_grade" text,
    "d_modified" timestamp without time zone,
    "c_modifiedby" character varying(20)
);

CREATE TABLE "tbl_Fswisecallavg_Report_Error_Log" (
    "DB" character varying(150),
    "Date" timestamp without time zone,
    "ErrorNumber" integer,
    "ErrorSeverity" integer,
    "ErrorState" integer,
    "ErrorProcedure" character varying(128),
    "ErrorLine" integer,
    "ErrorMessage" character varying(4000)
);

CREATE TABLE "tbl_Gadget_SetUp" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Gadget_SetUp_n_srno_seq"'::regclass),
    "C_User_Code" character varying(10),
    "C_Gadget_Code" character varying(10),
    "n_Column_ID" integer,
    "n_Sort_No" integer,
    "n_Collapsed" integer DEFAULT 0,
    "n_Deleted" integer DEFAULT 0
);

CREATE TABLE "tbl_Grade_Mst" (
    "c_code" character varying(10) NOT NULL,
    "c_name" character varying(50) NOT NULL,
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10)
);

CREATE TABLE "tbl_Hit_Count" (
    "c_userid" character varying(20) NOT NULL,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "n_menuid" integer,
    "D_LOG_OUT" timestamp without time zone,
    "c_ip" character varying(20),
    "c_browser" character varying(100),
    "c_lattitude" character varying(100),
    "c_longitude" character varying(100),
    "c_deviceID" character varying(500),
    "c_DeviceType" character varying(500),
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Hit_Count_n_srno_seq"'::regclass),
    "c_imei" character varying(20),
    "c_TKey" character varying(50),
    "c_TKeyLoginHappend" integer
);

CREATE TABLE "tbl_Holiday_Emp_Map_Det" (
    "n_id" integer,
    "c_code" character varying(50)
);

CREATE TABLE "tbl_Holiday_Emp_Map_Mst" (
    "n_id" integer NOT NULL DEFAULT nextval('"tbl_Holiday_Emp_Map_Mst_n_id_seq"'::regclass),
    "n_holidaytype" integer,
    "d_holidaydate" timestamp without time zone,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "c_createdby" character varying(50)
);

CREATE TABLE "tbl_HospitalMaster" (
    "n_id" integer NOT NULL DEFAULT nextval('"tbl_HospitalMaster_n_id_seq"'::regclass),
    "n_speciality_id" character varying(10) NOT NULL,
    "c_speciality_name" character varying(100) NOT NULL,
    "n_status" integer NOT NULL DEFAULT 1,
    "c_created_by" character varying(50),
    "d_created_on" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_ImageUploadSettings" (
    "n_id" integer NOT NULL DEFAULT nextval('"tbl_ImageUploadSettings_n_id_seq"'::regclass),
    "c_Desc" character varying(200),
    "c_filepath" text,
    "n_flag" integer,
    "c_Foldername" character varying(100),
    "c_indexno" character varying(100)
);

CREATE TABLE "tbl_Institution_type" (
    "c_code" character varying(20) NOT NULL,
    "c_name" character varying(50),
    "n_active" integer NOT NULL DEFAULT 0,
    "n_deleted" integer NOT NULL DEFAULT 0
);

CREATE TABLE "tbl_Itemtrget_Grp_Map" (
    "c_item_code" character varying(10),
    "c_group_code" character varying(10),
    "d_date_from" timestamp without time zone,
    "d_date_to" timestamp without time zone
);

CREATE TABLE "tbl_Kam_Mst" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "N_Type" numeric NOT NULL,
    "C_Grade" character(10),
    "C_Qualification" character varying(30),
    "C_Add_1" character varying(50),
    "C_Add_2" character varying(50),
    "C_Add_3" character varying(50),
    "C_Add_4" character varying(50),
    "C_Pin" character(10),
    "C_Phone" character(20),
    "C_Fax" character(20),
    "C_Category" character(10),
    "C_Area_Code" character varying(10) NOT NULL,
    "C_Parent" character(10),
    "C_EmpNo" character varying(10) NOT NULL,
    "C_Desc" character varying(50),
    "D_DOB" timestamp without time zone,
    "D_DOJ" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "n_Status" integer,
    "C_Email_ID" character varying(50),
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "N_ptype" integer,
    "c_div_code" character varying(25)
);

CREATE TABLE "tbl_Kam_User_Access" (
    "N_Type" numeric NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "c_sh_name" character varying(20),
    "n_CI_FLag" smallint,
    "n_fs_flag" smallint,
    "c_gadgetcode" character varying(50)
);

CREATE TABLE "tbl_LBLDoc_MailStatus" (
    "n_id" integer NOT NULL DEFAULT nextval('"tbl_LBLDoc_MailStatus_n_id_seq"'::regclass),
    "c_doc_Code" character varying(50),
    "c_Doc_Mailid" character varying(300),
    "C_FromId" character varying(300),
    "n_status" integer DEFAULT 0,
    "d_starttime" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "d_endtime" timestamp without time zone,
    "C_FileNames" character varying(500),
    "C_ErroMessage" text
);

CREATE TABLE "tbl_LeaveApprovalSetUp" (
    "Id" numeric NOT NULL,
    "N_Type" integer,
    "C_Code" character(10),
    "n_lock_days" integer,
    "n_status" integer,
    "n_fstype" integer
);

CREATE TABLE "tbl_LeaveDetails_PL_EL_Leave" (
    "n_srno" integer,
    "n_aftredaysreport" integer,
    "n_creditsleave_days" integer,
    "n_Compensation_Leave" integer,
    "n_B15" numeric,
    "n_A15" numeric
);

CREATE TABLE "tbl_Leave_Direct_approval_setup" (
    "n_id" integer NOT NULL DEFAULT nextval('"tbl_Leave_Direct_approval_setup_n_id_seq"'::regclass),
    "c_region_code" character varying(50),
    "c_div_code" character varying(50),
    "N_leave_type" integer,
    "n_deleted" integer DEFAULT 0,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "C_ModifiedBy" character varying(50)
);

CREATE TABLE "tbl_Log_FSPARENTChk" (
    "c_spname" character varying(500),
    "c_paramenters" text,
    "d_Date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_Login_Email_SendDetails" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Login_Email_SendDetails_n_srno_seq"'::regclass),
    "n_referenceid" integer NOT NULL,
    "c_tomailids" character varying(1000),
    "d_send_on" timestamp without time zone,
    "c_status" character varying(20),
    "c_error" character varying(1000)
);

CREATE TABLE "tbl_Login_Email_ToSend" (
    "n_id" integer NOT NULL DEFAULT nextval('"tbl_Login_Email_ToSend_n_id_seq"'::regclass),
    "c_fscode" character varying(50),
    "d_logindate" timestamp without time zone,
    "d_serverupdateddate" timestamp without time zone
);

CREATE TABLE "tbl_MFAC_Mst" (
    "C_code" character varying(10) NOT NULL,
    "c_name" character varying(150),
    "Address" character varying(150),
    "Address1" character varying(150),
    "City_code" character varying(50),
    "State_code" character varying(50),
    "Pin" character varying(10),
    "Phone" character varying(15),
    "Active" integer,
    "TIN_NO" character varying(25),
    "LIC_NO" character varying(25),
    "C_contact_person" character varying(100),
    "n_delete" integer,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(20)
);

CREATE TABLE "tbl_MTP_Change_request_Android" (
    "N_Srno" integer NOT NULL DEFAULT nextval('"tbl_MTP_Change_request_Android_N_Srno_seq"'::regclass),
    "c_Fs_Code" character varying(50),
    "D_FromDate" timestamp without time zone,
    "D_ToDate" timestamp without time zone,
    "c_Subarea_from" character varying(50),
    "c_Subarea_to" character varying(50),
    "C_Reason" character varying(300),
    "d_Reqdate" timestamp without time zone,
    "d_UploadedDate" timestamp without time zone,
    "c_Status" character varying(5)
);

CREATE TABLE "tbl_MTP_Change_request_Android_details" (
    "N_Srno" integer NOT NULL,
    "c_doccode_From" character varying(50),
    "c_doccode_to" character varying(50)
);

CREATE TABLE "tbl_MTP_SubareChange_request_Android" (
    "c_fsCode" character varying(50),
    "d_mtpdate" timestamp without time zone,
    "c_from_Beat" character varying(50),
    "c_to_Beat" character varying(50),
    "c_reason" character varying(1000),
    "d_reqdate" timestamp without time zone,
    "d_serverupdateddate" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_status" character varying(5),
    "n_id" integer NOT NULL DEFAULT nextval('"tbl_MTP_SubareChange_request_Android_n_id_seq"'::regclass)
);

CREATE TABLE "tbl_Manager_doc_Mapping" (
    "c_cust_code" character varying(10) NOT NULL,
    "c_fs_code" character varying(10) NOT NULL,
    "c_date_from" timestamp without time zone NOT NULL,
    "c_date_to" timestamp without time zone,
    "c_note" character varying(100),
    "c_created_by" character varying(10),
    "d_created_date" timestamp without time zone,
    "c_dr_map_fscode" character varying(50)
);

CREATE TABLE "tbl_MandatorySetup_Det" (
    "N_SrNo" integer NOT NULL,
    "C_SelectedItem" character varying(100) NOT NULL,
    "C_Type" character varying(50) NOT NULL
);

CREATE TABLE "tbl_MandatorySetup_Mst" (
    "N_SrNo" integer NOT NULL DEFAULT nextval('"tbl_MandatorySetup_Mst_N_SrNo_seq"'::regclass),
    "C_ReportType" character varying(50) NOT NULL,
    "C_DesType" character varying(50) NOT NULL,
    "C_Type" character varying(50) NOT NULL,
    "D_Date_From" date NOT NULL,
    "D_Date_to" date NOT NULL,
    "N_Delete" integer NOT NULL,
    "C_Create_Fs" character varying(50) NOT NULL,
    "D_Create_date" timestamp without time zone NOT NULL,
    "C_Update_Fs" character varying(50),
    "D_Update_Date" timestamp without time zone,
    "C_Division" character varying(50),
    "C_Region" character varying(50),
    "N_Designation" integer,
    "C_Fs_Code" character varying(150)
);

CREATE TABLE "tbl_Material_Dispatch_Detailss" (
    "n_srno" bigint NOT NULL,
    "c_dispatchmode" character varying(500),
    "d_dispatchdate" timestamp without time zone,
    "c_dispatchproof" character varying(500),
    "c_dispatchaddress" character varying(250),
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "n_dispatchflag" integer
);

CREATE TABLE "tbl_Material_Eligibility_Mst" (
    "c_code" character varying(10) NOT NULL,
    "c_grade" character varying(10) NOT NULL,
    "n_flag" smallint NOT NULL DEFAULT '0'::smallint,
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10)
);

CREATE TABLE "tbl_Material_Group_Mst" (
    "c_code" character varying(10) NOT NULL,
    "c_name" character varying(50) NOT NULL,
    "n_type" smallint NOT NULL DEFAULT '0'::smallint,
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10)
);

CREATE TABLE "tbl_Mkt_workWith_multiple" (
    "N_srno" numeric,
    "C_fscode_parent" character varying(10)
);

CREATE TABLE "tbl_Mob_Hit_Count" (
    "c_userid" character varying(20) NOT NULL,
    "d_created" timestamp without time zone,
    "n_menuid" integer,
    "D_LOG_OUT" timestamp without time zone,
    "c_ip" character varying(20)
);

CREATE TABLE "tbl_Mobile_Reports" (
    "c_Report_ID" character varying(50),
    "c_Report_Name" character varying(100),
    "c_Parameters" character varying(500),
    "c_Url" character varying(100)
);

CREATE TABLE "tbl_ModuleMst" (
    "n_srNo" integer NOT NULL,
    "C_Code" character varying(100) NOT NULL,
    "C_Name" character varying(300) NOT NULL,
    "C_CreateDate" timestamp without time zone,
    "C_Modified" timestamp without time zone,
    "C_Deleted" integer,
    "C_Type" character varying(100),
    "C_CreatedBy" character varying(100)
);

CREATE TABLE "tbl_ModuleMst_Det" (
    "n_srNo" integer NOT NULL,
    "C_Code" character varying(100) NOT NULL,
    "C_Name" character varying(300) NOT NULL,
    "n_type" character varying(100),
    "FS2" character varying(100),
    "FS3" character varying(100),
    "FS4" character varying(100),
    "FS5" character varying(100),
    "FS6" character varying(100),
    "FS7" character varying(100),
    "FS8" character varying(100),
    "FS9" character varying(100),
    "FS10" character varying(100),
    "FS11" character varying(100),
    "FS12" character varying(100),
    "FS13" character varying(100),
    "FS14" character varying(100),
    "FS15" character varying(100)
);

CREATE TABLE "tbl_ModuleMst_Det_Log" (
    "Id" integer NOT NULL DEFAULT nextval('"tbl_ModuleMst_Det_Log_Id_seq"'::regclass),
    "n_srNo" integer NOT NULL,
    "D_Modified_Date" timestamp without time zone NOT NULL,
    "FS2" character varying(100),
    "FS3" character varying(100),
    "FS4" character varying(100),
    "FS5" character varying(100),
    "FS6" character varying(100),
    "FS7" character varying(100),
    "FS8" character varying(100),
    "FS9" character varying(100),
    "FS10" character varying(100),
    "FS11" character varying(100),
    "FS12" character varying(100),
    "FS13" character varying(100),
    "FS14" character varying(100),
    "FS15" character varying(100)
);

CREATE TABLE "tbl_Monthly_Performance_Survey_feedback_mst" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Monthly_Performance_Survey_feedback_mst_n_srno_seq"'::regclass),
    "n_Survey_Srno" integer NOT NULL,
    "d_feedback_date" timestamp without time zone NOT NULL,
    "d_feedback_create_date" timestamp without time zone NOT NULL,
    "c_feedback_createBy" character varying(50) NOT NULL,
    "c_feedback_empcode" character varying(50) NOT NULL,
    "c_feedback_Fs_Code" character varying(50) NOT NULL,
    "c_feedback_Fs_Type" character varying(50) NOT NULL,
    "c_group" character varying(50) NOT NULL,
    "n_delete" character varying(50) NOT NULL
);

CREATE TABLE "tbl_Monthly_Performance_Survey_feedback_result" (
    "n_srno" integer NOT NULL,
    "c_code" character varying(100) NOT NULL,
    "c_answer" text NOT NULL,
    "c_TypeFormat" character varying(100) NOT NULL,
    "d_Survey_date" timestamp without time zone NOT NULL,
    "d_create_date" timestamp without time zone NOT NULL,
    "c_createBy" character varying(50) NOT NULL,
    "c_empcode" character varying(50) NOT NULL,
    "c_group" character varying(100)
);

CREATE TABLE "tbl_Monthly_Performance_Survey_result" (
    "n_srno" integer NOT NULL,
    "c_code" character varying(100) NOT NULL,
    "c_answer" text NOT NULL,
    "c_TypeFormat" character varying(100) NOT NULL,
    "d_Survey_date" timestamp without time zone NOT NULL,
    "d_create_date" timestamp without time zone NOT NULL,
    "c_createBy" character varying(50) NOT NULL,
    "c_empcode" character varying(50) NOT NULL,
    "c_group" character varying(100)
);

CREATE TABLE "tbl_Monthly_Performance_Survey_result_mst" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Monthly_Performance_Survey_result_mst_n_srno_seq"'::regclass),
    "d_Survey_date" timestamp without time zone NOT NULL,
    "d_create_date" timestamp without time zone NOT NULL,
    "c_createBy" character varying(50) NOT NULL,
    "c_empcode" character varying(50) NOT NULL,
    "c_Fs_Code" character varying(50) NOT NULL,
    "c_Fs_Type" character varying(50) NOT NULL,
    "c_group" character varying(50) NOT NULL,
    "n_delete" character varying(50) NOT NULL
);

CREATE TABLE "tbl_Moodle_LMS_LinkParameter" (
    "n_parameter_code" integer,
    "c_parameter_name" character varying(50),
    "c_client_parameter" character varying(50),
    "n_enabled" integer
);

CREATE TABLE "tbl_NetworkDetails" (
    "c_ServerInstanceName" character varying(500),
    "c_Sourcepath" character varying(2000),
    "c_ip" character varying(200),
    "c_username" character varying(800),
    "c_Password" character varying(500),
    "c_DestinationFolder" character varying(2000)
);

CREATE TABLE "tbl_NewDcr_Entry_Setup" (
    "c_DivZoReArDesFs_Code" character varying(100),
    "C_type" character varying(5),
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "n_DCR_MCR" integer
);

CREATE TABLE "tbl_NewDcr_Entry_Setup_log" (
    "c_DivZoReArDesFs_Code" character varying(100),
    "C_type" character varying(5),
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_NoActivity_reason_mst" (
    "c_Code" character varying(50),
    "c_name" character varying(500),
    "n_deleted" integer,
    "d_Created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_OrderCancel_Setup" (
    "C_CatCode" character varying(50),
    "n_hours" integer,
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_PMTDcrMcr_Setup" (
    "n_DcrMcr_Sample_Mandatory" integer,
    "n_DcrMcr_Gift_Mandatory" integer,
    "n_DcrMcr_Others_Sample_Mandatory" integer,
    "n_DcrMcr_Others_Gift_Mandatory" integer,
    "n_DcrMCr_DrNoteMandatory" integer,
    "n_DcrMCr_DrPOBMandatory" integer,
    "n_da_flag" integer,
    "n_da_per" integer
);

CREATE TABLE "tbl_PMTSetup" (
    "n_MKT_STPUploadEnabled" integer,
    "N_MKT_Stpsubmitiondcr" integer,
    "n_Mkt_MMIEnabled" integer,
    "n_MKT_AddSTPDAForOther" integer,
    "n_da_flag" integer,
    "n_da_per" numeric,
    "n_MMIEnabled" integer DEFAULT 0
);

CREATE TABLE "tbl_POBreport_email_data" (
    "c_empno" character varying(50),
    "n_month" integer,
    "n_year" integer
);

CREATE TABLE "tbl_Patient_Activity_Mst" (
    "C_Code" character varying(100) NOT NULL,
    "c_Name" character varying(100),
    "n_status" integer,
    "n_deleted" integer,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(20)
);

CREATE TABLE "tbl_Patient_Languages_Mst" (
    "C_Code" character varying(100) NOT NULL,
    "c_Name" character varying(100),
    "n_status" integer,
    "n_deleted" integer,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(20)
);

CREATE TABLE "tbl_Patient_det" (
    "C_Code" character varying(100) NOT NULL,
    "c_surgeonname" character varying(100),
    "c_surgerytype" character varying(100),
    "c_pt_relativename" character varying(100),
    "c_emailid" character varying(100),
    "c_phone" character varying(100),
    "c_hospitalname" character varying(250),
    "c_preferdlanguage" character varying(250),
    "c_proceduredate" timestamp without time zone,
    "d_created" timestamp without time zone,
    "n_age" integer
);

CREATE TABLE "tbl_Patients_Range_mst" (
    "C_range" character varying(50),
    "n_id" integer NOT NULL DEFAULT nextval('"tbl_Patients_Range_mst_n_id_seq"'::regclass)
);

CREATE TABLE "tbl_Paytype_det" (
    "ID" integer NOT NULL DEFAULT nextval('"tbl_Paytype_det_ID_seq"'::regclass),
    "C_CODE" character varying(10) NOT NULL,
    "C_NAME" character varying(50) NOT NULL,
    "C_SHORT_NAME" character varying(50),
    "N_DEFAULT_AMT" numeric,
    "N_UPPERLIMIT" numeric,
    "N_LOWERLIMIT" numeric,
    "C_PAYTYPECODE" character varying(10),
    "N_TYPE" integer,
    "C_EXTERNAL_CODE" character varying(50),
    "n_deleted" integer DEFAULT 0,
    "n_status" integer
);

CREATE TABLE "tbl_Paytype_mst" (
    "ID" integer NOT NULL DEFAULT nextval('"tbl_Paytype_mst_ID_seq"'::regclass),
    "C_CODE" character varying(10) NOT NULL,
    "C_NAME" character varying(50) NOT NULL,
    "C_SHORT_NAME" character varying(10),
    "C_DESCRIPTION" character varying(100),
    "C_FORM_NAME" character varying(50) NOT NULL,
    "n_deleted" integer DEFAULT 0,
    "n_status" integer
);

CREATE TABLE "tbl_PhoneOrder_Email_SendDetails" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_PhoneOrder_Email_SendDetails_n_srno_seq"'::regclass),
    "n_referenceid" integer NOT NULL,
    "c_tomailids" character varying(1000),
    "d_send_on" timestamp without time zone,
    "c_status" character varying(20),
    "c_error" character varying(1000)
);

CREATE TABLE "tbl_PhoneOrder_Email_ToSend" (
    "n_id" integer NOT NULL DEFAULT nextval('"tbl_PhoneOrder_Email_ToSend_n_id_seq"'::regclass),
    "n_orderno" numeric,
    "C_StockistCode" character varying(50),
    "c_fscode" character varying(50),
    "d_date" timestamp without time zone
);

CREATE TABLE "tbl_PrescriberCombination_ForReport" (
    "c_CombFrom" character varying(10) NOT NULL,
    "c_CombTo" character varying(10) NOT NULL,
    "n_SortOrder" integer NOT NULL
);

CREATE TABLE "tbl_PrpRps_EmailSMSSend" (
    "n_srno" numeric,
    "d_senddate" timestamp without time zone,
    "n_type" integer,
    "d_currentdate" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_Prp_EmailSMSSend" (
    "n_srno" numeric,
    "d_senddate" timestamp without time zone,
    "n_type" integer,
    "d_currentdate" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_Prp_Multiple_Approval_log" (
    "n_srno" integer,
    "c_approvedby" character varying(50),
    "d_approved" timestamp without time zone,
    "C_AprRej_Note" character varying(500),
    "n_Apr_level" integer,
    "n_AprRej_flag" integer
);

CREATE TABLE "tbl_REC_request" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_REC_request_n_srno_seq"'::regclass),
    "c_name" character varying(100),
    "d_entry_date" timestamp without time zone,
    "d_dob" timestamp without time zone,
    "c_gender" character(1),
    "n_experience_years" numeric,
    "c_post_app_sort" character varying(100),
    "c_qualification" character varying(10),
    "c_email" character varying(100),
    "c_mobile" character varying(50),
    "c_position" character varying(50),
    "c_state" character varying(10),
    "c_town" character varying(10),
    "c_notice_period" character varying(10),
    "d_joining_date" timestamp without time zone,
    "c_permanent_address" character varying(100),
    "c_permanent_town" character varying(10),
    "c_permanent_state" character varying(10),
    "n_pin" numeric,
    "c_offerletter_path" character varying(100),
    "c_status" character(1),
    "C_EmpCode" character varying(50),
    "C_OfferLetter" character varying(50),
    "C_JoiningLetter" character varying(50),
    "c_reg_code" character varying(50),
    "c_div_code" character varying(50),
    "c_fscode" character varying(10),
    "n_active" integer,
    "c_bankname" character varying(100),
    "c_bankaccount" character varying(100),
    "c_bankbranch" character varying(100),
    "c_rtgsneft" character varying(100),
    "c_pancard" character varying(100),
    "c_aptitude" character varying(100),
    "c_currentcomp" character varying(100),
    "c_currentdivision" character varying(100),
    "c_reportingto" character varying(100),
    "n_suggctc" numeric,
    "D_ActualJoin_Date" timestamp without time zone,
    "N_Joined" boolean,
    "c_mname" character varying(50),
    "c_lname" character varying(50),
    "D_HRConfirm" timestamp without time zone,
    "C_HRConfirmedBy" character varying(10),
    "n_crntctc" numeric,
    "C_CandidateEmpCode" character varying(50),
    "c_title" character(6),
    "n_freshr_exp" integer,
    "n_cand_refer" integer,
    "c_name_refere" character varying(100),
    "c_refer_emp" character varying(100),
    "c_design" character varying(100),
    "c_div_name" character varying(100),
    "c_acc_pf" character varying(100),
    "c_add_prsnt" character varying(100),
    "n_pan_typ" integer,
    "n_age" numeric,
    "n_exp_ctc" numeric
);

CREATE TABLE "tbl_REC_request_det" (
    "n_srno" numeric,
    "c_assesment" character varying(200),
    "c_strength" character varying(200),
    "c_areas_improve" character varying(200),
    "c_reason_fitting_position" character varying(200),
    "c_approvedby" character varying(10),
    "d_approved_date" timestamp without time zone,
    "c_approvednote" character varying(200),
    "c_confirmedBy" character varying(10),
    "d_confirmed_date" timestamp without time zone,
    "c_confirmend_note" character varying(200),
    "c_emp_code" character varying(10),
    "c_parent_code" character varying(10),
    "C_Code" character varying(50)
);

CREATE TABLE "tbl_RPS_Compare" (
    "n_Id" integer NOT NULL DEFAULT nextval('"tbl_RPS_Compare_n_Id_seq"'::regclass),
    "n_CompareCode" integer NOT NULL,
    "c_CompareName" character varying(500) NOT NULL,
    "n_delete" integer NOT NULL
);

CREATE TABLE "tbl_ReplaceDocConfirmationQue" (
    "sr_no" character varying(20),
    "doc_code" character varying(100),
    "d_date" timestamp without time zone,
    "n_status" integer,
    "c_loginfs" character varying(50)
);

CREATE TABLE "tbl_Replace_Doc_MultipleSub_Det" (
    "n_srno" character varying(50),
    "c_DSC_Code" character varying(50),
    "c_DocAreacode" character varying(50),
    "c_DocSubAreacode" character varying(50),
    "n_SubType" integer DEFAULT 0
);

CREATE TABLE "tbl_ReportSave" (
    "id" character varying(50),
    "htmlvalue" xml
);

CREATE TABLE "tbl_Req_Incentives_mst" (
    "c_code" character varying(10) NOT NULL,
    "c_name" character varying(500) NOT NULL,
    "n_fs_type" integer NOT NULL,
    "c_sh_name" character varying(20),
    "n_deleted" numeric,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(50)
);

CREATE TABLE "tbl_RetailerActivityStatus" (
    "N_Id" integer NOT NULL,
    "C_Name" character varying(50)
);

CREATE TABLE "tbl_RetailerOutletAdd_Email_SendDetails" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_RetailerOutletAdd_Email_SendDetails_n_srno_seq"'::regclass),
    "n_referenceid" integer NOT NULL,
    "c_tomailids" character varying(1000),
    "d_send_on" timestamp without time zone,
    "c_status" character varying(20),
    "c_error" character varying(1000)
);

CREATE TABLE "tbl_RetailerOutletAdd_Email_ToSend" (
    "n_id" integer NOT NULL DEFAULT nextval('"tbl_RetailerOutletAdd_Email_ToSend_n_id_seq"'::regclass),
    "c_code" character varying(50),
    "c_fscode" character varying(50),
    "d_date" timestamp without time zone
);

CREATE TABLE "tbl_Retailer_MonthlySalesEntry_Details" (
    "n_srno" numeric NOT NULL,
    "c_ItemCode" character varying(50),
    "n_Qty" numeric,
    "n_SchemeQuantity" numeric,
    "n_Value" numeric,
    "n_rate" numeric
);

CREATE TABLE "tbl_Retailer_MonthlySalesEntry_Header" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Retailer_MonthlySalesEntry_Header_n_srno_seq"'::regclass),
    "c_ChemistCode" character varying(50) NOT NULL,
    "c_StockistCode" character varying(50) NOT NULL,
    "n_Month" integer,
    "n_Year" integer,
    "n_deleted" integer,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "n_EditQtyValColumn" integer,
    "c_fscode" character varying(50)
);

CREATE TABLE "tbl_Rps_RegularExpressions_Mst" (
    "N_Id" integer NOT NULL DEFAULT nextval('"tbl_Rps_RegularExpressions_Mst_N_Id_seq"'::regclass),
    "n_ValidationTypeCode" integer NOT NULL,
    "c_ValidationName" character varying(500) NOT NULL,
    "c_Regularexpression" text NOT NULL,
    "n_delete" integer NOT NULL DEFAULT 0
);

CREATE TABLE "tbl_Rps_control_type_mst" (
    "N_ID" integer NOT NULL DEFAULT nextval('"tbl_Rps_control_type_mst_N_ID_seq"'::regclass),
    "n_cntTypeCode" integer NOT NULL,
    "c_typename" character varying(100),
    "n_deleted" integer,
    "n_html_type" integer,
    "c_BindQuery" text
);

CREATE TABLE "tbl_SFA_IOS_ERRORLOG" (
    "N_SRNO" integer NOT NULL DEFAULT nextval('"tbl_SFA_IOS_ERRORLOG_N_SRNO_seq"'::regclass),
    "C_INDEXNO" character varying(50),
    "C_FSCODE" character varying(20),
    "C_ERROR_MESSAGE" character varying(500),
    "C_DATA" character varying(1000),
    "D_DATE" timestamp without time zone
);

CREATE TABLE "tbl_SFA_userrights" (
    "n_itemid" integer,
    "c_userid" character varying(50),
    "n_user_type" integer
);

CREATE TABLE "tbl_SFA_userrights_04032016" (
    "n_itemid" integer,
    "c_userid" character varying(50),
    "n_user_type" integer
);

CREATE TABLE "tbl_SKUType" (
    "n_type" integer,
    "c_name" character varying(100),
    "c_display_caption" character varying(100),
    "c_display_tooltip" character varying(100),
    "c_mpping_columnname" character varying(50),
    "n_psg_type" integer
);

CREATE TABLE "tbl_SMS_Email_exec_log" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_SMS_Email_exec_log_n_srno_seq"'::regclass),
    "n_sms_srno" integer,
    "n_email_flag" integer,
    "n_sms_flag" integer,
    "d_lastdate" timestamp without time zone
);

CREATE TABLE "tbl_SSales_multiple_approval_log" (
    "n_srno" integer NOT NULL,
    "C_FsCode" character varying(50),
    "c_approvedby" character varying(50),
    "d_dateApproved" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_SSales_multiple_approval_log_Bck" (
    "n_srno" integer NOT NULL,
    "c_fscode" character varying(50),
    "c_approvedby" character varying(50),
    "d_approveddate" timestamp without time zone,
    "d_deleted" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_SalarySlipUpload" (
    "N_Id" integer NOT NULL DEFAULT nextval('"tbl_SalarySlipUpload_N_Id_seq"'::regclass),
    "C_Year" character varying(4),
    "C_Month" character varying(2),
    "C_FileName" character varying(200),
    "C_FilePath" character varying(500),
    "D_UploadedDate" timestamp without time zone
);

CREATE TABLE "tbl_SalarySlipUpload_Det" (
    "N_Id" bigint,
    "C_EmpCode" character varying(50),
    "C_FileName" character varying(200),
    "C_FilePath" character varying(1000),
    "C_ZIPName" character varying(50),
    "N_Deltd" integer DEFAULT 0
);

CREATE TABLE "tbl_SecSales_Act_Date_Details" (
    "SrNo" integer,
    "C_Months" character varying(50),
    "D_FromDate" timestamp without time zone,
    "D_ToDate" timestamp without time zone
);

CREATE TABLE "tbl_Sec_Sales_Activation_mst" (
    "SrNo" integer NOT NULL DEFAULT nextval('"tbl_Sec_Sales_Activation_mst_SrNo_seq"'::regclass),
    "C_FsCode" character varying(20),
    "C_Region" character varying(20),
    "C_Designation" character varying(20),
    "D_SalesEntryExt_FrDate" timestamp without time zone,
    "D_SalesEntryExt_ToDate" timestamp without time zone,
    "N_DateMonth_F" integer,
    "N_Deleted" integer,
    "C_CreatedBy" character varying(20),
    "C_ModifiedBy" character varying(20),
    "D_Created_Date" timestamp without time zone,
    "D_ModifiedDate" timestamp without time zone
);

CREATE TABLE "tbl_Sec_Sales_Item_Mst" (
    "n_SrNo" integer NOT NULL DEFAULT nextval('"tbl_Sec_Sales_Item_Mst_n_SrNo_seq"'::regclass),
    "c_stk_code" character varying(50),
    "d_date" timestamp without time zone,
    "c_fscode" character varying(10)
);

CREATE TABLE "tbl_Sfa_Stk_item_Mapping" (
    "c_stk_code" character varying(10),
    "c_sfa_item_code" character varying(50),
    "c_stk_item_code" character varying(50),
    "c_pack" character varying(50),
    "n_rate" numeric
);

CREATE TABLE "tbl_SingleSignOn_Parameter" (
    "c_name" character varying(50),
    "n_value" integer
);

CREATE TABLE "tbl_Stockist_xl_column_mapping_details" (
    "n_rowid" integer,
    "n_srno" integer NOT NULL,
    "c_sfa_Columns" character varying(100),
    "c_xl_columns" character varying(100)
);

CREATE TABLE "tbl_Stockist_xl_column_mapping_header" (
    "n_srno" integer NOT NULL,
    "c_name" character varying(100),
    "d_date" timestamp without time zone,
    "c_uploadedby" character varying(50),
    "c_stockistcode" character varying(50)
);

CREATE TABLE "tbl_Stockist_xl_columns_mst" (
    "c_Stockist_columnname" character varying(200),
    "d_Createddate" timestamp without time zone,
    "d_modifieddate" timestamp without time zone,
    "c_createdby" character varying(100),
    "n_deleted" integer,
    "n_status" integer
);

CREATE TABLE "tbl_Storia_retailer_loginlogoutdet" (
    "n_id" integer NOT NULL DEFAULT nextval('"tbl_Storia_retailer_loginlogoutdet_n_id_seq"'::regclass),
    "c_fsCode" character varying(50),
    "c_dsc_code" character varying(50),
    "c_stk_code" character varying(50),
    "d_logindate" timestamp without time zone,
    "d_logoutdate" timestamp without time zone,
    "c_latitude" character varying(100),
    "c_longitude" character varying(100),
    "n_geomatch" smallint
);

CREATE TABLE "tbl_Stp_AppSetup_DivRegMapping" (
    "n_SetupId" bigint,
    "c_RegionCode" character varying(50),
    "c_divcode" character varying(50)
);

CREATE TABLE "tbl_Surgery_type_Mst" (
    "C_Code" character varying(100) NOT NULL,
    "c_Name" character varying(100),
    "n_status" integer,
    "n_deleted" integer,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(20)
);

CREATE TABLE "tbl_Survey_Mst" (
    "n_SurveyId" integer NOT NULL DEFAULT nextval('"tbl_Survey_Mst_n_SurveyId_seq"'::regclass),
    "c_SurveyName" character varying(1000),
    "c_ShortName" character varying(50),
    "n_active" integer,
    "n_deleted" integer,
    "d_FromDt" timestamp without time zone,
    "d_ToDate" timestamp without time zone,
    "n_SurveyLimitCount" integer
);

CREATE TABLE "tbl_Survey_Question_Mapping" (
    "n_SurveyId" integer,
    "n_QuestionID" integer
);

CREATE TABLE "tbl_Survey_Question_Master" (
    "n_QuestionID" integer NOT NULL DEFAULT nextval('"tbl_Survey_Question_Master_n_QuestionID_seq"'::regclass),
    "c_Question" character varying(500),
    "n_QuestionType" integer,
    "c_Choice1" character varying(200),
    "c_Choice2" character varying(200),
    "c_Choice3" character varying(200),
    "c_Choice4" character varying(200),
    "c_Choice5" character varying(200),
    "n_deleted" integer,
    "c_Choice6" character varying(200),
    "c_Choice7" character varying(200),
    "c_Choice8" character varying(200),
    "c_Choice9" character varying(200),
    "c_Choice10" character varying(200),
    "c_Choice11" character varying(200),
    "c_Choice12" character varying(200),
    "c_Choice13" character varying(200),
    "c_Choice14" character varying(200),
    "c_Choice15" character varying(200),
    "N_other" integer
);

CREATE TABLE "tbl_Survey_Question_Type" (
    "n_QuestionTypeCode" integer,
    "c_description" character varying(500),
    "n_deleted" integer,
    "c_ControlType" character varying(50),
    "n_ValidationType" character varying(5)
);

CREATE TABLE "tbl_Survey_Question_Type_Det" (
    "n_QuestionTypeCode" integer,
    "n_rowid" integer,
    "c_Description" character varying(500),
    "n_deleted" integer
);

CREATE TABLE "tbl_Survey_Setup" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Survey_Setup_n_srno_seq"'::regclass),
    "c_SurveyId" numeric,
    "c_SurveyType" integer,
    "c_div_code" character varying(5000),
    "c_reg_code" character varying(5000),
    "c_area_code" character varying(5000),
    "c_fstype" character varying(100),
    "c_category" character varying(5000),
    "c_grade" character varying(5000),
    "d_created" timestamp without time zone,
    "n_deleted" integer
);

CREATE TABLE "tbl_TempCore_Product_mapping" (
    "c_LogInFS" character varying(50),
    "c_CategoryCode" character varying(50),
    "c_DoctorCode" character varying(50),
    "c_ProductCode" character varying(50)
);

CREATE TABLE "tbl_Terms_and_Conditions_mst" (
    "c_code" character varying(10) NOT NULL,
    "c_name" character varying(500) NOT NULL,
    "n_fs_type" integer NOT NULL,
    "c_sh_name" character varying(20),
    "n_deleted" numeric,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(50)
);

CREATE TABLE "tbl_Travel_Location_Android" (
    "c_fs_code" character varying(50),
    "N_Latitude" character varying(50),
    "N_Longitude" character varying(50),
    "d_datetime" timestamp without time zone,
    "n_GPS" integer,
    "n_GPRS" integer,
    "n_rowid" integer NOT NULL DEFAULT nextval('"tbl_Travel_Location_Android_n_rowid_seq"'::regclass),
    "c_deviceid" character varying(1000),
    "C_Place" character varying(2000),
    "d_Upload_Date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_Travel_Location_Android_LOG" (
    "c_fs_code" character varying(10) NOT NULL,
    "N_Latitude" character varying(50) NOT NULL,
    "N_Longitude" character varying(50) NOT NULL,
    "d_datetime" timestamp without time zone NOT NULL,
    "n_GPS" integer,
    "n_GPRS" integer,
    "n_rowid" integer,
    "c_deviceid" character varying(100) NOT NULL,
    "C_Place" character varying(2000),
    "d_Upload_Date" timestamp without time zone
);

CREATE TABLE "tbl_UpdateDrRequest_MultiHierarchyApproval" (
    "n_RequestType" integer,
    "n_Type" integer,
    "n_setupid" integer
);

CREATE TABLE "tbl_VideoUpload_title_det" (
    "n_title_code" integer,
    "c_caption" character varying(50),
    "c_imagepath" character varying(500),
    "n_srno" integer,
    "n_deleted" integer NOT NULL DEFAULT 0,
    "n_sort_order" integer NOT NULL DEFAULT 0,
    "n_priority" integer,
    "c_forward_to" character varying(20),
    "c_package_name" character varying(200),
    "c_title_code" character varying(10),
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_Video_Mst" (
    "C_Code" character varying(10) NOT NULL,
    "c_subject" character varying(100) NOT NULL,
    "d_entry_date" timestamp without time zone NOT NULL,
    "d_from_date" timestamp without time zone NOT NULL,
    "d_to_date" timestamp without time zone,
    "n_active" boolean NOT NULL DEFAULT true,
    "n_must_read" integer NOT NULL DEFAULT 0,
    "c_modifier" character varying(10),
    "d_modified" timestamp without time zone,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "n_deleted" integer NOT NULL DEFAULT 0,
    "c_VideoUploaded" character varying(50)
);

CREATE TABLE "tbl_Video_approval" (
    "n_title_code" numeric NOT NULL,
    "d_date" timestamp without time zone,
    "c_status" character varying(5),
    "c_note" character varying(250),
    "c_enteredbyempcode" character varying(20) NOT NULL,
    "c_enteredbyfscode" character varying(20) NOT NULL,
    "n_reject_type" integer,
    "n_fsType" integer,
    "c_AprSts" character varying(20)
);

CREATE TABLE "tbl_Video_multi_approval" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_Video_multi_approval_n_srno_seq"'::regclass),
    "n_type" integer
);

CREATE TABLE "tbl_Village_Mst" (
    "C_Code" character varying(10) NOT NULL,
    "c_Name" character varying(200),
    "c_ShortName" character varying(50),
    "c_subarea_code" character varying(10),
    "n_status" integer,
    "n_deleted" integer,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_Week_holidays" (
    "c_regionfscode" character varying(50),
    "c_fscode" character varying(50),
    "c_weekholiday" character varying(100)
);

CREATE TABLE "tbl_account_type" (
    "c_code" character varying(20) NOT NULL,
    "c_name" character varying(50),
    "n_deleted" integer NOT NULL DEFAULT 0,
    "n_active" integer NOT NULL DEFAULT 0
);

CREATE TABLE "tbl_activity_process" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_activity_process_n_id_seq'::regclass),
    "n_module_id" numeric NOT NULL,
    "n_request_id" numeric,
    "c_req_fs_code" character varying(50),
    "c_req_emp_code" character varying(50),
    "n_req_fs_type" integer,
    "n_setup_id" numeric,
    "n_allow_reject" integer,
    "n_approval_type" integer,
    "n_activity_type" integer,
    "c_user_role" character varying(50),
    "n_activity_approver_type" integer,
    "n_activity_fs_type" integer,
    "c_activity_fs_code" character varying(20),
    "c_activity_emp_code" character varying(20),
    "n_activity_order" integer,
    "n_activity_done" integer,
    "d_activity_done_on" timestamp without time zone,
    "n_activity_reject_status" integer,
    "n_req_status" integer,
    "n_req_reject_status" integer,
    "c_req_status_msg" character varying(2000),
    "n_active_fs" integer,
    "c_remarks" character varying(5000),
    "d_created_on" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "d_modified_on" timestamp without time zone
);

CREATE TABLE "tbl_activity_process_log" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_activity_process_log_n_id_seq'::regclass),
    "n_activity_process_id" numeric,
    "n_module_id" numeric NOT NULL,
    "n_request_id" numeric,
    "c_req_fs_code" character varying(50),
    "c_req_emp_code" character varying(50),
    "n_req_fs_type" integer,
    "n_setup_id" numeric,
    "n_allow_reject" integer,
    "n_approval_type" integer,
    "n_activity_type" integer,
    "c_user_role" character varying(50),
    "n_activity_approver_type" integer,
    "n_activity_fs_type" integer,
    "c_activity_fs_code" character varying(20),
    "c_activity_emp_code" character varying(20),
    "n_activity_order" integer,
    "n_activity_done" integer,
    "d_activity_done_on" timestamp without time zone,
    "n_activity_reject_status" integer,
    "n_req_status" integer,
    "n_req_reject_status" integer,
    "c_req_status_msg" character varying(2000),
    "n_active_fs" integer,
    "c_remarks" character varying(5000),
    "d_created_on" timestamp without time zone,
    "d_modified_on" timestamp without time zone,
    "log_created_on" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_admin_display_desigs" (
    "c_setup_code" character varying(50),
    "c_desigs_code" character varying(50)
);

CREATE TABLE "tbl_admin_display_regions" (
    "c_setup_code" character varying(20),
    "c_region_code" character varying(20)
);

CREATE TABLE "tbl_age_Range_mst" (
    "C_range" character varying(50),
    "n_id" integer NOT NULL DEFAULT nextval('"tbl_age_Range_mst_n_id_seq"'::regclass)
);

CREATE TABLE "tbl_algorithen_region_executed" (
    "c_region_code" character varying(20),
    "d_date" timestamp without time zone
);

CREATE TABLE "tbl_all_condition_sample_tracking_dcrdata" (
    "FSCode" character varying(20),
    "categorycode" character varying(100),
    "C_Item_Code" character varying(100),
    "itemcount" character varying(50),
    "categoryname" character varying(100),
    "MonthData" character varying(20),
    "yearData" character varying(10)
);

CREATE TABLE "tbl_all_condition_sample_tracking_monthwise" (
    "Division" character varying(1000),
    "Region" character varying(100),
    "Fsname" character varying(100),
    "Itemtype" character varying(50),
    "SampleItem" character varying(500),
    "Pack" character(100),
    "ReceiptCurrentmonth" character varying(20),
    "ReceiptCurrent" numeric,
    "IssuedQty" numeric,
    "c_item_code" character varying(100),
    "BalancePrviousMonth" numeric,
    "N_Type" integer,
    "c_brand_code" character varying(20),
    "fscode" character varying(20),
    "AvailableforDistirbution" character varying(20),
    "dateofdispatchfromDepot" timestamp without time zone,
    "MonthData" character varying(20),
    "yearData" character varying(10)
);

CREATE TABLE "tbl_android_api_payload_log" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_android_api_payload_log_n_srno_seq'::regclass),
    "c_apiname" character varying(1000),
    "c_payload" text,
    "d_createdon" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_createdby" character varying(50),
    "c_response" text
);

CREATE TABLE "tbl_android_forced_login" (
    "c_fs_code" character varying(20),
    "d_last_login_date" timestamp without time zone,
    "d_blocked_date" timestamp without time zone,
    "n_status" integer DEFAULT 0
);

CREATE TABLE "tbl_android_version" (
    "v_id" integer
);

CREATE TABLE "tbl_area_det" (
    "c_area_code" character varying(10) NOT NULL,
    "c_area_type" character varying(10) NOT NULL,
    "d_date_from" timestamp without time zone NOT NULL,
    "d_date_to" timestamp without time zone
);

CREATE TABLE "tbl_area_mst_temp" (
    "C_Code" character(6),
    "C_Name" character(50),
    "C_Sh_Name" character(20),
    "C_Region_Code" character(6),
    "C_SalesHQ" character(10),
    "n_deleted" numeric,
    "d_created" character varying(30),
    "d_modified" character varying(30),
    "c_modifier" character(20)
);

CREATE TABLE "tbl_area_othersubarea_mapping" (
    "n_id" integer,
    "c_area_designation_fs_code" character varying(20),
    "c_subarea_code" character varying(20),
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_area_othersubarea_mapping_mst" (
    "n_id" integer,
    "c_name" character varying(100)
);

CREATE TABLE "tbl_area_type_mst" (
    "c_code" character varying(10) NOT NULL,
    "c_name" character varying(50),
    "c_sh_name" character varying(10),
    "n_deleted" smallint,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10)
);

CREATE TABLE "tbl_asset_courier_data" (
    "n_req_no" integer,
    "n_req_type" integer,
    "c_empcode" character varying(50),
    "c_courier_name" character varying(100),
    "n_docket_no" integer,
    "d_date" timestamp without time zone,
    "c_depo_name" character varying(100),
    "c_depo_contact_person" character varying(100),
    "c_state_head" character varying(100),
    "c_imei_no" character varying(100),
    "n_working_cond" integer,
    "c_depo_code" character varying(100)
);

CREATE TABLE "tbl_asset_docc_upload" (
    "n_Srno" numeric NOT NULL,
    "c_docname" character varying(500),
    "c_created_by" character varying(50),
    "d_created" timestamp without time zone
);

CREATE TABLE "tbl_asset_fs_question_mst" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_asset_fs_question_mst_n_id_seq'::regclass),
    "c_fs_code" character varying(20),
    "c_emp_code" character varying(20),
    "c_qn_code" character varying(20),
    "n_yn_answer" integer,
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_asset_join_resign_det" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_asset_join_resign_det_n_id_seq'::regclass),
    "c_fscode" character varying(50),
    "c_fsname" character varying(100),
    "c_empcode" character varying(50),
    "c_mngr_code" character varying(50),
    "d_join_resign" timestamp without time zone,
    "d_mngr_change" timestamp without time zone,
    "n_res_join" integer,
    "n_status" integer
);

CREATE TABLE "tbl_asset_join_resign_det_log" (
    "n_id" integer,
    "c_fscode" character varying(50),
    "c_fsname" character varying(100),
    "c_empcode" character varying(50),
    "c_mngr_code" character varying(50),
    "d_join_resign" timestamp without time zone,
    "d_mngr_change" timestamp without time zone,
    "n_res_join" integer,
    "n_status" integer
);

CREATE TABLE "tbl_asset_mail_details" (
    "c_req_type" character varying(20),
    "c_level_type" character varying(20),
    "c_subject" character varying(200),
    "c_mailfromHead" character varying(100),
    "c_mailcontent" character varying(500),
    "c_mailcontent_apr" character varying(500),
    "c_mailcontent_con" character varying(500)
);

CREATE TABLE "tbl_asset_mst" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_asset_mst_n_srno_seq'::regclass),
    "c_code" character varying(20),
    "c_assettype" character varying(50),
    "c_modelno" character varying(50),
    "c_imeino" character varying(50),
    "c_emp_Code" character varying(50),
    "n_amount" numeric,
    "n_lifecycle" integer,
    "n_deleted" integer,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "d_fromdate" timestamp without time zone,
    "d_todate" timestamp without time zone,
    "c_asset_name" character varying(200),
    "c_serail_no" character varying(50),
    "d_date_of_purchase" timestamp without time zone,
    "d_adp_expiry_date" timestamp without time zone,
    "c_invoice_no" character varying(50),
    "d_invoice_date" timestamp without time zone,
    "n_table_amount" numeric,
    "c_po_no" character varying(50),
    "d_po_date" timestamp without time zone,
    "c_android_si_no" character varying(1000),
    "c_courier_name" character varying(100),
    "c_docket_no" character varying(50),
    "d_courier_date" timestamp without time zone,
    "c_depo_code" character varying(50),
    "c_deponame" character varying(100),
    "c_depo_contact_person" character varying(100),
    "c_state_head" character varying(100)
);

CREATE TABLE "tbl_asset_notification_new_emp" (
    "c_fscode" character varying(20),
    "c_empcode" character varying(20),
    "n_opt" integer,
    "d_date" timestamp without time zone,
    "c_loginfs" character varying(20)
);

CREATE TABLE "tbl_asset_notification_resigned_emp" (
    "c_fscode" character varying(20),
    "c_empcode" character varying(20),
    "n_opt" integer,
    "d_date" timestamp without time zone,
    "c_loginfs" character varying(20)
);

CREATE TABLE "tbl_asset_question_mst" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_asset_question_mst_n_srno_seq'::regclass),
    "c_code" character varying(10),
    "c_name" character varying(500),
    "n_mapto" smallint,
    "n_active" smallint,
    "n_deleted" smallint,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "n_questiontype" integer,
    "c_choice1" character varying(100),
    "c_choice2" character varying(100),
    "c_choice3" character varying(100),
    "c_choice4" character varying(100),
    "c_choice5" character varying(100),
    "c_mutiplechoice1" character varying(100),
    "c_mutiplechoice2" character varying(100),
    "c_mutiplechoice3" character varying(100),
    "c_mutiplechoice4" character varying(100),
    "c_mutiplechoice5" character varying(100),
    "n_textdata" integer,
    "n_noofdays" integer
);

CREATE TABLE "tbl_asset_request" (
    "n_srno" bigint NOT NULL,
    "c_emp_code" character varying(10),
    "c_fs_code" character varying(10),
    "d_date" timestamp without time zone,
    "c_asset_code" character varying(10),
    "c_description1" character varying(200),
    "n_Request_type" integer DEFAULT 3,
    "d_approved" timestamp without time zone,
    "c_approvedby" character varying(10),
    "c_approved_note" character varying(200),
    "d_confirmed" timestamp without time zone,
    "c_confirmedby" character varying(10),
    "c_confirmed_note" character varying(200),
    "c_status" character(1),
    "c_description2" character varying(100),
    "c_fscode" character varying(20),
    "c_imeino" character varying(50),
    "n_submit_no_cover" integer,
    "n_submit_no_charger" integer,
    "n_appove_no_cover" integer,
    "n_approve_no_charger" integer,
    "n_confirm_no_cover" integer,
    "n_confirm_no_charger" integer,
    "c_asset_type" character varying(50),
    "c_setupno" character varying(20),
    "n_approval_required" integer,
    "c_confirmator" character varying(50),
    "c_deskcode" character varying(50)
);

CREATE TABLE "tbl_asset_setup_det" (
    "n_rowid" integer NOT NULL DEFAULT nextval('tbl_asset_setup_det_n_rowid_seq'::regclass),
    "n_setup_srno" integer NOT NULL,
    "n_setup_type" text,
    "c_desk" text,
    "n_asset_approved" integer
);

CREATE TABLE "tbl_asset_type_mst" (
    "c_code" character varying(20),
    "c_name" character varying(50),
    "n_status" integer,
    "n_deleted" integer,
    "d_created" timestamp without time zone,
    "n_category" integer NOT NULL DEFAULT 0
);

CREATE TABLE "tbl_asset_vendor_data" (
    "n_req_no" integer,
    "n_req_type" integer,
    "c_empcode" character varying(50),
    "c_vendor_name" character varying(100),
    "d_send_date" timestamp without time zone,
    "c_remarks" text,
    "d_recieved_date" timestamp without time zone
);

CREATE TABLE "tbl_bank_mst" (
    "c_bank_code" character varying(10),
    "c_bank_name" character varying(20),
    "c_short_name" character varying(5),
    "c_branch_name" character varying(20),
    "n_deleted" smallint,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10)
);

CREATE TABLE "tbl_brand_promotion_data_wh" (
    "division" character varying(500),
    "Region" character varying(500),
    "L1_EMP_CODE" character varying(50),
    "L1_FS_CODE" character varying(50),
    "L1_NAME" character varying(500),
    "MR_EMP_CODE" character varying(50),
    "MR_FS_CODE" character varying(50),
    "MR_NAME" character varying(500),
    "HQ" character varying(500),
    "Priority_Products" character varying(500),
    "Priority_Products_Code" character varying(50),
    "SPECIALITY" character varying(500),
    "d-P1" integer,
    "d-P2" integer,
    "d-P3" integer,
    "d-P4" integer,
    "d-P5" integer,
    "d1-P1" integer,
    "d1-P2" integer,
    "d1-P3" integer,
    "d1-P4" integer,
    "d1-P5" integer,
    "d2-P1" integer,
    "d2-P2" integer,
    "d2-P3" integer,
    "d2-P4" integer,
    "d2-P5" integer,
    "Mon" integer,
    "YearData" integer
);

CREATE TABLE "tbl_budget_grp_mst" (
    "c_code" character varying(10),
    "c_name" character varying(300),
    "n_status" integer,
    "n_deleted" integer,
    "n_max_amount" numeric
);

CREATE TABLE "tbl_campaign_data_collection" (
    "n_campsrno" numeric,
    "n_srNo" integer NOT NULL DEFAULT nextval('"tbl_campaign_data_collection_n_srNo_seq"'::regclass),
    "c_name" character varying(100),
    "c_phonenumber" character varying(50),
    "n_Sex" integer,
    "c_remarks" character varying(500),
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_fs_code" character varying(100),
    "c_campaign_code" character varying(100)
);

CREATE TABLE "tbl_campaign_file_upload" (
    "n_srno" character varying(50),
    "c_fs_code" character varying(100),
    "c_filename" character varying(500),
    "c_campaign_code" character varying(100)
);

CREATE TABLE "tbl_candidate_desk_mst" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_candidate_desk_mst_n_srno_seq'::regclass),
    "c_name" character varying(500),
    "c_empcode" character varying(50),
    "n_deleted" integer DEFAULT 0,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(50)
);

CREATE TABLE "tbl_candidate_desk_setup" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_candidate_desk_setup_n_srno_seq'::regclass),
    "n_deskcode" integer,
    "c_division" character varying(50),
    "n_deleted" integer DEFAULT 0,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(50)
);

CREATE TABLE "tbl_category_edetail_capture" (
    "c_fscode" character varying(20),
    "c_categorycode" character varying(20),
    "c_titlecode" character varying(20),
    "c_itemcode" character varying(20),
    "n_slideid" integer,
    "d_date" date,
    "t_time" character varying(20),
    "n_flag" integer
);

CREATE TABLE "tbl_category_email_mandatory" (
    "c_category_code" character varying(20)
);

CREATE TABLE "tbl_category_mst_bck_21042026" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "C_Sh_Name" character(10),
    "N_Type" integer,
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "n_CatStatus" integer,
    "c_image" character varying(500)
);

CREATE TABLE "tbl_chemist_mst_ril" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_chemist_mst_ril_n_id_seq'::regclass),
    "c_code" character varying(50),
    "n_jio_pc_kit" integer,
    "c_wholesale_license" character varying(100),
    "n_employee_count" integer,
    "n_monthly_business_percentage" integer,
    "c_onlie_ordering_app" character varying(100),
    "n_distributor_count" integer,
    "c_top_distributors" character varying(1000),
    "n_total_credit_amount" numeric,
    "n_shop_age" numeric,
    "n_avg_distributor_credit_amount" numeric,
    "c_delivary_recevied_within" character varying(1000),
    "c_buy_from_wholesaler" character varying(1000),
    "c_image1" character varying(500),
    "c_image2" character varying(500),
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_storetype" character varying(100)
);

CREATE TABLE "tbl_chemist_pob_hdr" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_chemist_pob_hdr_n_srno_seq'::regclass),
    "c_subarea" text,
    "d_date" timestamp without time zone,
    "c_chemistcode" character varying(20),
    "c_stokistcode" character varying(20),
    "n_nopob" integer,
    "n_status" integer DEFAULT 0,
    "c_requestedby" character varying(20),
    "n_totalamount" character varying(20),
    "c_note" text,
    "c_dispense_code" character varying(20),
    "d_posting_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_chemist_pob_mandatorysettings_setup" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_chemist_pob_mandatorysettings_setup_n_srno_seq'::regclass),
    "n_type" integer,
    "c_division_code" text,
    "c_region_code" text,
    "n_deleted" integer,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_chemist_pob_sub_details" (
    "n_srno" integer NOT NULL,
    "c_itemcode" character varying(20),
    "n_pack" character varying(20),
    "n_rate" character varying(20),
    "n_qty" character varying(20),
    "n_value" character varying(20),
    "c_note" character varying(500)
);

CREATE TABLE "tbl_circular_Mst" (
    "C_Code" character varying(10) NOT NULL,
    "c_subject" character varying(100) NOT NULL,
    "c_circular_type" character varying(10) NOT NULL,
    "d_entry_date" timestamp without time zone NOT NULL,
    "d_from_date" timestamp without time zone NOT NULL,
    "d_to_date" timestamp without time zone,
    "n_active" boolean NOT NULL DEFAULT true,
    "n_must_read" integer NOT NULL DEFAULT 0,
    "c_modifier" character varying(10),
    "d_modified" timestamp without time zone,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "n_deleted" integer NOT NULL DEFAULT 0,
    "c_filename" character varying(1000),
    "c_startpage" character varying(1000),
    "n_Disply_Type" integer NOT NULL DEFAULT 0,
    "c_url" text
);

CREATE TABLE "tbl_circulartype_Mst" (
    "c_code" character varying(10) NOT NULL,
    "c_name" character varying(50) NOT NULL,
    "n_active" boolean NOT NULL,
    "n_deleted" integer NOT NULL DEFAULT 0,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10)
);

CREATE TABLE "tbl_claim_mst_bkp_beforemultipleapproval" (
    "N_SRNO" numeric NOT NULL,
    "C_CLAIM_CODE" character varying(10) NOT NULL,
    "C_FS_CODE" character varying(10) NOT NULL,
    "C_EMP_CODE" character varying(10) NOT NULL,
    "C_PARENT_CODE" character varying(10) NOT NULL,
    "C_DESK_CODE" character varying(10) NOT NULL,
    "D_DATE" timestamp without time zone NOT NULL,
    "D_DATE_FROM" timestamp without time zone NOT NULL,
    "D_DATE_TO" timestamp without time zone NOT NULL,
    "C_DESCRIPTION" character varying(500),
    "C_NOTE1" character varying(500),
    "C_NOTE2" character varying(500),
    "C_NOTE3" character varying(500),
    "N_APPROVED" integer NOT NULL,
    "D_APPROVED_ON" timestamp without time zone,
    "C_APPROVED_BY" character varying(10),
    "N_MANUAL_AUTO" integer NOT NULL,
    "N_CONFIRMED" integer NOT NULL,
    "D_CONFIRMED_ON" timestamp without time zone,
    "C_CONFIRMED_BY" character varying(10),
    "N_DELETED" integer NOT NULL,
    "D_MODIFIED" timestamp without time zone,
    "n_claimed_amt" numeric NOT NULL,
    "n_approved_amt" numeric NOT NULL,
    "n_confirmed_amt" numeric NOT NULL,
    "d_Reconfirmed_on" timestamp without time zone,
    "c_Reconfirmation_Det" character varying(500),
    "n_claimsetup_srno" integer,
    "N_SUBMIT" integer
);

CREATE TABLE "tbl_claim_onboard_outlet" (
    "c_code" character varying(20),
    "c_fscode" character varying(20),
    "c_empcode" character varying(20),
    "c_mobileno" character varying(20),
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_class_DivDet" (
    "c_code" character varying(10) NOT NULL,
    "c_div_code" character varying(10)
);

CREATE TABLE "tbl_class_mst" (
    "c_code" character varying(10) NOT NULL,
    "c_name" character varying(100),
    "n_deleted" numeric,
    "c_modifier" character varying(10),
    "d_modified" timestamp without time zone,
    "d_created" timestamp without time zone,
    "c_specialisation" character varying(10)
);

CREATE TABLE "tbl_comp_leave_det" (
    "N_Srno" numeric,
    "D_Date_Report" timestamp without time zone,
    "c_Emp_Code" character varying(10)
);

CREATE TABLE "tbl_companyInt" (
    "Employeecode" character varying(255),
    "Employeename" character varying(255),
    "Designation" character varying(255),
    "Hierarchy Type" character varying(255),
    "Qualification" character varying(255),
    "Department" character varying(255),
    "Location" character varying(255),
    "Reporting Manager" character varying(255),
    "Reporting Manager Employee Code" character varying(255),
    "Reporting Manager Hierarchy Type" character varying(255),
    "HQ Name(Based At)" character varying(255),
    "Division Name" character varying(255),
    "stp_from_date" character varying(255),
    "stp_to_date" character varying(255),
    "DA For HQ" character varying(255),
    "DA For EX" character varying(255),
    "DA for OS" character varying(255),
    "Per KM" character varying(255),
    "Transit Amount " character varying(255),
    "add1" character varying(255),
    "add2" character varying(255),
    "add3" character varying(255),
    "add4" character varying(255),
    "pin" character varying(255),
    "phone" character varying(255),
    "fax" character varying(255),
    "dob" character varying(255),
    "doj" character varying(255),
    "dow" character varying(255),
    "description" character varying(255),
    "accno" character varying(255),
    "Bank Name" character varying(255),
    "Grade" character varying(255),
    "Sex" character varying(255),
    "Title" character varying(255),
    "Role" character varying(255),
    "OfficePhoneno" character varying(255),
    "Extensionno" character varying(255),
    "DOC" character varying(255),
    "DOR" character varying(255),
    "OffEmailID" character varying(255),
    "PersonalEmailID" character varying(255),
    "ParentCode" character varying(255),
    "Rtgs" character varying(255),
    "pan" character varying(255),
    "c_sfaemp_code" character varying(50),
    "c_sfa_desig" character varying(50),
    "c_sfa_Hierarchy_Type" character varying(50),
    "c_sfa_Qualification_code" character varying(50),
    "c_sfa_department_code" character varying(50),
    "c_sfa_location_code" character varying(50),
    "c_sfa_reportingMGR" character varying(50),
    "c_sfaemp_code_type" character varying(50),
    "c_sfa_reportingMGR_type" character varying(50),
    "c_sfa_area" character varying(50),
    "c_sfa_div_code" character varying(50),
    "c_sfa_fs_code" character varying(50),
    "c_sfa_bank_code" character varying(20),
    "c_sfa_grade_code" character varying(20),
    "excelname" character varying(50)
);

CREATE TABLE "tbl_compensation_group_mst" (
    "c_code" character varying(50) NOT NULL,
    "c_name" character varying(100) NOT NULL,
    "c_sh_name" character varying(10),
    "n_other_incentives" boolean NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "n_deleted" smallint NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(50),
    "n_GrpOrder" integer
);

CREATE TABLE "tbl_competitor_Visit" (
    "n_ID" integer NOT NULL DEFAULT nextval('"tbl_competitor_Visit_n_ID_seq"'::regclass),
    "c_fs_code" character varying(50),
    "C_Doctor_Code" character varying(50),
    "n_Visit_Count" integer,
    "d_date" timestamp without time zone
);

CREATE TABLE "tbl_controlpanel_mst_expense" (
    "n_Expense_MTPDeviation_Highlight" integer,
    "n_Expense_NoVisit_Highlight" integer,
    "n_Expense_VisitTypeHQ_Highlight" integer,
    "n_BlockDayWiseExpenceEntry" integer DEFAULT 0,
    "n_AddBeneficiaryDetails" integer DEFAULT 0,
    "n_EntryPageLimitHide" integer DEFAULT 0
);

CREATE TABLE "tbl_covid_survey" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_covid_survey_n_id_seq'::regclass),
    "c_fs_code" character varying(20),
    "c_emp_code" character varying(20),
    "n_answer_1" integer,
    "d_tentative_vaccination_1" timestamp without time zone,
    "d_vaccination_1" timestamp without time zone,
    "c_certificatename_1" character varying(100),
    "d_question_1_completion" timestamp without time zone,
    "n_answer_2" integer,
    "d_tentative_vaccination_2" timestamp without time zone,
    "d_vaccination_2" timestamp without time zone,
    "c_certificatename_2" character varying(100),
    "d_question_2_completion" timestamp without time zone,
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "n_status" integer,
    "n_login_blocked_dose1" integer,
    "n_login_blocked_dose2" integer,
    "c_reason_no_taken_dose1" character varying(100),
    "c_reason_no_taken_dose2" character varying(100),
    "c_beneficiary_reference_id1" character varying(25),
    "c_beneficiary_reference_id2" character varying(25)
);

CREATE TABLE "tbl_covid_survey_log" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_covid_survey_log_n_srno_seq'::regclass),
    "n_id" numeric,
    "c_fs_code" character varying(20),
    "c_emp_code" character varying(20),
    "n_answer_1" integer,
    "d_tentative_vaccination_1" timestamp without time zone,
    "d_vaccination_1" timestamp without time zone,
    "c_certificatename_1" character varying(100),
    "d_question_1_completion" timestamp without time zone,
    "n_answer_2" integer,
    "d_tentative_vaccination_2" timestamp without time zone,
    "d_vaccination_2" timestamp without time zone,
    "c_certificatename_2" character varying(100),
    "d_question_2_completion" timestamp without time zone,
    "d_date" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "n_status" integer,
    "n_login_blocked_dose1" integer,
    "n_login_blocked_dose2" integer,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_reason_no_taken_dose1" character varying(100),
    "c_reason_no_taken_dose2" character varying(100),
    "c_beneficiary_reference_id1" character varying(25),
    "c_beneficiary_reference_id2" character varying(25)
);

CREATE TABLE "tbl_crm_Answer_det" (
    "n_Answer_ID" integer,
    "n_QuestionID" integer,
    "c_answer" character varying(100),
    "c_OtherOption" character varying(50)
);

CREATE TABLE "tbl_crm_Answer_mst" (
    "n_ID" integer NOT NULL DEFAULT nextval('"tbl_crm_Answer_mst_n_ID_seq"'::regclass),
    "n_templateID" integer,
    "c_enteredBy" character varying(50),
    "c_empcode" character varying(50),
    "d_entrydate" timestamp without time zone,
    "c_spec_name" character varying(50),
    "C_Enterd_For" character varying(20),
    "n_DCR_No" numeric,
    "d_date_from" timestamp without time zone,
    "d_date_to" timestamp without time zone
);

CREATE TABLE "tbl_crm_fs_template_mapping" (
    "c_crm_templateid" character varying(20),
    "c_emp_code" character varying(10),
    "d_date_from" timestamp without time zone,
    "d_date_to" timestamp without time zone
);

CREATE TABLE "tbl_cust_div_subareanull" (
    "c_cust_code" character(10) NOT NULL,
    "c_div_code" character varying(10) NOT NULL,
    "c_fs_code" character(10) NOT NULL,
    "d_date" timestamp without time zone NOT NULL,
    "c_grade" character varying(10),
    "d_date_to" timestamp without time zone,
    "n_per" integer,
    "C_ref_no" character varying(52),
    "d_modified" timestamp without time zone,
    "N_CRNTBUSINES" character varying(150),
    "C_BUSINES_POTENTIAL" character varying(150),
    "N_drpotential" character varying(50),
    "c_DocSubAreacode" character varying(50)
);

CREATE TABLE "tbl_custbackup" (
    "c_cust_code" character(10) NOT NULL,
    "c_div_code" character varying(10) NOT NULL,
    "c_fs_code" character(10) NOT NULL,
    "d_date" timestamp without time zone NOT NULL,
    "c_grade" character varying(10),
    "d_date_to" timestamp without time zone,
    "n_per" integer,
    "C_ref_no" character varying(52),
    "d_modified" timestamp without time zone,
    "N_CRNTBUSINES" character varying(150),
    "C_BUSINES_POTENTIAL" character varying(150),
    "N_drpotential" character varying(50),
    "c_DocSubAreacode" character varying(50) NOT NULL
);

CREATE TABLE "tbl_dashboard_brandsetup_det" (
    "n_srno" integer,
    "n_rowno" integer,
    "c_brand" character varying(50),
    "c_cat" text,
    "c_displayname" character varying(50),
    "c_item" text,
    "n_mcl_from" numeric,
    "n_mcl_to" numeric
);

CREATE TABLE "tbl_dashboard_brandsetup_grade" (
    "n_srno" integer,
    "c_grade" character varying(50),
    "n_weightage" numeric
);

CREATE TABLE "tbl_dbe_customer_details" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_dbe_customer_details_n_id_seq'::regclass),
    "n_request_id" numeric,
    "c_customer_code" character varying(20),
    "c_subarea" character varying(50) NOT NULL,
    "c_doc_class" character varying(50) NOT NULL,
    "c_doctor_speciality" character varying(50) NOT NULL,
    "d_create" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "n_doctor_business" numeric
);

CREATE TABLE "tbl_dbe_dwr_unlock" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_dbe_dwr_unlock_n_id_seq'::regclass),
    "c_emp_code" character varying(50) NOT NULL,
    "c_fs_code" character varying(50) NOT NULL,
    "n_unlock_month" integer,
    "n_unlock_year" integer,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_created" character varying(20)
);

CREATE TABLE "tbl_dbe_dwr_unlock_delete_log" (
    "n_id" integer,
    "c_emp_code" character varying(50) NOT NULL,
    "c_fs_code" character varying(50) NOT NULL,
    "n_unlock_month" integer,
    "n_unlock_year" integer,
    "d_created" timestamp without time zone,
    "c_created" character varying(20),
    "d_delete" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_dbe_item_details" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_dbe_item_details_n_id_seq'::regclass),
    "n_request_id" integer,
    "c_customer_code" character varying(20),
    "c_item_code" character varying(100),
    "n_rate" numeric NOT NULL,
    "n_quantity" integer NOT NULL
);

CREATE TABLE "tbl_dbe_upload_files" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_dbe_upload_files_n_id_seq'::regclass),
    "n_transaction_id" numeric NOT NULL,
    "c_file_name" character varying(255) NOT NULL,
    "n_file_size" character varying(20),
    "d_created_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_dcotor_location_api_update" (
    "c_drcode" character varying(20),
    "c_modified_fs" character varying(20),
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "n_dsca_type" integer
);

CREATE TABLE "tbl_dcr_PLEL_history" (
    "N_leavesrno" integer,
    "n_leavetype" integer,
    "c_fscode" character varying(20),
    "c_empcode" character varying(20),
    "d_datereport" timestamp without time zone,
    "d_entry_date" timestamp without time zone,
    "n_setup" integer,
    "totalcnt" integer,
    "d_created" timestamp without time zone
);

CREATE TABLE "tbl_dcr_Summary" (
    "n_srno" numeric,
    "n_doccnt" integer,
    "n_stkcnt" integer,
    "n_chmcnt" integer,
    "n_othcnt" integer,
    "n_hoscnt" integer
);

CREATE TABLE "tbl_dcr_component_det" (
    "n_id" integer NOT NULL,
    "n_priority" integer NOT NULL,
    "n_dsca_type" integer,
    "component_id" integer,
    "n_visible" integer,
    "n_Required" integer,
    "c_worktrype" character varying(200)
);

CREATE TABLE "tbl_dcr_component_mst" (
    "n_id" integer NOT NULL,
    "c_name" character varying(100),
    "n_deleted" integer DEFAULT 0,
    "c_display_name" character varying(100)
);

CREATE TABLE "tbl_dcr_doc_item_pref" (
    "c_doc_code" character varying(20),
    "c_itemcode" character varying(20),
    "c_pref_code" character varying(2),
    "n_pref_qty" integer
);

CREATE TABLE "tbl_dcr_edetail_capture" (
    "c_fscode" character varying(20),
    "n_dcrno" integer,
    "c_doccode" character varying(20),
    "c_titlecode" character varying(20),
    "c_itemcode" character varying(20),
    "n_slideid" integer,
    "d_date" date,
    "t_time" character varying(20),
    "n_flag" integer
);

CREATE TABLE "tbl_dcr_mcr_samp_gift_promo_setup" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_dcr_mcr_samp_gift_promo_setup_n_srno_seq'::regclass),
    "n_type" integer,
    "c_division" character varying(2000),
    "c_region" character varying(2000),
    "c_createdby" character varying(20),
    "n_deleted" integer,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_dcr_plel_history_log" (
    "srno" integer NOT NULL DEFAULT nextval('tbl_dcr_plel_history_log_srno_seq'::regclass),
    "n_leavesrno" integer,
    "n_leavetype" integer,
    "c_fscode" character varying(20),
    "c_empcode" character varying(20),
    "n_setup" integer,
    "totalcnt" integer,
    "n_month" integer,
    "n_year" character(10),
    "d_created" timestamp without time zone
);

CREATE TABLE "tbl_dcrmcr_approve_log" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_dcrmcr_approve_log_n_id_seq'::regclass),
    "n_dcrno" numeric,
    "c_remarks" character varying(1000),
    "c_approved_rejected_by" character varying(20),
    "n_status" integer,
    "d_approved_rejected_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_dcrmcr_edit_setup" (
    "N_RptType" integer,
    "N_Type" integer,
    "C_Code" character(10),
    "N_Days" integer
);

CREATE TABLE "tbl_dcrmcr_reporting_worktype_setup" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_dcrmcr_reporting_worktype_setup_n_srno_seq'::regclass),
    "n_dcrmcrtype" integer,
    "c_worktype_code" character varying(10),
    "c_division_code" text,
    "n_docchemstk_mandatory" integer,
    "n_areafeedback_mandatory" integer,
    "n_mtpvariance_mandatory" integer,
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_dd" (
    "data" text,
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_delete_mtp_stp_details" (
    "n_srno" numeric,
    "c_subarea_code" character varying(50),
    "c_fscode" character varying(50),
    "d_date" timestamp without time zone
);

CREATE TABLE "tbl_delete_mtp_stp_details_log" (
    "n_srno" numeric,
    "c_subarea_code" character varying(50),
    "c_fscode" character varying(50),
    "d_date" timestamp without time zone,
    "d_modified_date" timestamp without time zone
);

CREATE TABLE "tbl_department_mst" (
    "C_Code" character varying(10) NOT NULL,
    "c_name" character varying(50),
    "c_short_name" character varying(10),
    "C_travel_desk_incharge" character varying(10),
    "C_material_desk_empcode" character varying(10),
    "N_SFA_ROLE" integer,
    "N_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "D_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "D_modified" timestamp without time zone,
    "C_modifier" character varying(50),
    "C_Gadget_code" character varying(50)
);

CREATE TABLE "tbl_depo_xl_column_mapping_details" (
    "n_rowid" integer,
    "n_srno" integer NOT NULL,
    "c_sfa_Columns" character varying(100),
    "c_xl_columns" character varying(100)
);

CREATE TABLE "tbl_depo_xl_column_mapping_header" (
    "n_srno" integer NOT NULL,
    "c_name" character varying(100),
    "d_date" timestamp without time zone,
    "c_uploadedby" character varying(50),
    "c_depocode" character varying(50)
);

CREATE TABLE "tbl_desig_mst" (
    "c_code" character varying(50) NOT NULL,
    "c_name" character varying(50) NOT NULL,
    "c_sh_name" character varying(50),
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(50)
);

CREATE TABLE "tbl_desk_mst" (
    "c_code" character varying(10) NOT NULL,
    "c_name" character varying(50) NOT NULL,
    "c_emp_code" character varying(10) NOT NULL,
    "n_deleted" integer NOT NULL DEFAULT 0,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "c_email_id" character varying(50),
    "c_email_sing1" character varying(100),
    "c_email_sing2" character varying(100),
    "c_email_sing3" character varying(100),
    "c_email_sing4" character varying(100),
    "c_email_sing5" character varying(100),
    "c_email_sing6" character varying(100)
);

CREATE TABLE "tbl_direct_expence" (
    "c_emp_code" character varying(10) NOT NULL,
    "n_paid_month" integer NOT NULL,
    "n_paid_year" integer NOT NULL,
    "n_bill_month" integer NOT NULL,
    "n_bill_year" integer NOT NULL,
    "n_claim_amount" numeric DEFAULT '0'::numeric,
    "n_app_amount" numeric DEFAULT '0'::numeric,
    "n_add" numeric DEFAULT '0'::numeric,
    "n_less" numeric DEFAULT '0'::numeric,
    "c_remark1" character varying(100),
    "c_remark2" character varying(100),
    "c_remark3" character varying(100),
    "c_remark4" character varying(100),
    "c_remark5" character varying(100),
    "c_remark6" character varying(100),
    "c_remark7" character varying(100),
    "c_clarification" character varying(250),
    "n_confirm" smallint,
    "c_confirm_note" character varying(250),
    "d_date" timestamp without time zone
);

CREATE TABLE "tbl_direct_saledet" (
    "n_srno" integer NOT NULL,
    "c_item_code" character varying(50),
    "n_qty" numeric,
    "n_sch_qty" numeric,
    "n_rate" numeric,
    "n_val" numeric
);

CREATE TABLE "tbl_dispense_mst" (
    "c_code" character varying(20) NOT NULL,
    "c_name" character varying(50) NOT NULL,
    "c_sh_name" character(20),
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_div_mst_temp" (
    "c_code" character(6),
    "c_name" character(50),
    "c_sh_name" character(20),
    "n_pur" numeric,
    "n_deleted" numeric,
    "d_created" character varying(30),
    "d_modified" character varying(30),
    "c_modifier" character varying(30)
);

CREATE TABLE "tbl_division_code_vs_sap_division_code" (
    "c_division_code" character varying(20),
    "c_sap_division_code" character varying(20)
);

CREATE TABLE "tbl_divisonwise_sampleallocation" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_divisonwise_sampleallocation_n_srno_seq'::regclass),
    "c_division" character varying(20),
    "d_dtfrom" timestamp without time zone,
    "d_dateto" timestamp without time zone,
    "n_deleted" integer,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_divisonwise_sampleallocation_det" (
    "n_srno" numeric,
    "c_itemcode" character varying(20),
    "n_qty" numeric
);

CREATE TABLE "tbl_doc_chem_mapping" (
    "C_fs_code" character varying(10) NOT NULL,
    "c_doc_code" character varying(10) NOT NULL,
    "c_chem_code" character varying(50) NOT NULL,
    "d_date" timestamp without time zone NOT NULL
);

CREATE TABLE "tbl_doc_grade_mst" (
    "c_code" character varying(10) NOT NULL,
    "c_description" character varying(30),
    "n_noof_visit" integer,
    "c_group" character varying(10),
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "C_sh_name" character varying(50),
    "n_type" smallint,
    "C_SubArea_Code" character varying(10),
    "n_noof_frequency" integer,
    "n_rpt_display" integer NOT NULL DEFAULT 0
);

CREATE TABLE "tbl_doc_grade_mst_temp" (
    "c_code" character varying(10),
    "c_name" character varying(30),
    "c_sh_name" character varying(10),
    "c_group" character varying(10),
    "n_deleted" integer,
    "d_date" character varying(30),
    "d_ldate" character varying(30),
    "c_modiuser" character varying(30)
);

CREATE TABLE "tbl_doc_profile" (
    "c_code" character varying(50) NOT NULL,
    "c_name" character varying(200),
    "c_phone" character varying(50),
    "d_Modified" timestamp without time zone NOT NULL,
    "c_fscode" character varying(20)
);

CREATE TABLE "tbl_doc_stock_chem_add_mst_bck_D54396" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(200),
    "N_Type" integer NOT NULL,
    "C_Grade" character varying(10),
    "C_Qualification" character varying(50),
    "C_Add_1" character varying(50),
    "C_Add_2" character varying(50),
    "C_Add_3" character varying(50),
    "C_Add_4" character varying(50),
    "C_Pin" character varying(10),
    "C_Phone" character varying(20),
    "C_Fax" character varying(50),
    "C_Category" character varying(10),
    "C_Area_Code" character varying(10),
    "C_Subarea_Code" character varying(10),
    "D_DOB" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "n_Status" integer,
    "D_Create_Date" timestamp without time zone,
    "D_modify_Date" timestamp without time zone,
    "C_Email_ID" character varying(50),
    "C_FsCode" character varying(10),
    "c_region_code" character varying(10),
    "n_convert" numeric,
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(20),
    "n_lami" double precision,
    "n_lgmi" double precision,
    "c_tin_no" character varying(50),
    "c_lic_no" character varying(50),
    "c_contact_name" character varying(50),
    "n_Sft_shop" numeric,
    "n_No_of_display_Shelf" numeric,
    "c_desc_display_shelf" character varying(100),
    "n_Front_Board_Height" numeric,
    "n_Front_Board_length" numeric,
    "n_Backlit" smallint,
    "n_Computerised" smallint,
    "c_lic_food" character varying(50),
    "c_sort" character varying(10),
    "c_contact_mob" character varying(50),
    "c_contact_outlet_num" character varying(50),
    "C_Landmark" character varying(100),
    "C_Short_Name" character varying(10),
    "C_Doc_Class" character varying(10),
    "C_Spousename" character varying(100),
    "D_SpouseDob" timestamp without time zone,
    "C_FName" character varying(50),
    "C_LName" character varying(50),
    "n_mcino" character varying(20),
    "C_HOSPITAL_NAME" character varying(150),
    "C_STREET_NAME" character varying(150),
    "C_AREA_NAME" character varying(150),
    "C_LANDMARK1" character varying(150),
    "C_CITY" character varying(150),
    "C_STATE" character varying(150),
    "C_HOUSE_NAME" character varying(150),
    "C_STREET_NAME1" character varying(150),
    "C_AREA_NAME1" character varying(150),
    "C_LANDMARK2" character varying(150),
    "C_CITY_1" character varying(150),
    "N_PATIENTS" character varying(150),
    "N_CRNTBUSINES" character varying(150),
    "C_STATE1" character varying(150),
    "C_PINCODE1" character varying(150),
    "C_BUSINES_POTENTIAL" character varying(150),
    "D_CHILD_DOB1" timestamp without time zone,
    "D_CHILD_DOB2" timestamp without time zone,
    "D_CHILD_DOB3" timestamp without time zone,
    "n_age" character varying(10),
    "C_SPECIALITY" character varying(150),
    "C_childnname1" character varying(150),
    "C_childnname2" character varying(150),
    "C_childnname3" character varying(150),
    "n_drpurchase" integer,
    "N_drprescription" integer,
    "N_drpotential" character varying(50),
    "c_landline" character varying(20),
    "c_middlename" character varying(50),
    "c_tldl1" character varying(100),
    "c_tldl2" character varying(100),
    "c_dlfood1" character varying(100),
    "c_tldl11" character varying(100),
    "c_tldl12" character varying(100),
    "c_dlfood2" character varying(100),
    "d_DLDate1" timestamp without time zone,
    "d_DLDate2" timestamp without time zone,
    "c_pan1" character varying(100),
    "c_pan2" character varying(100),
    "c_Purchase_manager_Name" character varying(100),
    "c_Purchase_manager_Mob" character varying(20),
    "c_Account_Type" character varying(50),
    "n_visit_freq" integer,
    "n_fridge" integer,
    "c_Institutn_type" character varying(100),
    "c_Account_Grp" character varying(100),
    "n_hostel" integer,
    "n_no_of_canteen" integer,
    "c_type_of_food" text,
    "c_Canteen_contr_name" character varying(100),
    "c_Canteen_contr_addr" character varying(500),
    "D_agreement_date" timestamp without time zone,
    "n_Total_Disc" numeric,
    "D_Total_Disc_From" timestamp without time zone,
    "D_Total_Disc_To" timestamp without time zone,
    "c_Store_Classification" character varying(100),
    "n_Store_Type" integer,
    "c_Distributor" character varying(20),
    "c_store_type" character varying(50),
    "c_Store_Manager" character varying(50),
    "c_Distributor_name" character varying(100),
    "n_active" integer,
    "c_classification" character varying(10),
    "c_chemisttype" character varying(10),
    "n_WindowSize" character varying(50),
    "C_AccountClassfctn" character varying(5),
    "C_AccountAddress" character varying(100),
    "C_AccountCode" character varying(10),
    "n_DaysTo_Activate" integer,
    "d_Start_Date" timestamp without time zone,
    "d_activation_Date" timestamp without time zone,
    "c_storetype" character varying(50),
    "c_distributorcode" character varying(50),
    "c_visitfrequency" character varying(50),
    "c_classificationcode" character varying(50),
    "c_stmanager" character varying(50),
    "C_SA_Classification" character varying(20),
    "c_Hospital_Code" character varying(10),
    "C_TypeofHsptl" character varying(300),
    "C_Area" character varying(100),
    "C_Inhouse_phar_exist" character varying(100),
    "C_Fin_Turnover" character varying(100),
    "C_Potencial" character varying(100),
    "C_No_of_Beds" character varying(100),
    "C_No_of_Emer_Beds" character varying(100),
    "C_No_of_Critic_ICU_Beds" character varying(100),
    "C_No_of_Sur_Theaters" character varying(100),
    "C_Hospital" character varying(100),
    "C_Tot_No_of_Doctors" character varying(100),
    "C_Pur_Mgr_Name" character varying(100),
    "C_Pur_Mgr__Contact" character varying(100),
    "C_Stk_Inchrg_Name" character varying(100),
    "C_Stk_Inchrg_Contact" character varying(100),
    "C_Fin_Ofcr_Name" character varying(100),
    "C_Fin_Ofcr_Contact" character varying(100),
    "C_No_of_Thrputc_Group" character varying(100),
    "C_Techng_Institution" character varying(100),
    "C_Gstno" character varying(50),
    "c_docmstpan" character varying(10)
);

CREATE TABLE "tbl_docinv_Amount_AdvLog" (
    "srno" integer,
    "c_invcode" character varying(10),
    "n_amount" numeric,
    "d_date" timestamp without time zone
);

CREATE TABLE "tbl_docinv_Amount_AdvnullLog" (
    "srno" integer,
    "sectn" character varying(500),
    "d_date" timestamp without time zone
);

CREATE TABLE "tbl_docinv_Amount_logfor_alkem" (
    "n_id" integer,
    "n_srno" integer,
    "n_setupno" integer,
    "c_invcode" character varying(10),
    "n_amount" numeric,
    "c_inv_status" character varying(10),
    "c_empcode" character varying(20),
    "c_fwstatus" character varying(10),
    "x_MandatoryHtml" xml,
    "x_MandatoryHtmlModified" xml,
    "n_approveramt" numeric,
    "n_confirmeramt" numeric,
    "n_deskamt" numeric,
    "n_deskstaffamt" numeric,
    "n_AdvanceAmount" numeric
);

CREATE TABLE "tbl_docinv_Det" (
    "Id" integer NOT NULL DEFAULT nextval('"tbl_docinv_Det_Id_seq"'::regclass),
    "c_docinv_Code" character varying(50),
    "JsonData" text,
    "d_create_date" timestamp without time zone,
    "d_update_date" timestamp without time zone
);

CREATE TABLE "tbl_docinv_bankdetails" (
    "n_srno" integer NOT NULL,
    "c_benif" character varying(1000),
    "c_chequeno" character varying(1000),
    "d_chequedate" timestamp without time zone,
    "c_paymentdtls" character varying(1000),
    "c_paymentamt" character varying(1000)
);

CREATE TABLE "tbl_docinv_bankdetails_log" (
    "n_srno" integer,
    "c_benif" character varying(1000),
    "c_chequeno" character varying(1000),
    "d_chequedate" timestamp without time zone,
    "c_paymentdtls" character varying(1000),
    "c_paymentamt" character varying(1000)
);

CREATE TABLE "tbl_docinv_cluster_approval" (
    "n_reqno" numeric NOT NULL,
    "n_setup_no" numeric NOT NULL,
    "d_date" timestamp without time zone,
    "c_note" character varying(250),
    "c_enteredbyempcode" character varying(20) NOT NULL,
    "c_enteredbyfscode" character varying(20) NOT NULL,
    "c_status" character varying(20),
    "n_type" integer DEFAULT 0
);

CREATE TABLE "tbl_docinv_courierdetails" (
    "n_srno" integer NOT NULL,
    "c_courier" character varying(1000),
    "c_courierno" character varying(1000),
    "d_date" timestamp without time zone,
    "c_courierdtls" character varying(1000)
);

CREATE TABLE "tbl_docinv_dr_acceptreject_cheque" (
    "n_srno" integer NOT NULL,
    "c_chequeacceptance" character varying(20),
    "c_remark" character varying(5000),
    "d_date" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "c_modifiedby" character varying(20)
);

CREATE TABLE "tbl_docinv_mandatory" (
    "n_primary_id" integer NOT NULL DEFAULT nextval('tbl_docinv_mandatory_n_primary_id_seq'::regclass),
    "c_code" character varying(20),
    "n_row_id" integer,
    "n_mandatory" integer
);

CREATE TABLE "tbl_docinv_mst" (
    "c_code" character varying(10),
    "c_name" character varying(50),
    "c_mandatory" xml,
    "n_deleted" integer,
    "d_date" timestamp without time zone,
    "n_status" integer,
    "c_budgetcode" character varying(20),
    "c_mandatory_fields" character varying(3000),
    "N_RPS_Static" integer
);

CREATE TABLE "tbl_docinv_setup_reqeditlevels" (
    "n_setupno" numeric,
    "c_stage" character varying(20),
    "n_amtflg" integer
);

CREATE TABLE "tbl_doctor_registration_image" (
    "n_srno" integer NOT NULL,
    "c_userid" character varying(20),
    "c_doc_code" character varying(20),
    "c_reg_no" character varying(50),
    "c_image_name" character varying(200),
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_approve_reject_userid" character varying(20),
    "d_approve_reject_date" timestamp without time zone
);

CREATE TABLE "tbl_doctor_registration_image_log" (
    "n_srno" integer NOT NULL,
    "c_userid" character varying(20),
    "c_doc_code" character varying(20),
    "c_reg_no" character varying(50),
    "c_image_name" character varying(200),
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_approve_reject_userid" character varying(20),
    "d_approve_reject_date" timestamp without time zone,
    "n_approve_reject" integer
);

CREATE TABLE "tbl_doctor_registration_image_temp" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_doctor_registration_image_temp_n_srno_seq'::regclass),
    "c_userid" character varying(20),
    "c_doc_code" character varying(20),
    "c_reg_no" character varying(50),
    "c_image_name" character varying(200),
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_doctor_role_setupdata" (
    "c_fscode" character varying(50)
);

CREATE TABLE "tbl_download_info" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_download_info_n_srno_seq'::regclass),
    "c_filename" character varying(50),
    "c_filepath" character varying(500) NOT NULL,
    "d_date" timestamp without time zone,
    "C_fscode" character varying(10) NOT NULL,
    "c_sender" character varying(50) NOT NULL,
    "c_comments" character varying(500)
);

CREATE TABLE "tbl_dr_confirmsetup_details" (
    "c_code" character varying(20),
    "c_applicabletype" character varying(5),
    "c_applicableCode" character varying(20),
    "d_createddate" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_drclosedfss" (
    "n_year" integer,
    "n_month" integer,
    "c_fs_code " character varying(10)
);

CREATE TABLE "tbl_dwr_Edetail_Det_New" (
    "c_srno" character varying(100),
    "d_starting_time" character varying(50),
    "d_endingtime" character varying(50),
    "c_slideID" character varying(50),
    "d_date" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "c_item_code" character varying(50),
    "c_doc_category" character varying(50),
    "C_voice_Rec" character varying(200),
    "c_title_code" character varying(10)
);

CREATE TABLE "tbl_dwr_Edetail_DocSent" (
    "c_srno" text,
    "c_document_code" character varying(100) NOT NULL,
    "c_doctor_code" character varying(50),
    "c_slideID" character varying(50) NOT NULL,
    "d_date" date NOT NULL,
    "c_email" character varying(50) NOT NULL
);

CREATE TABLE "tbl_dwr_Edetail_base64audiofile" (
    "c_srno" character varying(100) NOT NULL,
    "c_title_code" text,
    "c_item_code" text,
    "c_doc_code" text,
    "C_filename" text
);

CREATE TABLE "tbl_dwr_Edetail_det" (
    "n_srno" integer,
    "d_starting_time" character varying(50),
    "d_endingtime" character varying(50),
    "c_slideID" character varying(50),
    "d_date" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "c_item_code" character varying(50),
    "c_doc_code" character varying(50),
    "c_doc_grade" character varying(50),
    "C_voice_Rec" character varying(200),
    "c_title_code" character varying(20)
);

CREATE TABLE "tbl_dwr_Stockist_setup" (
    "n_map_type" integer,
    "n_desig" integer,
    "c_fs_code" character varying(10),
    "n_mapping" integer
);

CREATE TABLE "tbl_dwr_chemist_setup" (
    "n_map_type" integer,
    "n_desig" integer,
    "c_fs_code" character varying(10)
);

CREATE TABLE "tbl_dwr_ctype_det_agegroup" (
    "n_srno" numeric,
    "n_ctype_code" bigint,
    "c_ctopic_code" character varying(10),
    "c_village_code" character varying(20),
    "n_0to15_m" character varying(5),
    "n_0to15_f" character varying(5),
    "n_15to50_m" character varying(5),
    "n_15to50_f" character varying(5),
    "n_50above_m" character varying(5),
    "n_50above_f" character varying(5),
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_dwr_delete_data" (
    "n_srno" integer,
    "c_fscode" character varying(20),
    "d_date_deport" timestamp without time zone,
    "d_entry_date" timestamp without time zone,
    "c_worked_with" character varying(20),
    "n_android_flag" integer,
    "n_delete_flag" integer NOT NULL DEFAULT 0,
    "d_date_delete" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_dwr_delete_unlock_data" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_dwr_delete_unlock_data_n_srno_seq'::regclass),
    "d_date_report" timestamp without time zone,
    "n_dwr_no" integer,
    "n_dwr_type" integer,
    "c_placeofwork" character varying(200),
    "c_reason" character varying(500),
    "c_fscode_submitted_by" character varying(20),
    "c_empcode_submitted_by" character varying(20),
    "d_submitted_date" timestamp without time zone,
    "c_fscode_last_approved_rejected_by" character varying(20),
    "c_empcode_last_approved_rejected_by" character varying(20),
    "d_last_approved_rejected_date" timestamp without time zone,
    "n_status" integer,
    "n_delete_unlock" integer,
    "n_setup" integer,
    "c_next_approve_fscode" character varying(20),
    "c_next_approve_status" integer,
    "c_remarks" character varying(500),
    "c_next_2_approve_fscode" character varying(20),
    "n_cycle_id" integer
);

CREATE TABLE "tbl_dwr_delete_unlock_data1" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_dwr_delete_unlock_data1_n_srno_seq'::regclass),
    "d_date_report" timestamp without time zone,
    "n_dwr_no" integer,
    "n_dwr_type" integer,
    "c_placeofwork" character varying(20),
    "c_reason" character varying(500),
    "c_fscode_submitted_by" character varying(20),
    "c_empcode_submitted_by" character varying(20),
    "d_submitted_date" timestamp without time zone,
    "c_fscode_last_approved_rejected_by" character varying(20),
    "c_empcode_last_approved_rejected_by" character varying(20),
    "d_last_approved_rejected_date" timestamp without time zone,
    "n_status" integer,
    "n_delete_unlock" integer,
    "n_setup" integer,
    "c_next_approve_fscode" character varying(20),
    "c_next_approve_status" integer,
    "c_remarks" character varying(500),
    "c_next_2_approve_fscode" character varying(20),
    "n_cycle_id" integer
);

CREATE TABLE "tbl_dwr_delete_unlock_dets" (
    "n_srno" integer,
    "n_setup_type" integer,
    "c_mngr_type" character varying(100),
    "n_multiple_approval" integer,
    "n_type" integer
);

CREATE TABLE "tbl_dwr_details_2020_06_24" (
    "N_Srno" integer NOT NULL,
    "n_rowid" integer NOT NULL,
    "n_type" integer NOT NULL,
    "C_DSC_Code" character varying(10) NOT NULL,
    "C_BA" character varying(50),
    "N_POB" numeric,
    "N_Closing" numeric,
    "N_Stock_Value" numeric,
    "N_Sales_Value" numeric,
    "N_Outstanding" numeric,
    "C_Note" character varying(1000),
    "c_time" character varying(50),
    "c_doc_note" character varying(50),
    "c_doc_grade" character varying(50),
    "c_fmcg_stk_code" character varying(10),
    "n_process_status" integer,
    "c_Comments" character varying(200),
    "c_moreve" character(1),
    "c_PhoneNo" character varying(20),
    "d_created" timestamp without time zone
);

CREATE TABLE "tbl_dwr_details_insqry" (
    "n_srno" numeric,
    "c_qry" text
);

CREATE TABLE "tbl_dwr_doc_item_role_det" (
    "n_dcr_no" character varying(20),
    "c_doc_code" character varying(20),
    "c_itemcode" character varying(20),
    "c_pref_code" character varying(2),
    "n_pref_qty" integer
);

CREATE TABLE "tbl_dwr_doc_item_role_det_log" (
    "n_dcr_no" character varying(20),
    "c_doc_code" character varying(20),
    "c_itemcode" character varying(20),
    "c_pref_code" character varying(2)
);

CREATE TABLE "tbl_dwr_fmcg_sub_Details" (
    "n_srno" numeric NOT NULL,
    "c_itemcode" character varying(50),
    "n_qty" numeric,
    "n_stk_hand" numeric,
    "c_note" character varying(100),
    "n_rate" numeric,
    "n_SuppliedQty" numeric,
    "n_reason_non_purchase" character varying(20),
    "d_Expiry" timestamp without time zone,
    "n_Ordered_Qty" numeric,
    "n_reasonfor_return" character varying(20)
);

CREATE TABLE "tbl_dwr_fmcg_sub_Details_POB_History" (
    "n_srno" numeric NOT NULL,
    "c_itemcode" character varying(50),
    "n_qty" numeric,
    "n_stk_hand" numeric,
    "c_chem_code" character varying(50) NOT NULL,
    "c_stk_code" character varying(50) NOT NULL,
    "c_note" character varying(100),
    "n_rate" numeric,
    "c_OrderEntryType" character varying(10)
);

CREATE TABLE "tbl_dwr_hospital_setup" (
    "n_map_type" integer,
    "n_desig" integer,
    "c_fs_code" character varying(10)
);

CREATE TABLE "tbl_dwr_item_type_block" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_dwr_item_type_block_n_srno_seq'::regclass),
    "c_fscode" character varying(20),
    "c_cust_code" character varying(20),
    "n_type" integer,
    "d_date_created" timestamp without time zone,
    "c_modifier" character varying(20)
);

CREATE TABLE "tbl_dwr_item_type_block_log" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_dwr_item_type_block_log_n_srno_seq'::regclass),
    "c_fscode" character varying(20),
    "c_cust_code" character varying(20),
    "n_type" integer,
    "d_date_created" timestamp without time zone,
    "c_modifier" character varying(20)
);

CREATE TABLE "tbl_dwr_log_doc_item_role_det" (
    "n_dcr_no" character varying(20),
    "c_doc_code" character varying(20),
    "c_itemcode" character varying(20),
    "c_pref_code" character varying(2)
);

CREATE TABLE "tbl_dwr_log_fmcg_sub_Details" (
    "n_srno" numeric NOT NULL,
    "c_itemcode" character varying(50),
    "n_qty" numeric,
    "n_stk_hand" numeric,
    "c_note" character varying(100),
    "n_rate" numeric
);

CREATE TABLE "tbl_dwr_log_workwith_sub_det" (
    "n_srno" numeric NOT NULL,
    "c_doc_code" character varying(10) NOT NULL,
    "c_workwith_Fs_code" character varying(50) NOT NULL,
    "c_selectflag" character(1)
);

CREATE TABLE "tbl_dwr_patient_activity" (
    "n_srno" numeric NOT NULL,
    "c_patient" character varying(100) NOT NULL,
    "c_activity" character varying(100) NOT NULL
);

CREATE TABLE "tbl_dwr_patient_activity_log" (
    "n_srno" numeric NOT NULL,
    "c_patient" character varying(100) NOT NULL,
    "c_activity" character varying(100) NOT NULL
);

CREATE TABLE "tbl_dwr_patient_competitorproduct" (
    "n_srno" numeric NOT NULL,
    "c_patient" character varying(100) NOT NULL,
    "c_CompetitorProduct" character varying(100) NOT NULL,
    "c_BrandCode" character varying(100)
);

CREATE TABLE "tbl_dwr_patient_competitorproduct_log" (
    "n_srno" numeric NOT NULL,
    "c_patient" character varying(100) NOT NULL,
    "c_CompetitorProduct" character varying(100) NOT NULL,
    "c_BrandCode" character varying(100)
);

CREATE TABLE "tbl_dwr_patient_productbrand" (
    "n_srno" numeric NOT NULL,
    "c_patient" character varying(100) NOT NULL,
    "c_productbrand" character varying(100) NOT NULL
);

CREATE TABLE "tbl_dwr_patient_productbrand_log" (
    "n_srno" numeric NOT NULL,
    "c_patient" character varying(100) NOT NULL,
    "c_productbrand" character varying(100) NOT NULL
);

CREATE TABLE "tbl_dwr_prec_sub_details" (
    "n_srno" numeric,
    "c_doc_code" character varying(10),
    "c_item_code" character varying(15),
    "n_prec_qty" numeric
);

CREATE TABLE "tbl_dwr_qusetion_Det" (
    "n_ID" integer NOT NULL,
    "n_dcrno" character(10),
    "c_doctorCode" character varying(50),
    "n_questionID" integer,
    "c_answer1" character varying(50),
    "c_answer2" character varying(50)
);

CREATE TABLE "tbl_dwr_workwith_sub_det" (
    "n_srno" numeric NOT NULL,
    "c_doc_code" character varying(10) NOT NULL,
    "c_workwith_Fs_code" character varying(50) NOT NULL,
    "c_selectflag" character(1)
);

CREATE TABLE "tbl_dynamic_dashboard" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_dynamic_dashboard_n_id_seq'::regclass),
    "n_dashboard_id" integer,
    "n_section_id" integer,
    "c_section_name" character varying(200),
    "c_description" character varying(200),
    "n_enabled" integer
);

CREATE TABLE "tbl_dynamic_dashboard_det" (
    "n_srno" integer,
    "n_setup_type" integer,
    "n_section_id" character varying(200)
);

CREATE TABLE "tbl_dynamic_survey_mst" (
    "n_survey_id" integer NOT NULL DEFAULT nextval('tbl_dynamic_survey_mst_n_survey_id_seq'::regclass),
    "c_survey_name" character varying(100),
    "c_survey_page_name" character varying(100),
    "d_from_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "d_to_date" timestamp without time zone,
    "n_survey_order" integer,
    "n_status" integer DEFAULT 1,
    "n_deleted" integer DEFAULT 0
);

CREATE TABLE "tbl_edetailDocitem_map" (
    "c_doc_code" character varying(20),
    "c_item_code" character varying(20),
    "n_deleted" integer
);

CREATE TABLE "tbl_edetail_Region_map" (
    "n_srno" integer NOT NULL,
    "c_edetail_code" character varying(50) NOT NULL,
    "c_region_code" character varying(50) NOT NULL,
    "d_date_from" timestamp without time zone NOT NULL,
    "d_date_to" timestamp without time zone NOT NULL,
    "c_note" character varying(500),
    "n_deleted" smallint,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(50),
    "n_active" integer
);

CREATE TABLE "tbl_edetail_SubTitle_forward" (
    "N_Title_Code" integer,
    "N_Subtitle_Code" integer,
    "c_Forward_to" character varying(20),
    "C_Note" character varying(500)
);

CREATE TABLE "tbl_edetail_Title_Mst" (
    "n_srno" integer NOT NULL,
    "c_title" character varying(250) NOT NULL,
    "c_prodcode" character varying(50),
    "c_doc_type" character varying(50),
    "n_active" integer,
    "n_deleted" integer NOT NULL DEFAULT 0,
    "D_CREATED" timestamp without time zone,
    "D_MODIFIED" timestamp without time zone,
    "C_fs_code" character varying(10),
    "C_Status" character varying(10),
    "c_approver" character varying(10),
    "c_confirmer" character varying(10),
    "c_reject" character varying(10),
    "c_note" character varying(300),
    "n_type" integer,
    "n_history" bigint,
    "n_history_active" integer
);

CREATE TABLE "tbl_edetail_Title_Mst_Changed_history" (
    "n_srno" integer NOT NULL,
    "c_title" character varying(250) NOT NULL,
    "c_prodcode" character varying(50),
    "c_doc_type" character varying(50),
    "n_active" integer,
    "n_deleted" integer NOT NULL DEFAULT 0,
    "D_CREATED" timestamp without time zone,
    "D_MODIFIED" timestamp without time zone,
    "C_fs_code" character varying(10),
    "C_Status" character varying(10),
    "c_approver" character varying(10),
    "c_confirmer" character varying(10),
    "c_reject" character varying(10),
    "c_note" character varying(300),
    "n_type" integer,
    "n_srno_mst" bigint,
    "d_status_date" timestamp without time zone
);

CREATE TABLE "tbl_edetail_Title_Mst_History" (
    "n_srno" integer NOT NULL,
    "c_title" character varying(250) NOT NULL,
    "c_prodcode" character varying(50),
    "c_doc_type" character varying(50),
    "n_active" integer,
    "n_deleted" integer NOT NULL DEFAULT 0,
    "D_CREATED" timestamp without time zone,
    "D_MODIFIED" timestamp without time zone,
    "C_fs_code" character varying(10),
    "C_Status" character varying(10),
    "c_approver" character varying(10),
    "c_confirmer" character varying(10),
    "c_reject" character varying(10),
    "c_note" character varying(300),
    "n_type" integer,
    "n_srno_mst" bigint,
    "d_status_date" timestamp without time zone
);

CREATE TABLE "tbl_edetail_Video_Upload" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_edetail_Video_Upload_n_srno_seq"'::regclass),
    "c_title" character varying(250) NOT NULL,
    "n_active" integer,
    "n_deleted" integer NOT NULL DEFAULT 0,
    "D_CREATED" timestamp without time zone,
    "D_MODIFIED" timestamp without time zone,
    "C_fs_code" character varying(10),
    "C_Status" character varying(10),
    "c_approver" character varying(10),
    "c_confirmer" character varying(10),
    "c_reject" character varying(10),
    "C_NOTE" character varying(300)
);

CREATE TABLE "tbl_edetail_Video_multi_region" (
    "n_srno" integer NOT NULL,
    "c_edetail_code" character varying(50) NOT NULL,
    "c_region_code" character varying(50) NOT NULL,
    "d_date_from" timestamp without time zone NOT NULL,
    "d_date_to" timestamp without time zone NOT NULL,
    "n_deleted" smallint,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(50)
);

CREATE TABLE "tbl_edetail_doc_mst" (
    "c_code" character varying(10) NOT NULL,
    "c_doc_nm" character varying(500),
    "c_doc_desc" character varying(2000),
    "d_frmdate" timestamp without time zone,
    "d_todate" timestamp without time zone,
    "n_active" integer,
    "c_doc_path" character varying(500),
    "n_deleted" integer,
    "d_modifiedby" timestamp without time zone,
    "d_createdby" timestamp without time zone,
    "c_modifiedby" character varying(10),
    "c_createdby" character varying(10),
    "C_FileName" character varying(500)
);

CREATE TABLE "tbl_edetail_greetings_setup" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_edetail_greetings_setup_n_srno_seq'::regclass),
    "n_type" integer,
    "c_division_code" text,
    "c_region_code" text,
    "c_message_details" text,
    "c_message_line" text,
    "n_deleted" integer,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_edetail_mkt_emp_rel" (
    "c_fs_code" character varying(10) NOT NULL,
    "c_emp_code" character varying(10) NOT NULL,
    "d_date_from" timestamp without time zone NOT NULL,
    "d_date_to" timestamp without time zone,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_edetail_mkt_emp_rel_29102021" (
    "c_fs_code" character varying(10) NOT NULL,
    "c_emp_code" character varying(10) NOT NULL,
    "d_date_from" timestamp without time zone NOT NULL,
    "d_date_to" timestamp without time zone,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_edetail_multi_approval" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_edetail_multi_approval_n_srno_seq'::regclass),
    "n_type" integer,
    "C_Emp_Code" character varying(20)
);

CREATE TABLE "tbl_edetail_multi_category" (
    "n_srno" integer NOT NULL,
    "c_category" character varying(50)
);

CREATE TABLE "tbl_edetail_multi_category_history_new" (
    "n_srno" integer NOT NULL,
    "c_category" character varying(50)
);

CREATE TABLE "tbl_edetail_multi_category_history_old" (
    "n_srno" integer NOT NULL,
    "c_category" character varying(50)
);

CREATE TABLE "tbl_edetail_statusbar_freeze" (
    "c_div_code" character varying(20)
);

CREATE TABLE "tbl_edetail_subtit_forward_history" (
    "n_title_code" integer,
    "n_subtitle_code" integer,
    "c_emp_from" character varying(20),
    "c_emp_to" character varying(20),
    "c_note" character varying(250),
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_edetail_subtittle_doc_map" (
    "c_item_code" character varying(20),
    "c_sub_tittle_code" character varying(20),
    "c_document_code" character varying(20)
);

CREATE TABLE "tbl_edetail_subtittle_doc_map_history" (
    "c_item_code" character varying(20),
    "c_sub_tittle_code" character varying(20),
    "c_document_code" character varying(20)
);

CREATE TABLE "tbl_edetail_subtittle_doc_map_history_old" (
    "c_item_code" character varying(20),
    "c_sub_tittle_code" character varying(20),
    "c_document_code" character varying(20)
);

CREATE TABLE "tbl_edetail_title_det" (
    "n_title_code" integer,
    "c_caption" character varying(50),
    "c_imagepath" character varying(500),
    "n_srno" integer,
    "n_deleted" integer NOT NULL DEFAULT 0,
    "n_sort_order" integer NOT NULL DEFAULT 0,
    "n_priority" integer,
    "c_forward_to" character varying(20),
    "c_package_name" character varying(200),
    "c_title_code" character varying(10),
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "c_zip_load_pagename" character varying(100),
    "c_FileSize" character varying(100),
    "c_azure_file_path" character varying(1000),
    "c_folder_file_path" character varying(1000),
    "c_file_extn" character varying(200),
    "c_file_type" character varying(20)
);

CREATE TABLE "tbl_edetail_title_det_changed_history" (
    "n_title_code" integer,
    "c_caption" character varying(50),
    "c_imagepath" character varying(500),
    "n_srno" integer,
    "n_deleted" integer NOT NULL DEFAULT 0,
    "n_sort_order" integer NOT NULL DEFAULT 0,
    "n_priority" integer,
    "c_forward_to" character varying(20),
    "c_package_name" character varying(200),
    "c_title_code" character varying(10),
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "c_zip_load_pagename" character varying(100),
    "c_FileSize" character varying(1000),
    "n_srno_mst" bigint,
    "c_azure_file_path" character varying(1000),
    "c_folder_file_path" character varying(1000),
    "c_file_extn" character varying(200),
    "c_file_type" character varying(20),
    "n_srno_det" bigint
);

CREATE TABLE "tbl_edetail_title_det_history" (
    "n_title_code" integer,
    "c_caption" character varying(50),
    "c_imagepath" character varying(500),
    "n_srno" integer,
    "n_deleted" integer NOT NULL DEFAULT 0,
    "n_sort_order" integer NOT NULL DEFAULT 0,
    "n_priority" integer,
    "c_forward_to" character varying(20),
    "c_package_name" character varying(200),
    "c_title_code" character varying(10),
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "c_zip_load_pagename" character varying(100),
    "c_FileSize" character varying(1000),
    "n_srno_mst" bigint,
    "c_azure_file_path" character varying(1000),
    "c_folder_file_path" character varying(1000),
    "c_file_extn" character varying(200),
    "c_file_type" character varying(20),
    "n_srno_det" bigint
);

CREATE TABLE "tbl_edetail_title_forward" (
    "N_Title_Code" character varying(20),
    "C_Emp_From" character varying(20),
    "C_Emp_to" character varying(20),
    "d_created_date" timestamp without time zone,
    "c_note" character varying(250)
);

CREATE TABLE "tbl_edetail_title_forward_history" (
    "n_title_code" integer,
    "c_emp_from" character varying(20),
    "c_emp_to" character varying(20),
    "c_note" character varying(250),
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_edi_sample_process" (
    "c_depo_code" character(15) NOT NULL,
    "c_year" character(2) NOT NULL,
    "c_prefix" character(2) NOT NULL DEFAULT 'SM'::bpchar,
    "n_srno" numeric NOT NULL,
    "d_date" timestamp without time zone,
    "c_item_code" character(20) NOT NULL,
    "c_item_name" character(50) NOT NULL,
    "c_batch_no" character(20) NOT NULL,
    "n_qty" numeric,
    "n_srt" numeric,
    "c_rep_code" character(20),
    "c_rep_name" character(50),
    "c_add_1" character(50),
    "c_add_2" character(50),
    "c_add_3" character(50),
    "c_add_4" character(50),
    "c_pin" character(15),
    "c_phone" character(20),
    "c_mobile" character(15),
    "c_email" character(30),
    "n_cancel_flag" numeric DEFAULT '0'::numeric
);

CREATE TABLE "tbl_email_doctor_mapping" (
    "c_dr_code" text NOT NULL,
    "c_createdby" character varying(50),
    "d_createddate" timestamp without time zone
);

CREATE TABLE "tbl_email_engine_setup" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_email_engine_setup_n_srno_seq'::regclass),
    "n_type" integer,
    "c_Division_Code" text,
    "c_Region_Code" text,
    "n_deleted" integer,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_email_inbox_history" (
    "n_inboxid" integer NOT NULL,
    "n_Rowid" integer NOT NULL,
    "c_Receivedmailid" character varying(100) NOT NULL,
    "n_ReceivedType" character varying(3),
    "n_Sent" integer NOT NULL,
    "n_Trash" integer NOT NULL,
    "n_Draft" integer NOT NULL,
    "n_delete" integer,
    "n_deletefromtrash" integer,
    "n_read" integer,
    "d_datetime" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_emp_incent" (
    "C_candidateID" character varying(10) NOT NULL,
    "c_incent" character varying(5000) NOT NULL
);

CREATE TABLE "tbl_emp_metro" (
    "c_metro" character varying(5000),
    "c_town" character varying(5000)
);

CREATE TABLE "tbl_emp_resign_mst" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_emp_resign_mst_n_srno_seq'::regclass),
    "c_emp_code" character varying(10),
    "d_closing_date" timestamp without time zone,
    "d_date" timestamp without time zone,
    "c_filepath" character varying(200),
    "c_remarks" character varying(200),
    "c_status" character varying(50),
    "c_ConfirmedBy" character varying(10),
    "d_ConfirmedDate" timestamp without time zone,
    "c_ConfirmedNote" character varying(200),
    "c_fs_code" character varying(10),
    "c_fscode_Enteredby" character varying(10)
);

CREATE TABLE "tbl_emp_terms" (
    "C_candidateID" character varying(10),
    "c_terms" character varying(5000)
);

CREATE TABLE "tbl_error_log_HtmlReportGenerator" (
    "n_id" integer,
    "c_error" text,
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_excel_generation_rpt_name" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_excel_generation_rpt_name_n_srno_seq'::regclass),
    "n_id" integer,
    "c_report_name" character varying(100),
    "n_flag" integer NOT NULL DEFAULT 1,
    "n_deleted" integer NOT NULL DEFAULT 0
);

CREATE TABLE "tbl_expenseApproval_ErrorChecking" (
    "c_queryupdated" text,
    "d_dateupdated" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_expenseApproval_ErrorChecking_ForApprovalStaus" (
    "c_srno" character varying(1000),
    "c_staus" character varying(1000),
    "d_dateapproved" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_expense_beneficiary_details" (
    "n_srno" numeric DEFAULT NULL::numeric,
    "c_beneficiary" character varying(100) DEFAULT NULL::character varying,
    "c_PaymentChequeNo" character varying(100) DEFAULT NULL::character varying,
    "d_PaymentDate" timestamp without time zone,
    "c_PaymentDetails" character varying(200) DEFAULT NULL::character varying,
    "n_PaymentAmount" numeric DEFAULT NULL::numeric,
    "n_rowid" integer DEFAULT 1,
    "n_status" integer DEFAULT 1,
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_expense_beneficiary_details_log" (
    "n_srno" numeric DEFAULT NULL::numeric,
    "c_beneficiary" character varying(100) DEFAULT NULL::character varying,
    "c_PaymentChequeNo" character varying(100) DEFAULT NULL::character varying,
    "d_PaymentDate" timestamp without time zone,
    "c_PaymentDetails" character varying(200) DEFAULT NULL::character varying,
    "n_PaymentAmount" numeric DEFAULT NULL::numeric,
    "n_rowid" integer DEFAULT 1,
    "n_status" integer DEFAULT 1,
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_expense_daily_file_upload" (
    "id" integer NOT NULL DEFAULT nextval('tbl_expense_daily_file_upload_id_seq'::regclass),
    "n_srno" integer,
    "d_date" timestamp without time zone,
    "c_file" text,
    "c_FileName" character varying(500),
    "c_billtype" character varying(50),
    "c_billnumber" character varying(100),
    "c_billamount" numeric,
    "C_Docpath" text
);

CREATE TABLE "tbl_expense_daily_file_upload_android" (
    "id" integer NOT NULL DEFAULT nextval('tbl_expense_daily_file_upload_android_id_seq'::regclass),
    "n_srno" integer,
    "d_date" timestamp without time zone,
    "c_file" text,
    "c_FileName" character varying(500),
    "c_billtype" character varying(50),
    "c_billnumber" character varying(100),
    "c_billamount" numeric,
    "C_Docpath" text
);

CREATE TABLE "tbl_expense_file_details_android" (
    "id" integer NOT NULL DEFAULT nextval('tbl_expense_file_details_android_id_seq'::regclass),
    "n_srno" integer,
    "c_fscode" character varying(100),
    "c_empcode" character varying(100),
    "c_claimtype" character varying(100),
    "d_datefrom" timestamp without time zone,
    "d_dateto" timestamp without time zone
);

CREATE TABLE "tbl_fmcg_manager_loginlogoutdet" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_fmcg_manager_loginlogoutdet_n_id_seq'::regclass),
    "c_fsCode" character varying(50),
    "c_dsc_code" character varying(50),
    "c_stk_code" character varying(50),
    "d_logindate" timestamp without time zone,
    "d_logoutdate" timestamp without time zone,
    "c_latitude" character varying(100),
    "c_longitude" character varying(100)
);

CREATE TABLE "tbl_fmcg_scheme_det" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_fmcg_scheme_det_n_id_seq'::regclass),
    "n_SchHeader_id" integer,
    "c_scheme_c_code" character varying(20) NOT NULL,
    "n_saleqty" numeric,
    "n_salevalue" numeric,
    "n_TotalSales" numeric,
    "n_offerqty" numeric,
    "n_offerrate" numeric,
    "n_offervaleorqty" numeric,
    "n_offerdiscount" numeric,
    "n_typeofrepayment" integer
);

CREATE TABLE "tbl_fmcg_scheme_header" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_fmcg_scheme_header_n_id_seq'::regclass),
    "c_scheme_c_code" character varying(20),
    "n_salesdefinedon" integer,
    "n_typeofsale" integer,
    "n_salesAganist" character varying(20)
);

CREATE TABLE "tbl_fmcg_scheme_itemcat_det" (
    "n_SchHeader_id" integer,
    "c_schemecode_code" character varying(20) NOT NULL,
    "c_itemcat_code" character varying(20)
);

CREATE TABLE "tbl_fmcg_scheme_mst" (
    "c_code" character varying(20) NOT NULL,
    "c_name" character varying(200),
    "d_dtfrom" timestamp without time zone,
    "d_dtto" timestamp without time zone,
    "c_description" character varying(500),
    "n_activelock" integer,
    "n_natureofscheme" integer,
    "n_applicablearea" integer,
    "d_createddate" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "n_deleted" integer DEFAULT 0
);

CREATE TABLE "tbl_fmcg_target_daywise_det" (
    "C_TargetCode" character varying(10) NOT NULL,
    "C_Item" character varying(10),
    "n_Rate" numeric,
    "n_Day1" numeric,
    "n_Day2" numeric,
    "n_Day3" numeric,
    "n_Day4" numeric,
    "n_Day5" numeric,
    "n_Day6" numeric,
    "n_Day7" numeric,
    "n_Day8" numeric,
    "n_Day9" numeric,
    "n_Day10" numeric,
    "n_Day11" numeric,
    "n_Day12" numeric,
    "n_Day13" numeric,
    "n_Day14" numeric,
    "n_Day15" numeric,
    "n_Day16" numeric,
    "n_Day17" numeric,
    "n_Day18" numeric,
    "n_Day19" numeric,
    "n_Day20" numeric,
    "n_Day21" numeric,
    "n_Day22" numeric,
    "n_Day23" numeric,
    "n_Day24" numeric,
    "n_Day25" numeric,
    "n_Day26" numeric,
    "n_Day27" numeric,
    "n_Day28" numeric,
    "n_Day29" numeric,
    "n_Day30" numeric,
    "n_Day31" numeric
);

CREATE TABLE "tbl_fmcg_target_details" (
    "C_TargetCode" character varying(10) NOT NULL,
    "c_TargetFor" character varying(10)
);

CREATE TABLE "tbl_fmcg_target_monthwise_det" (
    "C_TargetCode" character varying(10) NOT NULL,
    "C_Item" character varying(10),
    "n_Rate" numeric,
    "n_Jan" numeric,
    "n_Feb" numeric,
    "n_Mar" numeric,
    "n_Apr" numeric,
    "n_May" numeric,
    "n_Jun" numeric,
    "n_Jul" numeric,
    "n_Aug" numeric,
    "n_Sep" numeric,
    "n_Oct" numeric,
    "n_Nov" numeric,
    "n_Dec" numeric
);

CREATE TABLE "tbl_fmcg_target_mst" (
    "c_code" character varying(10) NOT NULL,
    "c_name" character varying(50) NOT NULL,
    "c_divCode" character varying(10),
    "c_region" character varying(10),
    "c_HqFs" character varying(2),
    "c_TType" character varying(10),
    "c_ItemType" character varying(10),
    "c_month" character varying(10),
    "c_year" character varying(10),
    "c_Creater" character varying(10),
    "d_Created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "n_deleted" integer NOT NULL
);

CREATE TABLE "tbl_fmcg_target_weekwise_det" (
    "C_TargetCode" character varying(10) NOT NULL,
    "C_Item" character varying(10),
    "n_Rate" numeric,
    "n_Week1" numeric,
    "n_Week2" numeric,
    "n_Week3" numeric,
    "n_Week4" numeric,
    "n_Week5" numeric,
    "n_Week6" numeric
);

CREATE TABLE "tbl_forced_login_setup" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_forced_login_setup_n_srno_seq'::regclass),
    "c_division_code" text,
    "c_region_code" text,
    "n_setdaysreminder" integer,
    "n_accessblock" integer,
    "n_deleted" integer,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "c_createdby" character varying(50)
);

CREATE TABLE "tbl_fs_emp_rel" (
    "c_fs_code" character varying(10) NOT NULL,
    "c_emp_code" character varying(10) NOT NULL,
    "d_date_from" timestamp without time zone NOT NULL,
    "d_date_to" timestamp without time zone,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_fs_emp_rel_20092021" (
    "c_fs_code" character varying(10) NOT NULL,
    "c_emp_code" character varying(10) NOT NULL,
    "d_date_from" timestamp without time zone NOT NULL,
    "d_date_to" timestamp without time zone,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_fs_emp_rel_bkp_21042026" (
    "c_fs_code" character varying(10) NOT NULL,
    "c_emp_code" character varying(10) NOT NULL,
    "d_date_from" timestamp without time zone NOT NULL,
    "d_date_to" timestamp without time zone,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_fs_mandatoryflag_mapping" (
    "c_fs_code" character varying(50),
    "n_psg_type" integer,
    "n_dsca_type" integer,
    "n_flag" integer,
    "c_modifier" character varying(20),
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_fs_mandatoryflag_mapping_log" (
    "c_fs_code" character varying(50),
    "n_psg_type" integer,
    "n_dsca_type" integer,
    "n_flag" integer,
    "c_modifier" character varying(20),
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_fs_relieving" (
    "c_empcode" character varying(20),
    "c_fscode" character varying(20),
    "d_relievingdate" timestamp without time zone,
    "d_date" timestamp without time zone,
    "n_activity_process_update_flag" integer
);

CREATE TABLE "tbl_fs_tab_det" (
    "c_empcode" character varying(50),
    "c_fscode" character varying(50),
    "c_imei_no" character varying(50),
    "c_mgrcode" character varying(50),
    "c_tab_with_whom" character varying(50),
    "n_status" integer
);

CREATE TABLE "tbl_fs_token_android" (
    "c_fscode" character varying(50),
    "c_token_id" text,
    "d_date" timestamp without time zone
);

CREATE TABLE "tbl_fsemp_map" (
    "n_srno" integer NOT NULL,
    "c_fs_code" character varying(10) NOT NULL,
    "c_map_code" character varying(10) NOT NULL,
    "d_from_date" timestamp without time zone NOT NULL,
    "d_to_date" timestamp without time zone,
    "n_stp_no" integer
);

CREATE TABLE "tbl_fsheirarchy_change" (
    "c_oldfscode" character varying(50),
    "c_newfscode" character varying(50),
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "n_doc_update_flag" integer NOT NULL DEFAULT 0,
    "n_primary_id" integer NOT NULL DEFAULT nextval('tbl_fsheirarchy_change_n_primary_id_seq'::regclass),
    "n_activity_process_update_flag" integer
);

CREATE TABLE "tbl_fsheirarchy_change_log" (
    "c_oldfscode" character varying(50),
    "c_newfscode" character varying(50),
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_fstype_division_online_mcr_exception" (
    "n_fs_type" integer,
    "c_division_code" character varying(20),
    "n_primary_id" integer NOT NULL DEFAULT nextval('tbl_fstype_division_online_mcr_exception_n_primary_id_seq'::regclass)
);

CREATE TABLE "tbl_gadget_group_det" (
    "C_GP_Code" character varying(20),
    "C_Gadget_Code" character varying(20)
);

CREATE TABLE "tbl_gadget_group_mst" (
    "c_code" character varying(10) NOT NULL,
    "c_name" character varying(50) NOT NULL,
    "n_active" boolean NOT NULL,
    "n_deleted" integer NOT NULL,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(50)
);

CREATE TABLE "tbl_gdn_stock" (
    "c_year" character(4) NOT NULL,
    "c_prefix" character(20) NOT NULL,
    "n_srno" numeric NOT NULL,
    "d_date" timestamp without time zone,
    "c_empid" character varying(10),
    "n_type" integer,
    "c_note" character varying(50),
    "n_delete" integer,
    "c_ref_dep_code" character varying(10),
    "c_ref_year" character(4),
    "c_ref_prefix" character(10),
    "n_ref_srno" numeric
);

CREATE TABLE "tbl_gdn_stock_details" (
    "c_year" character(4) NOT NULL,
    "c_prefix" character(20) NOT NULL,
    "n_srno" numeric NOT NULL,
    "n_row_id" character varying(50) NOT NULL,
    "c_item_code" character varying(10),
    "n_qty" numeric,
    "n_rate" numeric
);

CREATE TABLE "tbl_gdn_transactionstk" (
    "c_year" character(4) NOT NULL,
    "c_prefix" character(20) NOT NULL,
    "n_srno" numeric NOT NULL,
    "d_issueddate" timestamp without time zone,
    "c_empid" character varying(10),
    "n_type" integer,
    "c_note" character varying(500),
    "n_delete" integer,
    "c_fscode_to" character varying(20),
    "n_status" integer,
    "d_confirmeddate" timestamp without time zone,
    "n_connectedsrno" numeric
);

CREATE TABLE "tbl_gdn_transactionstk_details" (
    "n_srno" numeric NOT NULL,
    "n_row_id" character varying(50) NOT NULL,
    "c_item_code" character varying(10) NOT NULL,
    "n_qty" numeric,
    "n_issuedqty" numeric
);

CREATE TABLE "tbl_general_divmapping_det" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_general_divmapping_det_n_id_seq'::regclass),
    "c_divmapping_code" character varying(255),
    "div_code" character varying(255)
);

CREATE TABLE "tbl_general_divmapping_mst" (
    "c_code" character varying(255),
    "c_description" text,
    "n_deleted" integer
);

CREATE TABLE "tbl_general_setup" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_general_setup_n_srno_seq'::regclass),
    "n_type" integer,
    "c_setup_name" character varying(100),
    "n_deleted" integer,
    "n_division" integer,
    "n_region" integer,
    "n_designation" integer,
    "n_hqtype" integer,
    "n_fs" integer
);

CREATE TABLE "tbl_general_setup_Auto_SFC" (
    "N_ID" integer NOT NULL DEFAULT nextval('"tbl_general_setup_Auto_SFC_N_ID_seq"'::regclass),
    "N_General_Setup_ID" numeric,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "N_Rateperkm" numeric,
    "N_Transit" numeric,
    "N_Monthly_EXP" numeric,
    "N_TA_Type" integer NOT NULL,
    "C_Created_By" character varying(20),
    "D_Created_On" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "C_Modified_By" character varying(20),
    "D_Modified_On" timestamp without time zone
);

CREATE TABLE "tbl_general_setup_cme_rtm_expense" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_general_setup_cme_rtm_expense_n_id_seq'::regclass),
    "n_general_setup_id" numeric NOT NULL,
    "n_expense_approval_type" integer NOT NULL,
    "d_created_on" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "c_created_by" character varying(50),
    "d_modified_on" timestamp without time zone,
    "c_modified_by" character varying(50)
);

CREATE TABLE "tbl_general_setup_cme_rtm_expense_sfa_approval_hierarchy" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_general_setup_cme_rtm_expense_sfa_approval_hierarc_n_id_seq'::regclass),
    "n_general_setup_id" numeric,
    "n_activity_type" integer,
    "n_type" integer,
    "c_created_by" character varying(20),
    "d_created_on" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_modified_by" character varying(20),
    "d_modified_on" timestamp without time zone
);

CREATE TABLE "tbl_general_setup_hdr" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_general_setup_hdr_n_srno_seq'::regclass),
    "c_division_code" text,
    "c_region_code" text,
    "c_desc_code" character varying(100),
    "C_fscode" text,
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "n_setup_type" integer,
    "d_date_from" timestamp without time zone,
    "d_date_to" timestamp without time zone,
    "n_approval_required" integer,
    "n_approval_type" integer,
    "n_activity_type_cust_mandatory" integer,
    "n_customer_type_cust_mandatory" integer,
    "n_status_cust_mandatory" integer,
    "n_work_type_cust_mandatory" character varying(25)
);

CREATE TABLE "tbl_general_setup_non_sfa_approval_hierarchy" (
    "N_ID" integer NOT NULL DEFAULT nextval('"tbl_general_setup_non_sfa_approval_hierarchy_N_ID_seq"'::regclass),
    "N_General_Setup_ID" integer,
    "C_Emp_Code" character varying(20),
    "N_Approval_Order" integer,
    "C_Created_By" character varying(20),
    "D_Created_On" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "C_Modified_By" character varying(20),
    "D_Modified_On" timestamp without time zone,
    "C_Non_Sfa_User_Level_Name" character varying(500),
    "n_enablerejection" integer,
    "n_activity_level" integer
);

CREATE TABLE "tbl_general_setup_psa_amount_mapping" (
    "N_ID" integer NOT NULL DEFAULT nextval('"tbl_general_setup_psa_amount_mapping_N_ID_seq"'::regclass),
    "N_General_Setup_ID" numeric,
    "C_FMV_Grade" character varying(50),
    "N_Rate_Per_Hour" numeric,
    "N_Max_Hours" integer,
    "N_Deleted" integer,
    "C_Created_By" character varying(20),
    "D_Created_On" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "C_Modified_By" character varying(20),
    "D_Modified_On" timestamp without time zone
);

CREATE TABLE "tbl_general_setup_sfa_approval_hierarchy" (
    "N_ID" integer NOT NULL DEFAULT nextval('"tbl_general_setup_sfa_approval_hierarchy_N_ID_seq"'::regclass),
    "N_General_Setup_ID" numeric,
    "N_Type" integer,
    "C_Created_By" character varying(20),
    "D_Created_On" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "C_Modified_By" character varying(20),
    "D_Modified_On" timestamp without time zone
);

CREATE TABLE "tbl_general_setup_sfc_expence" (
    "N_ID" integer NOT NULL DEFAULT nextval('"tbl_general_setup_sfc_expence_N_ID_seq"'::regclass),
    "N_General_Setup_ID" numeric,
    "C_Expence_Code" character varying(20),
    "N_Amount" numeric,
    "C_Created_By" character varying(20),
    "D_Created_On" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "C_Modified_By" character varying(20),
    "D_Modified_On" timestamp without time zone
);

CREATE TABLE "tbl_gps_tracking_interval_det" (
    "n_rowid" integer NOT NULL DEFAULT nextval('tbl_gps_tracking_interval_det_n_rowid_seq'::regclass),
    "n_setup_srno" integer NOT NULL,
    "n_setup_type" text,
    "interval" integer,
    "n_meters" numeric
);

CREATE TABLE "tbl_hcp_confirm_edit_disable_setup" (
    "n_primary_id" integer NOT NULL DEFAULT nextval('tbl_hcp_confirm_edit_disable_setup_n_primary_id_seq'::regclass),
    "n_setup" integer,
    "c_doccode" integer NOT NULL DEFAULT 0,
    "c_docname" integer NOT NULL DEFAULT 0,
    "c_clinicName" integer NOT NULL DEFAULT 0,
    "c_clinicStreetName" integer NOT NULL DEFAULT 0,
    "c_clinicAreaName" integer NOT NULL DEFAULT 0,
    "c_clinicLandmark" integer NOT NULL DEFAULT 0,
    "c_clinicCityCode" integer NOT NULL DEFAULT 0,
    "c_clinicState" integer NOT NULL DEFAULT 0,
    "c_clinicPinCode" integer NOT NULL DEFAULT 0,
    "c_clinicSelAreaCode" integer NOT NULL DEFAULT 0,
    "c_resBuildName" integer NOT NULL DEFAULT 0,
    "c_resStreetName" integer NOT NULL DEFAULT 0,
    "c_resArea" integer NOT NULL DEFAULT 0,
    "c_resLandMark" integer NOT NULL DEFAULT 0,
    "c_resCityCode" integer NOT NULL DEFAULT 0,
    "c_resState" integer NOT NULL DEFAULT 0,
    "c_resPinCode" integer NOT NULL DEFAULT 0,
    "c_docRegNo" integer NOT NULL DEFAULT 0,
    "c_yrRegNo" integer NOT NULL DEFAULT 0,
    "c_regImageName" integer NOT NULL DEFAULT 0,
    "c_noExpHighQuali" integer NOT NULL DEFAULT 0,
    "c_therapAreaCode" integer NOT NULL DEFAULT 0,
    "c_noJournalPubli" integer NOT NULL DEFAULT 0,
    "c_noOfAuthorship" integer NOT NULL DEFAULT 0,
    "c_partRadio" integer NOT NULL DEFAULT 0,
    "c_partCheckValue" integer NOT NULL DEFAULT 0,
    "c_speakerRadio" integer NOT NULL DEFAULT 0,
    "c_speakerCheckValue" integer NOT NULL DEFAULT 0,
    "c_editorialBoard" integer NOT NULL DEFAULT 0,
    "c_position" integer NOT NULL DEFAULT 0,
    "c_experienceCode" integer NOT NULL DEFAULT 0,
    "c_documentCollect" integer NOT NULL DEFAULT 0,
    "c_panNo" integer NOT NULL DEFAULT 0,
    "c_panImage" integer NOT NULL DEFAULT 0,
    "c_email" integer NOT NULL DEFAULT 0,
    "c_qualificationCode" integer NOT NULL DEFAULT 0,
    "c_qualificationImage" integer NOT NULL DEFAULT 0,
    "C_Subarea_Code" integer NOT NULL DEFAULT 0,
    "c_mobileno" integer NOT NULL DEFAULT 0,
    "C_Category" integer NOT NULL DEFAULT 0,
    "n_lami" integer NOT NULL DEFAULT 0,
    "n_lgmi" integer NOT NULL DEFAULT 0,
    "c_prescription_pad_image" integer NOT NULL DEFAULT 0,
    "c_visiting_card_image" integer NOT NULL DEFAULT 0,
    "c_hospital_clinic_signboard_image" integer NOT NULL DEFAULT 0,
    "c_others_image" integer NOT NULL DEFAULT 0,
    "c_fscode" character varying(50),
    "c_empcode" character varying(50),
    "n_deleted" integer NOT NULL DEFAULT 0,
    "d_date" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "c_pan_name" integer NOT NULL DEFAULT 0
);

CREATE TABLE "tbl_hcp_fmv_category" (
    "n_primary_id" integer NOT NULL DEFAULT nextval('tbl_hcp_fmv_category_n_primary_id_seq'::regclass),
    "c_code" character varying(50),
    "c_name" character varying(500),
    "n_deleted" integer NOT NULL DEFAULT 0
);

CREATE TABLE "tbl_hcp_fmv_metroclassification_det" (
    "n_primary_id" integer NOT NULL DEFAULT nextval('tbl_hcp_fmv_metroclassification_det_n_primary_id_seq'::regclass),
    "c_hcp_fmv_category_code" character varying(50),
    "c_metroclassification_code" character varying(50),
    "n_fmv_value" integer
);

CREATE TABLE "tbl_hcp_mandatory_setup" (
    "n_primary_id" integer NOT NULL DEFAULT nextval('tbl_hcp_mandatory_setup_n_primary_id_seq'::regclass),
    "n_setup" integer,
    "c_doccode" integer NOT NULL DEFAULT 0,
    "c_docname" integer NOT NULL DEFAULT 0,
    "c_clinicName" integer NOT NULL DEFAULT 0,
    "c_clinicStreetName" integer NOT NULL DEFAULT 0,
    "c_clinicAreaName" integer NOT NULL DEFAULT 0,
    "c_clinicLandmark" integer NOT NULL DEFAULT 0,
    "c_clinicCityCode" integer NOT NULL DEFAULT 0,
    "c_clinicState" integer NOT NULL DEFAULT 0,
    "c_clinicPinCode" integer NOT NULL DEFAULT 0,
    "c_clinicSelAreaCode" integer NOT NULL DEFAULT 0,
    "c_resBuildName" integer NOT NULL DEFAULT 0,
    "c_resStreetName" integer NOT NULL DEFAULT 0,
    "c_resArea" integer NOT NULL DEFAULT 0,
    "c_resLandMark" integer NOT NULL DEFAULT 0,
    "c_resCityCode" integer NOT NULL DEFAULT 0,
    "c_resState" integer NOT NULL DEFAULT 0,
    "c_resPinCode" integer NOT NULL DEFAULT 0,
    "c_docRegNo" integer NOT NULL DEFAULT 0,
    "c_yrRegNo" integer NOT NULL DEFAULT 0,
    "c_regImageName" integer NOT NULL DEFAULT 0,
    "c_noExpHighQuali" integer NOT NULL DEFAULT 0,
    "c_therapAreaCode" integer NOT NULL DEFAULT 0,
    "c_noJournalPubli" integer NOT NULL DEFAULT 0,
    "c_noOfAuthorship" integer NOT NULL DEFAULT 0,
    "c_partRadio" integer NOT NULL DEFAULT 0,
    "c_partCheckValue" integer NOT NULL DEFAULT 0,
    "c_speakerRadio" integer NOT NULL DEFAULT 0,
    "c_speakerCheckValue" integer NOT NULL DEFAULT 0,
    "c_editorialBoard" integer NOT NULL DEFAULT 0,
    "c_position" integer NOT NULL DEFAULT 0,
    "c_experienceCode" integer NOT NULL DEFAULT 0,
    "c_documentCollect" integer NOT NULL DEFAULT 0,
    "c_panNo" integer NOT NULL DEFAULT 0,
    "c_panImage" integer NOT NULL DEFAULT 0,
    "c_email" integer NOT NULL DEFAULT 0,
    "c_qualificationCode" integer NOT NULL DEFAULT 0,
    "c_qualificationImage" integer NOT NULL DEFAULT 0,
    "C_Subarea_Code" integer NOT NULL DEFAULT 0,
    "c_mobileno" integer NOT NULL DEFAULT 0,
    "C_Category" integer NOT NULL DEFAULT 0,
    "n_lami" integer NOT NULL DEFAULT 0,
    "n_lgmi" integer NOT NULL DEFAULT 0,
    "c_prescription_pad_image" integer NOT NULL DEFAULT 0,
    "c_visiting_card_image" integer NOT NULL DEFAULT 0,
    "c_hospital_clinic_signboard_image" integer NOT NULL DEFAULT 0,
    "c_others_image" integer NOT NULL DEFAULT 0,
    "c_fscode" character varying(50),
    "c_empcode" character varying(50),
    "n_deleted" integer NOT NULL DEFAULT 0,
    "d_date" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "n_type" integer NOT NULL DEFAULT 0,
    "c_remarks" integer NOT NULL DEFAULT 0,
    "c_pan_name" integer NOT NULL DEFAULT 0,
    "c_any_image_mandatory_count" integer NOT NULL DEFAULT 0,
    "n_isfamilyphysician" integer
);

CREATE TABLE "tbl_hospital_mst" (
    "c_code" character varying(200) NOT NULL,
    "c_hospitaltype_name" character varying(200),
    "c_shortname" character varying(200),
    "n_deleted" integer,
    "n_active" integer,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(20)
);

CREATE TABLE "tbl_imagetagged_upload" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_imagetagged_upload_n_srno_seq'::regclass),
    "c_fileName" text,
    "n_deleted" integer,
    "d_date" timestamp without time zone,
    "n_remoteserver" integer,
    "c_fscode" character varying(50)
);

CREATE TABLE "tbl_input_tracking_det" (
    "n_expno" integer,
    "c_fscode" character varying(100),
    "d_submit_date" timestamp without time zone,
    "n_claim_amnt" integer,
    "n_month" integer,
    "n_year" integer,
    "n_status" integer,
    "c_approve_rej_by" character varying(100),
    "c_reason" character varying(500),
    "n_fromexpense" integer,
    "d_approve_rej_date" timestamp without time zone
);

CREATE TABLE "tbl_input_tracking_dets" (
    "n_hrd_srno" integer,
    "n_setup_srno" integer,
    "c_mngr_codes" character varying(100)
);

CREATE TABLE "tbl_input_tracking_mult_approve" (
    "n_expno" integer,
    "c_approve_rej_by" character varying(100),
    "d_approve_rej_date" timestamp without time zone,
    "c_reason" character varying(500),
    "n_status" integer
);

CREATE TABLE "tbl_inv_desk_maping" (
    "c_inv_code" character varying(10) NOT NULL,
    "c_inv_desk_code" character varying(10) NOT NULL
);

CREATE TABLE "tbl_inv_field_wise_staging" (
    "c_inv_code" character varying(50) NOT NULL,
    "n_Fstype" integer NOT NULL,
    "n_type" integer NOT NULL,
    "n_upperlimit" numeric NOT NULL,
    "n_status" integer NOT NULL
);

CREATE TABLE "tbl_inv_forward_det" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_inv_forward_det_n_srno_seq'::regclass),
    "n_inv_srno" integer NOT NULL,
    "c_fs_code_to" character varying(50) NOT NULL,
    "c_fs_code_from" character varying(50) NOT NULL,
    "c_Note" character varying(500),
    "c_reply_note" character varying(500),
    "d_reply_date" timestamp without time zone,
    "d_posting_date" timestamp without time zone,
    "n_deleted" integer
);

CREATE TABLE "tbl_inv_sales_Det" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_inv_sales_Det_n_srno_seq"'::regclass),
    "c_item_code" character varying(10) NOT NULL,
    "c_fscode" character varying(10) NOT NULL,
    "c_drcode" character varying(50) NOT NULL,
    "c_chemistcode" character varying(50) NOT NULL,
    "date" timestamp without time zone NOT NULL,
    "prefix" character varying(50),
    "docno" character varying(50),
    "qty" integer NOT NULL,
    "rate" numeric,
    "val" numeric
);

CREATE TABLE "tbl_inv_sales_history_det" (
    "n_srno" numeric NOT NULL,
    "n_target" numeric,
    "n_sales" numeric,
    "n_achievement" numeric,
    "n_growth" numeric,
    "n_productivity" numeric
);

CREATE TABLE "tbl_inv_sales_history_det_log" (
    "n_srno" numeric NOT NULL,
    "n_target" numeric,
    "n_sales" numeric,
    "n_achievement" numeric,
    "n_growth" numeric,
    "n_productivity" numeric
);

CREATE TABLE "tbl_inv_sales_summery" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_inv_sales_summery_n_srno_seq'::regclass),
    "C_FsCode" character varying(10) NOT NULL,
    "C_DR_Code" character varying(10) NOT NULL,
    "C_Chem_Code" character(10) NOT NULL,
    "N_Month" integer NOT NULL,
    "N_Year" integer NOT NULL,
    "N_WeekNo" integer NOT NULL,
    "C_Item_Code" character varying(10) NOT NULL,
    "N_Qty" integer,
    "N_Val" numeric,
    "n_rate" numeric
);

CREATE TABLE "tbl_inv_setup" (
    "n_dcrinvrt" integer,
    "c_inv_plan_lblamt" character varying(50),
    "n_inv_saleshistory" integer,
    "n_inv_rate_edit" integer,
    "n_inv_month" integer,
    "n_inv_doc_profile" integer,
    "n_doctor_timing" integer,
    "n_dr_profile_validation" integer,
    "n_month_validation" integer,
    "n_print_req" integer,
    "c_print_page" character varying(50),
    "n_approval_flag" integer,
    "n_mis_sale_flag" integer
);

CREATE TABLE "tbl_inv_stag_budget" (
    "c_inv_code" character varying(10) NOT NULL,
    "c_fs_code" character varying(10) NOT NULL,
    "c_fstype" integer,
    "c_pmt_code" character varying(50) NOT NULL,
    "n_amount" numeric NOT NULL,
    "n_totamt_fstype" numeric NOT NULL,
    "n_status" integer
);

CREATE TABLE "tbl_inv_type" (
    "c_code" character varying(10) NOT NULL,
    "c_inv_type" character varying(50) NOT NULL,
    "c_budget_required" integer NOT NULL,
    "c_budget_pmt" integer NOT NULL,
    "n_deleted" integer NOT NULL,
    "c_details" text
);

CREATE TABLE "tbl_investment_aproval_details" (
    "n_srno" integer NOT NULL,
    "d_aprovedon" timestamp without time zone,
    "d_paidon" timestamp without time zone,
    "n_paid_amt" numeric,
    "c_paidby" character varying(50),
    "c_paidas" character varying(50),
    "c_paid_ref" character varying(50),
    "c_pay_detail1" character varying(200),
    "c_pay_details2" character varying(200),
    "c_fs_code" character varying(50) NOT NULL
);

CREATE TABLE "tbl_investment_desk_det" (
    "c_desk_code" character varying(10) NOT NULL,
    "c_division" character varying(10),
    "c_region" character varying(10),
    "c_zone" character varying(10)
);

CREATE TABLE "tbl_investment_plan_flowup" (
    "n_srno" integer,
    "n_month" integer,
    "d_Date" timestamp without time zone,
    "c_note" character varying(200),
    "n_amount" numeric,
    "workedwith" integer
);

CREATE TABLE "tbl_investment_releted_send_det" (
    "n_srno" numeric NOT NULL,
    "c_emp_code" character varying(10) NOT NULL,
    "c_event" character varying(2) NOT NULL,
    "n_flag" integer,
    "d_create_date" timestamp without time zone
);

CREATE TABLE "tbl_invoice_det" (
    "c_dep_code" character varying(10) NOT NULL,
    "c_year" character varying(10) NOT NULL,
    "c_prefix" character varying(10) NOT NULL,
    "n_bill_no" numeric NOT NULL,
    "c_itemcode" character varying(10) NOT NULL,
    "n_rowid" numeric NOT NULL,
    "c_batchno" character varying(15),
    "d_expdate" timestamp without time zone,
    "n_qty" numeric,
    "n_free_qty" numeric,
    "n_replace_qty" character(10),
    "n_rate" numeric,
    "n_ptr" numeric,
    "n_mrp" numeric,
    "n_excise_duty" numeric,
    "n_tax1" numeric,
    "n_tax1_amt" numeric,
    "c_tax1" character varying(10),
    "n_tax2" numeric,
    "n_tax2_amt" numeric,
    "c_tax2" character varying(10),
    "n_tax3" numeric,
    "n_tax3_amt" numeric,
    "c_tax3" character varying(10),
    "n_tax4" numeric,
    "n_tax4_amt" numeric,
    "c_tax4" character varying(10),
    "n_tax5" numeric,
    "n_tax5_amt" numeric,
    "c_tax5" character varying(10),
    "n_tax6" numeric,
    "n_tax6_amt" numeric,
    "c_tax6" character varying(10),
    "n_scheme_disc" numeric,
    "n_scheme_disc_amt" numeric,
    "n_item_disc" numeric,
    "n_item_disc_amt" numeric,
    "c_order_no" character varying(10),
    "d_order_date" timestamp without time zone,
    "n_tax_on_scheme_qty" numeric
);

CREATE TABLE "tbl_invoice_mst" (
    "c_dep_code" character varying(10) NOT NULL,
    "c_year" character varying(10) NOT NULL,
    "c_prefix" character varying(10) NOT NULL,
    "n_bill_no" numeric NOT NULL,
    "d_bill_date" timestamp without time zone,
    "d_due_date" timestamp without time zone,
    "n_cr_days" numeric,
    "c_refno" character varying(20),
    "d_refdate" timestamp without time zone,
    "c_lrno" character varying(20),
    "d_lrdate" timestamp without time zone,
    "c_stockist_code" character varying(50),
    "n_total_purchase_val" numeric,
    "n_tax1" numeric,
    "n_tax2" numeric,
    "n_tax3" numeric,
    "n_tax4" numeric,
    "n_tax5" numeric,
    "n_tax6" numeric,
    "n_tax_amt" numeric,
    "n_non_tax_amt" numeric,
    "n_frieght" numeric,
    "n_other_charges" numeric,
    "n_discount" numeric,
    "n_net_bill_amt" numeric,
    "c_creditnote_no" character varying(15),
    "n_creditnote_amt" numeric,
    "c_debitnote_no" character varying(15),
    "n_debitnote_amt" numeric,
    "c_remark" character varying(100),
    "c_transport" character varying(100),
    "n_no_of_cases" numeric,
    "n_weight" numeric
);

CREATE TABLE "tbl_item_div_det" (
    "c_item_code" character varying(10) NOT NULL,
    "c_div_code" character varying(10) NOT NULL,
    "c_type" character varying(1) NOT NULL,
    "c_type_code" character varying(10) NOT NULL,
    "d_date_from" timestamp without time zone NOT NULL,
    "d_date_to" timestamp without time zone
);

CREATE TABLE "tbl_item_map" (
    "c_item_code" character varying(10) NOT NULL,
    "c_map_code" character varying(10) NOT NULL,
    "n_factor" numeric,
    "d_date_from" timestamp without time zone NOT NULL,
    "d_date_to" timestamp without time zone
);

CREATE TABLE "tbl_item_mapping_integration" (
    "c_item_code" character varying(18) NOT NULL,
    "c_sfa_item_code" character varying(10) NOT NULL
);

CREATE TABLE "tbl_item_rate" (
    "c_Item_code" character varying(10) NOT NULL,
    "n_rate" numeric,
    "n_mrp" numeric,
    "n_std_rate" numeric,
    "n_pts_rate" numeric,
    "d_date_from" timestamp without time zone NOT NULL,
    "d_date_to" timestamp without time zone
);

CREATE TABLE "tbl_late_first_call_details" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_late_first_call_details_n_id_seq'::regclass),
    "c_fscode" character varying(50),
    "d_firstCall_time" timestamp without time zone,
    "d_serverupdatedate" timestamp without time zone
);

CREATE TABLE "tbl_leave_Setup" (
    "n_srNo" integer NOT NULL DEFAULT nextval('"tbl_leave_Setup_n_srNo_seq"'::regclass),
    "c_Divison" text,
    "c_Region" text,
    "c_Designation" integer,
    "c_Fs" text,
    "n_delete" integer NOT NULL,
    "d_cdate" timestamp without time zone,
    "c_user" character varying(50)
);

CREATE TABLE "tbl_leave_setupno" (
    "n_srno" integer,
    "n_setupno" integer,
    "d_created" timestamp without time zone,
    "c_division" text,
    "c_desig" character varying(100),
    "c_empcode" character varying(100)
);

CREATE TABLE "tbl_leave_shiftapproval" (
    "n_leave_mst_srno" numeric,
    "c_fs_code" character varying(50),
    "c_approvedby" character varying(50),
    "d_Modified" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_locatio_log" (
    "c_data" text,
    "c_fscode" character varying(50),
    "d_Date" timestamp without time zone
);

CREATE TABLE "tbl_log_drlocation_api" (
    "companyID" character varying(50),
    "fscode" character varying(20),
    "empcode" character varying(20),
    "indexno" character varying(20),
    "data" text,
    "d_date" timestamp without time zone
);

CREATE TABLE "tbl_mail_error_Logs" (
    "n_srno" integer NOT NULL DEFAULT nextval('"tbl_mail_error_Logs_n_srno_seq"'::regclass),
    "c_emailid" character varying(100),
    "c_errorlog" text,
    "d_date" timestamp without time zone
);

CREATE TABLE "tbl_manager_doc_mapping_items" (
    "c_cust_code" character varying(50),
    "c_fscode" character varying(50),
    "d_date_from" timestamp without time zone,
    "d_date_to" timestamp without time zone,
    "c_item_code" character varying(50)
);

CREATE TABLE "tbl_marketing_msg_mst" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_marketing_msg_mst_n_srno_seq'::regclass),
    "c_subject" character varying(50),
    "c_message" text,
    "d_date_from" timestamp without time zone,
    "d_date_to" timestamp without time zone,
    "c_div_code" character varying(50),
    "n_type" integer,
    "c_created_by" character varying(50),
    "d_created_date" timestamp without time zone,
    "d_modify_date" timestamp without time zone
);

CREATE TABLE "tbl_material_mst" (
    "c_code" character varying(10) NOT NULL,
    "c_name" character varying(50) NOT NULL,
    "c_short_name" character varying(7),
    "c_description" character varying(100),
    "n_approval_required" integer,
    "c_desk_code" character varying(10),
    "c_group_code" character varying(10),
    "N_Deleted" integer DEFAULT 0,
    "C_Modifier" character varying(50),
    "D_Modified" timestamp without time zone,
    "D_created" timestamp without time zone,
    "n_type" integer,
    "n_qty" numeric,
    "c_vendor_name" character varying(100),
    "c_email_id" character varying(50),
    "c_email_Subject" character varying(100),
    "c_email_head1" character varying(100),
    "c_email_head2" character varying(100),
    "c_email_head3" character varying(100),
    "c_email_head4" character varying(100),
    "c_email_head5" character varying(100),
    "c_email_head6" character varying(100)
);

CREATE TABLE "tbl_material_request" (
    "n_srno" bigint NOT NULL,
    "c_emp_code" character varying(10),
    "d_date" timestamp without time zone,
    "c_material_code" character varying(10),
    "c_description1" character varying(200),
    "c_description2" character varying(200),
    "n_priority" integer DEFAULT 3,
    "d_approved" timestamp without time zone,
    "d_due_date" timestamp without time zone,
    "c_approved_note" character varying(200),
    "c_desk_code" character varying(10),
    "d_confirmed" timestamp without time zone,
    "c_confirmed_note" character varying(200),
    "c_confirmedby" character varying(10),
    "c_status" character(1),
    "c_approvedby" character varying(10),
    "C_DeliveryType" character varying(10),
    "c_description3" character varying(100),
    "c_division_name" character varying(50),
    "c_designation" character varying(50),
    "n_rcvd" integer,
    "c_rcvdby" character varying(10)
);

CREATE TABLE "tbl_material_request_heirarchy" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_material_request_heirarchy_n_srno_seq'::regclass),
    "n_request_type" integer NOT NULL,
    "c_material_group" character varying(10) NOT NULL,
    "c_request_emp_location" character varying(10),
    "c_request_emp_department" character varying(10),
    "c_request_emp_code" character varying(10),
    "c_desk_code" character varying(10) NOT NULL,
    "d_date" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "n_active" integer NOT NULL DEFAULT 0
);

CREATE TABLE "tbl_mcr_reporting_setupdata" (
    "c_fscode" character varying(50)
);

CREATE TABLE "tbl_mdm_device_mapping" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_mdm_device_mapping_n_id_seq'::regclass),
    "c_deviceid" character varying(50),
    "c_fs_code" character varying(20),
    "c_empno" character varying(20),
    "d_dtfrom" timestamp without time zone,
    "d_dtto" timestamp without time zone,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_createdby" character varying(20),
    "d_modified" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_modifiedby" character varying(20),
    "n_requestid" numeric
);

CREATE TABLE "tbl_menu360" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_menu360_n_id_seq'::regclass),
    "c_name" character varying(200),
    "c_image" character varying(200)
);

CREATE TABLE "tbl_menu360_bck010825" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_menu360_bck010825_n_id_seq'::regclass),
    "c_name" character varying(200),
    "c_image" character varying(200)
);

CREATE TABLE "tbl_menu360_sub" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_menu360_sub_n_id_seq'::regclass),
    "n_menu_id" integer,
    "c_name" character varying(200),
    "c_url" character varying(200),
    "old_url" character varying(400),
    "c_url_360" character varying(100),
    "N_Dsca_Type" integer,
    "N_MenuRights" integer,
    "n_visible" integer
);

CREATE TABLE "tbl_menu360_sub_bck010825" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_menu360_sub_bck010825_n_id_seq'::regclass),
    "n_menu_id" integer,
    "c_name" character varying(200),
    "c_url" character varying(200),
    "old_url" character varying(400),
    "c_url_360" character varying(100),
    "N_Dsca_Type" integer
);

CREATE TABLE "tbl_menu_favourite" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_menu_favourite_n_id_seq'::regclass),
    "c_user_id" character varying(20),
    "c_menu_url" character varying(5000),
    "c_menu_name" character varying(200),
    "n_menu_id" integer,
    "n_sort_order" integer,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_menu_rights_log" (
    "Id" integer NOT NULL DEFAULT nextval('"tbl_menu_rights_log_Id_seq"'::regclass),
    "division" text NOT NULL,
    "c_region" text NOT NULL,
    "fstype" character varying(50),
    "fscode" text,
    "menuItem" character varying(100) NOT NULL,
    "mainMenu" character varying(100) NOT NULL,
    "menuorderno" character varying(50) NOT NULL,
    "menustatus" character varying(50) NOT NULL,
    "d_cretedate" timestamp without time zone NOT NULL,
    "c_user" character varying(100) NOT NULL
);

CREATE TABLE "tbl_menus" (
    "menuid" integer NOT NULL,
    "projectid" integer,
    "styleid" integer,
    "name" character varying(50),
    "alwaysvisible" integer,
    "orientation" integer,
    "overflow" character varying(50),
    "margin" integer,
    "top" character varying(50),
    "left" integer
);

CREATE TABLE "tbl_metroclassification" (
    "n_id" integer,
    "c_name" character varying(100),
    "n_deleted" integer DEFAULT 0
);

CREATE TABLE "tbl_mngr_gift_allocation" (
    "c_empcode" character varying(100),
    "c_itemcode" character varying(100),
    "n_qty" integer,
    "d_date" timestamp without time zone,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(50),
    "c_doccode" character varying(20),
    "n_id" integer,
    "c_transaction_id" character varying(50),
    "n_cycle_balance_qty" integer,
    "c_cycle_id" character varying(50),
    "n_primary_id" integer NOT NULL DEFAULT nextval('tbl_mngr_gift_allocation_n_primary_id_seq'::regclass),
    "n_lotsize" integer
);

CREATE TABLE "tbl_mngr_gift_allocation_rps_reject_log" (
    "c_empcode" character varying(100),
    "c_itemcode" character varying(100),
    "n_qty" integer,
    "d_date" timestamp without time zone,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(50),
    "c_doccode" character varying(20),
    "n_id" integer,
    "c_transaction_id" character varying(50),
    "n_cycle_balance_qty" integer,
    "c_cycle_id" character varying(50),
    "n_primary_id" integer NOT NULL DEFAULT nextval('tbl_mngr_gift_allocation_rps_reject_log_n_primary_id_seq'::regclass)
);

CREATE TABLE "tbl_mngr_gift_allocation_stock" (
    "c_empcode" character varying(100),
    "c_itemcode" character varying(100),
    "n_qty" integer,
    "n_qty_stock" integer,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_doccode" character varying(20)
);

CREATE TABLE "tbl_mngr_gift_allocation_upload" (
    "c_empcode" character varying(100),
    "c_itemcode" character varying(100),
    "n_qty" character varying(100),
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_modifier" character varying(50),
    "n_uploadid" numeric NOT NULL,
    "c_cycle_id" character varying(50),
    "n_lotsize" character varying(100),
    "n_validationpass" integer DEFAULT 0,
    "c_validationmessage" text,
    "d_modified" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "n_isStockUpdated" smallint,
    "n_primary_id" integer NOT NULL DEFAULT nextval('tbl_mngr_gift_allocation_upload_n_primary_id_seq'::regclass)
);

CREATE TABLE "tbl_mtp_automation_setup" (
    "n_HQworking" integer NOT NULL,
    "n_MissedDrcallpopup" integer NOT NULL,
    "n_Missedsubareapopup" integer NOT NULL,
    "n_displayprefertime" integer NOT NULL,
    "n_stptemplate" integer NOT NULL,
    "n_mtpgenerateday" integer NOT NULL
);

CREATE TABLE "tbl_mtp_daywise_msg" (
    "c_FS_Code" character varying(100),
    "c_pagename" character varying(100),
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_mtp_entry_unlock" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_mtp_entry_unlock_n_id_seq'::regclass),
    "n_month" integer NOT NULL,
    "n_year" integer NOT NULL,
    "c_fscode" character varying(20) NOT NULL,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "c_created_by" character varying(50) NOT NULL
);

CREATE TABLE "tbl_mtp_entry_unlock_log" (
    "n_log_id" integer NOT NULL DEFAULT nextval('tbl_mtp_entry_unlock_log_n_log_id_seq'::regclass),
    "n_id" integer,
    "n_month" integer,
    "n_year" integer,
    "c_fscode" character varying(20),
    "d_created" timestamp without time zone,
    "c_created_by" character varying(50),
    "d_deleted" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_deleted_by" character varying(50)
);

CREATE TABLE "tbl_mtp_lock_settings" (
    "c_code" character varying(50) NOT NULL,
    "n_lock_days" numeric,
    "n_type" integer NOT NULL,
    "n_lock_days_from" integer
);

CREATE TABLE "tbl_mtp_note" (
    "N_srno" numeric NOT NULL,
    "c_work_type" character varying(10) NOT NULL,
    "D_Date" timestamp without time zone NOT NULL,
    "c_Note" character varying(500)
);

CREATE TABLE "tbl_mtp_promotionalactivity_setup" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_mtp_promotionalactivity_setup_n_srno_seq'::regclass),
    "c_division_code" text,
    "c_region_code" text,
    "c_desc_code" text,
    "c_fscode" text,
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_mtp_shiftapproval" (
    "n_mtp_srno" numeric,
    "c_fs_code" character varying(50),
    "c_approvedby" character varying(50),
    "d_Modified" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_mtp_subdetailscamp" (
    "n_srno" numeric NOT NULL,
    "n_mtprowid" numeric NOT NULL,
    "n_rowid" numeric NOT NULL,
    "c_village_code" character varying(20),
    "c_camp_type" character varying(20),
    "c_camp_topic" character varying(20),
    "c_note" character varying(500),
    "c_work_with" character varying(50),
    "n_copy" integer,
    "c_campsetup" character varying(20)
);

CREATE TABLE "tbl_otp_fmcg_new_chemist" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_otp_fmcg_new_chemist_n_id_seq'::regclass),
    "n_mobno" numeric,
    "n_otp" numeric,
    "n_otp_status" integer,
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_outstanding" (
    "c_depo" character varying(10) NOT NULL,
    "c_prefix" character varying(10) NOT NULL,
    "c_type" character varying(10) NOT NULL,
    "c_bill_no" numeric NOT NULL,
    "d_bill_date" timestamp without time zone,
    "d_due_date" timestamp without time zone,
    "c_stockist_code" character varying(10) NOT NULL,
    "n_bill_amount" numeric,
    "n_due_amount" numeric,
    "c_remark" character varying(50) NOT NULL,
    "c_year" character varying(4) NOT NULL,
    "c_stockist_xlcode" character varying(10),
    "c_div_code" character varying(10)
);

CREATE TABLE "tbl_passwordhistory" (
    "c_userid" character varying(50),
    "c_password" character varying(100),
    "d_created_date" timestamp without time zone,
    "c_fscode" character varying(20)
);

CREATE TABLE "tbl_photo_tagged_upload_setup" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_photo_tagged_upload_setup_n_srno_seq'::regclass),
    "c_division_Code" text,
    "c_region_Code" text,
    "n_deleted" integer,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_pmt_details" (
    "C_pmt_code" character varying(10) NOT NULL,
    "c_item_code" character varying(50) NOT NULL
);

CREATE TABLE "tbl_pmt_grp_mst" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50),
    "C_Empcode" character varying(50),
    "n_deleted" integer
);

CREATE TABLE "tbl_pmt_mst" (
    "c_code" character varying(10) NOT NULL,
    "c_name" character varying(50),
    "c_group_code" character varying(10),
    "n_deleted" integer
);

CREATE TABLE "tbl_precall_visibility" (
    "c_divcode" character varying(20)
);

CREATE TABLE "tbl_priority_detailingsetup" (
    "id" integer NOT NULL DEFAULT nextval('tbl_priority_detailingsetup_id_seq'::regclass),
    "c_type" character varying(500),
    "c_code" character varying(150),
    "c_priority" text,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_prisecSales_forwh" (
    "N_MONTH" character varying(4),
    "N_YEAR" character varying(4)
);

CREATE TABLE "tbl_proc_exectime" (
    "c_spname" character varying(1000),
    "c_status" character varying(10),
    "d_dt" timestamp without time zone
);

CREATE TABLE "tbl_prp_CurrentBussiness_Details" (
    "n_srno" integer NOT NULL,
    "c_brandcode" character varying(50),
    "n_amount" numeric
);

CREATE TABLE "tbl_prp_ExpectedBussiness_Details" (
    "n_srno" integer NOT NULL,
    "c_brandcode" character varying(50),
    "n_amount" numeric
);

CREATE TABLE "tbl_prp_Topic_Mst" (
    "C_Code" character varying(15) NOT NULL,
    "c_Name" character varying(50),
    "n_deleted" integer,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "c_mofiedby" character varying(50),
    "n_mandatory" integer
);

CREATE TABLE "tbl_prp_accHead_det" (
    "C_Code" character varying(15) NOT NULL,
    "c_accHead_Code" character varying(20)
);

CREATE TABLE "tbl_prp_applicableHeirarchy_det" (
    "C_Code" character varying(15),
    "n_type" integer
);

CREATE TABLE "tbl_prp_approvalHeirarchy_det" (
    "C_Code" character varying(15),
    "n_type" integer
);

CREATE TABLE "tbl_prp_desk_mst" (
    "c_code" character varying(50) NOT NULL,
    "c_deskName" character varying(50),
    "c_employee" character varying(50),
    "c_prp" character varying(100),
    "n_Deleted" smallint
);

CREATE TABLE "tbl_prp_desk_region" (
    "C_Code" character varying(15),
    "c_region_code" character varying(50),
    "n_checked" smallint
);

CREATE TABLE "tbl_prp_desk_zone" (
    "C_Code" character varying(15),
    "c_zone_code" character varying(50),
    "n_checked" smallint
);

CREATE TABLE "tbl_prp_division_det" (
    "C_Code" character varying(15),
    "c_division_Code" character varying(100)
);

CREATE TABLE "tbl_prp_expense_BillUpload" (
    "n_Srno" numeric NOT NULL,
    "c_imagefilename" character varying(300),
    "c_UploadedBy" text
);

CREATE TABLE "tbl_prp_expense_Brands" (
    "n_Srno" numeric NOT NULL,
    "c_BrandCode" character varying(300)
);

CREATE TABLE "tbl_prp_expense_Brands_log" (
    "n_Srno" numeric NOT NULL,
    "c_BrandCode" character varying(300),
    "n_CycleId" numeric
);

CREATE TABLE "tbl_prp_expense_PhotoUpload" (
    "n_Srno" numeric NOT NULL,
    "c_imagefilename" character varying(300),
    "c_UploadedBy" text
);

CREATE TABLE "tbl_prp_expense_PhotoUpload_log" (
    "n_Srno" numeric NOT NULL,
    "c_imagefilename" character varying(300),
    "n_CycleId" numeric
);

CREATE TABLE "tbl_prp_expense_Subarea_DRCode" (
    "n_Srno" numeric NOT NULL,
    "c_DrCode" character varying(300)
);

CREATE TABLE "tbl_prp_expense_Subarea_DRCode_log" (
    "n_Srno" numeric NOT NULL,
    "c_DrCode" character varying(300),
    "n_CycleId" numeric
);

CREATE TABLE "tbl_prp_expense_TeamMembers" (
    "n_Srno" numeric NOT NULL,
    "c_TeamMemberName" character varying(300)
);

CREATE TABLE "tbl_prp_expense_TeamMembers_log" (
    "n_Srno" numeric NOT NULL,
    "c_TeamMemberName" character varying(300),
    "n_CycleId" numeric
);

CREATE TABLE "tbl_prp_expense_data" (
    "n_Srno" numeric NOT NULL,
    "c_ExpCode" character varying(20),
    "n_ActualAmt" numeric,
    "n_Adv_ActualAmt" numeric,
    "n_Conf_Adv_ActualAmt" numeric,
    "n_Conf_ActualAmt" numeric,
    "n_paid_recover_amt" numeric,
    "d_date_exp" timestamp without time zone,
    "c_remark" text,
    "n_flg" integer
);

CREATE TABLE "tbl_prp_expense_data_log" (
    "n_Srno" numeric NOT NULL,
    "c_ExpCode" character varying(20),
    "n_ActualAmt" numeric,
    "n_Adv_ActualAmt" numeric,
    "n_Conf_Adv_ActualAmt" numeric,
    "n_Conf_ActualAmt" numeric,
    "n_paid_recover_amt" numeric,
    "d_date_exp" timestamp without time zone,
    "c_remark" text,
    "n_flg" integer,
    "n_CycleId" numeric
);

CREATE TABLE "tbl_prp_expense_multiapprovallog" (
    "n_Srno" numeric NOT NULL,
    "c_approvedby" character varying(20),
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_remarks" text,
    "n_reject" integer NOT NULL DEFAULT 0
);

CREATE TABLE "tbl_prp_expense_multiapprovallog_det" (
    "n_Srno" numeric NOT NULL,
    "c_approvedby" character varying(20),
    "d_date" timestamp without time zone,
    "c_Remarks" text,
    "n_reject" integer NOT NULL DEFAULT 0,
    "n_CycleId" numeric
);

CREATE TABLE "tbl_prp_expense_request" (
    "n_Srno" numeric NOT NULL,
    "c_PrpCode" character varying(100),
    "c_Venue" character varying(1000),
    "c_Speaker" character varying(1000),
    "n_No_DrAttended" integer,
    "d_Prp_Requested_Date" timestamp without time zone,
    "d_Prp_Cme_Date" timestamp without time zone,
    "c_TopicCode" character varying(100),
    "c_Subarea" text,
    "n_BTC" numeric,
    "n_EsitmatedTotAmt" numeric,
    "n_ActualTotAmt" numeric,
    "n_AdvReceived" numeric,
    "n_Balance" numeric,
    "n_NoTeamMembers" integer,
    "c_RequestedFs" character varying(20),
    "c_RequestedDt" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_ApprovedBy" character varying(20),
    "c_ApprovedDt" timestamp without time zone,
    "c_ConfirmedBy" character varying(20),
    "c_ConfirmedDt" timestamp without time zone,
    "n_status" integer,
    "d_Modified" timestamp without time zone,
    "c_division" character varying(100),
    "c_region" character varying(100),
    "n_month" integer,
    "n_year" integer,
    "c_hotel" character varying(100),
    "n_attendess" integer,
    "c_Confirm_Remarks" text,
    "d_EvtDate" timestamp without time zone,
    "n_cancelled" integer,
    "n_exp_cancel_req" integer,
    "c_exp_cancel_Remarks" text
);

CREATE TABLE "tbl_prp_expense_request_log" (
    "n_Srno" numeric NOT NULL,
    "c_PrpCode" character varying(100),
    "c_Venue" character varying(1000),
    "c_Speaker" character varying(1000),
    "n_No_DrAttended" integer,
    "d_Prp_Requested_Date" timestamp without time zone,
    "d_Prp_Cme_Date" timestamp without time zone,
    "c_TopicCode" character varying(100),
    "c_Subarea" text,
    "n_BTC" numeric,
    "n_EsitmatedTotAmt" numeric,
    "n_ActualTotAmt" numeric,
    "n_AdvReceived" numeric,
    "n_Balance" numeric,
    "n_NoTeamMembers" integer,
    "c_RequestedFs" character varying(20),
    "c_RequestedDt" timestamp without time zone,
    "c_ApprovedBy" character varying(20),
    "c_ApprovedDt" timestamp without time zone,
    "c_ConfirmedBy" character varying(20),
    "c_ConfirmedDt" timestamp without time zone,
    "c_RejectedBy" character varying(20),
    "c_RejectedDt" timestamp without time zone,
    "n_status" integer,
    "d_Modified" timestamp without time zone,
    "c_division" character varying(100),
    "c_region" character varying(100),
    "n_month" integer,
    "n_year" integer,
    "c_hotel" character varying(100),
    "n_attendess" integer,
    "d_EvtDate" timestamp without time zone,
    "c_Confirm_Remarks" text,
    "n_CycleId" numeric
);

CREATE TABLE "tbl_prp_geoHeirarchy_det" (
    "C_Code" character varying(15),
    "c_region_code" character varying(20)
);

CREATE TABLE "tbl_prp_mst" (
    "C_Code" character varying(15) NOT NULL,
    "c_name" character varying(100),
    "c_topic" character varying(100),
    "c_type" character varying(100),
    "n_report_format" integer,
    "d_validity_from" timestamp without time zone,
    "d_validity_to" timestamp without time zone,
    "d_create_date" timestamp without time zone,
    "c_create_user" character varying(50),
    "d_modify_date" timestamp without time zone,
    "c_modify_user" character varying(50),
    "n_deleted" integer,
    "n_Status" integer,
    "n_prp_other_type" integer
);

CREATE TABLE "tbl_prp_report_format" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_prp_report_format_n_id_seq'::regclass),
    "c_formatName" character varying(100),
    "n_datefield" smallint,
    "n_datefieldMan" smallint,
    "n_place" smallint,
    "n_placeMan" smallint,
    "n_location" smallint,
    "n_locationMan" smallint,
    "n_topic" smallint,
    "n_topicMan" smallint,
    "n_attendees" smallint,
    "n_attendeesMan" smallint,
    "n_audio" smallint,
    "n_audioMan" smallint,
    "n_video" smallint,
    "n_videoMan" smallint,
    "n_speaker" smallint,
    "n_speakerMan" smallint,
    "n_KOL" smallint,
    "n_KOLMan" smallint,
    "n_deleted" smallint,
    "N_Status" integer,
    "n_CurBussiness" integer,
    "n_ExpBussiness" integer,
    "n_CurBussinessMand" integer,
    "n_ExpBussinessMand" integer
);

CREATE TABLE "tbl_prp_topic_Mst_Det" (
    "C_Code" character varying(15),
    "c_Brand" text
);

CREATE TABLE "tbl_psa_request" (
    "N_Srno" integer NOT NULL DEFAULT nextval('"tbl_psa_request_N_Srno_seq"'::regclass),
    "N_General_Setup_ID" numeric NOT NULL,
    "N_PSA_Doc_Wise_Setup_ID" numeric,
    "D_Request_Date" timestamp without time zone,
    "C_FS_Code" character varying(20),
    "C_EMP_Code" character varying(20),
    "C_Doc_Code" character varying(50),
    "N_Approval_Type" integer NOT NULL,
    "C_FMV_Grade" character varying(50),
    "N_Rate_Per_Hour" numeric,
    "N_Req_PSA_Hours" integer,
    "N_Req_PSA_Amount" numeric,
    "C_Email_ID" character varying(1000),
    "N_Mobile_No" numeric,
    "N_Status" integer,
    "N_Last_Activity_Done_By" character varying(20),
    "d_Last_Activity_Date" timestamp without time zone,
    "C_Last_Activity_Remarks" character varying(1000)
);

CREATE TABLE "tbl_questionGroup_Mst" (
    "n_groupID" integer NOT NULL,
    "n_groupname" character varying(50)
);

CREATE TABLE "tbl_question_mst" (
    "C_Question" character varying(1000),
    "n_QuestionID" integer NOT NULL,
    "n_Quest_groupid" integer
);

CREATE TABLE "tbl_rcpa_email_sent_det" (
    "c_fscode" character varying(20),
    "c_email" character varying(20),
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "n_email_sent_flag" integer DEFAULT 0,
    "c_error_msg" text
);

CREATE TABLE "tbl_rcpa_email_settings" (
    "n_type" integer,
    "d_start_date" timestamp without time zone,
    "d_end_date" timestamp without time zone
);

CREATE TABLE "tbl_rcpa_sourcename_history" (
    "c_code" character varying(50) NOT NULL,
    "c_name" character varying(100)
);

CREATE TABLE "tbl_region_item_rate" (
    "c_item_code" character varying(10) NOT NULL,
    "c_region_code" character varying(50) NOT NULL,
    "d_date_from" timestamp without time zone NOT NULL,
    "d_date_to" timestamp without time zone,
    "n_rate" numeric,
    "n_mrp" numeric,
    "n_std_rate" numeric,
    "n_pts_rate" numeric,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_rep_group_mst" (
    "c_ID" character varying(10) NOT NULL,
    "C_name" character varying(50) NOT NULL,
    "N_deleted" boolean,
    "D_Created" timestamp without time zone,
    "D_Modified" timestamp without time zone,
    "C_CreatedBy" character varying(50),
    "C_ModifiedBy" character varying(50)
);

CREATE TABLE "tbl_repair_vendor_mst" (
    "n_vendorcode" integer NOT NULL DEFAULT nextval('tbl_repair_vendor_mst_n_vendorcode_seq'::regclass),
    "c_vendorname" character varying(500),
    "c_vendor_address" character varying(500),
    "n_status" integer,
    "n_deleted" integer NOT NULL,
    "d_createddate" timestamp without time zone,
    "c_createdby" character varying(500),
    "d_modifieddate" timestamp without time zone,
    "c_modifiedby" character varying(20)
);

CREATE TABLE "tbl_replace_doc_05072018" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_replace_doc_05072018_n_srno_seq'::regclass),
    "C_Code" character varying(10),
    "C_Name" character varying(200),
    "N_type" integer,
    "C_Grade" character varying(10),
    "C_Qualification" character varying(50),
    "C_Add_1" character varying(50),
    "C_Add_2" character varying(50),
    "C_Add_3" character varying(50),
    "C_Add_4" character varying(50),
    "C_Pin" character varying(10),
    "C_Phone" character varying(20),
    "C_Fax" character varying(50),
    "C_Category" character varying(10),
    "C_Area_Code" character varying(10),
    "C_Subarea_Code" character varying(10),
    "D_DOB" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "C_Email_ID" character varying(50),
    "C_FsCode" character varying(10),
    "d_created" timestamp without time zone NOT NULL,
    "n_flag" integer NOT NULL,
    "c_reason" character varying(500),
    "d_closedt" timestamp without time zone,
    "N_Status" integer NOT NULL,
    "d_openindate" timestamp without time zone,
    "d_approvedate" timestamp without time zone,
    "d_confirmdate" timestamp without time zone,
    "C_Region_Code" character varying(10),
    "C_Div_Code" character varying(10),
    "c_DrClass_Code" character varying(10),
    "c_Approval_Remarks" character varying(500),
    "c_Confirmation_Remarks" character varying(500),
    "n_mci" character varying(20),
    "C_FName" character varying(50),
    "C_LName" character varying(50),
    "C_ApprovedBy" character varying(50),
    "n_SetupId" bigint,
    "n_age" character varying(100),
    "c_speciality" character varying(200),
    "n_noofpatients" character varying(100),
    "n_drpurchase" integer,
    "n_crntbusines" character varying(200),
    "n_drpotentcial" character varying(200),
    "n_businespotential" character varying(200),
    "c_childname1" character varying(200),
    "d_child1dob" timestamp without time zone,
    "c_childname2" character varying(200),
    "d_child2dob" timestamp without time zone,
    "c_childname3" character varying(200),
    "d_child3dob" timestamp without time zone,
    "c_city" character varying(200),
    "c_state" character varying(200),
    "c_house" character varying(200),
    "c_street" character varying(200),
    "c_area" character varying(200),
    "c_landmark" character varying(200),
    "c_city1" character varying(200),
    "c_state2" character varying(200),
    "c_pincode" character varying(200),
    "N_DRPRESCRIPTION" character varying(200),
    "n_child2dob" integer,
    "c_landline" character varying(20),
    "c_middlename" character varying(50),
    "c_spousename" character varying(100),
    "D_spousedob" timestamp without time zone,
    "c_ConfirmDeskCode" character varying(100),
    "c_RefFsCode" character varying(10),
    "c_confirmedBy" character varying(15),
    "c_docmstpan" character varying(10)
);

CREATE TABLE "tbl_replace_doc_confirmation_que_add_log" (
    "n_srno" numeric,
    "c_code" character varying(10),
    "type" integer,
    "d_date" timestamp without time zone
);

CREATE TABLE "tbl_replace_doc_request_management_log" (
    "n_srno" numeric NOT NULL,
    "c_fs_code" character varying(100),
    "n_nextheirarchytype" integer,
    "c_nextheirarchyfscode" character varying(100),
    "n_setupid" integer,
    "n_status" integer,
    "d_modifieddate" timestamp without time zone,
    "n_apprequired" integer,
    "n_singleormultiple" integer,
    "n_deskfstype" integer,
    "n_confrequiredfieldexists" integer
);

CREATE TABLE "tbl_report_filter_mst" (
    "n_id" integer NOT NULL,
    "c_label_display" character varying(50),
    "c_display_type" character varying(50),
    "c_sql_query" text,
    "n_onload" integer,
    "c_control_type" character varying(50),
    "c_query_type" character varying(50),
    "c_query_parameter" character varying(500),
    "n_R_type" integer
);

CREATE TABLE "tbl_report_input_details" (
    "n_id" integer NOT NULL,
    "n_priority" integer NOT NULL,
    "n_control_id" integer,
    "n_multiple_select" boolean,
    "n_mandatory" boolean,
    "n_readonly" boolean,
    "c_onchange_query" text,
    "c_onchange_parameter" character varying(1000),
    "c_onchange_control" character varying(1000),
    "c_retrival_option" character varying(100),
    "n_rerival_priority" integer
);

CREATE TABLE "tbl_report_view_query" (
    "n_id" integer NOT NULL,
    "c_query" text,
    "c_query_type" character varying(50),
    "c_query_parameter" character varying(1000),
    "c_report_column" text
);

CREATE TABLE "tbl_request_type" (
    "c_code" integer NOT NULL DEFAULT nextval('tbl_request_type_c_code_seq'::regclass),
    "c_request_type" character varying(50) NOT NULL
);

CREATE TABLE "tbl_res_emp_plel_balance_det" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_res_emp_plel_balance_det_n_srno_seq'::regclass),
    "c_fs_code" character varying(50),
    "c_emp_code" character varying(50),
    "d_created_date" timestamp without time zone,
    "d_api_called_date" timestamp without time zone,
    "n_api_status" integer,
    "n_balance_plel" integer,
    "n_remain_month_bal" integer,
    "n_total_plel_bal" integer
);

CREATE TABLE "tbl_resignationsetup" (
    "n_type" numeric
);

CREATE TABLE "tbl_retailer_setup" (
    "n_pincode" integer,
    "n_phnone" integer,
    "n_grade" integer,
    "n_class" integer,
    "n_landmark" integer,
    "n_typeofOutlet" integer
);

CREATE TABLE "tbl_roi_brand_mapping" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_roi_brand_mapping_n_srno_seq'::regclass),
    "c_divison" character varying(50),
    "n_type" integer,
    "c_item_code" text,
    "c_createdby" character varying(50),
    "d_createddate" timestamp without time zone
);

CREATE TABLE "tbl_roi_det" (
    "n_srno" integer NOT NULL,
    "c_doc_code" character varying(20),
    "c_itemcode" character varying(20),
    "n_pack" character varying(20),
    "n_rate" character varying(20),
    "n_qty" character varying(20),
    "n_value" character varying(20),
    "c_note" character varying(500),
    "n_docroi" integer,
    "roi_remark" character varying(200)
);

CREATE TABLE "tbl_roi_hdr" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_roi_hdr_n_srno_seq'::regclass),
    "c_subarea" character varying(100),
    "d_date" timestamp without time zone,
    "n_no_roi" integer,
    "n_status" integer,
    "c_requestedby" character varying(20),
    "n_totalamount" character varying(20),
    "c_note" text,
    "d_posting_date" timestamp without time zone
);

CREATE TABLE "tbl_roi_mandatorysettings_setup" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_roi_mandatorysettings_setup_n_srno_seq'::regclass),
    "n_type" integer,
    "c_division_code" text,
    "c_region_code" text,
    "n_deleted" integer,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "n_campaign_dr_mandatory" integer
);

CREATE TABLE "tbl_role_component_availablemappings" (
    "n_dsca_type" integer,
    "n_component_id" integer,
    "n_delete" integer DEFAULT 0,
    "c_comp_display_name" character varying(100)
);

CREATE TABLE "tbl_roll_master_cateogry_mapping" (
    "c_hospital_code" character varying(100),
    "c_category_code" character varying(100),
    "n_hospital_type" integer
);

CREATE TABLE "tbl_rp_srno_5072018" (
    "srno" character varying(100),
    "fs1" character varying(20),
    "fs2" character varying(20)
);

CREATE TABLE "tbl_rps_cluster_confirmator" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_rps_cluster_confirmator_n_srno_seq'::regclass),
    "n_setup_no" integer,
    "c_cluster_confirmator" character varying(50),
    "n_amount" numeric,
    "c_cluster_extrn_email" text,
    "c_acc_dept1_code" character varying(50),
    "c_acc_dept1_extrn_email" text,
    "c_acc_dept2_code" character varying(50),
    "c_acc_dept2_extrn_email" text,
    "c_div_sec_code" character varying(50),
    "c_div_sec_extrn_email" text,
    "c_dr_app_rej_type" integer,
    "c_dr_app_rej_extrn_email" text,
    "c_approval_extrn_email" text,
    "n_rps_flow" integer,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_rps_cluster_confirmator_log" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_rps_cluster_confirmator_log_n_id_seq'::regclass),
    "n_srno" integer,
    "n_setup_no" integer,
    "c_cluster_confirmator" character varying(50),
    "n_amount" numeric,
    "c_cluster_extrn_email" text,
    "c_acc_dept1_code" character varying(50),
    "c_acc_dept1_extrn_email" text,
    "c_acc_dept2_code" character varying(50),
    "c_acc_dept2_extrn_email" text,
    "c_div_sec_code" character varying(50),
    "c_div_sec_extrn_email" text,
    "c_dr_app_rej_type" integer,
    "c_dr_app_rej_extrn_email" text,
    "c_approval_extrn_email" text,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "d_insert" timestamp without time zone
);

CREATE TABLE "tbl_rps_doctorwise_gift_allocation_upload" (
    "c_empcode" character varying(100),
    "c_itemcode" character varying(100),
    "c_doctorcode" character varying(100),
    "n_qty" integer,
    "d_date" timestamp without time zone,
    "c_modifier" character varying(50),
    "n_uploadid" numeric NOT NULL,
    "c_cycle_id" character varying(50),
    "n_lotsize" integer,
    "d_modified" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "n_primary_id" integer NOT NULL DEFAULT nextval('tbl_rps_doctorwise_gift_allocation_upload_n_primary_id_seq'::regclass),
    "c_pancard" character varying(50),
    "n_headerUpdate" integer DEFAULT 0,
    "n_stockUpdate" integer DEFAULT 0,
    "n_transactionUpdate" integer DEFAULT 0,
    "n_rpsno" character varying(10)
);

CREATE TABLE "tbl_rps_expense_BillUpload" (
    "n_Srno" numeric NOT NULL,
    "c_imagefilename" character varying(300)
);

CREATE TABLE "tbl_rps_expense_PhotoUpload" (
    "n_Srno" numeric NOT NULL,
    "c_imagefilename" character varying(300)
);

CREATE TABLE "tbl_rps_gift_doc_input_qty" (
    "n_rps_srno" bigint,
    "d_rps_date" timestamp without time zone,
    "c_doc_code" character varying(20),
    "c_gift_code" character varying(20),
    "n_gift_qty" numeric,
    "d_createddate" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_rps_gift_doc_input_qty_rps_reject_log" (
    "n_rps_srno" bigint,
    "d_rps_date" timestamp without time zone,
    "c_doc_code" character varying(20),
    "c_gift_code" character varying(20),
    "n_gift_qty" numeric,
    "d_createddate" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_rps_manager_division" (
    "n_primary_id" integer NOT NULL DEFAULT nextval('tbl_rps_manager_division_n_primary_id_seq'::regclass),
    "c_mgr_fscode" character varying(50),
    "c_mgr_divcode" character varying(50),
    "c_mgr_empcode" character varying(50)
);

CREATE TABLE "tbl_rps_name" (
    "c_name" character varying(100),
    "c_display_caption" character varying(100)
);

CREATE TABLE "tbl_rps_sap_data_extract_cycle_det" (
    "n_primary_id" integer NOT NULL DEFAULT nextval('tbl_rps_sap_data_extract_cycle_det_n_primary_id_seq'::regclass),
    "c_cycle_id" character varying(50),
    "n_deleted" integer NOT NULL DEFAULT 0,
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_rps_transaction_det" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_rps_transaction_det_n_id_seq'::regclass),
    "n_rps_no" numeric,
    "c_doc_code" character varying(20),
    "c_item_code" character varying(20),
    "n_qty" integer,
    "n_cycle_id" character varying(200),
    "c_transaction_id" character varying(50),
    "d_createddt" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "n_sap_flag" integer NOT NULL DEFAULT 0
);

CREATE TABLE "tbl_rps_transaction_det_reject_log" (
    "n_id" numeric,
    "n_rps_no" numeric,
    "c_doc_code" character varying(20),
    "c_item_code" character varying(20),
    "n_qty" integer,
    "n_cycle_id" numeric,
    "c_transaction_id" character varying(50),
    "d_createddt" timestamp without time zone
);

CREATE TABLE "tbl_rpt_regionmapping" (
    "C_Report_Id" character varying(50) NOT NULL,
    "C_Division" character varying(50),
    "C_Region" character varying(50),
    "D_FromDate" timestamp without time zone,
    "D_ToDate" timestamp without time zone,
    "N_Deleted" integer,
    "D_Created" timestamp without time zone,
    "D_Modified" timestamp without time zone
);

CREATE TABLE "tbl_sample_transaction_setup" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_sample_transaction_setup_n_srno_seq'::regclass),
    "c_division" character varying(2000),
    "c_region" character varying(2000),
    "c_createdby" character varying(20),
    "n_deleted" integer,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_sap_employee_Det" (
    "Id" integer NOT NULL DEFAULT nextval('"tbl_sap_employee_Det_Id_seq"'::regclass),
    "C_EmpCode" character varying(50),
    "C_EmployeeEname" character varying(250),
    "C_ReplacementEmpCode" character varying(50),
    "C_FsCode" character varying(50),
    "D_StartDate" timestamp without time zone,
    "D_CloseDate" timestamp without time zone,
    "N_Activeflag" integer,
    "N_Delete" integer,
    "D_CreateDate" timestamp without time zone
);

CREATE TABLE "tbl_sap_employee_resign_det" (
    "Id" integer NOT NULL DEFAULT nextval('"tbl_sap_employee_resign_det_Id_seq"'::regclass),
    "C_EmpCode" character varying(50),
    "C_EmployeeEname" character varying(250),
    "D_CloseDate" timestamp without time zone,
    "D_LastReportDate" timestamp without time zone,
    "N_Activeflag" integer,
    "N_Delete" integer,
    "D_CreateDate" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_savere_skipDetails" (
    "c_Fs_code" character varying(100),
    "c_group" character varying(150),
    "d_date" timestamp without time zone
);

CREATE TABLE "tbl_scheme_applicable_area" (
    "c_schemecode" character varying(20) NOT NULL,
    "c_applicablecode" character varying(20)
);

CREATE TABLE "tbl_scheme_applicable_grade" (
    "c_schemecode" character varying(20) NOT NULL,
    "c_applicablegrade" character varying(20)
);

CREATE TABLE "tbl_scheme_offered_items" (
    "n_SchDet_id" integer,
    "n_SchHeader_id" integer,
    "c_schemecode" character varying(20) NOT NULL,
    "c_item_code" character varying(20) NOT NULL,
    "n_qty" integer
);

CREATE TABLE "tbl_sec_sales_item_det" (
    "c_stk_code" character varying(50),
    "c_item_code" character varying(10),
    "d_date" timestamp without time zone,
    "n_Qty" numeric,
    "c_fscode" character varying(10),
    "n_soh" numeric,
    "n_SrNo" integer
);

CREATE TABLE "tbl_sequential_priority_detailingsetup" (
    "id" integer NOT NULL DEFAULT nextval('tbl_sequential_priority_detailingsetup_id_seq'::regclass),
    "c_type" character varying(500),
    "c_code" character varying(150),
    "c_priority" text,
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_setup_change_request" (
    "c_field_name" character varying(50),
    "n_edit_flag" integer
);

CREATE TABLE "tbl_sfa_Stockist_Chemist_mapping" (
    "n_srno" integer NOT NULL,
    "c_Stockist_code" character varying(50),
    "c_Stockist_Chemistcode" character varying(50),
    "c_Stockist_Chemistname" character varying(100),
    "c_sfa_Chemistcode" character varying(50),
    "c_sfa_Chemistname" character varying(100),
    "c_pincode" character varying(100),
    "n_itmsrno" integer,
    "n_rowid" integer
);

CREATE TABLE "tbl_sfa_Stockist_Chemist_mapping_header" (
    "N_srno" integer NOT NULL DEFAULT nextval('"tbl_sfa_Stockist_Chemist_mapping_header_N_srno_seq"'::regclass),
    "c_Stockistcode" character varying(50),
    "D_UploadDate" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "C_UploadedBy" character varying(50),
    "N_Approved" integer DEFAULT 0,
    "n_itmsrno" integer,
    "D_ApprovedDate" timestamp without time zone
);

CREATE TABLE "tbl_sfa_depo_item_mapping" (
    "n_srno" integer NOT NULL,
    "c_depo_code" character varying(50),
    "c_depo_itemcode" character varying(50),
    "c_depo_itemname" character varying(100),
    "c_sfa_itemcode" character varying(50),
    "c_sfa_itemname" character varying(100),
    "c_refcode" character varying(100),
    "C_unitPack" character varying(100),
    "n_qty" integer,
    "n_freeissues" integer,
    "n_rate" numeric,
    "n_value" numeric,
    "n_discount" numeric,
    "n_uploadedsrno" integer,
    "c_prefix" character varying(10),
    "n_stksrno" integer,
    "d_exceldate" timestamp without time zone,
    "n_rowid" integer,
    "c_depo_stockistcode" character varying(100)
);

CREATE TABLE "tbl_sfa_depo_item_mapping_header" (
    "N_srno" integer NOT NULL DEFAULT nextval('"tbl_sfa_depo_item_mapping_header_N_srno_seq"'::regclass),
    "c_depocode" character varying(50),
    "D_UploadDate" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "C_UploadedBy" character varying(50),
    "N_Approved" integer DEFAULT 0,
    "n_stksrno" integer
);

CREATE TABLE "tbl_sfa_depo_stockist_mapping" (
    "n_srno" integer NOT NULL,
    "c_depo_code" character varying(50),
    "c_depo_stockistcode" character varying(50),
    "c_depo_stockistname" character varying(100),
    "c_sfa_stockistcode" character varying(50),
    "c_sfa_stockistname" character varying(100),
    "n_uploadedsrno" integer,
    "c_prefix" character varying(10),
    "n_itmsrno" integer,
    "n_rowid" integer
);

CREATE TABLE "tbl_sfa_depo_stockist_mapping_header" (
    "N_srno" integer NOT NULL DEFAULT nextval('"tbl_sfa_depo_stockist_mapping_header_N_srno_seq"'::regclass),
    "c_depocode" character varying(50),
    "D_UploadDate" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "C_UploadedBy" character varying(50),
    "N_Approved" integer DEFAULT 0,
    "n_itmsrno" integer
);

CREATE TABLE "tbl_sfa_menu_items" (
    "itemid" integer NOT NULL,
    "menuid" integer,
    "text" character varying(100),
    "url" character varying(255),
    "showmenu" character varying(50),
    "image" character varying(200),
    "overimage" character varying(200),
    "flag" integer,
    "n_visible" integer,
    "N_Autocode_Flag" integer,
    "SFARole" character varying(5) NOT NULL,
    "n_rights_flag" integer NOT NULL,
    "projectid" integer,
    "c_Disply_Header" character varying(200),
    "n_Disply_Header_flag" boolean,
    "n_shift" integer,
    "n_menu_refid" integer,
    "n_CommonMenus" integer NOT NULL,
    "n_user_type" integer,
    "n_mapped_itm" integer,
    "n_refid" integer DEFAULT 0,
    "n_menu_sort" integer DEFAULT 0
);

CREATE TABLE "tbl_sfa_stockist_item_mapping" (
    "n_srno" integer NOT NULL,
    "c_stockist_code" character varying(50),
    "c_stockist_itemcode" character varying(50),
    "c_stockist_itemname" character varying(100),
    "c_sfa_itemcode" character varying(50),
    "c_sfa_itemname" character varying(100),
    "n_qty" integer,
    "n_chmsrno" integer,
    "n_rowid" integer,
    "c_stockist_chemistcode" character varying(100)
);

CREATE TABLE "tbl_sfa_stockist_item_mapping_header" (
    "N_srno" integer NOT NULL DEFAULT nextval('"tbl_sfa_stockist_item_mapping_header_N_srno_seq"'::regclass),
    "c_stockist" character varying(50),
    "D_UploadDate" timestamp without time zone,
    "C_UploadedBy" character varying(50) DEFAULT CURRENT_TIMESTAMP,
    "N_Approved" integer DEFAULT 0,
    "n_chmsrno" integer,
    "D_ApprovedDate" timestamp without time zone
);

CREATE TABLE "tbl_sfachmist_stkchmist_mapping" (
    "c_stk_code" character varying(50),
    "c_sfa_chem_code" character varying(50),
    "c_stk_chem_code" character varying(10),
    "d_date_created" timestamp without time zone
);

CREATE TABLE "tbl_sfc_request" (
    "N_Srno" integer NOT NULL DEFAULT nextval('"tbl_sfc_request_N_Srno_seq"'::regclass),
    "N_General_Setup_ID" numeric,
    "D_Request_Date" timestamp without time zone,
    "C_FS_Code" character varying(20),
    "C_EMP_Code" character varying(20),
    "D_Eff_From_Date" timestamp without time zone,
    "D_Eff_To_Date" timestamp without time zone,
    "C_Based_At" character varying(20),
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "N_Rateperkm" numeric,
    "N_Transit" numeric,
    "N_Monthly_EXP" numeric,
    "N_TA_Type" integer NOT NULL,
    "N_Status" integer,
    "N_Last_Activity_Done_By" character varying(20),
    "N_Last_Activity_Done_By_Type" integer,
    "C_Last_Activity_Remarks" character varying(1000),
    "N_Deleted" integer,
    "C_Deleted_By" character varying(20),
    "D_Deleted_On" timestamp without time zone,
    "C_Created_By" character varying(20),
    "D_Created_On" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "C_Modified_By" character varying(20),
    "D_Modified_On" timestamp without time zone
);

CREATE TABLE "tbl_sfc_request_Exp" (
    "N_ID" integer NOT NULL DEFAULT nextval('"tbl_sfc_request_Exp_N_ID_seq"'::regclass),
    "N_SFC_Request_ID" numeric,
    "C_Expence_Code" character varying(20),
    "N_Amount" numeric,
    "C_Created_By" character varying(20),
    "D_Created_On" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "C_Modified_By" character varying(20),
    "D_Modified_On" timestamp without time zone
);

CREATE TABLE "tbl_sfc_request_approval_det" (
    "N_ID" integer NOT NULL DEFAULT nextval('"tbl_sfc_request_approval_det_N_ID_seq"'::regclass),
    "N_SFC_Request_ID" numeric,
    "N_General_Setup_ID" numeric,
    "C_FS_Code" character varying(20),
    "C_EMP_Code" character varying(20),
    "D_Approved_On" timestamp without time zone,
    "N_Status" integer,
    "C_Remarks" character varying(1000),
    "C_Created_By" character varying(20),
    "D_Created_On" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "C_Modified_By" character varying(20),
    "D_Modified_On" timestamp without time zone
);

CREATE TABLE "tbl_sfc_request_det" (
    "N_ID" integer NOT NULL DEFAULT nextval('"tbl_sfc_request_det_N_ID_seq"'::regclass),
    "N_SFC_Request_ID" numeric,
    "N_General_Combination_ID" numeric,
    "N_RowID" integer,
    "N_Area_Type" integer,
    "C_Subarea_code_From" character varying(20),
    "C_Subarea_Code_To" character varying(20),
    "N_Wkg_Days" integer,
    "N_TA" numeric,
    "N_Doc_Visit" integer,
    "N_Chem_Visit" integer,
    "N_Stk_Visit" integer,
    "N_Cur_Business" numeric,
    "N_Exp_Business" numeric,
    "N_Distance" integer,
    "N_Master_Distance" integer,
    "C_Map_Link" text,
    "C_Image_Name" character varying(1000),
    "C_Image_URL" character varying(1000),
    "N_Deleted" integer,
    "C_Deleted_By" character varying(20),
    "D_Deleted_On" timestamp without time zone,
    "C_Created_By" character varying(20),
    "D_Created_On" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "C_Modified_By" character varying(20),
    "D_Modified_On" timestamp without time zone
);

CREATE TABLE "tbl_sfc_request_det_modification" (
    "N_ID" integer NOT NULL DEFAULT nextval('"tbl_sfc_request_det_modification_N_ID_seq"'::regclass),
    "N_SFC_Request_Det_ID" numeric,
    "N_General_Combination_ID" numeric,
    "N_Area_Type" integer,
    "C_Subarea_code_From" character varying(20),
    "C_Subarea_Code_To" character varying(20),
    "N_Wkg_Days" integer,
    "N_TA" numeric,
    "N_Doc_Visit" integer,
    "N_Chem_Visit" integer,
    "N_Stk_Visit" integer,
    "N_Cur_Business" numeric,
    "N_Exp_Business" numeric,
    "N_Distance" integer,
    "C_Map_Link" text,
    "C_Image_Name" character varying(1000),
    "C_Image_URL" character varying(1000),
    "N_Deleted" integer,
    "C_Deleted_By" character varying(20),
    "D_Deleted_On" timestamp without time zone,
    "N_Status" integer,
    "C_Updated_By" character varying(20),
    "D_Updated_On" timestamp without time zone,
    "C_Created_By" character varying(20),
    "D_Created_On" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "C_Modified_By" character varying(20),
    "D_Modified_On" timestamp without time zone
);

CREATE TABLE "tbl_sp_columns_data" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_sp_columns_data_n_id_seq'::regclass),
    "c_column_type" character varying(100),
    "d_created_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_key" character varying(20),
    "n_key_val" integer,
    "n_deleted" integer,
    "n_priority" integer,
    "c_report_type" character varying(20)
);

CREATE TABLE "tbl_sp_columns_selection_log" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_sp_columns_selection_log_n_srno_seq'::regclass),
    "c_fscode" character varying(100),
    "c_column_type" character varying(100),
    "d_created_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_selection" character varying(10),
    "c_column_id" character varying(10),
    "c_key" character varying(20)
);

CREATE TABLE "tbl_sp_piriod" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_sp_piriod_n_id_seq'::regclass),
    "c_month" character varying(20),
    "c_year" integer,
    "n_month" integer,
    "n_selection" integer
);

CREATE TABLE "tbl_speciality_qualifications" (
    "c_speciality_code" character varying(100),
    "c_qualification" character varying(100)
);

CREATE TABLE "tbl_sse_setup" (
    "n_returns" integer,
    "n_receipt" integer,
    "n_transit" integer,
    "d_datemodified" timestamp without time zone,
    "c_modifiedby" character varying(10),
    "n_ngt_closing" integer,
    "n_transitmonths" integer,
    "n_sales_closing" integer,
    "n_closing" integer DEFAULT 0,
    "n_editbypoolfs" integer DEFAULT 0,
    "n_approvalreq" integer DEFAULT 0,
    "n_prisalesimport" integer DEFAULT 0,
    "n_defaultQtyZero" integer DEFAULT 0,
    "n_returnCfaRss" integer,
    "n_SCh_Cls_Open" integer,
    "n_SASCollection" integer,
    "n_Openings" integer,
    "n_Recpt" integer,
    "n_Return" integer,
    "n_sals_dta_entry" integer,
    "n_editable" integer,
    "n_sls_enty_closday" character varying(2),
    "n_sales_sch" integer,
    "n_nonoperatingstk" integer NOT NULL DEFAULT 0,
    "n_openqty_with_transit" integer NOT NULL DEFAULT 0
);

CREATE TABLE "tbl_sse_setup_heirarchyDetails" (
    "n_heirtype" integer
);

CREATE TABLE "tbl_state_mst" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "n_deleted" smallint NOT NULL DEFAULT '0'::smallint,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10)
);

CREATE TABLE "tbl_stk_Mapping" (
    "c_SFA_stk_Code" character varying(10),
    "c_Map_stk_Code" character varying(20),
    "LastUpdate" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_stk_beat_map" (
    "c_subarea_code" character varying(10) NOT NULL,
    "c_stockist_code" character varying(10) NOT NULL,
    "c_area_code" character varying(50),
    "d_date_from" timestamp without time zone NOT NULL,
    "d_date_to" timestamp without time zone
);

CREATE TABLE "tbl_stocknsales_Notes" (
    "n_srno" numeric,
    "c_fscode" character varying(10),
    "c_note" character varying(500)
);

CREATE TABLE "tbl_stocknsales_docs" (
    "n_srno" numeric,
    "c_fscode" character varying(50),
    "c_filename" character varying(150),
    "c_stockiestcode" character varying(50),
    "n_deleted" integer,
    "c_docpath" text
);

CREATE TABLE "tbl_stocknsales_header" (
    "n_srno" numeric NOT NULL,
    "c_stockist_code" character varying(10) NOT NULL,
    "n_month" integer NOT NULL,
    "n_year" integer NOT NULL,
    "n_tot_sales_value" numeric,
    "n_tot_scheme_value" numeric,
    "n_tot_receipt_value" numeric,
    "n_tot_receipt_scheme_value" numeric,
    "n_tot_closing_value" numeric,
    "n_tot_other_value" numeric,
    "n_tot_other_scheme_value" numeric,
    "n_tot_transit_value" numeric,
    "d_created_date" timestamp without time zone,
    "c_note" character varying(500),
    "c_enteredby" character varying(15),
    "n_other_value" numeric,
    "n_item_rate" numeric,
    "n_status" integer DEFAULT 0,
    "n_tot_retCfa_value" numeric,
    "n_tot_retCfa_scheme_values" numeric,
    "n_Sch_Opn_cls" integer,
    "n_nonoperating_stckst" integer
);

CREATE TABLE "tbl_stocknsales_header_log" (
    "n_srno" numeric NOT NULL,
    "c_stockist_code" character varying(10) NOT NULL,
    "n_month" integer NOT NULL,
    "n_year" integer NOT NULL,
    "n_tot_sales_value" numeric,
    "n_tot_scheme_value" numeric,
    "n_tot_receipt_value" numeric,
    "n_tot_receipt_scheme_value" numeric,
    "n_tot_closing_value" numeric,
    "n_tot_other_value" numeric,
    "n_tot_other_scheme_value" numeric,
    "n_tot_transit_value" numeric,
    "d_created_date" timestamp without time zone,
    "c_note" character varying(500),
    "c_enteredby" character varying(15),
    "n_other_value" numeric,
    "n_item_rate" numeric,
    "C_Action" character varying(100)
);

CREATE TABLE "tbl_stp" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "d_modified" timestamp without time zone,
    "N_DA_OTHER" numeric,
    "n_tempsrno" integer,
    "C_Approved" character(1),
    "C_Approved_By" character varying(50),
    "D_Approved_Date" timestamp without time zone,
    "C_Reason" character varying(500),
    "C_Region_Code" character varying(20)
);

CREATE TABLE "tbl_stp_05072021" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "d_modified" timestamp without time zone,
    "N_DA_OTHER" numeric,
    "n_tempsrno" integer,
    "C_Approved" character(1),
    "C_Approved_By" character varying(50),
    "D_Approved_Date" timestamp without time zone,
    "C_Reason" character varying(500)
);

CREATE TABLE "tbl_stp_10052022" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "d_modified" timestamp without time zone,
    "N_DA_OTHER" numeric,
    "n_tempsrno" integer,
    "C_Approved" character(1),
    "C_Approved_By" character varying(50),
    "D_Approved_Date" timestamp without time zone,
    "C_Reason" character varying(500)
);

CREATE TABLE "tbl_stp_20122021" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "d_modified" timestamp without time zone,
    "N_DA_OTHER" numeric,
    "n_tempsrno" integer,
    "C_Approved" character(1),
    "C_Approved_By" character varying(50),
    "D_Approved_Date" timestamp without time zone,
    "C_Reason" character varying(500)
);

CREATE TABLE "tbl_stp_29062021" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "d_modified" timestamp without time zone,
    "N_DA_OTHER" numeric,
    "n_tempsrno" integer,
    "C_Approved" character(1),
    "C_Approved_By" character varying(50),
    "D_Approved_Date" timestamp without time zone,
    "C_Reason" character varying(500)
);

CREATE TABLE "tbl_stp_details" (
    "N_Srno" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" integer,
    "N_Distance" numeric,
    "N_Ta" numeric,
    "n_Cur_Business" numeric,
    "n_Exp_Business" numeric,
    "N_Doc_Visit_A" integer,
    "N_Doc_Visit_B" integer,
    "C_Area_From" character(10),
    "N_Chem_Visit" integer,
    "N_Stk_Visit" integer,
    "C_Subarea_code_From" character varying(10) NOT NULL,
    "C_Subarea_code_to" character varying(10) NOT NULL,
    "n_wkg_days" integer,
    "N_Transit_Days" integer,
    "N_MMIDistance" numeric,
    "c_MMIMapLink" character varying(5000),
    "n_mode_of_travel" integer,
    "C_Mode_of_Travel" character varying(50)
);

CREATE TABLE "tbl_stp_details29062021" (
    "N_Srno" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" integer,
    "N_Distance" numeric,
    "N_Ta" numeric,
    "n_Cur_Business" numeric,
    "n_Exp_Business" numeric,
    "N_Doc_Visit_A" integer,
    "N_Doc_Visit_B" integer,
    "C_Area_From" character(10),
    "N_Chem_Visit" integer,
    "N_Stk_Visit" integer,
    "C_Subarea_code_From" character varying(10) NOT NULL,
    "C_Subarea_code_to" character varying(10) NOT NULL,
    "n_wkg_days" integer,
    "N_Transit_Days" integer,
    "N_MMIDistance" numeric,
    "c_MMIMapLink" character varying(5000),
    "n_mode_of_travel" integer,
    "C_Mode_of_Travel" character varying(50)
);

CREATE TABLE "tbl_stp_details_05072021" (
    "N_Srno" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" integer,
    "N_Distance" numeric,
    "N_Ta" numeric,
    "n_Cur_Business" numeric,
    "n_Exp_Business" numeric,
    "N_Doc_Visit_A" integer,
    "N_Doc_Visit_B" integer,
    "C_Area_From" character(10),
    "N_Chem_Visit" integer,
    "N_Stk_Visit" integer,
    "C_Subarea_code_From" character varying(10) NOT NULL,
    "C_Subarea_code_to" character varying(10) NOT NULL,
    "n_wkg_days" integer,
    "N_Transit_Days" integer,
    "N_MMIDistance" numeric,
    "c_MMIMapLink" character varying(5000),
    "n_mode_of_travel" integer,
    "C_Mode_of_Travel" character varying(50)
);

CREATE TABLE "tbl_stp_details_20122021" (
    "N_Srno" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" integer,
    "N_Distance" numeric,
    "N_Ta" numeric,
    "n_Cur_Business" numeric,
    "n_Exp_Business" numeric,
    "N_Doc_Visit_A" integer,
    "N_Doc_Visit_B" integer,
    "C_Area_From" character(10),
    "N_Chem_Visit" integer,
    "N_Stk_Visit" integer,
    "C_Subarea_code_From" character varying(10) NOT NULL,
    "C_Subarea_code_to" character varying(10) NOT NULL,
    "n_wkg_days" integer,
    "N_Transit_Days" integer,
    "N_MMIDistance" numeric,
    "c_MMIMapLink" character varying(5000),
    "n_mode_of_travel" integer,
    "C_Mode_of_Travel" character varying(50)
);

CREATE TABLE "tbl_stpbackup2017_21_07" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code" character varying(10) NOT NULL,
    "D_Eff_From_Date" timestamp without time zone NOT NULL,
    "D_Eff_To_Date" timestamp without time zone NOT NULL,
    "N_DA_HQ" numeric,
    "N_DA_EX" numeric,
    "N_DA_OS" numeric,
    "D_Date_Of_Creation" timestamp without time zone NOT NULL,
    "C_Created_By" character(10),
    "C_Based_At" character varying(10),
    "N_TA_Type" integer NOT NULL,
    "N_MONTHLY_EXP" numeric,
    "N_Transit" numeric,
    "n_rateperkm" numeric,
    "d_modified" timestamp without time zone,
    "N_DA_OTHER" numeric
);

CREATE TABLE "tbl_stpbackupdetails2017_21_07" (
    "N_Srno" numeric NOT NULL,
    "N_RowID" numeric NOT NULL,
    "C_Area_Code" character varying(10) NOT NULL,
    "N_Area_Type" integer,
    "N_Distance" numeric,
    "N_Ta" numeric,
    "n_Cur_Business" numeric,
    "n_Exp_Business" numeric,
    "N_Doc_Visit_A" integer,
    "N_Doc_Visit_B" integer,
    "C_Area_From" character(10),
    "N_Chem_Visit" integer,
    "N_Stk_Visit" integer,
    "C_Subarea_code_From" character varying(10) NOT NULL,
    "C_Subarea_code_to" character varying(10) NOT NULL,
    "n_wkg_days" integer,
    "N_Transit_Days" integer,
    "N_MMIDistance" numeric,
    "c_MMIMapLink" character varying(5000)
);

CREATE TABLE "tbl_stpmodeoftravel" (
    "n_srno" integer,
    "c_code" character varying(100),
    "c_name" character varying(100),
    "n_deleted" integer DEFAULT 0
);

CREATE TABLE "tbl_survey_answer" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_survey_answer_n_srno_seq'::regclass),
    "c_fs_code" character varying(20),
    "c_cust_code" character varying(20),
    "n_SurveyId" integer,
    "d_surveydt" timestamp without time zone,
    "d_uploaddate" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "C_Fs_Remarks" character varying(500),
    "C_DSCA_Remarks" character varying(500),
    "c_imageFile_name" character varying(500),
    "n_type" integer,
    "N_SType" integer
);

CREATE TABLE "tbl_survey_answer_det" (
    "n_srno" numeric,
    "n_QuestionID" numeric,
    "c_Answer_Selected" character varying(100),
    "N_ID" integer NOT NULL DEFAULT nextval('"tbl_survey_answer_det_N_ID_seq"'::regclass),
    "c_other" character varying(1000)
);

CREATE TABLE "tbl_tab_details" (
    "c_empcode" character varying(50),
    "c_fscode" character varying(50),
    "c_imei_no" character varying(50),
    "c_mgrcode" character varying(50),
    "d_date_from" timestamp without time zone,
    "d_date_to" timestamp without time zone,
    "n_status" integer
);

CREATE TABLE "tbl_tablet_survey" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_tablet_survey_n_id_seq'::regclass),
    "c_fs_code" character varying(20),
    "c_emp_code" character varying(20),
    "c_answer_1" integer,
    "c_tab_serial_no" character varying(25),
    "n_answer_2" integer,
    "c_reason" character varying(1000),
    "c_mgr_name" character varying(25),
    "c_mgr_code" character varying(25),
    "c_mgr_mobileno" character varying(20),
    "n_answer_3" integer,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_tagtime" (
    "fromtime" character varying(100),
    "totime" character varying(100)
);

CREATE TABLE "tbl_target_grp_mst" (
    "c_code" character varying(10),
    "c_name" character varying(50),
    "c_sh_name" character varying(50),
    "d_created" timestamp without time zone,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(20),
    "n_deleted" integer
);

CREATE TABLE "tbl_target_type_mst" (
    "c_code" character varying(50),
    "c_name" character varying(50),
    "c_description" character varying(50),
    "N_HqFsFlag" integer,
    "N_BrdItmflag" integer,
    "N_PriSecFlag" integer,
    "N_Active" integer,
    "C_Created_By" character varying(50),
    "d_created" timestamp without time zone,
    "c_modifier" character varying(50),
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_task" (
    "n_task_id" integer NOT NULL DEFAULT nextval('tbl_task_n_task_id_seq'::regclass),
    "c_task_from" character varying(20),
    "c_task_to" character varying(20),
    "d_task_date" timestamp without time zone,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_Description" character varying(1500),
    "n_deleted" integer,
    "d_modified" timestamp without time zone
);

CREATE TABLE "tbl_task_tran" (
    "c_task_code" character varying(50),
    "c_emp_code" character varying(10),
    "c_doctor_code" character varying(10),
    "c_comment" character varying(200),
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_temp_DoctorLIst" (
    "DoctorCode" character varying(100),
    "DoctorName" character varying(100),
    "Qualification" character varying(100),
    "Grade" character varying(100),
    "Category" character varying(100),
    "DocClass" character varying(100),
    "MobileNo" character varying(100),
    "LandlineNo" character varying(100),
    "Subarea" character varying(100),
    "LastVisited" character varying(100),
    "MclNo" character varying(100),
    "mcino" character varying(100),
    "Modifier" character varying(100),
    "ModifiedDate" character varying(100),
    "Deleted" character varying(100),
    "dob" character varying(100),
    "Age" character varying(100),
    "dow" character varying(100),
    "prodmapped" character varying(5000),
    "spousename" character varying(100),
    "spousedob" character varying(100),
    "Email" character varying(100),
    "Speciality" character varying(100),
    "Hospital" character varying(200),
    "StreetName" character varying(100),
    "AreaName" character varying(100),
    "Landmark" character varying(100),
    "City" character varying(100),
    "State" character varying(100),
    "PinCode" character varying(100),
    "HouseName" character varying(100),
    "StreetName1" character varying(100),
    "AreaName1" character varying(100),
    "Landmark1" character varying(100),
    "City1" character varying(100),
    "State1" character varying(100),
    "Pincode1" character varying(100),
    "NoofPatients" character varying(100),
    "CurrentBusiness" character varying(100),
    "N_drpotential" character varying(100),
    "BusinessPotential" character varying(100),
    "Isdocprescribed" character varying(100),
    "Isdocpurchasing" character varying(100),
    "Child1Name" character varying(100),
    "Child1Dob" character varying(100),
    "Child2Name" character varying(100),
    "Child2Dob" character varying(100),
    "Child3Name" character varying(100),
    "Child3Dob" character varying(100),
    "c_userid" character varying(100),
    "PanNo" character varying(50),
    "AreaType" character varying(2),
    "FsName" text
);

CREATE TABLE "tbl_temp_table_sales" (
    "c_childcode" character varying(50),
    "c_parentcode" character varying(50),
    "n_type" integer
);

CREATE TABLE "tbl_therapeutical_mst" (
    "C_Code" character varying(20) NOT NULL,
    "C_Name" character varying(500) NOT NULL,
    "C_NoDrs" character(10),
    "N_Type" integer NOT NULL,
    "n_deleted" integer DEFAULT 0,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10)
);

CREATE TABLE "tbl_totfs" (
    "DIVISION" character varying(50),
    "REGION" character varying(50),
    "DESIGNATION" character varying(50),
    "VACANT" integer
);

CREATE TABLE "tbl_travel_type" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_travel_type_n_id_seq'::regclass),
    "c_name" character varying(20),
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "n_delete" integer DEFAULT 0
);

CREATE TABLE "tbl_unique_doc_log" (
    "n_primary_id" integer NOT NULL DEFAULT nextval('tbl_unique_doc_log_n_primary_id_seq'::regclass),
    "c_doccode" character varying(50),
    "c_docname" character varying(255),
    "c_clinicName" character varying(200),
    "c_clinicStreetName" character varying(200),
    "c_clinicAreaName" character varying(200),
    "c_clinicLandmark" character varying(200),
    "c_clinicCityCode" character varying(50),
    "c_clinicState" character varying(50),
    "c_clinicPinCode" character varying(100),
    "c_clinicSelAreaCode" character varying(50),
    "c_resBuildName" character varying(200),
    "c_resStreetName" character varying(200),
    "c_resArea" character varying(50),
    "c_resLandMark" character varying(200),
    "c_resCityCode" character varying(200),
    "c_resState" character varying(50),
    "c_resPinCode" character varying(100),
    "c_docRegNo" character varying(100),
    "c_yrRegNo" character varying(100),
    "c_regImageName" character varying(200),
    "c_noExpHighQuali" character varying(20),
    "c_therapAreaCode" character varying(50),
    "c_noJournalPubli" character varying(20),
    "c_noOfAuthorship" character varying(20),
    "c_partRadio" character varying(20),
    "c_partCheckValue" character varying(50),
    "c_speakerRadio" character varying(20),
    "c_speakerCheckValue" character varying(20),
    "c_editorialBoard" character varying(200),
    "c_position" character varying(20),
    "c_experienceCode" character varying(20),
    "c_documentCollect" character varying(200),
    "c_panNo" character varying(100),
    "c_panImage" text,
    "c_email" character varying(100),
    "c_qualificationCode" character varying(50),
    "c_qualificationImage" text,
    "C_Subarea_Code" character varying(50),
    "N_Type" integer,
    "c_Status" character varying(2),
    "c_remarks" text,
    "n_setup" integer,
    "c_fscode_submitted_by" character varying(20),
    "c_empcode_submitted_by" character varying(20),
    "d_submitted_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_fscode_last_approved_rejected_by" character varying(20),
    "c_empcode_last_approved_rejected_by" character varying(20),
    "d_last_approved_rejected_date" timestamp without time zone,
    "c_next_approve_fscode" character varying(20),
    "c_next_approve_status" integer,
    "c_next_2_approve_fscode" character varying(20),
    "c_new_reject_status" character varying(10) NOT NULL DEFAULT '0'::character varying,
    "c_prescription_pad_image" text,
    "c_visiting_card_image" text,
    "c_hospital_clinic_signboard_image" text,
    "c_others_image" text,
    "c_speciality_code" character varying(50),
    "c_doccode_mst" character varying(50),
    "c_mobileno" character varying(200),
    "C_Category" character varying(50),
    "n_lami" double precision,
    "n_lgmi" double precision,
    "c_specialitycode" character varying(50),
    "c_pan_name" character varying(255),
    "d_modified_date" timestamp without time zone,
    "n_status" integer NOT NULL DEFAULT 0,
    "n_isfamilyphysician" integer,
    "n_req_id" numeric,
    "c_panImage_Url" text,
    "c_prescription_pad_image_Url" text,
    "c_visiting_card_image_Url" text,
    "c_hospital_clinic_signboard_image_Url" text,
    "c_others_image_Url" text,
    "c_regImageName_Url" text,
    "c_qualificationImage_Url" text
);

CREATE TABLE "tbl_unique_doc_mst" (
    "n_primary_id" integer NOT NULL DEFAULT nextval('tbl_unique_doc_mst_n_primary_id_seq'::regclass),
    "c_doccode" character varying(50),
    "c_docname" character varying(255),
    "c_clinicName" character varying(200),
    "c_clinicStreetName" character varying(200),
    "c_clinicAreaName" character varying(200),
    "c_clinicLandmark" character varying(200),
    "c_clinicCityCode" character varying(50),
    "c_clinicState" character varying(50),
    "c_clinicPinCode" character varying(100),
    "c_clinicSelAreaCode" character varying(50),
    "c_resBuildName" character varying(200),
    "c_resStreetName" character varying(200),
    "c_resArea" character varying(50),
    "c_resLandMark" character varying(200),
    "c_resCityCode" character varying(200),
    "c_resState" character varying(50),
    "c_resPinCode" character varying(100),
    "c_docRegNo" character varying(100),
    "c_yrRegNo" character varying(100),
    "c_regImageName" character varying(200),
    "c_noExpHighQuali" character varying(20),
    "c_therapAreaCode" character varying(50),
    "c_noJournalPubli" character varying(20),
    "c_noOfAuthorship" character varying(20),
    "c_partRadio" character varying(20),
    "c_partCheckValue" character varying(50),
    "c_speakerRadio" character varying(20),
    "c_speakerCheckValue" character varying(20),
    "c_editorialBoard" character varying(200),
    "c_position" character varying(20),
    "c_experienceCode" character varying(20),
    "c_documentCollect" character varying(200),
    "c_panNo" character varying(100),
    "c_panImage" text,
    "c_email" character varying(100),
    "c_qualificationCode" character varying(50),
    "c_qualificationImage" text,
    "C_Subarea_Code" character varying(50),
    "N_Type" integer,
    "c_Status" character varying(2),
    "n_setup" integer,
    "c_fscode_submitted_by" character varying(20),
    "c_empcode_submitted_by" character varying(20),
    "d_submitted_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_fscode_last_approved_rejected_by" character varying(20),
    "c_empcode_last_approved_rejected_by" character varying(20),
    "d_last_approved_rejected_date" timestamp without time zone,
    "c_next_approve_fscode" character varying(20),
    "c_next_approve_status" integer,
    "c_next_2_approve_fscode" character varying(20),
    "n_tagged" integer NOT NULL DEFAULT 0,
    "c_mobileno" character varying(200),
    "C_Category" character varying(50),
    "n_lami" double precision,
    "n_lgmi" double precision,
    "c_prescription_pad_image" text,
    "c_visiting_card_image" text,
    "c_hospital_clinic_signboard_image" text,
    "c_others_image" text,
    "c_new_reject_status" character varying(10) NOT NULL DEFAULT '0'::character varying,
    "c_speciality_code" character varying(50),
    "c_specialitycode" character varying(50),
    "n_total_score_A" numeric,
    "n_total_score_B" numeric,
    "c_doc_category" character varying(20),
    "n_maximum_fmv" numeric,
    "c_pan_name" character varying(255),
    "d_modified_date" timestamp without time zone,
    "n_status" integer NOT NULL DEFAULT 0,
    "n_isfamilyphysician" integer,
    "C_Vendor_Code" character varying(50),
    "C_Vendor_Name" character varying(200),
    "c_panImage_Url" text,
    "c_prescription_pad_image_Url" text,
    "c_visiting_card_image_Url" text,
    "c_hospital_clinic_signboard_image_Url" text,
    "c_others_image_Url" text,
    "c_regImageName_Url" text,
    "c_qualificationImage_Url" text
);

CREATE TABLE "tbl_unique_doc_mst_log" (
    "n_primary_id" numeric NOT NULL,
    "c_doccode" character varying(50),
    "c_docname" character varying(255),
    "c_clinicName" character varying(200),
    "c_clinicStreetName" character varying(200),
    "c_clinicAreaName" character varying(200),
    "c_clinicLandmark" character varying(200),
    "c_clinicCityCode" character varying(50),
    "c_clinicState" character varying(50),
    "c_clinicPinCode" character varying(100),
    "c_clinicSelAreaCode" character varying(50),
    "c_resBuildName" character varying(200),
    "c_resStreetName" character varying(200),
    "c_resArea" character varying(50),
    "c_resLandMark" character varying(200),
    "c_resCityCode" character varying(200),
    "c_resState" character varying(50),
    "c_resPinCode" character varying(100),
    "c_docRegNo" character varying(100),
    "c_yrRegNo" character varying(100),
    "c_regImageName" character varying(200),
    "c_noExpHighQuali" character varying(20),
    "c_therapAreaCode" character varying(50),
    "c_noJournalPubli" character varying(20),
    "c_noOfAuthorship" character varying(20),
    "c_partRadio" character varying(20),
    "c_partCheckValue" character varying(50),
    "c_speakerRadio" character varying(20),
    "c_speakerCheckValue" character varying(20),
    "c_editorialBoard" character varying(200),
    "c_position" character varying(20),
    "c_experienceCode" character varying(20),
    "c_documentCollect" character varying(200),
    "c_panNo" character varying(100),
    "c_panImage" text,
    "c_email" character varying(100),
    "c_qualificationCode" character varying(50),
    "c_qualificationImage" text,
    "C_Subarea_Code" character varying(50),
    "N_Type" integer,
    "c_Status" character varying(2),
    "n_setup" integer,
    "c_fscode_submitted_by" character varying(20),
    "c_empcode_submitted_by" character varying(20),
    "d_submitted_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_fscode_last_approved_rejected_by" character varying(20),
    "c_empcode_last_approved_rejected_by" character varying(20),
    "d_last_approved_rejected_date" timestamp without time zone,
    "c_next_approve_fscode" character varying(20),
    "c_next_approve_status" integer,
    "c_next_2_approve_fscode" character varying(20),
    "n_tagged" integer NOT NULL DEFAULT 0,
    "c_mobileno" character varying(200),
    "C_Category" character varying(50),
    "n_lami" double precision,
    "n_lgmi" double precision,
    "c_new_reject_status" character varying(10) NOT NULL DEFAULT '0'::character varying,
    "c_speciality_code" character varying(50),
    "c_specialitycode" character varying(50),
    "c_prescription_pad_image" text,
    "c_visiting_card_image" text,
    "c_hospital_clinic_signboard_image" text,
    "c_others_image" text,
    "n_total_score_A" numeric,
    "n_total_score_B" numeric,
    "c_doc_category" character varying(20),
    "n_maximum_fmv" numeric,
    "c_pan_name" character varying(255),
    "n_status" integer NOT NULL DEFAULT 0,
    "d_modified_date" timestamp without time zone,
    "n_isfamilyphysician" integer,
    "C_Vendor_Code" character varying(50),
    "C_Vendor_Name" character varying(200),
    "d_log_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "n_req_id" numeric NOT NULL
);

CREATE TABLE "tbl_unique_doc_req" (
    "n_primary_id" integer NOT NULL DEFAULT nextval('tbl_unique_doc_req_n_primary_id_seq'::regclass),
    "c_doccode" character varying(50),
    "c_docname" character varying(255),
    "c_clinicName" character varying(200),
    "c_clinicStreetName" character varying(200),
    "c_clinicAreaName" character varying(200),
    "c_clinicLandmark" character varying(200),
    "c_clinicCityCode" character varying(50),
    "c_clinicState" character varying(50),
    "c_clinicPinCode" character varying(100),
    "c_clinicSelAreaCode" character varying(50),
    "c_resBuildName" character varying(200),
    "c_resStreetName" character varying(200),
    "c_resArea" character varying(50),
    "c_resLandMark" character varying(200),
    "c_resCityCode" character varying(200),
    "c_resState" character varying(50),
    "c_resPinCode" character varying(100),
    "c_docRegNo" character varying(100),
    "c_yrRegNo" character varying(100),
    "c_regImageName" character varying(200),
    "c_noExpHighQuali" character varying(20),
    "c_therapAreaCode" character varying(50),
    "c_noJournalPubli" character varying(20),
    "c_noOfAuthorship" character varying(20),
    "c_partRadio" character varying(20),
    "c_partCheckValue" character varying(50),
    "c_speakerRadio" character varying(20),
    "c_speakerCheckValue" character varying(20),
    "c_editorialBoard" character varying(200),
    "c_position" character varying(20),
    "c_experienceCode" character varying(20),
    "c_documentCollect" character varying(200),
    "c_panNo" character varying(100),
    "c_panImage" text,
    "c_email" character varying(100),
    "c_qualificationCode" character varying(50),
    "c_qualificationImage" text,
    "C_Subarea_Code" character varying(50),
    "N_Type" integer,
    "c_Status" character varying(2),
    "n_setup" integer,
    "c_fscode_submitted_by" character varying(20),
    "c_empcode_submitted_by" character varying(20),
    "d_submitted_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_fscode_last_approved_rejected_by" character varying(20),
    "c_empcode_last_approved_rejected_by" character varying(20),
    "d_last_approved_rejected_date" timestamp without time zone,
    "c_next_approve_fscode" character varying(20),
    "c_next_approve_status" integer,
    "c_next_2_approve_fscode" character varying(20),
    "c_new_reject_status" character varying(10) NOT NULL DEFAULT '0'::character varying,
    "c_prescription_pad_image" text,
    "c_visiting_card_image" text,
    "c_hospital_clinic_signboard_image" text,
    "c_others_image" text,
    "c_speciality_code" character varying(50),
    "c_remarks" character varying(500),
    "c_mobileno" character varying(200),
    "C_Category" character varying(50),
    "n_lami" double precision,
    "n_lgmi" double precision,
    "c_specialitycode" character varying(50),
    "c_pan_name" character varying(255),
    "d_modified_date" timestamp without time zone,
    "n_status" integer NOT NULL DEFAULT 0,
    "n_isfamilyphysician" integer,
    "c_panImage_Url" text,
    "c_prescription_pad_image_Url" text,
    "c_visiting_card_image_Url" text,
    "c_hospital_clinic_signboard_image_Url" text,
    "c_others_image_Url" text,
    "c_regImageName_Url" text,
    "c_qualificationImage_Url" text
);

CREATE TABLE "tbl_unique_dr_app_con_history" (
    "n_rowid" integer NOT NULL DEFAULT nextval('tbl_unique_dr_app_con_history_n_rowid_seq'::regclass),
    "n_req_id" numeric,
    "c_approvedby" character varying(20),
    "d_approved_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_confirmedby" character varying(20),
    "d_confirmeddate" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_remarks" text,
    "c_status" character varying(10)
);

CREATE TABLE "tbl_update_doctor_request_mapping" (
    "c_dr_code" text NOT NULL,
    "c_createdby" character varying(50),
    "d_createddate" timestamp without time zone
);

CREATE TABLE "tbl_upload_data_column_mapping" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_upload_data_column_mapping_n_srno_seq'::regclass),
    "n_id" integer,
    "c_fscode" character varying(50),
    "c_columns" text,
    "c_columns_excel" text,
    "c_columns_mapped" text,
    "n_rowcount" integer,
    "n_ismapped" integer,
    "n_anyvalidation" integer,
    "n_insertedall" integer,
    "d_created" timestamp without time zone,
    "n_lock" integer,
    "c_other_data" character varying(500),
    "c_excel_path" character varying(500),
    "c_file_type" character varying(10),
    "n_bulk" integer
);

CREATE TABLE "tbl_upload_data_excel_cols" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_upload_data_excel_cols_n_srno_seq'::regclass),
    "n_id" integer,
    "c_column" character varying(100),
    "c_label" character varying(500),
    "n_priority" integer,
    "n_mandatory" integer,
    "n_required" integer,
    "n_excel_col" integer,
    "c_default_val" character varying(500),
    "allow_null" integer,
    "max_length" integer,
    "allow_specialchar" integer,
    "if_exist" character varying(500),
    "choose_from" character varying(500),
    "condititional_cols" character varying(500),
    "number_only" integer,
    "date_format" character varying(500),
    "email_val" integer,
    "alpha_numeric" integer,
    "c_special_chars_not_allowed" character varying(500),
    "check_duplicate" character varying(1000),
    "table_name" character varying(500),
    "max_value" integer
);

CREATE TABLE "tbl_upload_data_excel_cols_bck" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_upload_data_excel_cols_bck_n_srno_seq'::regclass),
    "n_id" integer,
    "c_column" character varying(100),
    "c_label" character varying(500),
    "n_priority" integer,
    "n_mandatory" integer,
    "n_required" integer,
    "n_excel_col" integer,
    "c_default_val" character varying(500),
    "allow_null" integer,
    "max_length" integer,
    "allow_specialchar" integer,
    "if_exist" character varying(500),
    "choose_from" character varying(500),
    "condititional_cols" character varying(500),
    "number_only" integer,
    "date_format" character varying(500),
    "email_val" integer,
    "alpha_numeric" integer,
    "c_special_chars_not_allowed" character varying(500),
    "check_duplicate" character varying(1000),
    "table_name" character varying(500),
    "max_value" integer
);

CREATE TABLE "tbl_upload_data_master_header" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_upload_data_master_header_n_srno_seq'::regclass),
    "n_id" integer,
    "c_header" character varying(200),
    "c_type" character varying(5),
    "n_active" integer,
    "n_max_limit" integer
);

CREATE TABLE "tbl_upload_data_master_header_bck" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_upload_data_master_header_bck_n_srno_seq'::regclass),
    "n_id" integer,
    "c_header" character varying(200),
    "c_type" character varying(5),
    "n_active" integer,
    "n_max_limit" integer
);

CREATE TABLE "tbl_upload_data_temp" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_upload_data_temp_n_srno_seq'::regclass),
    "n_header_id" integer,
    "c_fscode" character varying(50),
    "n_status" integer,
    "c_validation_msg" text,
    "c1" text,
    "c2" text,
    "c3" text,
    "c4" text,
    "c5" text,
    "c6" text,
    "c7" text,
    "c8" text,
    "c9" text,
    "c10" text,
    "c11" text,
    "c12" text,
    "c13" text,
    "c14" text,
    "c15" text,
    "c16" text,
    "c17" text,
    "c18" text,
    "c19" text,
    "c20" text,
    "c21" text,
    "c22" text,
    "c23" text,
    "c24" text,
    "c25" text,
    "c26" text,
    "c27" text,
    "c28" text,
    "c29" text,
    "c30" text,
    "c31" text,
    "c32" text,
    "c33" text,
    "c34" text,
    "c35" text,
    "c36" text,
    "c37" text,
    "c38" text,
    "c39" text,
    "c40" text,
    "c41" text,
    "c42" text,
    "c43" text,
    "c44" text,
    "c45" text,
    "c46" text,
    "c47" text,
    "c48" text,
    "c49" text,
    "c50" text,
    "c51" text,
    "c52" text,
    "c53" text,
    "c54" text,
    "c55" text,
    "c56" text,
    "c57" text,
    "c58" text,
    "c59" text,
    "c60" text,
    "c61" text,
    "c62" text,
    "c63" text,
    "c64" text,
    "c65" text,
    "c66" text,
    "c67" text,
    "c68" text,
    "c69" text,
    "c70" text,
    "c71" text,
    "c72" text,
    "c73" text,
    "c74" text,
    "c75" text
);

CREATE TABLE "tbl_upload_data_validated_rows" (
    "n_srno" integer NOT NULL DEFAULT nextval('tbl_upload_data_validated_rows_n_srno_seq'::regclass),
    "n_temp_srno" integer,
    "n_id" integer,
    "c_fscode" character varying(20),
    "c_validation_msg" text
);

CREATE TABLE "tbl_uppercase_headings" (
    "n_srno" integer NOT NULL,
    "c_caption" character varying(100)
);

CREATE TABLE "tbl_user_activity" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_user_activity_n_id_seq'::regclass),
    "n_month_type" integer,
    "n_Year" integer,
    "c_Fs_Code" character varying(50),
    "n_status" integer,
    "d_Created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "d_Modified" timestamp without time zone,
    "d_ApprovedDt" timestamp without time zone,
    "c_ApprovedBy" character varying(20),
    "n_deleted" integer
);

CREATE TABLE "tbl_user_activity_detail" (
    "n_id" numeric,
    "c_Jan" character varying(500),
    "c_Feb" character varying(500),
    "c_Mar" character varying(500),
    "c_Apr" character varying(500),
    "c_May" character varying(500),
    "c_Jun" character varying(500),
    "c_Jul" character varying(500),
    "c_Aug" character varying(500),
    "c_Sep" character varying(500),
    "c_Oct" character varying(500),
    "c_Nov" character varying(500),
    "c_Dec" character varying(500),
    "n_CommentLevelOrData" integer,
    "n_ActivityType" integer
);

CREATE TABLE "tbl_user_activity_detail_log" (
    "n_id" numeric,
    "c_Jan" character varying(500),
    "c_Feb" character varying(500),
    "c_Mar" character varying(500),
    "c_Apr" character varying(500),
    "c_May" character varying(500),
    "c_Jun" character varying(500),
    "c_Jul" character varying(500),
    "c_Aug" character varying(500),
    "c_Sep" character varying(500),
    "c_Oct" character varying(500),
    "c_Nov" character varying(500),
    "c_Dec" character varying(500),
    "n_CommentLevelOrData" integer,
    "n_ActivityType" integer
);

CREATE TABLE "tbl_user_activity_log" (
    "n_id" numeric,
    "n_month_type" integer,
    "n_Year" integer,
    "c_Fs_Code" character varying(50),
    "n_status" integer,
    "d_Created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "d_Modified" timestamp without time zone,
    "d_ApprovedDt" timestamp without time zone,
    "c_ApprovedBy" character varying(20),
    "n_deleted" integer
);

CREATE TABLE "tbl_user_info_2412019" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(500),
    "C_UserID" character varying(20) NOT NULL,
    "C_Password" character varying(100),
    "N_Lock" integer NOT NULL,
    "C_Description" character varying(250),
    "N_Edit" integer,
    "N_Delete" integer,
    "N_AddNew" integer,
    "N_Shift" integer,
    "N_ShiftEdit" integer,
    "D_Create_Date" timestamp without time zone,
    "D_Modify_Date" timestamp without time zone,
    "c_mob_UniqueID" character varying(10),
    "c_mob_Prev_ID" character varying(10),
    "n_mobile_user" integer,
    "n_type" integer,
    "n_menuid" integer,
    "n_webuser" integer,
    "n_Mobwebuser" integer,
    "n_edetailng" integer,
    "n_Androiduser" integer,
    "n_attempts" integer,
    "n_encryptexe" integer
);

CREATE TABLE "tbl_user_info_cpy10112015" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(500),
    "C_UserID" character varying(20) NOT NULL,
    "C_Password" character varying(100),
    "N_Lock" integer NOT NULL,
    "C_Description" character varying(250),
    "N_Edit" integer,
    "N_Delete" integer,
    "N_AddNew" integer,
    "N_Shift" integer,
    "N_ShiftEdit" integer,
    "D_Create_Date" timestamp without time zone,
    "D_Modify_Date" timestamp without time zone,
    "c_mob_UniqueID" character varying(10),
    "c_mob_Prev_ID" character varying(10),
    "n_mobile_user" integer,
    "n_type" integer,
    "n_menuid" integer
);

CREATE TABLE "tbl_user_task_det" (
    "n_task_id" integer NOT NULL DEFAULT nextval('tbl_user_task_det_n_task_id_seq'::regclass),
    "c_task_type_code" character varying(100),
    "c_task_description" character varying(1000),
    "d_task_date" date,
    "t_task_time" time without time zone,
    "c_task_user" character varying(100),
    "n_delete" integer NOT NULL DEFAULT 0,
    "d_created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "n_task_status" integer,
    "d_task_completed" timestamp without time zone
);

CREATE TABLE "tbl_user_token" (
    "c_userid" character varying(20),
    "c_token" character varying(50),
    "n_androidflg" integer,
    "d_date" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "n_deleted" integer DEFAULT 0
);

CREATE TABLE "tbl_va_modification_count" (
    "n_srno" bigint,
    "n_row_update" integer DEFAULT 0,
    "n_caption_update" integer DEFAULT 0,
    "n_row_delete" integer DEFAULT 0,
    "n_delete" integer DEFAULT 0,
    "det_n_srno" bigint,
    "lbl_change" bigint,
    "mst_change" bigint,
    "n_priority" integer
);

CREATE TABLE "tbl_vac" (
    "DIVISION" character varying(50),
    "REGION" character varying(50),
    "DESIGNATION" character varying(50),
    "VACANT" integer
);

CREATE TABLE "tbl_vacancy_candidate_data" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_vacancy_candidate_data_n_id_seq'::regclass),
    "n_vacancy_id" bigint,
    "n_form_id" integer,
    "n_input_priority" integer,
    "c_input_value" text,
    "c_refered_fscode" character varying(20),
    "c_refered_empcode" character varying(20),
    "d_refered_on" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_created" character varying(20),
    "d_modified" timestamp without time zone,
    "c_modified" character varying(20)
);

CREATE TABLE "tbl_vacancy_candidate_form_details_det" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_vacancy_candidate_form_details_det_n_id_seq'::regclass),
    "n_form_id" bigint,
    "c_caption_to_display" character varying(500),
    "n_input_priority" integer,
    "n_length" integer,
    "n_mandatory" integer,
    "n_input_Type" integer
);

CREATE TABLE "tbl_vacancy_candidate_form_details_mst" (
    "n_form_id" integer NOT NULL DEFAULT nextval('tbl_vacancy_candidate_form_details_mst_n_form_id_seq'::regclass),
    "c_formName" character varying(200),
    "c_description" character varying(500),
    "n_delete" smallint,
    "d_created" timestamp without time zone,
    "c_created" character varying(20),
    "d_modified" timestamp without time zone,
    "c_modified" character varying(20)
);

CREATE TABLE "tbl_vacancy_candidate_form_input_type" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_vacancy_candidate_form_input_type_n_id_seq'::regclass),
    "c_input_type" character varying(100),
    "c_validation" character varying(200),
    "n_delete" integer DEFAULT 0,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_vacancy_display_designation_mapping" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_vacancy_display_designation_mapping_n_id_seq'::regclass),
    "n_vacancy_id" bigint,
    "c_Designation_code" text,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_vacancy_display_location_mapping" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_vacancy_display_location_mapping_n_id_seq'::regclass),
    "n_vacancy_id" bigint,
    "c_location_code" text,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_vacancy_mst" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_vacancy_mst_n_id_seq'::regclass),
    "c_roles_resposibilities" character varying(1000),
    "c_expertise" character varying(500),
    "n_referal_bonus" bigint,
    "n_number_of_vacancies" integer,
    "c_additional_information" character varying(1000),
    "c_display_location_type" integer,
    "d_active_from" timestamp without time zone,
    "d_active_to" timestamp without time zone,
    "n_active" integer DEFAULT 0,
    "n_form_id" integer,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "c_created" character varying(20),
    "d_modified" timestamp without time zone,
    "c_modified" character varying(20),
    "c_state" character varying(30),
    "c_therapy" character varying(200)
);

CREATE TABLE "tbl_version_execution_errors" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_version_execution_errors_n_id_seq'::regclass),
    "c_version_no" character varying(50),
    "c_message" text,
    "n_activity_status" integer,
    "c_activity" text,
    "d_created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "tbl_wc_Question_Mst" (
    "n_QuestionTypeCode" integer,
    "c_description" character varying(500),
    "n_deleted" integer,
    "c_ControlType" character varying(50),
    "n_ValidationType" character varying(5)
);

CREATE TABLE "tbl_wc_Question_Mst_Type_Det" (
    "n_QuestionTypeCode" integer,
    "n_rowid" integer,
    "c_Description" character varying(500),
    "n_deleted" integer
);

CREATE TABLE "tbl_wh_Empwisedocgradecalls" (
    "fscode" character varying(10),
    "empcode" character varying(10),
    "n_month" integer,
    "n_year" integer,
    "c_gradecode" character(10),
    "c_gradename" character(20),
    "_DR_NOT_MET" character(10),
    "_DR_MET_ONCE" character(10),
    "_DR_MET_TWICE" character(10),
    "_DR_MET_MORE_TWICE" character(10),
    "_TOTAL_CALLS_MADE" character(10),
    "_COVERAGE" character(10),
    "mgr_dr_not_met" integer,
    "mgr_dr_met_once" integer,
    "mgr_dr_met_twice" integer,
    "mgr_dr_met_more_twice" integer,
    "mgr_total_calls_made" integer,
    "mgr_coverage" character(10),
    "n_mcldoc" integer,
    "n_mgr_mcldoc" integer,
    "MR_DR_NOT_MET" character(10),
    "MR_DR_MET_ONCE" character(10),
    "MR_DR_MET_TWICE" character(10),
    "MR_DR_MET_MORE_TWICE" character(10),
    "MR_TOTAL_CALLS_MADE" character(10),
    "_n_MR_mcldoc" integer,
    "MR_coverage" character(10)
);

CREATE TABLE "tbl_wh_Empwisedocgradecalls_core_product_wise_visit" (
    "fscode" character varying(20),
    "empcode" character varying(20),
    "itemcode" character varying(20),
    "itemname" character varying(200),
    "mcl" integer,
    "n_noof_visit" integer,
    "grade_code" character varying(20),
    "doc_count" integer,
    "visit" integer,
    "MET_LESS" integer,
    "MET" integer,
    "MET_MORE" integer,
    "year" integer,
    "month" integer,
    "mcl_itemwise" integer,
    "visited_exact_or_more" integer
);

CREATE TABLE "tbl_wh_FSwiseMonthwiseSummary" (
    "fscode" character(10),
    "n_month" integer,
    "n_year" integer,
    "n_working_days" integer,
    "n_leave" integer,
    "n_NFWdays" integer,
    "n_FWdays" integer,
    "N_daysworked" integer,
    "N_Mcl_drcount" integer,
    "n_Tot_Dr_calls" integer,
    "n_dr_visited" integer,
    "n_dr_coverage" numeric,
    "n_dr_missed" integer,
    "n_dr_missed_calls" integer,
    "n_dr_call_avg" numeric,
    "n_chem_visited" integer,
    "n_Chem_Call_Avg" numeric,
    "n_pob" integer,
    "n_stk_visited" integer,
    "n_Joint_work" integer,
    "n_Dr_add" integer,
    "n_Dr_del" integer,
    "n_holiday" integer,
    "n_Dr_Met" integer,
    "n_MAN_Tot_Dr_calls" integer,
    "n_MGR_NFWdays" integer,
    "n_MGR_FWdays" integer,
    "n_MGR_dr_call_avg" numeric,
    "n_MGR_dr_coverage" numeric,
    "n_MGR_dr_missed" integer,
    "n_MGR_dr_missed_calls" integer,
    "n_MGR_Chem_Call_Avg" numeric,
    "n_MGR_Joint_work" integer,
    "n_MGR_stk_visited" integer,
    "n_MGR_pob" integer,
    "n_Dr_Lca" integer,
    "n_FS_Tot_Dr_calls" integer
);

CREATE TABLE "tbl_wh_FSwisedoccategorycalls" (
    "fscode" character(50),
    "n_month" integer,
    "n_year" integer,
    "c_gradecode" character(10),
    "c_gradename" character(50),
    "_DR_NOT_MET" character(10),
    "_DR_MET_ONCE" character(10),
    "_DR_MET_TWICE" character(10),
    "_DR_MET_MORE_TWICE" character(10),
    "_TOTAL_CALLS_MADE" character(10),
    "_COVERAGE" character(10)
);

CREATE TABLE "tbl_wh_FSwisedocgradecalls" (
    "fscode" character(10),
    "n_month" integer,
    "n_year" integer,
    "c_gradecode" character(10),
    "c_gradename" character(20),
    "_DR_NOT_MET" character(10),
    "_DR_MET_ONCE" character(10),
    "_DR_MET_TWICE" character(10),
    "_DR_MET_MORE_TWICE" character(10),
    "_TOTAL_CALLS_MADE" character(10),
    "_COVERAGE" character(10)
);

CREATE TABLE "tbl_wh_Primary_Sales_Target" (
    "n_sales" numeric,
    "n_target" numeric,
    "c_monthname" character varying(10),
    "n_month" integer,
    "n_year" integer,
    "c_fscode" character varying(10)
);

CREATE TABLE "tbl_wh_Secondary_Sales_Target" (
    "n_sales" numeric,
    "n_target" numeric,
    "c_monthname" character varying(10),
    "n_month" integer,
    "n_year" integer,
    "c_fscode" character varying(10)
);

CREATE TABLE "tbl_wh_callavg_dashboard_det" (
    "c_fscode" character varying(100) NOT NULL,
    "n_month" integer NOT NULL,
    "n_year" integer NOT NULL,
    "n_tcallVisit" integer DEFAULT 0,
    "d1" integer DEFAULT 0,
    "d2" integer DEFAULT 0,
    "d3" integer DEFAULT 0,
    "d4" integer DEFAULT 0,
    "d5" integer DEFAULT 0,
    "d6" integer DEFAULT 0,
    "d7" integer DEFAULT 0,
    "d8" integer DEFAULT 0,
    "d9" integer DEFAULT 0,
    "d10" integer DEFAULT 0,
    "d11" integer DEFAULT 0,
    "d12" integer DEFAULT 0,
    "d13" integer DEFAULT 0,
    "d14" integer DEFAULT 0,
    "d15" integer DEFAULT 0,
    "d16" integer DEFAULT 0,
    "d17" integer DEFAULT 0,
    "d18" integer DEFAULT 0,
    "d19" integer DEFAULT 0,
    "d20" integer DEFAULT 0,
    "d21" integer DEFAULT 0,
    "d22" integer DEFAULT 0,
    "d23" integer DEFAULT 0,
    "d24" integer DEFAULT 0,
    "d25" integer DEFAULT 0,
    "d26" integer DEFAULT 0,
    "d27" integer DEFAULT 0,
    "d28" integer DEFAULT 0,
    "d29" integer DEFAULT 0,
    "d30" integer DEFAULT 0,
    "d31" integer DEFAULT 0
);

CREATE TABLE "tbl_wh_callavg_dashboard_mst" (
    "c_fscode" character varying(100),
    "n_month" integer,
    "n_year" integer,
    "n_tcallVisit" integer,
    "d1" integer,
    "d2" integer,
    "d3" integer,
    "d4" integer,
    "d5" integer,
    "d6" integer,
    "d7" integer,
    "d8" integer,
    "d9" integer,
    "d10" integer,
    "d11" integer,
    "d12" integer,
    "d13" integer,
    "d14" integer,
    "d15" integer,
    "d16" integer,
    "d17" integer,
    "d18" integer,
    "d19" integer,
    "d20" integer,
    "d21" integer,
    "d22" integer,
    "d23" integer,
    "d24" integer,
    "d25" integer,
    "d26" integer,
    "d27" integer,
    "d28" integer,
    "d29" integer,
    "d30" integer,
    "d31" integer
);

CREATE TABLE "tbl_wh_callavg_report" (
    "fscode" character(10),
    "empcode" character varying(10),
    "n_month" integer,
    "n_year" integer,
    "n_working_days" integer,
    "n_leave" integer,
    "n_NFWdays" integer,
    "n_FWdays" integer,
    "N_daysworked" integer,
    "N_Mcl_drcount" integer,
    "n_Tot_Dr_calls" integer,
    "n_dr_visited" integer,
    "n_dr_coverage" numeric,
    "n_dr_missed" integer,
    "n_dr_missed_calls" integer,
    "n_dr_call_avg" numeric,
    "n_chem_visited" integer,
    "n_Chem_Call_Avg" numeric,
    "n_pob" numeric,
    "n_stk_visited" integer,
    "n_Joint_work" integer,
    "n_Dr_add" integer,
    "n_Dr_del" integer,
    "n_holiday" integer,
    "n_Dr_Met" integer,
    "n_MAN_Tot_Dr_calls" integer,
    "n_MGR_NFWdays" integer,
    "n_MGR_FWdays" integer,
    "n_MGR_dr_call_avg" numeric,
    "n_MGR_dr_coverage" numeric,
    "n_MGR_dr_missed" integer,
    "n_MGR_dr_missed_calls" integer,
    "n_MGR_Chem_Call_Avg" numeric,
    "n_MGR_Joint_work" integer,
    "n_MGR_stk_visited" integer,
    "n_MGR_pob" integer,
    "n_Dr_Lca" integer,
    "n_mgr_dr_pob" numeric,
    "n_dr_pob" numeric,
    "N_mgr_Mcl_drcount" integer,
    "n_MGR_Dr_Met_Morning" numeric,
    "n_MGR_Dr_Met_Evng" numeric,
    "n_Dr_Met_Morning" numeric,
    "n_Dr_Met_Evng" numeric,
    "n_TP_Dev_Days" numeric,
    "n_HQ_Working" numeric,
    "n_EX_Working" numeric,
    "n_OS_Working" numeric,
    "n_MGR_TP_Dev_Days" numeric,
    "n_MR_NFWdays" integer,
    "n_MR_FWdays" integer,
    "n_MR_TP_Dev_Days" numeric,
    "n_MR_HQ_Working" numeric,
    "n_MR_EX_Working" numeric,
    "n_MR_OS_Working" numeric,
    "n_MR_Dr_Met_Morning" numeric,
    "n_MR_Dr_Met_Evng" numeric,
    "n_MGR_HQ_Working" numeric,
    "n_MGR_EX_Working" numeric,
    "n_MGR_OS_Working" numeric,
    "n_working_days_bw_twodates" integer,
    "n_Chem_pob" numeric,
    "n_Add_dr_Visited" integer,
    "n_Dcr_Mcr_Submitted_Count" integer,
    "n_mgr_chem_visited" integer
);

CREATE TABLE "tbl_wh_dco_visit_LastQuarter" (
    "doc" integer,
    "grade" character varying(30),
    "n_noof_visit" integer,
    "c_fscode" character varying(7) NOT NULL
);

CREATE TABLE "tbl_wh_dco_visit_previousMonth" (
    "doc" integer,
    "grade" character varying(30),
    "n_noof_visit" integer,
    "c_fscode" character varying(7) NOT NULL
);

CREATE TABLE "tbl_wh_dco_visit_secondpreviousMonth" (
    "doc" integer,
    "grade" character varying(30),
    "n_noof_visit" integer,
    "c_fscode" character varying(7) NOT NULL
);

CREATE TABLE "tbl_wh_div_data" (
    "n_id" integer NOT NULL DEFAULT nextval('tbl_wh_div_data_n_id_seq'::regclass),
    "c_fs_code" character varying(20),
    "c_div_code_all" character varying(1000),
    "c_div_name_all" character varying(3000),
    "c_div_code_today" character varying(1000),
    "c_div_name_today" character varying(3000)
);

CREATE TABLE "tbl_wh_doctor_visit_days" (
    "c_fs_code" character varying(10) NOT NULL,
    "n_year" integer NOT NULL,
    "c_mcl_no" character varying(20),
    "c_region" character varying(10),
    "c_area_code" character varying(10),
    "c_doc_code" character varying(10) NOT NULL,
    "c_subarea_code" character varying(10),
    "n_noof_visit" integer,
    "c_grade_code" character varying(10),
    "c_JAN" character varying(75),
    "c_FEB" character varying(75),
    "c_MAR" character varying(75),
    "c_APR" character varying(75),
    "c_MAY" character varying(75),
    "c_JUN" character varying(75),
    "c_JUL" character varying(75),
    "c_AUG" character varying(75),
    "c_SEP" character varying(75),
    "c_OCT" character varying(75),
    "c_NOV" character varying(75),
    "c_DEC" character varying(75),
    "d_last_dcr_date" timestamp without time zone,
    "c_Mcr_JAN" character varying(75),
    "c_Mcr_FEB" character varying(75),
    "c_Mcr_MAR" character varying(75),
    "c_Mcr_APR" character varying(75),
    "c_Mcr_MAY" character varying(75),
    "c_Mcr_JUN" character varying(75),
    "c_Mcr_JUL" character varying(75),
    "c_Mcr_AUG" character varying(75),
    "c_Mcr_SEP" character varying(75),
    "c_Mcr_OCT" character varying(75),
    "c_Mcr_NOV" character varying(75),
    "c_Mcr_DEC" character varying(75),
    "c_DCD_JAN" character varying(75),
    "c_DCD_FEB" character varying(75),
    "c_DCD_MAR" character varying(75),
    "c_DCD_APR" character varying(75),
    "c_DCD_MAY" character varying(75),
    "c_DCD_JUN" character varying(75),
    "c_DCD_JUL" character varying(75),
    "c_DCD_AUG" character varying(75),
    "c_DCD_SEP" character varying(75),
    "c_DCD_OCT" character varying(75),
    "c_DCD_NOV" character varying(75),
    "c_DCD_DEC" character varying(75)
);

CREATE TABLE "tbl_wh_fs_month_last_update" (
    "c_fs_code" character varying(10),
    "n_month" integer,
    "n_year" integer,
    "d_last_sync_date" timestamp without time zone,
    "n_type" integer
);

CREATE TABLE "tbl_wh_fs_month_last_update_temp" (
    "c_fs_code" character varying(10),
    "n_month" integer,
    "n_year" integer,
    "d_last_sync_date" timestamp without time zone,
    "n_type" integer
);

CREATE TABLE "tbl_wh_fswise_monthwise_worktype_det" (
    "n_month" integer,
    "n_year" integer,
    "c_fs_code" character varying(10),
    "c_work_type" character varying(10),
    "n_count" integer
);

CREATE TABLE "tbl_wh_fswiseprisecsalestargetqtyvalue" (
    "c_fscode" character varying(20),
    "n_prisec" integer,
    "c_targettype" character varying(20),
    "n_month" integer,
    "n_year" integer,
    "n_salesqty" numeric,
    "n_salesvalue" numeric,
    "n_targetqty" numeric,
    "n_targetvalue" numeric,
    "n_Closingqty" numeric,
    "n_Closingvalue" numeric
);

CREATE TABLE "tbl_wh_settings" (
    "n_doctor_visit_current_month" integer,
    "c_secondarySales_LastUpdated_Date" character varying(20),
    "c_primarySales_LastUpdated_Date" character varying(20),
    "c_fscode" character varying(50)
);

CREATE TABLE "tbl_workWith_mtp_sub_det" (
    "n_srno" numeric NOT NULL,
    "N_MTPRowId" numeric NOT NULL,
    "c_workwith_Fs_code" character varying(50) NOT NULL,
    "c_doc_code" character varying(10) NOT NULL
);

CREATE TABLE "tbl_workWith_multiple" (
    "N_srno" numeric,
    "C_fscode_parent" character varying(10)
);

CREATE TABLE "tbl_workWith_multiple_MTP" (
    "N_srno" numeric NOT NULL,
    "C_fscode_parent" character varying(10) NOT NULL,
    "c_work_type" character varying(10) NOT NULL,
    "D_Date" timestamp without time zone NOT NULL,
    "n_copy" integer
);

CREATE TABLE "tbl_workWith_multiple_MTP_STP" (
    "N_srno" numeric NOT NULL,
    "C_fscode_parent" character varying(10) NOT NULL,
    "c_work_type" character varying(10) NOT NULL,
    "n_dayof_week" character varying(20) NOT NULL,
    "n_week" numeric NOT NULL
);

CREATE TABLE "tbl_workWith_multiple_PMT" (
    "N_srno" numeric,
    "C_fscode_parent" character varying(10)
);

CREATE TABLE "tbl_workWith_multiple_log" (
    "N_srno" numeric,
    "C_fscode_parent" character varying(10)
);

CREATE TABLE "tbl_work_contact_setup_det" (
    "n_setup_id" integer,
    "c_RegCode" text,
    "n_mandatory" character varying(20)
);

CREATE TABLE "tbl_work_contact_setup_mst" (
    "n_setup_id" integer NOT NULL DEFAULT nextval('tbl_work_contact_setup_mst_n_setup_id_seq'::regclass),
    "c_type" character varying(50),
    "c_DivCode" text,
    "d_created" timestamp without time zone,
    "n_deleted" integer,
    "c_FsDivision" character varying(100),
    "c_FsRegion" character varying(100),
    "c_FsArea" character varying(100),
    "n_FsDesig" character varying(10),
    "c_Fs_Fscode" character varying(100)
);

CREATE TABLE "tblcompanysettbackup" (
    "c_company_code" character varying(50) NOT NULL,
    "c_company_name" character varying(40) NOT NULL,
    "d_lbdt" timestamp without time zone,
    "c_dbip" character varying(25) NOT NULL,
    "c_dbname" character varying(25) NOT NULL,
    "c_dbuser" character varying(25) NOT NULL,
    "c_dbpwd" character varying(25) NOT NULL,
    "c_dbdsn" character varying(25) NOT NULL,
    "c_SfaCompanyID" character varying(20),
    "c_RegistrationPassword" character varying(20),
    "n_mobile_user" integer,
    "N_SMSFlag" boolean,
    "c_sub_company_code" character varying(4),
    "n_emailflg" boolean,
    "projectid" integer,
    "c_company_url" character varying(500),
    "c_mob_browser_url" character varying(500),
    "n_order_mail" integer,
    "c_go4plus_redirection_url" character varying(200),
    "N_htmldownloadflg" integer,
    "d_tokennumber__ldate_integration_qlikview" timestamp without time zone,
    "c_tokennumber_integration_qlikview" character varying(100),
    "c_registrationKey_integration_qlikview" character varying(100),
    "n_dcrsmsflag" integer,
    "c_android_device_url" character varying(250),
    "n_LMSFlg" integer,
    "n_BdayFlag" integer,
    "n_AnniversaryFlag" integer,
    "n_MTPflag" integer,
    "c_C2code" character varying(10),
    "n_encrypt" integer,
    "n_SingleSignOn" integer,
    "n_SingleSignOnLoginType" integer,
    "c_SingleSignOnLogoutUrl" character varying(150),
    "n_EnableNormalLogin" integer,
    "c_MoodleLMSLink" text,
    "n_autoleaveapproval" integer
);

CREATE TABLE "tblerror" (
    "code" character varying(200)
);

CREATE TABLE "tblsettingsbckup" (
    "N_Type" integer,
    "C_Code" character(10),
    "N_Days" integer,
    "n_leave_days" integer,
    "n_flag" integer
);

CREATE TABLE "tempK" (
    "va" character varying(200)
);

CREATE TABLE "temp_TBL_DOCINV_SETUP" (
    "n_srno" numeric NOT NULL,
    "c_name" character varying(50),
    "n_inv_mode_min" numeric,
    "n_inv_mode_max" numeric,
    "d_date_from" timestamp without time zone,
    "d_date_to" timestamp without time zone,
    "n_months" integer,
    "n_roi_on" integer,
    "n_roi_value" integer,
    "n_roi_det" integer,
    "n_roi_reconci" integer,
    "c_budget_view" character varying(20),
    "c_budget_validate" character varying(20),
    "n_mcl_mand" integer,
    "n_drph" integer,
    "n_update_drmst" integer,
    "n_email_id" integer,
    "n_commit_dr" integer,
    "n_req_dr" integer,
    "n_rmks" integer,
    "n_curr_sale" integer,
    "n_disp_sale" integer,
    "n_visit_det" integer,
    "n_docprof_months" integer,
    "n_Fs_invhistory" integer,
    "n_dr_invhistory" integer,
    "n_inv_productrate" integer,
    "n_product_rate" integer,
    "n_single_approval" integer,
    "n_upload" integer,
    "c_status" character varying(20),
    "c_ratetype" character varying(10),
    "n_actualrate" numeric,
    "n_print" integer,
    "n_deleted" integer,
    "c_modifier" character varying(20),
    "d_modified" timestamp without time zone,
    "c_print_opt" character varying(20),
    "c_req_editable" character varying(50),
    "c_rcpa_view" character varying(50)
);

CREATE TABLE "temp_mob_dcr" (
    "compId" character varying(50),
    "fscode" character varying(50),
    "details" character varying(500),
    "doc_chem_stk" text,
    "c_time" character varying(100)
);

CREATE TABLE "temp_tbl_fs_mst" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "N_Type" numeric NOT NULL,
    "C_Grade" character(10),
    "C_Qualification" character varying(30),
    "C_Add_1" character varying(50),
    "C_Add_2" character varying(50),
    "C_Add_3" character varying(50),
    "C_Add_4" character varying(50),
    "C_Pin" character(10),
    "C_Phone" character(20),
    "C_Fax" character(20),
    "C_Category" character(10),
    "C_Area_Code" character varying(10) NOT NULL,
    "C_Parent" character(10),
    "C_EmpNo" character varying(10) NOT NULL,
    "C_Desc" character varying(50),
    "D_DOB" timestamp without time zone,
    "D_DOJ" timestamp without time zone,
    "D_DOW" timestamp without time zone,
    "n_Status" integer,
    "C_Email_ID" character varying(50),
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "N_ptype" integer,
    "c_div_code" character varying(10)
);

CREATE TABLE "temp_tbl_menu_items" (
    "itemid" integer NOT NULL,
    "menuid" integer,
    "text" character varying(100),
    "url" character varying(255),
    "showmenu" character varying(50),
    "image" character varying(200),
    "overimage" character varying(200),
    "flag" integer,
    "n_visible" integer,
    "N_Autocode_Flag" integer,
    "SFARole" character varying(5) NOT NULL,
    "n_rights_flag" integer NOT NULL,
    "projectid" integer,
    "c_Disply_Header" character varying(200),
    "n_Disply_Header_flag" boolean
);

CREATE TABLE "temp_tbl_menus" (
    "menuid" integer NOT NULL,
    "projectid" integer,
    "styleid" integer,
    "name" character varying(50),
    "alwaysvisible" integer,
    "orientation" integer,
    "overflow" character varying(50),
    "margin" integer,
    "top" character varying(50),
    "left" integer
);

CREATE TABLE "temp_tbl_sms" (
    "c_mob_no" character varying(20),
    "c_msg" text,
    "c_empcode" character varying(10)
);

CREATE TABLE "temp_unlockdata_log" (
    "fscode" character varying(50),
    "d_createddate" timestamp without time zone,
    "d_createdfs" character varying(50)
);

CREATE TABLE "tempstpupdate" (
    "Region Name" character varying(255),
    "STPNo" double precision,
    "rowid" double precision,
    "Division" character varying(255),
    "FS CODE" character varying(255),
    "FS NAME" character varying(255),
    "HQ CODE" character varying(255),
    "HQ NAME" character varying(255),
    "Based At Code" character varying(255),
    "Based At Name" character varying(255),
    "STP Date From" timestamp without time zone,
    "STP Date To" timestamp without time zone,
    "HQDA" double precision,
    "EXDA" double precision,
    "OSDA" double precision,
    "TAType" double precision,
    "RateKM" double precision,
    "From Area Code" character varying(255),
    "From Area Name" character varying(255),
    "ToAreaCode" character varying(255),
    "ToAreaname" character varying(255),
    "A grade doct count" double precision,
    "B grade doctor count" double precision,
    "chemist count" double precision,
    "stockiest count" double precision,
    "curent business" double precision,
    "expected business" double precision,
    "AreaType" character varying(255),
    "Distance" double precision,
    "TA" double precision
);

CREATE TABLE "up_update" (
    "DocCode" character varying(255),
    "SubAreaCode" character varying(255),
    "Areamaster" character varying(255),
    "Regionmaster" character varying(255)
);

CREATE TABLE "update_doc" (
    "DOCCODE" character varying(255),
    "NEW SUBAREA" character varying(255),
    "areacode" character varying(255),
    "region code" character varying(255)
);

CREATE TABLE "update_doc3" (
    "code" character varying(255),
    "Firstname" character varying(255),
    "Middlename" character varying(255),
    "Lastname" character varying(255),
    "gradecode" character varying(255),
    "qualification" character varying(255),
    "Clinic/Hospital Code" character varying(255),
    "House/Building Name" character varying(255),
    "Street Name" character varying(255),
    "Area" character varying(255),
    "Landmark" character varying(255),
    "City" character varying(255),
    "State" character varying(255),
    "pin" double precision,
    "Mobileno " character varying(255),
    "Landno" character varying(255),
    "referenceno" character varying(255),
    "categorycode" character varying(255),
    "subareacode" character varying(255),
    "Age" character varying(255),
    "dob" character varying(255),
    "dow" character varying(255),
    "email" character varying(255),
    "fscode" character varying(255),
    "divcode" character varying(255),
    "LAT" character varying(255),
    "LONG" character varying(255),
    "Class" character varying(255),
    "Spousename" character varying(255),
    "SpouseDOB" character varying(255),
    "Drregno" character varying(255),
    "Speciality As Per Practice" character varying(255),
    "No Of Patients Per Day" character varying(255),
    "Current Business" character varying(255),
    "Business Potential" character varying(255),
    "Doctor Potential" character varying(255),
    "Is doctor Purchasing" character varying(255),
    "Is doctor Prescribing" character varying(255),
    "Child1 Name" character varying(255),
    "Child1 Dob" character varying(255),
    "Child2 Name" character varying(255),
    "Child2 Dob" character varying(255),
    "Child3 Name" character varying(255),
    "Child3 Dob " character varying(255)
);

CREATE TABLE "useraccessbackup_2018" (
    "N_Type" numeric NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "c_sh_name" character varying(10),
    "n_CI_FLag" smallint,
    "n_fs_flag" smallint,
    "c_gadgetcode" character varying(50)
);

CREATE TABLE "vacants" (
    "DIVISION" character varying(50),
    "REGION" character varying(50),
    "DESIGNATION" character varying(50),
    "HQ" character varying(50),
    "NOOFVACANTS" character varying(50)
);

CREATE TABLE "vg3" (
    "doccode" character varying(255),
    "Fscode " character varying(255),
    "Division" character varying(255)
);

CREATE TABLE "vg_Cust_Div" (
    "c_cust_code" character(10) NOT NULL,
    "c_div_code" character varying(10) NOT NULL,
    "c_fs_code" character(10) NOT NULL,
    "d_date" timestamp without time zone NOT NULL,
    "c_grade" character varying(10),
    "d_date_to" timestamp without time zone,
    "n_per" integer,
    "C_ref_no" character varying(52),
    "d_modified" timestamp without time zone,
    "N_CRNTBUSINES" character varying(150),
    "C_BUSINES_POTENTIAL" character varying(150),
    "N_drpotential" character varying(50)
);

CREATE TABLE "vg_alert_setup" (
    "c_provider" character varying(20),
    "c_user" character varying(20),
    "c_psw" character varying(20),
    "n_active" numeric,
    "n_No_sms_purchased" numeric,
    "n_sms_left" numeric,
    "c_sms_prefix" character varying(7000),
    "c_sms_suffix" character varying(7000),
    "c_sms_to_prefix" character varying(1000),
    "c_sms_to_suffix" character varying(1000),
    "c_sms_url" character varying(1000),
    "n_msg_account_flag" integer,
    "C_APIkey" character varying(100),
    "C_Sender" character varying(100)
);

CREATE TABLE "vg_area_mst" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "C_Sh_Name" character varying(7),
    "C_Region_Code" character varying(10) NOT NULL,
    "C_SalesHQ" character varying(50),
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "n_lami" double precision,
    "n_lgmi" double precision
);

CREATE TABLE "vg_category_mst" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(50) NOT NULL,
    "C_Sh_Name" character(10),
    "N_Type" integer,
    "n_deleted" smallint NOT NULL,
    "d_created" timestamp without time zone NOT NULL,
    "d_modified" timestamp without time zone,
    "c_modifier" character varying(10),
    "n_CatStatus" integer,
    "c_image" character varying(500)
);

CREATE TABLE "vg_cust_div_backup_before_duplicatedelete_20072016" (
    "c_cust_code" character(10) NOT NULL,
    "c_div_code" character varying(10) NOT NULL,
    "c_fs_code" character(10) NOT NULL,
    "d_date" timestamp without time zone NOT NULL,
    "c_grade" character varying(10),
    "d_date_to" timestamp without time zone,
    "n_per" integer,
    "C_ref_no" character varying(52),
    "d_modified" timestamp without time zone,
    "N_CRNTBUSINES" character varying(150),
    "C_BUSINES_POTENTIAL" character varying(150),
    "N_drpotential" character varying(50)
);

CREATE TABLE "vg_docclose" (
    "Code" character varying(255),
    "FS" character varying(255)
);

CREATE TABLE "vg_hol" (
    "Regioncode" character varying(255),
    "Holidaycode" double precision,
    "Date" timestamp without time zone
);

CREATE TABLE "vg_hospital" (
    "hospitalcode" character varying(255),
    "hospitalname" character varying(255),
    "type" character varying(255),
    "grade" character varying(255),
    "regioncode" character varying(255),
    "areacode" character varying(255),
    "subareacode" character varying(255),
    "category" character varying(255),
    "streetname" character varying(255),
    "area" character varying(255),
    "landmark" character varying(255),
    "city" character varying(255),
    "state" character varying(255),
    "pin" character varying(255),
    "landno" character varying(255),
    "inhouse pharmacy" character varying(255),
    "financial turnover" character varying(255),
    "potential" character varying(255),
    "no of beds" character varying(255),
    "no of emergency beds" character varying(255),
    "no of critical icu beds" character varying(255),
    "no of surgical theaters" character varying(255),
    "hospital" character varying(255),
    "total no of doctors working" character varying(255),
    "purchase manager name" character varying(255),
    "purchase manager contact" character varying(255),
    "stock incharge name" character varying(255),
    "stock incharge contact" character varying(255),
    "financial officer name" character varying(255),
    "financial officer contact" character varying(255),
    "no of therapeutic group" character varying(255),
    "teaching institution" character varying(255),
    "therapeutic group code" character varying(255),
    "pgcode" character varying(255)
);

CREATE TABLE "vg_map" (
    "FSCODE" character varying(255),
    "Doctor Code" character varying(255),
    "Div code" character varying(255)
);

CREATE TABLE "vg_message_mst" (
    "N_Srno" numeric NOT NULL,
    "C_FS_Code_From" character(10) NOT NULL,
    "C_Parent" character(10),
    "C_FS_Code_To" character(10) NOT NULL,
    "C_Subject" character varying(500),
    "C_Message" character varying(500),
    "n_Read" integer,
    "n_ReadParent" integer,
    "N_Delete" integer,
    "N_DeleteParent" integer,
    "n_Msg_Type" integer,
    "D_Created_Date" timestamp without time zone,
    "n_msgid" numeric,
    "c_empcode" character(10)
);

CREATE TABLE "vg_sfa_userrights" (
    "n_itemid" integer,
    "c_userid" character varying(50),
    "n_user_type" integer
);

CREATE TABLE "vg_userinfo" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(500),
    "C_UserID" character varying(20) NOT NULL,
    "C_Password" character varying(100),
    "N_Lock" integer NOT NULL,
    "C_Description" character varying(250),
    "N_Edit" integer,
    "N_Delete" integer,
    "N_AddNew" integer,
    "N_Shift" integer,
    "N_ShiftEdit" integer,
    "D_Create_Date" timestamp without time zone,
    "D_Modify_Date" timestamp without time zone,
    "c_mob_UniqueID" character varying(10),
    "c_mob_Prev_ID" character varying(10),
    "n_mobile_user" integer,
    "n_type" integer,
    "n_menuid" integer,
    "n_webuser" integer,
    "n_Mobwebuser" integer,
    "n_edetailng" integer,
    "n_Androiduser" integer
);

CREATE TABLE "vg_userinfo_backup_beforeInactiveUserDeletion" (
    "C_Code" character varying(10) NOT NULL,
    "C_Name" character varying(500),
    "C_UserID" character varying(20) NOT NULL,
    "C_Password" character varying(100),
    "N_Lock" integer NOT NULL,
    "C_Description" character varying(250),
    "N_Edit" integer,
    "N_Delete" integer,
    "N_AddNew" integer,
    "N_Shift" integer,
    "N_ShiftEdit" integer,
    "D_Create_Date" timestamp without time zone,
    "D_Modify_Date" timestamp without time zone,
    "c_mob_UniqueID" character varying(10),
    "c_mob_Prev_ID" character varying(10),
    "n_mobile_user" integer,
    "n_type" integer,
    "n_menuid" integer,
    "n_webuser" integer,
    "n_Mobwebuser" integer,
    "n_edetailng" integer,
    "n_Androiduser" integer
);

CREATE TABLE "vg_vermst_bak" (
    "V_ID" numeric NOT NULL,
    "V_Name" character varying(50) NOT NULL,
    "V_Type" numeric NOT NULL,
    "V_Date" timestamp without time zone NOT NULL
);

CREATE TABLE "vgarea" (
    "Fscode " character varying(255),
    "HqCode " character varying(255),
    "F3" character varying(255)
);

CREATE TABLE "vgd" (
    "Doctor Code " character varying(255),
    "FS Name " character varying(255),
    "Divison Code" character varying(255)
);

CREATE TABLE "vgdoc" (
    "code" character varying(255),
    "Firstname" character varying(255),
    "gradecode" character varying(255),
    "qualification" character varying(255),
    "Clinic/Hospital Name" character varying(255),
    "Street Name" character varying(255),
    "Area" character varying(255),
    "Landmark" character varying(255),
    "City" character varying(255),
    "pin" character varying(255),
    "Mobileno " character varying(255),
    "categorycode" character varying(255),
    "subareacode" character varying(255),
    "email" character varying(255),
    "fscode" character varying(255),
    "divcode" character varying(255),
    "Drregno" character varying(255)
);

CREATE TABLE "vgdocdata" (
    "DocCode" character varying(10) NOT NULL,
    "DocName" character varying(200),
    "FsCode" character varying(10) NOT NULL,
    "FsName" character varying(100),
    "Category" character varying(50),
    "Grade" character varying(30),
    "Class" character varying(100),
    "Subarea" character varying(50),
    "Area" character varying(50),
    "Region" character varying(50),
    "refno" character varying(52),
    "DivCode" character varying(10) NOT NULL,
    "Div" character varying(50),
    "DocEmailid" character varying(50)
);

CREATE TABLE "vgdocfull" (
    "code" character varying(255),
    "Firstname" character varying(255),
    "gradecode" character varying(255),
    "qualification" character varying(255),
    "Clinic/Hospital Name" character varying(255),
    "Street Name" character varying(255),
    "Area" character varying(255),
    "pin" character varying(255),
    "Mobileno " character varying(255),
    "categorycode" character varying(255),
    "subareacode" character varying(255),
    "email" character varying(255),
    "fscode" character varying(255),
    "divcode" character varying(255),
    "Drregno" character varying(255)
);

CREATE TABLE "vgdocinsert" (
    "code" character varying(255),
    "Firstname" character varying(255),
    "gradecode" character varying(255),
    "qualification" character varying(255),
    "Clinic/Hospital Name" character varying(255),
    "Street Name" character varying(255),
    "pin" character varying(255),
    "Mobileno " character varying(255),
    "categorycode" character varying(255),
    "subareacode" character varying(255),
    "email" character varying(255),
    "fscode" character varying(255),
    "divcode" character varying(255),
    "Drregno" double precision,
    "F15" character varying(255),
    "F16" character varying(255),
    "F17" character varying(255),
    "F18" character varying(255),
    "F19" character varying(255),
    "F20" character varying(255),
    "F21" character varying(255),
    "F22" character varying(255),
    "F23" character varying(255),
    "F24" character varying(255)
);

CREATE TABLE "vgdocinsert1" (
    "code" character varying(255),
    "Firstname" character varying(255),
    "gradecode" character varying(255),
    "qualification" character varying(255),
    "Clinic/Hospital Name" character varying(255),
    "Street Name" character varying(255),
    "Area" character varying(255),
    "pin" character varying(255),
    "Mobileno " character varying(255),
    "categorycode" character varying(255),
    "subareacode" character varying(255),
    "email" character varying(255),
    "fscode" character varying(255),
    "divcode" character varying(255),
    "Drregno" character varying(255)
);

CREATE TABLE "vgdocinsert_errorlog" (
    "doccode" character varying(100)
);

CREATE TABLE "vgdocmap1" (
    "Doctor code " character varying(255),
    "Fs Code " character varying(255),
    "Division" character varying(255)
);

CREATE TABLE "vgdocup" (
    "code" character varying(255),
    "Firstname" character varying(255),
    "gradecode" character varying(255),
    "qualification" character varying(255),
    "HospitalName" character varying(255),
    "StreetName " character varying(255),
    "City" character varying(255),
    "pin" character varying(255),
    "Mobileno " character varying(255),
    "categorycode" character varying(255),
    "subareacode" character varying(255),
    "email" character varying(255),
    "fscode" character varying(255),
    "divcode" character varying(255),
    "Drregno" double precision
);

CREATE TABLE "vgmap" (
    "D47827" character varying(255),
    "TSE089" character varying(255)
);

CREATE TABLE "vgmp" (
    "DRCODE" character varying(255),
    "FSCODE" character varying(255),
    "DIV" character varying(255)
);

CREATE TABLE "vgnagpur" (
    "code" character varying(255),
    "Firstname" character varying(255),
    "gradecode" character varying(255),
    "qualification" character varying(255),
    "Clinic/Hospital Name" character varying(255),
    "Street Name" character varying(255),
    "Area" character varying(255),
    "pin" character varying(255),
    "Mobileno " character varying(255),
    "categorycode" character varying(255),
    "subareacode" character varying(255),
    "email" character varying(255),
    "fscode" character varying(255),
    "divcode" character varying(255),
    "Drregno" double precision
);

CREATE TABLE "volga_stp" (
    "Region Name" character varying(255),
    "STPNo" double precision,
    "FS CODE" character varying(255),
    "division" character varying(255),
    "FS NAME" character varying(255),
    "STP Date From" timestamp without time zone,
    "STP Date To" timestamp without time zone,
    "HQDA" double precision,
    "EXDA" double precision,
    "OSDA" double precision,
    "TAType" double precision,
    "RateKM" double precision,
    "distnace" double precision,
    "TA" double precision,
    "From Area Code" character varying(255),
    "From Area Name" character varying(255),
    "ToAreaCode" character varying(255),
    "ToAreaname" character varying(255),
    "A grade doct count" double precision,
    "B grade doctor count" double precision,
    "workingdays" double precision,
    "chemist count" double precision,
    "stockiest count" double precision,
    "curent business" double precision,
    "expected business" double precision,
    "AreaType" character varying(255)
);

CREATE TABLE "volga_stp1" (
    "Region Name" character varying(255),
    "STPNo" double precision,
    "FS CODE" character varying(255),
    "division" character varying(255),
    "FS NAME" character varying(255),
    "STP Date From" timestamp without time zone,
    "STP Date To" timestamp without time zone,
    "HQDA" double precision,
    "EXDA" double precision,
    "OSDA" double precision,
    "TAType" double precision,
    "RateKM" double precision,
    "distnace" double precision,
    "TA" double precision,
    "From Area Code" character varying(255),
    "From Area Name" character varying(255),
    "ToAreaCode" character varying(255),
    "ToAreaname" character varying(255),
    "A grade doct count" double precision,
    "B grade doctor count" double precision,
    "workingdays" double precision,
    "chemist count" double precision,
    "stockiest count" double precision,
    "curent business" double precision,
    "expected business" double precision,
    "AreaType" double precision
);

CREATE TABLE "worktype" (
    "WorkType" character varying(10),
    "Stat" character varying(10)
);

CREATE TABLE "wrkgdays" (
    "empcode" character varying(50),
    "workngdays" character varying(50)
);

CREATE TABLE "xltemp10494_Doc_mst" (
    "srno" integer NOT NULL,
    "code" character varying(10),
    "firstname" character varying(50),
    "middlename" character varying(50),
    "lastname" character varying(50),
    "gradecode" character varying(10),
    "qualification" character varying(50),
    "clinichospitalname" character varying(100),
    "streetname" character varying(100),
    "area" character varying(100),
    "landmark" character varying(100),
    "city" character varying(100),
    "state" character varying(100),
    "pin" character varying(20),
    "housebuildingname" character varying(100),
    "streetname1" character varying(100),
    "area1" character varying(100),
    "landmark1" character varying(100),
    "city1" character varying(100),
    "state1" character varying(100),
    "pin1" character varying(20),
    "phone" character varying(20),
    "landno" character varying(20),
    "referenceno" character varying(20),
    "categorycode" character varying(20),
    "subareacode" character varying(20),
    "age" character varying(20),
    "dob" character varying(20),
    "dow" character varying(20),
    "email" character varying(50),
    "fscode" character varying(50),
    "divcode" character varying(50),
    "lat" double precision,
    "long" double precision,
    "class" character varying(50),
    "spousename" character varying(100),
    "spousedob" character varying(50),
    "mcino" character varying(50),
    "speciality" character varying(50),
    "noofpatients" character varying(50),
    "currentBusiness" character varying(50),
    "Businesspotential" character varying(50),
    "doctorpotential" character varying(50),
    "doctorpurchasing" character varying(50),
    "doctorprescribing" character varying(50),
    "child1name" character varying(50),
    "child1dob" character varying(50),
    "child2name" character varying(50),
    "child2dob" character varying(50),
    "child3name" character varying(50),
    "child3dob" character varying(50)
);

CREATE TABLE "xltemp10555_Doc_mst" (
    "srno" integer NOT NULL,
    "code" character varying(10),
    "firstname" character varying(50),
    "middlename" character varying(50),
    "lastname" character varying(50),
    "gradecode" character varying(10),
    "qualification" character varying(50),
    "clinichospitalname" character varying(100),
    "streetname" character varying(100),
    "area" character varying(100),
    "landmark" character varying(100),
    "city" character varying(100),
    "state" character varying(100),
    "pin" character varying(20),
    "housebuildingname" character varying(100),
    "streetname1" character varying(100),
    "area1" character varying(100),
    "landmark1" character varying(100),
    "city1" character varying(100),
    "state1" character varying(100),
    "pin1" character varying(20),
    "phone" character varying(20),
    "landno" character varying(20),
    "referenceno" character varying(20),
    "categorycode" character varying(20),
    "subareacode" character varying(20),
    "age" character varying(20),
    "dob" character varying(20),
    "dow" character varying(20),
    "email" character varying(50),
    "fscode" character varying(50),
    "divcode" character varying(50),
    "lat" double precision,
    "long" double precision,
    "class" character varying(50),
    "spousename" character varying(100),
    "spousedob" character varying(50),
    "mcino" character varying(50),
    "speciality" character varying(50),
    "noofpatients" character varying(50),
    "currentBusiness" character varying(50),
    "Businesspotential" character varying(50),
    "doctorpotential" character varying(50),
    "doctorpurchasing" character varying(50),
    "doctorprescribing" character varying(50),
    "child1name" character varying(50),
    "child1dob" character varying(50),
    "child2name" character varying(50),
    "child2dob" character varying(50),
    "child3name" character varying(50),
    "child3dob" character varying(50)
);

CREATE TABLE "xltemp108086_Doc_mst" (
    "srno" integer NOT NULL,
    "code" character varying(10),
    "firstname" character varying(50),
    "middlename" character varying(50),
    "lastname" character varying(50),
    "gradecode" character varying(10),
    "qualification" character varying(50),
    "clinichospitalname" character varying(100),
    "streetname" character varying(100),
    "area" character varying(100),
    "landmark" character varying(100),
    "city" character varying(100),
    "state" character varying(100),
    "pin" character varying(14),
    "housebuildingname" character varying(100),
    "streetname1" character varying(100),
    "area1" character varying(100),
    "landmark1" character varying(100),
    "city1" character varying(100),
    "state1" character varying(100),
    "pin1" character varying(14),
    "phone" character varying(14),
    "landno" character varying(14),
    "referenceno" character varying(14),
    "categorycode" character varying(14),
    "subareacode" character varying(14),
    "age" character varying(14),
    "dob" character varying(20),
    "dow" character varying(20),
    "email" character varying(50),
    "fscode" character varying(50),
    "divcode" character varying(50),
    "lat" double precision,
    "long" double precision,
    "class" character varying(50),
    "spousename" character varying(100),
    "spousedob" character varying(50),
    "mcino" character varying(50),
    "speciality" character varying(50),
    "noofpatients" character varying(50),
    "currentBusiness" character varying(50),
    "Businesspotential" character varying(50),
    "doctorpotential" character varying(50),
    "doctorpurchasing" character varying(50),
    "doctorprescribing" character varying(50),
    "child1name" character varying(50),
    "child1dob" character varying(50),
    "child2name" character varying(50),
    "child2dob" character varying(50),
    "child3name" character varying(50),
    "child3dob" character varying(50)
);

CREATE TABLE "xltemp11500_Doc_mst" (
    "srno" integer NOT NULL,
    "code" character varying(10),
    "firstname" character varying(50),
    "middlename" character varying(50),
    "lastname" character varying(50),
    "gradecode" character varying(10),
    "qualification" character varying(50),
    "clinichospitalname" character varying(100),
    "streetname" character varying(100),
    "area" character varying(100),
    "landmark" character varying(100),
    "city" character varying(100),
    "state" character varying(100),
    "pin" character varying(14),
    "housebuildingname" character varying(100),
    "streetname1" character varying(100),
    "area1" character varying(100),
    "landmark1" character varying(100),
    "city1" character varying(100),
    "state1" character varying(100),
    "pin1" character varying(14),
    "phone" character varying(14),
    "landno" character varying(14),
    "referenceno" character varying(14),
    "categorycode" character varying(14),
    "subareacode" character varying(50),
    "age" character varying(14),
    "dob" character varying(50),
    "dow" character varying(14),
    "email" character varying(50),
    "fscode" character varying(50),
    "divcode" character varying(50),
    "lat" double precision,
    "long" double precision,
    "class" character varying(50),
    "spousename" character varying(100),
    "spousedob" character varying(50),
    "mcino" character varying(50),
    "speciality" character varying(50),
    "noofpatients" character varying(50),
    "currentBusiness" character varying(50),
    "Businesspotential" character varying(50),
    "doctorpotential" character varying(50),
    "doctorpurchasing" character varying(50),
    "doctorprescribing" character varying(50),
    "child1name" character varying(50),
    "child1dob" character varying(50),
    "child2name" character varying(50),
    "child2dob" character varying(50),
    "child3name" character varying(50),
    "child3dob" character varying(50),
    "panno" character varying(20),
    "Hstreetname" character varying(50),
    "Hareaname" character varying(50),
    "Hlandmark" character varying(50),
    "Hcity" character varying(50),
    "Hstate" character varying(50),
    "Hpincode" character varying(10)
);

CREATE TABLE "xltemp1545_fs_mst" (
    "srno" integer NOT NULL,
    "empcode" character varying(15),
    "fscode" character varying(15),
    "fstype" integer,
    "areacode" character varying(15),
    "parentcode" character varying(15),
    "divcode" character varying(10)
);

CREATE TABLE "xltempadmin1_Chemist_mst" (
    "srno" integer NOT NULL,
    "code" character varying(20),
    "name" character varying(50),
    "add1" character varying(100),
    "add2" character varying(100),
    "city" character varying(100),
    "state" character varying(50),
    "pin" character varying(50),
    "phone" character varying(50),
    "referenceno" character varying(50),
    "email" character varying(100),
    "fscode" character varying(50),
    "subareacode" character varying(50),
    "lat" double precision,
    "long" double precision,
    "tin" character varying(50),
    "lic" character varying(50),
    "contactname" character varying(50),
    "sftshop" numeric,
    "displayshelf" numeric,
    "descdisplayshelf" character varying(100),
    "fboardheight" numeric,
    "fboardlength" numeric,
    "backlit" integer,
    "computrised" integer,
    "licfood" character varying(50),
    "sort" character varying(10),
    "contactmob" character varying(20),
    "contoutletnumber" character varying(50),
    "landmark" character varying(100),
    "grade" character varying(10),
    "dob" timestamp without time zone,
    "dow" timestamp without time zone,
    "outlettype" character varying(15),
    "shortname" character varying(10)
);

CREATE TABLE "xltempadmin1_Doc_mst" (
    "srno" integer NOT NULL,
    "code" character varying(10),
    "firstname" character varying(50),
    "middlename" character varying(50),
    "lastname" character varying(50),
    "gradecode" character varying(10),
    "qualification" character varying(50),
    "clinichospitalname" character varying(100),
    "streetname" character varying(100),
    "area" character varying(100),
    "landmark" character varying(100),
    "city" character varying(100),
    "state" character varying(100),
    "pin" character varying(20),
    "housebuildingname" character varying(100),
    "streetname1" character varying(100),
    "area1" character varying(100),
    "landmark1" character varying(100),
    "city1" character varying(100),
    "state1" character varying(100),
    "pin1" character varying(20),
    "phone" character varying(20),
    "landno" character varying(20),
    "referenceno" character varying(20),
    "categorycode" character varying(20),
    "subareacode" character varying(20),
    "age" character varying(20),
    "dob" character varying(20),
    "dow" character varying(20),
    "email" character varying(50),
    "fscode" character varying(50),
    "divcode" character varying(50),
    "lat" double precision,
    "long" double precision,
    "class" character varying(50),
    "spousename" character varying(100),
    "spousedob" character varying(50),
    "mcino" character varying(50),
    "speciality" character varying(50),
    "noofpatients" character varying(50),
    "currentBusiness" character varying(50),
    "Businesspotential" character varying(50),
    "doctorpotential" character varying(50),
    "doctorpurchasing" character varying(50),
    "doctorprescribing" character varying(50),
    "child1name" character varying(50),
    "child1dob" character varying(50),
    "child2name" character varying(50),
    "child2dob" character varying(50),
    "child3name" character varying(50),
    "child3dob" character varying(50)
);

CREATE TABLE "xltempadmin2_Chemist_mst" (
    "srno" integer NOT NULL,
    "code" character varying(20),
    "name" character varying(50),
    "add1" character varying(100),
    "add2" character varying(100),
    "city" character varying(100),
    "state" character varying(50),
    "pin" character varying(50),
    "phone" character varying(50),
    "referenceno" character varying(50),
    "email" character varying(100),
    "fscode" character varying(50),
    "subareacode" character varying(50),
    "lat" double precision,
    "long" double precision,
    "tin" character varying(50),
    "lic" character varying(50),
    "contactname" character varying(50),
    "sftshop" numeric,
    "displayshelf" numeric,
    "descdisplayshelf" character varying(100),
    "fboardheight" numeric,
    "fboardlength" numeric,
    "backlit" integer,
    "computrised" integer,
    "licfood" character varying(50),
    "contactmob" character varying(20),
    "contoutletnumber" character varying(50),
    "landmark" character varying(100),
    "grade" character varying(10),
    "dob" timestamp without time zone,
    "dow" timestamp without time zone,
    "outlettype" character varying(15),
    "shortname" character varying(10),
    "fridge" integer,
    "windowsize" character varying(100),
    "storemanager" character varying(50),
    "storeclassification" character varying(50),
    "storetype" character varying(50),
    "distributorcode" character varying(50),
    "agreementdate" timestamp without time zone,
    "totaldiscountperc" numeric,
    "fromdate" timestamp without time zone,
    "todate" timestamp without time zone,
    "accountcode" character varying(50),
    "hostelfacility" integer,
    "typeoffood" text,
    "noofcanteens" integer,
    "canteencontractorname" character varying(100),
    "canteencontractoraddress" character varying(100),
    "degreeno" character varying(500),
    "classtype" character varying(10)
);

CREATE TABLE "xltempadmin2_Doc_mst" (
    "srno" integer NOT NULL,
    "code" character varying(10),
    "firstname" character varying(50),
    "middlename" character varying(50),
    "lastname" character varying(50),
    "gradecode" character varying(10),
    "qualification" character varying(50),
    "clinichospitalname" character varying(200),
    "streetname" character varying(100),
    "area" character varying(100),
    "landmark" character varying(100),
    "city" character varying(100),
    "state" character varying(100),
    "pin" character varying(14),
    "housebuildingname" character varying(100),
    "streetname1" character varying(100),
    "area1" character varying(100),
    "landmark1" character varying(100),
    "city1" character varying(100),
    "state1" character varying(100),
    "pin1" character varying(14),
    "phone" character varying(14),
    "landno" character varying(14),
    "referenceno" character varying(14),
    "categorycode" character varying(14),
    "subareacode" character varying(50),
    "age" character varying(14),
    "dob" character varying(50),
    "dow" character varying(50),
    "email" character varying(50),
    "fscode" character varying(50),
    "divcode" character varying(50),
    "lat" double precision,
    "long" double precision,
    "class" character varying(50),
    "spousename" character varying(100),
    "spousedob" character varying(50),
    "mcino" character varying(50),
    "speciality" character varying(50),
    "noofpatients" character varying(50),
    "currentBusiness" character varying(50),
    "Businesspotential" character varying(50),
    "doctorpotential" character varying(50),
    "doctorpurchasing" character varying(50),
    "doctorprescribing" character varying(50),
    "child1name" character varying(50),
    "child1dob" character varying(50),
    "child2name" character varying(50),
    "child2dob" character varying(50),
    "child3name" character varying(50),
    "child3dob" character varying(50),
    "panno" character varying(20),
    "Hstreetname" character varying(50),
    "Hareaname" character varying(50),
    "Hlandmark" character varying(50),
    "Hcity" character varying(50),
    "Hstate" character varying(50),
    "Hpincode" character varying(10)
);

CREATE TABLE "xltempadmin2_DrCoreProd_Mapping" (
    "srno" integer NOT NULL,
    "doctorcode" character varying(20),
    "p1" character varying(50),
    "p2" character varying(50),
    "p3" character varying(50),
    "p4" character varying(50),
    "p5" character varying(50),
    "p6" character varying(50),
    "p7" character varying(50),
    "p8" character varying(50),
    "p9" character varying(50)
);

CREATE TABLE "xltempadmin2_Others_mst" (
    "srno" integer NOT NULL,
    "code" character varying(20),
    "name" character varying(100),
    "gradecode" character varying(20),
    "qualification" character varying(200),
    "add1" character varying(200),
    "add2" character varying(200),
    "add3" character varying(200),
    "add4" character varying(200),
    "pin" character varying(100),
    "phone" character varying(100),
    "referenceno" character varying(100),
    "categorycode" character varying(100),
    "subareacode" character varying(100),
    "emailid" character varying(100),
    "dob" timestamp without time zone,
    "dow" timestamp without time zone,
    "lat" double precision,
    "long" double precision
);

CREATE TABLE "xltempadmin2_employee_mst" (
    "srno" integer NOT NULL,
    "employeecode" character varying(10),
    "employeename" character varying(100),
    "designation" character varying(100),
    "qualification" character varying(100),
    "add1" character varying(100),
    "add2" character varying(100),
    "add3" character varying(100),
    "add4" character varying(100),
    "pin" character varying(20),
    "phone" character varying(20),
    "fax" character varying(20),
    "dob" timestamp without time zone,
    "doj" timestamp without time zone,
    "dow" timestamp without time zone,
    "description" character varying(100),
    "accno" character varying(50),
    "bankcode" character varying(10),
    "Location" character varying(20),
    "Grade" character varying(10),
    "Department" character varying(20),
    "Sex" character varying(4),
    "Title" character varying(10),
    "Role" character varying(10),
    "OfficePhoneno" character varying(20),
    "Extensionno" character varying(20),
    "DOC" timestamp without time zone,
    "DOR" timestamp without time zone,
    "OffEmailID" character varying(50),
    "PersonalEmailID" character varying(50),
    "parentcode" character varying(20),
    "rtgs" character varying(12),
    "pan" character varying(50)
);

CREATE TABLE "xltempadmin2_fs_mst" (
    "srno" integer NOT NULL,
    "empcode" character varying(15),
    "fscode" character varying(15),
    "fstype" integer,
    "areacode" character varying(15),
    "parentcode" character varying(15),
    "divcode" character varying(10)
);

CREATE TABLE "xltempadmin2_grade_mst" (
    "srno" integer NOT NULL,
    "gradecode" character varying(20),
    "gradename" character varying(50),
    "noofvisit" integer,
    "shortname" character varying(50),
    "type" integer,
    "subarea" character varying(50)
);

CREATE TABLE "xltempadmin2_hospital_mst" (
    "srno" integer NOT NULL,
    "hospitalcode" character varying(200),
    "hospitalname" character varying(500),
    "type" character varying(500),
    "grade" character varying(10),
    "regioncode" character varying(20),
    "areacode" character varying(20),
    "subareacode" character varying(20),
    "category" character varying(20),
    "streetname" character varying(500),
    "area" character varying(500),
    "landmark" character varying(500),
    "city" character varying(500),
    "state" character varying(500),
    "pin" character varying(20),
    "landno" character varying(20),
    "inhouse pharmacy" character varying(50),
    "financial turnover" character varying(100),
    "potential" character varying(100),
    "no of beds" character varying(100),
    "no of emergency beds" character varying(100),
    "no of critical icu beds" character varying(100),
    "no of surgical theaters" character varying(100),
    "hospital" character varying(100),
    "total no of doctors working" character varying(100),
    "purchase manager name" text,
    "purchase manager contact" character varying(100),
    "stock incharge name" character varying(100),
    "stock incharge contact" character varying(100),
    "financial officer name" character varying(100),
    "financial officer contact" character varying(100),
    "no of therapeutic group" character varying(100),
    "teaching institution" character varying(100),
    "therapeutic group code" character varying(200),
    "pgcode" character varying(200),
    "purchase manager mail id" character varying(200),
    "purchase team size" character varying(10),
    "stockiest name" character varying(200),
    "fs mapping" character varying(200)
);

CREATE TABLE "xltempadmin2_stockiest_mst" (
    "srno" integer,
    "code" character varying(50),
    "NAME" character varying(300),
    "add1" character varying(500),
    "add2" character varying(500),
    "add3" character varying(500),
    "add4" character varying(500),
    "pin" character varying(50),
    "phone" character varying(50),
    "email" character varying(500),
    "fax" character varying(50),
    "subareacode" character varying(100),
    "dob" timestamp without time zone,
    "dow" timestamp without time zone,
    "lat" double precision,
    "long" double precision,
    "shname" character varying(500),
    "grade" character varying(100),
    "category" character varying(200),
    "contactperson" character varying(500),
    "contactpersonmobileno" character varying(50),
    "TLDLNo1" character varying(500),
    "TLDLNo2" character varying(500),
    "DLValidDate1" timestamp without time zone,
    "FoodDLNo1" character varying(500),
    "PANNo1" character varying(200),
    "TLDLNo11" character varying(500),
    "TLDLNo12" character varying(500),
    "DLValidDate2" timestamp without time zone,
    "FoodDLNo2" character varying(500),
    "PANNo2" character varying(500),
    "n_sascollection" character varying(100)
);

CREATE TABLE "xltempadmin2_subarea_mst" (
    "srno" integer NOT NULL,
    "subareacode" character varying(20),
    "subareaname" character varying(100),
    "shortname" character varying(10),
    "areacode" character varying(15),
    "hqflag" integer,
    "lat" double precision,
    "long" double precision,
    "clasifcncode" character varying(15)
);

CREATE TABLE "xltempadmin3_Categ_mst" (
    "srno" integer NOT NULL,
    "catcode" character varying(20),
    "catname" character varying(50),
    "shortname" character varying(50),
    "type" integer
);

CREATE TABLE "xltempadmin3_Chemist_mst" (
    "srno" integer NOT NULL,
    "code" character varying(20),
    "name" character varying(50),
    "add1" character varying(100),
    "add2" character varying(100),
    "city" character varying(100),
    "state" character varying(50),
    "pin" character varying(50),
    "phone" character varying(50),
    "referenceno" character varying(50),
    "email" character varying(100),
    "fscode" character varying(50),
    "subareacode" character varying(50),
    "lat" double precision,
    "long" double precision,
    "tin" character varying(50),
    "lic" character varying(50),
    "contactname" character varying(50),
    "sftshop" numeric,
    "displayshelf" numeric,
    "descdisplayshelf" character varying(100),
    "fboardheight" numeric,
    "fboardlength" numeric,
    "backlit" integer,
    "computrised" integer,
    "licfood" character varying(50),
    "contactmob" character varying(20),
    "contoutletnumber" character varying(50),
    "landmark" character varying(100),
    "grade" character varying(10),
    "dob" timestamp without time zone,
    "dow" timestamp without time zone,
    "outlettype" character varying(15),
    "shortname" character varying(10),
    "fridge" integer,
    "windowsize" character varying(100),
    "storemanager" character varying(50),
    "storeclassification" character varying(50),
    "storetype" character varying(50),
    "distributorcode" character varying(50),
    "agreementdate" timestamp without time zone,
    "totaldiscountperc" numeric,
    "fromdate" timestamp without time zone,
    "todate" timestamp without time zone,
    "accountcode" character varying(50),
    "hostelfacility" integer,
    "typeoffood" text,
    "noofcanteens" integer,
    "canteencontractorname" character varying(100),
    "canteencontractoraddress" character varying(100),
    "degreeno" character varying(500),
    "classtype" character varying(10)
);

CREATE TABLE "xltempadmin3_Doc_mst" (
    "srno" integer NOT NULL,
    "code" character varying(10),
    "firstname" character varying(50),
    "middlename" character varying(50),
    "lastname" character varying(50),
    "gradecode" character varying(10),
    "qualification" character varying(50),
    "clinichospitalname" character varying(200),
    "streetname" character varying(100),
    "area" character varying(100),
    "landmark" character varying(100),
    "city" character varying(100),
    "state" character varying(100),
    "pin" character varying(14),
    "housebuildingname" character varying(100),
    "streetname1" character varying(100),
    "area1" character varying(100),
    "landmark1" character varying(100),
    "city1" character varying(100),
    "state1" character varying(100),
    "pin1" character varying(14),
    "phone" character varying(14),
    "landno" character varying(14),
    "referenceno" character varying(14),
    "categorycode" character varying(14),
    "subareacode" character varying(50),
    "age" character varying(14),
    "dob" character varying(50),
    "dow" character varying(50),
    "email" character varying(50),
    "fscode" character varying(50),
    "divcode" character varying(50),
    "lat" double precision,
    "long" double precision,
    "class" character varying(50),
    "spousename" character varying(100),
    "spousedob" character varying(50),
    "mcino" character varying(50),
    "speciality" character varying(50),
    "noofpatients" character varying(50),
    "currentBusiness" character varying(50),
    "Businesspotential" character varying(50),
    "doctorpotential" character varying(50),
    "doctorpurchasing" character varying(50),
    "doctorprescribing" character varying(50),
    "child1name" character varying(50),
    "child1dob" character varying(50),
    "child2name" character varying(50),
    "child2dob" character varying(50),
    "child3name" character varying(50),
    "child3dob" character varying(50),
    "panno" character varying(20),
    "Hstreetname" character varying(50),
    "Hareaname" character varying(50),
    "Hlandmark" character varying(50),
    "Hcity" character varying(50),
    "Hstate" character varying(50),
    "Hpincode" character varying(10)
);

CREATE TABLE "xltempadmin4_Chemist_mst" (
    "srno" integer NOT NULL,
    "code" character varying(20),
    "name" character varying(50),
    "add1" character varying(100),
    "add2" character varying(100),
    "city" character varying(100),
    "state" character varying(50),
    "pin" character varying(50),
    "phone" character varying(50),
    "referenceno" character varying(50),
    "email" character varying(100),
    "fscode" character varying(50),
    "subareacode" character varying(50),
    "lat" double precision,
    "long" double precision,
    "tin" character varying(50),
    "lic" character varying(50),
    "contactname" character varying(50),
    "sftshop" numeric,
    "displayshelf" numeric,
    "descdisplayshelf" character varying(100),
    "fboardheight" numeric,
    "fboardlength" numeric,
    "backlit" integer,
    "computrised" integer,
    "licfood" character varying(50),
    "contactmob" character varying(20),
    "contoutletnumber" character varying(50),
    "landmark" character varying(100),
    "grade" character varying(10),
    "dob" timestamp without time zone,
    "dow" timestamp without time zone,
    "outlettype" character varying(15),
    "shortname" character varying(10),
    "fridge" integer,
    "windowsize" character varying(100),
    "storemanager" character varying(50),
    "storeclassification" character varying(50),
    "storetype" character varying(50),
    "distributorcode" character varying(50),
    "agreementdate" timestamp without time zone,
    "totaldiscountperc" numeric,
    "fromdate" timestamp without time zone,
    "todate" timestamp without time zone,
    "accountcode" character varying(50),
    "hostelfacility" integer,
    "typeoffood" text,
    "noofcanteens" integer,
    "canteencontractorname" character varying(100),
    "canteencontractoraddress" character varying(100),
    "degreeno" character varying(500),
    "classtype" character varying(10)
);

CREATE TABLE "xltempadmin4_Doc_mst" (
    "srno" integer NOT NULL,
    "code" character varying(10),
    "firstname" character varying(50),
    "middlename" character varying(50),
    "lastname" character varying(50),
    "gradecode" character varying(10),
    "qualification" character varying(50),
    "clinichospitalname" character varying(200),
    "streetname" character varying(100),
    "area" character varying(100),
    "landmark" character varying(100),
    "city" character varying(100),
    "state" character varying(100),
    "pin" character varying(14),
    "housebuildingname" character varying(100),
    "streetname1" character varying(100),
    "area1" character varying(100),
    "landmark1" character varying(100),
    "city1" character varying(100),
    "state1" character varying(100),
    "pin1" character varying(14),
    "phone" character varying(14),
    "landno" character varying(14),
    "referenceno" character varying(14),
    "categorycode" character varying(14),
    "subareacode" character varying(50),
    "age" character varying(14),
    "dob" character varying(50),
    "dow" character varying(50),
    "email" character varying(50),
    "fscode" character varying(50),
    "divcode" character varying(50),
    "lat" double precision,
    "long" double precision,
    "class" character varying(50),
    "spousename" character varying(100),
    "spousedob" character varying(50),
    "mcino" character varying(50),
    "speciality" character varying(50),
    "noofpatients" character varying(50),
    "currentBusiness" character varying(50),
    "Businesspotential" character varying(50),
    "doctorpotential" character varying(50),
    "doctorpurchasing" character varying(50),
    "doctorprescribing" character varying(50),
    "child1name" character varying(50),
    "child1dob" character varying(50),
    "child2name" character varying(50),
    "child2dob" character varying(50),
    "child3name" character varying(50),
    "child3dob" character varying(50),
    "panno" character varying(20),
    "Hstreetname" character varying(50),
    "Hareaname" character varying(50),
    "Hlandmark" character varying(50),
    "Hcity" character varying(50),
    "Hstate" character varying(50),
    "Hpincode" character varying(10)
);

CREATE TABLE "xltempadmin4_DrCoreProd_Mapping" (
    "srno" integer NOT NULL,
    "doctorcode" character varying(20),
    "p1" character varying(50),
    "p2" character varying(50),
    "p3" character varying(50),
    "p4" character varying(50),
    "p5" character varying(50),
    "p6" character varying(50),
    "p7" character varying(50),
    "p8" character varying(50),
    "p9" character varying(50)
);

CREATE TABLE "xltempadmin4_Item_mst" (
    "srno" integer NOT NULL,
    "itemcode" character varying(20),
    "itemname" character varying(100),
    "shortname" character varying(7),
    "type" integer,
    "company" character varying(50),
    "description" character varying(100),
    "pack" character varying(20),
    "ptr" numeric,
    "mrp" numeric,
    "stdrate" numeric,
    "pts" numeric,
    "brand" character varying(20),
    "catcode" character varying(20),
    "divcode" character varying(20),
    "groupcode" character varying(10),
    "nrvrate" numeric,
    "manufacturercode" character varying(50),
    "qtyperstrip" character varying(10),
    "referencecode" character varying(500)
);

CREATE TABLE "xltempadmin4_employee_mst" (
    "srno" integer NOT NULL,
    "employeecode" character varying(10),
    "employeename" character varying(100),
    "designation" character varying(100),
    "qualification" character varying(100),
    "add1" character varying(100),
    "add2" character varying(100),
    "add3" character varying(100),
    "add4" character varying(100),
    "pin" character varying(20),
    "phone" character varying(20),
    "fax" character varying(20),
    "dob" timestamp without time zone,
    "doj" timestamp without time zone,
    "dow" timestamp without time zone,
    "description" character varying(100),
    "accno" character varying(50),
    "bankcode" character varying(10),
    "Location" character varying(20),
    "Grade" character varying(10),
    "Department" character varying(20),
    "Sex" character varying(4),
    "Title" character varying(10),
    "Role" character varying(10),
    "OfficePhoneno" character varying(20),
    "Extensionno" character varying(20),
    "DOC" timestamp without time zone,
    "DOR" timestamp without time zone,
    "OffEmailID" character varying(50),
    "PersonalEmailID" character varying(50),
    "parentcode" character varying(20),
    "rtgs" character varying(12),
    "pan" character varying(50),
    "job_description" character varying(1000),
    "C_ESI_NO" character varying(15),
    "AdharNo" character varying(50),
    "EmergencyMobileNo" character varying(20),
    "ContactName" character varying(200)
);

CREATE TABLE "xltempadmin4_fs_mst" (
    "srno" integer NOT NULL,
    "empcode" character varying(15),
    "fscode" character varying(15),
    "fstype" integer,
    "areacode" character varying(15),
    "parentcode" character varying(15),
    "divcode" character varying(10)
);

CREATE TABLE "xltempadmin4_hospital_mst" (
    "srno" integer NOT NULL,
    "hospitalcode" character varying(200),
    "hospitalname" character varying(500),
    "type" character varying(500),
    "grade" character varying(10),
    "regioncode" character varying(20),
    "areacode" character varying(20),
    "subareacode" character varying(20),
    "category" character varying(20),
    "streetname" character varying(500),
    "area" character varying(500),
    "landmark" character varying(500),
    "city" character varying(500),
    "state" character varying(500),
    "pin" character varying(20),
    "landno" character varying(20),
    "inhouse pharmacy" character varying(50),
    "financial turnover" character varying(100),
    "potential" character varying(100),
    "no of beds" character varying(100),
    "no of emergency beds" character varying(100),
    "no of critical icu beds" character varying(100),
    "no of surgical theaters" character varying(100),
    "hospital" character varying(100),
    "total no of doctors working" character varying(100),
    "purchase manager name" text,
    "purchase manager contact" character varying(100),
    "stock incharge name" character varying(100),
    "stock incharge contact" character varying(100),
    "financial officer name" character varying(100),
    "financial officer contact" character varying(100),
    "no of therapeutic group" character varying(100),
    "teaching institution" character varying(100),
    "therapeutic group code" character varying(200),
    "pgcode" character varying(200),
    "purchase manager mail id" character varying(200),
    "purchase team size" character varying(10),
    "stockiest name" character varying(200),
    "fs mapping" character varying(200)
);

CREATE TABLE "xltempadmin4_regionholiday_mst" (
    "srno" integer,
    "code" character varying(50),
    "holiday" integer,
    "rgdate" timestamp without time zone
);

CREATE TABLE "xltempadmin4_sdn" (
    "srno" numeric NOT NULL,
    "dep_code" character varying(10),
    "d_date" timestamp without time zone,
    "prefix" character varying(50),
    "n_srno" numeric,
    "emp_code" character varying(10),
    "itemcode" character varying(10),
    "qty" numeric
);

CREATE TABLE "xltempadmin4_stockiest_mst" (
    "srno" integer,
    "code" character varying(50),
    "NAME" character varying(300),
    "add1" character varying(500),
    "add2" character varying(500),
    "add3" character varying(500),
    "add4" character varying(500),
    "pin" character varying(50),
    "phone" character varying(50),
    "email" character varying(500),
    "fax" character varying(50),
    "subareacode" character varying(100),
    "dob" timestamp without time zone,
    "dow" timestamp without time zone,
    "lat" double precision,
    "long" double precision,
    "shname" character varying(500),
    "grade" character varying(100),
    "category" character varying(200),
    "contactperson" character varying(500),
    "contactpersonmobileno" character varying(50),
    "TLDLNo1" character varying(500),
    "TLDLNo2" character varying(500),
    "DLValidDate1" timestamp without time zone,
    "FoodDLNo1" character varying(500),
    "PANNo1" character varying(200),
    "TLDLNo11" character varying(500),
    "TLDLNo12" character varying(500),
    "DLValidDate2" timestamp without time zone,
    "FoodDLNo2" character varying(500),
    "PANNo2" character varying(500),
    "n_sascollection" character varying(100)
);

CREATE TABLE "xltempadmin_Categ_mst" (
    "srno" integer NOT NULL,
    "catcode" character varying(20),
    "catname" character varying(50),
    "shortname" character varying(50),
    "type" integer
);

CREATE TABLE "xltempadmin_Chemist_mst" (
    "srno" integer NOT NULL,
    "code" character varying(20),
    "name" character varying(50),
    "add1" character varying(100),
    "add2" character varying(100),
    "city" character varying(100),
    "state" character varying(50),
    "pin" character varying(50),
    "phone" character varying(50),
    "referenceno" character varying(50),
    "email" character varying(100),
    "fscode" character varying(50),
    "subareacode" character varying(50),
    "lat" double precision,
    "long" double precision,
    "tin" character varying(50),
    "lic" character varying(50),
    "contactname" character varying(50),
    "sftshop" numeric,
    "displayshelf" numeric,
    "descdisplayshelf" character varying(100),
    "fboardheight" numeric,
    "fboardlength" numeric,
    "backlit" integer,
    "computrised" integer,
    "licfood" character varying(50),
    "contactmob" character varying(20),
    "contoutletnumber" character varying(50),
    "landmark" character varying(100),
    "grade" character varying(10),
    "dob" timestamp without time zone,
    "dow" timestamp without time zone,
    "outlettype" character varying(15),
    "shortname" character varying(10),
    "fridge" integer,
    "windowsize" character varying(100),
    "storemanager" character varying(50),
    "storeclassification" character varying(50),
    "storetype" character varying(50),
    "distributorcode" character varying(50),
    "agreementdate" timestamp without time zone,
    "totaldiscountperc" numeric,
    "fromdate" timestamp without time zone,
    "todate" timestamp without time zone,
    "accountcode" character varying(50),
    "hostelfacility" integer,
    "typeoffood" text,
    "noofcanteens" integer,
    "canteencontractorname" character varying(100),
    "canteencontractoraddress" character varying(100),
    "degreeno" character varying(500),
    "classtype" character varying(10)
);

CREATE TABLE "xltempadmin_Doc_mst" (
    "srno" integer NOT NULL,
    "code" character varying(10),
    "firstname" character varying(50),
    "middlename" character varying(50),
    "lastname" character varying(50),
    "gradecode" character varying(10),
    "qualification" character varying(50),
    "clinichospitalname" character varying(200),
    "streetname" character varying(100),
    "area" character varying(100),
    "landmark" character varying(100),
    "city" character varying(100),
    "state" character varying(100),
    "pin" character varying(14),
    "housebuildingname" character varying(100),
    "streetname1" character varying(100),
    "area1" character varying(100),
    "landmark1" character varying(100),
    "city1" character varying(100),
    "state1" character varying(100),
    "pin1" character varying(14),
    "phone" character varying(14),
    "landno" character varying(14),
    "referenceno" character varying(14),
    "categorycode" character varying(14),
    "subareacode" character varying(50),
    "age" character varying(14),
    "dob" character varying(50),
    "dow" character varying(50),
    "email" character varying(50),
    "fscode" character varying(50),
    "divcode" character varying(50),
    "lat" double precision,
    "long" double precision,
    "class" character varying(50),
    "spousename" character varying(100),
    "spousedob" character varying(50),
    "mcino" character varying(50),
    "speciality" character varying(50),
    "noofpatients" character varying(50),
    "currentBusiness" character varying(50),
    "Businesspotential" character varying(50),
    "doctorpotential" character varying(50),
    "doctorpurchasing" character varying(50),
    "doctorprescribing" character varying(50),
    "child1name" character varying(50),
    "child1dob" character varying(50),
    "child2name" character varying(50),
    "child2dob" character varying(50),
    "child3name" character varying(50),
    "child3dob" character varying(50),
    "panno" character varying(20),
    "Hstreetname" character varying(50),
    "Hareaname" character varying(50),
    "Hlandmark" character varying(50),
    "Hcity" character varying(50),
    "Hstate" character varying(50),
    "Hpincode" character varying(10)
);

CREATE TABLE "xltempadmin_DrCoreProd_Mapping" (
    "srno" integer NOT NULL,
    "doctorcode" character varying(20),
    "p1" character varying(50),
    "p2" character varying(50),
    "p3" character varying(50),
    "p4" character varying(50),
    "p5" character varying(50),
    "p6" character varying(50),
    "p7" character varying(50),
    "p8" character varying(50),
    "p9" character varying(50)
);

CREATE TABLE "xltempadmin_ItemCateg_mst" (
    "srno" integer NOT NULL,
    "catcode" character varying(20),
    "catname" character varying(50),
    "shortname" character varying(50)
);

CREATE TABLE "xltempadmin_Item_mst" (
    "srno" integer NOT NULL,
    "itemcode" character varying(20),
    "itemname" character varying(100),
    "shortname" character varying(7),
    "type" integer,
    "company" character varying(50),
    "description" character varying(100),
    "pack" character varying(20),
    "ptr" numeric,
    "mrp" numeric,
    "stdrate" numeric,
    "pts" numeric,
    "brand" character varying(20),
    "catcode" character varying(20),
    "divcode" character varying(20),
    "groupcode" character varying(10),
    "nrvrate" numeric,
    "manufacturercode" character varying(50),
    "qtyperstrip" character varying(10),
    "referencecode" character varying(500)
);

CREATE TABLE "xltempadmin_anual_target_mst" (
    "srno" integer NOT NULL,
    "fscode" character varying(10),
    "itemcode" character varying(10),
    "nyear" integer,
    "nstmonth" integer,
    "qty1" numeric,
    "qty2" numeric,
    "qty3" numeric,
    "qty4" numeric,
    "qty5" numeric,
    "qty6" numeric,
    "qty7" numeric,
    "qty8" numeric,
    "qty9" numeric,
    "qty10" numeric,
    "qty11" numeric,
    "qty12" numeric
);

CREATE TABLE "xltempadmin_area_mst" (
    "srno" integer NOT NULL,
    "areacode" character varying(20),
    "areaname" character varying(100),
    "shortname" character varying(10),
    "regioncode" character varying(15),
    "saleshqcode" character varying(15),
    "lat" double precision,
    "long" double precision
);

CREATE TABLE "xltempadmin_employee_mst" (
    "srno" integer NOT NULL,
    "employeecode" character varying(10),
    "employeename" character varying(100),
    "designation" character varying(100),
    "qualification" character varying(100),
    "add1" character varying(100),
    "add2" character varying(100),
    "add3" character varying(100),
    "add4" character varying(100),
    "pin" character varying(20),
    "phone" character varying(20),
    "fax" character varying(20),
    "dob" timestamp without time zone,
    "doj" timestamp without time zone,
    "dow" timestamp without time zone,
    "description" character varying(100),
    "accno" character varying(50),
    "bankcode" character varying(10),
    "Location" character varying(20),
    "Grade" character varying(10),
    "Department" character varying(20),
    "Sex" character varying(4),
    "Title" character varying(10),
    "Role" character varying(10),
    "OfficePhoneno" character varying(20),
    "Extensionno" character varying(20),
    "DOC" timestamp without time zone,
    "DOR" timestamp without time zone,
    "OffEmailID" character varying(50),
    "PersonalEmailID" character varying(50),
    "parentcode" character varying(20),
    "rtgs" character varying(12),
    "pan" character varying(50),
    "job_description" character varying(1000),
    "C_ESI_NO" character varying(15),
    "AdharNo" character varying(50),
    "EmergencyMobileNo" character varying(20),
    "ContactName" character varying(200)
);

CREATE TABLE "xltempadmin_fs_mst" (
    "srno" integer NOT NULL,
    "empcode" character varying(15),
    "fscode" character varying(15),
    "fstype" integer,
    "areacode" character varying(15),
    "parentcode" character varying(15),
    "divcode" character varying(10)
);

CREATE TABLE "xltempadmin_grade_mst" (
    "srno" integer NOT NULL,
    "gradecode" character varying(20),
    "gradename" character varying(50),
    "noofvisit" integer,
    "shortname" character varying(50),
    "type" integer,
    "subarea" character varying(50)
);

CREATE TABLE "xltempadmin_hospital_mst" (
    "srno" integer NOT NULL,
    "hospitalcode" character varying(200),
    "hospitalname" character varying(500),
    "type" character varying(500),
    "grade" character varying(10),
    "regioncode" character varying(20),
    "areacode" character varying(20),
    "subareacode" character varying(20),
    "category" character varying(20),
    "streetname" character varying(500),
    "area" character varying(500),
    "landmark" character varying(500),
    "city" character varying(500),
    "state" character varying(500),
    "pin" character varying(20),
    "landno" character varying(20),
    "inhouse pharmacy" character varying(50),
    "financial turnover" character varying(100),
    "potential" character varying(100),
    "no of beds" character varying(100),
    "no of emergency beds" character varying(100),
    "no of critical icu beds" character varying(100),
    "no of surgical theaters" character varying(100),
    "hospital" character varying(100),
    "total no of doctors working" character varying(100),
    "purchase manager name" text,
    "purchase manager contact" character varying(100),
    "stock incharge name" character varying(100),
    "stock incharge contact" character varying(100),
    "financial officer name" character varying(100),
    "financial officer contact" character varying(100),
    "no of therapeutic group" character varying(100),
    "teaching institution" character varying(100),
    "therapeutic group code" character varying(200),
    "pgcode" character varying(200),
    "purchase manager mail id" character varying(200),
    "purchase team size" character varying(10),
    "stockiest name" character varying(200),
    "fs mapping" character varying(200)
);

CREATE TABLE "xltempadmin_primary_sales" (
    "srno" integer NOT NULL,
    "dep_code" character varying(20),
    "d_date" timestamp without time zone,
    "prefix" character varying(50),
    "invoice_srno" numeric,
    "stockist_code" character varying(50),
    "itemcode" character varying(10),
    "pack" character(6),
    "qty" numeric,
    "sch_qty" numeric,
    "rate" numeric,
    "div_code" character varying(10)
);

CREATE TABLE "xltempadmin_region_mst" (
    "srno" integer NOT NULL,
    "regioncode" character varying(20),
    "regionname" character varying(100),
    "shortname" character varying(10),
    "zonecode" character varying(15),
    "lat" double precision,
    "long" double precision
);

CREATE TABLE "xltempadmin_regionholiday_mst" (
    "srno" integer,
    "code" character varying(50),
    "holiday" integer,
    "rgdate" timestamp without time zone
);

CREATE TABLE "xltempadmin_sdn" (
    "srno" numeric NOT NULL,
    "dep_code" character varying(10),
    "d_date" timestamp without time zone,
    "prefix" character varying(50),
    "n_srno" numeric,
    "emp_code" character varying(10),
    "itemcode" character varying(10),
    "qty" numeric
);

CREATE TABLE "xltempadmin_stockiest_mst" (
    "srno" integer,
    "code" character varying(50),
    "NAME" character varying(300),
    "add1" character varying(500),
    "add2" character varying(500),
    "add3" character varying(500),
    "add4" character varying(500),
    "pin" character varying(50),
    "phone" character varying(50),
    "email" character varying(500),
    "fax" character varying(50),
    "subareacode" character varying(100),
    "dob" timestamp without time zone,
    "dow" timestamp without time zone,
    "lat" double precision,
    "long" double precision,
    "shname" character varying(500),
    "grade" character varying(100),
    "category" character varying(200),
    "contactperson" character varying(500),
    "contactpersonmobileno" character varying(50),
    "TLDLNo1" character varying(500),
    "TLDLNo2" character varying(500),
    "DLValidDate1" timestamp without time zone,
    "FoodDLNo1" character varying(500),
    "PANNo1" character varying(200),
    "TLDLNo11" character varying(500),
    "TLDLNo12" character varying(500),
    "DLValidDate2" timestamp without time zone,
    "FoodDLNo2" character varying(500),
    "PANNo2" character varying(500),
    "n_sascollection" character varying(100)
);

CREATE TABLE "xltempadmin_subarea_mst" (
    "srno" integer NOT NULL,
    "subareacode" character varying(20),
    "subareaname" character varying(100),
    "shortname" character varying(10),
    "areacode" character varying(15),
    "hqflag" integer,
    "lat" double precision,
    "long" double precision,
    "clasifcncode" character varying(15)
);

CREATE TABLE "xltempadmin_target_mst" (
    "srno" integer,
    "fscode" character varying(10),
    "itemcode" character varying(10),
    "qty" integer,
    "nmonth" integer,
    "nyear" integer,
    "HQFSFlag" integer,
    "BrandItemFlag" integer,
    "PriSecFlag" integer
);

CREATE TABLE "xltempadmin_zone_mst" (
    "srno" integer NOT NULL,
    "zonecode" character varying(20),
    "zonename" character varying(100),
    "shortname" character varying(10)
);

CREATE TABLE "xltempdiaspa_Doc_mst" (
    "srno" integer NOT NULL,
    "code" character varying(10),
    "firstname" character varying(50),
    "middlename" character varying(50),
    "lastname" character varying(50),
    "gradecode" character varying(10),
    "qualification" character varying(50),
    "clinichospitalname" character varying(100),
    "streetname" character varying(100),
    "area" character varying(100),
    "landmark" character varying(100),
    "city" character varying(100),
    "state" character varying(100),
    "pin" character varying(14),
    "housebuildingname" character varying(100),
    "streetname1" character varying(100),
    "area1" character varying(100),
    "landmark1" character varying(100),
    "city1" character varying(100),
    "state1" character varying(100),
    "pin1" character varying(14),
    "phone" character varying(14),
    "landno" character varying(14),
    "referenceno" character varying(14),
    "categorycode" character varying(14),
    "subareacode" character varying(14),
    "age" character varying(14),
    "dob" character varying(20),
    "dow" character varying(20),
    "email" character varying(50),
    "fscode" character varying(50),
    "divcode" character varying(50),
    "lat" double precision,
    "long" double precision,
    "class" character varying(50),
    "spousename" character varying(100),
    "spousedob" character varying(50),
    "mcino" character varying(50),
    "speciality" character varying(50),
    "noofpatients" character varying(50),
    "currentBusiness" character varying(50),
    "Businesspotential" character varying(50),
    "doctorpotential" character varying(50),
    "doctorpurchasing" character varying(50),
    "doctorprescribing" character varying(50),
    "child1name" character varying(50),
    "child1dob" character varying(50),
    "child2name" character varying(50),
    "child2dob" character varying(50),
    "child3name" character varying(50),
    "child3dob" character varying(50)
);


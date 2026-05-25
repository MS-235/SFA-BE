;
/****** Object:  Table "ABSENTEES"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "ABSENTEES"(
	"DIVISION" varchar(50) NULL,
	"REGION" varchar(50) NULL,
	"DESIGNATION" varchar(50) NULL,
	"HQ" varchar(50) NULL,
	"NOOFVACANTS" varchar(50) NULL
) 
;
/****** Object:  Table "arv_stp"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "arv_stp"(
	"Region Name" varchar(255) NULL,
	"STPNo" double precision NULL,
	"FS CODE" varchar(255) NULL,
	"division" varchar(255) NULL,
	"FS NAME" varchar(255) NULL,
	"HQ CODE" varchar(255) NULL,
	"HQ NAME" varchar(255) NULL,
	"Based At Code" varchar(255) NULL,
	"Based At Name" varchar(255) NULL,
	"STP Date From" timestamp NULL,
	"STP Date To" timestamp NULL,
	"HQDA" double precision NULL,
	"EXDA" double precision NULL,
	"OSDA" double precision NULL,
	"TAType" double precision NULL,
	"RateKM" double precision NULL,
	"distnace" double precision NULL,
	"TA" double precision NULL,
	"From Area Code" varchar(255) NULL,
	"From Area Name" varchar(255) NULL,
	"ToAreaCode" varchar(255) NULL,
	"ToAreaname" varchar(255) NULL,
	"A grade doct count" double precision NULL,
	"B grade doctor count" double precision NULL,
	"workingdays" double precision NULL,
	"chemist count" double precision NULL,
	"stockiest count" double precision NULL,
	"curent business" double precision NULL,
	"expected business" double precision NULL,
	"AreaType" varchar(255) NULL
) 
;
/****** Object:  Table "att"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "att"(
	"EMPCODE" varchar(50) NULL,
	"FSCODE" varchar(50) NULL,
	"FSNAME" varchar(50) NULL,
	"DOJ" varchar(50) NULL,
	"REPORTINGMANAGER" varchar(50) NULL,
	"FIELDDAYS" varchar(50) NULL,
	"HOLIDAYS" varchar(50) NULL,
	"LEAVEDAYS" varchar(50) NULL,
	"NR" varchar(50) NULL,
	"TOTALDAYS" varchar(50) NULL,
	"SUNDAYS" varchar(50) NULL,
	"REGION" varchar(50) NULL,
	"DIVISION" varchar(50) NULL,
	"PAIDDAYS" varchar(50) NULL
) 
;
/****** Object:  Table "Auto_report_parm_values"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Auto_report_parm_values"(
	"n_srno" numeric(9, 0) NOT NULL,
	"n_seq" numeric(9, 0) NOT NULL,
	"c_dispvalue" varchar(100) NULL,
	"n_value" numeric(9, 0) NULL,
 CONSTRAINT "PK_Auto_report_parm_values" PRIMARY KEY  
(
	"n_srno" ,
	"n_seq" 
) 
) 
;
/****** Object:  Table "Auto_report_Report_Master_Parameter"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Auto_report_Report_Master_Parameter"(
	"n_report_id" numeric(9, 0) NOT NULL,
	"n_param_id" numeric(9, 0) NOT NULL,
	"n_value" numeric(9, 0) NULL,
	"n_range_from" numeric(9, 0) NULL,
	"n_range_to" numeric(9, 0) NULL,
 CONSTRAINT "PK_Auto_report_Report_Master_Parameter" PRIMARY KEY  
(
	"n_report_id" ,
	"n_param_id" 
) 
) 
;
/****** Object:  Table "Auto_report_Selected_Report"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Auto_report_Selected_Report"(
	"n_srno" numeric(9, 0) NOT NULL,
	"n_report_id" numeric(9, 0) NULL,
	"c_description" varchar(100) NULL,
	"c_header" varchar(100) NULL,
	"c_footer" varchar(100) NULL,
	"c_created_by" varchar(50) NULL,
	"d_created_on" timestamp NULL,
	"d_sent_on" timestamp NULL,
	"d_next_date" timestamp NULL,
	"n_enable" integer NULL,
 CONSTRAINT "PK_Auto_report_Selected_Report" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "Auto_Report_Selected_Reprot_Parameter"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Auto_Report_Selected_Reprot_Parameter"(
	"n_srno" numeric(9, 0) NOT NULL,
	"n_param_id" numeric(9, 0) NOT NULL,
	"n_value" numeric(9, 0) NULL,
 CONSTRAINT "PK_Auto_Report_Selected_Reprot_Parameter" PRIMARY KEY  
(
	"n_srno" ,
	"n_param_id" 
) 
) 
;
/****** Object:  Table "Auto_Report_Send_Report_Logs"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Auto_Report_Send_Report_Logs"(
	"n_srno" SERIAL NOT NULL,
	"n_report_id" numeric(9, 0) NULL,
	"c_emp_id" varchar(10) NULL,
	"c_email_id" varchar(50) NULL,
	"d_send_on" timestamp NULL,
	"n_rate" numeric(18, 2) NULL,
	"c_start_time" varchar(50) NULL,
	"c_end_time" varchar(50) NULL
) 
;
/****** Object:  Table "Auto_Report_Senders_Details"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Auto_Report_Senders_Details"(
	"c_email_id" varchar(50) NOT NULL,
	"c_password" varchar(50) NULL,
	"c_smtp_server" varchar(50) NULL,
	"c_sender_name" varchar(50) NULL,
	"c_smtpusessl" varchar(10) NULL,
	"n_port" integer NULL,
	"c_email_Id_Android" varchar(200) NULL,
	"c_password_Android" varchar(200) NULL,
 CONSTRAINT "PK_Auto_Report_Senders_Details" PRIMARY KEY  
(
	"c_email_id" 
) 
) 
;
/****** Object:  Table "Auto_Reprot_Param_mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Auto_Reprot_Param_mst"(
	"n_srno" numeric(9, 0) NOT NULL,
	"c_decription" varchar(100) NULL,
 CONSTRAINT "PK_Auto_Reprot_Param_mst" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "Auto_Reprot_Report_master"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Auto_Reprot_Report_master"(
	"n_reportid" numeric(9, 0) NOT NULL,
	"c_reportname" varchar(100) NULL,
	"c_linkpage" varchar(100) NULL,
	"n_rate" numeric(18, 2) NULL,
	"n_enable" integer NULL,
	"c_header" varchar(255) NULL,
	"c_footer" varchar(255) NULL,
 CONSTRAINT "PK_Auto_Reprot_Report master" PRIMARY KEY  
(
	"n_reportid" 
) 
) 
;
/****** Object:  Table "backupdoc"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "backupdoc"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(200) NULL,
	"N_Type" integer NOT NULL,
	"C_Grade" varchar(10) NULL,
	"C_Qualification" varchar(50) NULL,
	"C_Add_1" varchar(50) NULL,
	"C_Add_2" varchar(50) NULL,
	"C_Add_3" varchar(50) NULL,
	"C_Add_4" varchar(50) NULL,
	"C_Pin" varchar(10) NULL,
	"C_Phone" varchar(20) NULL,
	"C_Fax" varchar(50) NULL,
	"C_Category" varchar(10) NULL,
	"C_Area_Code" varchar(10) NULL,
	"C_Subarea_Code" varchar(10) NULL,
	"D_DOB" timestamp NULL,
	"D_DOW" timestamp NULL,
	"n_Status" integer NULL,
	"D_Create_Date" timestamp NULL,
	"D_modify_Date" timestamp NULL,
	"C_Email_ID" varchar(50) NULL,
	"C_FsCode" varchar(10) NULL,
	"c_region_code" varchar(10) NULL,
	"n_convert" numeric(9, 0) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(20) NULL,
	"n_lami" double precision NULL,
	"n_lgmi" double precision NULL,
	"c_tin_no" varchar(50) NULL,
	"c_lic_no" varchar(50) NULL,
	"c_contact_name" varchar(50) NULL,
	"n_Sft_shop" numeric(18, 0) NULL,
	"n_No_of_display_Shelf" numeric(9, 0) NULL,
	"c_desc_display_shelf" varchar(100) NULL,
	"n_Front_Board_Height" numeric(9, 2) NULL,
	"n_Front_Board_length" numeric(9, 2) NULL,
	"n_Backlit" smallint NULL,
	"n_Computerised" smallint NULL,
	"c_lic_food" varchar(50) NULL,
	"c_sort" varchar(10) NULL,
	"c_contact_mob" varchar(50) NULL,
	"c_contact_outlet_num" varchar(50) NULL,
	"C_Landmark" varchar(100) NULL,
	"C_Short_Name" varchar(10) NULL,
	"C_Doc_Class" varchar(10) NULL,
	"C_Spousename" varchar(100) NULL,
	"D_SpouseDob" timestamp NULL,
	"C_FName" varchar(50) NULL,
	"C_LName" varchar(50) NULL,
	"n_mcino" varchar(20) NULL,
	"C_HOSPITAL_NAME" varchar(150) NULL,
	"C_STREET_NAME" varchar(150) NULL,
	"C_AREA_NAME" varchar(150) NULL,
	"C_LANDMARK1" varchar(150) NULL,
	"C_CITY" varchar(150) NULL,
	"C_STATE" varchar(150) NULL,
	"C_HOUSE_NAME" varchar(150) NULL,
	"C_STREET_NAME1" varchar(150) NULL,
	"C_AREA_NAME1" varchar(150) NULL,
	"C_LANDMARK2" varchar(150) NULL,
	"C_CITY_1" varchar(150) NULL,
	"N_PATIENTS" varchar(150) NULL,
	"N_CRNTBUSINES" varchar(150) NULL,
	"C_STATE1" varchar(150) NULL,
	"C_PINCODE1" varchar(150) NULL,
	"C_BUSINES_POTENTIAL" varchar(150) NULL,
	"D_CHILD_DOB1" timestamp NULL,
	"D_CHILD_DOB2" timestamp NULL,
	"D_CHILD_DOB3" timestamp NULL,
	"n_age" varchar(10) NULL,
	"C_SPECIALITY" varchar(150) NULL,
	"C_childnname1" varchar(150) NULL,
	"C_childnname2" varchar(150) NULL,
	"C_childnname3" varchar(150) NULL,
	"n_drpurchase" integer NULL,
	"N_drprescription" integer NULL,
	"N_drpotential" varchar(50) NULL,
	"c_landline" varchar(20) NULL,
	"c_middlename" varchar(50) NULL,
	"c_tldl1" varchar(100) NULL,
	"c_tldl2" varchar(100) NULL,
	"c_dlfood1" varchar(100) NULL,
	"c_tldl11" varchar(100) NULL,
	"c_tldl12" varchar(100) NULL,
	"c_dlfood2" varchar(100) NULL,
	"d_DLDate1" timestamp NULL,
	"d_DLDate2" timestamp NULL,
	"c_pan1" varchar(100) NULL,
	"c_pan2" varchar(100) NULL,
	"c_Purchase_manager_Name" varchar(100) NULL,
	"c_Purchase_manager_Mob" varchar(20) NULL,
	"c_Account_Type" varchar(50) NULL,
	"n_visit_freq" integer NULL,
	"n_fridge" integer NULL,
	"c_Institutn_type" varchar(100) NULL,
	"c_Account_Grp" varchar(100) NULL,
	"n_hostel" integer NULL,
	"n_no_of_canteen" integer NULL,
	"c_type_of_food" text NULL,
	"c_Canteen_contr_name" varchar(100) NULL,
	"c_Canteen_contr_addr" varchar(500) NULL,
	"D_agreement_date" timestamp NULL,
	"n_Total_Disc" numeric(5, 2) NULL,
	"D_Total_Disc_From" timestamp NULL,
	"D_Total_Disc_To" timestamp NULL,
	"c_Store_Classification" varchar(100) NULL,
	"n_Store_Type" integer NULL,
	"c_Distributor" varchar(20) NULL,
	"c_store_type" varchar(50) NULL,
	"c_Store_Manager" varchar(50) NULL,
	"c_Distributor_name" varchar(100) NULL,
	"n_active" integer NULL,
	"c_classification" varchar(10) NULL,
	"c_chemisttype" varchar(10) NULL,
	"n_WindowSize" varchar(50) NULL,
	"C_AccountClassfctn" varchar(5) NULL,
	"C_AccountAddress" varchar(100) NULL,
	"C_AccountCode" varchar(10) NULL,
	"n_DaysTo_Activate" integer NULL,
	"d_Start_Date" timestamp NULL,
	"d_activation_Date" timestamp NULL,
	"c_storetype" varchar(50) NULL,
	"c_distributorcode" varchar(50) NULL,
	"c_visitfrequency" varchar(50) NULL,
	"c_classificationcode" varchar(50) NULL,
	"c_stmanager" varchar(50) NULL,
	"C_SA_Classification" varchar(20) NULL,
	"c_Hospital_Code" varchar(10) NULL,
	"C_TypeofHsptl" varchar(300) NULL,
	"C_Area" varchar(100) NULL,
	"C_Inhouse_phar_exist" varchar(100) NULL,
	"C_Fin_Turnover" varchar(100) NULL,
	"C_Potencial" varchar(100) NULL,
	"C_No_of_Beds" varchar(100) NULL,
	"C_No_of_Emer_Beds" varchar(100) NULL,
	"C_No_of_Critic_ICU_Beds" varchar(100) NULL,
	"C_No_of_Sur_Theaters" varchar(100) NULL,
	"C_Hospital" varchar(100) NULL,
	"C_Tot_No_of_Doctors" varchar(100) NULL,
	"C_Pur_Mgr_Name" varchar(100) NULL,
	"C_Pur_Mgr__Contact" varchar(100) NULL,
	"C_Stk_Inchrg_Name" varchar(100) NULL,
	"C_Stk_Inchrg_Contact" varchar(100) NULL,
	"C_Fin_Ofcr_Name" varchar(100) NULL,
	"C_Fin_Ofcr_Contact" varchar(100) NULL,
	"C_No_of_Thrputc_Group" varchar(100) NULL,
	"C_Techng_Institution" varchar(100) NULL,
	"C_Gstno" varchar(50) NULL,
	"c_docmstpan" varchar(10) NULL
) 
;
/****** Object:  Table "bkptbl_user_access2023262023"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "bkptbl_user_access2023262023"(
	"N_Type" numeric(18, 0) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"c_sh_name" varchar(10) NULL,
	"n_CI_FLag" smallint NULL,
	"n_fs_flag" smallint NULL,
	"c_gadgetcode" varchar(50) NULL,
	"n_dashboard_type" integer NULL
) 
;
/****** Object:  Table "callavg"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "callavg"(
	"EmpCode" varchar(50) NULL,
	"Division" varchar(50) NULL,
	"Region" varchar(50) NULL,
	"FSCode" varchar(50) NULL,
	"FSName" varchar(50) NULL,
	"ReportingManager" varchar(50) NULL,
	"WorkingDays" varchar(50) NULL,
	"WorkedDays" varchar(50) NULL,
	"TotalCalls" varchar(50) NULL,
	"Callavg" varchar(50) NULL
) 
;
/****** Object:  Table "claimbackup"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "claimbackup"(
	"N_SRNO" numeric(18, 0) NOT NULL,
	"C_CLAIM_CODE" varchar(10) NOT NULL,
	"C_FS_CODE" varchar(10) NOT NULL,
	"C_EMP_CODE" varchar(10) NOT NULL,
	"C_PARENT_CODE" varchar(10) NOT NULL,
	"C_DESK_CODE" varchar(10) NOT NULL,
	"D_DATE" timestamp NOT NULL,
	"D_DATE_FROM" timestamp NOT NULL,
	"D_DATE_TO" timestamp NOT NULL,
	"C_DESCRIPTION" varchar(500) NULL,
	"C_NOTE1" varchar(500) NULL,
	"C_NOTE2" varchar(500) NULL,
	"C_NOTE3" varchar(500) NULL,
	"N_APPROVED" integer NOT NULL,
	"D_APPROVED_ON" timestamp NULL,
	"C_APPROVED_BY" varchar(10) NULL,
	"N_MANUAL_AUTO" integer NOT NULL,
	"N_CONFIRMED" integer NOT NULL,
	"D_CONFIRMED_ON" timestamp NULL,
	"C_CONFIRMED_BY" varchar(10) NULL,
	"N_DELETED" integer NOT NULL,
	"D_MODIFIED" timestamp NULL,
	"n_claimed_amt" numeric(18, 2) NOT NULL,
	"n_approved_amt" numeric(18, 2) NOT NULL,
	"n_confirmed_amt" numeric(18, 2) NOT NULL,
	"d_Reconfirmed_on" timestamp NULL,
	"c_Reconfirmation_Det" varchar(500) NULL,
	"n_claimsetup_srno" integer NULL,
	"N_SUBMIT" integer NULL,
	"n_confirmsubmit" integer NULL,
	"d_confirm_dt" timestamp NULL
) 
;
/****** Object:  Table "claimformatbkp"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "claimformatbkp"(
	"C_CODE" varchar(50) NOT NULL,
	"C_NAME" varchar(50) NOT NULL,
	"N_MONTH_DAY" numeric(18, 0) NOT NULL,
	"N_VISITDETAIL_FROM" numeric(18, 0) NOT NULL,
	"N_PLACEVISIT_HEADER" numeric(18, 0) NOT NULL,
	"N_PRE_CLAIM_REF" numeric(18, 0) NOT NULL,
	"N_DETAIL_REQUIRED" numeric(18, 0) NOT NULL,
	"N_SUMMARY_REQUIRED" numeric(18, 0) NOT NULL,
	"N_REIMBURSMENT_REQUIRED" numeric(18, 0) NOT NULL,
	"N_DETAIL_DR_COUNT" numeric(18, 0) NOT NULL,
	"N_DETAIL_CHEM_COUNT" numeric(18, 0) NOT NULL,
	"N_DETAIL_STK_COUNT" numeric(18, 0) NOT NULL,
	"N_DETAIL_DIST_KM" numeric(18, 0) NOT NULL,
	"n_detail_dist_stp_km" numeric(18, 0) NOT NULL,
	"N_DETAIL_VISITTYPE" numeric(18, 0) NOT NULL,
	"N_DETAIL_WORKWITH" numeric(18, 0) NOT NULL,
	"N_DETAIL_DESCRIPTION_LOOKUP" numeric(18, 0) NOT NULL,
	"N_STATUS" integer NULL,
	"N_DELETED" integer NULL,
	"D_CREATED" timestamp NULL,
	"D_MODIFIED" timestamp NULL,
	"C_MODIFIER" varchar(50) NULL,
	"n_AdditionalTA" integer NULL,
	"n_stayed_at" integer NULL,
	"N_MonthlyFixdExp" numeric(18, 0) NULL,
	"n_Sup_Mer_Details" integer NULL,
	"n_ModeOfTravel" integer NOT NULL
) 
;
/****** Object:  Table "cusback"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "cusback"(
	"c_cust_code" char(10) NOT NULL,
	"c_div_code" varchar(10) NOT NULL,
	"c_fs_code" char(10) NOT NULL,
	"d_date" timestamp NOT NULL,
	"c_grade" varchar(10) NULL,
	"d_date_to" timestamp NULL,
	"n_per" integer NULL,
	"C_ref_no" varchar(52) NULL,
	"d_modified" timestamp NULL,
	"N_CRNTBUSINES" varchar(150) NULL,
	"C_BUSINES_POTENTIAL" varchar(150) NULL,
	"N_drpotential" varchar(50) NULL,
	"c_DocSubAreacode" varchar(50) NOT NULL
) 
;
/****** Object:  Table "CUSBACKUP"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "CUSBACKUP"(
	"c_cust_code" char(10) NOT NULL,
	"c_div_code" varchar(10) NOT NULL,
	"c_fs_code" char(10) NOT NULL,
	"d_date" timestamp NOT NULL,
	"c_grade" varchar(10) NULL,
	"d_date_to" timestamp NULL,
	"n_per" integer NULL,
	"C_ref_no" varchar(52) NULL,
	"d_modified" timestamp NULL,
	"N_CRNTBUSINES" varchar(150) NULL,
	"C_BUSINES_POTENTIAL" varchar(150) NULL,
	"N_drpotential" varchar(50) NULL
) 
;
/****** Object:  Table "cusbackup2017"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "cusbackup2017"(
	"c_cust_code" char(10) NOT NULL,
	"c_div_code" varchar(10) NOT NULL,
	"c_fs_code" char(10) NOT NULL,
	"d_date" timestamp NOT NULL,
	"c_grade" varchar(10) NULL,
	"d_date_to" timestamp NULL,
	"n_per" integer NULL,
	"C_ref_no" varchar(52) NULL,
	"d_modified" timestamp NULL,
	"N_CRNTBUSINES" varchar(150) NULL,
	"C_BUSINES_POTENTIAL" varchar(150) NULL,
	"N_drpotential" varchar(50) NULL
) 
;
/****** Object:  Table "cusbck2017_06_01"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "cusbck2017_06_01"(
	"c_cust_code" char(10) NOT NULL,
	"c_div_code" varchar(10) NOT NULL,
	"c_fs_code" char(10) NOT NULL,
	"d_date" timestamp NOT NULL,
	"c_grade" varchar(10) NULL,
	"d_date_to" timestamp NULL,
	"n_per" integer NULL,
	"C_ref_no" varchar(52) NULL,
	"d_modified" timestamp NULL,
	"N_CRNTBUSINES" varchar(150) NULL,
	"C_BUSINES_POTENTIAL" varchar(150) NULL,
	"N_drpotential" varchar(50) NULL
) 
;
/****** Object:  Table "custdiv2020"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "custdiv2020"(
	"c_cust_code" char(10) NOT NULL,
	"c_div_code" varchar(10) NOT NULL,
	"c_fs_code" char(10) NOT NULL,
	"d_date" timestamp NOT NULL,
	"c_grade" varchar(10) NULL,
	"d_date_to" timestamp NULL,
	"n_per" integer NULL,
	"C_ref_no" varchar(52) NULL,
	"d_modified" timestamp NULL,
	"N_CRNTBUSINES" varchar(150) NULL,
	"C_BUSINES_POTENTIAL" varchar(150) NULL,
	"N_drpotential" varchar(50) NULL,
	"c_DocSubAreacode" varchar(50) NOT NULL
) 
;
/****** Object:  Table "dadaa"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "dadaa"(
	"CategoryCode" varchar(50) NULL,
	"Specialization" varchar(50) NULL,
	"DRCount" varchar(255) NULL,
	"HQ" varchar(255) NULL,
	"State" varchar(255) NULL
) 
;
/****** Object:  Table "daywisestatus"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "daywisestatus"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"D_Date_Report" timestamp NOT NULL,
	"D_Entry_Date" timestamp NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"C_HQ_Code" varchar(10) NOT NULL,
	"C_Worked_With" varchar(10) NULL,
	"C_Reason" varchar(200) NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"C_Area_Stay" varchar(10) NOT NULL,
	"C_Note1" varchar(200) NULL,
	"C_Note2" varchar(200) NULL,
	"C_Note3" varchar(200) NULL,
	"N_Distance" numeric(18, 0) NULL,
	"n_Fare" numeric(10, 0) NULL,
	"n_Allowance" integer NULL,
	"C_Allowance_Type" char(10) NULL,
	"c_WrkType" varchar(10) NULL,
	"N_Sort_Order" numeric(18, 0) NULL,
	"N_Flag" integer NULL,
	"C_Placeof_Work" varchar(10) NOT NULL,
	"C_Stayed_At" varchar(10) NOT NULL,
	"c_Emp_Code" varchar(10) NOT NULL,
	"c_temp_fs" varchar(10) NULL,
	"c_temp_emp" varchar(10) NULL,
	"D_Created" timestamp NULL,
	"D_Modified" timestamp NULL,
	"C_WorkContactRemarks" varchar(200) NULL,
 CONSTRAINT "PK_daywisestatus" PRIMARY KEY  
(
	"N_Srno" 
) 
) 
;
/****** Object:  Table "det"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "det"(
	"EmpID" varchar(50) NULL,
	"Date" varchar(50) NULL,
	"Status" varchar(50) NULL
) 
;
/****** Object:  Table "detb"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "detb"(
	"EmpID" varchar(50) NULL,
	"Date" "date" NULL,
	"Status" varchar(50) NULL
) 
;
/****** Object:  Table "dmap"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "dmap"(
	"Division code" varchar(255) NULL,
	"Fscode" varchar(255) NULL,
	"Doctor code" varchar(255) NULL,
	"DoctorName" varchar(255) NULL,
	"Qualification 1" varchar(255) NULL,
	"Qualification 2" varchar(255) NULL,
	"Qualification 3" varchar(255) NULL,
	"Qualification 4" varchar(255) NULL,
	"Qualification 5" varchar(255) NULL,
	"Grade" varchar(255) NULL,
	"Speciality Type" varchar(255) NULL,
	"Doctor Class" varchar(255) NULL,
	"Mobile No" double precision NULL,
	"Land Line No" varchar(255) NULL,
	"SubArea" varchar(255) NULL,
	"MCLNO" varchar(255) NULL,
	"DR Registration No" varchar(255) NULL,
	"DOB" varchar(255) NULL,
	"Age" varchar(255) NULL,
	"DOW" timestamp NULL,
	"Product Mapped" varchar(255) NULL,
	"Spouse name" varchar(255) NULL,
	"Spouse DOB" varchar(255) NULL,
	"EmailID" varchar(255) NULL,
	"Speciality As Per Qualification" varchar(255) NULL,
	"Clinic/Hospital Name" varchar(255) NULL,
	"Address 1" varchar(255) NULL,
	"Address 2" varchar(255) NULL,
	"Address 3" varchar(255) NULL,
	"Area" varchar(255) NULL,
	"Landmark" varchar(255) NULL,
	"City" varchar(255) NULL,
	"District" varchar(255) NULL,
	"State" varchar(255) NULL,
	"PIN" double precision NULL,
	"House/Building Name" varchar(255) NULL,
	"Street Name" varchar(255) NULL,
	"Area1" varchar(255) NULL,
	"Landmark1" varchar(255) NULL,
	"City1" varchar(255) NULL,
	"State1" varchar(255) NULL,
	"PIN1" varchar(255) NULL,
	"No Of Patients Per Day" double precision NULL,
	"Current Business" varchar(255) NULL,
	"Business Potential" varchar(255) NULL,
	"Doctor Potential" double precision NULL,
	"Is doctor Is Prescribing" varchar(255) NULL,
	"Is doctor Is Purchasing" varchar(255) NULL,
	"Child1 Name" varchar(255) NULL,
	"Child1 DOB" varchar(255) NULL,
	"Child2 Name" varchar(255) NULL,
	"Child2 DOB" varchar(255) NULL,
	"Child3 Name" varchar(255) NULL,
	"Child3 DOB" varchar(255) NULL
) 
;
/****** Object:  Table "doc"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "doc"(
	"DoctorCode" varchar(10) NOT NULL,
	"DoctorName" varchar(200) NULL,
	"FSCode" varchar(10) NOT NULL,
	"FSName" varchar(100) NULL,
	"FSHQ" varchar(50) NULL,
	"Category" varchar(50) NULL,
	"Grade" varchar(30) NULL,
	"Class" varchar(100) NULL,
	"Qualification" varchar(100) NULL,
	"Subarea" varchar(50) NULL,
	"Area" varchar(50) NULL,
	"Region" varchar(50) NULL,
	"refno" varchar(52) NULL,
	"DivCode" varchar(10) NOT NULL,
	"Div" varchar(50) NULL,
	"DocEmailid" varchar(50) NULL
) 
;
/****** Object:  Table "docbackup2021"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "docbackup2021"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(200) NULL,
	"N_Type" integer NOT NULL,
	"C_Grade" varchar(10) NULL,
	"C_Qualification" varchar(50) NULL,
	"C_Add_1" varchar(200) NULL,
	"C_Add_2" varchar(50) NULL,
	"C_Add_3" varchar(50) NULL,
	"C_Add_4" varchar(50) NULL,
	"C_Pin" varchar(10) NULL,
	"C_Phone" varchar(20) NULL,
	"C_Fax" varchar(50) NULL,
	"C_Category" varchar(10) NULL,
	"C_Area_Code" varchar(10) NULL,
	"C_Subarea_Code" varchar(10) NULL,
	"D_DOB" timestamp NULL,
	"D_DOW" timestamp NULL,
	"n_Status" integer NULL,
	"D_Create_Date" timestamp NULL,
	"D_modify_Date" timestamp NULL,
	"C_Email_ID" varchar(50) NULL,
	"C_FsCode" varchar(10) NULL,
	"c_region_code" varchar(10) NULL,
	"n_convert" numeric(9, 0) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(20) NULL,
	"n_lami" double precision NULL,
	"n_lgmi" double precision NULL,
	"c_tin_no" varchar(50) NULL,
	"c_lic_no" varchar(50) NULL,
	"c_contact_name" varchar(50) NULL,
	"n_Sft_shop" numeric(18, 0) NULL,
	"n_No_of_display_Shelf" numeric(9, 0) NULL,
	"c_desc_display_shelf" varchar(100) NULL,
	"n_Front_Board_Height" numeric(9, 2) NULL,
	"n_Front_Board_length" numeric(9, 2) NULL,
	"n_Backlit" smallint NULL,
	"n_Computerised" smallint NULL,
	"c_lic_food" varchar(50) NULL,
	"c_sort" varchar(10) NULL,
	"c_contact_mob" varchar(50) NULL,
	"c_contact_outlet_num" varchar(50) NULL,
	"C_Landmark" varchar(100) NULL,
	"C_Short_Name" varchar(10) NULL,
	"C_Doc_Class" varchar(10) NULL,
	"C_Spousename" varchar(100) NULL,
	"D_SpouseDob" timestamp NULL,
	"C_FName" varchar(50) NULL,
	"C_LName" varchar(50) NULL,
	"n_mcino" varchar(20) NULL,
	"C_HOSPITAL_NAME" varchar(200) NULL,
	"C_STREET_NAME" varchar(150) NULL,
	"C_AREA_NAME" varchar(150) NULL,
	"C_LANDMARK1" varchar(150) NULL,
	"C_CITY" varchar(150) NULL,
	"C_STATE" varchar(150) NULL,
	"C_HOUSE_NAME" varchar(150) NULL,
	"C_STREET_NAME1" varchar(150) NULL,
	"C_AREA_NAME1" varchar(150) NULL,
	"C_LANDMARK2" varchar(150) NULL,
	"C_CITY_1" varchar(150) NULL,
	"N_PATIENTS" varchar(150) NULL,
	"N_CRNTBUSINES" varchar(150) NULL,
	"C_STATE1" varchar(150) NULL,
	"C_PINCODE1" varchar(150) NULL,
	"C_BUSINES_POTENTIAL" varchar(150) NULL,
	"D_CHILD_DOB1" timestamp NULL,
	"D_CHILD_DOB2" timestamp NULL,
	"D_CHILD_DOB3" timestamp NULL,
	"n_age" varchar(10) NULL,
	"C_SPECIALITY" varchar(150) NULL,
	"C_childnname1" varchar(150) NULL,
	"C_childnname2" varchar(150) NULL,
	"C_childnname3" varchar(150) NULL,
	"n_drpurchase" integer NULL,
	"N_drprescription" integer NULL,
	"N_drpotential" varchar(50) NULL,
	"c_landline" varchar(20) NULL,
	"c_middlename" varchar(50) NULL,
	"c_tldl1" varchar(100) NULL,
	"c_tldl2" varchar(100) NULL,
	"c_dlfood1" varchar(100) NULL,
	"c_tldl11" varchar(100) NULL,
	"c_tldl12" varchar(100) NULL,
	"c_dlfood2" varchar(100) NULL,
	"d_DLDate1" timestamp NULL,
	"d_DLDate2" timestamp NULL,
	"c_pan1" varchar(100) NULL,
	"c_pan2" varchar(100) NULL,
	"c_Purchase_manager_Name" varchar(100) NULL,
	"c_Purchase_manager_Mob" varchar(20) NULL,
	"c_Account_Type" varchar(50) NULL,
	"n_visit_freq" integer NULL,
	"n_fridge" integer NULL,
	"c_Institutn_type" varchar(100) NULL,
	"c_Account_Grp" varchar(100) NULL,
	"n_hostel" integer NULL,
	"n_no_of_canteen" integer NULL,
	"c_type_of_food" text NULL,
	"c_Canteen_contr_name" varchar(100) NULL,
	"c_Canteen_contr_addr" varchar(500) NULL,
	"D_agreement_date" timestamp NULL,
	"n_Total_Disc" numeric(5, 2) NULL,
	"D_Total_Disc_From" timestamp NULL,
	"D_Total_Disc_To" timestamp NULL,
	"c_Store_Classification" varchar(100) NULL,
	"n_Store_Type" integer NULL,
	"c_Distributor" varchar(20) NULL,
	"c_store_type" varchar(50) NULL,
	"c_Store_Manager" varchar(50) NULL,
	"c_Distributor_name" varchar(100) NULL,
	"n_active" integer NULL,
	"c_classification" varchar(10) NULL,
	"c_chemisttype" varchar(10) NULL,
	"n_WindowSize" varchar(50) NULL,
	"C_AccountClassfctn" varchar(5) NULL,
	"C_AccountAddress" varchar(100) NULL,
	"C_AccountCode" varchar(10) NULL,
	"n_DaysTo_Activate" integer NULL,
	"d_Start_Date" timestamp NULL,
	"d_activation_Date" timestamp NULL,
	"c_storetype" varchar(50) NULL,
	"c_distributorcode" varchar(50) NULL,
	"c_visitfrequency" varchar(50) NULL,
	"c_classificationcode" varchar(50) NULL,
	"c_stmanager" varchar(50) NULL,
	"C_SA_Classification" varchar(20) NULL,
	"c_Hospital_Code" varchar(200) NULL,
	"C_TypeofHsptl" varchar(300) NULL,
	"C_Area" varchar(100) NULL,
	"C_Inhouse_phar_exist" varchar(100) NULL,
	"C_Fin_Turnover" varchar(100) NULL,
	"C_Potencial" varchar(100) NULL,
	"C_No_of_Beds" varchar(100) NULL,
	"C_No_of_Emer_Beds" varchar(100) NULL,
	"C_No_of_Critic_ICU_Beds" varchar(100) NULL,
	"C_No_of_Sur_Theaters" varchar(100) NULL,
	"C_Hospital" varchar(100) NULL,
	"C_Tot_No_of_Doctors" varchar(100) NULL,
	"C_Pur_Mgr_Name" varchar(100) NULL,
	"C_Pur_Mgr__Contact" varchar(100) NULL,
	"C_Stk_Inchrg_Name" varchar(100) NULL,
	"C_Stk_Inchrg_Contact" varchar(100) NULL,
	"C_Fin_Ofcr_Name" varchar(100) NULL,
	"C_Fin_Ofcr_Contact" varchar(100) NULL,
	"C_No_of_Thrputc_Group" varchar(100) NULL,
	"C_Techng_Institution" varchar(100) NULL,
	"C_Gstno" varchar(50) NULL,
	"c_docmstpan" varchar(10) NULL,
	"c_classtype" varchar(10) NULL,
	"n_SASCollection" integer NULL,
	"c_uniqueid" varchar(50) NULL
) 
;
/****** Object:  Table "docchemist"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "docchemist"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(200) NULL,
	"N_Type" integer NOT NULL,
	"C_Grade" varchar(10) NULL,
	"C_Qualification" varchar(50) NULL,
	"C_Add_1" varchar(200) NULL,
	"C_Add_2" varchar(50) NULL,
	"C_Add_3" varchar(50) NULL,
	"C_Add_4" varchar(50) NULL,
	"C_Pin" varchar(10) NULL,
	"C_Phone" varchar(20) NULL,
	"C_Fax" varchar(50) NULL,
	"C_Category" text NULL,
	"C_Area_Code" varchar(10) NULL,
	"C_Subarea_Code" varchar(10) NULL,
	"D_DOB" timestamp NULL,
	"D_DOW" timestamp NULL,
	"n_Status" integer NULL,
	"D_Create_Date" timestamp NULL,
	"D_modify_Date" timestamp NULL,
	"C_Email_ID" varchar(50) NULL,
	"C_FsCode" varchar(10) NULL,
	"c_region_code" varchar(10) NULL,
	"n_convert" numeric(9, 0) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(20) NULL,
	"n_lami" double precision NULL,
	"n_lgmi" double precision NULL,
	"c_tin_no" varchar(50) NULL,
	"c_lic_no" varchar(50) NULL,
	"c_contact_name" varchar(50) NULL,
	"n_Sft_shop" numeric(18, 0) NULL,
	"n_No_of_display_Shelf" numeric(9, 0) NULL,
	"c_desc_display_shelf" varchar(100) NULL,
	"n_Front_Board_Height" numeric(9, 2) NULL,
	"n_Front_Board_length" numeric(9, 2) NULL,
	"n_Backlit" smallint NULL,
	"n_Computerised" smallint NULL,
	"c_lic_food" varchar(50) NULL,
	"c_sort" varchar(10) NULL,
	"c_contact_mob" varchar(50) NULL,
	"c_contact_outlet_num" varchar(50) NULL,
	"C_Landmark" varchar(100) NULL,
	"C_Short_Name" varchar(10) NULL,
	"C_Doc_Class" varchar(10) NULL,
	"C_Spousename" varchar(100) NULL,
	"D_SpouseDob" timestamp NULL,
	"C_FName" varchar(50) NULL,
	"C_LName" varchar(50) NULL,
	"n_mcino" varchar(40) NULL,
	"C_HOSPITAL_NAME" varchar(200) NULL,
	"C_STREET_NAME" varchar(150) NULL,
	"C_AREA_NAME" varchar(150) NULL,
	"C_LANDMARK1" varchar(150) NULL,
	"C_CITY" varchar(150) NULL,
	"C_STATE" varchar(150) NULL,
	"C_HOUSE_NAME" varchar(150) NULL,
	"C_STREET_NAME1" varchar(150) NULL,
	"C_AREA_NAME1" varchar(150) NULL,
	"C_LANDMARK2" varchar(150) NULL,
	"C_CITY_1" varchar(150) NULL,
	"N_PATIENTS" varchar(150) NULL,
	"N_CRNTBUSINES" varchar(150) NULL,
	"C_STATE1" varchar(150) NULL,
	"C_PINCODE1" varchar(150) NULL,
	"C_BUSINES_POTENTIAL" varchar(150) NULL,
	"D_CHILD_DOB1" timestamp NULL,
	"D_CHILD_DOB2" timestamp NULL,
	"D_CHILD_DOB3" timestamp NULL,
	"n_age" varchar(10) NULL,
	"C_SPECIALITY" varchar(150) NULL,
	"C_childnname1" varchar(150) NULL,
	"C_childnname2" varchar(150) NULL,
	"C_childnname3" varchar(150) NULL,
	"n_drpurchase" integer NULL,
	"N_drprescription" integer NULL,
	"N_drpotential" varchar(50) NULL,
	"c_landline" varchar(20) NULL,
	"c_middlename" varchar(50) NULL,
	"c_tldl1" varchar(100) NULL,
	"c_tldl2" varchar(100) NULL,
	"c_dlfood1" varchar(100) NULL,
	"c_tldl11" varchar(100) NULL,
	"c_tldl12" varchar(100) NULL,
	"c_dlfood2" varchar(100) NULL,
	"d_DLDate1" timestamp NULL,
	"d_DLDate2" timestamp NULL,
	"c_pan1" varchar(100) NULL,
	"c_pan2" varchar(100) NULL,
	"c_Purchase_manager_Name" varchar(100) NULL,
	"c_Purchase_manager_Mob" varchar(20) NULL,
	"c_Account_Type" varchar(50) NULL,
	"n_visit_freq" integer NULL,
	"n_fridge" integer NULL,
	"c_Institutn_type" varchar(100) NULL,
	"c_Account_Grp" varchar(100) NULL,
	"n_hostel" integer NULL,
	"n_no_of_canteen" integer NULL,
	"c_type_of_food" text NULL,
	"c_Canteen_contr_name" varchar(100) NULL,
	"c_Canteen_contr_addr" varchar(500) NULL,
	"D_agreement_date" timestamp NULL,
	"n_Total_Disc" numeric(5, 2) NULL,
	"D_Total_Disc_From" timestamp NULL,
	"D_Total_Disc_To" timestamp NULL,
	"c_Store_Classification" varchar(100) NULL,
	"n_Store_Type" integer NULL,
	"c_Distributor" varchar(20) NULL,
	"c_store_type" varchar(50) NULL,
	"c_Store_Manager" varchar(50) NULL,
	"c_Distributor_name" varchar(100) NULL,
	"n_active" integer NULL,
	"c_classification" varchar(10) NULL,
	"c_chemisttype" varchar(10) NULL,
	"n_WindowSize" varchar(50) NULL,
	"C_AccountClassfctn" varchar(5) NULL,
	"C_AccountAddress" varchar(100) NULL,
	"C_AccountCode" varchar(10) NULL,
	"n_DaysTo_Activate" integer NULL,
	"d_Start_Date" timestamp NULL,
	"d_activation_Date" timestamp NULL,
	"c_storetype" varchar(50) NULL,
	"c_distributorcode" varchar(50) NULL,
	"c_visitfrequency" varchar(50) NULL,
	"c_classificationcode" varchar(50) NULL,
	"c_stmanager" varchar(50) NULL,
	"C_SA_Classification" varchar(20) NULL,
	"c_Hospital_Code" varchar(200) NULL,
	"C_TypeofHsptl" varchar(300) NULL,
	"C_Area" varchar(100) NULL,
	"C_Inhouse_phar_exist" varchar(100) NULL,
	"C_Fin_Turnover" varchar(100) NULL,
	"C_Potencial" varchar(100) NULL,
	"C_No_of_Beds" varchar(100) NULL,
	"C_No_of_Emer_Beds" varchar(100) NULL,
	"C_No_of_Critic_ICU_Beds" varchar(100) NULL,
	"C_No_of_Sur_Theaters" varchar(100) NULL,
	"C_Hospital" varchar(100) NULL,
	"C_Tot_No_of_Doctors" varchar(100) NULL,
	"C_Pur_Mgr_Name" varchar(100) NULL,
	"C_Pur_Mgr__Contact" varchar(100) NULL,
	"C_Stk_Inchrg_Name" varchar(100) NULL,
	"C_Stk_Inchrg_Contact" varchar(100) NULL,
	"C_Fin_Ofcr_Name" varchar(100) NULL,
	"C_Fin_Ofcr_Contact" varchar(100) NULL,
	"C_No_of_Thrputc_Group" varchar(100) NULL,
	"C_Techng_Institution" varchar(100) NULL,
	"C_Gstno" varchar(50) NULL,
	"c_docmstpan" varchar(10) NULL,
	"c_classtype" varchar(10) NULL,
	"n_SASCollection" integer NULL,
	"c_uniqueid" varchar(50) NULL,
	"c_contact_person" varchar(200) NULL,
	"c_purchasemanagermail" varchar(200) NULL,
	"n_purchaseteam_size" integer NULL,
	"c_stockiesname" varchar(200) NULL,
	"n_lami_res" double precision NULL,
	"n_lgmi_res" double precision NULL,
	"C_profile_Image" text NULL,
	"c_department_catered" integer NULL,
	"c_brands_focused" varchar(2000) NULL,
	"C_Phone_Enc" varchar(500) NULL,
	"doctors_covered_hospital" integer NULL,
	"c_hetero_distributor_supplier" varchar(10) NULL,
	"c_hetero_brands_available" varchar(10) NULL,
	"n_no_new_admissions_perday" integer NULL,
	"c_diagnostic_lab_iside_hospital" integer NULL,
	"n_no_of_cafes" integer NULL,
	"n_patient_kiosk" integer NULL,
	"n_hospital_digitally_active" integer NULL,
	"n_digital_handle_hospital_promotions" integer NULL,
	"n_hospital_involved_mass_screening" integer NULL,
	"n_hospital_organizing_specific_seminars" integer NULL,
	"n_is_hospital_medical_emergency" integer NULL,
	"n_pharmacy_scheme_specificity" integer NULL,
	"n_dnb_hospital" integer NULL,
	"n_number_of_patients" integer NULL,
	"n_no_oncology_hospitals" integer NULL,
	"n_no_of_beds_oncology_patients" integer NULL,
	"n_no_patients_chemotherapy_surgery" integer NULL,
	"n_no_chemotherapy_per_day" integer NULL,
	"c_indication_wise_regiments" integer NULL,
	"c_expected_business_activity_customers" varchar(250) NULL,
 CONSTRAINT "PK_docchemist" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "docheirarchybackup"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "docheirarchybackup"(
	"n_srno" numeric(18, 0) NOT NULL,
	"c_fs_code" varchar(100) NULL,
	"n_NextHeirarchyType" integer NULL,
	"c_NextHeirarchyFSCode" varchar(100) NULL,
	"n_setupid" integer NULL,
	"n_status" integer NULL,
	"d_Modifieddate" timestamp NULL,
	"n_apprequired" integer NULL,
	"n_SingleOrMultiple" integer NULL,
	"n_DeskFsType" integer NULL,
	"n_ConfRequiredFieldExists" integer NULL
) 
;
/****** Object:  Table "docmasterbackup2019"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "docmasterbackup2019"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(200) NULL,
	"N_Type" integer NOT NULL,
	"C_Grade" varchar(10) NULL,
	"C_Qualification" varchar(50) NULL,
	"C_Add_1" varchar(200) NULL,
	"C_Add_2" varchar(50) NULL,
	"C_Add_3" varchar(50) NULL,
	"C_Add_4" varchar(50) NULL,
	"C_Pin" varchar(10) NULL,
	"C_Phone" varchar(20) NULL,
	"C_Fax" varchar(50) NULL,
	"C_Category" varchar(10) NULL,
	"C_Area_Code" varchar(10) NULL,
	"C_Subarea_Code" varchar(10) NULL,
	"D_DOB" timestamp NULL,
	"D_DOW" timestamp NULL,
	"n_Status" integer NULL,
	"D_Create_Date" timestamp NULL,
	"D_modify_Date" timestamp NULL,
	"C_Email_ID" varchar(50) NULL,
	"C_FsCode" varchar(10) NULL,
	"c_region_code" varchar(10) NULL,
	"n_convert" numeric(9, 0) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(20) NULL,
	"n_lami" double precision NULL,
	"n_lgmi" double precision NULL,
	"c_tin_no" varchar(50) NULL,
	"c_lic_no" varchar(50) NULL,
	"c_contact_name" varchar(50) NULL,
	"n_Sft_shop" numeric(18, 0) NULL,
	"n_No_of_display_Shelf" numeric(9, 0) NULL,
	"c_desc_display_shelf" varchar(100) NULL,
	"n_Front_Board_Height" numeric(9, 2) NULL,
	"n_Front_Board_length" numeric(9, 2) NULL,
	"n_Backlit" smallint NULL,
	"n_Computerised" smallint NULL,
	"c_lic_food" varchar(50) NULL,
	"c_sort" varchar(10) NULL,
	"c_contact_mob" varchar(50) NULL,
	"c_contact_outlet_num" varchar(50) NULL,
	"C_Landmark" varchar(100) NULL,
	"C_Short_Name" varchar(10) NULL,
	"C_Doc_Class" varchar(10) NULL,
	"C_Spousename" varchar(100) NULL,
	"D_SpouseDob" timestamp NULL,
	"C_FName" varchar(50) NULL,
	"C_LName" varchar(50) NULL,
	"n_mcino" varchar(20) NULL,
	"C_HOSPITAL_NAME" varchar(150) NULL,
	"C_STREET_NAME" varchar(150) NULL,
	"C_AREA_NAME" varchar(150) NULL,
	"C_LANDMARK1" varchar(150) NULL,
	"C_CITY" varchar(150) NULL,
	"C_STATE" varchar(150) NULL,
	"C_HOUSE_NAME" varchar(150) NULL,
	"C_STREET_NAME1" varchar(150) NULL,
	"C_AREA_NAME1" varchar(150) NULL,
	"C_LANDMARK2" varchar(150) NULL,
	"C_CITY_1" varchar(150) NULL,
	"N_PATIENTS" varchar(150) NULL,
	"N_CRNTBUSINES" varchar(150) NULL,
	"C_STATE1" varchar(150) NULL,
	"C_PINCODE1" varchar(150) NULL,
	"C_BUSINES_POTENTIAL" varchar(150) NULL,
	"D_CHILD_DOB1" timestamp NULL,
	"D_CHILD_DOB2" timestamp NULL,
	"D_CHILD_DOB3" timestamp NULL,
	"n_age" varchar(10) NULL,
	"C_SPECIALITY" varchar(150) NULL,
	"C_childnname1" varchar(150) NULL,
	"C_childnname2" varchar(150) NULL,
	"C_childnname3" varchar(150) NULL,
	"n_drpurchase" integer NULL,
	"N_drprescription" integer NULL,
	"N_drpotential" varchar(50) NULL,
	"c_landline" varchar(20) NULL,
	"c_middlename" varchar(50) NULL,
	"c_tldl1" varchar(100) NULL,
	"c_tldl2" varchar(100) NULL,
	"c_dlfood1" varchar(100) NULL,
	"c_tldl11" varchar(100) NULL,
	"c_tldl12" varchar(100) NULL,
	"c_dlfood2" varchar(100) NULL,
	"d_DLDate1" timestamp NULL,
	"d_DLDate2" timestamp NULL,
	"c_pan1" varchar(100) NULL,
	"c_pan2" varchar(100) NULL,
	"c_Purchase_manager_Name" varchar(100) NULL,
	"c_Purchase_manager_Mob" varchar(20) NULL,
	"c_Account_Type" varchar(50) NULL,
	"n_visit_freq" integer NULL,
	"n_fridge" integer NULL,
	"c_Institutn_type" varchar(100) NULL,
	"c_Account_Grp" varchar(100) NULL,
	"n_hostel" integer NULL,
	"n_no_of_canteen" integer NULL,
	"c_type_of_food" text NULL,
	"c_Canteen_contr_name" varchar(100) NULL,
	"c_Canteen_contr_addr" varchar(500) NULL,
	"D_agreement_date" timestamp NULL,
	"n_Total_Disc" numeric(5, 2) NULL,
	"D_Total_Disc_From" timestamp NULL,
	"D_Total_Disc_To" timestamp NULL,
	"c_Store_Classification" varchar(100) NULL,
	"n_Store_Type" integer NULL,
	"c_Distributor" varchar(20) NULL,
	"c_store_type" varchar(50) NULL,
	"c_Store_Manager" varchar(50) NULL,
	"c_Distributor_name" varchar(100) NULL,
	"n_active" integer NULL,
	"c_classification" varchar(10) NULL,
	"c_chemisttype" varchar(10) NULL,
	"n_WindowSize" varchar(50) NULL,
	"C_AccountClassfctn" varchar(5) NULL,
	"C_AccountAddress" varchar(100) NULL,
	"C_AccountCode" varchar(10) NULL,
	"n_DaysTo_Activate" integer NULL,
	"d_Start_Date" timestamp NULL,
	"d_activation_Date" timestamp NULL,
	"c_storetype" varchar(50) NULL,
	"c_distributorcode" varchar(50) NULL,
	"c_visitfrequency" varchar(50) NULL,
	"c_classificationcode" varchar(50) NULL,
	"c_stmanager" varchar(50) NULL,
	"C_SA_Classification" varchar(20) NULL,
	"c_Hospital_Code" varchar(50) NULL,
	"C_TypeofHsptl" varchar(300) NULL,
	"C_Area" varchar(100) NULL,
	"C_Inhouse_phar_exist" varchar(100) NULL,
	"C_Fin_Turnover" varchar(100) NULL,
	"C_Potencial" varchar(100) NULL,
	"C_No_of_Beds" varchar(100) NULL,
	"C_No_of_Emer_Beds" varchar(100) NULL,
	"C_No_of_Critic_ICU_Beds" varchar(100) NULL,
	"C_No_of_Sur_Theaters" varchar(100) NULL,
	"C_Hospital" varchar(100) NULL,
	"C_Tot_No_of_Doctors" varchar(100) NULL,
	"C_Pur_Mgr_Name" varchar(100) NULL,
	"C_Pur_Mgr__Contact" varchar(100) NULL,
	"C_Stk_Inchrg_Name" varchar(100) NULL,
	"C_Stk_Inchrg_Contact" varchar(100) NULL,
	"C_Fin_Ofcr_Name" varchar(100) NULL,
	"C_Fin_Ofcr_Contact" varchar(100) NULL,
	"C_No_of_Thrputc_Group" varchar(100) NULL,
	"C_Techng_Institution" varchar(100) NULL,
	"C_Gstno" varchar(50) NULL,
	"c_docmstpan" varchar(10) NULL,
	"c_classtype" varchar(10) NULL,
	"n_SASCollection" integer NULL
) 
;
/****** Object:  Table "doctorcusbck"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "doctorcusbck"(
	"c_cust_code" char(10) NOT NULL,
	"c_div_code" varchar(10) NOT NULL,
	"c_fs_code" char(10) NOT NULL,
	"d_date" timestamp NOT NULL,
	"c_grade" varchar(10) NULL,
	"d_date_to" timestamp NULL,
	"n_per" integer NULL,
	"C_ref_no" varchar(52) NULL,
	"d_modified" timestamp NULL,
	"N_CRNTBUSINES" varchar(150) NULL,
	"C_BUSINES_POTENTIAL" varchar(150) NULL,
	"N_drpotential" varchar(50) NULL
) 
;
/****** Object:  Table "doctormasteraugustmonthbackup"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "doctormasteraugustmonthbackup"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(200) NULL,
	"N_Type" integer NOT NULL,
	"C_Grade" varchar(10) NULL,
	"C_Qualification" varchar(50) NULL,
	"C_Add_1" varchar(50) NULL,
	"C_Add_2" varchar(50) NULL,
	"C_Add_3" varchar(50) NULL,
	"C_Add_4" varchar(50) NULL,
	"C_Pin" varchar(10) NULL,
	"C_Phone" varchar(20) NULL,
	"C_Fax" varchar(50) NULL,
	"C_Category" varchar(10) NULL,
	"C_Area_Code" varchar(10) NULL,
	"C_Subarea_Code" varchar(10) NULL,
	"D_DOB" timestamp NULL,
	"D_DOW" timestamp NULL,
	"n_Status" integer NULL,
	"D_Create_Date" timestamp NULL,
	"D_modify_Date" timestamp NULL,
	"C_Email_ID" varchar(50) NULL,
	"C_FsCode" varchar(10) NULL,
	"c_region_code" varchar(10) NULL,
	"n_convert" numeric(9, 0) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(20) NULL,
	"n_lami" double precision NULL,
	"n_lgmi" double precision NULL,
	"c_tin_no" varchar(50) NULL,
	"c_lic_no" varchar(50) NULL,
	"c_contact_name" varchar(50) NULL,
	"n_Sft_shop" numeric(18, 0) NULL,
	"n_No_of_display_Shelf" numeric(9, 0) NULL,
	"c_desc_display_shelf" varchar(100) NULL,
	"n_Front_Board_Height" numeric(9, 2) NULL,
	"n_Front_Board_length" numeric(9, 2) NULL,
	"n_Backlit" smallint NULL,
	"n_Computerised" smallint NULL,
	"c_lic_food" varchar(50) NULL,
	"c_sort" varchar(10) NULL,
	"c_contact_mob" varchar(50) NULL,
	"c_contact_outlet_num" varchar(50) NULL,
	"C_Landmark" varchar(100) NULL,
	"C_Short_Name" varchar(10) NULL,
	"C_Doc_Class" varchar(10) NULL,
	"C_Spousename" varchar(100) NULL,
	"D_SpouseDob" timestamp NULL,
	"C_FName" varchar(50) NULL,
	"C_LName" varchar(50) NULL,
	"n_mcino" varchar(20) NULL,
	"C_HOSPITAL_NAME" varchar(150) NULL,
	"C_STREET_NAME" varchar(150) NULL,
	"C_AREA_NAME" varchar(150) NULL,
	"C_LANDMARK1" varchar(150) NULL,
	"C_CITY" varchar(150) NULL,
	"C_STATE" varchar(150) NULL,
	"C_HOUSE_NAME" varchar(150) NULL,
	"C_STREET_NAME1" varchar(150) NULL,
	"C_AREA_NAME1" varchar(150) NULL,
	"C_LANDMARK2" varchar(150) NULL,
	"C_CITY_1" varchar(150) NULL,
	"N_PATIENTS" varchar(150) NULL,
	"N_CRNTBUSINES" varchar(150) NULL,
	"C_STATE1" varchar(150) NULL,
	"C_PINCODE1" varchar(150) NULL,
	"C_BUSINES_POTENTIAL" varchar(150) NULL,
	"D_CHILD_DOB1" timestamp NULL,
	"D_CHILD_DOB2" timestamp NULL,
	"D_CHILD_DOB3" timestamp NULL,
	"n_age" varchar(10) NULL,
	"C_SPECIALITY" varchar(150) NULL,
	"C_childnname1" varchar(150) NULL,
	"C_childnname2" varchar(150) NULL,
	"C_childnname3" varchar(150) NULL,
	"n_drpurchase" integer NULL,
	"N_drprescription" integer NULL,
	"N_drpotential" varchar(50) NULL,
	"c_landline" varchar(20) NULL,
	"c_middlename" varchar(50) NULL,
	"c_tldl1" varchar(100) NULL,
	"c_tldl2" varchar(100) NULL,
	"c_dlfood1" varchar(100) NULL,
	"c_tldl11" varchar(100) NULL,
	"c_tldl12" varchar(100) NULL,
	"c_dlfood2" varchar(100) NULL,
	"d_DLDate1" timestamp NULL,
	"d_DLDate2" timestamp NULL,
	"c_pan1" varchar(100) NULL,
	"c_pan2" varchar(100) NULL,
	"c_Purchase_manager_Name" varchar(100) NULL,
	"c_Purchase_manager_Mob" varchar(20) NULL,
	"c_Account_Type" varchar(50) NULL,
	"n_visit_freq" integer NULL,
	"n_fridge" integer NULL,
	"c_Institutn_type" varchar(100) NULL,
	"c_Account_Grp" varchar(100) NULL,
	"n_hostel" integer NULL,
	"n_no_of_canteen" integer NULL,
	"c_type_of_food" text NULL,
	"c_Canteen_contr_name" varchar(100) NULL,
	"c_Canteen_contr_addr" varchar(500) NULL,
	"D_agreement_date" timestamp NULL,
	"n_Total_Disc" numeric(5, 2) NULL,
	"D_Total_Disc_From" timestamp NULL,
	"D_Total_Disc_To" timestamp NULL,
	"c_Store_Classification" varchar(100) NULL,
	"n_Store_Type" integer NULL,
	"c_Distributor" varchar(20) NULL,
	"c_store_type" varchar(50) NULL,
	"c_Store_Manager" varchar(50) NULL,
	"c_Distributor_name" varchar(100) NULL,
	"n_active" integer NULL,
	"c_classification" varchar(10) NULL,
	"c_chemisttype" varchar(10) NULL,
	"n_WindowSize" varchar(50) NULL,
	"C_AccountClassfctn" varchar(5) NULL,
	"C_AccountAddress" varchar(100) NULL,
	"C_AccountCode" varchar(10) NULL,
	"n_DaysTo_Activate" integer NULL,
	"d_Start_Date" timestamp NULL,
	"d_activation_Date" timestamp NULL,
	"c_storetype" varchar(50) NULL,
	"c_distributorcode" varchar(50) NULL,
	"c_visitfrequency" varchar(50) NULL,
	"c_classificationcode" varchar(50) NULL,
	"c_stmanager" varchar(50) NULL,
	"C_SA_Classification" varchar(20) NULL,
	"c_Hospital_Code" varchar(10) NULL,
	"C_TypeofHsptl" varchar(300) NULL,
	"C_Area" varchar(100) NULL,
	"C_Inhouse_phar_exist" varchar(100) NULL,
	"C_Fin_Turnover" varchar(100) NULL,
	"C_Potencial" varchar(100) NULL,
	"C_No_of_Beds" varchar(100) NULL,
	"C_No_of_Emer_Beds" varchar(100) NULL,
	"C_No_of_Critic_ICU_Beds" varchar(100) NULL,
	"C_No_of_Sur_Theaters" varchar(100) NULL,
	"C_Hospital" varchar(100) NULL,
	"C_Tot_No_of_Doctors" varchar(100) NULL,
	"C_Pur_Mgr_Name" varchar(100) NULL,
	"C_Pur_Mgr__Contact" varchar(100) NULL,
	"C_Stk_Inchrg_Name" varchar(100) NULL,
	"C_Stk_Inchrg_Contact" varchar(100) NULL,
	"C_Fin_Ofcr_Name" varchar(100) NULL,
	"C_Fin_Ofcr_Contact" varchar(100) NULL,
	"C_No_of_Thrputc_Group" varchar(100) NULL,
	"C_Techng_Institution" varchar(100) NULL,
	"C_Gstno" varchar(50) NULL,
	"c_docmstpan" varchar(10) NULL
) 
;
/****** Object:  Table "dw"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "dw"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"D_Date_Report" timestamp NOT NULL,
	"D_Entry_Date" timestamp NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"C_HQ_Code" varchar(10) NOT NULL,
	"C_Worked_With" varchar(10) NULL,
	"C_Reason" varchar(200) NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"C_Area_Stay" varchar(10) NOT NULL,
	"C_Note1" varchar(200) NULL,
	"C_Note2" varchar(200) NULL,
	"C_Note3" varchar(200) NULL,
	"N_Distance" numeric(18, 0) NULL,
	"n_Fare" numeric(10, 0) NULL,
	"n_Allowance" integer NULL,
	"C_Allowance_Type" char(10) NULL,
	"c_WrkType" varchar(10) NULL,
	"N_Sort_Order" numeric(18, 0) NULL,
	"N_Flag" integer NULL,
	"C_Placeof_Work" varchar(10) NOT NULL,
	"C_Stayed_At" varchar(10) NOT NULL,
	"c_Emp_Code" varchar(10) NOT NULL,
	"c_temp_fs" varchar(10) NULL,
	"c_temp_emp" varchar(10) NULL,
	"D_Created" timestamp NULL,
	"D_Modified" timestamp NULL,
	"C_WorkContactRemarks" varchar(200) NULL,
	"n_workedwithself" integer NULL,
	"n_srnodisableretflg" integer NULL,
	"n_androidflg" integer NULL,
	"C_DSC_Code" varchar(10) NOT NULL
) 
;
/****** Object:  Table "dwr"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "dwr"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"D_Date_Report" timestamp NOT NULL,
	"D_Entry_Date" timestamp NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"C_HQ_Code" varchar(10) NOT NULL,
	"C_Worked_With" varchar(10) NULL,
	"C_Reason" varchar(1000) NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"C_Area_Stay" varchar(10) NOT NULL,
	"C_Note1" varchar(1000) NULL,
	"C_Note2" varchar(200) NULL,
	"C_Note3" varchar(200) NULL,
	"N_Distance" numeric(18, 0) NULL,
	"n_Fare" numeric(10, 0) NULL,
	"n_Allowance" integer NULL,
	"C_Allowance_Type" char(10) NULL,
	"c_WrkType" varchar(10) NULL,
	"N_Sort_Order" numeric(18, 0) NULL,
	"N_Flag" integer NULL,
	"C_Placeof_Work" varchar(10) NOT NULL,
	"C_Stayed_At" varchar(10) NOT NULL,
	"c_Emp_Code" varchar(10) NOT NULL,
	"c_temp_fs" varchar(10) NULL,
	"c_temp_emp" varchar(10) NULL,
	"D_Created" timestamp NULL,
	"D_Modified" timestamp NULL,
	"C_WorkContactRemarks" varchar(200) NULL,
	"n_workedwithself" integer NULL,
	"n_srnodisableretflg" integer NULL,
	"n_androidflg" integer NULL,
	"n_distance_entry" numeric(18, 2) NULL,
	"c_subarea_type" varchar(10) NULL,
	"n_status" integer NULL,
	"c_approver" varchar(50) NULL,
	"d_date_approved" timestamp NULL,
	"n_setupid" integer NULL,
 CONSTRAINT "PK_dwr" PRIMARY KEY  
(
	"N_Srno" 
) 
) 
;
/****** Object:  Table "dwr_det"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "dwr_det"(
	"N_Srno" integer NOT NULL,
	"C_DSC_Code" varchar(10) NOT NULL,
	"n_rowid" integer NOT NULL,
	"n_type" integer NOT NULL,
 CONSTRAINT "PK_dwr_det" PRIMARY KEY  
(
	"N_Srno" ,
	"n_rowid" ,
	"n_type" ,
	"C_DSC_Code" 
) 
) 
;
/****** Object:  Table "dwrdetails"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "dwrdetails"(
	"N_Srno" integer NOT NULL,
	"n_rowid" integer NOT NULL,
	"n_type" integer NOT NULL,
	"C_DSC_Code" varchar(10) NOT NULL,
	"C_BA" varchar(50) NULL,
	"N_POB" numeric(18, 2) NULL,
	"N_Closing" numeric(18, 2) NULL,
	"N_Stock_Value" numeric(18, 2) NULL,
	"N_Sales_Value" numeric(18, 2) NULL,
	"N_Outstanding" numeric(18, 2) NULL,
	"C_Note" varchar(1000) NULL,
	"c_time" varchar(50) NULL,
	"c_doc_note" varchar(50) NULL,
	"c_doc_grade" varchar(50) NULL,
	"c_fmcg_stk_code" varchar(10) NULL,
	"n_process_status" integer NULL,
	"c_Comments" varchar(200) NULL,
	"c_moreve" char(1) NULL,
	"c_PhoneNo" varchar(20) NULL,
	"d_created" timestamp NULL,
	"c_no_promotional" varchar(5) NULL,
	"c_no_ctoc" varchar(5) NULL,
	"c_no_asset" varchar(5) NULL,
	"c_no_camp" varchar(5) NULL,
	"n_recovery_call" integer NULL,
 CONSTRAINT "PK_dwrdetails" PRIMARY KEY  
(
	"N_Srno" ,
	"n_rowid" ,
	"n_type" ,
	"C_DSC_Code" 
) 
) 
;
/****** Object:  Table "dwrmst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "dwrmst"(
	"d_date_report" timestamp NOT NULL,
	"N_Srno" numeric(18, 0) NOT NULL,
	"c_fs_code" varchar(10) NOT NULL,
 CONSTRAINT "PK_dwrmst" PRIMARY KEY  
(
	"N_Srno" 
) 
) 
;
/****** Object:  Table "DynamicMasterSetup"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "DynamicMasterSetup"(
	"Id" integer NOT NULL,
	"TableName" varchar(100) NULL,
	"Header" varchar(150) NULL,
	"Priority" integer NOT NULL,
	"ColumnName" varchar(50) NULL,
	"LabelDisplay" varchar(150) NULL,
	"ValueType" varchar(50) NULL,
	"Visible" boolean NULL,
	"DefaultValue" varchar(50) NULL,
	"DefaultValueEvent" varchar(50) NULL,
	"Mandatory" boolean NULL,
	"DisplayType" varchar(50) NULL,
	"DisplayValue" text NULL,
	"DisplayName" varchar(50) NULL,
	"ReadOnly" boolean NULL,
	"AjaxBehaviour" boolean NULL,
	"TriggerOnFieldChange" varchar(50) NULL,
	"SqlQuery" varchar(5000) NULL,
	"AutoCode" varchar(50) NULL,
	"CodeLength" varchar(50) NULL,
	"Prefix" varchar(50) NULL,
	"RegularExpression" text NULL,
	"ControlID" varchar(50) NULL,
	"Event" varchar(20) NULL,
	"OnLoad" boolean NULL,
	"OnChangeQuery" varchar(5000) NULL,
	"P_key" boolean NULL,
	"TextType" varchar(10) NULL,
	"RequiredInList" boolean NULL,
	"NumericLength" varchar(10) NULL,
	"FilterColumn" varchar(200) NULL,
	"JoinCondition" text NULL,
	"RequiredToSave" boolean NULL,
	"FilterOperator" varchar(3) NULL,
	"ControlText" varchar(1000) NULL,
	"ControlTextQuery" varchar(5000) NULL,
	"ErrorMsg" varchar(200) NULL,
	"groupid" integer NULL,
	"ListCondition" varchar(250) NULL,
	"DetailsTableName" text NULL,
	"n_DetailsTable_flag" integer NULL,
	"PK_alias_name" varchar(100) NULL,
	"n_modifier" integer NULL,
	"n_NameOrShName" integer NULL,
	"n_Validator" integer NOT NULL,
	"Validator" varchar(100) NULL,
	"TargetValidator" varchar(1000) NULL,
	"RequiredToupdate" integer NULL,
	"n_order" integer NULL,
	"n_combination" integer NOT NULL,
	"n_editQuery" integer NOT NULL,
	"editQuery" text NULL,
	"EditFilterColumn" varchar(1000) NULL,
	"N_Split" integer NULL,
	"Split_char" varchar(10) NULL,
	"N_from_Master" integer NULL,
	"Requiredupdate" integer NULL,
	"Requiredsave" integer NULL,
	"ValidatorResult" varchar(100) NULL,
	"C_ControlPanelValidation_COLUMN" varchar(1000) NULL,
	"n_pop_up" integer NOT NULL,
	"n_delete_chek" integer NULL,
	"c_deleteQuery" text NULL,
	"c_delete_Filter" varchar(100) NULL,
	"n_toggle" integer NOT NULL,
	"LabelDisplay2" varchar(100) NULL,
	"C_SqlParameter" varchar(200) NULL,
	"n_dsca_type" integer NULL
) 
;
/****** Object:  Table "ed"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "ed"(
	"n_srno" integer NULL,
	"d_starting_time" varchar(50) NULL,
	"d_endingtime" varchar(50) NULL,
	"c_slideID" varchar(50) NULL,
	"d_date" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_item_code" varchar(50) NULL,
	"c_doc_code" varchar(50) NULL,
	"c_doc_grade" varchar(50) NULL,
	"C_voice_Rec" varchar(200) NULL,
	"c_title_code" varchar(20) NULL
) 
;
/****** Object:  Table "EMPDETAILS"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "EMPDETAILS"(
	"EMPCODE" varchar(50) NULL,
	"FSCODE" varchar(50) NULL,
	"REPORTINGMANAGER" varchar(50) NULL,
	"VISITEDDOCTORS" varchar(50) NULL,
	"FIELDADYS" varchar(50) NULL,
	"LEAVEDAYS" varchar(50) NULL,
	"HOLIDAYS" varchar(50) NULL,
	"WORKINGDAYS" varchar(50) NULL,
	"CALLAVG" varchar(50) NULL,
	"REGION" varchar(50) NULL,
	"DIVISION" varchar(50) NULL,
	"FSNAME" varchar(50) NULL,
	"HQ" varchar(50) NULL,
	"DaysCnt" varchar(50) NULL
) 
;
/****** Object:  Table "EMPDETAILSS"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "EMPDETAILSS"(
	"FSCODE" varchar(50) NULL,
	"EMPCODE" varchar(50) NULL,
	"FSNAME" varchar(50) NULL,
	"REPORTINGMANAGER" varchar(50) NULL,
	"FIELDDAYS" integer NULL,
	"LEAVEDAYS" integer NULL,
	"HOLIDAYS" integer NULL,
	"SUNDAYS" integer NULL,
	"TOTALDAYS" integer NULL,
	"REGION" varchar(50) NULL,
	"DIVISION" varchar(50) NULL,
	"DOJ" timestamp NULL
) 
;
/****** Object:  Table "FIELD"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "FIELD"(
	"EMPCODE" varchar(50) NULL,
	"WORKINGDAYS" varchar(50) NULL,
	"FSCODE" varchar(50) NULL
) 
;
/****** Object:  Table "FIELDDAYS"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "FIELDDAYS"(
	"FSCODE" varchar(50) NULL,
	"WORKDAYS" varchar(50) NULL,
	"WORKINGDAYS" varchar(50) NULL,
	"VISITEDDOCTORS" varchar(50) NULL,
	"CALLAVG" varchar(50) NULL,
	"DaysCnt" varchar(50) NULL
) 
;
/****** Object:  Table "FldDays"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "FldDays"(
	"Docs" varchar(50) NULL,
	"ReportingDate" varchar(50) NULL,
	"FSCode" varchar(50) NULL
) 
;
/****** Object:  Table "FldDaysCnt"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "FldDaysCnt"(
	"DaysCnt" integer NULL,
	"FsCode" varchar(50) NULL
) 
;
/****** Object:  Table "fprac"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "fprac"(
	"DIVISION" varchar(50) NULL,
	"REGION" varchar(50) NULL,
	"DESIGNATION" varchar(50) NULL,
	"TOTAL" integer NULL,
	"VACANT" integer NULL,
	"REPORTED" integer NULL
) 
;
/****** Object:  Table "fpracc"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "fpracc"(
	"DIVISION" varchar(50) NULL,
	"DESIGNATION" varchar(50) NULL,
	"TOTAL" integer NULL,
	"VACANT" integer NULL,
	"REPORTED" integer NULL
) 
;
/****** Object:  Table "fsbackup2020"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "fsbackup2020"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(100) NULL,
	"N_Type" numeric(18, 0) NOT NULL,
	"C_Grade" char(10) NULL,
	"C_Qualification" varchar(30) NULL,
	"C_Add_1" varchar(50) NULL,
	"C_Add_2" varchar(50) NULL,
	"C_Add_3" varchar(50) NULL,
	"C_Add_4" varchar(50) NULL,
	"C_Pin" char(10) NULL,
	"C_Phone" char(20) NULL,
	"C_Fax" char(20) NULL,
	"C_Category" char(10) NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"C_Parent" char(10) NULL,
	"C_EmpNo" varchar(10) NOT NULL,
	"C_Desc" varchar(50) NULL,
	"D_DOB" timestamp NULL,
	"D_DOJ" timestamp NULL,
	"D_DOW" timestamp NULL,
	"n_Status" integer NULL,
	"C_Email_ID" varchar(50) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"N_ptype" integer NULL,
	"c_div_code" varchar(10) NULL
) 
;
/****** Object:  Table "fsh"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "fsh"(
	"FSNAME" varchar(50) NOT NULL,
	"FSCODE" varchar(10) NOT NULL,
	"empcode" varchar(10) NOT NULL,
	"NTYPE" integer NOT NULL,
	"AREACODE" varchar(10) NOT NULL,
	"AREANAME" varchar(50) NOT NULL,
	"FS2" varchar(10) NULL,
	"FS3" varchar(10) NULL,
	"FS4" varchar(10) NULL,
	"FS5" varchar(10) NULL,
	"FS6" varchar(10) NULL,
	"FS7" varchar(10) NULL,
	"FS8" varchar(10) NULL,
	"FS9" varchar(10) NULL,
	"DIVCODE" varchar(10) NULL,
	"FS10" varchar(10) NULL,
	"FS11" varchar(10) NULL,
	"FS12" varchar(10) NULL,
	"FS13" varchar(10) NULL,
	"FS14" varchar(10) NULL,
	"FS15" varchar(10) NULL
) 
;
/****** Object:  Table "fsheirarchy"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "fsheirarchy"(
	"FSNAME" varchar(50) NOT NULL,
	"FSCODE" varchar(10) NOT NULL,
	"empcode" varchar(10) NOT NULL,
	"NTYPE" integer NOT NULL,
	"AREACODE" varchar(10) NOT NULL,
	"AREANAME" varchar(50) NOT NULL,
	"FS2" varchar(10) NULL,
	"FS3" varchar(10) NULL,
	"FS4" varchar(10) NULL,
	"FS5" varchar(10) NULL,
	"FS6" varchar(10) NULL,
	"FS7" varchar(10) NULL,
	"FS8" varchar(10) NULL,
	"FS9" varchar(10) NULL,
	"DIVCODE" varchar(10) NULL,
	"FS10" varchar(10) NULL,
	"FS11" varchar(10) NULL,
	"FS12" varchar(10) NULL,
	"FS13" varchar(10) NULL,
	"FS14" varchar(10) NULL,
	"FS15" varchar(10) NULL,
	"FS16" varchar(10) NULL,
	"FS17" varchar(10) NULL,
	"FS18" varchar(10) NULL,
	"FS19" varchar(10) NULL,
	"FS20" varchar(10) NULL,
	"FS21" varchar(10) NULL,
	"FS22" varchar(10) NULL,
	"FS23" varchar(10) NULL,
	"FS24" varchar(10) NULL,
	"FS25" varchar(10) NULL,
	"FS26" varchar(10) NULL,
	"FS27" varchar(10) NULL,
	"FS28" varchar(10) NULL,
	"FS29" varchar(10) NULL,
	"FS30" varchar(10) NULL,
	"FS31" varchar(10) NULL,
	"FS32" varchar(10) NULL,
	"FS33" varchar(10) NULL,
	"FS34" varchar(10) NULL,
	"FS35" varchar(10) NULL,
	"FS36" varchar(10) NULL,
	"FS37" varchar(10) NULL,
	"FS38" varchar(10) NULL,
	"FS39" varchar(10) NULL,
	"FS40" varchar(10) NULL,
	"FS41" varchar(10) NULL,
	"FS42" varchar(10) NULL,
	"FS43" varchar(10) NULL,
	"FS44" varchar(10) NULL,
	"FS45" varchar(10) NULL,
	"FS46" varchar(10) NULL,
	"FS47" varchar(10) NULL,
	"FS48" varchar(10) NULL,
	"FS49" varchar(10) NULL,
	"FS50" varchar(10) NULL,
 CONSTRAINT "PK_fsheirarchy" PRIMARY KEY  
(
	"FSCODE" 
) 
) 
;
/****** Object:  Table "fsheirarchy_bkp_21042026"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "fsheirarchy_bkp_21042026"(
	"FSNAME" varchar(50) NOT NULL,
	"FSCODE" varchar(10) NOT NULL,
	"empcode" varchar(10) NOT NULL,
	"NTYPE" integer NOT NULL,
	"AREACODE" varchar(10) NOT NULL,
	"AREANAME" varchar(50) NOT NULL,
	"FS2" varchar(10) NULL,
	"FS3" varchar(10) NULL,
	"FS4" varchar(10) NULL,
	"FS5" varchar(10) NULL,
	"FS6" varchar(10) NULL,
	"FS7" varchar(10) NULL,
	"FS8" varchar(10) NULL,
	"FS9" varchar(10) NULL,
	"DIVCODE" varchar(10) NULL,
	"FS10" varchar(10) NULL,
	"FS11" varchar(10) NULL,
	"FS12" varchar(10) NULL,
	"FS13" varchar(10) NULL,
	"FS14" varchar(10) NULL,
	"FS15" varchar(10) NULL,
	"FS16" varchar(10) NULL,
	"FS17" varchar(10) NULL,
	"FS18" varchar(10) NULL,
	"FS19" varchar(10) NULL,
	"FS20" varchar(10) NULL,
	"FS21" varchar(10) NULL,
	"FS22" varchar(10) NULL,
	"FS23" varchar(10) NULL,
	"FS24" varchar(10) NULL,
	"FS25" varchar(10) NULL,
	"FS26" varchar(10) NULL,
	"FS27" varchar(10) NULL,
	"FS28" varchar(10) NULL,
	"FS29" varchar(10) NULL,
	"FS30" varchar(10) NULL,
	"FS31" varchar(10) NULL,
	"FS32" varchar(10) NULL,
	"FS33" varchar(10) NULL,
	"FS34" varchar(10) NULL,
	"FS35" varchar(10) NULL,
	"FS36" varchar(10) NULL,
	"FS37" varchar(10) NULL,
	"FS38" varchar(10) NULL,
	"FS39" varchar(10) NULL,
	"FS40" varchar(10) NULL,
	"FS41" varchar(10) NULL,
	"FS42" varchar(10) NULL,
	"FS43" varchar(10) NULL,
	"FS44" varchar(10) NULL,
	"FS45" varchar(10) NULL,
	"FS46" varchar(10) NULL,
	"FS47" varchar(10) NULL,
	"FS48" varchar(10) NULL,
	"FS49" varchar(10) NULL,
	"FS50" varchar(10) NULL
) 
;
/****** Object:  Table "fsheirarchy_bkp_22042026"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "fsheirarchy_bkp_22042026"(
	"FSNAME" varchar(50) NOT NULL,
	"FSCODE" varchar(10) NOT NULL,
	"empcode" varchar(10) NOT NULL,
	"NTYPE" integer NOT NULL,
	"AREACODE" varchar(10) NOT NULL,
	"AREANAME" varchar(50) NOT NULL,
	"FS2" varchar(10) NULL,
	"FS3" varchar(10) NULL,
	"FS4" varchar(10) NULL,
	"FS5" varchar(10) NULL,
	"FS6" varchar(10) NULL,
	"FS7" varchar(10) NULL,
	"FS8" varchar(10) NULL,
	"FS9" varchar(10) NULL,
	"DIVCODE" varchar(10) NULL,
	"FS10" varchar(10) NULL,
	"FS11" varchar(10) NULL,
	"FS12" varchar(10) NULL,
	"FS13" varchar(10) NULL,
	"FS14" varchar(10) NULL,
	"FS15" varchar(10) NULL,
	"FS16" varchar(10) NULL,
	"FS17" varchar(10) NULL,
	"FS18" varchar(10) NULL,
	"FS19" varchar(10) NULL,
	"FS20" varchar(10) NULL,
	"FS21" varchar(10) NULL,
	"FS22" varchar(10) NULL,
	"FS23" varchar(10) NULL,
	"FS24" varchar(10) NULL,
	"FS25" varchar(10) NULL,
	"FS26" varchar(10) NULL,
	"FS27" varchar(10) NULL,
	"FS28" varchar(10) NULL,
	"FS29" varchar(10) NULL,
	"FS30" varchar(10) NULL,
	"FS31" varchar(10) NULL,
	"FS32" varchar(10) NULL,
	"FS33" varchar(10) NULL,
	"FS34" varchar(10) NULL,
	"FS35" varchar(10) NULL,
	"FS36" varchar(10) NULL,
	"FS37" varchar(10) NULL,
	"FS38" varchar(10) NULL,
	"FS39" varchar(10) NULL,
	"FS40" varchar(10) NULL,
	"FS41" varchar(10) NULL,
	"FS42" varchar(10) NULL,
	"FS43" varchar(10) NULL,
	"FS44" varchar(10) NULL,
	"FS45" varchar(10) NULL,
	"FS46" varchar(10) NULL,
	"FS47" varchar(10) NULL,
	"FS48" varchar(10) NULL,
	"FS49" varchar(10) NULL,
	"FS50" varchar(10) NULL
) 
;
/****** Object:  Table "fsheirarchybackup"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "fsheirarchybackup"(
	"FSNAME" varchar(50) NOT NULL,
	"FSCODE" varchar(10) NOT NULL,
	"empcode" varchar(10) NOT NULL,
	"NTYPE" integer NOT NULL,
	"AREACODE" varchar(10) NOT NULL,
	"AREANAME" varchar(50) NOT NULL,
	"FS2" varchar(10) NULL,
	"FS3" varchar(10) NULL,
	"FS4" varchar(10) NULL,
	"FS5" varchar(10) NULL,
	"FS6" varchar(10) NULL,
	"FS7" varchar(10) NULL,
	"FS8" varchar(10) NULL,
	"FS9" varchar(10) NULL,
	"DIVCODE" varchar(10) NULL,
	"FS10" varchar(10) NULL,
	"FS11" varchar(10) NULL,
	"FS12" varchar(10) NULL,
	"FS13" varchar(10) NULL,
	"FS14" varchar(10) NULL,
	"FS15" varchar(10) NULL
) 
;
/****** Object:  Table "fshtemp"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "fshtemp"(
	"FSNAME" varchar(50) NOT NULL,
	"FSCODE" varchar(10) NOT NULL,
	"empcode" varchar(10) NOT NULL,
	"NTYPE" integer NOT NULL,
	"AREACODE" varchar(10) NOT NULL,
	"AREANAME" varchar(50) NOT NULL,
	"FS2" varchar(10) NULL,
	"FS3" varchar(10) NULL,
	"FS4" varchar(10) NULL,
	"FS5" varchar(10) NULL,
	"FS6" varchar(10) NULL,
	"FS7" varchar(10) NULL,
	"FS8" varchar(10) NULL,
	"FS9" varchar(10) NULL,
	"DIVCODE" varchar(10) NULL,
	"FS10" varchar(10) NULL,
	"FS11" varchar(10) NULL,
	"FS12" varchar(10) NULL,
	"FS13" varchar(10) NULL,
	"FS14" varchar(10) NULL,
	"FS15" varchar(10) NULL
) 
;
/****** Object:  Table "fsmsttemp"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "fsmsttemp"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(100) NULL,
	"N_Type" numeric(18, 0) NOT NULL,
	"C_Grade" char(10) NULL,
	"C_Qualification" varchar(30) NULL,
	"C_Add_1" varchar(50) NULL,
	"C_Add_2" varchar(50) NULL,
	"C_Add_3" varchar(50) NULL,
	"C_Add_4" varchar(50) NULL,
	"C_Pin" char(10) NULL,
	"C_Phone" char(20) NULL,
	"C_Fax" char(20) NULL,
	"C_Category" char(10) NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"C_Parent" char(10) NULL,
	"C_EmpNo" varchar(10) NOT NULL,
	"C_Desc" varchar(50) NULL,
	"D_DOB" timestamp NULL,
	"D_DOJ" timestamp NULL,
	"D_DOW" timestamp NULL,
	"n_Status" integer NULL,
	"C_Email_ID" varchar(50) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"N_ptype" integer NULL,
	"c_div_code" varchar(10) NULL
) 
;
/****** Object:  Table "GDNdetails"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "GDNdetails"(
	"C_DEP_CODE" varchar(10) NOT NULL,
	"C_YEAR" char(4) NOT NULL,
	"C_PREFIX" char(10) NOT NULL,
	"N_SRNO" numeric(30, 0) NOT NULL,
	"N_ROW_ID" numeric(18, 0) NOT NULL,
	"C_ITEM_CODE" varchar(10) NULL,
	"C_BATCH_NO" varchar(15) NULL,
	"N_QTY" numeric(18, 0) NULL,
	"N_RATE" numeric(18, 2) NULL
) 
;
/****** Object:  Table "GDNheader"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "GDNheader"(
	"C_DEP_CODE" varchar(10) NOT NULL,
	"C_YEAR" char(4) NOT NULL,
	"C_PREFIX" char(10) NOT NULL,
	"N_SRNO" numeric(30, 0) NOT NULL,
	"D_Date" timestamp NULL,
	"C_FS_CODE" varchar(10) NULL,
	"N_FLG" integer NULL,
	"N_TOTAL" numeric(18, 2) NULL,
	"C_INVOICE" varchar(50) NULL,
	"modidt" timestamp NULL
) 
;
/****** Object:  Table "h_doc"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "h_doc"(
	"custcode" varchar(255) NULL,
	"div" varchar(255) NULL,
	"fscode" varchar(255) NULL,
	"from" timestamp NULL,
	"grade" varchar(255) NULL,
	"n_per" double precision NULL,
	"C_ref_no" varchar(255) NULL
) 
;
/****** Object:  Table "HCP_setup_det"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "HCP_setup_det"(
	"n_srno" integer NULL,
	"n_setup_type" integer NULL,
	"c_mngr_type" varchar(100) NULL,
	"n_multiple_approval" integer NULL,
	"c_confirmator" varchar(50) NULL
) 
;
/****** Object:  Table "heter"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "heter"(
	"doc" varchar(255) NULL,
	"grade" varchar(255) NULL,
	"fscode" varchar(255) NULL,
	"Division" varchar(255) NULL
) 
;
/****** Object:  Table "holiday_map"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "holiday_map"(
	"Regioncode" varchar(255) NULL,
	"Holidaycode" double precision NULL,
	"Date" varchar(255) NULL
) 
;
/****** Object:  Table "HOLIDAYMASTER"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "HOLIDAYMASTER"(
	"NOOFHOLIDAYS" varchar(50) NULL,
	"FSCODE" varchar(50) NULL
) 
;
/****** Object:  Table "HOLYDAYS"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "HOLYDAYS"(
	"NoOfHolidays" varchar(50) NULL,
	"FSCODE" varchar(50) NULL,
	"EMPCODE" varchar(50) NULL
) 
;
/****** Object:  Table "HOLYDAYSS"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "HOLYDAYSS"(
	"EMPCODE" varchar(50) NULL,
	"FSCODE" varchar(50) NULL,
	"NoOfHolidays" timestamp NULL
) 
;
/****** Object:  Table "hospitalmasterbackup17_04_2018"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "hospitalmasterbackup17_04_2018"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(200) NULL,
	"N_Type" integer NOT NULL,
	"C_Grade" varchar(10) NULL,
	"C_Qualification" varchar(50) NULL,
	"C_Add_1" varchar(200) NULL,
	"C_Add_2" varchar(50) NULL,
	"C_Add_3" varchar(50) NULL,
	"C_Add_4" varchar(50) NULL,
	"C_Pin" varchar(10) NULL,
	"C_Phone" varchar(20) NULL,
	"C_Fax" varchar(50) NULL,
	"C_Category" varchar(10) NULL,
	"C_Area_Code" varchar(10) NULL,
	"C_Subarea_Code" varchar(10) NULL,
	"D_DOB" timestamp NULL,
	"D_DOW" timestamp NULL,
	"n_Status" integer NULL,
	"D_Create_Date" timestamp NULL,
	"D_modify_Date" timestamp NULL,
	"C_Email_ID" varchar(50) NULL,
	"C_FsCode" varchar(10) NULL,
	"c_region_code" varchar(10) NULL,
	"n_convert" numeric(9, 0) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(20) NULL,
	"n_lami" double precision NULL,
	"n_lgmi" double precision NULL,
	"c_tin_no" varchar(50) NULL,
	"c_lic_no" varchar(50) NULL,
	"c_contact_name" varchar(50) NULL,
	"n_Sft_shop" numeric(18, 0) NULL,
	"n_No_of_display_Shelf" numeric(9, 0) NULL,
	"c_desc_display_shelf" varchar(100) NULL,
	"n_Front_Board_Height" numeric(9, 2) NULL,
	"n_Front_Board_length" numeric(9, 2) NULL,
	"n_Backlit" smallint NULL,
	"n_Computerised" smallint NULL,
	"c_lic_food" varchar(50) NULL,
	"c_sort" varchar(10) NULL,
	"c_contact_mob" varchar(50) NULL,
	"c_contact_outlet_num" varchar(50) NULL,
	"C_Landmark" varchar(100) NULL,
	"C_Short_Name" varchar(10) NULL,
	"C_Doc_Class" varchar(10) NULL,
	"C_Spousename" varchar(100) NULL,
	"D_SpouseDob" timestamp NULL,
	"C_FName" varchar(50) NULL,
	"C_LName" varchar(50) NULL,
	"n_mcino" varchar(20) NULL,
	"C_HOSPITAL_NAME" varchar(150) NULL,
	"C_STREET_NAME" varchar(150) NULL,
	"C_AREA_NAME" varchar(150) NULL,
	"C_LANDMARK1" varchar(150) NULL,
	"C_CITY" varchar(150) NULL,
	"C_STATE" varchar(150) NULL,
	"C_HOUSE_NAME" varchar(150) NULL,
	"C_STREET_NAME1" varchar(150) NULL,
	"C_AREA_NAME1" varchar(150) NULL,
	"C_LANDMARK2" varchar(150) NULL,
	"C_CITY_1" varchar(150) NULL,
	"N_PATIENTS" varchar(150) NULL,
	"N_CRNTBUSINES" varchar(150) NULL,
	"C_STATE1" varchar(150) NULL,
	"C_PINCODE1" varchar(150) NULL,
	"C_BUSINES_POTENTIAL" varchar(150) NULL,
	"D_CHILD_DOB1" timestamp NULL,
	"D_CHILD_DOB2" timestamp NULL,
	"D_CHILD_DOB3" timestamp NULL,
	"n_age" varchar(10) NULL,
	"C_SPECIALITY" varchar(150) NULL,
	"C_childnname1" varchar(150) NULL,
	"C_childnname2" varchar(150) NULL,
	"C_childnname3" varchar(150) NULL,
	"n_drpurchase" integer NULL,
	"N_drprescription" integer NULL,
	"N_drpotential" varchar(50) NULL,
	"c_landline" varchar(20) NULL,
	"c_middlename" varchar(50) NULL,
	"c_tldl1" varchar(100) NULL,
	"c_tldl2" varchar(100) NULL,
	"c_dlfood1" varchar(100) NULL,
	"c_tldl11" varchar(100) NULL,
	"c_tldl12" varchar(100) NULL,
	"c_dlfood2" varchar(100) NULL,
	"d_DLDate1" timestamp NULL,
	"d_DLDate2" timestamp NULL,
	"c_pan1" varchar(100) NULL,
	"c_pan2" varchar(100) NULL,
	"c_Purchase_manager_Name" varchar(100) NULL,
	"c_Purchase_manager_Mob" varchar(20) NULL,
	"c_Account_Type" varchar(50) NULL,
	"n_visit_freq" integer NULL,
	"n_fridge" integer NULL,
	"c_Institutn_type" varchar(100) NULL,
	"c_Account_Grp" varchar(100) NULL,
	"n_hostel" integer NULL,
	"n_no_of_canteen" integer NULL,
	"c_type_of_food" text NULL,
	"c_Canteen_contr_name" varchar(100) NULL,
	"c_Canteen_contr_addr" varchar(500) NULL,
	"D_agreement_date" timestamp NULL,
	"n_Total_Disc" numeric(5, 2) NULL,
	"D_Total_Disc_From" timestamp NULL,
	"D_Total_Disc_To" timestamp NULL,
	"c_Store_Classification" varchar(100) NULL,
	"n_Store_Type" integer NULL,
	"c_Distributor" varchar(20) NULL,
	"c_store_type" varchar(50) NULL,
	"c_Store_Manager" varchar(50) NULL,
	"c_Distributor_name" varchar(100) NULL,
	"n_active" integer NULL,
	"c_classification" varchar(10) NULL,
	"c_chemisttype" varchar(10) NULL,
	"n_WindowSize" varchar(50) NULL,
	"C_AccountClassfctn" varchar(5) NULL,
	"C_AccountAddress" varchar(100) NULL,
	"C_AccountCode" varchar(10) NULL,
	"n_DaysTo_Activate" integer NULL,
	"d_Start_Date" timestamp NULL,
	"d_activation_Date" timestamp NULL,
	"c_storetype" varchar(50) NULL,
	"c_distributorcode" varchar(50) NULL,
	"c_visitfrequency" varchar(50) NULL,
	"c_classificationcode" varchar(50) NULL,
	"c_stmanager" varchar(50) NULL,
	"C_SA_Classification" varchar(20) NULL,
	"c_Hospital_Code" varchar(50) NULL,
	"C_TypeofHsptl" varchar(300) NULL,
	"C_Area" varchar(100) NULL,
	"C_Inhouse_phar_exist" varchar(100) NULL,
	"C_Fin_Turnover" varchar(100) NULL,
	"C_Potencial" varchar(100) NULL,
	"C_No_of_Beds" varchar(100) NULL,
	"C_No_of_Emer_Beds" varchar(100) NULL,
	"C_No_of_Critic_ICU_Beds" varchar(100) NULL,
	"C_No_of_Sur_Theaters" varchar(100) NULL,
	"C_Hospital" varchar(100) NULL,
	"C_Tot_No_of_Doctors" varchar(100) NULL,
	"C_Pur_Mgr_Name" varchar(100) NULL,
	"C_Pur_Mgr__Contact" varchar(100) NULL,
	"C_Stk_Inchrg_Name" varchar(100) NULL,
	"C_Stk_Inchrg_Contact" varchar(100) NULL,
	"C_Fin_Ofcr_Name" varchar(100) NULL,
	"C_Fin_Ofcr_Contact" varchar(100) NULL,
	"C_No_of_Thrputc_Group" varchar(100) NULL,
	"C_Techng_Institution" varchar(100) NULL,
	"C_Gstno" varchar(50) NULL,
	"c_docmstpan" varchar(10) NULL,
	"c_classtype" varchar(10) NULL,
	"n_SASCollection" integer NULL
) 
;
/****** Object:  Table "icon_update_stp"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "icon_update_stp"(
	"Region Name" varchar(255) NULL,
	"STPNo" double precision NULL,
	"FS CODE" varchar(255) NULL,
	"division" varchar(255) NULL,
	"FS NAME" varchar(255) NULL,
	"HQ CODE" varchar(255) NULL,
	"HQ NAME" varchar(255) NULL,
	"Based At Code" varchar(255) NULL,
	"Based At Name" varchar(255) NULL,
	"STP Date From" timestamp NULL,
	"STP Date To" timestamp NULL,
	"HQDA" double precision NULL,
	"EXDA" double precision NULL,
	"OSDA" double precision NULL,
	"TAType" double precision NULL,
	"RateKM" double precision NULL,
	"distnace" double precision NULL,
	"TA" double precision NULL,
	"From Area Code" varchar(255) NULL,
	"From Area Name" varchar(255) NULL,
	"ToAreaCode" varchar(255) NULL,
	"ToAreaname" varchar(255) NULL,
	"A grade doct count" double precision NULL,
	"B grade doctor count" double precision NULL,
	"workingdays" double precision NULL,
	"chemist count" double precision NULL,
	"stockiest count" double precision NULL,
	"curent business" double precision NULL,
	"expected business" double precision NULL,
	"AreaType" varchar(255) NULL,
	"Areatype1" double precision NULL
) 
;
/****** Object:  Table "LEAVEDETAILS"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "LEAVEDETAILS"(
	"EMPCODE" varchar(50) NULL,
	"FSCODE" varchar(50) NULL,
	"LEAVEDAYS" varchar(50) NULL
) 
;
/****** Object:  Table "LEAVEMASTER"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "LEAVEMASTER"(
	"EMPCODE" varchar(50) NULL,
	"FSCODE" varchar(50) NULL,
	"LEAVEDAYS" varchar(50) NULL
) 
;
/****** Object:  Table "mclinsertion"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "mclinsertion"(
	"data" varchar(1000) NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "megh_doct"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "megh_doct"(
	"code" varchar(255) NULL,
	"Firstname" varchar(255) NULL,
	"Middlename" varchar(255) NULL,
	"Lastname" varchar(255) NULL,
	"gradecode" varchar(255) NULL,
	"qualification" varchar(255) NULL,
	"Clinic/Hospital Name" varchar(255) NULL,
	"Street Name" varchar(255) NULL,
	"Area" varchar(255) NULL,
	"Landmark" varchar(255) NULL,
	"City" double precision NULL,
	"State" varchar(255) NULL,
	"pin" varchar(255) NULL,
	"House/Building Name" varchar(255) NULL,
	"Street Name1" varchar(255) NULL,
	"Area1" timestamp NULL,
	"Landmark1" varchar(255) NULL,
	"City1" varchar(255) NULL,
	"State1" varchar(255) NULL,
	"pin1" varchar(255) NULL,
	"Mobileno " varchar(255) NULL,
	"Landno" varchar(255) NULL,
	"referenceno" varchar(255) NULL,
	"categorycode" varchar(255) NULL,
	"subareacode" varchar(255) NULL,
	"Age" varchar(255) NULL,
	"dob" varchar(255) NULL,
	"dow" varchar(255) NULL,
	"email" timestamp NULL,
	"fscode" varchar(255) NULL,
	"divcode" varchar(255) NULL,
	"LAT" varchar(255) NULL,
	"LONG" varchar(255) NULL,
	"Class" varchar(255) NULL,
	"Spousename" varchar(255) NULL,
	"SpouseDOB" varchar(255) NULL,
	"Drregno" varchar(255) NULL,
	"Speciality As Per Practice" varchar(255) NULL,
	"No Of Patients Per Day" varchar(255) NULL,
	"Current Business" varchar(255) NULL,
	"Business Potential" varchar(255) NULL,
	"Doctor Potential" varchar(255) NULL,
	"Is doctor Purchasing" varchar(255) NULL,
	"Is doctor Prescribing" varchar(255) NULL,
	"Child1 Name" varchar(255) NULL,
	"Child1 Dob" varchar(255) NULL,
	"Child2 Name" varchar(255) NULL,
	"Child2 Dob" varchar(255) NULL,
	"Child3 Name" varchar(255) NULL,
	"Child3 Dob" varchar(255) NULL
) 
;
/****** Object:  Table "megh_sht"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "megh_sht"(
	"code" varchar(255) NULL,
	"Firstname" varchar(255) NULL,
	"Lastname" varchar(255) NULL
) 
;
/****** Object:  Table "meghbkp"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "meghbkp"(
	"N_Type" numeric(18, 0) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"c_sh_name" varchar(10) NULL,
	"n_CI_FLag" smallint NULL,
	"n_fs_flag" smallint NULL,
	"c_gadgetcode" varchar(50) NULL
) 
;
/****** Object:  Table "meghbkp1"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "meghbkp1"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"N_Type" numeric(18, 0) NOT NULL,
	"C_Grade" char(10) NULL,
	"C_Qualification" varchar(30) NULL,
	"C_Add_1" varchar(50) NULL,
	"C_Add_2" varchar(50) NULL,
	"C_Add_3" varchar(50) NULL,
	"C_Add_4" varchar(50) NULL,
	"C_Pin" char(10) NULL,
	"C_Phone" char(20) NULL,
	"C_Fax" char(20) NULL,
	"C_Category" char(10) NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"C_Parent" char(10) NULL,
	"C_EmpNo" varchar(10) NOT NULL,
	"C_Desc" varchar(50) NULL,
	"D_DOB" timestamp NULL,
	"D_DOJ" timestamp NULL,
	"D_DOW" timestamp NULL,
	"n_Status" integer NULL,
	"C_Email_ID" varchar(50) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"N_ptype" integer NULL,
	"c_div_code" varchar(10) NULL
) 
;
/****** Object:  Table "meghdoc1"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "meghdoc1"(
	"code" varchar(255) NULL,
	"Firstname" varchar(255) NULL,
	"Middlename" varchar(255) NULL,
	"Lastname" varchar(255) NULL,
	"gradecode" varchar(255) NULL,
	"qualification" varchar(255) NULL,
	"Clinic/Hospital Name" varchar(255) NULL,
	"Street Name" varchar(255) NULL,
	"Area" varchar(255) NULL,
	"Landmark" varchar(255) NULL,
	"City" varchar(255) NULL,
	"State" varchar(255) NULL,
	"pin" varchar(255) NULL,
	"House/Building Name" varchar(255) NULL,
	"Street Name1" varchar(255) NULL,
	"Area1" varchar(255) NULL,
	"Landmark1" varchar(255) NULL,
	"City1" varchar(255) NULL,
	"State1" varchar(255) NULL,
	"pin1" varchar(255) NULL,
	"Mobileno " varchar(255) NULL,
	"Landno" varchar(255) NULL,
	"referenceno" varchar(255) NULL,
	"categorycode" varchar(255) NULL,
	"subareacode" varchar(255) NULL,
	"Age" varchar(255) NULL,
	"dob" varchar(255) NULL,
	"dow" varchar(255) NULL,
	"email" varchar(255) NULL,
	"fscode" varchar(255) NULL,
	"divcode" varchar(255) NULL,
	"LAT" varchar(255) NULL,
	"LONG" varchar(255) NULL,
	"Class" varchar(255) NULL,
	"Spousename" varchar(255) NULL,
	"SpouseDOB" varchar(255) NULL,
	"Drregno" varchar(255) NULL,
	"Speciality As Per Practice" varchar(255) NULL,
	"No Of Patients Per Day" varchar(255) NULL,
	"Current Business" varchar(255) NULL,
	"Business Potential" varchar(255) NULL,
	"Doctor Potential" varchar(255) NULL,
	"Is doctor Purchasing" varchar(255) NULL,
	"Is doctor Prescribing" varchar(255) NULL,
	"Child1 Name" varchar(255) NULL,
	"Child1 Dob" varchar(255) NULL,
	"Child2 Name" varchar(255) NULL,
	"Child2 Dob" varchar(255) NULL,
	"Child3 Name" varchar(255) NULL,
	"Child3 Dob" varchar(255) NULL
) 
;
/****** Object:  Table "meghdoc12"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "meghdoc12"(
	"doc" varchar(255) NULL,
	"fs" varchar(255) NULL,
	"div" varchar(255) NULL
) 
;
/****** Object:  Table "meghdoc3"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "meghdoc3"(
	"Doctor code " varchar(255) NULL,
	"Fs name " varchar(255) NULL,
	"division" varchar(255) NULL
) 
;
/****** Object:  Table "meghdoc5"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "meghdoc5"(
	"code" varchar(255) NULL,
	"Firstname" varchar(255) NULL,
	"Middlename" varchar(255) NULL,
	"Lastname" varchar(255) NULL,
	"gradecode" varchar(255) NULL,
	"qualification" varchar(255) NULL,
	"Clinic/Hospital Name" varchar(255) NULL,
	"Street Name" varchar(255) NULL,
	"Area" varchar(255) NULL,
	"Landmark" varchar(255) NULL,
	"City" varchar(255) NULL,
	"State" varchar(255) NULL,
	"pin" varchar(255) NULL,
	"House/Building Name" varchar(255) NULL,
	"Street Name1" varchar(255) NULL,
	"Area1" varchar(255) NULL,
	"Landmark1" varchar(255) NULL,
	"City1" varchar(255) NULL,
	"State1" varchar(255) NULL,
	"pin1" varchar(255) NULL,
	"Mobileno " varchar(255) NULL,
	"Landno" varchar(255) NULL,
	"referenceno" varchar(255) NULL,
	"categorycode" varchar(255) NULL,
	"subareacode" varchar(255) NULL,
	"Age" varchar(255) NULL,
	"dob" varchar(255) NULL,
	"dow" varchar(255) NULL,
	"email" varchar(255) NULL,
	"fscode" varchar(255) NULL,
	"divcode" varchar(255) NULL,
	"LAT" varchar(255) NULL,
	"LONG" varchar(255) NULL,
	"Class" varchar(255) NULL,
	"Spousename" varchar(255) NULL,
	"SpouseDOB" varchar(255) NULL,
	"Drregno" double precision NULL,
	"Speciality As Per Practice" varchar(255) NULL,
	"No Of Patients Per Day" varchar(255) NULL,
	"Current Business" varchar(255) NULL,
	"Business Potential" varchar(255) NULL,
	"Doctor Potential" varchar(255) NULL,
	"Is doctor Purchasing" varchar(255) NULL,
	"Is doctor Prescribing" varchar(255) NULL,
	"Child1 Name" varchar(255) NULL,
	"Child1 Dob" varchar(255) NULL,
	"Child2 Name" varchar(255) NULL,
	"Child2 Dob" varchar(255) NULL,
	"Child3 Name" varchar(255) NULL,
	"Child3 Dob" varchar(255) NULL
) 
;
/****** Object:  Table "meghdoco"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "meghdoco"(
	"code" varchar(255) NULL,
	"Firstname" varchar(255) NULL,
	"Middlename" varchar(255) NULL,
	"Lastname" varchar(255) NULL,
	"gradecode" varchar(255) NULL,
	"qualification" varchar(255) NULL,
	"Clinic/Hospital Name" varchar(255) NULL,
	"Street Name" varchar(255) NULL,
	"Area" varchar(255) NULL,
	"Landmark" varchar(255) NULL,
	"City" varchar(255) NULL,
	"State" varchar(255) NULL,
	"pin" varchar(255) NULL,
	"House/Building Name" varchar(255) NULL,
	"Street Name1" varchar(255) NULL,
	"Area1" varchar(255) NULL,
	"Landmark1" varchar(255) NULL,
	"City1" varchar(255) NULL,
	"State1" varchar(255) NULL,
	"pin1" varchar(255) NULL,
	"Mobileno " varchar(255) NULL,
	"Landno" varchar(255) NULL,
	"referenceno" varchar(255) NULL,
	"categorycode" varchar(255) NULL,
	"subareacode" varchar(255) NULL,
	"Age" varchar(255) NULL,
	"dob" varchar(255) NULL,
	"dow" varchar(255) NULL,
	"email" varchar(255) NULL,
	"fscode" varchar(255) NULL,
	"divcode" varchar(255) NULL,
	"LAT" varchar(255) NULL,
	"LONG" varchar(255) NULL,
	"Class" varchar(255) NULL,
	"Spousename" varchar(255) NULL,
	"SpouseDOB" varchar(255) NULL,
	"Drregno" varchar(255) NULL,
	"Speciality As Per Practice" varchar(255) NULL,
	"No Of Patients Per Day" varchar(255) NULL,
	"Current Business" varchar(255) NULL,
	"Business Potential" varchar(255) NULL,
	"Doctor Potential" varchar(255) NULL,
	"Is doctor Purchasing" varchar(255) NULL,
	"Is doctor Prescribing" varchar(255) NULL,
	"Child1 Name" varchar(255) NULL,
	"Child1 Dob" varchar(255) NULL,
	"Child2 Name" varchar(255) NULL,
	"Child2 Dob" varchar(255) NULL,
	"Child3 Name" varchar(255) NULL,
	"Child3 Dob" varchar(255) NULL
) 
;
/****** Object:  Table "meghsht7"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "meghsht7"(
	"doc" varchar(255) NULL,
	"mci" double precision NULL
) 
;
/****** Object:  Table "meghsht8"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "meghsht8"(
	"doc" varchar(255) NULL,
	"mci" double precision NULL
) 
;
/****** Object:  Table "meghstp"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "meghstp"(
	"Fs Name " varchar(255) NULL,
	"from" varchar(255) NULL,
	"area to visit " varchar(255) NULL,
	"type " varchar(255) NULL,
	"wrky dys " double precision NULL,
	"dis " double precision NULL,
	"ta " double precision NULL
) 
;
/****** Object:  Table "meghty"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "meghty"(
	"doc" varchar(255) NULL,
	"fs" varchar(255) NULL,
	"div" varchar(255) NULL
) 
;
/****** Object:  Table "meghtyr"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "meghtyr"(
	"fscode" varchar(255) NULL,
	"FROM " varchar(255) NULL,
	"area" varchar(255) NULL,
	"TYPE " double precision NULL,
	"wrkg" double precision NULL,
	"DIS " double precision NULL,
	"ta" double precision NULL
) 
;
/****** Object:  Table "mgh"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "mgh"(
	"doc" varchar(50) NULL,
	"name" varchar(50) NULL,
	"mci" varchar(50) NULL
) 
;
/****** Object:  Table "mktheirarchy"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "mktheirarchy"(
	"FSNAME" varchar(50) NOT NULL,
	"FSCODE" varchar(10) NOT NULL,
	"empcode" varchar(10) NOT NULL,
	"NTYPE" integer NOT NULL,
	"AREACODE" varchar(10) NOT NULL,
	"AREANAME" varchar(50) NOT NULL,
	"FS2" varchar(10) NULL,
	"FS3" varchar(10) NULL,
	"FS4" varchar(10) NULL,
	"FS5" varchar(10) NULL,
	"FS6" varchar(10) NULL,
	"FS7" varchar(10) NULL,
	"FS8" varchar(10) NULL,
	"FS9" varchar(10) NULL,
 CONSTRAINT "PK_mktheirarchy" PRIMARY KEY  
(
	"FSCODE" 
) 
) 
;
/****** Object:  Table "mob_ErrorLog"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "mob_ErrorLog"(
	"ErrorLogID" SERIAL NOT NULL,
	"ErrorTime" timestamp NOT NULL,
	"UserName" varchar(128) NOT NULL,
	"ErrorProcedure" text NULL,
	"ErrorMessage" text NOT NULL
) 
;
/****** Object:  Table "mreported"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "mreported"(
	"division" varchar(50) NULL,
	"designation" varchar(50) NULL,
	"totalcount" varchar(50) NULL,
	"total" varchar(50) NULL,
	"vacant" varchar(50) NULL,
	"reported" varchar(50) NULL
) 
;
/****** Object:  Table "mtotal"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "mtotal"(
	"division" varchar(50) NULL,
	"designation" varchar(50) NULL,
	"totalcount" varchar(50) NULL,
	"total" varchar(50) NULL,
	"vacant" varchar(50) NULL,
	"reported" varchar(50) NULL
) 
;
/****** Object:  Table "mtpdetailsbackup"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "mtpdetailsbackup"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowId" numeric(18, 0) NOT NULL,
	"N_dayof_week" varchar(20) NOT NULL,
	"n_week" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" numeric(18, 0) NOT NULL,
	"C_Mode" char(10) NOT NULL,
	"N_DocVst" numeric(18, 0) NULL,
	"N_ChemVst" numeric(18, 0) NULL,
	"N_StkVst" numeric(18, 0) NULL,
	"C_Subarea_Note" varchar(100) NULL,
	"c_subarea_code" varchar(10) NOT NULL,
	"c_work_type" varchar(10) NULL,
	"c_work_with" varchar(50) NULL,
	"N_OtherVst" numeric(18, 0) NULL,
	"c_fs_code" varchar(10) NULL
) 
;
/****** Object:  Table "mvacant"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "mvacant"(
	"division" varchar(50) NULL,
	"designation" varchar(50) NULL,
	"totalcount" varchar(50) NULL,
	"total" varchar(50) NULL,
	"vacant" varchar(50) NULL,
	"reported" varchar(50) NULL
) 
;
/****** Object:  Table "mydadaa"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "mydadaa"(
	"Code" varchar(50) NULL,
	"Specialization" varchar(50) NULL,
	"DoctorName" varchar(50) NULL,
	"HQ" varchar(50) NULL,
	"Region" varchar(50) NULL,
	"GRADE" varchar(50) NULL,
	"FSName" varchar(50) NULL,
	"Division" varchar(50) NULL
) 
;
/****** Object:  Table "NewWorkedRpt"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "NewWorkedRpt"(
	"Empcode" varchar(50) NULL,
	"DIVISION" varchar(50) NULL,
	"REGION" varchar(50) NULL,
	"FSCODE" varchar(50) NULL,
	"FSNAME" varchar(50) NULL,
	"HQ" varchar(50) NULL,
	"REPORTINGMANAGER" varchar(50) NULL,
	"PREVDAYSTATUS" varchar(50) NULL,
	"PREVDAYCALLS" varchar(50) NULL,
	"WORKINGDAYS" varchar(50) NULL,
	"WORKDDAYS" varchar(50) NULL,
	"VISITEDDOCTORS" integer NULL,
	"CALLAVG" varchar(50) NULL,
	"LEAVEDAYS" varchar(50) NULL,
	"HOLIDAYS" varchar(50) NULL,
	"Dayscnt" integer NULL
) 
;
/****** Object:  Table "notreported"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "notreported"(
	"DIVISION" varchar(50) NULL,
	"DIVISIONC" varchar(50) NULL,
	"REGION" varchar(50) NULL,
	"HQ" varchar(50) NULL,
	"EMPCODE" varchar(50) NULL,
	"FSCODE" varchar(50) NULL,
	"FSNAME" varchar(50) NULL,
	"DESIGNATION" varchar(50) NULL
) 
;
/****** Object:  Table "present"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "present"(
	"EmpCode" varchar(50) NULL,
	"Division" varchar(100) NULL,
	"Docs" varchar(100) NULL
) 
;
/****** Object:  Table "Prev_day_rpt"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Prev_day_rpt"(
	"C_Fs_Code" varchar(10) NULL,
	"Attendance" varchar(50) NULL,
	"WorkType" varchar(50) NULL
) 
;
/****** Object:  Table "PrevDayStatus"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "PrevDayStatus"(
	"EmpCode" varchar(20) NULL,
	"Stat" varchar(20) NULL,
	"visitedDocs" varchar(50) NULL
) 
;
/****** Object:  Table "PrevDayStatuss"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "PrevDayStatuss"(
	"EmpCode" varchar(20) NULL,
	"Stat" varchar(20) NULL,
	"visitedDocs" varchar(50) NULL
) 
;
/****** Object:  Table "Previousdaycalls"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Previousdaycalls"(
	"C_FS_Code" varchar(50) NULL,
	"Prevdaycalls" varchar(50) NULL
) 
;
/****** Object:  Table "productmappinglog"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "productmappinglog"(
	"fstype" varchar(50) NULL,
	"itm" text NULL,
	"div" varchar(50) NULL
) 
;
/****** Object:  Table "quali"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "quali"(
	"C_Code" varchar(100) NOT NULL,
	"C_Name" varchar(100) NULL,
	"C_Sh_Name" varchar(7) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL
) 
;
/****** Object:  Table "repp"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "repp"(
	"division" varchar(50) NULL,
	"region" varchar(50) NULL,
	"hq" varchar(50) NULL,
	"designation" varchar(50) NULL,
	"total" integer NULL,
	"notreported" integer NULL,
	"vacant" integer NULL
) 
;
/****** Object:  Table "REPPP"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "REPPP"(
	"DIVISION" varchar(50) NULL,
	"REGION" varchar(50) NULL,
	"HQ" varchar(50) NULL,
	"DESIGNATION" varchar(50) NULL,
	"TOTAL" varchar(50) NULL,
	"NOTREPORTED" varchar(50) NULL,
	"VACANT" varchar(50) NULL,
	"REPORTED" varchar(50) NULL
) 
;
/****** Object:  Table "sa_cls"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "sa_cls"(
	"doctors code" varchar(255) NULL,
	"fs code" varchar(255) NULL,
	"date" timestamp NULL
) 
;
/****** Object:  Table "sa_doc"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "sa_doc"(
	"Doctors Code" varchar(255) NULL,
	"FS Code" varchar(255) NULL
) 
;
/****** Object:  Table "sa_doc08"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "sa_doc08"(
	"custcode" varchar(255) NULL,
	"divcode" varchar(255) NULL,
	"fscode" varchar(255) NULL,
	"fromdate" timestamp NULL,
	"grade" varchar(255) NULL,
	"todate" timestamp NULL,
	"n_per" double precision NULL
) 
;
/****** Object:  Table "sa_doc3"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "sa_doc3"(
	"DocCode" varchar(255) NULL,
	"SubAreaCode" varchar(255) NULL,
	"areacode" varchar(255) NULL,
	"region code" varchar(255) NULL
) 
;
/****** Object:  Table "Sa_update_stp"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Sa_update_stp"(
	"Division" varchar(255) NULL,
	"Region Name" varchar(255) NULL,
	"STPNo" double precision NULL,
	"FS CODE" varchar(255) NULL,
	"FS NAME" varchar(255) NULL,
	"HQ CODE" varchar(255) NULL,
	"HQ NAME" varchar(255) NULL,
	"Based At Code" varchar(255) NULL,
	"Based At Name" varchar(255) NULL,
	"STP Date From" timestamp NULL,
	"STP Date To" timestamp NULL,
	"HQDA" double precision NULL,
	"EXDA" double precision NULL,
	"OSDA" double precision NULL,
	"TAType" double precision NULL,
	"RateKM" double precision NULL,
	"distnace" double precision NULL,
	"TA" double precision NULL,
	"From Area Code" varchar(255) NULL,
	"From Area Name" varchar(255) NULL,
	"ToAreaCode" varchar(255) NULL,
	"ToAreaname" varchar(255) NULL
) 
;
/****** Object:  Table "sa_updatedoc"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "sa_updatedoc"(
	"DOCCODE" varchar(255) NULL,
	"SUBAREA CODE" varchar(255) NULL
) 
;
/****** Object:  Table "Sheet1$"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Sheet1$"(
	"CODE " varchar(255) NULL,
	"PRESENT NAME" varchar(255) NULL,
	"F3" varchar(255) NULL,
	"CODE 1" varchar(255) NULL,
	"MERGE NAME" varchar(255) NULL
) 
;
/****** Object:  Table "SMS_Email_Send_Report_Logs"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "SMS_Email_Send_Report_Logs"(
	"n_srno" SERIAL NOT NULL,
	"n_sms_srno" integer NULL,
	"c_emp_id" varchar(50) NULL,
	"c_email_id" varchar(50) NULL,
	"d_send_on" timestamp NULL,
PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "sreported"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "sreported"(
	"division" varchar(50) NULL,
	"region" varchar(50) NULL,
	"designation" varchar(50) NULL,
	"totalcount" varchar(50) NULL,
	"total" varchar(50) NULL,
	"vacant" varchar(50) NULL,
	"reported" varchar(50) NULL
) 
;
/****** Object:  Table "St"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "St"(
	"Region Name" varchar(255) NULL,
	"STPNo" double precision NULL,
	"rowid" double precision NULL,
	"Division" varchar(255) NULL,
	"FS CODE" varchar(255) NULL,
	"FS NAME" varchar(255) NULL,
	"HQ CODE" varchar(255) NULL,
	"HQ NAME" varchar(255) NULL,
	"Based At Code" varchar(255) NULL,
	"Based At Name" varchar(255) NULL,
	"STP Date From" timestamp NULL,
	"STP Date To" timestamp NULL,
	"HQDA" double precision NULL,
	"EXDA" double precision NULL,
	"OSDA" double precision NULL,
	"TAType" double precision NULL,
	"RateKM" double precision NULL,
	"From Area Code" varchar(255) NULL,
	"From Area Name" varchar(255) NULL,
	"ToAreaCode" varchar(255) NULL,
	"ToAreaname" varchar(255) NULL,
	"A grade doct count" double precision NULL,
	"B grade doctor count" double precision NULL,
	"chemist count" double precision NULL,
	"stockiest count" double precision NULL,
	"curent business" double precision NULL,
	"expected business" double precision NULL,
	"AreaType" varchar(255) NULL,
	"Distance" double precision NULL,
	"TA" double precision NULL
) 
;
/****** Object:  Table "std"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "std"(
	"Region Name" varchar(255) NULL,
	"STPNo" double precision NULL,
	"rowid" double precision NULL,
	"Division" varchar(255) NULL,
	"FS CODE" varchar(255) NULL,
	"FS NAME" varchar(255) NULL,
	"HQ CODE" varchar(255) NULL,
	"HQ NAME" varchar(255) NULL,
	"Based At Code" varchar(255) NULL,
	"Based At Name" varchar(255) NULL,
	"STP Date From" timestamp NULL,
	"STP Date To" timestamp NULL,
	"HQDA" double precision NULL,
	"EXDA" double precision NULL,
	"OSDA" double precision NULL,
	"TAType" double precision NULL,
	"RateKM" double precision NULL,
	"From Area Code" varchar(255) NULL,
	"From Area Name" varchar(255) NULL,
	"ToAreaCode" varchar(255) NULL,
	"ToAreaname" varchar(255) NULL,
	"A grade doct count" double precision NULL,
	"B grade doctor count" double precision NULL,
	"chemist count" double precision NULL,
	"stockiest count" double precision NULL,
	"curent business" double precision NULL,
	"expected business" double precision NULL,
	"AreaType" varchar(255) NULL,
	"Distance" double precision NULL,
	"TA" double precision NULL
) 
;
/****** Object:  Table "stotal"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stotal"(
	"division" varchar(50) NULL,
	"region" varchar(50) NULL,
	"designation" varchar(50) NULL,
	"totalcount" varchar(50) NULL,
	"total" varchar(50) NULL,
	"vacant" varchar(50) NULL,
	"reported" varchar(50) NULL
) 
;
/****** Object:  Table "Stp"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Stp"(
	"Region Name" varchar(255) NULL,
	"STPNo" double precision NULL,
	"rowid" double precision NULL,
	"Division" varchar(255) NULL,
	"FS CODE" varchar(255) NULL,
	"FS NAME" varchar(255) NULL,
	"HQ CODE" varchar(255) NULL,
	"HQ NAME" varchar(255) NULL,
	"Based At Code" varchar(255) NULL,
	"Based At Name" varchar(255) NULL,
	"STP Date From" timestamp NULL,
	"STP Date To" timestamp NULL,
	"HQDA" double precision NULL,
	"EXDA" double precision NULL,
	"OSDA" double precision NULL,
	"TAType" double precision NULL,
	"RateKM" double precision NULL,
	"From Area Code" varchar(255) NULL,
	"From Area Name" varchar(255) NULL,
	"ToAreaCode" varchar(255) NULL,
	"ToAreaname" varchar(255) NULL,
	"A grade doct count" double precision NULL,
	"B grade doctor count" double precision NULL,
	"chemist count" double precision NULL,
	"stockiest count" double precision NULL,
	"curent business" double precision NULL,
	"expected business" double precision NULL,
	"AreaType" varchar(255) NULL,
	"Distance" double precision NULL,
	"TA" double precision NULL
) 
;
/****** Object:  Table "stp_2023"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stp_2023"(
	"Region Name" varchar(255) NULL,
	"STPNo" double precision NULL,
	"rowid" double precision NULL,
	"Division" varchar(255) NULL,
	"FS CODE" varchar(255) NULL,
	"FS NAME" varchar(255) NULL,
	"HQ CODE" varchar(255) NULL,
	"HQ NAME" varchar(255) NULL,
	"Based At Code" varchar(255) NULL,
	"Based At Name" varchar(255) NULL,
	"STP Date From" timestamp NULL,
	"STP Date To" timestamp NULL,
	"HQDA" double precision NULL,
	"EXDA" double precision NULL,
	"OSDA" double precision NULL,
	"TAType" double precision NULL,
	"RateKM" double precision NULL,
	"From Area Code" varchar(255) NULL,
	"From Area Name" varchar(255) NULL,
	"ToAreaCode" varchar(255) NULL,
	"ToAreaname" varchar(255) NULL,
	"A grade doct count" double precision NULL,
	"B grade doctor count" double precision NULL,
	"chemist count" double precision NULL,
	"stockiest count" double precision NULL,
	"curent business" double precision NULL,
	"expected business" double precision NULL,
	"AreaType" varchar(255) NULL,
	"Distance" double precision NULL,
	"TA" double precision NULL
) 
;
/****** Object:  Table "stp_details"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stp_details"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" integer NULL,
	"N_Distance" numeric(10, 2) NULL,
	"N_Ta" numeric(19, 2) NULL,
	"n_Cur_Business" numeric(19, 2) NULL,
	"n_Exp_Business" numeric(19, 2) NULL,
	"N_Doc_Visit_A" integer NULL,
	"N_Doc_Visit_B" integer NULL,
	"C_Area_From" char(10) NULL,
	"N_Chem_Visit" integer NULL,
	"N_Stk_Visit" integer NULL,
	"C_Subarea_code_From" varchar(10) NOT NULL,
	"C_Subarea_code_to" varchar(10) NOT NULL,
	"n_wkg_days" integer NULL,
	"N_Transit_Days" integer NULL,
	"N_MMIDistance" numeric(10, 2) NULL,
	"c_MMIMapLink" varchar(5000) NULL
) 
;
/****** Object:  Table "stp_header"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stp_header"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"d_modified" timestamp NULL,
	"N_DA_OTHER" numeric(18, 2) NULL
) 
;
/****** Object:  Table "stp_update"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stp_update"(
	"Region Name" varchar(255) NULL,
	"STPNo" double precision NULL,
	"FS CODE" varchar(255) NULL,
	"division" varchar(255) NULL,
	"FS NAME" varchar(255) NULL,
	"HQ CODE" varchar(255) NULL,
	"HQ NAME" varchar(255) NULL,
	"Based At Code" varchar(255) NULL,
	"Based At Name" varchar(255) NULL,
	"STP Date From" timestamp NULL,
	"STP Date To" timestamp NULL,
	"HQDA" double precision NULL,
	"EXDA" double precision NULL,
	"OSDA" double precision NULL,
	"TAType" double precision NULL,
	"RateKM" double precision NULL,
	"distnace" double precision NULL,
	"TA" double precision NULL,
	"From Area Code" varchar(255) NULL,
	"From Area Name" varchar(255) NULL,
	"ToAreaCode" varchar(255) NULL,
	"ToAreaname" varchar(255) NULL,
	"A grade doct count" double precision NULL,
	"B grade doctor count" double precision NULL,
	"workingdays" double precision NULL,
	"chemist count" double precision NULL,
	"stockiest count" double precision NULL,
	"curent business" double precision NULL,
	"expected business" double precision NULL,
	"AreaType" varchar(255) NULL,
	"areatype1" double precision NULL
) 
;
/****** Object:  Table "stp03_04_2018"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stp03_04_2018"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" integer NULL,
	"N_Distance" numeric(10, 2) NULL,
	"N_Ta" numeric(19, 2) NULL,
	"n_Cur_Business" numeric(19, 2) NULL,
	"n_Exp_Business" numeric(19, 2) NULL,
	"N_Doc_Visit_A" integer NULL,
	"N_Doc_Visit_B" integer NULL,
	"C_Area_From" char(10) NULL,
	"N_Chem_Visit" integer NULL,
	"N_Stk_Visit" integer NULL,
	"C_Subarea_code_From" varchar(10) NOT NULL,
	"C_Subarea_code_to" varchar(10) NOT NULL,
	"n_wkg_days" integer NULL,
	"N_Transit_Days" integer NULL,
	"N_MMIDistance" numeric(10, 2) NULL,
	"c_MMIMapLink" varchar(5000) NULL
) 
;
/****** Object:  Table "Stp09082023"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Stp09082023"(
	"Region Name" varchar(255) NULL,
	"STPNo" double precision NULL,
	"rowid" double precision NULL,
	"Division" varchar(255) NULL,
	"FS CODE" varchar(255) NULL,
	"FS NAME" varchar(255) NULL,
	"HQ CODE" varchar(255) NULL,
	"HQ NAME" varchar(255) NULL,
	"Based At Code" varchar(255) NULL,
	"Based At Name" varchar(255) NULL,
	"HQDA" double precision NULL,
	"EXDA" double precision NULL,
	"OSDA" double precision NULL,
	"TAType" double precision NULL,
	"RateKM" double precision NULL,
	"From Area Code" varchar(255) NULL,
	"From Area Name" varchar(255) NULL,
	"ToAreaCode" varchar(255) NULL,
	"ToAreaname" varchar(255) NULL,
	"AreaType" varchar(255) NULL,
	"Distance" double precision NULL,
	"TA" double precision NULL
) 
;
/****** Object:  Table "Stp5"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Stp5"(
	"Region Name" varchar(255) NULL,
	"STPNo" double precision NULL,
	"rowid" double precision NULL,
	"Division" varchar(255) NULL,
	"FS CODE" varchar(255) NULL,
	"FS NAME" varchar(255) NULL,
	"HQ CODE" varchar(255) NULL,
	"HQ NAME" varchar(255) NULL,
	"Based At Code" varchar(255) NULL,
	"Based At Name" varchar(255) NULL,
	"STP Date From" timestamp NULL,
	"STP Date To" timestamp NULL,
	"HQDA" double precision NULL,
	"EXDA" double precision NULL,
	"OSDA" double precision NULL,
	"TAType" double precision NULL,
	"RateKM" double precision NULL,
	"From Area Code" varchar(255) NULL,
	"From Area Name" varchar(255) NULL,
	"ToAreaCode" varchar(255) NULL,
	"ToAreaname" varchar(255) NULL,
	"A grade doct count" double precision NULL,
	"B grade doctor count" double precision NULL,
	"chemist count" double precision NULL,
	"stockiest count" double precision NULL,
	"curent business" double precision NULL,
	"expected business" double precision NULL,
	"AreaType" varchar(255) NULL,
	"Distance" double precision NULL,
	"TA" double precision NULL
) 
;
/****** Object:  Table "stpbackup"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpbackup"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"d_modified" timestamp NULL,
	"N_DA_OTHER" numeric(18, 2) NULL
) 
;
/****** Object:  Table "stpbackup01_12_2017"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpbackup01_12_2017"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"d_modified" timestamp NULL,
	"N_DA_OTHER" numeric(18, 2) NULL
) 
;
/****** Object:  Table "stpbackup2020"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpbackup2020"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"d_modified" timestamp NULL,
	"N_DA_OTHER" numeric(18, 2) NULL,
	"n_tempsrno" integer NULL
) 
;
/****** Object:  Table "stpbackupdetails2017"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpbackupdetails2017"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" integer NULL,
	"N_Distance" numeric(10, 2) NULL,
	"N_Ta" numeric(19, 2) NULL,
	"n_Cur_Business" numeric(19, 2) NULL,
	"n_Exp_Business" numeric(19, 2) NULL,
	"N_Doc_Visit_A" integer NULL,
	"N_Doc_Visit_B" integer NULL,
	"C_Area_From" char(10) NULL,
	"N_Chem_Visit" integer NULL,
	"N_Stk_Visit" integer NULL,
	"C_Subarea_code_From" varchar(10) NOT NULL,
	"C_Subarea_code_to" varchar(10) NOT NULL,
	"n_wkg_days" integer NULL,
	"N_Transit_Days" integer NULL,
	"N_MMIDistance" numeric(10, 2) NULL,
	"c_MMIMapLink" varchar(5000) NULL
) 
;
/****** Object:  Table "stpbackupdetails2017_07_24"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpbackupdetails2017_07_24"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" integer NULL,
	"N_Distance" numeric(10, 2) NULL,
	"N_Ta" numeric(19, 2) NULL,
	"n_Cur_Business" numeric(19, 2) NULL,
	"n_Exp_Business" numeric(19, 2) NULL,
	"N_Doc_Visit_A" integer NULL,
	"N_Doc_Visit_B" integer NULL,
	"C_Area_From" char(10) NULL,
	"N_Chem_Visit" integer NULL,
	"N_Stk_Visit" integer NULL,
	"C_Subarea_code_From" varchar(10) NOT NULL,
	"C_Subarea_code_to" varchar(10) NOT NULL,
	"n_wkg_days" integer NULL,
	"N_Transit_Days" integer NULL,
	"N_MMIDistance" numeric(10, 2) NULL,
	"c_MMIMapLink" varchar(5000) NULL
) 
;
/****** Object:  Table "stpbkp20231204header"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpbkp20231204header"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"d_modified" timestamp NULL,
	"N_DA_OTHER" numeric(18, 2) NULL,
	"n_tempsrno" integer NULL,
	"C_Approved" char(1) NULL,
	"C_Approved_By" varchar(50) NULL,
	"D_Approved_Date" timestamp NULL,
	"C_Reason" varchar(500) NULL,
	"C_Region_Code" varchar(20) NULL
) 
;
/****** Object:  Table "stpbkp2024"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpbkp2024"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"d_modified" timestamp NULL,
	"N_DA_OTHER" numeric(18, 2) NULL,
	"n_tempsrno" integer NULL,
	"C_Approved" char(1) NULL,
	"C_Approved_By" varchar(50) NULL,
	"D_Approved_Date" timestamp NULL,
	"C_Reason" varchar(500) NULL,
	"C_Region_Code" varchar(20) NULL
) 
;
/****** Object:  Table "stpbkp20250516"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpbkp20250516"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"d_modified" timestamp NULL,
	"N_DA_OTHER" numeric(18, 2) NULL,
	"n_tempsrno" integer NULL,
	"C_Approved" char(1) NULL,
	"C_Approved_By" varchar(50) NULL,
	"D_Approved_Date" timestamp NULL,
	"C_Reason" varchar(500) NULL,
	"C_Region_Code" varchar(20) NULL
) 
;
/****** Object:  Table "stpdet"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpdet"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" integer NULL,
	"N_Distance" numeric(10, 2) NULL,
	"N_Ta" numeric(19, 2) NULL,
	"n_Cur_Business" numeric(19, 2) NULL,
	"n_Exp_Business" numeric(19, 2) NULL,
	"N_Doc_Visit_A" integer NULL,
	"N_Doc_Visit_B" integer NULL,
	"C_Area_From" char(10) NULL,
	"N_Chem_Visit" integer NULL,
	"N_Stk_Visit" integer NULL,
	"C_Subarea_code_From" varchar(10) NOT NULL,
	"C_Subarea_code_to" varchar(10) NOT NULL,
	"n_wkg_days" integer NULL,
	"N_Transit_Days" integer NULL,
	"N_MMIDistance" numeric(10, 2) NULL,
	"c_MMIMapLink" varchar(5000) NULL
) 
;
/****** Object:  Table "stpdet2023bkp"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpdet2023bkp"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" integer NULL,
	"N_Distance" numeric(10, 2) NULL,
	"N_Ta" numeric(19, 2) NULL,
	"n_Cur_Business" numeric(19, 2) NULL,
	"n_Exp_Business" numeric(19, 2) NULL,
	"N_Doc_Visit_A" integer NULL,
	"N_Doc_Visit_B" integer NULL,
	"C_Area_From" char(10) NULL,
	"N_Chem_Visit" integer NULL,
	"N_Stk_Visit" integer NULL,
	"C_Subarea_code_From" varchar(10) NOT NULL,
	"C_Subarea_code_to" varchar(10) NOT NULL,
	"n_wkg_days" integer NULL,
	"N_Transit_Days" integer NULL,
	"N_MMIDistance" numeric(10, 2) NULL,
	"c_MMIMapLink" varchar(5000) NULL,
	"n_mode_of_travel" integer NULL,
	"C_Mode_of_Travel" varchar(50) NULL
) 
;
/****** Object:  Table "stpdetails"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpdetails"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" integer NULL,
	"N_Distance" numeric(10, 2) NULL,
	"N_Ta" numeric(19, 2) NULL,
	"n_Cur_Business" numeric(19, 2) NULL,
	"n_Exp_Business" numeric(19, 2) NULL,
	"N_Doc_Visit_A" integer NULL,
	"N_Doc_Visit_B" integer NULL,
	"C_Area_From" char(10) NULL,
	"N_Chem_Visit" integer NULL,
	"N_Stk_Visit" integer NULL,
	"C_Subarea_code_From" varchar(10) NOT NULL,
	"C_Subarea_code_to" varchar(10) NOT NULL,
	"n_wkg_days" integer NULL,
	"N_Transit_Days" integer NULL,
	"N_MMIDistance" numeric(10, 2) NULL,
	"c_MMIMapLink" varchar(5000) NULL
) 
;
/****** Object:  Table "stpdetails3_12aug"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpdetails3_12aug"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" integer NULL,
	"N_Distance" numeric(10, 2) NULL,
	"N_Ta" numeric(19, 2) NULL,
	"n_Cur_Business" numeric(19, 2) NULL,
	"n_Exp_Business" numeric(19, 2) NULL,
	"N_Doc_Visit_A" integer NULL,
	"N_Doc_Visit_B" integer NULL,
	"C_Area_From" char(10) NULL,
	"N_Chem_Visit" integer NULL,
	"N_Stk_Visit" integer NULL,
	"C_Subarea_code_From" varchar(10) NOT NULL,
	"C_Subarea_code_to" varchar(10) NOT NULL,
	"n_wkg_days" integer NULL,
	"N_Transit_Days" integer NULL,
	"N_MMIDistance" numeric(10, 2) NULL,
	"c_MMIMapLink" varchar(5000) NULL
) 
;
/****** Object:  Table "stpdetailsbackup"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpdetailsbackup"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" integer NULL,
	"N_Distance" numeric(10, 2) NULL,
	"N_Ta" numeric(19, 2) NULL,
	"n_Cur_Business" numeric(19, 2) NULL,
	"n_Exp_Business" numeric(19, 2) NULL,
	"N_Doc_Visit_A" integer NULL,
	"N_Doc_Visit_B" integer NULL,
	"C_Area_From" char(10) NULL,
	"N_Chem_Visit" integer NULL,
	"N_Stk_Visit" integer NULL,
	"C_Subarea_code_From" varchar(10) NOT NULL,
	"C_Subarea_code_to" varchar(10) NOT NULL,
	"n_wkg_days" integer NULL,
	"N_Transit_Days" integer NULL,
	"N_MMIDistance" numeric(10, 2) NULL,
	"c_MMIMapLink" varchar(5000) NULL
) 
;
/****** Object:  Table "stpdetailsbackup2019_feb_01"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpdetailsbackup2019_feb_01"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" integer NULL,
	"N_Distance" numeric(10, 2) NULL,
	"N_Ta" numeric(19, 2) NULL,
	"n_Cur_Business" numeric(19, 2) NULL,
	"n_Exp_Business" numeric(19, 2) NULL,
	"N_Doc_Visit_A" integer NULL,
	"N_Doc_Visit_B" integer NULL,
	"C_Area_From" char(10) NULL,
	"N_Chem_Visit" integer NULL,
	"N_Stk_Visit" integer NULL,
	"C_Subarea_code_From" varchar(10) NOT NULL,
	"C_Subarea_code_to" varchar(10) NOT NULL,
	"n_wkg_days" integer NULL,
	"N_Transit_Days" integer NULL,
	"N_MMIDistance" numeric(10, 2) NULL,
	"c_MMIMapLink" varchar(5000) NULL
) 
;
/****** Object:  Table "stpdetailsbackup2020"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpdetailsbackup2020"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" integer NULL,
	"N_Distance" numeric(10, 2) NULL,
	"N_Ta" numeric(19, 2) NULL,
	"n_Cur_Business" numeric(19, 2) NULL,
	"n_Exp_Business" numeric(19, 2) NULL,
	"N_Doc_Visit_A" integer NULL,
	"N_Doc_Visit_B" integer NULL,
	"C_Area_From" char(10) NULL,
	"N_Chem_Visit" integer NULL,
	"N_Stk_Visit" integer NULL,
	"C_Subarea_code_From" varchar(10) NOT NULL,
	"C_Subarea_code_to" varchar(10) NOT NULL,
	"n_wkg_days" integer NULL,
	"N_Transit_Days" integer NULL,
	"N_MMIDistance" numeric(10, 2) NULL,
	"c_MMIMapLink" varchar(5000) NULL,
	"n_mode_of_travel" integer NULL
) 
;
/****** Object:  Table "stpdetailsbck2017"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpdetailsbck2017"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" integer NULL,
	"N_Distance" numeric(10, 2) NULL,
	"N_Ta" numeric(19, 2) NULL,
	"n_Cur_Business" numeric(19, 2) NULL,
	"n_Exp_Business" numeric(19, 2) NULL,
	"N_Doc_Visit_A" integer NULL,
	"N_Doc_Visit_B" integer NULL,
	"C_Area_From" char(10) NULL,
	"N_Chem_Visit" integer NULL,
	"N_Stk_Visit" integer NULL,
	"C_Subarea_code_From" varchar(10) NOT NULL,
	"C_Subarea_code_to" varchar(10) NOT NULL,
	"n_wkg_days" integer NULL,
	"N_Transit_Days" integer NULL,
	"N_MMIDistance" numeric(10, 2) NULL,
	"c_MMIMapLink" varchar(5000) NULL
) 
;
/****** Object:  Table "stpdetbackup2019_11_07"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpdetbackup2019_11_07"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" integer NULL,
	"N_Distance" numeric(10, 2) NULL,
	"N_Ta" numeric(19, 2) NULL,
	"n_Cur_Business" numeric(19, 2) NULL,
	"n_Exp_Business" numeric(19, 2) NULL,
	"N_Doc_Visit_A" integer NULL,
	"N_Doc_Visit_B" integer NULL,
	"C_Area_From" char(10) NULL,
	"N_Chem_Visit" integer NULL,
	"N_Stk_Visit" integer NULL,
	"C_Subarea_code_From" varchar(10) NOT NULL,
	"C_Subarea_code_to" varchar(10) NOT NULL,
	"n_wkg_days" integer NULL,
	"N_Transit_Days" integer NULL,
	"N_MMIDistance" numeric(10, 2) NULL,
	"c_MMIMapLink" varchar(5000) NULL
) 
;
/****** Object:  Table "stpdetbackup2020"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpdetbackup2020"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" integer NULL,
	"N_Distance" numeric(10, 2) NULL,
	"N_Ta" numeric(19, 2) NULL,
	"n_Cur_Business" numeric(19, 2) NULL,
	"n_Exp_Business" numeric(19, 2) NULL,
	"N_Doc_Visit_A" integer NULL,
	"N_Doc_Visit_B" integer NULL,
	"C_Area_From" char(10) NULL,
	"N_Chem_Visit" integer NULL,
	"N_Stk_Visit" integer NULL,
	"C_Subarea_code_From" varchar(10) NOT NULL,
	"C_Subarea_code_to" varchar(10) NOT NULL,
	"n_wkg_days" integer NULL,
	"N_Transit_Days" integer NULL,
	"N_MMIDistance" numeric(10, 2) NULL,
	"c_MMIMapLink" varchar(5000) NULL,
	"n_mode_of_travel" integer NULL
) 
;
/****** Object:  Table "stpdetbkp"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpdetbkp"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" integer NULL,
	"N_Distance" numeric(10, 2) NULL,
	"N_Ta" numeric(19, 2) NULL,
	"n_Cur_Business" numeric(19, 2) NULL,
	"n_Exp_Business" numeric(19, 2) NULL,
	"N_Doc_Visit_A" integer NULL,
	"N_Doc_Visit_B" integer NULL,
	"C_Area_From" char(10) NULL,
	"N_Chem_Visit" integer NULL,
	"N_Stk_Visit" integer NULL,
	"C_Subarea_code_From" varchar(10) NOT NULL,
	"C_Subarea_code_to" varchar(10) NOT NULL,
	"n_wkg_days" integer NULL,
	"N_Transit_Days" integer NULL,
	"N_MMIDistance" numeric(10, 2) NULL,
	"c_MMIMapLink" varchar(5000) NULL,
	"n_mode_of_travel" integer NULL,
	"C_Mode_of_Travel" varchar(50) NULL
) 
;
/****** Object:  Table "stpdetbkp2024"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpdetbkp2024"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" integer NULL,
	"N_Distance" numeric(10, 2) NULL,
	"N_Ta" numeric(19, 2) NULL,
	"n_Cur_Business" numeric(19, 2) NULL,
	"n_Exp_Business" numeric(19, 2) NULL,
	"N_Doc_Visit_A" integer NULL,
	"N_Doc_Visit_B" integer NULL,
	"C_Area_From" char(10) NULL,
	"N_Chem_Visit" integer NULL,
	"N_Stk_Visit" integer NULL,
	"C_Subarea_code_From" varchar(10) NOT NULL,
	"C_Subarea_code_to" varchar(10) NOT NULL,
	"n_wkg_days" integer NULL,
	"N_Transit_Days" integer NULL,
	"N_MMIDistance" numeric(10, 2) NULL,
	"c_MMIMapLink" varchar(5000) NULL,
	"n_mode_of_travel" integer NULL,
	"C_Mode_of_Travel" varchar(50) NULL
) 
;
/****** Object:  Table "stpdetbkp20250516"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpdetbkp20250516"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" integer NULL,
	"N_Distance" numeric(10, 2) NULL,
	"N_Ta" numeric(19, 2) NULL,
	"n_Cur_Business" numeric(19, 2) NULL,
	"n_Exp_Business" numeric(19, 2) NULL,
	"N_Doc_Visit_A" integer NULL,
	"N_Doc_Visit_B" integer NULL,
	"C_Area_From" char(10) NULL,
	"N_Chem_Visit" integer NULL,
	"N_Stk_Visit" integer NULL,
	"C_Subarea_code_From" varchar(10) NOT NULL,
	"C_Subarea_code_to" varchar(10) NOT NULL,
	"n_wkg_days" integer NULL,
	"N_Transit_Days" integer NULL,
	"N_MMIDistance" numeric(10, 2) NULL,
	"c_MMIMapLink" varchar(5000) NULL,
	"n_mode_of_travel" integer NULL,
	"C_Mode_of_Travel" varchar(50) NULL
) 
;
/****** Object:  Table "stph"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stph"(
	"Region Name" varchar(255) NULL,
	"STPNo" double precision NULL,
	"rowid" double precision NULL,
	"Division" varchar(255) NULL,
	"FS CODE" varchar(255) NULL,
	"FS NAME" varchar(255) NULL,
	"HQ CODE" varchar(255) NULL,
	"HQ NAME" varchar(255) NULL,
	"Based At Code" varchar(255) NULL,
	"Based At Name" varchar(255) NULL,
	"STP Date From" timestamp NULL,
	"STP Date To" timestamp NULL,
	"HQDA" double precision NULL,
	"EXDA" double precision NULL,
	"OSDA" double precision NULL,
	"TAType" double precision NULL,
	"RateKM" double precision NULL,
	"From Area Code" varchar(255) NULL,
	"From Area Name" varchar(255) NULL,
	"ToAreaCode" varchar(255) NULL,
	"ToAreaname" varchar(255) NULL,
	"A grade doct count" double precision NULL,
	"B grade doctor count" double precision NULL,
	"chemist count" double precision NULL,
	"stockiest count" double precision NULL,
	"curent business" double precision NULL,
	"expected business" double precision NULL,
	"AreaType" varchar(255) NULL,
	"Distance" double precision NULL,
	"TA" double precision NULL
) 
;
/****** Object:  Table "stphdr"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stphdr"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"d_modified" timestamp NULL,
	"N_DA_OTHER" numeric(18, 2) NULL
) 
;
/****** Object:  Table "stphdr2023bkp"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stphdr2023bkp"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"d_modified" timestamp NULL,
	"N_DA_OTHER" numeric(18, 2) NULL,
	"n_tempsrno" integer NULL,
	"C_Approved" char(1) NULL,
	"C_Approved_By" varchar(50) NULL,
	"D_Approved_Date" timestamp NULL,
	"C_Reason" varchar(500) NULL,
	"C_Region_Code" varchar(20) NULL
) 
;
/****** Object:  Table "stphdrbkp"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stphdrbkp"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"d_modified" timestamp NULL,
	"N_DA_OTHER" numeric(18, 2) NULL,
	"n_tempsrno" integer NULL,
	"C_Approved" char(1) NULL,
	"C_Approved_By" varchar(50) NULL,
	"D_Approved_Date" timestamp NULL,
	"C_Reason" varchar(500) NULL,
	"C_Region_Code" varchar(20) NULL
) 
;
/****** Object:  Table "stphdrbkp14122022"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stphdrbkp14122022"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"d_modified" timestamp NULL,
	"N_DA_OTHER" numeric(18, 2) NULL,
	"n_tempsrno" integer NULL,
	"C_Approved" char(1) NULL,
	"C_Approved_By" varchar(50) NULL,
	"D_Approved_Date" timestamp NULL,
	"C_Reason" varchar(500) NULL,
	"C_Region_Code" varchar(20) NULL
) 
;
/****** Object:  Table "stpheader"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpheader"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"d_modified" timestamp NULL,
	"N_DA_OTHER" numeric(18, 2) NULL
) 
;
/****** Object:  Table "stpheader03_04_2018"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpheader03_04_2018"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"d_modified" timestamp NULL,
	"N_DA_OTHER" numeric(18, 2) NULL
) 
;
/****** Object:  Table "stpheader3_12aug"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpheader3_12aug"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"d_modified" timestamp NULL,
	"N_DA_OTHER" numeric(18, 2) NULL
) 
;
/****** Object:  Table "stpheaderback"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpheaderback"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"d_modified" timestamp NULL,
	"N_DA_OTHER" numeric(18, 2) NULL
) 
;
/****** Object:  Table "stpheaderbackup"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpheaderbackup"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"d_modified" timestamp NULL,
	"N_DA_OTHER" numeric(18, 2) NULL
) 
;
/****** Object:  Table "stpheaderbackup01_02_2019"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpheaderbackup01_02_2019"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"d_modified" timestamp NULL,
	"N_DA_OTHER" numeric(18, 2) NULL
) 
;
/****** Object:  Table "stpheaderbackup2019_11_07"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpheaderbackup2019_11_07"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"d_modified" timestamp NULL,
	"N_DA_OTHER" numeric(18, 2) NULL
) 
;
/****** Object:  Table "stpheaderbackup2020"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpheaderbackup2020"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"d_modified" timestamp NULL,
	"N_DA_OTHER" numeric(18, 2) NULL,
	"n_tempsrno" integer NULL
) 
;
/****** Object:  Table "stphearderbackup2020"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stphearderbackup2020"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"d_modified" timestamp NULL,
	"N_DA_OTHER" numeric(18, 2) NULL,
	"n_tempsrno" integer NULL,
	"C_Approved" char(1) NULL,
	"C_Approved_By" varchar(50) NULL,
	"D_Approved_Date" timestamp NULL,
	"C_Reason" varchar(500) NULL
) 
;
/****** Object:  Table "Stpnew"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Stpnew"(
	"Region Name" varchar(255) NULL,
	"STPNo" double precision NULL,
	"rowid" double precision NULL,
	"Division" varchar(255) NULL,
	"FS CODE" varchar(255) NULL,
	"FS NAME" varchar(255) NULL,
	"HQ CODE" varchar(255) NULL,
	"HQ NAME" varchar(255) NULL,
	"Based At Code" varchar(255) NULL,
	"Based At Name" varchar(255) NULL,
	"STP Date From" timestamp NULL,
	"STP Date To" timestamp NULL,
	"HQDA" double precision NULL,
	"EXDA" double precision NULL,
	"OSDA" double precision NULL,
	"TAType" double precision NULL,
	"RateKM" double precision NULL,
	"From Area Code" varchar(255) NULL,
	"From Area Name" varchar(255) NULL,
	"ToAreaCode" varchar(255) NULL,
	"ToAreaname" varchar(255) NULL,
	"A grade doct count" double precision NULL,
	"B grade doctor count" double precision NULL,
	"chemist count" double precision NULL,
	"stockiest count" double precision NULL,
	"curent business" double precision NULL,
	"expected business" double precision NULL,
	"AreaType" varchar(255) NULL,
	"Distance" double precision NULL,
	"TA" double precision NULL
) 
;
/****** Object:  Table "stpp"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpp"(
	"Region Name" varchar(255) NULL,
	"STPNo" double precision NULL,
	"rowid" double precision NULL,
	"Division" varchar(255) NULL,
	"FS CODE" varchar(255) NULL,
	"FS NAME" varchar(255) NULL,
	"HQ CODE" varchar(255) NULL,
	"HQ NAME" varchar(255) NULL,
	"Based At Code" varchar(255) NULL,
	"Based At Name" varchar(255) NULL,
	"STP Date From" timestamp NULL,
	"STP Date To" timestamp NULL,
	"HQDA" double precision NULL,
	"EXDA" double precision NULL,
	"OSDA" double precision NULL,
	"TAType" double precision NULL,
	"RateKM" double precision NULL,
	"From Area Code" varchar(255) NULL,
	"From Area Name" varchar(255) NULL,
	"ToAreaCode" varchar(255) NULL,
	"ToAreaname" varchar(255) NULL,
	"A grade doct count" double precision NULL,
	"B grade doctor count" double precision NULL,
	"chemist count" double precision NULL,
	"stockiest count" double precision NULL,
	"curent business" double precision NULL,
	"expected business" double precision NULL,
	"AreaType" varchar(255) NULL,
	"Distance" double precision NULL,
	"TA" double precision NULL
) 
;
/****** Object:  Table "stpupdate1"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpupdate1"(
	"Division" varchar(255) NULL,
	"Region Name" varchar(255) NULL,
	"STPNo" double precision NULL,
	"rowid" double precision NULL,
	"FS CODE" varchar(255) NULL,
	"FS NAME" varchar(255) NULL,
	"HQ CODE" varchar(255) NULL,
	"HQ NAME" varchar(255) NULL,
	"Based At Code" varchar(255) NULL,
	"Based At Name" varchar(255) NULL,
	"STP Date From" timestamp NULL,
	"STP Date To" timestamp NULL,
	"HQDA" double precision NULL,
	"EXDA" double precision NULL,
	"OSDA" double precision NULL,
	"TAType" double precision NULL,
	"RateKM" double precision NULL,
	"From Area Code" varchar(255) NULL,
	"From Area Name" varchar(255) NULL,
	"ToAreaCode" varchar(255) NULL,
	"ToAreaname" varchar(255) NULL,
	"A grade doct count" double precision NULL,
	"B grade doctor count" double precision NULL,
	"chemist count" double precision NULL,
	"stockiest count" double precision NULL,
	"curent business" double precision NULL,
	"expected business" double precision NULL,
	"AreaType" double precision NULL,
	"Distance" double precision NULL,
	"TA" double precision NULL
) 
;
/****** Object:  Table "stpupdate3"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stpupdate3"(
	"Division" varchar(255) NULL,
	"Region Name" varchar(255) NULL,
	"STPNo" double precision NULL,
	"FS CODE" varchar(255) NULL,
	"FS NAME" varchar(255) NULL,
	"HQ CODE" varchar(255) NULL,
	"HQ NAME" varchar(255) NULL,
	"Based At Code" varchar(255) NULL,
	"Based At Name" varchar(255) NULL,
	"STP Date From" timestamp NULL,
	"STP Date To" timestamp NULL,
	"HQDA" double precision NULL,
	"EXDA" double precision NULL,
	"OSDA" double precision NULL,
	"TAType" double precision NULL,
	"RateKM" double precision NULL,
	"distnace" double precision NULL,
	"TA" double precision NULL,
	"From Area Code" varchar(255) NULL,
	"From Area Name" varchar(255) NULL,
	"ToAreaCode" varchar(255) NULL,
	"ToAreaname" varchar(255) NULL,
	"A grade doct count" double precision NULL,
	"B grade doctor count" double precision NULL,
	"workingdays" double precision NULL,
	"chemist count" double precision NULL,
	"stockiest count" double precision NULL,
	"curent business" double precision NULL,
	"expected business" double precision NULL,
	"AreaType" varchar(255) NULL
) 
;
/****** Object:  Table "stt"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "stt"(
	"Region Name" varchar(255) NULL,
	"STPNo" double precision NULL,
	"rowid" double precision NULL,
	"Division" varchar(255) NULL,
	"FS CODE" varchar(255) NULL,
	"FS NAME" varchar(255) NULL,
	"HQ CODE" varchar(255) NULL,
	"HQ NAME" varchar(255) NULL,
	"Based At Code" varchar(255) NULL,
	"Based At Name" varchar(255) NULL,
	"STP Date From" timestamp NULL,
	"STP Date To" timestamp NULL,
	"HQDA" double precision NULL,
	"EXDA" double precision NULL,
	"OSDA" double precision NULL,
	"TAType" double precision NULL,
	"RateKM" double precision NULL,
	"From Area Code" varchar(255) NULL,
	"From Area Name" varchar(255) NULL,
	"ToAreaCode" varchar(255) NULL,
	"ToAreaname" varchar(255) NULL,
	"A grade doct count" double precision NULL,
	"B grade doctor count" double precision NULL,
	"chemist count" double precision NULL,
	"stockiest count" double precision NULL,
	"curent business" double precision NULL,
	"expected business" double precision NULL,
	"AreaType" double precision NULL,
	"Distance" double precision NULL,
	"TA" double precision NULL
) 
;
/****** Object:  Table "sub_doc"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "sub_doc"(
	"DOCCODE" varchar(255) NULL,
	"NEW SUBAREA" varchar(255) NULL
) 
;
/****** Object:  Table "subfielddays"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "subfielddays"(
	"FSCODE" varchar(50) NULL,
	"Workdays" varchar(50) NULL
) 
;
/****** Object:  Table "sun"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "sun"(
	"div" varchar(50) NULL,
	"sundate" varchar(50) NULL
) 
;
/****** Object:  Table "sund"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "sund"(
	"Empcode" varchar(50) NULL,
	"WorkType" varchar(50) NULL,
	"SunDate" varchar(50) NULL
) 
;
/****** Object:  Table "sundays"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "sundays"(
	"empcode" varchar(50) NULL,
	"Sundays" varchar(50) NULL,
	"DOJ" varchar(50) NULL
) 
;
/****** Object:  Table "svacant"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "svacant"(
	"division" varchar(50) NULL,
	"region" varchar(50) NULL,
	"designation" varchar(50) NULL,
	"totalcount" varchar(50) NULL,
	"total" varchar(50) NULL,
	"vacant" varchar(50) NULL,
	"reported" varchar(50) NULL
) 
;
/****** Object:  Table "tb_DetailingForwardBackwardSetup"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tb_DetailingForwardBackwardSetup"(
	"n_srNo" SERIAL NOT NULL,
	"c_Divison" text NULL,
	"c_Region" text NULL,
	"c_Designation" integer NULL,
	"c_Fs" text NULL,
	"n_delete" integer NOT NULL,
	"d_Cdae" timestamp NULL,
	"c_user" varchar(50) NULL,
 CONSTRAINT "PK_tb_DetailingForwardBackwardSetup" PRIMARY KEY  
(
	"n_srNo" 
) 
) 
;
/****** Object:  Table "tbl_Account_Group"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Account_Group"(
	"c_code" varchar(20) NOT NULL,
	"c_name" varchar(50) NULL,
	"d_created" timestamp NOT NULL,
	"n_active" integer NOT NULL,
	"n_deleted" integer NOT NULL,
 CONSTRAINT "PK_tbl_Account_Group" PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "Tbl_Account_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Account_Mst"(
	"C_Code" varchar(20) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"C_Address" varchar(100) NULL,
	"D_Activation" timestamp NULL,
	"D_Start_date" timestamp NULL,
	"No_of_days" integer NULL,
	"Created_by" varchar(100) NULL,
	"Acc_purchase_manager" varchar(50) NULL,
	"Purchase_manager_contactno" varchar(50) NULL,
	"n_deleted" integer NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"C_Classification" varchar(10) NULL,
 CONSTRAINT "PK_Tbl_Account_Mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "tbl_account_type"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_account_type"(
	"c_code" varchar(20) NOT NULL,
	"c_name" varchar(50) NULL,
	"n_deleted" integer NOT NULL,
	"n_active" integer NOT NULL,
 CONSTRAINT "PK_tbl_account_type" PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "tbl_activity_process"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_activity_process"(
	"n_id" SERIAL NOT NULL,
	"n_module_id" numeric(18, 0) NOT NULL,
	"n_request_id" numeric(18, 0) NULL,
	"c_req_fs_code" varchar(50) NULL,
	"c_req_emp_code" varchar(50) NULL,
	"n_req_fs_type" integer NULL,
	"n_setup_id" numeric(18, 0) NULL,
	"n_allow_reject" integer NULL,
	"n_approval_type" integer NULL,
	"n_activity_type" integer NULL,
	"c_user_role" varchar(50) NULL,
	"n_activity_approver_type" integer NULL,
	"n_activity_fs_type" integer NULL,
	"c_activity_fs_code" varchar(20) NULL,
	"c_activity_emp_code" varchar(20) NULL,
	"n_activity_order" integer NULL,
	"n_activity_done" integer NULL,
	"d_activity_done_on" timestamp NULL,
	"n_activity_reject_status" integer NULL,
	"n_req_status" integer NULL,
	"n_req_reject_status" integer NULL,
	"c_req_status_msg" varchar(2000) NULL,
	"n_active_fs" integer NULL,
	"c_remarks" varchar(5000) NULL,
	"d_created_on" timestamp NULL,
	"d_modified_on" timestamp NULL,
 CONSTRAINT "PK_tbl_activity_process" PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "tbl_activity_process_log"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_activity_process_log"(
	"n_id" SERIAL NOT NULL,
	"n_activity_process_id" numeric(18, 0) NULL,
	"n_module_id" numeric(18, 0) NOT NULL,
	"n_request_id" numeric(18, 0) NULL,
	"c_req_fs_code" varchar(50) NULL,
	"c_req_emp_code" varchar(50) NULL,
	"n_req_fs_type" integer NULL,
	"n_setup_id" numeric(18, 0) NULL,
	"n_allow_reject" integer NULL,
	"n_approval_type" integer NULL,
	"n_activity_type" integer NULL,
	"c_user_role" varchar(50) NULL,
	"n_activity_approver_type" integer NULL,
	"n_activity_fs_type" integer NULL,
	"c_activity_fs_code" varchar(20) NULL,
	"c_activity_emp_code" varchar(20) NULL,
	"n_activity_order" integer NULL,
	"n_activity_done" integer NULL,
	"d_activity_done_on" timestamp NULL,
	"n_activity_reject_status" integer NULL,
	"n_req_status" integer NULL,
	"n_req_reject_status" integer NULL,
	"c_req_status_msg" varchar(2000) NULL,
	"n_active_fs" integer NULL,
	"c_remarks" varchar(5000) NULL,
	"d_created_on" timestamp NULL,
	"d_modified_on" timestamp NULL,
	"log_created_on" timestamp NULL,
 CONSTRAINT "PK_tbl_activity_process_log" PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "tbl_Admin_display_Allocation"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Admin_display_Allocation"(
	"c_setup_code" varchar(50) NULL,
	"c_allocatedby_Fscode" varchar(50) NULL,
	"c_allowcatedto_Fscode" varchar(50) NULL,
	"n_allocated_qty" numeric(18, 0) NULL,
	"n_allocated_budget" numeric(18, 2) NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_admin_display_desigs"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_admin_display_desigs"(
	"c_setup_code" varchar(50) NULL,
	"c_desigs_code" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_admin_display_regions"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_admin_display_regions"(
	"c_setup_code" varchar(20) NULL,
	"c_region_code" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_Admin_Display_setup_Det"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Admin_Display_setup_Det"(
	"c_Code" varchar(50) NULL,
	"c_grade" varchar(50) NULL,
	"n_amount" numeric(18, 2) NULL,
	"n_type" integer NULL
) 
;
/****** Object:  Table "tbl_Admin_Display_setup_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Admin_Display_setup_Mst"(
	"c_code" varchar(50) NOT NULL,
	"c_name" varchar(500) NULL,
	"c_productcode" varchar(50) NULL,
	"c_regioncode" varchar(50) NULL,
	"d_date_from" timestamp NULL,
	"d_date_to" timestamp NULL,
	"n_deleted" integer NULL,
	"d_Created" timestamp NULL,
	"d_Modified" timestamp NULL,
	"c_modifier" varchar(50) NULL,
	"n_status" integer NULL,
	"n_total_qty" numeric(18, 2) NULL,
	"n_purchase_value" numeric(18, 2) NULL,
	"n_qty" numeric(18, 2) NULL,
	"n_budget" numeric(18, 0) NULL,
	"n_display_count" numeric(18, 0) NULL
) 
;
/****** Object:  Table "tbl_Admin_displaySetup_item_brand"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Admin_displaySetup_item_brand"(
	"c_setup_code" varchar(20) NULL,
	"c_itemcode" varchar(20) NULL,
	"c_item_brand_type" integer NULL,
	"n_qty" integer NULL
) 
;
/****** Object:  Table "Tbl_AdminMessage_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_AdminMessage_Mst"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code_From" char(10) NOT NULL,
	"C_Parent" char(10) NOT NULL,
	"C_FS_Code_To" char(10) NOT NULL,
	"C_Subject" varchar(500) NULL,
	"C_Message" varchar(500) NULL,
	"Msg_Type" integer NULL,
	"D_Created_Date" timestamp NULL,
	"N_Read" numeric(18, 0) NOT NULL,
 CONSTRAINT "PK_Tbl_AdminMessage_Mst" PRIMARY KEY  
(
	"N_Srno" 
) 
) 
;
/****** Object:  Table "tbl_age_Range_mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_age_Range_mst"(
	"C_range" varchar(50) NULL,
	"n_id" SERIAL NOT NULL
) 
;
/****** Object:  Table "Tbl_Alert_Activated"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Alert_Activated"(
	"n_srno" numeric(3, 0) NOT NULL,
	"c_message" varchar(150) NULL,
	"n_criteria1" numeric(10, 0) NULL,
	"n_criteria2" numeric(10, 0) NULL,
	"n_criteria3" numeric(10, 0) NULL,
	"n_criteria4" numeric(10, 0) NULL,
	"n_criteria5" numeric(10, 0) NULL,
	"n_criteria6" numeric(10, 0) NULL,
	"n_sch_type" numeric(1, 0) NULL,
	"n_day" numeric(2, 0) NULL,
	"d_time" timestamp NULL,
	"d_nextdate" timestamp NULL,
	"d_lastdate" timestamp NULL,
	"n_block_flag" numeric(1, 0) NULL,
	"n_Deleted" integer NULL,
	"n_sms_email" integer NOT NULL,
	"c_criteria7" varchar(1000) NULL,
 CONSTRAINT "PK_Tbl_Alert_Activated" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "Tbl_Alert_Blocked"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Alert_Blocked"(
	"c_empcode" varchar(10) NOT NULL,
	"c_fscode" varchar(10) NOT NULL,
	"n_alert_code" numeric(3, 0) NOT NULL,
	"n_type" numeric(1, 0) NULL,
 CONSTRAINT "PK_Tbl_Alert_Blocked" PRIMARY KEY  
(
	"c_empcode" ,
	"c_fscode" ,
	"n_alert_code" 
) 
) 
;
/****** Object:  Table "Tbl_Alert_Email_Detail1"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Alert_Email_Detail1"(
	"N_EmailId" numeric(18, 0) NOT NULL,
	"N_Rowid" numeric(18, 0) NOT NULL,
	"C_DataField" varchar(100) NOT NULL,
	"N_variable" numeric(18, 0) NOT NULL,
	"N_hidden" numeric(18, 0) NOT NULL,
	"N_VrtclSumFlg" numeric(18, 0) NULL,
	"N_HrzclSumFlg" numeric(18, 0) NULL,
	"C_SubGroupHeader" varchar(100) NULL,
	"N_GrpFactor" integer NULL,
 CONSTRAINT "PK_Tbl_Alert_Email_Detail1" PRIMARY KEY  
(
	"N_EmailId" ,
	"N_Rowid" 
) 
) 
;
/****** Object:  Table "Tbl_Alert_Email_header1"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Alert_Email_header1"(
	"N_EmailId" numeric(18, 0) NOT NULL,
	"N_Rowid" numeric(18, 0) NOT NULL,
	"C_Text" varchar(300) NULL,
	"N_Variable" numeric(18, 0) NULL,
	"C_headerTemplate" text NULL,
	"c_subject" text NULL,
 CONSTRAINT "PK_Tbl_Alert_Email_header1" PRIMARY KEY  
(
	"N_EmailId" ,
	"N_Rowid" 
) 
) 
;
/****** Object:  Table "Tbl_Alert_Email_Header2"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Alert_Email_Header2"(
	"N_EmailId" numeric(18, 0) NOT NULL,
	"N_Rowid" numeric(18, 0) NOT NULL,
	"C_Text" varchar(300) NULL,
	"N_variable" numeric(18, 0) NULL
) 
;
/****** Object:  Table "Tbl_Alert_Email_Header3"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Alert_Email_Header3"(
	"N_EmailId" numeric(18, 0) NOT NULL,
	"N_Rowid" numeric(18, 0) NOT NULL,
	"C_Text" varchar(300) NULL,
	"N_Variable" numeric(18, 0) NULL
) 
;
/****** Object:  Table "Tbl_Alert_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Alert_Mst"(
	"n_srno" numeric(3, 0) NOT NULL,
	"c_name" varchar(100) NULL,
	"c_remark" varchar(200) NULL,
	"c_message" varchar(150) NULL,
	"n_type" numeric(1, 0) NULL,
	"n_maxparm" numeric(1, 0) NULL,
	"n_criteria1" numeric(10, 2) NULL,
	"n_criteria2" numeric(10, 2) NULL,
	"n_criteria3" numeric(10, 2) NULL,
	"n_criteria4" numeric(10, 2) NULL,
	"n_criteria5" numeric(10, 2) NULL,
	"n_criteria6" numeric(10, 2) NULL,
	"c_head1" varchar(20) NULL,
	"c_head2" varchar(20) NULL,
	"c_head3" varchar(20) NULL,
	"c_head4" varchar(20) NULL,
	"c_head5" varchar(20) NULL,
	"c_head6" varchar(20) NULL,
	"n_sch_type" numeric(1, 0) NULL,
	"n_day" numeric(2, 0) NULL,
	"d_time" timestamp NULL,
	"c_head7" varchar(1000) NULL,
	"c_criteria7" varchar(1000) NULL
) 
;
/****** Object:  Table "Tbl_Alert_Setup"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Alert_Setup"(
	"c_provider" varchar(20) NULL,
	"c_user" varchar(20) NULL,
	"c_psw" varchar(30) NULL,
	"n_active" numeric(1, 0) NULL,
	"n_No_sms_purchased" numeric(18, 0) NULL,
	"n_sms_left" numeric(18, 0) NULL,
	"c_sms_prefix" varchar(7000) NULL,
	"c_sms_suffix" varchar(7000) NULL,
	"c_sms_to_prefix" varchar(1000) NULL,
	"c_sms_to_suffix" varchar(1000) NULL,
	"c_sms_url" varchar(1000) NULL,
	"n_msg_account_flag" integer NULL,
	"C_APIkey" varchar(100) NULL,
	"C_Sender" varchar(100) NULL
) 
;
/****** Object:  Table "Tbl_Alert_Sms"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Alert_Sms"(
	"n_srno" SERIAL NOT NULL,
	"n_sms_srno" numeric(3, 0) NULL,
	"c_message" text NULL,
	"d_date" timestamp NULL,
	"n_send" numeric(18, 0) NULL,
	"d_sendon" timestamp NULL,
	"c_emp_code" char(10) NULL,
	"c_mobile_no" char(15) NULL,
	"c_return_no" char(100) NULL,
	"n_attempt" numeric(18, 0) NULL,
	"n_Sms_count" numeric(18, 0) NULL,
	"C_EmpCode_From" varchar(10) NOT NULL,
	"c_return_xml" "xml" NULL,
 CONSTRAINT "PK_Tbl_Alert_Sms_1" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "Tbl_Alert_Sms_Det"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Alert_Sms_Det"(
	"n_srno" numeric(3, 0) NOT NULL,
	"c_emp_code" varchar(50) NOT NULL,
	"c_mobileno" varchar(50) NOT NULL,
	"n_rowid" numeric(18, 0) NOT NULL,
 CONSTRAINT "PK_Tbl_Alert_Sms_Det" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_algorithen_region_executed"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_algorithen_region_executed"(
	"c_region_code" varchar(20) NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_Alkem_DrLocation_Hitcount"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Alkem_DrLocation_Hitcount"(
	"n_srno" SERIAL NOT NULL,
	"c_loginfscode" varchar(20) NULL,
	"c_loginempcode" varchar(20) NULL,
	"c_userid" varchar(100) NULL,
	"c_deviceid" varchar(500) NULL,
	"c_version" varchar(100) NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_Alkem_DrLocation_ImgSaveDetails"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Alkem_DrLocation_ImgSaveDetails"(
	"n_srno" SERIAL NOT NULL,
	"c_loginfscode" varchar(20) NULL,
	"c_loginempcode" varchar(20) NULL,
	"c_selectedfs" varchar(20) NULL,
	"c_selectedempcode" varchar(20) NULL,
	"c_drcode" varchar(20) NULL,
	"d_date" timestamp NULL,
	"c_imagename" varchar(200) NULL
) 
;
/****** Object:  Table "tbl_Alkem_DrLocation_UpdateDrDetails"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Alkem_DrLocation_UpdateDrDetails"(
	"n_srno" SERIAL NOT NULL,
	"c_loginfscode" varchar(20) NULL,
	"c_loginempcode" varchar(20) NULL,
	"c_selectedfs" varchar(20) NULL,
	"c_selectedempcode" varchar(20) NULL,
	"c_drcode" varchar(20) NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_AlkemQuestionnireUsers"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_AlkemQuestionnireUsers"(
	"n_Id" SERIAL NOT NULL,
	"c_fscode" varchar(20) NULL,
	"c_empno" varchar(20) NULL,
	"d_date" timestamp NULL,
 CONSTRAINT "PK_tbl_AlkemQuestionnireUsers" PRIMARY KEY  
(
	"n_Id" 
) 
) 
;
/****** Object:  Table "tbl_all_condition_sample_tracking_dcrdata"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_all_condition_sample_tracking_dcrdata"(
	"FSCode" varchar(20) NULL,
	"categorycode" varchar(100) NULL,
	"C_Item_Code" varchar(100) NULL,
	"itemcount" varchar(50) NULL,
	"categoryname" varchar(100) NULL,
	"MonthData" varchar(20) NULL,
	"yearData" varchar(10) NULL
) 
;
/****** Object:  Table "tbl_all_condition_sample_tracking_monthwise"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_all_condition_sample_tracking_monthwise"(
	"Division" varchar(1000) NULL,
	"Region" varchar(100) NULL,
	"Fsname" varchar(100) NULL,
	"Itemtype" varchar(50) NULL,
	"SampleItem" varchar(500) NULL,
	"Pack" char(100) NULL,
	"ReceiptCurrentmonth" varchar(20) NULL,
	"ReceiptCurrent" numeric(19, 0) NULL,
	"IssuedQty" numeric(19, 2) NULL,
	"c_item_code" varchar(100) NULL,
	"BalancePrviousMonth" numeric(19, 0) NULL,
	"N_Type" integer NULL,
	"c_brand_code" varchar(20) NULL,
	"fscode" varchar(20) NULL,
	"AvailableforDistirbution" varchar(20) NULL,
	"dateofdispatchfromDepot" timestamp NULL,
	"MonthData" varchar(20) NULL,
	"yearData" varchar(10) NULL
) 
;
/****** Object:  Table "Tbl_Allowance_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Allowance_Mst"(
	"C_Code1" char(10) NOT NULL,
	"C_Name1" char(20) NOT NULL,
 CONSTRAINT "PK_Tbl_Allowance_Mst" PRIMARY KEY  
(
	"C_Code1" 
) 
) 
;
/****** Object:  Table "tbl_ANDROID_API_LOG"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_ANDROID_API_LOG"(
	"n_id" SERIAL NOT NULL,
	"c_fscode" varchar(50) NULL,
	"C_index" varchar(200) NULL,
	"c_data" text NULL,
	"d_Date" timestamp NULL
) 
;
/****** Object:  Table "tbl_android_api_payload_log"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_android_api_payload_log"(
	"n_srno" SERIAL NOT NULL,
	"c_apiname" varchar(1000) NULL,
	"c_payload" text NULL,
	"d_createdon" timestamp NULL,
	"c_createdby" varchar(50) NULL,
	"c_response" text NULL,
 CONSTRAINT "PK_tbl_android_api_payload_log" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_Android_Crash_Log"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Android_Crash_Log"(
	"n_id" SERIAL NOT NULL,
	"c_fsCode" varchar(50) NULL,
	"c_empCode" varchar(50) NULL,
	"c_crash_details" text NULL,
	"c_device_model" varchar(200) NULL,
	"c_device_id" varchar(100) NULL,
	"c_os_version" varchar(100) NULL,
	"d_date" timestamp NULL,
	"c_Apk" varchar(10) NULL,
	"c_apk_version" varchar(50) NULL,
PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "tbl_android_forced_login"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_android_forced_login"(
	"c_fs_code" varchar(20) NULL,
	"d_last_login_date" timestamp NULL,
	"d_blocked_date" timestamp NULL,
	"n_status" integer NULL
) 
;
/****** Object:  Table "TBL_ANDROID_LOGIN"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "TBL_ANDROID_LOGIN"(
	"C_FSCODE" varchar(100) NOT NULL,
	"D_LOGINTIME" timestamp NULL,
	"D_LOGOUTTIME" timestamp NULL
) 
;
/****** Object:  Table "tbl_Android_Service_CallTime"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Android_Service_CallTime"(
	"n_srno" SERIAL NOT NULL,
	"c_index" varchar(500) NULL,
	"d_datetime" timestamp NULL,
	"c_data" text NULL,
	"c_id" integer NULL
) 
;
/****** Object:  Table "tbl_android_version"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_android_version"(
	"v_id" integer NULL
) 
;
/****** Object:  Table "tbl_APIData_Configure"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_APIData_Configure"(
	"c_companyid" varchar(20) NULL,
	"c_userid" varchar(20) NULL,
	"c_password" varchar(20) NULL,
	"c_IndexNo" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_AppError_log"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_AppError_log"(
	"c_error" varchar(5000) NULL,
	"d_date" timestamp NULL,
	"n_srno" SERIAL NOT NULL
) 
;
/****** Object:  Table "tbl_area_det"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_area_det"(
	"c_area_code" varchar(10) NOT NULL,
	"c_area_type" varchar(10) NOT NULL,
	"d_date_from" timestamp NOT NULL,
	"d_date_to" timestamp NULL,
 CONSTRAINT "PK_tbl_area_det" PRIMARY KEY  
(
	"c_area_code" ,
	"c_area_type" ,
	"d_date_from" 
) 
) 
;
/****** Object:  Table "Tbl_Area_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Area_Mst"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"C_Sh_Name" varchar(7) NULL,
	"C_Region_Code" varchar(10) NOT NULL,
	"C_SalesHQ" varchar(50) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"n_lami" double precision NULL,
	"n_lgmi" double precision NULL,
	"c_district_code" varchar(50) NULL,
	"C_Classification_Code" varchar(10) NULL,
 CONSTRAINT "PK_Tbl_Area_Mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "tbl_area_mst_temp"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_area_mst_temp"(
	"C_Code" char(6) NULL,
	"C_Name" char(50) NULL,
	"C_Sh_Name" char(20) NULL,
	"C_Region_Code" char(6) NULL,
	"C_SalesHQ" char(10) NULL,
	"n_deleted" numeric(1, 0) NULL,
	"d_created" varchar(30) NULL,
	"d_modified" varchar(30) NULL,
	"c_modifier" char(20) NULL
) 
;
/****** Object:  Table "tbl_area_othersubarea_mapping"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_area_othersubarea_mapping"(
	"n_id" integer NULL,
	"c_area_designation_fs_code" varchar(20) NULL,
	"c_subarea_code" varchar(20) NULL,
	"d_created" timestamp NULL
) 
;
/****** Object:  Table "tbl_area_othersubarea_mapping_mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_area_othersubarea_mapping_mst"(
	"n_id" integer NULL,
	"c_name" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_area_type_mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_area_type_mst"(
	"c_code" varchar(10) NOT NULL,
	"c_name" varchar(50) NULL,
	"c_sh_name" varchar(10) NULL,
	"n_deleted" smallint NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "tbl_asset_courier_data"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_asset_courier_data"(
	"n_req_no" integer NULL,
	"n_req_type" integer NULL,
	"c_empcode" varchar(50) NULL,
	"c_courier_name" varchar(100) NULL,
	"n_docket_no" integer NULL,
	"d_date" timestamp NULL,
	"c_depo_name" varchar(100) NULL,
	"c_depo_contact_person" varchar(100) NULL,
	"c_state_head" varchar(100) NULL,
	"c_imei_no" varchar(100) NULL,
	"n_working_cond" integer NULL,
	"c_depo_code" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_asset_docc_upload"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_asset_docc_upload"(
	"n_Srno" numeric(18, 0) NOT NULL,
	"c_docname" varchar(500) NULL,
	"c_created_by" varchar(50) NULL,
	"d_created" timestamp NULL
) 
;
/****** Object:  Table "tbl_asset_fs_question_mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_asset_fs_question_mst"(
	"n_id" SERIAL NOT NULL,
	"c_fs_code" varchar(20) NULL,
	"c_emp_code" varchar(20) NULL,
	"c_qn_code" varchar(20) NULL,
	"n_yn_answer" integer NULL,
	"d_date" timestamp NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "tbl_asset_join_resign_det"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_asset_join_resign_det"(
	"n_id" SERIAL NOT NULL,
	"c_fscode" varchar(50) NULL,
	"c_fsname" varchar(100) NULL,
	"c_empcode" varchar(50) NULL,
	"c_mngr_code" varchar(50) NULL,
	"d_join_resign" timestamp NULL,
	"d_mngr_change" timestamp NULL,
	"n_res_join" integer NULL,
	"n_status" integer NULL
) 
;
/****** Object:  Table "tbl_asset_join_resign_det_log"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_asset_join_resign_det_log"(
	"n_id" integer NULL,
	"c_fscode" varchar(50) NULL,
	"c_fsname" varchar(100) NULL,
	"c_empcode" varchar(50) NULL,
	"c_mngr_code" varchar(50) NULL,
	"d_join_resign" timestamp NULL,
	"d_mngr_change" timestamp NULL,
	"n_res_join" integer NULL,
	"n_status" integer NULL
) 
;
/****** Object:  Table "tbl_asset_mail_details"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_asset_mail_details"(
	"c_req_type" varchar(20) NULL,
	"c_level_type" varchar(20) NULL,
	"c_subject" varchar(200) NULL,
	"c_mailfromHead" varchar(100) NULL,
	"c_mailcontent" varchar(500) NULL,
	"c_mailcontent_apr" varchar(500) NULL,
	"c_mailcontent_con" varchar(500) NULL
) 
;
/****** Object:  Table "tbl_asset_mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_asset_mst"(
	"n_srno" SERIAL NOT NULL,
	"c_code" varchar(20) NULL,
	"c_assettype" varchar(50) NULL,
	"c_modelno" varchar(50) NULL,
	"c_imeino" varchar(50) NULL,
	"c_emp_Code" varchar(50) NULL,
	"n_amount" numeric(18, 2) NULL,
	"n_lifecycle" integer NULL,
	"n_deleted" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"d_fromdate" timestamp NULL,
	"d_todate" timestamp NULL,
	"c_asset_name" varchar(200) NULL,
	"c_serail_no" varchar(50) NULL,
	"d_date_of_purchase" timestamp NULL,
	"d_adp_expiry_date" timestamp NULL,
	"c_invoice_no" varchar(50) NULL,
	"d_invoice_date" timestamp NULL,
	"n_table_amount" numeric(18, 2) NULL,
	"c_po_no" varchar(50) NULL,
	"d_po_date" timestamp NULL,
	"c_android_si_no" varchar(1000) NULL,
	"c_courier_name" varchar(100) NULL,
	"c_docket_no" varchar(50) NULL,
	"d_courier_date" timestamp NULL,
	"c_depo_code" varchar(50) NULL,
	"c_deponame" varchar(100) NULL,
	"c_depo_contact_person" varchar(100) NULL,
	"c_state_head" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_asset_notification_new_emp"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_asset_notification_new_emp"(
	"c_fscode" varchar(20) NULL,
	"c_empcode" varchar(20) NULL,
	"n_opt" integer NULL,
	"d_date" timestamp NULL,
	"c_loginfs" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_asset_notification_resigned_emp"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_asset_notification_resigned_emp"(
	"c_fscode" varchar(20) NULL,
	"c_empcode" varchar(20) NULL,
	"n_opt" integer NULL,
	"d_date" timestamp NULL,
	"c_loginfs" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_asset_question_mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_asset_question_mst"(
	"n_srno" SERIAL NOT NULL,
	"c_code" varchar(10) NULL,
	"c_name" varchar(500) NULL,
	"n_mapto" smallint NULL,
	"n_active" smallint NULL,
	"n_deleted" smallint NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"n_questiontype" integer NULL,
	"c_choice1" varchar(100) NULL,
	"c_choice2" varchar(100) NULL,
	"c_choice3" varchar(100) NULL,
	"c_choice4" varchar(100) NULL,
	"c_choice5" varchar(100) NULL,
	"c_mutiplechoice1" varchar(100) NULL,
	"c_mutiplechoice2" varchar(100) NULL,
	"c_mutiplechoice3" varchar(100) NULL,
	"c_mutiplechoice4" varchar(100) NULL,
	"c_mutiplechoice5" varchar(100) NULL,
	"n_textdata" integer NULL,
	"n_noofdays" integer NULL
) 
;
/****** Object:  Table "tbl_asset_request"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_asset_request"(
	"n_srno" bigint NOT NULL,
	"c_emp_code" varchar(10) NULL,
	"c_fs_code" varchar(10) NULL,
	"d_date" timestamp NULL,
	"c_asset_code" varchar(10) NULL,
	"c_description1" varchar(200) NULL,
	"n_Request_type" integer NULL,
	"d_approved" timestamp NULL,
	"c_approvedby" varchar(10) NULL,
	"c_approved_note" varchar(200) NULL,
	"d_confirmed" timestamp NULL,
	"c_confirmedby" varchar(10) NULL,
	"c_confirmed_note" varchar(200) NULL,
	"c_status" char(1) NULL,
	"c_description2" varchar(100) NULL,
	"c_fscode" varchar(20) NULL,
	"c_imeino" varchar(50) NULL,
	"n_submit_no_cover" integer NULL,
	"n_submit_no_charger" integer NULL,
	"n_appove_no_cover" integer NULL,
	"n_approve_no_charger" integer NULL,
	"n_confirm_no_cover" integer NULL,
	"n_confirm_no_charger" integer NULL,
	"c_asset_type" varchar(50) NULL,
	"c_setupno" varchar(20) NULL,
	"n_approval_required" integer NULL,
	"c_confirmator" varchar(50) NULL,
	"c_deskcode" varchar(50) NULL,
 CONSTRAINT "PK_tbl_assetl_request" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_asset_setup_det"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_asset_setup_det"(
	"n_rowid" SERIAL NOT NULL,
	"n_setup_srno" integer NOT NULL,
	"n_setup_type" text NULL,
	"c_desk" text NULL,
	"n_asset_approved" integer NULL
) 
;
/****** Object:  Table "tbl_asset_type_mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_asset_type_mst"(
	"c_code" varchar(20) NULL,
	"c_name" varchar(50) NULL,
	"n_status" integer NULL,
	"n_deleted" integer NULL,
	"d_created" timestamp NULL,
	"n_category" integer NOT NULL
) 
;
/****** Object:  Table "tbl_asset_vendor_data"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_asset_vendor_data"(
	"n_req_no" integer NULL,
	"n_req_type" integer NULL,
	"c_empcode" varchar(50) NULL,
	"c_vendor_name" varchar(100) NULL,
	"d_send_date" timestamp NULL,
	"c_remarks" text NULL,
	"d_recieved_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_Auto_Email_FS_List"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Auto_Email_FS_List"(
	"n_srno" integer NULL,
	"C_FS_Code" varchar(50) NULL,
	"n_type" integer NULL
) 
;
/****** Object:  Table "tbl_Auto_MTP_Setup"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Auto_MTP_Setup"(
	"n_srno" SERIAL NOT NULL,
	"c_Division_Code" varchar(2000) NULL,
	"c_Region_Code" varchar(3000) NULL,
	"c_Desc_Code" varchar(100) NULL,
	"c_Fscode" varchar(100) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "tbl_Auto_Stp_Define_Months"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Auto_Stp_Define_Months"(
	"n_srno" integer NOT NULL,
	"C_Div_Reg_Des_FS_code" text NULL,
	"n_count" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "tbl_Auto_Stp_Define_Months_Approval"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Auto_Stp_Define_Months_Approval"(
	"n_setupid" SERIAL NOT NULL,
	"n_app_req" integer NULL,
	"n_singleormultiple" integer NULL,
	"n_deleted" integer NULL
) 
;
/****** Object:  Table "tbl_Auto_Stp_Define_Months_Approval_det"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Auto_Stp_Define_Months_Approval_det"(
	"n_setupid" integer NULL,
	"n_type" integer NULL
) 
;
/****** Object:  Table "tbl_Auto_Stp_Months"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Auto_Stp_Months"(
	"n_srno" SERIAL NOT NULL,
	"n_type" integer NULL,
	"c_Division_Code" text NULL,
	"c_Region_Code" text NULL,
	"c_Desc_Code" text NULL,
	"c_Fs_Code" text NULL,
	"n_deleted" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_Auto_Stp_Setup"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Auto_Stp_Setup"(
	"n_srno" SERIAL NOT NULL,
	"n_type" integer NULL,
	"c_Division_Code" varchar(2000) NULL,
	"c_Region_Code" varchar(3000) NULL,
	"c_Desc_Code" varchar(100) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"n_HQ" integer NULL
) 
;
/****** Object:  Table "tbl_Auto_Stp_Setup_Details"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Auto_Stp_Setup_Details"(
	"n_srno" integer NOT NULL,
	"C_Reg_FS_code" varchar(100) NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"N_Transit" numeric(18, 2) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"n_TALimit" numeric(18, 2) NULL
) 
;
/****** Object:  Table "tbl_Auto_Stp_Setup_Details_log"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Auto_Stp_Setup_Details_log"(
	"n_srno" integer NOT NULL,
	"C_Reg_FS_code" varchar(100) NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL
) 
;
/****** Object:  Table "tbl_Auto_Stp_Setup_ExpenseType"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Auto_Stp_Setup_ExpenseType"(
	"n_srno" integer NULL,
	"c_ExpenseType" varchar(150) NULL,
	"n_ExpenseAmount" numeric(18, 2) NULL
) 
;
/****** Object:  Table "tbl_Auto_Stp_Setup_log"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Auto_Stp_Setup_log"(
	"n_srno" integer NULL,
	"n_type" integer NULL,
	"c_Division_Code" text NULL,
	"c_Region_Code" text NULL,
	"c_Desc_Code" varchar(50) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "tbl_Auto_Stp_Setup_Perioddet"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Auto_Stp_Setup_Perioddet"(
	"n_srno" integer NULL,
	"n_Period" integer NULL,
	"d_fromDate" "date" NULL,
	"d_toDate" "date" NULL,
	"n_month" integer NULL
) 
;
/****** Object:  Table "tbl_Auto_Stp_Setup_TAallowance_det"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Auto_Stp_Setup_TAallowance_det"(
	"n_srno" integer NULL,
	"n_fromkm" numeric(18, 2) NULL,
	"n_tokm" numeric(18, 2) NULL,
	"n_rupeesperkm" numeric(18, 2) NULL,
	"d_created" timestamp NULL,
	"c_TravelMode" text NULL
) 
;
/****** Object:  Table "Tbl_Autocode_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Autocode_Mst"(
	"c_name" varchar(50) NULL,
	"n_autoflag" smallint NULL,
	"n_autocodelgth" integer NULL
) 
;
/****** Object:  Table "tbl_bank_mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_bank_mst"(
	"c_bank_code" varchar(10) NULL,
	"c_bank_name" varchar(20) NULL,
	"c_short_name" varchar(5) NULL,
	"c_branch_name" varchar(20) NULL,
	"n_deleted" smallint NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL
) 
;
/****** Object:  Table "tbl_brand_promotion_data_wh"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_brand_promotion_data_wh"(
	"division" varchar(500) NULL,
	"Region" varchar(500) NULL,
	"L1_EMP_CODE" varchar(50) NULL,
	"L1_FS_CODE" varchar(50) NULL,
	"L1_NAME" varchar(500) NULL,
	"MR_EMP_CODE" varchar(50) NULL,
	"MR_FS_CODE" varchar(50) NULL,
	"MR_NAME" varchar(500) NULL,
	"HQ" varchar(500) NULL,
	"Priority_Products" varchar(500) NULL,
	"Priority_Products_Code" varchar(50) NULL,
	"SPECIALITY" varchar(500) NULL,
	"d-P1" integer NULL,
	"d-P2" integer NULL,
	"d-P3" integer NULL,
	"d-P4" integer NULL,
	"d-P5" integer NULL,
	"d1-P1" integer NULL,
	"d1-P2" integer NULL,
	"d1-P3" integer NULL,
	"d1-P4" integer NULL,
	"d1-P5" integer NULL,
	"d2-P1" integer NULL,
	"d2-P2" integer NULL,
	"d2-P3" integer NULL,
	"d2-P4" integer NULL,
	"d2-P5" integer NULL,
	"Mon" integer NULL,
	"YearData" integer NULL
) 
;
/****** Object:  Table "Tbl_BrandFstypeMap"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_BrandFstypeMap"(
	"C_Brand_code" varchar(10) NOT NULL,
	"N_flag" integer NULL,
	"N_fstype" integer NOT NULL,
 CONSTRAINT "PK_Tbl_Visualadi_BrandDetail" PRIMARY KEY  
(
	"C_Brand_code" ,
	"N_fstype" 
) 
) 
;
/****** Object:  Table "tbl_budget_grp_mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_budget_grp_mst"(
	"c_code" varchar(10) NULL,
	"c_name" varchar(300) NULL,
	"n_status" integer NULL,
	"n_deleted" integer NULL,
	"n_max_amount" numeric(18, 2) NULL
) 
;
/****** Object:  Table "tbl_Camp_image"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Camp_image"(
	"n_srno" numeric(18, 0) NULL,
	"n_CType_Code" bigint NULL,
	"c_CTopic_Code" varchar(10) NULL,
	"c_image_name" varchar(100) NULL,
	"c_imageReview" varchar(500) NULL,
	"d_uploaddate" timestamp NULL
) 
;
/****** Object:  Table "tbl_campaign_data_collection"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_campaign_data_collection"(
	"n_campsrno" numeric(18, 0) NULL,
	"n_srNo" SERIAL NOT NULL,
	"c_name" varchar(100) NULL,
	"c_phonenumber" varchar(50) NULL,
	"n_Sex" integer NULL,
	"c_remarks" varchar(500) NULL,
	"d_date" timestamp NULL,
	"c_fs_code" varchar(100) NULL,
	"c_campaign_code" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_campaign_file_upload"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_campaign_file_upload"(
	"n_srno" varchar(50) NULL,
	"c_fs_code" varchar(100) NULL,
	"c_filename" varchar(500) NULL,
	"c_campaign_code" varchar(100) NULL
) 
;
/****** Object:  Table "Tbl_Campaign_Itemdet"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Campaign_Itemdet"(
	"c_Code" varchar(10) NULL,
	"c_ItemCode" varchar(50) NULL,
	"n_Type" smallint NULL
) 
;
/****** Object:  Table "Tbl_Campaign_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Campaign_Mst"(
	"c_Code" varchar(10) NOT NULL,
	"c_Name" varchar(100) NULL,
	"d_Date_From" timestamp NULL,
	"d_Date_to" timestamp NULL,
	"n_No_Visit" numeric(3, 0) NULL,
	"c_Division_Name" varchar(50) NULL,
	"c_BrandGrp" text NULL,
	"c_Grade" text NULL,
	"n_Incentive" numeric(9, 0) NULL,
	"c_Category" text NULL,
	"c_Note" varchar(100) NULL,
	"n_Status" integer NULL,
	"n_Deleted" smallint NOT NULL,
	"d_Created" timestamp NOT NULL,
	"d_Modified" timestamp NULL,
	"c_Modifier" varchar(10) NULL,
	"c_RegionCode" text NULL,
	"n_No_of_Doctors" integer NULL,
	"n_rqst_setupid" integer NULL,
 CONSTRAINT "PK_Tbl_Campaign_Mst" PRIMARY KEY  
(
	"c_Code" 
) 
) 
;
/****** Object:  Table "tbl_Campaign_Multiple_Approval_Det"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Campaign_Multiple_Approval_Det"(
	"n_camp_hdr_srno" varchar(10) NULL,
	"c_approvedby" varchar(50) NULL,
	"fstype" integer NULL,
	"d_approved" timestamp NULL,
	"c_approvalNote" varchar(200) NULL
) 
;
/****** Object:  Table "Tbl_Campaign_Zonedet"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Campaign_Zonedet"(
	"c_Code" varchar(10) NULL,
	"c_ZoneCode" varchar(50) NULL
) 
;
/****** Object:  Table "Tbl_CampaignRequest_Det"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_CampaignRequest_Det"(
	"n_srNo" integer NULL,
	"c_DoctCode" varchar(50) NULL
) 
;
/****** Object:  Table "Tbl_CampaignRequest_Hdr"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_CampaignRequest_Hdr"(
	"n_srNo" SERIAL NOT NULL,
	"c_CampaignCode" varchar(10) NULL,
	"d_Date" timestamp NULL,
	"c_Note" varchar(200) NULL,
	"n_Status" smallint NULL,
	"c_RequestedBy" varchar(50) NULL,
	"c_ApprovedBy" varchar(50) NULL,
	"d_ApprovedDate" timestamp NULL,
	"c_ApprovelNote" varchar(200) NULL,
	"n_Deleted" smallint NULL,
	"n_Rejected" smallint NULL,
	"c_SelectedFs" varchar(20) NULL,
	"c_subarea_code" text NULL,
	"C_rqst_Status" varchar(5) NULL,
	"c_NextApprvl_FS" varchar(10) NULL,
	"c_confirmedby" varchar(10) NULL,
	"d_confirmed_date" timestamp NULL,
	"c_confirmnote" varchar(200) NULL
) 
;
/****** Object:  Table "tbl_Campiagn_Req_setup_det"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Campiagn_Req_setup_det"(
	"n_setupid" integer NULL,
	"n_type" integer NULL
) 
;
/****** Object:  Table "tbl_Campiagn_Req_setup_mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Campiagn_Req_setup_mst"(
	"n_srno" SERIAL NOT NULL,
	"c_name" varchar(50) NULL,
	"n_app_type" integer NULL,
	"c_desk_code" varchar(50) NULL,
	"n_deleted" integer NULL,
 CONSTRAINT "PK_tbl_Campiagn_Req_setup_mst" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_CampTopic_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_CampTopic_Mst"(
	"c_CTopic_Code" varchar(10) NULL,
	"c_CTopic_Name" varchar(100) NULL,
	"n_deleted" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_CampTye_CampTopic_Mapping"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_CampTye_CampTopic_Mapping"(
	"n_CType_Code" bigint NULL,
	"c_CTopic_Code" varchar(10) NULL
) 
;
/****** Object:  Table "tbl_CampTye_Fs_Mapping"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_CampTye_Fs_Mapping"(
	"n_CType_Code" bigint NULL,
	"c_Fs_Code" varchar(10) NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "tbl_CampType_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_CampType_Mst"(
	"n_CType_Code" SERIAL NOT NULL,
	"c_CType_Name" varchar(100) NULL,
	"d_date_from" timestamp NULL,
	"d_date_to" timestamp NULL,
	"n_HierarchyType" integer NULL,
	"c_fs_code" varchar(20) NULL,
	"n_status" integer NULL,
	"n_deleted" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(20) NULL,
	"n_lami" numeric(18, 12) NULL,
	"n_lgmi" numeric(18, 12) NULL
) 
;
/****** Object:  Table "tbl_Candidate_Compensation"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Candidate_Compensation"(
	"C_Comp_Code" varchar(50) NULL,
	"C_Candidate_Code" varchar(50) NULL,
	"n_amount" numeric(9, 2) NULL
) 
;
/****** Object:  Table "tbl_candidate_desk_mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_candidate_desk_mst"(
	"n_srno" SERIAL NOT NULL,
	"c_name" varchar(500) NULL,
	"c_empcode" varchar(50) NULL,
	"n_deleted" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_candidate_desk_setup"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_candidate_desk_setup"(
	"n_srno" SERIAL NOT NULL,
	"n_deskcode" integer NULL,
	"c_division" varchar(50) NULL,
	"n_deleted" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(50) NULL
) 
;
/****** Object:  Table "Tbl_Candidate_Document"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Candidate_Document"(
	"C_Document_code" varchar(50) NULL,
	"C_Candidate_Code" varchar(50) NULL,
	"c_doc_path" varchar(50) NULL,
	"n_deleted" integer NULL
) 
;
/****** Object:  Table "tbl_Candidate_Status"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Candidate_Status"(
	"n_srno" numeric(18, 0) NULL,
	"C_Reason" varchar(200) NULL,
	"C_EmpCode" varchar(50) NULL,
	"D_Date" timestamp NULL,
	"C_Status" varchar(10) NULL
) 
;
/****** Object:  Table "tbl_category_edetail_capture"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_category_edetail_capture"(
	"c_fscode" varchar(20) NULL,
	"c_categorycode" varchar(20) NULL,
	"c_titlecode" varchar(20) NULL,
	"c_itemcode" varchar(20) NULL,
	"n_slideid" integer NULL,
	"d_date" "date" NULL,
	"t_time" varchar(20) NULL,
	"n_flag" integer NULL
) 
;
/****** Object:  Table "tbl_category_email_mandatory"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_category_email_mandatory"(
	"c_category_code" varchar(20) NULL
) 
;
/****** Object:  Table "Tbl_Category_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Category_Mst"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"C_Sh_Name" char(10) NULL,
	"N_Type" integer NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"n_CatStatus" integer NULL,
	"c_image" varchar(500) NULL,
 CONSTRAINT "PK_Tbl_Category_Mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "tbl_category_mst_bck_21042026"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_category_mst_bck_21042026"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"C_Sh_Name" char(10) NULL,
	"N_Type" integer NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"n_CatStatus" integer NULL,
	"c_image" varchar(500) NULL
) 
;
/****** Object:  Table "Tbl_Category_Mst_temp"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Category_Mst_temp"(
	"c_code" varchar(10) NULL,
	"c_name" varchar(50) NULL,
	"c_sh_name" varchar(10) NULL,
	"n_deleted" integer NULL,
	"d_date" varchar(30) NULL,
	"d_ldate" varchar(30) NULL,
	"c_modiuser" varchar(30) NULL
) 
;
/****** Object:  Table "Tbl_Change_Req_Log"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Change_Req_Log"(
	"C_fs_code" varchar(10) NOT NULL,
	"C_Emp_Code" varchar(10) NOT NULL,
	"C_Doctor_Code" varchar(10) NOT NULL,
	"D_datetime" timestamp NOT NULL,
	"C_Field_Name" varchar(100) NOT NULL,
	"C_old_value" varchar(500) NULL,
	"C_new_value" varchar(500) NULL,
 CONSTRAINT "PK_Tbl_Change_Req_Log" PRIMARY KEY  
(
	"C_fs_code" ,
	"C_Emp_Code" ,
	"C_Doctor_Code" ,
	"D_datetime" ,
	"C_Field_Name" 
) 
) 
;
/****** Object:  Table "Tbl_Chem_Request"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Chem_Request"(
	"n_SerialNo" SERIAL NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"N_Type" integer NOT NULL,
	"C_Add_1" varchar(50) NULL,
	"C_Add_2" varchar(50) NULL,
	"C_City" varchar(50) NULL,
	"C_State" varchar(50) NULL,
	"C_Pin" varchar(10) NULL,
	"C_Phone" varchar(20) NULL,
	"C_RefNo" varchar(50) NULL,
	"C_Area_Code" varchar(10) NULL,
	"C_Subarea_Code" varchar(10) NULL,
	"C_CreatedBy" varchar(50) NULL,
	"d_created" timestamp NOT NULL,
	"C_TinNo" varchar(50) NULL,
	"C_LicNo" varchar(50) NULL,
	"C_Add_3" varchar(50) NULL,
	"C_Add_4" varchar(50) NULL,
	"C_ContactPersonMobileNo" varchar(20) NULL,
	"C_OutletType" varchar(20) NULL,
	"C_Grade" varchar(50) NULL,
	"C_Landmark" varchar(50) NULL,
	"C_ContactPerson" varchar(50) NULL,
	"C_Email_ID" varchar(50) NULL,
	"D_DOB" timestamp NULL,
	"D_DOW" timestamp NULL,
	"C_LicenseNo_Food" varchar(50) NULL,
	"C_OutletContactNo" varchar(20) NULL,
	"C_Approved" varchar(1) NOT NULL,
	"n_Sft_shop" numeric(18, 2) NULL,
	"n_No_of_display_Shelf" numeric(9, 0) NULL,
	"c_desc_display_shelf" varchar(100) NULL,
	"n_Front_Board_Height" numeric(9, 2) NULL,
	"n_Front_Board_length" numeric(9, 2) NULL,
	"n_Backlit" numeric(9, 0) NULL,
	"n_Computerised" numeric(9, 0) NULL,
	"n_lami" double precision NULL,
	"n_lgmi" double precision NULL,
	"c_sort" varchar(10) NULL
) 
;
/****** Object:  Table "Tbl_Chem_SalesD"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Chem_SalesD"(
	"n_srno" numeric(18, 0) NOT NULL,
	"n_row_id" numeric(18, 0) NOT NULL,
	"c_item_code" varchar(10) NULL,
	"n_qty" numeric(18, 0) NULL,
 CONSTRAINT "PK_Tbl_Chem_SalesD" PRIMARY KEY  
(
	"n_srno" ,
	"n_row_id" 
) 
) 
;
/****** Object:  Table "Tbl_Chem_SalesH"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Chem_SalesH"(
	"n_srno" numeric(18, 0) NOT NULL,
	"d_date" timestamp NULL,
	"c_chem_code" varchar(10) NULL,
	"c_doc_code" varchar(10) NULL,
	"n_total" numeric(18, 4) NULL,
 CONSTRAINT "PK_Tbl_Chem_SalesH" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_chemist_mst_ril"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_chemist_mst_ril"(
	"n_id" SERIAL NOT NULL,
	"c_code" varchar(50) NULL,
	"n_jio_pc_kit" integer NULL,
	"c_wholesale_license" varchar(100) NULL,
	"n_employee_count" integer NULL,
	"n_monthly_business_percentage" integer NULL,
	"c_onlie_ordering_app" varchar(100) NULL,
	"n_distributor_count" integer NULL,
	"c_top_distributors" varchar(1000) NULL,
	"n_total_credit_amount" numeric(18, 2) NULL,
	"n_shop_age" numeric(6, 2) NULL,
	"n_avg_distributor_credit_amount" numeric(18, 2) NULL,
	"c_delivary_recevied_within" varchar(1000) NULL,
	"c_buy_from_wholesaler" varchar(1000) NULL,
	"c_image1" varchar(500) NULL,
	"c_image2" varchar(500) NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_storetype" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_chemist_pob_hdr"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_chemist_pob_hdr"(
	"n_srno" SERIAL NOT NULL,
	"c_subarea" text NULL,
	"d_date" timestamp NULL,
	"c_chemistcode" varchar(20) NULL,
	"c_stokistcode" varchar(20) NULL,
	"n_nopob" integer NULL,
	"n_status" integer NULL,
	"c_requestedby" varchar(20) NULL,
	"n_totalamount" varchar(20) NULL,
	"c_note" text NULL,
	"c_dispense_code" varchar(20) NULL,
	"d_posting_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_chemist_pob_mandatorysettings_setup"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_chemist_pob_mandatorysettings_setup"(
	"n_srno" SERIAL NOT NULL,
	"n_type" integer NULL,
	"c_division_code" text NULL,
	"c_region_code" text NULL,
	"n_deleted" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "tbl_chemist_pob_sub_details"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_chemist_pob_sub_details"(
	"n_srno" integer NOT NULL,
	"c_itemcode" varchar(20) NULL,
	"n_pack" varchar(20) NULL,
	"n_rate" varchar(20) NULL,
	"n_qty" varchar(20) NULL,
	"n_value" varchar(20) NULL,
	"c_note" varchar(500) NULL
) 
;
/****** Object:  Table "Tbl_Chemist_Type"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Chemist_Type"(
	"c_code" varchar(10) NOT NULL,
	"c_name" varchar(50) NOT NULL,
	"c_sh_name" varchar(7) NULL,
	"n_pur" numeric(18, 0) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"C_EMailPassword" varchar(500) NULL,
	"C_EMailID" varchar(3000) NULL,
	"C_DisplayNameEmail" varchar(100) NULL,
 CONSTRAINT "PK_Tbl_Retailer_Type" PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "tbl_ChemistActivityStatus"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_ChemistActivityStatus"(
	"N_Id" SERIAL NOT NULL,
	"C_ChemistCode" varchar(50) NULL,
	"N_ActivityStatus" integer NULL,
	"C_EnteredBy" varchar(50) NULL,
	"D_EnteredDate" timestamp NULL,
	"C_UpdatedBy" varchar(50) NULL,
	"D_UpdatedOn" timestamp NULL,
 CONSTRAINT "PK_tbl_ChemistActivityStatus" PRIMARY KEY  
(
	"N_Id" 
) 
) 
;
/****** Object:  Table "Tbl_Circular_Def_Det"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Circular_Def_Det"(
	"c_code" varchar(10) NOT NULL,
	"c_emp_code" varchar(50) NOT NULL,
	"n_status" integer NOT NULL,
	"d_Assigned_Date" timestamp NOT NULL,
	"d_read_Date" timestamp NULL,
	"n_must_read" integer NOT NULL
) 
;
/****** Object:  Table "tbl_circular_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_circular_Mst"(
	"C_Code" varchar(10) NOT NULL,
	"c_subject" varchar(100) NOT NULL,
	"c_circular_type" varchar(10) NOT NULL,
	"d_entry_date" timestamp NOT NULL,
	"d_from_date" timestamp NOT NULL,
	"d_to_date" timestamp NULL,
	"n_active" boolean NOT NULL,
	"n_must_read" integer NOT NULL,
	"c_modifier" varchar(10) NULL,
	"d_modified" timestamp NULL,
	"d_created" timestamp NOT NULL,
	"n_deleted" integer NOT NULL,
	"c_filename" varchar(1000) NULL,
	"c_startpage" varchar(1000) NULL,
	"n_Disply_Type" integer NOT NULL,
	"c_url" text NULL,
 CONSTRAINT "PK_tbl_circular_Mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "tbl_circulartype_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_circulartype_Mst"(
	"c_code" varchar(10) NOT NULL,
	"c_name" varchar(50) NOT NULL,
	"n_active" boolean NOT NULL,
	"n_deleted" integer NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
 CONSTRAINT "PK_tbl_circulartype_Mst" PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "tbl_City_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_City_Mst"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"C_State_Code" varchar(10) NOT NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"n_metroclassification" integer NOT NULL,
	"c_sh_name" text NULL,
 CONSTRAINT "PK_tbl_City_Mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "Tbl_claim_desk"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_claim_desk"(
	"C_CODE" varchar(10) NOT NULL,
	"C_NAME" varchar(50) NOT NULL,
	"C_EMP_CODE" varchar(10) NOT NULL,
	"N_DELETED" integer NOT NULL,
	"D_CREATED" timestamp NOT NULL,
	"D_MODIFIED" timestamp NULL,
	"C_MODIFIER" varchar(50) NULL,
 CONSTRAINT "PK_Tbl_claim_desk" PRIMARY KEY  
(
	"C_CODE" 
) 
) 
;
/****** Object:  Table "Tbl_claim_desk_det"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_claim_desk_det"(
	"C_DESK_CODE" varchar(10) NOT NULL,
	"C_DIVISION" varchar(10) NOT NULL,
	"C_LOCATION" varchar(10) NOT NULL,
	"C_DEPARTMENT" varchar(10) NOT NULL,
	"N_FSTYPE" numeric(18, 0) NOT NULL,
	"N_SRNO" SERIAL NOT NULL,
	"c_zone_code" varchar(10) NULL,
	"c_reg_code" varchar(10) NULL,
 CONSTRAINT "PK_Tbl_claim_desk_det" PRIMARY KEY  
(
	"N_SRNO" 
) 
) 
;
/****** Object:  Table "Tbl_claim_det"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_claim_det"(
	"N_SRNO" numeric(18, 0) NOT NULL,
	"D_DATE" timestamp NOT NULL,
	"N_DAYTYPE" integer NOT NULL,
	"C_DESCRIPTION" varchar(500) NULL,
	"N_NO_DR" numeric(18, 0) NOT NULL,
	"N_NO_CHM" numeric(18, 0) NOT NULL,
	"N_NO_STK" numeric(18, 0) NOT NULL,
	"C_WORKED_WITH" varchar(500) NULL,
	"N_DISTANCE" numeric(18, 2) NOT NULL,
	"N_STPDISTANCE" numeric(18, 2) NOT NULL,
	"N_VISITTYPE" integer NOT NULL,
	"C_stayed_at" varchar(1000) NULL,
	"c_modeoftravel" varchar(100) NULL,
 CONSTRAINT "PK_Tbl_claim_det" PRIMARY KEY  
(
	"N_SRNO" ,
	"D_DATE" 
) 
) 
;
/****** Object:  Table "tbl_Claim_FileUpload"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Claim_FileUpload"(
	"n_srno" integer NULL,
	"C_Subject" varchar(100) NULL,
	"C_FileName" varchar(100) NULL,
	"C_TempName" varchar(100) NULL,
	"d_Date" timestamp NULL,
	"C_Docpath" varchar(200) NULL
) 
;
/****** Object:  Table "tbl_Claim_FileUpload_Daily"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Claim_FileUpload_Daily"(
	"n_rowid" integer NULL,
	"n_srno" integer NULL,
	"C_Subject" varchar(100) NULL,
	"C_FileName" varchar(100) NULL,
	"C_TempName" varchar(100) NULL,
	"d_Date" timestamp NULL
) 
;
/****** Object:  Table "Tbl_claim_format_det"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_claim_format_det"(
	"C_CODE" varchar(10) NOT NULL,
	"N_FLAG" numeric(18, 0) NOT NULL,
	"C_EXP_CODE" varchar(10) NOT NULL,
	"n_type" integer NOT NULL,
	"C_EXP_HEADING" varchar(50) NOT NULL,
	"N_PRIORITY" numeric(18, 0) NOT NULL,
	"N_UPPER_LIMIT" numeric(18, 0) NOT NULL,
	"N_DEFAULT_VALUE" numeric(18, 0) NOT NULL,
	"n_check" integer NULL,
	"n_RemarksStatus" integer NULL,
	"N_MonthlyFixdExp" numeric(18, 2) NULL,
	"n_MonthlyFixedExpFromSTP" integer NULL,
 CONSTRAINT "PK_Tbl_claim_format_det_1" PRIMARY KEY  
(
	"C_CODE" ,
	"C_EXP_CODE" 
) 
) 
;
/****** Object:  Table "Tbl_claim_format_mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_claim_format_mst"(
	"C_CODE" varchar(50) NOT NULL,
	"C_NAME" varchar(50) NOT NULL,
	"N_MONTH_DAY" numeric(18, 0) NOT NULL,
	"N_VISITDETAIL_FROM" numeric(18, 0) NOT NULL,
	"N_PLACEVISIT_HEADER" numeric(18, 0) NOT NULL,
	"N_PRE_CLAIM_REF" numeric(18, 0) NOT NULL,
	"N_DETAIL_REQUIRED" numeric(18, 0) NOT NULL,
	"N_SUMMARY_REQUIRED" numeric(18, 0) NOT NULL,
	"N_REIMBURSMENT_REQUIRED" numeric(18, 0) NOT NULL,
	"N_DETAIL_DR_COUNT" numeric(18, 0) NOT NULL,
	"N_DETAIL_CHEM_COUNT" numeric(18, 0) NOT NULL,
	"N_DETAIL_STK_COUNT" numeric(18, 0) NOT NULL,
	"N_DETAIL_DIST_KM" numeric(18, 0) NOT NULL,
	"n_detail_dist_stp_km" numeric(18, 0) NOT NULL,
	"N_DETAIL_VISITTYPE" numeric(18, 0) NOT NULL,
	"N_DETAIL_WORKWITH" numeric(18, 0) NOT NULL,
	"N_DETAIL_DESCRIPTION_LOOKUP" numeric(18, 0) NOT NULL,
	"N_STATUS" integer NULL,
	"N_DELETED" integer NULL,
	"D_CREATED" timestamp NULL,
	"D_MODIFIED" timestamp NULL,
	"C_MODIFIER" varchar(50) NULL,
	"n_AdditionalTA" integer NULL,
	"n_stayed_at" integer NULL,
	"N_MonthlyFixdExp" numeric(18, 0) NULL,
	"n_Sup_Mer_Details" integer NULL,
	"n_ModeOfTravel" integer NOT NULL,
	"n_DA_TA_Confn_Remarks" integer NOT NULL,
	"n_day_wise_upload" integer NULL,
 CONSTRAINT "PK_Tbl_claim_format_mst" PRIMARY KEY  
(
	"C_CODE" 
) 
) 
;
/****** Object:  Table "Tbl_claim_log"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_claim_log"(
	"N_SRNO" numeric(18, 0) NULL,
	"C_CLAIM_CODE" varchar(10) NULL,
	"C_FS_CODE" varchar(10) NULL,
	"C_EMP_CODE" varchar(10) NULL,
	"C_PARENT_CODE" varchar(10) NULL,
	"C_DESK_CODE" varchar(10) NULL,
	"D_DATE" timestamp NULL,
	"D_DATE_FROM" timestamp NULL,
	"D_DATE_TO" timestamp NULL,
	"C_DESCRIPTION" varchar(500) NULL,
	"C_NOTE1" varchar(500) NULL,
	"C_NOTE2" varchar(500) NULL,
	"C_NOTE3" varchar(500) NULL,
	"N_APPROVED" integer NULL,
	"D_APPROVED_ON" timestamp NULL,
	"C_APPROVED_BY" varchar(10) NULL,
	"N_MANUAL_AUTO" integer NULL,
	"N_CONFIRMED" integer NULL,
	"D_CONFIRMED_ON" timestamp NULL,
	"C_CONFIRMED_BY" varchar(10) NULL,
	"N_DELETED" integer NULL,
	"D_MODIFIED" timestamp NULL,
	"n_claimed_amt" numeric(18, 2) NULL,
	"n_approved_amt" numeric(18, 2) NULL,
	"n_confirmed_amt" numeric(18, 2) NULL,
	"d_Reconfirmed_on" timestamp NULL,
	"c_Reconfirmation_Det" varchar(500) NULL,
	"n_claimsetup_srno" integer NULL,
	"N_Submit" integer NULL
) 
;
/****** Object:  Table "Tbl_claim_mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_claim_mst"(
	"N_SRNO" numeric(18, 0) NOT NULL,
	"C_CLAIM_CODE" varchar(10) NOT NULL,
	"C_FS_CODE" varchar(10) NOT NULL,
	"C_EMP_CODE" varchar(10) NOT NULL,
	"C_PARENT_CODE" varchar(10) NOT NULL,
	"C_DESK_CODE" varchar(10) NOT NULL,
	"D_DATE" timestamp NOT NULL,
	"D_DATE_FROM" timestamp NOT NULL,
	"D_DATE_TO" timestamp NOT NULL,
	"C_DESCRIPTION" varchar(500) NULL,
	"C_NOTE1" varchar(500) NULL,
	"C_NOTE2" varchar(500) NULL,
	"C_NOTE3" varchar(500) NULL,
	"N_APPROVED" integer NOT NULL,
	"D_APPROVED_ON" timestamp NULL,
	"C_APPROVED_BY" varchar(10) NULL,
	"N_MANUAL_AUTO" integer NOT NULL,
	"N_CONFIRMED" integer NOT NULL,
	"D_CONFIRMED_ON" timestamp NULL,
	"C_CONFIRMED_BY" varchar(10) NULL,
	"N_DELETED" integer NOT NULL,
	"D_MODIFIED" timestamp NULL,
	"n_claimed_amt" numeric(18, 2) NOT NULL,
	"n_approved_amt" numeric(18, 2) NOT NULL,
	"n_confirmed_amt" numeric(18, 2) NOT NULL,
	"d_Reconfirmed_on" timestamp NULL,
	"c_Reconfirmation_Det" varchar(500) NULL,
	"n_claimsetup_srno" integer NULL,
	"N_SUBMIT" integer NULL,
	"n_confirmsubmit" integer NULL,
	"d_confirm_dt" timestamp NULL,
	"n_reconfirm" integer NOT NULL,
 CONSTRAINT "PK_Tbl_claim_mst" PRIMARY KEY  
(
	"N_SRNO" 
) 
) 
;
/****** Object:  Table "Tbl_claim_mst_approval_log"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_claim_mst_approval_log"(
	"N_SRNO" numeric(18, 0) NOT NULL,
	"C_CLAIM_CODE" varchar(10) NOT NULL,
	"C_FS_CODE" varchar(10) NOT NULL,
	"C_EMP_CODE" varchar(10) NOT NULL,
	"C_PARENT_CODE" varchar(10) NOT NULL,
	"C_DESK_CODE" varchar(10) NOT NULL,
	"C_NOTE1" varchar(500) NULL,
	"C_NOTE2" varchar(500) NULL,
	"C_NOTE3" varchar(500) NULL,
	"N_APPROVED" integer NOT NULL,
	"D_APPROVED_ON" timestamp NULL,
	"C_APPROVED_BY" varchar(10) NULL,
	"D_MODIFIED" timestamp NULL,
	"n_claimsetup_srno" integer NULL,
	"n_claimed_amt" numeric(18, 2) NULL,
	"n_approved_amt" numeric(18, 2) NULL,
	"n_type" integer NULL
) 
;
/****** Object:  Table "tbl_claim_mst_bkp_beforemultipleapproval"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_claim_mst_bkp_beforemultipleapproval"(
	"N_SRNO" numeric(18, 0) NOT NULL,
	"C_CLAIM_CODE" varchar(10) NOT NULL,
	"C_FS_CODE" varchar(10) NOT NULL,
	"C_EMP_CODE" varchar(10) NOT NULL,
	"C_PARENT_CODE" varchar(10) NOT NULL,
	"C_DESK_CODE" varchar(10) NOT NULL,
	"D_DATE" timestamp NOT NULL,
	"D_DATE_FROM" timestamp NOT NULL,
	"D_DATE_TO" timestamp NOT NULL,
	"C_DESCRIPTION" varchar(500) NULL,
	"C_NOTE1" varchar(500) NULL,
	"C_NOTE2" varchar(500) NULL,
	"C_NOTE3" varchar(500) NULL,
	"N_APPROVED" integer NOT NULL,
	"D_APPROVED_ON" timestamp NULL,
	"C_APPROVED_BY" varchar(10) NULL,
	"N_MANUAL_AUTO" integer NOT NULL,
	"N_CONFIRMED" integer NOT NULL,
	"D_CONFIRMED_ON" timestamp NULL,
	"C_CONFIRMED_BY" varchar(10) NULL,
	"N_DELETED" integer NOT NULL,
	"D_MODIFIED" timestamp NULL,
	"n_claimed_amt" numeric(18, 2) NOT NULL,
	"n_approved_amt" numeric(18, 2) NOT NULL,
	"n_confirmed_amt" numeric(18, 2) NOT NULL,
	"d_Reconfirmed_on" timestamp NULL,
	"c_Reconfirmation_Det" varchar(500) NULL,
	"n_claimsetup_srno" integer NULL,
	"N_SUBMIT" integer NULL
) 
;
/****** Object:  Table "tbl_claim_onboard_outlet"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_claim_onboard_outlet"(
	"c_code" varchar(20) NULL,
	"c_fscode" varchar(20) NULL,
	"c_empcode" varchar(20) NULL,
	"c_mobileno" varchar(20) NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "Tbl_claim_setup"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_claim_setup"(
	"n_srno" SERIAL NOT NULL,
	"n_fstype" integer NOT NULL,
	"c_claim_define_code" varchar(10) NOT NULL,
	"n_auto_claim" integer NOT NULL,
	"n_approval_required" integer NOT NULL,
	"n_claim_approval" integer NOT NULL,
	"N_CLAIM_LIMIT" numeric(18, 2) NULL,
	"n_lock_days" integer NULL,
	"n_EditRequired" integer NOT NULL,
	"n_ApplicableHierarchy_Type" integer NULL,
	"c_ApplicableHierarchy_Fscode" varchar(20) NULL,
	"n_setup_status" integer NULL,
	"n_PrintButtonOnSubmit" integer NULL,
PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "Tbl_claim_sub_det"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_claim_sub_det"(
	"N_SRNO" numeric(18, 0) NOT NULL,
	"D_DATE" timestamp NOT NULL,
	"C_EXP_CODE" varchar(10) NOT NULL,
	"N_ROWID" integer NOT NULL,
	"N_SUBMIT_AMT" numeric(18, 2) NULL,
	"N_APPROVED_AMT" numeric(18, 2) NULL,
	"N_CONFIRMED_AMT" numeric(18, 2) NULL,
	"C_CONFIRMATION_NOTE" varchar(50) NULL,
	"N_TYPE" numeric(18, 0) NOT NULL,
	"C_REF_NO" varchar(50) NULL,
	"C_NOTE1" varchar(500) NULL,
	"C_NOTE2" varchar(500) NULL,
	"C_NOTE3" varchar(500) NULL,
	"C_APPROVED_NOTE" varchar(50) NULL,
	"C_DA_TA_REMARKS" text NULL,
	"C_DA_TA_CONFN_REMARKS" text NULL,
 CONSTRAINT "PK_h)	Tbl_claim_sub_det" PRIMARY KEY  
(
	"N_SRNO" ,
	"D_DATE" ,
	"C_EXP_CODE" ,
	"N_ROWID" 
) 
) 
;
/****** Object:  Table "tbl_ClaimType_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_ClaimType_Mst"(
	"c_code" varchar(10) NOT NULL,
	"c_name" varchar(50) NOT NULL,
	"n_sfatype" integer NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL
) 
;
/****** Object:  Table "tbl_class_DivDet"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_class_DivDet"(
	"c_code" varchar(10) NOT NULL,
	"c_div_code" varchar(10) NULL
) 
;
/****** Object:  Table "tbl_class_mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_class_mst"(
	"c_code" varchar(10) NOT NULL,
	"c_name" varchar(100) NULL,
	"n_deleted" numeric(18, 0) NULL,
	"c_modifier" varchar(10) NULL,
	"d_modified" timestamp NULL,
	"d_created" timestamp NULL,
	"c_specialisation" varchar(10) NULL,
PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "Tbl_Classification_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Classification_Mst"(
	"C_Code" varchar(20) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"C_Sh_Name" varchar(7) NULL,
	"n_deleted" integer NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"c_type" integer NULL,
 CONSTRAINT "PK_Classification_Mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "Tbl_Clinical_Trail_Experience"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Clinical_Trail_Experience"(
	"c_code" varchar(50) NULL,
	"c_name" varchar(200) NULL,
	"d_created" timestamp NULL,
	"d_modified_date" timestamp NULL,
	"n_deleted" integer NULL,
	"n_status" integer NULL,
	"n_score" integer NULL
) 
;
/****** Object:  Table "Tbl_CME_RTM_Air_Booking"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_CME_RTM_Air_Booking"(
	"n_id" SERIAL NOT NULL,
	"N_Request_ID" numeric(18, 0) NOT NULL,
	"N_Entity_Type" integer NOT NULL,
	"N_Entity_ID" numeric(18, 0) NOT NULL,
	"c_doc_code" varchar(1000) NULL,
	"c_fs_code" varchar(1000) NULL,
	"NameofPassenger" varchar(500) NULL,
	"PREFIX" varchar(500) NULL,
	"AGE" varchar(500) NULL,
	"MOBILENO" varchar(500) NULL,
	"GENDER" varchar(500) NULL,
	"PURPOSEOFTRAVEL" varchar(500) NULL,
	"JOURNEYTYPE" varchar(500) NULL,
	"TRAVELDATE" varchar(500) NULL,
	"TRAVELTYPESINGLERETURN" varchar(500) NULL,
	"TRAVELFROMCITY" varchar(500) NULL,
	"DEPATURETIMEPREFERENCE" varchar(500) NULL,
	"TRAVELTOCITY" varchar(500) NULL,
	"ARRIVALTIMEPREFERENCE" varchar(500) NULL,
	"MEALS" varchar(500) NULL,
	"SEATPREFERENCE" varchar(500) NULL,
	"AIRLINEPREFERENCE" varchar(500) NULL,
	"AdditionalInformation" varchar(500) NULL,
	"EXPHEAD" varchar(500) NULL,
	"DEPOT" varchar(500) NULL,
	"IFINTERNATIONALVISAEXIST" varchar(500) NULL,
	"DATEOFBIRTHOFCHILD" varchar(500) NULL,
	"DOBOFCHILD" varchar(500) NULL
) 
;
/****** Object:  Table "Tbl_CME_RTM_Assets_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_CME_RTM_Assets_Mst"(
	"N_Srno" SERIAL NOT NULL,
	"C_Name" varchar(200) NOT NULL,
	"N_Quantity_Required" integer NULL,
	"N_Deleted" integer NULL,
	"C_Created_By" varchar(10) NOT NULL,
	"D_Created_On" timestamp NOT NULL,
	"C_Modified_By" varchar(10) NULL,
	"D_Modified_On" timestamp NULL
) 
;
/****** Object:  Table "Tbl_CME_RTM_Cab_Booking"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_CME_RTM_Cab_Booking"(
	"n_id" SERIAL NOT NULL,
	"N_Request_ID" numeric(18, 0) NOT NULL,
	"N_Entity_Type" integer NOT NULL,
	"N_Entity_ID" numeric(18, 0) NOT NULL,
	"c_doc_code" varchar(1000) NULL,
	"c_fs_code" varchar(1000) NULL,
	"NameOfTheGuest" varchar(500) NULL,
	"MobileNoOfTheGuest" varchar(500) NULL,
	"CoordinatorPersonFromAlkem" varchar(500) NULL,
	"MobileNoOfCoordinator" varchar(500) NULL,
	"DutyType" varchar(500) NULL,
	"VehicleGroup" varchar(500) NULL,
	"CityFrom" varchar(500) NULL,
	"CityTo" varchar(500) NULL,
	"StartDate" varchar(500) NULL,
	"EndDate" varchar(500) NULL,
	"ReportingTime" varchar(500) NULL,
	"ReportingAddress" varchar(500) NULL,
	"DropAddress" varchar(500) NULL,
	"FlightNumber" varchar(500) NULL,
	"Remarks" varchar(500) NULL,
	"PurposeOfTravel" varchar(500) NULL,
	"ExpHead" varchar(500) NULL,
	"Depot" varchar(500) NULL,
	"AdditionalContactsName1" varchar(500) NULL,
	"AdditionalContactsMobileNo1" varchar(500) NULL,
	"AdditionalContactsEmail" varchar(500) NULL,
	"AdditionalContactsName2" varchar(500) NULL,
	"AdditionalContactsMobileNo2" varchar(500) NULL,
	"AdditionalContactsEmail2" varchar(500) NULL,
	"AdditionalContactsName3" varchar(500) NULL,
	"AdditionalContacts3Mobile" varchar(500) NULL,
	"AdditionalContacts3Email" varchar(500) NULL,
	"RequirementFor" varchar(500) NULL,
	"requiredfor" varchar(200) NULL,
	"requiredagain" varchar(200) NULL
) 
;
/****** Object:  Table "Tbl_CME_RTM_Control_Panel"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_CME_RTM_Control_Panel"(
	"N_Srno" SERIAL NOT NULL,
	"C_Request_Acknowledgement_Url" varchar(500) NULL,
	"C_Approve_Acknowledgement_Url" varchar(500) NULL,
	"C_Confirm_Acknowledgement_Url" varchar(500) NULL,
	"C_UCPMP_Guidelines_Url" varchar(500) NULL,
	"C_Created_By" varchar(10) NOT NULL,
	"D_Created_On" timestamp NOT NULL,
	"C_Modified_By" varchar(10) NOT NULL,
	"D_Modified_On" timestamp NOT NULL
) 
;
/****** Object:  Table "Tbl_CME_RTM_Control_Panel_Active_Rps_Mode"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_CME_RTM_Control_Panel_Active_Rps_Mode"(
	"N_Srno" SERIAL NOT NULL,
	"C_Docinv_Code" varchar(200) NULL,
	"N_Deleted" integer NULL,
	"C_Created_By" varchar(10) NULL,
	"D_Created_On" timestamp NOT NULL,
	"C_Modified_By" varchar(10) NULL,
	"D_Modified_On" timestamp NULL
) 
;
/****** Object:  Table "Tbl_CME_RTM_Day_Eve_Items"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_CME_RTM_Day_Eve_Items"(
	"N_Srno" SERIAL NOT NULL,
	"N_Day_Eve" integer NULL,
	"C_Name" varchar(200) NOT NULL,
	"N_Deleted" integer NULL,
	"C_Created_By" varchar(10) NOT NULL,
	"D_Created_On" timestamp NOT NULL,
	"C_Modified_By" varchar(10) NULL,
	"D_Modified_On" timestamp NULL
) 
;
/****** Object:  Table "Tbl_CME_RTM_Expense"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_CME_RTM_Expense"(
	"N_Srno" SERIAL NOT NULL,
	"N_Request_ID" numeric(18, 0) NOT NULL,
	"N_General_Setup_ID" numeric(18, 0) NOT NULL,
	"D_Activity_Date" timestamp NOT NULL,
	"C_Start_Time" varchar(20) NOT NULL,
	"C_End_Time" varchar(20) NOT NULL,
	"N_No_Attendance_Docters" integer NOT NULL,
	"N_No_Attendance_Moderator" integer NOT NULL,
	"N_No_Attendance_Employees" integer NOT NULL,
	"N_No_Attendance_Field_Team" integer NOT NULL,
	"C_MOM_Document_Url" varchar(500) NULL,
	"C_MOM_Document_Name" varchar(200) NULL,
	"C_MOM_Document_File_Type" varchar(100) NULL,
	"C_Remarks" text NOT NULL,
	"N_Status" integer NULL,
	"N_Last_Activity_Done_By" varchar(20) NULL,
	"d_Last_Activity_Date" timestamp NULL,
	"C_Last_Activity_Remarks" varchar(1000) NULL,
	"C_Created_By" varchar(10) NOT NULL,
	"D_Created_On" timestamp NOT NULL,
	"C_Modified_By" varchar(10) NOT NULL,
	"D_Modified_On" timestamp NOT NULL
) 
;
/****** Object:  Table "tbl_CME_RTM_Expense_Activity_Det"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_CME_RTM_Expense_Activity_Det"(
	"N_ID" SERIAL NOT NULL,
	"N_CME_RTM_Expense_ID" numeric(18, 0) NULL,
	"N_General_Setup_ID" numeric(18, 0) NULL,
	"C_FS_Code" varchar(20) NULL,
	"C_EMP_Code" varchar(20) NULL,
	"D_Activity_On" timestamp NULL,
	"N_Status" integer NULL,
	"C_Remarks" varchar(1000) NULL
) 
;
/****** Object:  Table "Tbl_CME_RTM_Expense_Details"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_CME_RTM_Expense_Details"(
	"N_Srno" SERIAL NOT NULL,
	"N_Expence_ID" numeric(18, 0) NOT NULL,
	"D_Bill_Date" timestamp NOT NULL,
	"C_Bill_Number" varchar(200) NULL,
	"N_Bill_Amount" numeric(18, 2) NOT NULL,
	"N_Expence_Code" varchar(20) NULL,
	"C_Bill_Url" varchar(500) NULL,
	"C_Receipt_Url" varchar(500) NULL,
	"N_Deleted" integer NULL,
	"C_Created_By" varchar(10) NOT NULL,
	"D_Created_On" timestamp NOT NULL,
	"C_Modified_By" varchar(10) NOT NULL,
	"D_Modified_On" timestamp NOT NULL
) 
;
/****** Object:  Table "Tbl_CME_RTM_Expense_Documents"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_CME_RTM_Expense_Documents"(
	"N_Srno" SERIAL NOT NULL,
	"N_Expense_ID" numeric(18, 0) NOT NULL,
	"C_Document_Type" integer NULL,
	"C_Document_Url" varchar(500) NULL,
	"C_Document_Name" varchar(200) NULL,
	"C_Document_File_Type" varchar(100) NULL,
	"N_Deleted" integer NULL,
	"C_Created_By" varchar(10) NOT NULL,
	"D_Created_On" timestamp NOT NULL,
	"C_Modified_By" varchar(10) NOT NULL,
	"D_Modified_On" timestamp NOT NULL
) 
;
/****** Object:  Table "Tbl_CME_RTM_Hotel_Booking"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_CME_RTM_Hotel_Booking"(
	"n_id" SERIAL NOT NULL,
	"N_Request_ID" numeric(18, 0) NOT NULL,
	"N_Entity_Type" integer NOT NULL,
	"N_Entity_ID" numeric(18, 0) NOT NULL,
	"c_doc_code" varchar(1000) NOT NULL,
	"c_fs_code" varchar(1000) NULL,
	"GuestName" varchar(500) NULL,
	"MOBILENO" varchar(500) NULL,
	"NOOFPAX" varchar(500) NULL,
	"NOOFCHILD" varchar(500) NULL,
	"AGEOFTHECHILD" varchar(500) NULL,
	"CHILDWITHBED" varchar(500) NULL,
	"NOOFROOMS" varchar(500) NULL,
	"TYPEOFROOM" varchar(500) NULL,
	"CHECKINDATE" varchar(500) NULL,
	"CHECKINTIME" varchar(500) NULL,
	"CHECKOUTDATE" varchar(500) NULL,
	"CHECKOUTTIME" varchar(500) NULL,
	"MEALPLAN" varchar(500) NULL,
	"HOTELCATEGORY" varchar(500) NULL,
	"PREFERREDHOTELNAME" varchar(500) NULL,
	"PREFERREDLOCATION" varchar(500) NULL,
	"COORDINATORPERSON" varchar(500) NULL,
	"COORDINATORCONTACTNUMBER" varchar(500) NULL,
	"ADDITIONALINFORMATION" varchar(500) NULL,
	"PURPOSEOFTRAVEL" varchar(500) NULL,
	"EXPHEAD" varchar(500) NULL,
	"DEPOT" varchar(500) NULL,
	"ADDITIONALCONTACTPERSONNAME" varchar(500) NULL,
	"ADDITIONALCONTACTPERSONNUMBER" varchar(500) NULL,
	"ADDITIONALCONTACTPERSONEMAIL" varchar(500) NULL,
	"NOOFADULTS" varchar(500) NULL
) 
;
/****** Object:  Table "Tbl_CME_RTM_Meal_Plan"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_CME_RTM_Meal_Plan"(
	"Id" SERIAL NOT NULL,
	"c_code" varchar(500) NOT NULL,
	"c_name" varchar(500) NOT NULL,
	"n_delete" integer NOT NULL
) 
;
/****** Object:  Table "Tbl_CME_RTM_Request"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_CME_RTM_Request"(
	"N_Srno" SERIAL NOT NULL,
	"N_General_Setup_ID" numeric(18, 0) NOT NULL,
	"D_Request_Date" timestamp NOT NULL,
	"D_Activity_Date" timestamp NOT NULL,
	"C_FS_Code" varchar(20) NOT NULL,
	"C_Request_Type" integer NULL,
	"N_Topic_ID" varchar(200) NOT NULL,
	"N_Type_ID" varchar(200) NOT NULL,
	"C_Reamrks" text NULL,
	"N_Day_Eve" integer NULL,
	"C_Day_Eve_Data" varchar(200) NULL,
	"C_Document_Url" varchar(500) NULL,
	"N_Expected_Attendance_DR" integer NULL,
	"N_Expected_Attendance_Employee" integer NULL,
	"N_Booking_Mode" integer NULL,
	"N_Status" integer NULL,
	"Acknowledgement_check" integer NULL,
	"N_Last_Activity_Done_By" varchar(20) NULL,
	"d_Last_Activity_Date" timestamp NULL,
	"C_Last_Activity_Remarks" varchar(1000) NULL,
	"C_Created_By" varchar(10) NOT NULL,
	"D_Created_On" timestamp NOT NULL,
	"C_Modified_By" varchar(10) NULL,
	"D_Modified_On" timestamp NULL,
	"C_UCPMP_Guidelines_Url" varchar(500) NULL,
	"C_Acknowledgement_Url" varchar(500) NULL
) 
;
/****** Object:  Table "tbl_CME_RTM_Request_Activity_Det"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_CME_RTM_Request_Activity_Det"(
	"N_ID" SERIAL NOT NULL,
	"N_CME_RTM_Request_ID" numeric(18, 0) NULL,
	"N_General_Setup_ID" numeric(18, 0) NULL,
	"C_FS_Code" varchar(20) NULL,
	"C_EMP_Code" varchar(20) NULL,
	"D_Activity_On" timestamp NULL,
	"N_Status" integer NULL,
	"C_Remarks" varchar(1000) NULL,
	"C_Acknowledgement_Url" varchar(500) NULL
) 
;
/****** Object:  Table "Tbl_CME_RTM_Request_Asset_Details"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_CME_RTM_Request_Asset_Details"(
	"N_Srno" SERIAL NOT NULL,
	"N_Request_ID" numeric(18, 0) NOT NULL,
	"N_Asset_ID" numeric(18, 0) NOT NULL,
	"N_Qty" numeric(18, 0) NULL,
	"C_Remarks" text NULL,
	"C_Created_By" varchar(10) NOT NULL,
	"D_Created_On" timestamp NOT NULL,
	"C_Modified_By" varchar(10) NULL,
	"D_Modified_On" timestamp NULL
) 
;
/****** Object:  Table "Tbl_CME_RTM_Request_Booking_Details_Local"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_CME_RTM_Request_Booking_Details_Local"(
	"N_Srno" SERIAL NOT NULL,
	"N_Request_ID" numeric(18, 0) NOT NULL,
	"C_Hotel_Name" varchar(200) NULL,
	"C_Address" varchar(500) NULL,
	"N_City" varchar(200) NULL,
	"N_Pin_Code" integer NULL,
	"N_No_Pax" integer NULL,
	"C_Paymet_Terms_Conditions" varchar(500) NULL,
	"N_Advance_Amount" double precision NULL,
	"N_EmailID" varchar(200) NULL,
	"N_Advance_Fs_Type" integer NULL,
	"C_Fs_Code" varchar(20) NULL,
	"C_Created_By" varchar(10) NOT NULL,
	"D_Created_On" timestamp NOT NULL,
	"C_Modified_By" varchar(10) NULL,
	"D_Modified_On" timestamp NULL
) 
;
/****** Object:  Table "Tbl_CME_RTM_Request_Booking_Details_Travel_Desk"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_CME_RTM_Request_Booking_Details_Travel_Desk"(
	"N_Srno" SERIAL NOT NULL,
	"N_Request_ID" numeric(18, 0) NOT NULL,
	"C_Location" varchar(200) NULL,
	"D_Date" timestamp NULL,
	"C_Preferred_Hotel" varchar(200) NULL,
	"C_Time" varchar(20) NULL,
	"C_Seating_Arrangement" varchar(200) NULL,
	"C_Meal_Preference" varchar(200) NULL,
	"C_Remarks" text NULL,
	"C_Created_By" varchar(10) NOT NULL,
	"D_Created_On" timestamp NOT NULL,
	"C_Modified_By" varchar(10) NULL,
	"D_Modified_On" timestamp NULL
) 
;
/****** Object:  Table "Tbl_CME_RTM_Request_Moderators"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_CME_RTM_Request_Moderators"(
	"N_Srno" SERIAL NOT NULL,
	"N_Request_ID" numeric(18, 0) NOT NULL,
	"C_Moderator_Code" varchar(20) NOT NULL,
	"C_Pan_Number" varchar(20) NULL,
	"C_Pan_URL" varchar(500) NULL,
	"N_Deleted" integer NULL,
	"C_Created_By" varchar(10) NOT NULL,
	"D_Created_On" timestamp NOT NULL,
	"C_Modified_By" varchar(10) NULL,
	"D_Modified_On" timestamp NULL
) 
;
/****** Object:  Table "Tbl_CME_RTM_Request_Speakers"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_CME_RTM_Request_Speakers"(
	"N_Srno" SERIAL NOT NULL,
	"N_Request_ID" numeric(18, 0) NOT NULL,
	"C_Speaker_Code" varchar(20) NOT NULL,
	"C_Pan_Number" varchar(20) NULL,
	"C_Pan_URL" varchar(500) NULL,
	"N_Deleted" integer NULL,
	"C_Created_By" varchar(10) NOT NULL,
	"D_Created_On" timestamp NOT NULL,
	"C_Modified_By" varchar(10) NULL,
	"D_Modified_On" timestamp NULL
) 
;
/****** Object:  Table "Tbl_Collateral_Item_Master_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Collateral_Item_Master_Mst"(
	"C_Code" varchar(20) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"C_Sh_Name" varchar(7) NULL,
	"n_deleted" integer NOT NULL,
	"n_status" integer NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
 CONSTRAINT "PK_Tbl_Collateral_Item_Master_Mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "Tbl_Commessage_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Commessage_Mst"(
	"N_Srno" SERIAL NOT NULL,
	"C_CreatedBy" varchar(50) NOT NULL,
	"C_Subject" varchar(50) NULL,
	"C_Message" text NULL,
	"D_Date" timestamp NOT NULL,
	"N_Day" numeric(4, 0) NULL,
	"D_Modified" timestamp NULL,
	"C_ModifiedBy" varchar(50) NULL,
	"N_Deleted" integer NOT NULL
) 
;
/****** Object:  Table "tbl_comp_leave_det"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_comp_leave_det"(
	"N_Srno" numeric(18, 0) NULL,
	"D_Date_Report" timestamp NULL,
	"c_Emp_Code" varchar(10) NULL
) 
;
/****** Object:  Table "tbl_companyInt"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_companyInt"(
	"Employeecode" varchar(255) NULL,
	"Employeename" varchar(255) NULL,
	"Designation" varchar(255) NULL,
	"Hierarchy Type" varchar(255) NULL,
	"Qualification" varchar(255) NULL,
	"Department" varchar(255) NULL,
	"Location" varchar(255) NULL,
	"Reporting Manager" varchar(255) NULL,
	"Reporting Manager Employee Code" varchar(255) NULL,
	"Reporting Manager Hierarchy Type" varchar(255) NULL,
	"HQ Name(Based At)" varchar(255) NULL,
	"Division Name" varchar(255) NULL,
	"stp_from_date" varchar(255) NULL,
	"stp_to_date" varchar(255) NULL,
	"DA For HQ" varchar(255) NULL,
	"DA For EX" varchar(255) NULL,
	"DA for OS" varchar(255) NULL,
	"Per KM" varchar(255) NULL,
	"Transit Amount " varchar(255) NULL,
	"add1" varchar(255) NULL,
	"add2" varchar(255) NULL,
	"add3" varchar(255) NULL,
	"add4" varchar(255) NULL,
	"pin" varchar(255) NULL,
	"phone" varchar(255) NULL,
	"fax" varchar(255) NULL,
	"dob" varchar(255) NULL,
	"doj" varchar(255) NULL,
	"dow" varchar(255) NULL,
	"description" varchar(255) NULL,
	"accno" varchar(255) NULL,
	"Bank Name" varchar(255) NULL,
	"Grade" varchar(255) NULL,
	"Sex" varchar(255) NULL,
	"Title" varchar(255) NULL,
	"Role" varchar(255) NULL,
	"OfficePhoneno" varchar(255) NULL,
	"Extensionno" varchar(255) NULL,
	"DOC" varchar(255) NULL,
	"DOR" varchar(255) NULL,
	"OffEmailID" varchar(255) NULL,
	"PersonalEmailID" varchar(255) NULL,
	"ParentCode" varchar(255) NULL,
	"Rtgs" varchar(255) NULL,
	"pan" varchar(255) NULL,
	"c_sfaemp_code" varchar(50) NULL,
	"c_sfa_desig" varchar(50) NULL,
	"c_sfa_Hierarchy_Type" varchar(50) NULL,
	"c_sfa_Qualification_code" varchar(50) NULL,
	"c_sfa_department_code" varchar(50) NULL,
	"c_sfa_location_code" varchar(50) NULL,
	"c_sfa_reportingMGR" varchar(50) NULL,
	"c_sfaemp_code_type" varchar(50) NULL,
	"c_sfa_reportingMGR_type" varchar(50) NULL,
	"c_sfa_area" varchar(50) NULL,
	"c_sfa_div_code" varchar(50) NULL,
	"c_sfa_fs_code" varchar(50) NULL,
	"c_sfa_bank_code" varchar(20) NULL,
	"c_sfa_grade_code" varchar(20) NULL,
	"excelname" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_compensation_group_mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_compensation_group_mst"(
	"c_code" varchar(50) NOT NULL,
	"c_name" varchar(100) NOT NULL,
	"c_sh_name" varchar(10) NULL,
	"n_other_incentives" boolean NOT NULL,
	"d_created" timestamp NOT NULL,
	"n_deleted" smallint NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(50) NULL,
	"n_GrpOrder" integer NULL,
 CONSTRAINT "PK_tbl_group_mst" PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "Tbl_Compensation_mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Compensation_mst"(
	"C_Code" varchar(10) NULL,
	"C_Name" varchar(100) NULL,
	"N_MaxLimit" numeric(18, 2) NULL,
	"C_Sh_Name" varchar(50) NULL,
	"C_Note" varchar(100) NULL,
	"N_Deleted" numeric(18, 0) NULL,
	"D_Created" timestamp NULL,
	"D_Modified" timestamp NULL,
	"C_Modifier" varchar(10) NULL,
	"C_Designation" varchar(50) NULL,
	"C_GrpCode" varchar(50) NULL,
	"n_CompensationOrder" integer NULL
) 
;
/****** Object:  Table "Tbl_Competator_Audit_Cycle"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Competator_Audit_Cycle"(
	"C_CODE" varchar(10) NOT NULL,
	"C_CYCLENAME" varchar(10) NOT NULL,
	"D_DATE_FROM" timestamp NOT NULL,
	"D_DATE_TO" timestamp NULL,
	"N_DELETED" smallint NOT NULL,
 CONSTRAINT "PK_TBL_COMPETITOR_AUDIT_CYCLE" PRIMARY KEY  
(
	"C_CODE" 
) 
) 
;
/****** Object:  Table "Tbl_Competator_Info_Det"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Competator_Info_Det"(
	"N_SRNO" numeric(18, 0) NOT NULL,
	"C_BRAND_CODE" varchar(10) NOT NULL,
	"n_rowid" integer NOT NULL,
	"C_COMPETITOR_PR_NAME" varchar(100) NULL,
	"N_RX" numeric(18, 0) NOT NULL,
	"N_QTY" numeric(18, 0) NOT NULL,
	"N_VALUE" numeric(18, 2) NOT NULL,
	"N_RXTYPE" numeric(18, 0) NOT NULL,
	"N_QTYTYPE" numeric(18, 0) NOT NULL,
	"N_VALUETYPE" numeric(18, 0) NOT NULL,
	"N_VALUEIN" numeric(18, 0) NOT NULL,
	"n_type" integer NOT NULL,
	"N_WEIGHTAGE" numeric(18, 2) NULL,
	"N_WEIGHTAGETYPE" numeric(18, 0) NULL,
 CONSTRAINT "PK_Tbl_Competator_Info_Det" PRIMARY KEY  
(
	"N_SRNO" ,
	"C_BRAND_CODE" ,
	"n_rowid" 
) 
) 
;
/****** Object:  Table "Tbl_Competator_Info_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Competator_Info_Mst"(
	"N_SRNO" numeric(18, 0) NOT NULL,
	"C_FS_CODE" varchar(10) NOT NULL,
	"C_DOCTOR_CODE" varchar(10) NOT NULL,
	"C_CHEMIST_NAME" varchar(100) NULL,
	"C_CHEMIST_PLACE" varchar(50) NOT NULL,
	"C_CHEMIST_PHNO" varchar(25) NOT NULL,
	"C_SOURCE_CODE" varchar(10) NOT NULL,
	"D_DATE" timestamp NOT NULL,
	"C_AUDIT_CYCLE_CODE" char(10) NULL,
	"C_CHEMIST_CODE" varchar(20) NULL,
	"N_DCRNO" numeric(18, 0) NULL,
 CONSTRAINT "PK_TBL_COMPETITOR_INFO_MST" PRIMARY KEY  
(
	"N_SRNO" 
) 
) 
;
/****** Object:  Table "Tbl_Competator_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Competator_Mst"(
	"C_BRAND_CODE" varchar(10) NOT NULL,
	"C_PRODUCT_NAME" varchar(100) NOT NULL,
	"C_MFAC_NAME" varchar(50) NOT NULL,
	"N_PRIORITY" integer NOT NULL,
	"N_CREATION_TYPE" smallint NOT NULL,
	"D_CREATE_DATE" timestamp NOT NULL,
	"D_MODIFY_DATE" timestamp NULL,
	"C_CREATE_USER" varchar(10) NOT NULL,
	"C_MODIFY_USER" varchar(10) NULL,
	"N_DELETED" smallint NOT NULL,
	"N_unit_price" numeric(18, 2) NOT NULL,
 CONSTRAINT "PK_TBL_COMPETITOR_MST" PRIMARY KEY  
(
	"C_BRAND_CODE" ,
	"C_PRODUCT_NAME" 
) 
) 
;
/****** Object:  Table "Tbl_Competator_Setup"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Competator_Setup"(
	"N_RX_ACTIVE" smallint NOT NULL,
	"N_QTYTYPE_ACTIVE" smallint NOT NULL,
	"N_VALUETYPE_ACTIVE" smallint NOT NULL,
	"N_RXTYPE" numeric(18, 0) NOT NULL,
	"N_QTYTYPE" numeric(18, 0) NOT NULL,
	"N_VALUETYPE" numeric(18, 0) NOT NULL,
	"N_RXTYPE_CHANGE" smallint NOT NULL,
	"N_QTYTYPE_CHANGE" smallint NOT NULL,
	"N_VALUETYPE_CHANGE" smallint NOT NULL,
	"N_AUDIT_FREQUENCY" integer NOT NULL,
	"N_VALUE_IN" numeric(18, 0) NOT NULL,
	"N_EDITDAYS" integer NOT NULL,
	"N_WEIGHTAGE_ACTIVE" smallint NULL,
	"N_WEIGHTAGETYPE" numeric(18, 0) NULL,
	"N_WEIGHTAGETYPE_CHANGE" smallint NULL,
	"n_SourceVisibility" integer NULL,
	"n_value_auto" integer NOT NULL,
	"n_unitprice_consider" integer NOT NULL,
	"n_item_display" integer NOT NULL,
	"n_rcpa_doctor_display" integer NOT NULL,
	"n_emailtrigger_fs" integer NULL,
	"n_emailtrigger_manager" integer NULL,
	"n_emailtrigger_manager_desg" text NULL
) 
;
/****** Object:  Table "Tbl_Competator_Source"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Competator_Source"(
	"C_CODE" varchar(10) NOT NULL,
	"C_NAME" varchar(50) NOT NULL,
	"N_DELETED" smallint NOT NULL,
	"n_chemist_flag" integer NULL,
 CONSTRAINT "PK_Tbl_Competator_Source" PRIMARY KEY  
(
	"C_CODE" 
) 
) 
;
/****** Object:  Table "tbl_competitor_Visit"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_competitor_Visit"(
	"n_ID" SERIAL NOT NULL,
	"c_fs_code" varchar(50) NULL,
	"C_Doctor_Code" varchar(50) NULL,
	"n_Visit_Count" integer NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "Tbl_ControlPanel_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_ControlPanel_Mst"(
	"N_Srno" SERIAL NOT NULL,
	"N_Visitorder" integer NOT NULL,
	"N_workedwithmcr" integer NULL,
	"N_MCLshow" integer NOT NULL,
	"N_MtpSbmMcr" integer NOT NULL,
	"N_MtpSbmDcr" integer NOT NULL,
	"N_MtpappMcr" integer NOT NULL,
	"N_MtpappDcr" integer NOT NULL,
	"N_Stpsubmitiondcr" integer NULL,
	"N_PriTargetOn" integer NULL,
	"N_Doctortime" integer NULL,
	"n_mscexpences" integer NULL,
	"N_SecTargeton" integer NULL,
	"N_mtpsubarea" integer NOT NULL,
	"c_prefixTN" varchar(5) NULL,
	"c_prefixGDN" varchar(5) NULL,
	"N_year" integer NULL,
	"N_secvalue" integer NULL,
	"N_Stpsubmitionmcr" integer NULL,
	"N_TargItemBrand" integer NULL,
	"n_closingday" integer NULL,
	"n_pri_inv_imp" integer NULL,
	"c_tacode" varchar(50) NULL,
	"c_dacode" varchar(50) NULL,
	"c_monthly" varchar(10) NULL,
	"c_reimbursement" varchar(10) NULL,
	"c_rate1" varchar(100) NULL,
	"c_rate3" varchar(100) NULL,
	"c_rate4" varchar(100) NULL,
	"c_rate5" varchar(100) NULL,
	"n_monthfrom" integer NULL,
	"n_monthto" integer NULL,
	"n_da_flag" integer NULL,
	"n_da_per" numeric(9, 2) NULL,
	"c_rate2" varchar(100) NULL,
	"n_Dcr_Product_Mandatory" integer NULL,
	"n_Dcr_sample_madatory" integer NULL,
	"n_employ_login" integer NULL,
	"n_month_exp_review" integer NULL,
	"N_JobDesc" integer NOT NULL,
	"N_HQ_Address" integer NOT NULL,
	"n_Circular_DashB" integer NULL,
	"n_webuserLimit" numeric(9, 0) NULL,
	"n_dcrinvrt" integer NULL,
	"N_ValuVisible" integer NULL,
	"n_summary_details" integer NULL,
	"n_no_mnth" integer NULL,
	"n_gdnflag" integer NULL,
	"n_Exp_Reconfirm_days" integer NULL,
	"n_pri_sales" integer NULL,
	"n_sec_sales" integer NULL,
	"c_company_type" varchar(10) NULL,
	"n_tinno" integer NULL,
	"n_licno" integer NULL,
	"n_licfoodno" integer NULL,
	"c_inv_plan_lblamt" varchar(50) NULL,
	"n_inv_saleshistory" integer NULL,
	"n_inv_rate_edit" integer NULL,
	"n_chem_pin" integer NULL,
	"n_chem_phone" integer NULL,
	"n_doctor_pob_details" integer NULL,
	"n_divisionPopupInterval" integer NULL,
	"n_chem_req_approval_req" integer NULL,
	"n_claim_type" integer NULL,
	"n_Doc_Mcr_WorkDetails" integer NULL,
	"n_factor" numeric(9, 2) NULL,
	"n_edit_order" integer NULL,
	"n_MCRAddmarks" integer NULL,
	"n_dcr_doctorlrole_disply" integer NULL,
	"n_Mcr_subarea_multi_validation" integer NULL,
	"c_integration_alert_email" varchar(500) NULL,
	"n_pri_order_rate_on" integer NULL,
	"n_sec_order_rate_on" integer NULL,
	"n_Dcr_Others_Product_Mandatory" integer NOT NULL,
	"n_Dcr_Others_sample_madatory" integer NOT NULL,
	"n_empmst_email_mandatory" integer NULL,
	"n_Others_pob_details" integer NULL,
	"n_Edetail_Voice_rec" integer NULL,
	"n_CompetitorFlag_mob" integer NULL,
	"n_ConsiderGrade_NoOfVisit_ForDrDisplay" integer NOT NULL,
	"n_coreproduct_priority" integer NULL,
	"c_DownLoad_FilePath" varchar(1000) NOT NULL,
	"n_payment" integer NULL,
	"n_WH_flag" integer NULL,
	"n_leaveValidationDCR" integer NULL,
	"c_circularfileext" varchar(1000) NULL,
	"n_MMIEnabled" integer NULL,
	"n_edetail" integer NULL,
	"n_dcr_visit" integer NULL,
	"n_cat_edetail" integer NULL,
	"n_DcrExistsOnDayBeforeRptDt" integer NULL,
	"n_AddSTPDAForOther" integer NULL,
	"n_MtpApproval_format" integer NULL,
	"c_password" varchar(100) NOT NULL,
	"n_McrExistsOnDayBeforeRptDt" integer NULL,
	"n_DaysExtendedForExpApproval" integer NULL,
	"n_STPUploadEnabled" integer NULL,
	"n_HolidayValidationDCR" integer NULL,
	"n_SundayValidationDCR" integer NULL,
	"n_secsales_import_multidivision" integer NULL,
	"n_ExpenseDailyUpload" integer NULL,
	"n_DcrDrNoteMandatory" integer NULL,
	"n_DcrMCrMiscellaneousEnable" integer NULL,
	"n_stayflg" varchar(10) NULL,
	"n_stayflg_mcr" varchar(10) NULL,
	"n_syncdays" integer NOT NULL,
	"n_timeout" integer NOT NULL,
	"n_company_status" integer NOT NULL,
	"n_Mcr_doctor_pob_details" integer NOT NULL,
	"c_hr_recruit_confirm_fsType" integer NULL,
	"N_DOC_FLAG_MAND" integer NULL,
	"n_stay_auto_mcr" integer NULL,
	"n_stay_auto" integer NULL,
	"c_candidte_confrm" varchar(50) NULL,
	"n_Dcr_productvalidateornot" integer NULL,
	"n_SetWeeklyHoliday" integer NULL,
	"n_DCR_autoreportingdate" integer NULL,
	"n_addworkedwithself" integer NULL,
	"dcr_misc_limit_hide" integer NULL,
	"mcr_misc_limit_hide" integer NULL,
	"n_doc_phone_order" integer NULL,
	"n_android_camera" integer NOT NULL,
	"n_SequentialCheckingDCRMCRSeperate" integer NULL,
	"n_GPS" integer NULL,
	"n_Dcr_Patient_Product_Mandatory" integer NULL,
	"n_DcrPatientNoteMandatory" integer NULL,
	"n_DcrPatientSalesEntry" integer NULL,
	"n_Exp_RelDoc_Upload" integer NULL,
	"n_multi_category_edetail" integer NULL,
	"n_mtp_sfs_btnapproval" integer NULL,
	"n_mcr_chemistPOB" integer NULL,
	"n_android_mtp_variance" integer NULL,
	"n_android_remark" integer NULL,
	"n_android_expense_entry" integer NULL,
	"n_android_promotional_activity" integer NULL,
	"n_android_others" integer NULL,
	"n_alkem_logo" integer NULL,
	"n_Core_Product_Mapping" integer NULL,
	"N_DoctorPOBlockSettings" integer NULL,
	"n_Android_User_limit" integer NULL,
	"n_Mobweb_User_limit" integer NULL,
	"n_Edetailing_User_limit" integer NULL,
	"n_core_product_autosave" integer NULL,
	"n_ManageMandatoryTempDrListDCR" integer NULL,
	"n_chemist_phone_DCR" integer NULL,
	"n_stockist_phone_dcr" integer NULL,
	"n_chemist_SOH_dcr" integer NULL,
	"n_stockist_SOH_dcr" integer NULL,
	"n_chemist_Photo_dcr" integer NULL,
	"n_stockist_Photo_dcr" integer NULL,
	"c_queryup" varchar(200) NULL,
	"c_querys" varchar(200) NULL,
	"n_disablelocalfilesave" integer NULL,
	"c_filecopyIP" varchar(100) NULL,
	"n_FmcgDaywise" integer NOT NULL,
	"n_FmcgWeekwise" integer NOT NULL,
	"n_FmcgMonthwise" integer NOT NULL,
	"N_MtpCopy" integer NULL,
	"N_DocUpdateMngr" integer NOT NULL,
	"n_ModuleLeaveSkipApproval" integer NULL,
	"n_Dcr_Hospital_Product_Mandatory" integer NULL,
	"n_Dcr_Hospital_sample_mandatory" integer NULL,
	"n_Hospital_pob_details" integer NULL,
	"n_MTP_ProductMandatory" integer NULL,
	"n_MTP_SampleMandatory" integer NULL,
	"n_MTPPlaceOfWorkMandatory" integer NULL,
	"N_RoiCalcFlag" integer NULL,
	"d_LoginTime_Check" varchar(100) NULL,
	"N_STP_VIEW" integer NULL,
	"n_subareaFilter_FMCG" integer NULL,
	"n_mtp_list_in_dcr" integer NULL,
	"n_No_of_Campaign_Doctors" integer NULL,
	"c_latecalltime" varchar(50) NULL,
	"n_WorkedWithManagerType" integer NULL,
	"n_STP_Update" integer NULL,
	"n_ModuleMTPSkipApproval" integer NULL,
	"n_Mcr_Product_Mandatory" integer NULL,
	"n_Mcr_Gift_Mandatory" integer NULL,
	"n_Mcr_Sample_Mandatory" integer NULL,
	"n_ClinicHospitalAddressCboOrTxt" integer NULL,
	"n_exclud_Sun_Holi_lock" integer NULL,
	"n_balqtyvalidateDCR" integer NULL,
	"n_captchavalidate" integer NULL,
	"n_ShowMtpSubareaINRetailerActivity" integer NULL,
	"n_campaign_confirmation" integer NULL,
	"c_androidautologouttime" varchar(50) NULL,
	"n_mtp_DoctorMandatory" integer NULL,
	"n_Mtp_ExcelUpload_Subarea_NameOrCode" integer NULL,
	"n_geo_distance" integer NULL,
	"n_geo_track" integer NULL,
	"n_download_worked_data" integer NULL,
	"n_geo_time" integer NULL,
	"c_android_db_mail_address" varchar(500) NULL,
	"n_holidayleave_flg" integer NULL,
	"n_sundayleave_flg" integer NULL,
	"n_ModuleExpenseSkipApproval" integer NULL,
	"n_gps_mand_logout" integer NULL,
	"c_GoogleAPIKey_Placename" varchar(500) NULL,
	"c_location_tracking_time" varchar(50) NULL,
	"n_Core_Pdt" integer NULL,
	"n_PrpPreviousDateEnable" integer NULL,
	"N_RpsPreviousDateEnable" integer NULL,
	"c_GoogleAPIKey_MapLoad" varchar(100) NULL,
	"n_Geo_fencing" integer NULL,
	"n_Geo_fencing_meters" integer NULL,
	"n_stpMandForMTp" integer NULL,
	"n_ConsiderCampDrCount" integer NULL,
	"n_dr_CountFlag" integer NULL,
	"n_campgn_frmdate" integer NOT NULL,
	"n_RPS_prev_exe_date" integer NOT NULL,
	"n_prp_prev_date" integer NOT NULL,
	"N_Multilogin_Android" integer NULL,
	"n_BlockDCRMCROnLeaveRequest" integer NULL,
	"n_MultiLogin_Disable" integer NULL,
	"N_internalemail" integer NULL,
	"n_ExpWorkedWithLink" integer NULL,
	"n_edit_TP_in_approval" integer NOT NULL,
	"n_expns_areavisited" integer NOT NULL,
	"n_expns_leavetype" integer NOT NULL,
	"n_Doclimitcheck" integer NOT NULL,
	"n_RPSexpensesubmitdays" integer NULL,
	"PrpRps_EmailSMSSend" integer NULL,
	"n_PRP_RPS_send_days" integer NULL,
	"n_PRP_RPS_Enable_sms" integer NULL,
	"n_PRP_RPS_Enable_email" integer NULL,
	"n_PRPExpenseSubmitDays" integer NULL,
	"N_Auto_Sync" integer NULL,
	"c_EDServiceUserId" varchar(50) NULL,
	"c_EDServicePassword" varchar(50) NULL,
	"n_survey_agree" integer NULL,
	"n_survey_refNo" integer NULL,
	"n_survey_image" integer NULL,
	"c_survey_authorization_msg" varchar(1000) NULL,
	"n_android_mob_notification" integer NULL,
	"n_masterpassword" varchar(100) NULL,
	"n_MultipleDcr_PsgQty" integer NULL,
	"n_exp_reconfirm_block" integer NOT NULL,
	"n_multiplemcr_pgs" integer NULL,
	"n_dsc_visibleon_fswise_wc" integer NULL,
	"n_balqtyvalidateMCR" integer NULL,
	"n_SampleAllocation_Mcr" integer NULL,
	"n_SampleAllocation_Dcr" integer NULL,
	"n_core_product_numbers" integer NOT NULL,
	"n_auto_STP_page" integer NOT NULL,
	"n_MandatoryCircular" integer NULL,
	"n_stpvalidityperioddatewise" integer NULL,
	"n_stphqtype" integer NULL,
	"n_stpTAvalidationAllowance" integer NULL,
	"n_stpmodeoftraveldisplay" integer NULL,
	"n_stpexpensesentry" integer NULL,
	"n_stpdailyclaimlimitTA" integer NULL,
	"n_stpvalidityperiodmonthwise" integer NULL,
	"n_visitTypeLimitCheck" integer NOT NULL,
	"n_visitTypeLimit" numeric(18, 1) NULL,
	"n_stpdist_block_same_subarea_chk" integer NOT NULL,
	"n_hide_stp_visit_type" integer NULL,
	"n_stpfrmtemplate" integer NULL,
	"n_stpdetailsexists_dcr" integer NULL,
	"n_stpdetailsexists_mcr" integer NULL,
	"n_other_area_subarea" integer NULL,
	"n_visibleplusinstpreqappcon" varchar(50) NULL,
	"n_transactionlock_dcr" integer NULL,
	"n_transactionlock_mcr" integer NULL,
	"n_transactiondelete_mcr" integer NULL,
	"n_transactiondelete_dcr" integer NULL,
	"n_Balanceqtydisplay_dcr" integer NULL,
	"n_Balanceqtydisplay_mcr" integer NULL,
	"n_auto_leave" integer NOT NULL,
	"c_plel_code" varchar(20) NULL,
	"n_androiddcr_rcpa_flag" integer NULL,
	"n_expns_aprv_aftr_ss" integer NOT NULL,
	"n_mngr_expns_aftr_me" integer NOT NULL,
	"n_dcrtomcrcopy" integer NULL,
	"n_sessiontimeout" integer NULL,
	"n_passwordvalidation" integer NULL,
	"n_passwordage" integer NULL,
	"n_passwordlength" integer NULL,
	"n_passwordhistory" integer NULL,
	"c_http_header" varchar(10) NULL,
	"c_email_server" varchar(100) NULL,
	"c_smtp" varchar(1000) NULL,
	"c_port" varchar(10) NULL,
	"c_mailboxnameallowed" varchar(10) NULL,
	"c_enablessl" varchar(10) NULL,
	"usedefaultcredentials" varchar(10) NULL,
	"c_tanks" text NULL,
	"n_wh_sfa360" boolean NULL,
	"n_dcr_stayAt" integer NULL,
	"n_workcontact_no_days" integer NULL,
	"pop_doc_dcr_details_360" integer NULL,
	"pop_che_dcr_details_360" integer NULL,
	"pop_other_details_360" integer NULL,
	"c_c2code" varchar(40) NULL,
	"n_geo_max_distance_flag" integer NULL,
	"n_geo_max_distance" integer NULL,
	"n_android_edetail_popup_time" integer NULL,
	"n_android_edetail_popup_show" integer NULL,
	"n_distance_entry_dcr" integer NOT NULL,
	"n_distance_entry_mcr" integer NOT NULL,
	"n_asset_newemp_days" integer NULL,
	"n_asset_resignemp_days" integer NULL,
	"n_assetsmsemail" integer NULL,
	"n_max_distance_entry_ta_claim_dcr" numeric(18, 2) NULL,
	"n_max_distance_entry_ta_claim_mcr" numeric(18, 2) NULL,
	"n_download_file_delete_enable" integer NOT NULL,
	"n_rpsflow" integer NULL,
	"n_rps_ini_downline_fstype" integer NULL,
	"n_rps_email" integer NULL,
	"n_android_edit_flag" integer NULL,
	"n_doc_conf_mngr" integer NULL,
	"n_android_rcpa_offline" integer NULL,
	"n_login_questionnaire" integer NULL,
	"n_leave_fy" integer NOT NULL,
	"n_leave_fy_start_year" integer NULL,
	"n_leavebalanceshowhide" integer NOT NULL,
	"n_DCRMorngevgMand" integer NOT NULL,
	"n_corepro_mand" integer NOT NULL,
	"n_visit_type_dcr" integer NOT NULL,
	"n_visit_type_mcr" integer NOT NULL,
	"n_input_track_exp_block" integer NOT NULL,
	"n_SelfAss" integer NULL,
	"n_allow_master_entry_nonadmin" integer NULL,
	"n_area_captionto_beat" integer NULL,
	"n_android_dashboard" integer NOT NULL,
	"n_self_assessment_validate" integer NOT NULL,
	"n_lopleavetype" integer NULL,
	"n_maternityleavetype" integer NULL,
	"n_paternityleavetype" integer NULL,
	"n_plel_months" integer NULL,
	"n_mcr_online_android" integer NULL,
	"n_sickleavetype" integer NULL,
	"n_android_fmcg_retailer_menu_hide" integer NULL,
	"c_doc_img_request_type" integer NULL,
	"c_doc_img_approve_type" integer NULL,
	"n_asset_email" integer NOT NULL,
	"n_fmcg_hunter_calls" integer NOT NULL,
	"n_fmcg_farmer_calls" integer NOT NULL,
	"n_fmcg_hunterfarmer_calls" integer NOT NULL,
	"n_asset_master_email" integer NOT NULL,
	"n_sandwitch_leave" integer NOT NULL,
	"n_plel_months_mngr" integer NULL,
	"c_hospital_report_user_det" text NULL,
	"c_hospital_report_division_det" text NULL,
	"n_Dcr_Mcr_edit_android" integer NULL,
	"RegionWise_CategoryWiseDocVisit_heteroo" integer NOT NULL,
	"n_excel_redownload_maxtime" bigint NULL,
	"Ideltimeout" integer NULL,
	"n_display_other_subarea_doctors_dwr" integer NULL,
	"n_chemistdisplaysetup" integer NULL,
	"n_expense_moreve_show_areavisit" integer NULL,
	"n_dwr_delete_unlock_approve_email_flag" integer NOT NULL,
	"n_dcr_unlock_prevoius_alldays" integer NOT NULL,
	"n_rps_gift_max_doc_count" integer NOT NULL,
	"n_rps_item_mapping_required" integer NOT NULL,
	"n_rps_approval_skip_days" integer NOT NULL,
	"c_file_download_url_android" varchar(500) NULL,
	"c_fileIP_Android_Second" varchar(500) NULL,
	"c_fileIP_Android" varchar(500) NULL,
	"n_roi_new_android_visible" integer NULL,
	"c_rps_giftitem_upload_enabled_divisions" varchar(2000) NULL,
	"n_dcrmcr_approval" integer NULL,
	"n_DcrMcr_EnableEditOnRejection" integer NULL,
	"n_dcrblock_on_pendig_approvals" integer NULL,
	"n_expense_list_limit" integer NULL,
	"n_expense_entry_dcrdays" integer NULL,
	"n_c2c_dr_wise_mandatory_settings_days" integer NULL,
	"n_c2c_item_multipleselection" integer NULL,
	"n_create_mcr_from_subordinate_data" integer NULL,
	"n_file_storage_structure" integer NULL,
	"n_vacany_alert_frequency" integer NULL,
	"c_validate_pancard_flag" integer NULL,
	"n_psa_docmst_email_phno_direct_update" integer NULL,
	"n_cme_rtm_final_approver_leval_start" integer NULL,
	"n_identify_eagleeye_in_dr_list" integer NULL,
	"n_dcr_data_mismatch_sync_days" integer NULL,
	"n_edetail_download_from_ip" integer NULL,
	"n_caution_notice_flag" integer NULL,
	"N_SFA_360_Android_Dashboard_Empty_Data" varchar(500) NULL,
	"n_tp_hide_multiple_patches" integer NULL,
	"n_tp_hide_loadtpt" integer NULL,
	"n_dwr_from_tp_approved_data" integer NULL,
	"n_dbe_dwr_blockstartday" integer NULL,
	"n_tp_customersave_msg" integer NULL,
	"mtp_enable_from_to_flag" integer NULL,
	"tp_block_month_flags" integer NULL,
	"n_is_show_all_customers" integer NULL,
	"n_mgr_performance_survey" integer NULL,
	"c_blob_base_url" varchar(500) NULL,
	"n_android_deviceid_check" integer NULL,
	"n_ios_deviceid_check" integer NULL,
	"n_dwr_delete_android_ios" integer NULL,
	"n_consider_doc_chem_map_rcpa" integer NULL,
	"n_dcr_customer_search_criteria" integer NULL,
	"n_is_vacant_fs" integer NULL,
	"n_menu_favourite_maxcount" integer NULL,
	"d_menu_favourite_starttime" "time"(7) NULL,
	"d_menu_favourite_endtime" "time"(7) NULL
) 
;
/****** Object:  Table "tbl_controlpanel_mst_expense"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_controlpanel_mst_expense"(
	"n_Expense_MTPDeviation_Highlight" integer NULL,
	"n_Expense_NoVisit_Highlight" integer NULL,
	"n_Expense_VisitTypeHQ_Highlight" integer NULL,
	"n_BlockDayWiseExpenceEntry" integer NULL,
	"n_AddBeneficiaryDetails" integer NULL,
	"n_EntryPageLimitHide" integer NULL
) 
;
/****** Object:  Table "Tbl_ControlPanel_Mst_Log"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_ControlPanel_Mst_Log"(
	"N_Srno" SERIAL NOT NULL,
	"N_Visitorder" integer NOT NULL,
	"N_workedwithmcr" integer NULL,
	"N_MCLshow" integer NOT NULL,
	"N_MtpSbmMcr" integer NOT NULL,
	"N_MtpSbmDcr" integer NOT NULL,
	"N_MtpappMcr" integer NOT NULL,
	"N_MtpappDcr" integer NOT NULL,
	"N_Stpsubmitiondcr" integer NULL,
	"N_PriTargetOn" integer NULL,
	"N_Doctortime" integer NULL,
	"n_mscexpences" integer NULL,
	"N_SecTargeton" integer NULL,
	"N_mtpsubarea" integer NOT NULL,
	"c_prefixTN" varchar(5) NULL,
	"c_prefixGDN" varchar(5) NULL,
	"N_year" integer NULL,
	"N_secvalue" integer NULL,
	"N_Stpsubmitionmcr" integer NULL,
	"N_TargItemBrand" integer NULL,
	"n_closingday" integer NULL,
	"n_pri_inv_imp" integer NULL,
	"c_tacode" varchar(50) NULL,
	"c_dacode" varchar(50) NULL,
	"c_monthly" varchar(10) NULL,
	"c_reimbursement" varchar(10) NULL,
	"c_rate1" varchar(100) NULL,
	"c_rate3" varchar(100) NULL,
	"c_rate4" varchar(100) NULL,
	"c_rate5" varchar(100) NULL,
	"n_monthfrom" integer NULL,
	"n_monthto" integer NULL,
	"n_da_flag" integer NULL,
	"n_da_per" numeric(9, 2) NULL,
	"c_rate2" varchar(100) NULL,
	"d_date" timestamp NULL,
	"c_user" varchar(10) NULL,
	"n_Circular_DashB" integer NULL,
	"n_Dcr_Product_Mandatory" integer NULL,
	"n_Dcr_sample_madatory" integer NULL,
	"n_employ_login" integer NULL,
	"n_month_exp_review" integer NULL,
	"N_JobDesc" integer NULL,
	"N_HQ_Address" integer NULL,
	"n_gdnflag" integer NULL,
	"n_Exp_Reconfirm_days" integer NULL,
	"n_pri_sales" integer NULL,
	"n_sec_sales" integer NULL,
	"n_tinno" integer NULL,
	"n_licno" integer NULL,
	"n_licfoodno" integer NULL,
	"c_inv_plan_lblamt" varchar(50) NULL,
	"n_inv_saleshistory" integer NULL,
	"n_inv_rate_edit" integer NULL,
	"n_chem_pin" integer NULL,
	"n_chem_phone" integer NULL,
	"n_factor" numeric(9, 2) NULL,
	"n_dcr_doctorlrole_disply" integer NULL,
	"n_Mcr_subarea_multi_validation" integer NULL,
	"n_pri_order_rate_on" integer NULL,
	"n_sec_order_rate_on" integer NULL,
	"n_distance_entry_dcr" integer NOT NULL,
	"n_distance_entry_mcr" integer NOT NULL,
	"n_max_distance_entry_ta_claim_dcr" numeric(18, 2) NULL,
	"n_max_distance_entry_ta_claim_mcr" numeric(18, 2) NULL,
	"n_download_file_delete_enable" integer NOT NULL
) 
;
/****** Object:  Table "Tbl_Core_Product"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Core_Product"(
	"C_Doc_Code" varchar(10) NOT NULL,
	"c_Product_Code" varchar(10) NOT NULL,
	"n_priority" integer NULL,
	"c_category" varchar(10) NULL
) 
;
/****** Object:  Table "Tbl_Core_Product_CategoryWise"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Core_Product_CategoryWise"(
	"C_Doc_Code" varchar(10) NOT NULL,
	"c_Product_Code" varchar(10) NOT NULL,
	"n_priority" integer NULL,
	"C_category" varchar(15) NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "Tbl_Core_Product_Log"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Core_Product_Log"(
	"C_Doc_Code" varchar(10) NOT NULL,
	"c_Product_Code" varchar(10) NOT NULL,
	"n_priority" integer NULL
) 
;
/****** Object:  Table "Tbl_Core_Product_log_delete"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Core_Product_log_delete"(
	"C_Doc_Code" varchar(10) NOT NULL,
	"c_Product_Code" varchar(10) NOT NULL,
	"n_priority" integer NULL,
	"D_Date" timestamp NULL
) 
;
/****** Object:  Table "Tbl_Core_Product_log_Ins"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Core_Product_log_Ins"(
	"C_Doc_Code" varchar(10) NOT NULL,
	"c_Product_Code" varchar(10) NOT NULL,
	"n_priority" integer NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "Tbl_Core_Product_log_Upd"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Core_Product_log_Upd"(
	"C_Doc_Code" varchar(10) NOT NULL,
	"c_Product_Code" varchar(10) NOT NULL,
	"n_priority" integer NULL,
	"d_date" timestamp NULL,
	"n_primary_id" SERIAL  NOT NULL,
PRIMARY KEY  
(
	"n_primary_id" 
) 
) 
;
/****** Object:  Table "tbl_covid_survey"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_covid_survey"(
	"n_id" SERIAL NOT NULL,
	"c_fs_code" varchar(20) NULL,
	"c_emp_code" varchar(20) NULL,
	"n_answer_1" integer NULL,
	"d_tentative_vaccination_1" timestamp NULL,
	"d_vaccination_1" timestamp NULL,
	"c_certificatename_1" varchar(100) NULL,
	"d_question_1_completion" timestamp NULL,
	"n_answer_2" integer NULL,
	"d_tentative_vaccination_2" timestamp NULL,
	"d_vaccination_2" timestamp NULL,
	"c_certificatename_2" varchar(100) NULL,
	"d_question_2_completion" timestamp NULL,
	"d_date" timestamp NULL,
	"d_modified" timestamp NULL,
	"n_status" integer NULL,
	"n_login_blocked_dose1" integer NULL,
	"n_login_blocked_dose2" integer NULL,
	"c_reason_no_taken_dose1" varchar(100) NULL,
	"c_reason_no_taken_dose2" varchar(100) NULL,
	"c_beneficiary_reference_id1" varchar(25) NULL,
	"c_beneficiary_reference_id2" varchar(25) NULL
) 
;
/****** Object:  Table "tbl_covid_survey_log"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_covid_survey_log"(
	"n_srno" SERIAL NOT NULL,
	"n_id" numeric(18, 0) NULL,
	"c_fs_code" varchar(20) NULL,
	"c_emp_code" varchar(20) NULL,
	"n_answer_1" integer NULL,
	"d_tentative_vaccination_1" timestamp NULL,
	"d_vaccination_1" timestamp NULL,
	"c_certificatename_1" varchar(100) NULL,
	"d_question_1_completion" timestamp NULL,
	"n_answer_2" integer NULL,
	"d_tentative_vaccination_2" timestamp NULL,
	"d_vaccination_2" timestamp NULL,
	"c_certificatename_2" varchar(100) NULL,
	"d_question_2_completion" timestamp NULL,
	"d_date" timestamp NULL,
	"d_modified" timestamp NULL,
	"n_status" integer NULL,
	"n_login_blocked_dose1" integer NULL,
	"n_login_blocked_dose2" integer NULL,
	"d_created" timestamp NULL,
	"c_reason_no_taken_dose1" varchar(100) NULL,
	"c_reason_no_taken_dose2" varchar(100) NULL,
	"c_beneficiary_reference_id1" varchar(25) NULL,
	"c_beneficiary_reference_id2" varchar(25) NULL
) 
;
/****** Object:  Table "Tbl_Credit_Limit_Increase_Det"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Credit_Limit_Increase_Det"(
	"N_SRNO" integer NULL,
	"N_Multi_approve" varchar(50) NULL
) 
;
/****** Object:  Table "Tbl_Credit_Limit_Increase_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Credit_Limit_Increase_Mst"(
	"N_SRNO" SERIAL NOT NULL,
	"C_Zone" text NULL,
	"C_Region" text NULL,
	"C_Initiator" varchar(50) NULL,
	"N_Multi_approve" integer NULL,
	"C_Confirm" varchar(50) NULL,
	"C_Created_Date" timestamp NULL,
	"c_Created_User" varchar(50) NULL,
	"C_Modified_Date" timestamp NULL,
	"c_Modified_User" varchar(50) NULL,
	"N_Deleted" integer NULL,
	"n_stage" integer NULL,
PRIMARY KEY  
(
	"N_SRNO" 
) 
) 
;
/****** Object:  Table "Tbl_Credit_Limit_Increase_StageDet"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Credit_Limit_Increase_StageDet"(
	"n_srno" integer NOT NULL,
	"n_fstype" integer NULL,
	"c_type" varchar(20) NULL,
	"n_amount" numeric(18, 2) NULL
) 
;
/****** Object:  Table "Tbl_Credit_Limit_Increase_StageDet_tmp"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Credit_Limit_Increase_StageDet_tmp"(
	"n_srno" SERIAL NOT NULL,
	"n_setup_no" integer NULL,
	"n_fstype" integer NULL,
	"c_type" varchar(20) NULL,
	"n_amount" numeric(18, 2) NULL
) 
;
/****** Object:  Table "tbl_crm_Answer_det"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_crm_Answer_det"(
	"n_Answer_ID" integer NULL,
	"n_QuestionID" integer NULL,
	"c_answer" varchar(100) NULL,
	"c_OtherOption" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_crm_Answer_mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_crm_Answer_mst"(
	"n_ID" SERIAL NOT NULL,
	"n_templateID" integer NULL,
	"c_enteredBy" varchar(50) NULL,
	"c_empcode" varchar(50) NULL,
	"d_entrydate" timestamp NULL,
	"c_spec_name" varchar(50) NULL,
	"C_Enterd_For" varchar(20) NULL,
	"n_DCR_No" numeric(18, 0) NULL,
	"d_date_from" timestamp NULL,
	"d_date_to" timestamp NULL
) 
;
/****** Object:  Table "tbl_crm_fs_template_mapping"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_crm_fs_template_mapping"(
	"c_crm_templateid" varchar(20) NULL,
	"c_emp_code" varchar(10) NULL,
	"d_date_from" timestamp NULL,
	"d_date_to" timestamp NULL
) 
;
/****** Object:  Table "tbl_CRM_question_mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_CRM_question_mst"(
	"C_Question" varchar(1000) NULL,
	"n_QuestionID" SERIAL NOT NULL,
	"n_Quest_groupid" integer NULL,
	"c_Questiontype" varchar(50) NULL,
	"c_Question_popup_data" varchar(250) NULL,
	"C_Active" char(1) NULL,
	"C_OtherOption" char(1) NULL,
	"n_control_width" integer NULL
) 
;
/****** Object:  Table "tbl_CRM_questionGroup_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_CRM_questionGroup_Mst"(
	"n_groupID" SERIAL NOT NULL,
	"C_Groupname" varchar(50) NULL,
	"C_GroupCaption" varchar(50) NULL,
	"n_deleted" integer NULL,
	"d_createdDate" timestamp NULL,
	"d_modifydate" timestamp NULL,
	"c_createdBy" varchar(20) NULL,
	"c_ModifiedBy" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_CRM_Specification_MST"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_CRM_Specification_MST"(
	"n_Spec_ID" numeric(18, 0) NOT NULL,
	"C_Spec_Desc" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_CRM_Template_Det"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_CRM_Template_Det"(
	"n_Template_ID" numeric(18, 0) NULL,
	"n_Question_ID" numeric(18, 0) NULL,
	"n_DisplayOrder" numeric(18, 0) NULL,
	"C_GrpName" varchar(50) NULL,
	"n_GroupDisplyOrder" integer NULL,
	"n_QuestionDisplayOrder" integer NULL
) 
;
/****** Object:  Table "tbl_CRM_Template_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_CRM_Template_Mst"(
	"n_Template_ID" numeric(18, 0) NOT NULL,
	"C_Template_Name" varchar(50) NULL,
	"C_Template_Desc" varchar(50) NULL,
	"C_Active" char(1) NULL,
	"C_Mode" char(1) NULL,
	"n_ModifyDays" numeric(18, 0) NULL,
	"n_Specification" numeric(18, 0) NULL,
	"n_Deleted" smallint NOT NULL,
 CONSTRAINT "PK_tbl_Template_Mst" PRIMARY KEY  
(
	"n_Template_ID" 
) 
) 
;
/****** Object:  Table "Tbl_CRM_TemplateUser_Filter"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_CRM_TemplateUser_Filter"(
	"n_srno" numeric(18, 0) NOT NULL,
	"n_template_ID" numeric(18, 0) NOT NULL,
	"n_flag" smallint NOT NULL,
	"c_empcode" varchar(50) NULL,
	"c_location" varchar(50) NULL,
	"c_department" varchar(50) NULL,
	"n_fstype" integer NULL,
	"c_hqcode" varchar(50) NULL,
	"c_regioncode" varchar(50) NULL,
	"c_zonecode" varchar(50) NULL,
	"n_status" integer NULL
) 
;
/****** Object:  Table "Tbl_Cust_Div"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Cust_Div"(
	"c_cust_code" char(10) NOT NULL,
	"c_div_code" varchar(10) NOT NULL,
	"c_fs_code" char(10) NOT NULL,
	"d_date" timestamp NOT NULL,
	"c_grade" varchar(10) NULL,
	"d_date_to" timestamp NULL,
	"n_per" integer NULL,
	"C_ref_no" varchar(52) NULL,
	"d_modified" timestamp NULL,
	"N_CRNTBUSINES" varchar(150) NULL,
	"C_BUSINES_POTENTIAL" varchar(150) NULL,
	"N_drpotential" varchar(50) NULL,
	"c_DocSubAreacode" varchar(50) NOT NULL,
 CONSTRAINT "PK_Tbl_Cust_Div" PRIMARY KEY  
(
	"c_cust_code" ,
	"c_div_code" ,
	"c_fs_code" ,
	"d_date" ,
	"c_DocSubAreacode" 
) 
) 
;
/****** Object:  Table "Tbl_Cust_Div_Bck_D59379"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Cust_Div_Bck_D59379"(
	"c_cust_code" char(10) NOT NULL,
	"c_div_code" varchar(10) NOT NULL,
	"c_fs_code" char(10) NOT NULL,
	"d_date" timestamp NOT NULL,
	"c_grade" varchar(10) NULL,
	"d_date_to" timestamp NULL,
	"n_per" integer NULL,
	"C_ref_no" varchar(52) NULL,
	"d_modified" timestamp NULL,
	"N_CRNTBUSINES" varchar(150) NULL,
	"C_BUSINES_POTENTIAL" varchar(150) NULL,
	"N_drpotential" varchar(50) NULL,
	"c_DocSubAreacode" varchar(50) NOT NULL
) 
;
/****** Object:  Table "Tbl_Cust_Div_detemp"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Cust_Div_detemp"(
	"c_cust_code" char(10) NOT NULL,
	"c_div_code" varchar(10) NOT NULL,
	"c_fs_code" char(10) NOT NULL,
	"d_date" timestamp NOT NULL,
	"c_grade" varchar(10) NULL,
	"d_date_to" timestamp NULL,
	"n_per" integer NULL,
	"C_ref_no" varchar(52) NULL,
	"d_modified" timestamp NULL,
	"N_CRNTBUSINES" varchar(150) NULL,
	"C_BUSINES_POTENTIAL" varchar(150) NULL,
	"N_drpotential" varchar(50) NULL,
	"c_DocSubAreacode" varchar(50) NOT NULL
) 
;
/****** Object:  Table "tbl_cust_div_subareanull"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_cust_div_subareanull"(
	"c_cust_code" char(10) NOT NULL,
	"c_div_code" varchar(10) NOT NULL,
	"c_fs_code" char(10) NOT NULL,
	"d_date" timestamp NOT NULL,
	"c_grade" varchar(10) NULL,
	"d_date_to" timestamp NULL,
	"n_per" integer NULL,
	"C_ref_no" varchar(52) NULL,
	"d_modified" timestamp NULL,
	"N_CRNTBUSINES" varchar(150) NULL,
	"C_BUSINES_POTENTIAL" varchar(150) NULL,
	"N_drpotential" varchar(50) NULL,
	"c_DocSubAreacode" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_custbackup"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_custbackup"(
	"c_cust_code" char(10) NOT NULL,
	"c_div_code" varchar(10) NOT NULL,
	"c_fs_code" char(10) NOT NULL,
	"d_date" timestamp NOT NULL,
	"c_grade" varchar(10) NULL,
	"d_date_to" timestamp NULL,
	"n_per" integer NULL,
	"C_ref_no" varchar(52) NULL,
	"d_modified" timestamp NULL,
	"N_CRNTBUSINES" varchar(150) NULL,
	"C_BUSINES_POTENTIAL" varchar(150) NULL,
	"N_drpotential" varchar(50) NULL,
	"c_DocSubAreacode" varchar(50) NOT NULL
) 
;
/****** Object:  Table "tbl_dashboard_brandsetup_det"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_dashboard_brandsetup_det"(
	"n_srno" integer NULL,
	"n_rowno" integer NULL,
	"c_brand" varchar(50) NULL,
	"c_cat" text NULL,
	"c_displayname" varchar(50) NULL,
	"c_item" text NULL,
	"n_mcl_from" numeric(18, 0) NULL,
	"n_mcl_to" numeric(18, 0) NULL
) 
;
/****** Object:  Table "tbl_dashboard_brandsetup_grade"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_dashboard_brandsetup_grade"(
	"n_srno" integer NULL,
	"c_grade" varchar(50) NULL,
	"n_weightage" numeric(18, 2) NULL
) 
;
/****** Object:  Table "tbl_dbe_customer_details"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_dbe_customer_details"(
	"n_id" SERIAL NOT NULL,
	"n_request_id" numeric(18, 0) NULL,
	"c_customer_code" varchar(20) NULL,
	"c_subarea" varchar(50) NOT NULL,
	"c_doc_class" varchar(50) NOT NULL,
	"c_doctor_speciality" varchar(50) NOT NULL,
	"d_create" timestamp NULL,
	"n_doctor_business" numeric(18, 2) NULL,
PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "tbl_dbe_dwr_unlock"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_dbe_dwr_unlock"(
	"n_id" SERIAL NOT NULL,
	"c_emp_code" varchar(50) NOT NULL,
	"c_fs_code" varchar(50) NOT NULL,
	"n_unlock_month" integer NULL,
	"n_unlock_year" integer NULL,
	"d_created" timestamp NULL,
	"c_created" varchar(20) NULL,
PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "tbl_dbe_dwr_unlock_delete_log"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_dbe_dwr_unlock_delete_log"(
	"n_id" integer NULL,
	"c_emp_code" varchar(50) NOT NULL,
	"c_fs_code" varchar(50) NOT NULL,
	"n_unlock_month" integer NULL,
	"n_unlock_year" integer NULL,
	"d_created" timestamp NULL,
	"c_created" varchar(20) NULL,
	"d_delete" timestamp NULL
) 
;
/****** Object:  Table "tbl_dbe_item_details"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_dbe_item_details"(
	"n_id" SERIAL NOT NULL,
	"n_request_id" integer NULL,
	"c_customer_code" varchar(20) NULL,
	"c_item_code" varchar(100) NULL,
	"n_rate" numeric(10, 2) NOT NULL,
	"n_quantity" integer NOT NULL,
PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "tbl_dbe_upload_files"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_dbe_upload_files"(
	"n_id" SERIAL NOT NULL,
	"n_transaction_id" numeric(18, 0) NOT NULL,
	"c_file_name" varchar(255) NOT NULL,
	"n_file_size" varchar(20) NULL,
	"d_created_date" timestamp NULL,
PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "tbl_dcotor_location_api_update"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_dcotor_location_api_update"(
	"c_drcode" varchar(20) NULL,
	"c_modified_fs" varchar(20) NULL,
	"d_date" timestamp NULL,
	"n_dsca_type" integer NULL
) 
;
/****** Object:  Table "tbl_dcr_component_det"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_dcr_component_det"(
	"n_id" integer NOT NULL,
	"n_priority" integer NOT NULL,
	"n_dsca_type" integer NULL,
	"component_id" integer NULL,
	"n_visible" integer NULL,
	"n_Required" integer NULL,
	"c_worktrype" varchar(200) NULL
) 
;
/****** Object:  Table "tbl_dcr_component_mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_dcr_component_mst"(
	"n_id" integer NOT NULL,
	"c_name" varchar(100) NULL,
	"n_deleted" integer NULL,
	"c_display_name" varchar(100) NULL,
 CONSTRAINT "PK_tbl_dcr_component_mst" PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "tbl_DCR_Display_Setup"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_DCR_Display_Setup"(
	"n_srno" SERIAL NOT NULL,
	"n_type" integer NULL,
	"c_Division_Code" text NULL,
	"c_Region_Code" text NULL,
	"c_Desc_Code" varchar(100) NULL,
	"C_FsCode" text NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "tbl_dcr_doc_item_pref"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_dcr_doc_item_pref"(
	"c_doc_code" varchar(20) NULL,
	"c_itemcode" varchar(20) NULL,
	"c_pref_code" varchar(2) NULL,
	"n_pref_qty" integer NULL
) 
;
/****** Object:  Table "tbl_dcr_edetail_capture"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_dcr_edetail_capture"(
	"c_fscode" varchar(20) NULL,
	"n_dcrno" integer NULL,
	"c_doccode" varchar(20) NULL,
	"c_titlecode" varchar(20) NULL,
	"c_itemcode" varchar(20) NULL,
	"n_slideid" integer NULL,
	"d_date" "date" NULL,
	"t_time" varchar(20) NULL,
	"n_flag" integer NULL
) 
;
/****** Object:  Table "tbl_Dcr_LockActivation"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Dcr_LockActivation"(
	"c_fs_code" varchar(20) NOT NULL,
	"d_Unlock_From" timestamp NULL,
	"d_Unlock_To" timestamp NULL,
	"c_EntryMandatory" varchar(5) NULL,
	"c_Remark" varchar(500) NULL,
	"c_ModifiedBy" varchar(20) NULL,
	"d_Modified" timestamp NULL,
	"n_flag" integer NULL,
	"n_lock_entry_type" integer NULL
) 
;
/****** Object:  Table "tbl_Dcr_LockActivation_history"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Dcr_LockActivation_history"(
	"c_fs_code" varchar(20) NOT NULL,
	"d_Unlock_From" timestamp NULL,
	"d_Unlock_To" timestamp NULL,
	"c_EntryMandatory" varchar(5) NULL,
	"c_Remark" varchar(500) NULL,
	"c_ModifiedBy" varchar(20) NULL,
	"d_Modified" timestamp NULL,
	"n_flag" integer NULL,
	"n_lock_entry_type" integer NULL
) 
;
/****** Object:  Table "tbl_Dcr_LockActivation_log"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Dcr_LockActivation_log"(
	"c_fs_code" varchar(20) NOT NULL,
	"d_Unlock_From" timestamp NULL,
	"d_Unlock_To" timestamp NULL,
	"c_EntryMandatory" varchar(5) NULL,
	"c_Remark" varchar(500) NULL,
	"c_ModifiedBy" varchar(20) NULL,
	"d_Modified" timestamp NULL,
	"n_flag" integer NULL
) 
;
/****** Object:  Table "tbl_Dcr_log"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Dcr_log"(
	"N_Dcr_No" numeric(18, 0) NOT NULL,
	"D_Date_Report" timestamp NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL
) 
;
/****** Object:  Table "tbl_dcr_mcr_samp_gift_promo_setup"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_dcr_mcr_samp_gift_promo_setup"(
	"n_srno" SERIAL NOT NULL,
	"n_type" integer NULL,
	"c_division" varchar(2000) NULL,
	"c_region" varchar(2000) NULL,
	"c_createdby" varchar(20) NULL,
	"n_deleted" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "tbl_dcr_PLEL_history"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_dcr_PLEL_history"(
	"N_leavesrno" integer NULL,
	"n_leavetype" integer NULL,
	"c_fscode" varchar(20) NULL,
	"c_empcode" varchar(20) NULL,
	"d_datereport" timestamp NULL,
	"d_entry_date" timestamp NULL,
	"n_setup" integer NULL,
	"totalcnt" integer NULL,
	"d_created" timestamp NULL
) 
;
/****** Object:  Table "tbl_dcr_plel_history_log"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_dcr_plel_history_log"(
	"srno" SERIAL NOT NULL,
	"n_leavesrno" integer NULL,
	"n_leavetype" integer NULL,
	"c_fscode" varchar(20) NULL,
	"c_empcode" varchar(20) NULL,
	"n_setup" integer NULL,
	"totalcnt" integer NULL,
	"n_month" integer NULL,
	"n_year" char(10) NULL,
	"d_created" timestamp NULL,
 CONSTRAINT "PK_tbl_dcr_PLEL_history_log" PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "tbl_Dcr_PreviousEntry_FoRHTMLDownload"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Dcr_PreviousEntry_FoRHTMLDownload"(
	"n_month" integer NULL,
	"n_year" integer NULL
) 
;
/****** Object:  Table "tbl_Dcr_PSG_Mandatory"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Dcr_PSG_Mandatory"(
	"c_div_code" varchar(50) NULL,
	"n_product" integer NULL,
	"n_sample" integer NULL,
	"n_gift" integer NULL
) 
;
/****** Object:  Table "tbl_dcr_Summary"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_dcr_Summary"(
	"n_srno" numeric(18, 0) NULL,
	"n_doccnt" integer NULL,
	"n_stkcnt" integer NULL,
	"n_chmcnt" integer NULL,
	"n_othcnt" integer NULL,
	"n_hoscnt" integer NULL
) 
;
/****** Object:  Table "tbl_dcrmcr_approve_log"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_dcrmcr_approve_log"(
	"n_id" SERIAL NOT NULL,
	"n_dcrno" numeric(18, 0) NULL,
	"c_remarks" varchar(1000) NULL,
	"c_approved_rejected_by" varchar(20) NULL,
	"n_status" integer NULL,
	"d_approved_rejected_date" timestamp NULL
) 
;
/****** Object:  Table "Tbl_DCRMCR_Chemist_Mandatory_setup_DET"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_DCRMCR_Chemist_Mandatory_setup_DET"(
	"n_id" integer NULL,
	"c_code" varchar(50) NULL
) 
;
/****** Object:  Table "Tbl_DCRMCR_Chemist_Mandatory_setup_MST"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_DCRMCR_Chemist_Mandatory_setup_MST"(
	"n_id" SERIAL NOT NULL,
	"n_Rpttype" integer NULL,
	"n_applicabletype" varchar(1) NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "tbl_dcrmcr_edit_setup"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_dcrmcr_edit_setup"(
	"N_RptType" integer NULL,
	"N_Type" integer NULL,
	"C_Code" char(10) NULL,
	"N_Days" integer NULL
) 
;
/****** Object:  Table "tbl_dcrmcr_reporting_worktype_setup"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_dcrmcr_reporting_worktype_setup"(
	"n_srno" SERIAL NOT NULL,
	"n_dcrmcrtype" integer NULL,
	"c_worktype_code" varchar(10) NULL,
	"c_division_code" text NULL,
	"n_docchemstk_mandatory" integer NULL,
	"n_areafeedback_mandatory" integer NULL,
	"n_mtpvariance_mandatory" integer NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "tbl_DCSA_Degree_Students_Number"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_DCSA_Degree_Students_Number"(
	"c_DSC_code" varchar(50) NULL,
	"c_Degree_code" varchar(50) NULL,
	"n_nmbr" integer NULL
) 
;
/****** Object:  Table "tbl_dd"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_dd"(
	"data" text NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "Tbl_Degree_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Degree_Mst"(
	"C_Code" varchar(20) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"C_Sh_Name" varchar(7) NULL,
	"n_deleted" integer NOT NULL,
	"n_status" integer NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
 CONSTRAINT "PK_Tbl_Degree_Mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "tbl_delete_mtp_stp_details"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_delete_mtp_stp_details"(
	"n_srno" numeric(18, 0) NULL,
	"c_subarea_code" varchar(50) NULL,
	"c_fscode" varchar(50) NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_delete_mtp_stp_details_log"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_delete_mtp_stp_details_log"(
	"n_srno" numeric(18, 0) NULL,
	"c_subarea_code" varchar(50) NULL,
	"c_fscode" varchar(50) NULL,
	"d_date" timestamp NULL,
	"d_modified_date" timestamp NULL
) 
;
/****** Object:  Table "Tbl_Delivery_mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Delivery_mst"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"C_Address" varchar(200) NULL,
	"C_phone" varchar(20) NULL,
	"N_Flag" integer NOT NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
 CONSTRAINT "PK_Tbl_Delivery_mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "tbl_department_mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_department_mst"(
	"C_Code" varchar(10) NOT NULL,
	"c_name" varchar(50) NULL,
	"c_short_name" varchar(10) NULL,
	"C_travel_desk_incharge" varchar(10) NULL,
	"C_material_desk_empcode" varchar(10) NULL,
	"N_SFA_ROLE" integer NULL,
	"N_deleted" smallint NOT NULL,
	"D_created" timestamp NOT NULL,
	"D_modified" timestamp NULL,
	"C_modifier" varchar(50) NULL,
	"C_Gadget_code" varchar(50) NULL,
 CONSTRAINT "PK__tbl_department_m__3BF8F300" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "tbl_depo_xl_column_mapping_details"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_depo_xl_column_mapping_details"(
	"n_rowid" integer NULL,
	"n_srno" integer NOT NULL,
	"c_sfa_Columns" varchar(100) NULL,
	"c_xl_columns" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_depo_xl_column_mapping_header"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_depo_xl_column_mapping_header"(
	"n_srno" integer NOT NULL,
	"c_name" varchar(100) NULL,
	"d_date" timestamp NULL,
	"c_uploadedby" varchar(50) NULL,
	"c_depocode" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_Depo_xl_columns_mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Depo_xl_columns_mst"(
	"c_Depo_columnname" varchar(200) NULL,
	"d_Createddate" timestamp NULL,
	"d_modifieddate" timestamp NULL,
	"c_createdby" varchar(100) NULL,
	"n_deleted" integer NULL,
	"n_status" integer NULL
) 
;
/****** Object:  Table "Tbl_Depot_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Depot_Mst"(
	"C_DEP_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"C_SH_Name" varchar(10) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
 CONSTRAINT "PK_Tbl_Depot_Mst" PRIMARY KEY  
(
	"C_DEP_Code" 
) 
) 
;
/****** Object:  Table "Tbl_Depot_Mst_temp"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Depot_Mst_temp"(
	"c_code" char(6) NULL,
	"c_name" varchar(100) NULL,
	"c_sh_name" varchar(100) NULL,
	"n_deleted" integer NULL,
	"d_date" varchar(30) NULL,
	"d_ldate" varchar(30) NULL,
	"c_modiuser" varchar(30) NULL
) 
;
/****** Object:  Table "Tbl_Depot_Stock"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Depot_Stock"(
	"c_depo_code" varchar(10) NOT NULL,
	"c_item_code" varchar(10) NOT NULL,
	"c_batch_no" varchar(10) NOT NULL,
	"d_exp_dt" timestamp NOT NULL,
	"n_bal_qty" numeric(18, 0) NOT NULL,
	"n_brk_qty" numeric(18, 0) NOT NULL,
	"n_srt" numeric(18, 0) NOT NULL,
	"n_mrp" numeric(18, 0) NOT NULL,
	"n_exc_rt" numeric(18, 0) NOT NULL,
	"n_trt" numeric(18, 0) NOT NULL,
	"n_strip_box" numeric(18, 0) NOT NULL,
	"n_box_case" numeric(18, 0) NOT NULL,
	"n_lock" integer NOT NULL,
	"c_cpn_name" varchar(15) NULL,
	"n_prt" numeric(18, 0) NULL,
 CONSTRAINT "PK_Tbl_Depot_Stock" PRIMARY KEY  
(
	"c_depo_code" ,
	"c_item_code" ,
	"c_batch_no" 
) 
) 
;
/****** Object:  Table "tbl_desig_mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_desig_mst"(
	"c_code" varchar(50) NOT NULL,
	"c_name" varchar(50) NOT NULL,
	"c_sh_name" varchar(50) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(50) NULL,
 CONSTRAINT "PK_tbl_desig_mst" PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "tbl_Desig_WorkType_Allowance_Mapping"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Desig_WorkType_Allowance_Mapping"(
	"n_srno" SERIAL NOT NULL,
	"n_designation" integer NULL,
	"c_worktype" varchar(20) NULL,
	"n_allowance" numeric(18, 2) NULL,
 CONSTRAINT "PK_tbl_Desig_WorkType_Allowance_Mapping" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_Desig_WorkType_Allowance_Mapping_Marketing"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Desig_WorkType_Allowance_Mapping_Marketing"(
	"n_srno" SERIAL NOT NULL,
	"n_designation" integer NULL,
	"c_worktype" varchar(20) NULL,
	"n_allowance" numeric(18, 2) NULL,
 CONSTRAINT "PK_tbl_Desig_WorkType_Allowance_Mapping_Marketing" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_Desig_WorkType_Fs_Mapping"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Desig_WorkType_Fs_Mapping"(
	"n_srno" SERIAL NOT NULL,
	"c_fscode" varchar(20) NULL,
	"c_worktype" varchar(20) NULL,
	"n_allowance" integer NULL
) 
;
/****** Object:  Table "tbl_Desig_WorkType_Fs_Mapping_Marketing"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Desig_WorkType_Fs_Mapping_Marketing"(
	"n_srno" SERIAL NOT NULL,
	"c_fscode" varchar(20) NULL,
	"c_worktype" varchar(20) NULL,
	"n_allowance" integer NULL
) 
;
/****** Object:  Table "tbl_desk_mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_desk_mst"(
	"c_code" varchar(10) NOT NULL,
	"c_name" varchar(50) NOT NULL,
	"c_emp_code" varchar(10) NOT NULL,
	"n_deleted" integer NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"c_email_id" varchar(50) NULL,
	"c_email_sing1" varchar(100) NULL,
	"c_email_sing2" varchar(100) NULL,
	"c_email_sing3" varchar(100) NULL,
	"c_email_sing4" varchar(100) NULL,
	"c_email_sing5" varchar(100) NULL,
	"c_email_sing6" varchar(100) NULL,
 CONSTRAINT "PK_tbl_desk_mst" PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "Tbl_Device_Login_Token_Details"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "Tbl_Device_Login_Token_Details"(
	"n_id" SERIAL NOT NULL,
	"c_token_id" varchar(50) NOT NULL,
	"c_company_id" varchar(100) NULL,
	"c_device_id" varchar(50) NULL,
	"n_device_type" integer NULL,
	"c_fs_code" varchar(10) NULL,
	"c_emp_code" varchar(10) NULL,
	"c_user_id" varchar(20) NULL,
	"c_password" varchar(100) NULL,
	"d_token_issued_date" timestamp NULL,
	"d_token_valid_to" timestamp NULL,
	"n_enable" integer NULL,
 CONSTRAINT "PK_Tbl_Device_Login_Token_Details" PRIMARY KEY  
(
	"c_token_id" 
) 
) 
;
/****** Object:  Table "tbl_direct_expence"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_direct_expence"(
	"c_emp_code" varchar(10) NOT NULL,
	"n_paid_month" integer NOT NULL,
	"n_paid_year" integer NOT NULL,
	"n_bill_month" integer NOT NULL,
	"n_bill_year" integer NOT NULL,
	"n_claim_amount" numeric(18, 2) NULL,
	"n_app_amount" numeric(18, 2) NULL,
	"n_add" numeric(18, 2) NULL,
	"n_less" numeric(18, 2) NULL,
	"c_remark1" varchar(100) NULL,
	"c_remark2" varchar(100) NULL,
	"c_remark3" varchar(100) NULL,
	"c_remark4" varchar(100) NULL,
	"c_remark5" varchar(100) NULL,
	"c_remark6" varchar(100) NULL,
	"c_remark7" varchar(100) NULL,
	"c_clarification" varchar(250) NULL,
	"n_confirm" smallint NULL,
	"c_confirm_note" varchar(250) NULL,
	"d_date" timestamp NULL,
 CONSTRAINT "PK_tbl_direct_expence" PRIMARY KEY  
(
	"c_emp_code" ,
	"n_bill_month" ,
	"n_bill_year" 
) 
) 
;
/****** Object:  Table "tbl_direct_saledet"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_direct_saledet"(
	"n_srno" integer NOT NULL,
	"c_item_code" varchar(50) NULL,
	"n_qty" numeric(18, 0) NULL,
	"n_sch_qty" numeric(18, 0) NULL,
	"n_rate" numeric(18, 0) NULL,
	"n_val" numeric(18, 0) NULL
) 
;
/****** Object:  Table "tbl_DirectBackend_Update_Det"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_DirectBackend_Update_Det"(
	"n_srno" SERIAL NOT NULL,
	"n_code" integer NOT NULL,
	"c_fscode" varchar(10) NULL,
	"n_fstype" integer NULL
) 
;
/****** Object:  Table "tbl_DirectBackend_Update_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_DirectBackend_Update_Mst"(
	"n_code" SERIAL NOT NULL,
	"c_Proc_Display_Name" varchar(800) NULL,
	"c_sp_name" varchar(1000) NULL,
	"c_parameter_description" text NULL,
	"c_filestartswith" varchar(5000) NULL,
	"c_division" varchar(5000) NULL,
	"n_month" integer NULL,
	"n_year" integer NULL,
	"d_date_update" timestamp NULL,
	"c_fs_selection" varchar(10) NULL,
	"c_Report_Type" varchar(10) NULL,
 CONSTRAINT "PK_tbl_DirectBackend_Update_Mst" PRIMARY KEY  
(
	"n_code" 
) 
) 
;
/****** Object:  Table "tbl_dispense_mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_dispense_mst"(
	"c_code" varchar(20) NOT NULL,
	"c_name" varchar(50) NOT NULL,
	"c_sh_name" char(20) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "tbl_Display_Status_Mst"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_Display_Status_Mst"(
	"C_Code" varchar(20) NOT NULL,
	"C_Name" varchar(50) NULL,
	"N_Active" integer NULL,
 CONSTRAINT "PK_tbl_Display_Status_Mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "tbl_DisplaySetup_Followup"    Script Date: 5/20/2026 2:30:21 PM ******/
;
;
CREATE TABLE "tbl_DisplaySetup_Followup"(
	"N_Id" SERIAL NOT NULL,
	"C_Chemist" varchar(20) NULL,
	"N_DisplayId" varchar(50) NULL,
	"D_ValDate" timestamp NULL,
	"C_DisplayStatus" varchar(20) NULL,
	"C_Image" varchar(500) NULL,
	"C_Remark" varchar(100) NULL,
	"C_Fscode" varchar(20) NULL,
	"D_Date" timestamp NULL,
	"d_created" timestamp NULL
) 
;
/****** Object:  Table "tbl_DisplaySetupRequest"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DisplaySetupRequest"(
	"n_id" SERIAL NOT NULL,
	"c_retailer" varchar(20) NULL,
	"c_fscode" varchar(20) NULL,
	"c_displaysetup" varchar(20) NULL,
	"d_from" timestamp NULL,
	"d_to" timestamp NULL,
	"n_purchasevalue" numeric(18, 2) NULL,
	"n_pobstatus" integer NULL,
	"d_created" timestamp NULL,
	"n_status" integer NULL,
	"c_statusby" varchar(50) NULL,
	"d_statuson" timestamp NULL,
	"C_Reject_Note" varchar(250) NULL,
	"n_displaycount" integer NULL,
	"n_displaybudget" numeric(15, 2) NULL,
 CONSTRAINT "PK_tbl_DisplaySetupRequest" PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "Tbl_distance_chart"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_distance_chart"(
	"n_srno" numeric(18, 0) NULL,
	"c_subarea_code_from" varchar(10) NULL,
	"c_subarea_code_to" varchar(10) NULL,
	"n_distance" numeric(18, 2) NULL
) 
;
/****** Object:  Table "Tbl_Distance_Repository_For_STP"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Distance_Repository_For_STP"(
	"C_From" varchar(20) NULL,
	"C_To" varchar(20) NULL,
	"C_Distance" varchar(25) NULL
) 
;
/****** Object:  Table "Tbl_District_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_District_Mst"(
	"c_code" varchar(10) NOT NULL,
	"c_name" varchar(50) NOT NULL,
	"c_sh_name" varchar(7) NULL,
	"c_region_code" varchar(50) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
 CONSTRAINT "PK_Tbl_District_Mst" PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "tbl_Div_DrGrade_Mapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Div_DrGrade_Mapping"(
	"c_div_code" varchar(50) NULL,
	"c_Dr_Grade" varchar(50) NULL
) 
;
/****** Object:  Table "Tbl_Div_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Div_Mst"(
	"c_code" varchar(10) NOT NULL,
	"c_name" varchar(50) NOT NULL,
	"c_sh_name" varchar(7) NULL,
	"n_pur" numeric(18, 0) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"C_EMailPassword" varchar(500) NULL,
	"C_EMailID" varchar(3000) NULL,
	"C_DisplayNameEmail" varchar(100) NULL,
 CONSTRAINT "PK_Tbl_Div_Mst" PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "tbl_div_mst_temp"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_div_mst_temp"(
	"c_code" char(6) NULL,
	"c_name" char(50) NULL,
	"c_sh_name" char(20) NULL,
	"n_pur" numeric(18, 0) NULL,
	"n_deleted" numeric(1, 0) NULL,
	"d_created" varchar(30) NULL,
	"d_modified" varchar(30) NULL,
	"c_modifier" varchar(30) NULL
) 
;
/****** Object:  Table "tbl_division_code_vs_sap_division_code"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_division_code_vs_sap_division_code"(
	"c_division_code" varchar(20) NULL,
	"c_sap_division_code" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_divisonwise_sampleallocation"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_divisonwise_sampleallocation"(
	"n_srno" SERIAL NOT NULL,
	"c_division" varchar(20) NULL,
	"d_dtfrom" timestamp NULL,
	"d_dateto" timestamp NULL,
	"n_deleted" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "tbl_divisonwise_sampleallocation_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_divisonwise_sampleallocation_det"(
	"n_srno" numeric(18, 0) NULL,
	"c_itemcode" varchar(20) NULL,
	"n_qty" numeric(18, 0) NULL
) 
;
/****** Object:  Table "tbl_Doc_Adr_Rpt"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Doc_Adr_Rpt"(
	"C_LabelName" varchar(20) NOT NULL,
	"C_Reportfile" varchar(50) NOT NULL,
	"N_Deleted" numeric(18, 0) NULL,
PRIMARY KEY  
(
	"C_LabelName" 
) 
) 
;
/****** Object:  Table "tbl_Doc_appointment_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Doc_appointment_Details"(
	"c_code" varchar(50) NULL,
	"c_empNo" varchar(50) NULL,
	"c_fscode" varchar(50) NULL,
	"c_Source" varchar(50) NULL,
	"d_app_date" timestamp NULL,
	"c_time" varchar(50) NULL,
	"n_type" integer NULL,
	"d_date" timestamp NOT NULL
) 
;
/****** Object:  Table "tbl_doc_chem_mapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_doc_chem_mapping"(
	"C_fs_code" varchar(10) NOT NULL,
	"c_doc_code" varchar(10) NOT NULL,
	"c_chem_code" varchar(50) NOT NULL,
	"d_date" timestamp NOT NULL,
 CONSTRAINT "PK_tbl_doc_chem_mapping" PRIMARY KEY  
(
	"C_fs_code" ,
	"c_doc_code" ,
	"c_chem_code" 
) 
) 
;
/****** Object:  Table "Tbl_Doc_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Doc_Details"(
	"C_Doc_Code" varchar(10) NOT NULL,
	"C_Doc_Day_Meet" varchar(20) NULL,
	"C_Doc_Ftime_Meet" varchar(50) NULL,
	"C_Doc_Ttime_Meet" varchar(50) NULL,
	"C_Doc_App_Criteria" varchar(300) NULL,
	"N_Doc_App_Fixed" smallint NULL,
	"n_MonthlyOrWeekly" integer NULL,
	"n_WeekOfMonth" integer NULL,
	"n_srno" SERIAL NOT NULL
) 
;
/****** Object:  Table "Tbl_Doc_Exp"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Doc_Exp"(
	"N_SRNO" numeric(18, 0) NOT NULL,
	"D_DATE" timestamp NULL,
	"C_FS_CODE" varchar(10) NULL,
	"C_DOC_CODE" varchar(10) NULL,
	"N_AMOUNT" numeric(18, 4) NULL,
	"C_NOTE" varchar(100) NULL,
	"C_CREATE_USER" varchar(10) NULL,
	"N_deleted" integer NULL,
	"C_EMP_CODE" varchar(10) NOT NULL,
 CONSTRAINT "PK_Tbl_Doc_Exp" PRIMARY KEY  
(
	"N_SRNO" 
) 
) 
;
/****** Object:  Table "tbl_doc_grade_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_doc_grade_mst"(
	"c_code" varchar(10) NOT NULL,
	"c_description" varchar(30) NULL,
	"n_noof_visit" integer NULL,
	"c_group" varchar(10) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"C_sh_name" varchar(50) NULL,
	"n_type" smallint NULL,
	"C_SubArea_Code" varchar(10) NULL,
	"n_noof_frequency" integer NULL,
	"n_rpt_display" integer NOT NULL,
 CONSTRAINT "PK_tbl_doc_grade_mst" PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "tbl_doc_grade_mst_temp"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_doc_grade_mst_temp"(
	"c_code" varchar(10) NULL,
	"c_name" varchar(30) NULL,
	"c_sh_name" varchar(10) NULL,
	"c_group" varchar(10) NULL,
	"n_deleted" integer NULL,
	"d_date" varchar(30) NULL,
	"d_ldate" varchar(30) NULL,
	"c_modiuser" varchar(30) NULL
) 
;
/****** Object:  Table "Tbl_Doc_Imag_Save"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Doc_Imag_Save"(
	"c_doc_code" varchar(20) NULL,
	"n_imagetype" integer NULL,
	"c_doc_image" varchar(500) NULL,
	"d_created" timestamp NULL
) 
;
/****** Object:  Table "tbl_Doc_MultipleSub_Det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Doc_MultipleSub_Det"(
	"c_DSC_Code" varchar(50) NULL,
	"c_DocAreacode" varchar(50) NULL,
	"c_DocSubAreacode" varchar(50) NULL,
	"n_deleted" integer NULL,
	"n_SubType" integer NULL
) 
;
/****** Object:  Table "tbl_Doc_MultipleSub_Det_Bckup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Doc_MultipleSub_Det_Bckup"(
	"c_DSC_Code" varchar(50) NULL,
	"c_DocAreacode" varchar(50) NULL,
	"c_DocSubAreacode" varchar(50) NULL,
	"d_date" timestamp NULL,
	"n_SubType" integer NULL
) 
;
/****** Object:  Table "Tbl_Doc_Prefer_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Doc_Prefer_Details"(
	"n_srNo" SERIAL NOT NULL,
	"C_Doc_Code" varchar(50) NULL,
	"C_Doc_Ftime_prefer" varchar(50) NULL,
	"C_Doc_Ttime_prefer" varchar(50) NULL,
 CONSTRAINT "PK_Tbl_Doc_Prefer_Details" PRIMARY KEY  
(
	"n_srNo" 
) 
) 
;
/****** Object:  Table "tbl_doc_profile"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_doc_profile"(
	"c_code" varchar(50) NOT NULL,
	"c_name" varchar(200) NULL,
	"c_phone" varchar(50) NULL,
	"d_Modified" timestamp NOT NULL,
	"c_fscode" varchar(20) NULL
) 
;
/****** Object:  Table "Tbl_Doc_Req_Setup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Doc_Req_Setup"(
	"n_Code" bigint NOT NULL,
	"n_Name" bigint NOT NULL,
	"n_Qualification" bigint NOT NULL,
	"n_Address1" bigint NOT NULL,
	"n_Address2" bigint NOT NULL,
	"n_Address3" bigint NOT NULL,
	"n_Address4" bigint NOT NULL,
	"n_SubArea" bigint NOT NULL,
	"n_Phone" bigint NOT NULL,
	"n_MCL_No" bigint NOT NULL,
	"n_Category" bigint NOT NULL,
	"n_PinCode" bigint NOT NULL,
	"n_DateOfBirth" bigint NOT NULL,
	"n_DateOfWedding" bigint NOT NULL,
	"n_EMail" bigint NOT NULL,
	"n_Grade" bigint NOT NULL,
	"n_ApprovalFlag" smallint NOT NULL,
	"n_type" smallint NOT NULL,
	"n_DrClass" bigint NOT NULL,
	"C_FName" varchar(50) NULL,
	"C_LName" varchar(50) NULL,
	"n_mci_no" varchar(20) NULL,
	"n_SingleOrMultiApproval" integer NULL,
	"n_city1" integer NULL,
	"n_house" integer NULL,
	"n_area2" integer NULL,
	"n_landmark2" integer NULL,
	"n_city2" integer NULL,
	"n_street2" integer NULL,
	"n_pincode2" integer NULL,
	"n_state2" integer NULL,
	"n_drpotential" integer NULL,
	"n_childname1" integer NULL,
	"n_childname2" integer NULL,
	"n_childname3" integer NULL,
	"n_age" integer NULL,
	"n_speciality" integer NULL,
	"n_patients" integer NULL,
	"n_drpurchasing" integer NULL,
	"n_curentbusines" integer NULL,
	"n_businespotential" integer NULL,
	"n_child1dob" integer NULL,
	"n_child2dob" integer NULL,
	"n_child3dob" integer NULL,
	"n_state1" integer NULL,
	"n_prescribing" integer NULL,
	"n_SetupId" integer NULL,
	"n_drprescribing" integer NULL,
	"n_landline" integer NULL,
	"n_idealtime" integer NULL,
	"n_spousename" integer NULL,
	"n_spousedob" integer NULL,
	"n_dr_coreproduct_mapping" integer NULL,
	"c_docmstpan" varchar(10) NULL,
	"n_clarea" integer NULL,
	"n_clsubarea" integer NULL
) 
;
/****** Object:  Table "Tbl_Doc_Stock_Chem_Add_Det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Doc_Stock_Chem_Add_Det"(
	"c_doc_code" varchar(50) NOT NULL,
	"c_doc_unique_code" varchar(50) NULL,
	"c_doc_vendor_code" varchar(50) NULL,
	"d_dwr_lastvisitdate" timestamp NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"C_PAN_PhotoLocation" varchar(500) NULL,
	"c_pan_photo_location_azure_url" text NULL,
PRIMARY KEY  
(
	"c_doc_code" 
) 
) 
;
/****** Object:  Table "Tbl_Doc_Stock_Chem_Add_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Doc_Stock_Chem_Add_Mst"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(200) NULL,
	"N_Type" integer NOT NULL,
	"C_Grade" varchar(10) NULL,
	"C_Qualification" varchar(50) NULL,
	"C_Add_1" varchar(200) NULL,
	"C_Add_2" varchar(50) NULL,
	"C_Add_3" varchar(50) NULL,
	"C_Add_4" varchar(50) NULL,
	"C_Pin" varchar(10) NULL,
	"C_Phone" varchar(20) NULL,
	"C_Fax" varchar(50) NULL,
	"C_Category" text NULL,
	"C_Area_Code" varchar(10) NULL,
	"C_Subarea_Code" varchar(10) NULL,
	"D_DOB" timestamp NULL,
	"D_DOW" timestamp NULL,
	"n_Status" integer NULL,
	"D_Create_Date" timestamp NULL,
	"D_modify_Date" timestamp NULL,
	"C_Email_ID" varchar(50) NULL,
	"C_FsCode" varchar(10) NULL,
	"c_region_code" varchar(10) NULL,
	"n_convert" numeric(9, 0) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(20) NULL,
	"n_lami" double precision NULL,
	"n_lgmi" double precision NULL,
	"c_tin_no" varchar(50) NULL,
	"c_lic_no" varchar(50) NULL,
	"c_contact_name" varchar(50) NULL,
	"n_Sft_shop" numeric(18, 0) NULL,
	"n_No_of_display_Shelf" numeric(9, 0) NULL,
	"c_desc_display_shelf" varchar(100) NULL,
	"n_Front_Board_Height" numeric(9, 2) NULL,
	"n_Front_Board_length" numeric(9, 2) NULL,
	"n_Backlit" smallint NULL,
	"n_Computerised" smallint NULL,
	"c_lic_food" varchar(50) NULL,
	"c_sort" varchar(10) NULL,
	"c_contact_mob" varchar(50) NULL,
	"c_contact_outlet_num" varchar(50) NULL,
	"C_Landmark" varchar(100) NULL,
	"C_Short_Name" varchar(10) NULL,
	"C_Doc_Class" varchar(10) NULL,
	"C_Spousename" varchar(100) NULL,
	"D_SpouseDob" timestamp NULL,
	"C_FName" varchar(50) NULL,
	"C_LName" varchar(50) NULL,
	"n_mcino" varchar(40) NULL,
	"C_HOSPITAL_NAME" varchar(200) NULL,
	"C_STREET_NAME" varchar(150) NULL,
	"C_AREA_NAME" varchar(150) NULL,
	"C_LANDMARK1" varchar(150) NULL,
	"C_CITY" varchar(150) NULL,
	"C_STATE" varchar(150) NULL,
	"C_HOUSE_NAME" varchar(150) NULL,
	"C_STREET_NAME1" varchar(150) NULL,
	"C_AREA_NAME1" varchar(150) NULL,
	"C_LANDMARK2" varchar(150) NULL,
	"C_CITY_1" varchar(150) NULL,
	"N_PATIENTS" varchar(150) NULL,
	"N_CRNTBUSINES" varchar(150) NULL,
	"C_STATE1" varchar(150) NULL,
	"C_PINCODE1" varchar(150) NULL,
	"C_BUSINES_POTENTIAL" varchar(150) NULL,
	"D_CHILD_DOB1" timestamp NULL,
	"D_CHILD_DOB2" timestamp NULL,
	"D_CHILD_DOB3" timestamp NULL,
	"n_age" varchar(10) NULL,
	"C_SPECIALITY" varchar(150) NULL,
	"C_childnname1" varchar(150) NULL,
	"C_childnname2" varchar(150) NULL,
	"C_childnname3" varchar(150) NULL,
	"n_drpurchase" integer NULL,
	"N_drprescription" integer NULL,
	"N_drpotential" varchar(50) NULL,
	"c_landline" varchar(20) NULL,
	"c_middlename" varchar(50) NULL,
	"c_tldl1" varchar(100) NULL,
	"c_tldl2" varchar(100) NULL,
	"c_dlfood1" varchar(100) NULL,
	"c_tldl11" varchar(100) NULL,
	"c_tldl12" varchar(100) NULL,
	"c_dlfood2" varchar(100) NULL,
	"d_DLDate1" timestamp NULL,
	"d_DLDate2" timestamp NULL,
	"c_pan1" varchar(100) NULL,
	"c_pan2" varchar(100) NULL,
	"c_Purchase_manager_Name" varchar(100) NULL,
	"c_Purchase_manager_Mob" varchar(20) NULL,
	"c_Account_Type" varchar(50) NULL,
	"n_visit_freq" integer NULL,
	"n_fridge" integer NULL,
	"c_Institutn_type" varchar(100) NULL,
	"c_Account_Grp" varchar(100) NULL,
	"n_hostel" integer NULL,
	"n_no_of_canteen" integer NULL,
	"c_type_of_food" text NULL,
	"c_Canteen_contr_name" varchar(100) NULL,
	"c_Canteen_contr_addr" varchar(500) NULL,
	"D_agreement_date" timestamp NULL,
	"n_Total_Disc" numeric(5, 2) NULL,
	"D_Total_Disc_From" timestamp NULL,
	"D_Total_Disc_To" timestamp NULL,
	"c_Store_Classification" varchar(100) NULL,
	"n_Store_Type" integer NULL,
	"c_Distributor" varchar(20) NULL,
	"c_store_type" varchar(50) NULL,
	"c_Store_Manager" varchar(50) NULL,
	"c_Distributor_name" varchar(100) NULL,
	"n_active" integer NULL,
	"c_classification" varchar(10) NULL,
	"c_chemisttype" varchar(10) NULL,
	"n_WindowSize" varchar(50) NULL,
	"C_AccountClassfctn" varchar(5) NULL,
	"C_AccountAddress" varchar(100) NULL,
	"C_AccountCode" varchar(10) NULL,
	"n_DaysTo_Activate" integer NULL,
	"d_Start_Date" timestamp NULL,
	"d_activation_Date" timestamp NULL,
	"c_storetype" varchar(50) NULL,
	"c_distributorcode" varchar(50) NULL,
	"c_visitfrequency" varchar(50) NULL,
	"c_classificationcode" varchar(50) NULL,
	"c_stmanager" varchar(50) NULL,
	"C_SA_Classification" varchar(20) NULL,
	"c_Hospital_Code" varchar(200) NULL,
	"C_TypeofHsptl" varchar(300) NULL,
	"C_Area" varchar(100) NULL,
	"C_Inhouse_phar_exist" varchar(100) NULL,
	"C_Fin_Turnover" varchar(100) NULL,
	"C_Potencial" varchar(100) NULL,
	"C_No_of_Beds" varchar(100) NULL,
	"C_No_of_Emer_Beds" varchar(100) NULL,
	"C_No_of_Critic_ICU_Beds" varchar(100) NULL,
	"C_No_of_Sur_Theaters" varchar(100) NULL,
	"C_Hospital" varchar(100) NULL,
	"C_Tot_No_of_Doctors" varchar(100) NULL,
	"C_Pur_Mgr_Name" varchar(100) NULL,
	"C_Pur_Mgr__Contact" varchar(100) NULL,
	"C_Stk_Inchrg_Name" varchar(100) NULL,
	"C_Stk_Inchrg_Contact" varchar(100) NULL,
	"C_Fin_Ofcr_Name" varchar(100) NULL,
	"C_Fin_Ofcr_Contact" varchar(100) NULL,
	"C_No_of_Thrputc_Group" varchar(100) NULL,
	"C_Techng_Institution" varchar(100) NULL,
	"C_Gstno" varchar(50) NULL,
	"c_docmstpan" varchar(10) NULL,
	"c_classtype" varchar(10) NULL,
	"n_SASCollection" integer NULL,
	"c_uniqueid" varchar(50) NULL,
	"c_contact_person" varchar(200) NULL,
	"c_purchasemanagermail" varchar(200) NULL,
	"n_purchaseteam_size" integer NULL,
	"c_stockiesname" varchar(200) NULL,
	"n_lami_res" double precision NULL,
	"n_lgmi_res" double precision NULL,
	"C_profile_Image" text NULL,
	"c_department_catered" integer NULL,
	"c_brands_focused" varchar(2000) NULL,
	"C_Phone_Enc" varchar(500) NULL,
	"doctors_covered_hospital" integer NULL,
	"c_hetero_distributor_supplier" varchar(10) NULL,
	"c_hetero_brands_available" varchar(10) NULL,
	"n_no_new_admissions_perday" integer NULL,
	"c_diagnostic_lab_iside_hospital" integer NULL,
	"n_no_of_cafes" integer NULL,
	"n_patient_kiosk" integer NULL,
	"n_hospital_digitally_active" integer NULL,
	"n_digital_handle_hospital_promotions" integer NULL,
	"n_hospital_involved_mass_screening" integer NULL,
	"n_hospital_organizing_specific_seminars" integer NULL,
	"n_is_hospital_medical_emergency" integer NULL,
	"n_pharmacy_scheme_specificity" integer NULL,
	"n_dnb_hospital" integer NULL,
	"n_number_of_patients" integer NULL,
	"n_no_oncology_hospitals" integer NULL,
	"n_no_of_beds_oncology_patients" integer NULL,
	"n_no_patients_chemotherapy_surgery" integer NULL,
	"n_no_chemotherapy_per_day" integer NULL,
	"c_indication_wise_regiments" integer NULL,
	"c_expected_business_activity_customers" varchar(250) NULL,
 CONSTRAINT "PK_Tbl_Doc_Stock_Chem_Add_Mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "tbl_doc_stock_chem_add_mst_bck_D54396"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_doc_stock_chem_add_mst_bck_D54396"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(200) NULL,
	"N_Type" integer NOT NULL,
	"C_Grade" varchar(10) NULL,
	"C_Qualification" varchar(50) NULL,
	"C_Add_1" varchar(50) NULL,
	"C_Add_2" varchar(50) NULL,
	"C_Add_3" varchar(50) NULL,
	"C_Add_4" varchar(50) NULL,
	"C_Pin" varchar(10) NULL,
	"C_Phone" varchar(20) NULL,
	"C_Fax" varchar(50) NULL,
	"C_Category" varchar(10) NULL,
	"C_Area_Code" varchar(10) NULL,
	"C_Subarea_Code" varchar(10) NULL,
	"D_DOB" timestamp NULL,
	"D_DOW" timestamp NULL,
	"n_Status" integer NULL,
	"D_Create_Date" timestamp NULL,
	"D_modify_Date" timestamp NULL,
	"C_Email_ID" varchar(50) NULL,
	"C_FsCode" varchar(10) NULL,
	"c_region_code" varchar(10) NULL,
	"n_convert" numeric(9, 0) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(20) NULL,
	"n_lami" double precision NULL,
	"n_lgmi" double precision NULL,
	"c_tin_no" varchar(50) NULL,
	"c_lic_no" varchar(50) NULL,
	"c_contact_name" varchar(50) NULL,
	"n_Sft_shop" numeric(18, 0) NULL,
	"n_No_of_display_Shelf" numeric(9, 0) NULL,
	"c_desc_display_shelf" varchar(100) NULL,
	"n_Front_Board_Height" numeric(9, 2) NULL,
	"n_Front_Board_length" numeric(9, 2) NULL,
	"n_Backlit" smallint NULL,
	"n_Computerised" smallint NULL,
	"c_lic_food" varchar(50) NULL,
	"c_sort" varchar(10) NULL,
	"c_contact_mob" varchar(50) NULL,
	"c_contact_outlet_num" varchar(50) NULL,
	"C_Landmark" varchar(100) NULL,
	"C_Short_Name" varchar(10) NULL,
	"C_Doc_Class" varchar(10) NULL,
	"C_Spousename" varchar(100) NULL,
	"D_SpouseDob" timestamp NULL,
	"C_FName" varchar(50) NULL,
	"C_LName" varchar(50) NULL,
	"n_mcino" varchar(20) NULL,
	"C_HOSPITAL_NAME" varchar(150) NULL,
	"C_STREET_NAME" varchar(150) NULL,
	"C_AREA_NAME" varchar(150) NULL,
	"C_LANDMARK1" varchar(150) NULL,
	"C_CITY" varchar(150) NULL,
	"C_STATE" varchar(150) NULL,
	"C_HOUSE_NAME" varchar(150) NULL,
	"C_STREET_NAME1" varchar(150) NULL,
	"C_AREA_NAME1" varchar(150) NULL,
	"C_LANDMARK2" varchar(150) NULL,
	"C_CITY_1" varchar(150) NULL,
	"N_PATIENTS" varchar(150) NULL,
	"N_CRNTBUSINES" varchar(150) NULL,
	"C_STATE1" varchar(150) NULL,
	"C_PINCODE1" varchar(150) NULL,
	"C_BUSINES_POTENTIAL" varchar(150) NULL,
	"D_CHILD_DOB1" timestamp NULL,
	"D_CHILD_DOB2" timestamp NULL,
	"D_CHILD_DOB3" timestamp NULL,
	"n_age" varchar(10) NULL,
	"C_SPECIALITY" varchar(150) NULL,
	"C_childnname1" varchar(150) NULL,
	"C_childnname2" varchar(150) NULL,
	"C_childnname3" varchar(150) NULL,
	"n_drpurchase" integer NULL,
	"N_drprescription" integer NULL,
	"N_drpotential" varchar(50) NULL,
	"c_landline" varchar(20) NULL,
	"c_middlename" varchar(50) NULL,
	"c_tldl1" varchar(100) NULL,
	"c_tldl2" varchar(100) NULL,
	"c_dlfood1" varchar(100) NULL,
	"c_tldl11" varchar(100) NULL,
	"c_tldl12" varchar(100) NULL,
	"c_dlfood2" varchar(100) NULL,
	"d_DLDate1" timestamp NULL,
	"d_DLDate2" timestamp NULL,
	"c_pan1" varchar(100) NULL,
	"c_pan2" varchar(100) NULL,
	"c_Purchase_manager_Name" varchar(100) NULL,
	"c_Purchase_manager_Mob" varchar(20) NULL,
	"c_Account_Type" varchar(50) NULL,
	"n_visit_freq" integer NULL,
	"n_fridge" integer NULL,
	"c_Institutn_type" varchar(100) NULL,
	"c_Account_Grp" varchar(100) NULL,
	"n_hostel" integer NULL,
	"n_no_of_canteen" integer NULL,
	"c_type_of_food" text NULL,
	"c_Canteen_contr_name" varchar(100) NULL,
	"c_Canteen_contr_addr" varchar(500) NULL,
	"D_agreement_date" timestamp NULL,
	"n_Total_Disc" numeric(5, 2) NULL,
	"D_Total_Disc_From" timestamp NULL,
	"D_Total_Disc_To" timestamp NULL,
	"c_Store_Classification" varchar(100) NULL,
	"n_Store_Type" integer NULL,
	"c_Distributor" varchar(20) NULL,
	"c_store_type" varchar(50) NULL,
	"c_Store_Manager" varchar(50) NULL,
	"c_Distributor_name" varchar(100) NULL,
	"n_active" integer NULL,
	"c_classification" varchar(10) NULL,
	"c_chemisttype" varchar(10) NULL,
	"n_WindowSize" varchar(50) NULL,
	"C_AccountClassfctn" varchar(5) NULL,
	"C_AccountAddress" varchar(100) NULL,
	"C_AccountCode" varchar(10) NULL,
	"n_DaysTo_Activate" integer NULL,
	"d_Start_Date" timestamp NULL,
	"d_activation_Date" timestamp NULL,
	"c_storetype" varchar(50) NULL,
	"c_distributorcode" varchar(50) NULL,
	"c_visitfrequency" varchar(50) NULL,
	"c_classificationcode" varchar(50) NULL,
	"c_stmanager" varchar(50) NULL,
	"C_SA_Classification" varchar(20) NULL,
	"c_Hospital_Code" varchar(10) NULL,
	"C_TypeofHsptl" varchar(300) NULL,
	"C_Area" varchar(100) NULL,
	"C_Inhouse_phar_exist" varchar(100) NULL,
	"C_Fin_Turnover" varchar(100) NULL,
	"C_Potencial" varchar(100) NULL,
	"C_No_of_Beds" varchar(100) NULL,
	"C_No_of_Emer_Beds" varchar(100) NULL,
	"C_No_of_Critic_ICU_Beds" varchar(100) NULL,
	"C_No_of_Sur_Theaters" varchar(100) NULL,
	"C_Hospital" varchar(100) NULL,
	"C_Tot_No_of_Doctors" varchar(100) NULL,
	"C_Pur_Mgr_Name" varchar(100) NULL,
	"C_Pur_Mgr__Contact" varchar(100) NULL,
	"C_Stk_Inchrg_Name" varchar(100) NULL,
	"C_Stk_Inchrg_Contact" varchar(100) NULL,
	"C_Fin_Ofcr_Name" varchar(100) NULL,
	"C_Fin_Ofcr_Contact" varchar(100) NULL,
	"C_No_of_Thrputc_Group" varchar(100) NULL,
	"C_Techng_Institution" varchar(100) NULL,
	"C_Gstno" varchar(50) NULL,
	"c_docmstpan" varchar(10) NULL
) 
;
/****** Object:  Table "Tbl_Doc_Stock_Chem_Add_Mst_bkp_Hospital_Code_Issue_20250909"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Doc_Stock_Chem_Add_Mst_bkp_Hospital_Code_Issue_20250909"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(200) NULL,
	"N_Type" integer NOT NULL,
	"C_Grade" varchar(10) NULL,
	"C_Qualification" varchar(50) NULL,
	"C_Add_1" varchar(200) NULL,
	"C_Add_2" varchar(50) NULL,
	"C_Add_3" varchar(50) NULL,
	"C_Add_4" varchar(50) NULL,
	"C_Pin" varchar(10) NULL,
	"C_Phone" varchar(20) NULL,
	"C_Fax" varchar(50) NULL,
	"C_Category" text NULL,
	"C_Area_Code" varchar(10) NULL,
	"C_Subarea_Code" varchar(10) NULL,
	"D_DOB" timestamp NULL,
	"D_DOW" timestamp NULL,
	"n_Status" integer NULL,
	"D_Create_Date" timestamp NULL,
	"D_modify_Date" timestamp NULL,
	"C_Email_ID" varchar(50) NULL,
	"C_FsCode" varchar(10) NULL,
	"c_region_code" varchar(10) NULL,
	"n_convert" numeric(9, 0) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(20) NULL,
	"n_lami" double precision NULL,
	"n_lgmi" double precision NULL,
	"c_tin_no" varchar(50) NULL,
	"c_lic_no" varchar(50) NULL,
	"c_contact_name" varchar(50) NULL,
	"n_Sft_shop" numeric(18, 0) NULL,
	"n_No_of_display_Shelf" numeric(9, 0) NULL,
	"c_desc_display_shelf" varchar(100) NULL,
	"n_Front_Board_Height" numeric(9, 2) NULL,
	"n_Front_Board_length" numeric(9, 2) NULL,
	"n_Backlit" smallint NULL,
	"n_Computerised" smallint NULL,
	"c_lic_food" varchar(50) NULL,
	"c_sort" varchar(10) NULL,
	"c_contact_mob" varchar(50) NULL,
	"c_contact_outlet_num" varchar(50) NULL,
	"C_Landmark" varchar(100) NULL,
	"C_Short_Name" varchar(10) NULL,
	"C_Doc_Class" varchar(10) NULL,
	"C_Spousename" varchar(100) NULL,
	"D_SpouseDob" timestamp NULL,
	"C_FName" varchar(50) NULL,
	"C_LName" varchar(50) NULL,
	"n_mcino" varchar(40) NULL,
	"C_HOSPITAL_NAME" varchar(200) NULL,
	"C_STREET_NAME" varchar(150) NULL,
	"C_AREA_NAME" varchar(150) NULL,
	"C_LANDMARK1" varchar(150) NULL,
	"C_CITY" varchar(150) NULL,
	"C_STATE" varchar(150) NULL,
	"C_HOUSE_NAME" varchar(150) NULL,
	"C_STREET_NAME1" varchar(150) NULL,
	"C_AREA_NAME1" varchar(150) NULL,
	"C_LANDMARK2" varchar(150) NULL,
	"C_CITY_1" varchar(150) NULL,
	"N_PATIENTS" varchar(150) NULL,
	"N_CRNTBUSINES" varchar(150) NULL,
	"C_STATE1" varchar(150) NULL,
	"C_PINCODE1" varchar(150) NULL,
	"C_BUSINES_POTENTIAL" varchar(150) NULL,
	"D_CHILD_DOB1" timestamp NULL,
	"D_CHILD_DOB2" timestamp NULL,
	"D_CHILD_DOB3" timestamp NULL,
	"n_age" varchar(10) NULL,
	"C_SPECIALITY" varchar(150) NULL,
	"C_childnname1" varchar(150) NULL,
	"C_childnname2" varchar(150) NULL,
	"C_childnname3" varchar(150) NULL,
	"n_drpurchase" integer NULL,
	"N_drprescription" integer NULL,
	"N_drpotential" varchar(50) NULL,
	"c_landline" varchar(20) NULL,
	"c_middlename" varchar(50) NULL,
	"c_tldl1" varchar(100) NULL,
	"c_tldl2" varchar(100) NULL,
	"c_dlfood1" varchar(100) NULL,
	"c_tldl11" varchar(100) NULL,
	"c_tldl12" varchar(100) NULL,
	"c_dlfood2" varchar(100) NULL,
	"d_DLDate1" timestamp NULL,
	"d_DLDate2" timestamp NULL,
	"c_pan1" varchar(100) NULL,
	"c_pan2" varchar(100) NULL,
	"c_Purchase_manager_Name" varchar(100) NULL,
	"c_Purchase_manager_Mob" varchar(20) NULL,
	"c_Account_Type" varchar(50) NULL,
	"n_visit_freq" integer NULL,
	"n_fridge" integer NULL,
	"c_Institutn_type" varchar(100) NULL,
	"c_Account_Grp" varchar(100) NULL,
	"n_hostel" integer NULL,
	"n_no_of_canteen" integer NULL,
	"c_type_of_food" text NULL,
	"c_Canteen_contr_name" varchar(100) NULL,
	"c_Canteen_contr_addr" varchar(500) NULL,
	"D_agreement_date" timestamp NULL,
	"n_Total_Disc" numeric(5, 2) NULL,
	"D_Total_Disc_From" timestamp NULL,
	"D_Total_Disc_To" timestamp NULL,
	"c_Store_Classification" varchar(100) NULL,
	"n_Store_Type" integer NULL,
	"c_Distributor" varchar(20) NULL,
	"c_store_type" varchar(50) NULL,
	"c_Store_Manager" varchar(50) NULL,
	"c_Distributor_name" varchar(100) NULL,
	"n_active" integer NULL,
	"c_classification" varchar(10) NULL,
	"c_chemisttype" varchar(10) NULL,
	"n_WindowSize" varchar(50) NULL,
	"C_AccountClassfctn" varchar(5) NULL,
	"C_AccountAddress" varchar(100) NULL,
	"C_AccountCode" varchar(10) NULL,
	"n_DaysTo_Activate" integer NULL,
	"d_Start_Date" timestamp NULL,
	"d_activation_Date" timestamp NULL,
	"c_storetype" varchar(50) NULL,
	"c_distributorcode" varchar(50) NULL,
	"c_visitfrequency" varchar(50) NULL,
	"c_classificationcode" varchar(50) NULL,
	"c_stmanager" varchar(50) NULL,
	"C_SA_Classification" varchar(20) NULL,
	"c_Hospital_Code" varchar(200) NULL,
	"C_TypeofHsptl" varchar(300) NULL,
	"C_Area" varchar(100) NULL,
	"C_Inhouse_phar_exist" varchar(100) NULL,
	"C_Fin_Turnover" varchar(100) NULL,
	"C_Potencial" varchar(100) NULL,
	"C_No_of_Beds" varchar(100) NULL,
	"C_No_of_Emer_Beds" varchar(100) NULL,
	"C_No_of_Critic_ICU_Beds" varchar(100) NULL,
	"C_No_of_Sur_Theaters" varchar(100) NULL,
	"C_Hospital" varchar(100) NULL,
	"C_Tot_No_of_Doctors" varchar(100) NULL,
	"C_Pur_Mgr_Name" varchar(100) NULL,
	"C_Pur_Mgr__Contact" varchar(100) NULL,
	"C_Stk_Inchrg_Name" varchar(100) NULL,
	"C_Stk_Inchrg_Contact" varchar(100) NULL,
	"C_Fin_Ofcr_Name" varchar(100) NULL,
	"C_Fin_Ofcr_Contact" varchar(100) NULL,
	"C_No_of_Thrputc_Group" varchar(100) NULL,
	"C_Techng_Institution" varchar(100) NULL,
	"C_Gstno" varchar(50) NULL,
	"c_docmstpan" varchar(10) NULL,
	"c_classtype" varchar(10) NULL,
	"n_SASCollection" integer NULL,
	"c_uniqueid" varchar(50) NULL,
	"c_contact_person" varchar(200) NULL,
	"c_purchasemanagermail" varchar(200) NULL,
	"n_purchaseteam_size" integer NULL,
	"c_stockiesname" varchar(200) NULL,
	"n_lami_res" double precision NULL,
	"n_lgmi_res" double precision NULL,
	"C_profile_Image" text NULL
) 
;
/****** Object:  Table "Tbl_Doc_Stock_Chem_Add_Mst_c_Hospital_Code_update_bkp_07052026"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Doc_Stock_Chem_Add_Mst_c_Hospital_Code_update_bkp_07052026"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(200) NULL,
	"N_Type" integer NOT NULL,
	"C_Grade" varchar(10) NULL,
	"C_Qualification" varchar(50) NULL,
	"C_Add_1" varchar(200) NULL,
	"C_Add_2" varchar(50) NULL,
	"C_Add_3" varchar(50) NULL,
	"C_Add_4" varchar(50) NULL,
	"C_Pin" varchar(10) NULL,
	"C_Phone" varchar(20) NULL,
	"C_Fax" varchar(50) NULL,
	"C_Category" text NULL,
	"C_Area_Code" varchar(10) NULL,
	"C_Subarea_Code" varchar(10) NULL,
	"D_DOB" timestamp NULL,
	"D_DOW" timestamp NULL,
	"n_Status" integer NULL,
	"D_Create_Date" timestamp NULL,
	"D_modify_Date" timestamp NULL,
	"C_Email_ID" varchar(50) NULL,
	"C_FsCode" varchar(10) NULL,
	"c_region_code" varchar(10) NULL,
	"n_convert" numeric(9, 0) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(20) NULL,
	"n_lami" double precision NULL,
	"n_lgmi" double precision NULL,
	"c_tin_no" varchar(50) NULL,
	"c_lic_no" varchar(50) NULL,
	"c_contact_name" varchar(50) NULL,
	"n_Sft_shop" numeric(18, 0) NULL,
	"n_No_of_display_Shelf" numeric(9, 0) NULL,
	"c_desc_display_shelf" varchar(100) NULL,
	"n_Front_Board_Height" numeric(9, 2) NULL,
	"n_Front_Board_length" numeric(9, 2) NULL,
	"n_Backlit" smallint NULL,
	"n_Computerised" smallint NULL,
	"c_lic_food" varchar(50) NULL,
	"c_sort" varchar(10) NULL,
	"c_contact_mob" varchar(50) NULL,
	"c_contact_outlet_num" varchar(50) NULL,
	"C_Landmark" varchar(100) NULL,
	"C_Short_Name" varchar(10) NULL,
	"C_Doc_Class" varchar(10) NULL,
	"C_Spousename" varchar(100) NULL,
	"D_SpouseDob" timestamp NULL,
	"C_FName" varchar(50) NULL,
	"C_LName" varchar(50) NULL,
	"n_mcino" varchar(40) NULL,
	"C_HOSPITAL_NAME" varchar(200) NULL,
	"C_STREET_NAME" varchar(150) NULL,
	"C_AREA_NAME" varchar(150) NULL,
	"C_LANDMARK1" varchar(150) NULL,
	"C_CITY" varchar(150) NULL,
	"C_STATE" varchar(150) NULL,
	"C_HOUSE_NAME" varchar(150) NULL,
	"C_STREET_NAME1" varchar(150) NULL,
	"C_AREA_NAME1" varchar(150) NULL,
	"C_LANDMARK2" varchar(150) NULL,
	"C_CITY_1" varchar(150) NULL,
	"N_PATIENTS" varchar(150) NULL,
	"N_CRNTBUSINES" varchar(150) NULL,
	"C_STATE1" varchar(150) NULL,
	"C_PINCODE1" varchar(150) NULL,
	"C_BUSINES_POTENTIAL" varchar(150) NULL,
	"D_CHILD_DOB1" timestamp NULL,
	"D_CHILD_DOB2" timestamp NULL,
	"D_CHILD_DOB3" timestamp NULL,
	"n_age" varchar(10) NULL,
	"C_SPECIALITY" varchar(150) NULL,
	"C_childnname1" varchar(150) NULL,
	"C_childnname2" varchar(150) NULL,
	"C_childnname3" varchar(150) NULL,
	"n_drpurchase" integer NULL,
	"N_drprescription" integer NULL,
	"N_drpotential" varchar(50) NULL,
	"c_landline" varchar(20) NULL,
	"c_middlename" varchar(50) NULL,
	"c_tldl1" varchar(100) NULL,
	"c_tldl2" varchar(100) NULL,
	"c_dlfood1" varchar(100) NULL,
	"c_tldl11" varchar(100) NULL,
	"c_tldl12" varchar(100) NULL,
	"c_dlfood2" varchar(100) NULL,
	"d_DLDate1" timestamp NULL,
	"d_DLDate2" timestamp NULL,
	"c_pan1" varchar(100) NULL,
	"c_pan2" varchar(100) NULL,
	"c_Purchase_manager_Name" varchar(100) NULL,
	"c_Purchase_manager_Mob" varchar(20) NULL,
	"c_Account_Type" varchar(50) NULL,
	"n_visit_freq" integer NULL,
	"n_fridge" integer NULL,
	"c_Institutn_type" varchar(100) NULL,
	"c_Account_Grp" varchar(100) NULL,
	"n_hostel" integer NULL,
	"n_no_of_canteen" integer NULL,
	"c_type_of_food" text NULL,
	"c_Canteen_contr_name" varchar(100) NULL,
	"c_Canteen_contr_addr" varchar(500) NULL,
	"D_agreement_date" timestamp NULL,
	"n_Total_Disc" numeric(5, 2) NULL,
	"D_Total_Disc_From" timestamp NULL,
	"D_Total_Disc_To" timestamp NULL,
	"c_Store_Classification" varchar(100) NULL,
	"n_Store_Type" integer NULL,
	"c_Distributor" varchar(20) NULL,
	"c_store_type" varchar(50) NULL,
	"c_Store_Manager" varchar(50) NULL,
	"c_Distributor_name" varchar(100) NULL,
	"n_active" integer NULL,
	"c_classification" varchar(10) NULL,
	"c_chemisttype" varchar(10) NULL,
	"n_WindowSize" varchar(50) NULL,
	"C_AccountClassfctn" varchar(5) NULL,
	"C_AccountAddress" varchar(100) NULL,
	"C_AccountCode" varchar(10) NULL,
	"n_DaysTo_Activate" integer NULL,
	"d_Start_Date" timestamp NULL,
	"d_activation_Date" timestamp NULL,
	"c_storetype" varchar(50) NULL,
	"c_distributorcode" varchar(50) NULL,
	"c_visitfrequency" varchar(50) NULL,
	"c_classificationcode" varchar(50) NULL,
	"c_stmanager" varchar(50) NULL,
	"C_SA_Classification" varchar(20) NULL,
	"c_Hospital_Code" varchar(200) NULL,
	"C_TypeofHsptl" varchar(300) NULL,
	"C_Area" varchar(100) NULL,
	"C_Inhouse_phar_exist" varchar(100) NULL,
	"C_Fin_Turnover" varchar(100) NULL,
	"C_Potencial" varchar(100) NULL,
	"C_No_of_Beds" varchar(100) NULL,
	"C_No_of_Emer_Beds" varchar(100) NULL,
	"C_No_of_Critic_ICU_Beds" varchar(100) NULL,
	"C_No_of_Sur_Theaters" varchar(100) NULL,
	"C_Hospital" varchar(100) NULL,
	"C_Tot_No_of_Doctors" varchar(100) NULL,
	"C_Pur_Mgr_Name" varchar(100) NULL,
	"C_Pur_Mgr__Contact" varchar(100) NULL,
	"C_Stk_Inchrg_Name" varchar(100) NULL,
	"C_Stk_Inchrg_Contact" varchar(100) NULL,
	"C_Fin_Ofcr_Name" varchar(100) NULL,
	"C_Fin_Ofcr_Contact" varchar(100) NULL,
	"C_No_of_Thrputc_Group" varchar(100) NULL,
	"C_Techng_Institution" varchar(100) NULL,
	"C_Gstno" varchar(50) NULL,
	"c_docmstpan" varchar(10) NULL,
	"c_classtype" varchar(10) NULL,
	"n_SASCollection" integer NULL,
	"c_uniqueid" varchar(50) NULL,
	"c_contact_person" varchar(200) NULL,
	"c_purchasemanagermail" varchar(200) NULL,
	"n_purchaseteam_size" integer NULL,
	"c_stockiesname" varchar(200) NULL,
	"n_lami_res" double precision NULL,
	"n_lgmi_res" double precision NULL,
	"C_profile_Image" text NULL,
	"c_department_catered" integer NULL,
	"c_brands_focused" varchar(2000) NULL,
	"C_Phone_Enc" varchar(500) NULL,
	"doctors_covered_hospital" integer NULL,
	"c_hetero_distributor_supplier" varchar(10) NULL,
	"c_hetero_brands_available" varchar(10) NULL,
	"n_no_new_admissions_perday" integer NULL,
	"c_diagnostic_lab_iside_hospital" integer NULL,
	"n_no_of_cafes" integer NULL,
	"n_patient_kiosk" integer NULL,
	"n_hospital_digitally_active" integer NULL,
	"n_digital_handle_hospital_promotions" integer NULL,
	"n_hospital_involved_mass_screening" integer NULL,
	"n_hospital_organizing_specific_seminars" integer NULL,
	"n_is_hospital_medical_emergency" integer NULL,
	"n_pharmacy_scheme_specificity" integer NULL,
	"n_dnb_hospital" integer NULL,
	"n_number_of_patients" integer NULL,
	"n_no_oncology_hospitals" integer NULL,
	"n_no_of_beds_oncology_patients" integer NULL,
	"n_no_patients_chemotherapy_surgery" integer NULL,
	"n_no_chemotherapy_per_day" integer NULL,
	"c_indication_wise_regiments" integer NULL,
	"c_expected_business_activity_customers" varchar(250) NULL
) 
;
/****** Object:  Table "Tbl_Doc_Stock_Chem_Add_Mst_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Doc_Stock_Chem_Add_Mst_log"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(200) NULL,
	"N_Type" integer NOT NULL,
	"C_Grade" varchar(10) NULL,
	"C_Qualification" varchar(50) NULL,
	"C_Add_1" varchar(200) NULL,
	"C_Add_2" varchar(200) NULL,
	"C_Add_3" varchar(70) NULL,
	"C_Add_4" varchar(70) NULL,
	"C_Pin" varchar(20) NULL,
	"C_Phone" varchar(30) NULL,
	"C_Fax" varchar(50) NULL,
	"C_Category" varchar(10) NULL,
	"C_Area_Code" varchar(10) NULL,
	"C_Subarea_Code" varchar(10) NULL,
	"D_DOB" timestamp NULL,
	"D_DOW" timestamp NULL,
	"n_Status" integer NULL,
	"D_Create_Date" timestamp NULL,
	"D_modify_Date" timestamp NULL,
	"C_Email_ID" varchar(50) NULL,
	"C_FsCode" varchar(10) NULL,
	"c_region_code" varchar(10) NULL,
	"n_convert" numeric(9, 0) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"n_lami" double precision NULL,
	"n_lgmi" double precision NULL,
	"c_tin_no" varchar(50) NULL,
	"c_lic_no" varchar(50) NULL,
	"c_contact_name" varchar(50) NULL,
	"n_Sft_shop" numeric(18, 0) NULL,
	"n_No_of_display_Shelf" numeric(9, 0) NULL,
	"c_desc_display_shelf" varchar(100) NULL,
	"n_Front_Board_Height" numeric(9, 2) NULL,
	"n_Front_Board_length" numeric(9, 2) NULL,
	"n_Backlit" smallint NULL,
	"n_Computerised" smallint NULL,
	"c_lic_food" varchar(50) NULL,
	"c_sort" varchar(10) NULL,
	"c_contact_mob" varchar(50) NULL,
	"c_contact_outlet_num" varchar(50) NULL,
	"C_Landmark" varchar(100) NULL,
	"C_Short_Name" varchar(10) NULL,
	"C_Doc_Class" varchar(10) NULL,
	"C_Spousename" varchar(100) NULL,
	"D_SpouseDob" timestamp NULL,
	"C_FName" varchar(50) NULL,
	"C_LName" varchar(50) NULL,
	"n_mcino" varchar(30) NULL
) 
;
/****** Object:  Table "Tbl_Doc_Stock_Chem_Add_Mst_temp"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Doc_Stock_Chem_Add_Mst_temp"(
	"C_Code" char(6) NULL,
	"C_Name" char(50) NULL,
	"N_Type" numeric(1, 0) NULL,
	"C_Grade" char(20) NULL,
	"C_Qualification" char(30) NULL,
	"C_Add_1" char(40) NULL,
	"C_Add_2" char(40) NULL,
	"C_Add_3" char(40) NULL,
	"C_Add_4" char(40) NULL,
	"C_Pin" char(6) NULL,
	"C_Phone" char(30) NULL,
	"C_Fax" char(30) NULL,
	"C_Category" char(6) NULL,
	"C_Area_Code" char(6) NULL,
	"C_Subarea_Code" char(6) NULL,
	"D_DOB" varchar(30) NULL,
	"D_DOW" varchar(30) NULL,
	"n_Status" numeric(1, 0) NULL,
	"D_Create_Date" varchar(30) NULL,
	"D_modify_Date" varchar(30) NULL,
	"C_Email_ID" varchar(30) NULL,
	"C_FsCode" char(6) NULL,
	"c_region_code" char(6) NULL,
	"n_convert" numeric(9, 0) NULL,
	"n_deleted" numeric(1, 0) NULL,
	"d_created" varchar(30) NULL,
	"d_modified" varchar(30) NULL,
	"c_modifier" varchar(30) NULL
) 
;
/****** Object:  Table "tbl_Doc_Stock_LimitChk_Det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Doc_Stock_LimitChk_Det"(
	"n_id" integer NULL,
	"c_HQ_Cat_Gr_code" varchar(50) NULL,
	"n_Count" integer NULL,
	"d_from_date" timestamp NULL,
	"d_to_Date" timestamp NULL
) 
;
/****** Object:  Table "tbl_Doc_Stock_LimitChk_Det_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Doc_Stock_LimitChk_Det_log"(
	"n_id" integer NULL,
	"c_HQ_Cat_Gr_code" varchar(50) NULL,
	"n_Count" integer NULL,
	"d_from_date" timestamp NULL,
	"d_to_Date" timestamp NULL,
	"d_inserteddate" timestamp NULL
) 
;
/****** Object:  Table "tbl_Doc_Stock_LimitChk_HDR"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Doc_Stock_LimitChk_HDR"(
	"n_id" SERIAL NOT NULL,
	"n_Maptype" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "tbl_DocInv_Amount"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DocInv_Amount"(
	"n_id" SERIAL NOT NULL,
	"n_srno" integer NOT NULL,
	"n_setupno" integer NULL,
	"c_invcode" varchar(10) NULL,
	"n_amount" numeric(20, 2) NULL,
	"c_inv_status" varchar(10) NULL,
	"c_empcode" varchar(20) NULL,
	"c_fwstatus" varchar(10) NULL,
	"x_MandatoryHtml" "xml" NULL,
	"x_MandatoryHtmlModified" "xml" NULL,
	"n_approveramt" numeric(20, 0) NULL,
	"n_confirmeramt" numeric(10, 2) NULL,
	"n_deskamt" numeric(20, 0) NULL,
	"n_deskstaffamt" numeric(20, 0) NULL,
	"n_AdvanceAmount" numeric(18, 2) NULL
) 
;
/****** Object:  Table "tbl_docinv_Amount_AdvLog"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_docinv_Amount_AdvLog"(
	"srno" integer NULL,
	"c_invcode" varchar(10) NULL,
	"n_amount" numeric(20, 2) NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_docinv_Amount_AdvnullLog"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_docinv_Amount_AdvnullLog"(
	"srno" integer NULL,
	"sectn" varchar(500) NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_DocInv_Amount_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DocInv_Amount_log"(
	"n_id" integer NULL,
	"n_srno" integer NOT NULL,
	"n_setupno" integer NULL,
	"c_invcode" varchar(10) NULL,
	"n_amount" numeric(20, 2) NULL,
	"c_inv_status" varchar(10) NULL,
	"c_empcode" varchar(20) NULL,
	"c_fwstatus" varchar(10) NULL,
	"x_MandatoryHtml" "xml" NULL,
	"x_MandatoryHtmlModified" "xml" NULL,
	"n_approveramt" numeric(10, 2) NULL,
	"n_confirmeramt" numeric(10, 2) NULL,
	"n_deskamt" numeric(10, 2) NULL,
	"n_deskstaffamt" numeric(20, 0) NULL,
	"n_advanceAmount" numeric(18, 2) NULL
) 
;
/****** Object:  Table "tbl_docinv_Amount_logfor_alkem"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_docinv_Amount_logfor_alkem"(
	"n_id" integer NULL,
	"n_srno" integer NULL,
	"n_setupno" integer NULL,
	"c_invcode" varchar(10) NULL,
	"n_amount" numeric(20, 2) NULL,
	"c_inv_status" varchar(10) NULL,
	"c_empcode" varchar(20) NULL,
	"c_fwstatus" varchar(10) NULL,
	"x_MandatoryHtml" "xml" NULL,
	"x_MandatoryHtmlModified" "xml" NULL,
	"n_approveramt" numeric(20, 0) NULL,
	"n_confirmeramt" numeric(20, 0) NULL,
	"n_deskamt" numeric(20, 0) NULL,
	"n_deskstaffamt" numeric(20, 0) NULL,
	"n_AdvanceAmount" numeric(18, 2) NULL
) 
;
/****** Object:  Table "tbl_docinv_bankdetails"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_docinv_bankdetails"(
	"n_srno" integer NOT NULL,
	"c_benif" varchar(1000) NULL,
	"c_chequeno" varchar(1000) NULL,
	"d_chequedate" timestamp NULL,
	"c_paymentdtls" varchar(1000) NULL,
	"c_paymentamt" varchar(1000) NULL
) 
;
/****** Object:  Table "tbl_docinv_bankdetails_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_docinv_bankdetails_log"(
	"n_srno" integer NULL,
	"c_benif" varchar(1000) NULL,
	"c_chequeno" varchar(1000) NULL,
	"d_chequedate" timestamp NULL,
	"c_paymentdtls" varchar(1000) NULL,
	"c_paymentamt" varchar(1000) NULL
) 
;
/****** Object:  Table "tbl_docinv_cluster_approval"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_docinv_cluster_approval"(
	"n_reqno" numeric(18, 0) NOT NULL,
	"n_setup_no" numeric(18, 0) NOT NULL,
	"d_date" timestamp NULL,
	"c_note" varchar(250) NULL,
	"c_enteredbyempcode" varchar(20) NOT NULL,
	"c_enteredbyfscode" varchar(20) NOT NULL,
	"c_status" varchar(20) NULL,
	"n_type" integer NULL
) 
;
/****** Object:  Table "tbl_docinv_courierdetails"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_docinv_courierdetails"(
	"n_srno" integer NOT NULL,
	"c_courier" varchar(1000) NULL,
	"c_courierno" varchar(1000) NULL,
	"d_date" timestamp NULL,
	"c_courierdtls" varchar(1000) NULL
) 
;
/****** Object:  Table "TBL_DOCINV_DESK_map"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "TBL_DOCINV_DESK_map"(
	"n_srno" SERIAL NOT NULL,
	"n_setup_no" integer NULL,
	"c_desk_code" varchar(20) NULL,
	"c_empcode" varchar(20) NULL,
PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_docinv_Det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_docinv_Det"(
	"Id" SERIAL NOT NULL,
	"c_docinv_Code" varchar(50) NULL,
	"JsonData" text NULL,
	"d_create_date" timestamp NULL,
	"d_update_date" timestamp NULL,
 CONSTRAINT "PK_tbl_docinv_Det" PRIMARY KEY  
(
	"Id" 
) 
) 
;
/****** Object:  Table "tbl_docinv_dr_acceptreject_cheque"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_docinv_dr_acceptreject_cheque"(
	"n_srno" integer NOT NULL,
	"c_chequeacceptance" varchar(20) NULL,
	"c_remark" varchar(5000) NULL,
	"d_date" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_modifiedby" varchar(20) NULL
) 
;
/****** Object:  Table "TBL_DOCINV_empgrpmst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "TBL_DOCINV_empgrpmst"(
	"c_empcode" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_DocInv_Exp_Req_approval"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DocInv_Exp_Req_approval"(
	"n_reqno" numeric(20, 4) NULL,
	"n_setup_no" numeric(20, 4) NULL,
	"d_date" timestamp NULL,
	"c_status" varchar(5) NULL,
	"c_note" varchar(250) NULL,
	"c_enteredbyempcode" varchar(20) NULL,
	"c_enteredbyfscode" varchar(20) NULL
) 
;
/****** Object:  Table "TBL_DocInv_EXPENSE"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "TBL_DocInv_EXPENSE"(
	"N_RPS_REQID" numeric(18, 0) NULL,
	"N_AdvanceReceived" numeric(20, 4) NULL,
	"N_ActualExpense" numeric(20, 4) NULL,
	"n_status" integer NULL,
	"c_servicereqfrmho" integer NULL,
	"d_date" timestamp NULL,
	"N_Balance" numeric(20, 4) NULL,
	"n_btc" integer NULL,
	"n_EstimatedAmount" numeric(18, 2) NULL,
	"n_paid_recover_amt" numeric(20, 2) NULL,
	"d_date_exp" timestamp NULL,
	"c_remark" text NULL,
	"n_flg" integer NULL,
	"n_advflg" integer NULL,
	"n_cancelled" integer NULL,
	"n_exp_cancel_req" integer NULL,
	"c_exp_cancel_Remarks" varchar(1500) NULL,
	"n_ActualBillAmount1" numeric(18, 2) NULL,
	"n_ActualBillAmount2" numeric(18, 2) NULL,
	"n_MiscExpense" numeric(18, 2) NULL
) 
;
/****** Object:  Table "TBL_DocInv_EXPENSE_Hist"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "TBL_DocInv_EXPENSE_Hist"(
	"N_RPS_REQID" numeric(18, 0) NULL,
	"N_AdvanceReceived" numeric(20, 4) NULL,
	"N_ActualExpense" numeric(20, 4) NULL,
	"n_status" integer NULL,
	"c_servicereqfrmho" varchar(500) NULL,
	"d_date" timestamp NULL,
	"N_Balance" numeric(20, 4) NULL,
	"n_btc" integer NULL,
	"n_EstimatedAmount" numeric(18, 2) NULL,
	"n_paid_recover_amt" numeric(20, 2) NULL,
	"d_date_exp" timestamp NULL,
	"c_remark" text NULL,
	"n_flg" integer NULL,
	"n_advflg" integer NULL,
	"n_cycle" integer NULL
) 
;
/****** Object:  Table "TBL_DocInv_EXPENSE_LOG"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "TBL_DocInv_EXPENSE_LOG"(
	"N_RPS_REQID" numeric(18, 0) NOT NULL,
	"N_REQAMOUNT" numeric(20, 4) NOT NULL,
	"C_REQREMARKS" varchar(500) NULL,
	"D_REQDATE" timestamp NULL,
	"N_APPAMOUNT" numeric(20, 4) NULL,
	"C_APPREMARKS" varchar(500) NULL,
	"C_APPROVEDBY" varchar(50) NULL,
	"D_APPDATE" timestamp NULL,
	"N_CONFAMOUNT" numeric(20, 4) NULL,
	"C_CONFREMARKS" varchar(500) NULL,
	"C_CONFIRMEDBY" varchar(50) NULL,
	"D_CONFDATE" timestamp NULL,
	"N_DESKAMOUNT" numeric(20, 4) NULL,
	"C_DESKREMARKS" varchar(500) NULL,
	"C_DESKCONFIRMEDBY" varchar(50) NULL,
	"D_DESKCONFDATE" timestamp NULL
) 
;
/****** Object:  Table "tbl_DocInv_Followup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DocInv_Followup"(
	"n_srno" integer NOT NULL,
	"d_date" timestamp NULL,
	"c_note" text NULL,
	"c_workedwith" varchar(10) NULL,
	"c_fscode" varchar(10) NULL
) 
;
/****** Object:  Table "tbl_DocInv_Followup_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DocInv_Followup_log"(
	"n_srno" integer NULL,
	"d_date" timestamp NULL,
	"c_note" text NULL,
	"c_workedwith" varchar(10) NULL,
	"c_fscode" varchar(10) NULL
) 
;
/****** Object:  Table "TBL_DOCINV_Hierarchy_map"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "TBL_DOCINV_Hierarchy_map"(
	"n_srno" SERIAL NOT NULL,
	"n_setup_no" integer NULL,
	"n_fstype" integer NULL,
	"c_fscode" varchar(20) NULL,
PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "TBL_DOCINV_inv_frwdhistory"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "TBL_DOCINV_inv_frwdhistory"(
	"n_inv_no" numeric(18, 0) NULL,
	"c_emp_from" varchar(20) NULL,
	"c_emp_to" varchar(20) NULL,
	"d_date" timestamp NULL,
	"c_note" varchar(1000) NULL
) 
;
/****** Object:  Table "TBL_DOCINV_inv_frwdhistory_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "TBL_DOCINV_inv_frwdhistory_log"(
	"n_inv_no" numeric(18, 0) NULL,
	"c_emp_from" varchar(20) NULL,
	"c_emp_to" varchar(20) NULL,
	"d_date" timestamp NULL,
	"c_note" varchar(1000) NULL
) 
;
/****** Object:  Table "TBL_DOCINV_inv_notes"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "TBL_DOCINV_inv_notes"(
	"n_req_no" numeric(18, 0) NULL,
	"n_inv_req" numeric(18, 0) NULL,
	"c_note" varchar(1000) NULL,
	"c_empcode" varchar(20) NULL,
	"c_holdnote" varchar(250) NULL
) 
;
/****** Object:  Table "TBL_DOCINV_inv_notes_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "TBL_DOCINV_inv_notes_log"(
	"n_req_no" numeric(18, 0) NULL,
	"n_inv_req" numeric(18, 0) NULL,
	"c_note" varchar(1000) NULL,
	"c_empcode" varchar(20) NULL,
	"c_holdnote" varchar(1000) NULL
) 
;
/****** Object:  Table "tbl_DocInv_InvHtml"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DocInv_InvHtml"(
	"n_srno" integer NULL,
	"MandatoryHtml" "xml" NULL,
	"x_InvDetHtml" "xml" NULL,
	"MandatoryHtml_Modified" "xml" NULL,
	"x_itementryhtml" "xml" NULL
) 
;
/****** Object:  Table "tbl_DocInv_InvHtml_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DocInv_InvHtml_log"(
	"n_srno" integer NULL,
	"MandatoryHtml" "xml" NULL,
	"x_InvDetHtml" "xml" NULL,
	"MandatoryHtml_Modified" "xml" NULL,
	"x_itementryhtml" "xml" NULL
) 
;
/****** Object:  Table "tbl_DocInv_InvHtml_SAvecopy"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DocInv_InvHtml_SAvecopy"(
	"n_srno" integer NULL,
	"x_itementryhtml" "xml" NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_docinv_mandatory"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_docinv_mandatory"(
	"n_primary_id" SERIAL NOT NULL,
	"c_code" varchar(20) NULL,
	"n_row_id" integer NULL,
	"n_mandatory" integer NULL,
PRIMARY KEY  
(
	"n_primary_id" 
) 
) 
;
/****** Object:  Table "tbl_docinv_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_docinv_mst"(
	"c_code" varchar(10) NULL,
	"c_name" varchar(50) NULL,
	"c_mandatory" "xml" NULL,
	"n_deleted" integer NULL,
	"d_date" timestamp NULL,
	"n_status" integer NULL,
	"c_budgetcode" varchar(20) NULL,
	"c_mandatory_fields" varchar(3000) NULL,
	"N_RPS_Static" integer NULL
) 
;
/****** Object:  Table "tbl_DocInv_Req_approval"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DocInv_Req_approval"(
	"n_reqno" numeric(18, 0) NOT NULL,
	"n_setup_no" numeric(18, 0) NOT NULL,
	"d_date" timestamp NULL,
	"c_status" varchar(5) NULL,
	"c_note" varchar(250) NULL,
	"c_enteredbyempcode" varchar(20) NOT NULL,
	"c_enteredbyfscode" varchar(20) NOT NULL
) 
;
/****** Object:  Table "tbl_DocInv_Req_approval_expense"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DocInv_Req_approval_expense"(
	"n_reqno" numeric(18, 0) NOT NULL,
	"n_setup_no" numeric(18, 0) NOT NULL,
	"d_date" timestamp NULL,
	"c_status" varchar(5) NULL,
	"c_note" varchar(250) NULL,
	"c_enteredbyempcode" varchar(20) NOT NULL,
	"c_enteredbyfscode" varchar(20) NOT NULL,
	"c_remarks" text NULL
) 
;
/****** Object:  Table "tbl_DocInv_Req_approval_expense_Hist"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DocInv_Req_approval_expense_Hist"(
	"n_reqno" numeric(18, 0) NOT NULL,
	"n_setup_no" numeric(18, 0) NOT NULL,
	"d_date" timestamp NULL,
	"c_status" varchar(5) NULL,
	"c_note" varchar(250) NULL,
	"c_enteredbyempcode" varchar(20) NOT NULL,
	"c_enteredbyfscode" varchar(20) NOT NULL,
	"c_remarks" text NULL,
	"n_cycle" integer NULL
) 
;
/****** Object:  Table "tbl_DocInv_Req_approval_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DocInv_Req_approval_log"(
	"n_reqno" numeric(18, 0) NOT NULL,
	"n_setup_no" numeric(18, 0) NOT NULL,
	"d_date" timestamp NULL,
	"c_status" varchar(5) NULL,
	"c_note" varchar(250) NULL,
	"c_enteredbyempcode" varchar(20) NOT NULL,
	"c_enteredbyfscode" varchar(20) NOT NULL
) 
;
/****** Object:  Table "tbl_DocInv_req_docs"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DocInv_req_docs"(
	"n_srno" SERIAL NOT NULL,
	"N_reqno" integer NULL,
	"n_inv_req" numeric(18, 0) NULL,
	"c_filename" varchar(50) NULL,
	"n_deleted" integer NULL,
	"c_modified" varchar(20) NULL,
	"d_modified" timestamp NULL,
	"c_doctype" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_DocInv_req_docs_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DocInv_req_docs_log"(
	"n_srno" integer NULL,
	"N_reqno" integer NULL,
	"n_inv_req" numeric(18, 0) NULL,
	"c_filename" varchar(50) NULL,
	"n_deleted" integer NULL,
	"c_modified" varchar(20) NULL,
	"d_modified" timestamp NULL,
	"c_doctype" varchar(20) NULL
) 
;
/****** Object:  Table "Tbl_DocInv_Req_Item_Curr"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_DocInv_Req_Item_Curr"(
	"n_srno" integer NULL,
	"n_setup_req" integer NULL,
	"c_item_code" varchar(10) NULL,
	"n_item_rate" integer NULL,
	"n_item_actrate" integer NULL,
	"n_cur_rx" integer NULL,
	"n_cur_qty" integer NULL,
	"n_cur_val" numeric(9, 2) NULL
) 
;
/****** Object:  Table "Tbl_DocInv_Req_Item_Exp"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_DocInv_Req_Item_Exp"(
	"n_srno" integer NULL,
	"n_exp_rx" integer NULL,
	"n_exp_qty" integer NULL,
	"n_exp_val" numeric(9, 2) NULL
) 
;
/****** Object:  Table "tbl_DocInv_Req_ItemEntry_Det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DocInv_Req_ItemEntry_Det"(
	"n_Srno" integer NULL,
	"c_itemcode" varchar(10) NULL,
	"n_RX" integer NULL,
	"n_Qty" integer NULL,
	"n_Value" integer NULL,
	"n_Month" integer NULL
) 
;
/****** Object:  Table "tbl_DocInv_Req_ItemEntry_Det_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DocInv_Req_ItemEntry_Det_log"(
	"n_Srno" integer NULL,
	"c_itemcode" varchar(10) NULL,
	"n_RX" integer NULL,
	"n_Qty" integer NULL,
	"n_Value" integer NULL,
	"n_Month" integer NULL
) 
;
/****** Object:  Table "tbl_DocInv_Req_ItemEntry_Hdr"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DocInv_Req_ItemEntry_Hdr"(
	"n_Srno" integer NULL,
	"c_itemcode" varchar(10) NULL,
	"n_ItemType" integer NULL,
	"n_Rate" numeric(9, 2) NULL,
	"n_actRate" numeric(9, 2) NULL,
	"n_Value" numeric(9, 2) NULL
) 
;
/****** Object:  Table "tbl_DocInv_Req_ItemEntry_Hdr_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DocInv_Req_ItemEntry_Hdr_log"(
	"n_Srno" integer NULL,
	"c_itemcode" varchar(10) NULL,
	"n_ItemType" integer NULL,
	"n_Rate" numeric(9, 2) NULL,
	"n_actRate" numeric(9, 2) NULL,
	"n_Value" numeric(9, 2) NULL
) 
;
/****** Object:  Table "tbl_DocInv_Req_ItemEntry_Sub_Det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DocInv_Req_ItemEntry_Sub_Det"(
	"n_Srno" integer NULL,
	"n_totalsalesDr" numeric(19, 2) NULL,
	"n_ExpTotal" numeric(19, 2) NULL,
	"n_PatientsNo" numeric(19, 2) NULL,
	"n_avgBusiness" numeric(19, 2) NULL,
	"c_Alliances" text NULL
) 
;
/****** Object:  Table "tbl_DocInv_Req_ItemEntry_Sub_Det_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DocInv_Req_ItemEntry_Sub_Det_log"(
	"n_Srno" integer NULL,
	"n_totalsalesDr" numeric(19, 2) NULL,
	"n_ExpTotal" numeric(19, 2) NULL,
	"n_PatientsNo" numeric(19, 2) NULL,
	"n_avgBusiness" numeric(19, 2) NULL,
	"c_Alliances" text NULL
) 
;
/****** Object:  Table "tbl_DocInv_Req_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DocInv_Req_Mst"(
	"n_srno" SERIAL NOT NULL,
	"n_setupno" integer NULL,
	"c_fscode" varchar(10) NULL,
	"c_empcode" varchar(10) NULL,
	"c_doctorcode" varchar(20) NULL,
	"c_dr_category" varchar(10) NULL,
	"c_dr_class" varchar(10) NULL,
	"c_dr_grade" varchar(10) NULL,
	"c_mobile_no" varchar(20) NULL,
	"c_dr_email_id" varchar(50) NULL,
	"c_mclno" varchar(20) NULL,
	"d_businessExpectedFrom" timestamp NULL,
	"n_no_Of_Investments" integer NULL,
	"d_businessExpectedTo" timestamp NULL,
	"n_RPS_AMount" numeric(20, 2) NULL,
	"c_commitment" text NULL,
	"c_requirement" text NULL,
	"c_Remarks" text NULL,
	"d_date" timestamp NULL,
	"c_status" varchar(10) NULL,
	"d_closingdate" timestamp NULL,
	"n_deleted" integer NULL,
	"c_modifier" varchar(20) NULL,
	"d_modified" timestamp NULL,
	"c_ApprovedBy" varchar(20) NULL,
	"c_deskstatus" varchar(20) NULL,
	"c_deskempcode" varchar(20) NULL,
	"c_childfs_code" varchar(20) NULL,
	"n_ExpenseEntryStatus" integer NULL,
	"n_advanceRequested" integer NULL,
	"n_btc" integer NULL,
	"n_EstimatedAmount" numeric(18, 2) NULL,
	"d_acc_date" timestamp NULL,
	"n_confirm_bu_skip" integer NULL,
	"c_stage_status" varchar(200) NULL,
	"n_allocationId" numeric(18, 0) NULL,
	"n_rpsno" varchar(10) NULL
) 
;
/****** Object:  Table "tbl_DocInv_Req_Mst_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DocInv_Req_Mst_log"(
	"n_srno" integer NULL,
	"n_setupno" integer NULL,
	"c_fscode" varchar(10) NULL,
	"c_empcode" varchar(10) NULL,
	"c_doctorcode" varchar(20) NULL,
	"c_dr_category" varchar(10) NULL,
	"c_dr_class" varchar(10) NULL,
	"c_dr_grade" varchar(10) NULL,
	"c_mobile_no" varchar(20) NULL,
	"c_dr_email_id" varchar(50) NULL,
	"c_mclno" varchar(10) NULL,
	"d_businessExpectedFrom" timestamp NULL,
	"n_no_Of_Investments" integer NULL,
	"d_businessExpectedTo" timestamp NULL,
	"n_RPS_AMount" numeric(20, 2) NULL,
	"c_commitment" text NULL,
	"c_requirement" text NULL,
	"c_Remarks" text NULL,
	"d_date" timestamp NULL,
	"c_status" varchar(10) NULL,
	"d_closingdate" timestamp NULL,
	"n_deleted" integer NULL,
	"c_modifier" varchar(20) NULL,
	"d_modified" timestamp NULL,
	"c_ApprovedBy" varchar(20) NULL,
	"c_deskstatus" varchar(20) NULL,
	"c_deskempcode" varchar(20) NULL,
	"c_childfs_code" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_DocInv_Req_Mst_rps_reject_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DocInv_Req_Mst_rps_reject_log"(
	"n_srno" integer NOT NULL,
	"n_setupno" integer NULL,
	"c_fscode" varchar(10) NULL,
	"c_empcode" varchar(10) NULL,
	"c_doctorcode" varchar(20) NULL,
	"c_dr_category" varchar(10) NULL,
	"c_dr_class" varchar(10) NULL,
	"c_dr_grade" varchar(10) NULL,
	"c_mobile_no" varchar(20) NULL,
	"c_dr_email_id" varchar(50) NULL,
	"c_mclno" varchar(20) NULL,
	"d_businessExpectedFrom" timestamp NULL,
	"n_no_Of_Investments" integer NULL,
	"d_businessExpectedTo" timestamp NULL,
	"n_RPS_AMount" numeric(20, 2) NULL,
	"c_commitment" text NULL,
	"c_requirement" text NULL,
	"c_Remarks" text NULL,
	"d_date" timestamp NULL,
	"c_status" varchar(10) NULL,
	"d_closingdate" timestamp NULL,
	"n_deleted" integer NULL,
	"c_modifier" varchar(20) NULL,
	"d_modified" timestamp NULL,
	"c_ApprovedBy" varchar(20) NULL,
	"c_deskstatus" varchar(20) NULL,
	"c_deskempcode" varchar(20) NULL,
	"c_childfs_code" varchar(20) NULL,
	"n_ExpenseEntryStatus" integer NULL,
	"n_advanceRequested" integer NULL,
	"n_btc" integer NULL,
	"n_EstimatedAmount" numeric(18, 2) NULL,
	"d_acc_date" timestamp NULL,
	"n_confirm_bu_skip" integer NOT NULL,
	"c_stage_status" varchar(200) NULL
) 
;
/****** Object:  Table "TBL_DOCINV_SETUP"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "TBL_DOCINV_SETUP"(
	"n_srno" numeric(18, 0) NOT NULL,
	"c_name" varchar(50) NULL,
	"n_inv_mode_min" numeric(18, 0) NULL,
	"n_inv_mode_max" numeric(18, 0) NULL,
	"d_date_from" timestamp NULL,
	"d_date_to" timestamp NULL,
	"n_months" integer NULL,
	"n_roi_on" integer NULL,
	"n_roi_value" integer NULL,
	"n_roi_det" integer NULL,
	"n_roi_reconci" integer NULL,
	"c_budget_view" varchar(20) NULL,
	"c_budget_validate" varchar(20) NULL,
	"n_mcl_mand" integer NULL,
	"n_drph" integer NULL,
	"n_update_drmst" integer NULL,
	"n_email_id" integer NULL,
	"n_commit_dr" integer NULL,
	"n_req_dr" integer NULL,
	"n_rmks" integer NULL,
	"n_curr_sale" integer NULL,
	"n_disp_sale" integer NULL,
	"n_visit_det" integer NULL,
	"n_docprof_months" integer NULL,
	"n_Fs_invhistory" integer NULL,
	"n_dr_invhistory" integer NULL,
	"n_inv_productrate" integer NULL,
	"n_product_rate" integer NULL,
	"n_single_approval" integer NULL,
	"n_upload" integer NULL,
	"c_status" varchar(20) NULL,
	"c_ratetype" varchar(10) NULL,
	"n_actualrate" numeric(18, 2) NULL,
	"n_print" integer NULL,
	"n_deleted" integer NULL,
	"c_modifier" varchar(20) NULL,
	"d_modified" timestamp NULL,
	"c_print_opt" varchar(20) NULL,
	"c_req_editable" varchar(50) NULL,
	"c_rcpa_view" varchar(50) NULL,
	"n_AmntValidate" integer NOT NULL,
	"n_rps_flow" integer NULL,
	"n_gift_nongift" integer NOT NULL,
	"n_auto_approval" integer NULL,
	"n_auto_confirm" integer NULL,
	"n_mcl_edit" integer NULL,
	"n_drph_mand" integer NULL,
	"n_email_id_mand" integer NULL,
	"n_mobno_update_drmst" integer NULL,
	"n_vendor" integer NULL,
	"n_item_type" integer NULL,
	"n_type" integer NULL
) 
;
/****** Object:  Table "tbl_docinv_setup_reqeditlevels"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_docinv_setup_reqeditlevels"(
	"n_setupno" numeric(18, 0) NULL,
	"c_stage" varchar(20) NULL,
	"n_amtflg" integer NULL
) 
;
/****** Object:  Table "TBL_DOCINV_STAG_Map"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "TBL_DOCINV_STAG_Map"(
	"n_srno" SERIAL NOT NULL,
	"n_setup_no" integer NULL,
	"n_fstype" integer NULL,
	"c_type" varchar(20) NULL,
	"n_amount" numeric(18, 2) NULL,
PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "TBL_DOCINV_TYPE_Map"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "TBL_DOCINV_TYPE_Map"(
	"n_setup_no" integer NULL,
	"c_code" varchar(20) NULL,
	"c_modifier" varchar(20) NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "Tbl_Doclist_Excel_Progressflag"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Doclist_Excel_Progressflag"(
	"n_no" SERIAL NOT NULL,
	"c_fscode" char(10) NULL,
	"n_flag" integer NULL,
	"URL" text NULL,
	"page" varchar(500) NULL,
	"Division" varchar(500) NULL,
	"Region" varchar(500) NULL,
	"Area" varchar(500) NULL,
	"FS" varchar(500) NULL,
	"d_created_time" timestamp NULL,
	"d_req_pro_start_time" timestamp NULL,
	"d_req_pro_completed_time" timestamp NULL,
	"d_req_accessed_time" timestamp NULL
) 
;
/****** Object:  Table "tbl_doctor_registration_image"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_doctor_registration_image"(
	"n_srno" integer NOT NULL,
	"c_userid" varchar(20) NULL,
	"c_doc_code" varchar(20) NULL,
	"c_reg_no" varchar(50) NULL,
	"c_image_name" varchar(200) NULL,
	"d_date" timestamp NULL,
	"c_approve_reject_userid" varchar(20) NULL,
	"d_approve_reject_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_doctor_registration_image_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_doctor_registration_image_log"(
	"n_srno" integer NOT NULL,
	"c_userid" varchar(20) NULL,
	"c_doc_code" varchar(20) NULL,
	"c_reg_no" varchar(50) NULL,
	"c_image_name" varchar(200) NULL,
	"d_date" timestamp NULL,
	"c_approve_reject_userid" varchar(20) NULL,
	"d_approve_reject_date" timestamp NULL,
	"n_approve_reject" integer NULL
) 
;
/****** Object:  Table "tbl_doctor_registration_image_temp"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_doctor_registration_image_temp"(
	"n_srno" SERIAL NOT NULL,
	"c_userid" varchar(20) NULL,
	"c_doc_code" varchar(20) NULL,
	"c_reg_no" varchar(50) NULL,
	"c_image_name" varchar(200) NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_doctor_role_setupdata"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_doctor_role_setupdata"(
	"c_fscode" varchar(50) NULL
) 
;
/****** Object:  Table "Tbl_Doctor_Target"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Doctor_Target"(
	"c_doc_code" varchar(10) NOT NULL,
	"d_date" timestamp NOT NULL,
	"n_target" numeric(18, 2) NULL,
 CONSTRAINT "PK_Tbl_Doctor_Target" PRIMARY KEY  
(
	"c_doc_code" ,
	"d_date" 
) 
) 
;
/****** Object:  Table "tbl_DoctorEvent_Mappings"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DoctorEvent_Mappings"(
	"c_div_code" varchar(50) NULL,
	"c_region_Code" varchar(50) NULL,
	"d_date_From" timestamp NULL,
	"d_date_To" timestamp NULL,
	"c_Doc_Code" varchar(50) NULL,
	"c_Imagename" varchar(200) NULL,
	"n_type" integer NULL
) 
;
/****** Object:  Table "tbl_DoctorPOB_FMCG_HDR"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DoctorPOB_FMCG_HDR"(
	"n_OrderNo" numeric(18, 0) NOT NULL,
	"c_DSC_Code" varchar(10) NULL,
	"d_Date" timestamp NULL,
	"n_Type" integer NOT NULL,
	"c_Note" varchar(300) NULL,
	"c_EnteredBy" varchar(10) NULL,
	"n_ref_dcr_srno" numeric(18, 0) NULL,
	"n_total" numeric(18, 2) NULL,
	"c_cust_code" varchar(10) NULL,
	"n_process_status" integer NULL,
	"c_inv_no" varchar(50) NULL,
	"d_invdate" timestamp NULL,
	"n_inv_amt" numeric(18, 0) NULL,
	"c_inv_note" varchar(250) NULL,
	"d_order_date" timestamp NULL,
	"n_transactiontype" integer NULL,
	"d_OrderCancelDate" timestamp NULL,
	"C_CancelFlg" varchar(10) NULL,
	"d_lastModifiedDate" timestamp NULL,
	"d_salesentrydate" timestamp NULL,
	"c_reasoncode" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_DoctorPOB_FMCG_HDR_History"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DoctorPOB_FMCG_HDR_History"(
	"n_SrNo" SERIAL NOT NULL,
	"c_DSC_Code" varchar(10) NULL,
	"d_Date" timestamp NULL,
	"n_Type" integer NOT NULL,
	"c_Note" varchar(300) NULL,
	"c_EnteredBy" varchar(10) NULL
) 
;
/****** Object:  Table "tbl_DoctorPOB_Locksettings"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DoctorPOB_Locksettings"(
	"n_Day" integer NULL
) 
;
/****** Object:  Table "tbl_DoctorPOB_log_FMCG_HDR"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DoctorPOB_log_FMCG_HDR"(
	"n_OrderNo" numeric(18, 0) NOT NULL,
	"c_DSC_Code" varchar(10) NULL,
	"d_Date" timestamp NULL,
	"n_Type" integer NOT NULL,
	"c_Note" varchar(300) NULL,
	"c_EnteredBy" varchar(10) NULL,
	"n_ref_dcr_srno" numeric(18, 0) NULL,
	"n_total" numeric(18, 2) NULL,
	"c_cust_code" varchar(10) NULL,
	"n_process_status" integer NULL,
	"c_inv_no" varchar(50) NULL,
	"d_invdate" timestamp NULL,
	"n_inv_amt" numeric(18, 0) NULL,
	"c_inv_note" varchar(250) NULL,
	"d_order_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_Doctors_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Doctors_mst"(
	"employeecode" varchar(255) NULL,
	"Employeename" varchar(255) NULL,
	"Division Name" varchar(255) NULL,
	"DocCode" varchar(255) NULL,
	"Doctor Firstname" varchar(255) NULL,
	"Lastname" varchar(255) NULL,
	"Grade Name" varchar(255) NULL,
	"qualification" varchar(255) NULL,
	"add1" varchar(255) NULL,
	"add2" varchar(255) NULL,
	"add3" varchar(255) NULL,
	"add4" varchar(255) NULL,
	"pin" varchar(255) NULL,
	"phone" varchar(255) NULL,
	"referenceno" varchar(255) NULL,
	"category Name" varchar(255) NULL,
	"subarea Name" varchar(255) NULL,
	"Type Of area" varchar(255) NULL,
	"Brand/Product" varchar(255) NULL,
	"Priority" varchar(255) NULL,
	"dob" timestamp NULL,
	"dow" timestamp NULL,
	"email" varchar(255) NULL,
	"LAT" varchar(255) NULL,
	"LONG" varchar(255) NULL,
	"Class" varchar(255) NULL,
	"Spousename" varchar(255) NULL,
	"SpouseDOB" varchar(255) NULL,
	"Mcino" varchar(255) NULL,
	"distance" varchar(255) NULL,
	"TA" varchar(255) NULL,
	"ChemCode" varchar(255) NULL,
	"Name" varchar(255) NULL,
	"add11" varchar(255) NULL,
	"add21" varchar(255) NULL,
	"city" varchar(255) NULL,
	"state" varchar(255) NULL,
	"pin1" varchar(255) NULL,
	"phone1" varchar(255) NULL,
	"referenceno1" varchar(255) NULL,
	"email1" varchar(255) NULL,
	"subareacode" varchar(255) NULL,
	"Type of Area1" varchar(255) NULL,
	"lat1" varchar(255) NULL,
	"long1" varchar(255) NULL,
	"tin" varchar(255) NULL,
	"lic" varchar(255) NULL,
	"contactname" varchar(255) NULL,
	"sftshop" varchar(255) NULL,
	"displayshelf" varchar(255) NULL,
	"descdisplayshelf" varchar(255) NULL,
	"fboardheight" varchar(255) NULL,
	"fboardlength" varchar(255) NULL,
	"backlit" varchar(255) NULL,
	"computerised" varchar(255) NULL,
	"licfood" varchar(255) NULL,
	"sort" varchar(255) NULL,
	"contactmob" varchar(255) NULL,
	"contoutletnumber" varchar(255) NULL,
	"landmark" varchar(255) NULL,
	"grade" varchar(255) NULL,
	"dob1" varchar(255) NULL,
	"dow1" varchar(255) NULL,
	"outlettype" varchar(255) NULL,
	"shortname" varchar(255) NULL,
	"c_sfa_doc_code" varchar(255) NULL,
	"c_sfa_div_code" varchar(255) NULL,
	"c_sfa_doc_grade" varchar(255) NULL,
	"c_sfa_doc_qualification" varchar(255) NULL,
	"c_sfa_doc_category" varchar(255) NULL,
	"c_sfa_doc_subarea" varchar(255) NULL,
	"c_sfa_doc_product" varchar(255) NULL,
	"c_sfa_doc_class" varchar(255) NULL,
	"c_sfa_chem_code" varchar(255) NULL,
	"c_sfa_chem_city" varchar(255) NULL,
	"c_sfa_chem_state" varchar(255) NULL,
	"c_sfa_chem_subarea" varchar(255) NULL,
	"c_sfa_chem_grade" varchar(255) NULL,
	"c_sfa_visit_type" varchar(50) NULL,
	"c_sfa_StoreType" varchar(100) NULL,
	"excelname" varchar(500) NULL,
	"c_sfa_outlet_type" varchar(50) NULL,
	"doccity" varchar(255) NULL,
	"docstate" varchar(255) NULL,
	"speciality" varchar(100) NULL,
	"noofpatients" varchar(100) NULL,
	"currentbusiness" varchar(150) NULL,
	"businespotential" varchar(150) NULL,
	"doctorpotential" varchar(150) NULL,
	"isdoctorpurchase" varchar(150) NULL,
	"isdoctorprescribe" varchar(150) NULL,
	"child1name" varchar(150) NULL,
	"child2name" varchar(150) NULL,
	"child3name" varchar(150) NULL,
	"child1dob" timestamp NULL,
	"child2dob" timestamp NULL,
	"child3dob" timestamp NULL,
	"pannumber" varchar(255) NULL,
	"hosname" varchar(255) NULL,
	"hosstreet" varchar(255) NULL,
	"hosarea" varchar(255) NULL,
	"hosland" varchar(255) NULL,
	"hoscity" varchar(255) NULL,
	"hosstate" varchar(255) NULL,
	"hospin" varchar(255) NULL,
	"c_sfa_speciality" varchar(100) NULL,
	"c_sfa_noofpatients" varchar(100) NULL,
	"c_sfa_hosname" varchar(100) NULL,
	"fridge" varchar(50) NULL,
	"windowsize" varchar(50) NULL,
	"storemanager" varchar(100) NULL,
	"storeclassification" varchar(100) NULL,
	"storetype" varchar(150) NULL,
	"distributor" varchar(150) NULL,
	"agreementdate" timestamp NULL,
	"totaldiscountperc" varchar(150) NULL,
	"fromdate" timestamp NULL,
	"todate" timestamp NULL,
	"account" varchar(150) NULL,
	"hostelfacility" varchar(150) NULL,
	"noofcanteens" varchar(150) NULL,
	"canteencontractorname" varchar(150) NULL,
	"canteencontractoraddress" varchar(200) NULL,
	"c_sfa_storeclassification" varchar(100) NULL,
	"c_sfa_Distributor" varchar(100) NULL,
	"c_sfa_Account" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_Document_Designation"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Document_Designation"(
	"C_Doc_Code" varchar(50) NULL,
	"C_Des_Code" varchar(50) NULL
) 
;
/****** Object:  Table "Tbl_Document_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Document_Mst"(
	"C_code" varchar(10) NULL,
	"C_name" varchar(100) NULL,
	"C_sh_name" varchar(10) NULL,
	"N_Status" integer NULL,
	"C_template_format_path" varchar(100) NULL,
	"C_mandatory" varchar(10) NULL,
	"N_Deleted" numeric(18, 0) NULL,
	"D_Created" timestamp NULL,
	"D_Modified" timestamp NULL,
	"C_Modifier" varchar(50) NULL,
	"c_freshermandatory" varchar(5) NULL
) 
;
/****** Object:  Table "Tbl_Download"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Download"(
	"ID" numeric(18, 0) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"C_PdfFile" varchar(50) NULL,
	"C_Description" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_download_info"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_download_info"(
	"n_srno" SERIAL NOT NULL,
	"c_filename" varchar(50) NULL,
	"c_filepath" varchar(500) NOT NULL,
	"d_date" timestamp NULL,
	"C_fscode" varchar(10) NOT NULL,
	"c_sender" varchar(50) NOT NULL,
	"c_comments" varchar(500) NULL,
 CONSTRAINT "PK_tbl_download_info" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "Tbl_Dr_Category_Filter"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Dr_Category_Filter"(
	"c_divcode" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_Dr_confirmationSetup_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Dr_confirmationSetup_mst"(
	"C_Code" varchar(20) NOT NULL,
	"C_Name" varchar(500) NOT NULL,
	"N_Type" integer NULL,
	"n_deleted" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"n_status" integer NULL,
 CONSTRAINT "PK_tbl_Dr_confirmationSetup_mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "tbl_dr_confirmsetup_details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dr_confirmsetup_details"(
	"c_code" varchar(20) NULL,
	"c_applicabletype" varchar(5) NULL,
	"c_applicableCode" varchar(20) NULL,
	"d_createddate" timestamp NULL
) 
;
/****** Object:  Table "tbl_DrCategory_Division_Mapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DrCategory_Division_Mapping"(
	"C_CatCode" varchar(100) NULL,
	"C_Division" varchar(200) NULL
) 
;
/****** Object:  Table "tbl_drclosedfss"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_drclosedfss"(
	"n_year" integer NULL,
	"n_month" integer NULL,
	"c_fs_code " varchar(10) NULL
) 
;
/****** Object:  Table "tbl_DrDuplication_Group"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DrDuplication_Group"(
	"c_GroupDr" varchar(20) NULL,
	"c_drcode" varchar(20) NULL,
	"n_status" integer NULL,
	"d_date" timestamp NULL,
	"n_sort" integer NULL
) 
;
/****** Object:  Table "tbl_DrDuplication_Group_Unique"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DrDuplication_Group_Unique"(
	"c_GroupDr" varchar(20) NULL,
	"c_drcode" varchar(20) NULL,
	"n_status" integer NULL,
	"d_date" timestamp NULL,
	"n_sort" integer NULL
) 
;
/****** Object:  Table "tbl_DrGrade_Division_Mapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DrGrade_Division_Mapping"(
	"C_GradeCode" varchar(100) NULL,
	"C_Division" varchar(200) NULL
) 
;
/****** Object:  Table "tbl_DrUpdateRequest_DivRegMapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DrUpdateRequest_DivRegMapping"(
	"n_SetupId" bigint NULL,
	"c_RegionCode" varchar(50) NULL,
	"c_divcode" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_DrUpdateRequestSetup_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DrUpdateRequestSetup_Mst"(
	"n_SetupId" SERIAL NOT NULL,
	"c_setupname" varchar(200) NULL,
	"d_datefrom" timestamp NULL,
	"d_dateto" timestamp NULL,
	"n_deleted" integer NULL,
	"d_created" timestamp NULL,
	"n_default" integer NULL,
	"n_mandatory" integer NULL,
	"n_defaultclosingdt" integer NULL
) 
;
/****** Object:  Table "tbl_DSC_def_type"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DSC_def_type"(
	"n_srno" varchar(10) NULL,
	"n_dsc_type" integer NULL,
	"c_description" varchar(20) NULL,
	"c_short_name" varchar(10) NULL,
	"c_img_path" varchar(100) NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "Tbl_DSCA_Type"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_DSCA_Type"(
	"N_Type" integer NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"c_display_name" varchar(50) NULL,
	"n_report_flag" varchar(50) NULL,
	"n_DCRdisplay" smallint NULL,
	"n_status" smallint NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_created" varchar(50) NULL,
	"c_modifier" varchar(50) NULL,
	"n_deleted" smallint NULL,
	"c_image_enable" varchar(500) NULL,
	"c_image_disable" varchar(500) NULL,
	"n_CreateUserrights" integer NULL,
	"n_Approvalrequired" integer NULL,
	"n_ActiveStatus" integer NULL,
	"n_AddIn_HeirarchySetup" integer NULL,
	"n_menuid_dyanamic_master" text NULL,
	"c_class_enable" integer NULL,
	"n_show_customer_in_mandatory_setup" integer NULL
) 
;
/****** Object:  Table "Tbl_DWR"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_DWR"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"D_Date_Report" timestamp NOT NULL,
	"D_Entry_Date" timestamp NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"C_HQ_Code" varchar(10) NOT NULL,
	"C_Worked_With" varchar(10) NULL,
	"C_Reason" varchar(1000) NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"C_Area_Stay" varchar(10) NOT NULL,
	"C_Note1" varchar(1000) NULL,
	"C_Note2" varchar(200) NULL,
	"C_Note3" varchar(200) NULL,
	"N_Distance" numeric(18, 0) NULL,
	"n_Fare" numeric(10, 0) NULL,
	"n_Allowance" integer NULL,
	"C_Allowance_Type" char(10) NULL,
	"c_WrkType" varchar(10) NULL,
	"N_Sort_Order" numeric(18, 0) NULL,
	"N_Flag" integer NULL,
	"C_Placeof_Work" varchar(10) NOT NULL,
	"C_Stayed_At" varchar(10) NOT NULL,
	"c_Emp_Code" varchar(10) NOT NULL,
	"c_temp_fs" varchar(10) NULL,
	"c_temp_emp" varchar(10) NULL,
	"D_Created" timestamp NULL,
	"D_Modified" timestamp NULL,
	"C_WorkContactRemarks" varchar(200) NULL,
	"n_workedwithself" integer NULL,
	"n_srnodisableretflg" integer NULL,
	"n_androidflg" integer NULL,
	"n_distance_entry" numeric(18, 2) NULL,
	"c_subarea_type" varchar(10) NULL,
	"n_status" integer NULL,
	"c_approver" varchar(50) NULL,
	"d_date_approved" timestamp NULL,
	"n_setupid" integer NULL,
 CONSTRAINT "PK_Tbl_DWR" PRIMARY KEY  
(
	"N_Srno" 
) 
) 
;
/****** Object:  Table "TBL_DWR_ANDROID_LOCATION"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "TBL_DWR_ANDROID_LOCATION"(
	"N_DcrNo" numeric(18, 0) NOT NULL,
	"N_Latitude" numeric(18, 12) NOT NULL,
	"N_Longitude" numeric(18, 12) NULL,
 CONSTRAINT "PK_TBL_DWR_ANDROID_LOCATION" PRIMARY KEY  
(
	"N_DcrNo" 
) 
) 
;
/****** Object:  Table "tbl_dwr_chemist_setup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_chemist_setup"(
	"n_map_type" integer NULL,
	"n_desig" integer NULL,
	"c_fs_code" varchar(10) NULL
) 
;
/****** Object:  Table "tbl_dwr_ctype_det_agegroup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_ctype_det_agegroup"(
	"n_srno" numeric(18, 0) NULL,
	"n_ctype_code" bigint NULL,
	"c_ctopic_code" varchar(10) NULL,
	"c_village_code" varchar(20) NULL,
	"n_0to15_m" varchar(5) NULL,
	"n_0to15_f" varchar(5) NULL,
	"n_15to50_m" varchar(5) NULL,
	"n_15to50_f" varchar(5) NULL,
	"n_50above_m" varchar(5) NULL,
	"n_50above_f" varchar(5) NULL,
	"d_created" timestamp NULL
) 
;
/****** Object:  Table "tbl_Dwr_CType_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Dwr_CType_Details"(
	"n_srno" numeric(18, 0) NULL,
	"n_CType_Code" bigint NULL,
	"c_CTopic_Code" varchar(10) NULL,
	"c_KOL_Details" varchar(100) NULL,
	"c_Qualification" varchar(100) NULL,
	"c_VillageName" varchar(1000) NULL,
	"n_NumPatients" integer NULL,
	"c_Footfalls" varchar(3) NULL,
	"n_Footfalls" integer NULL,
	"n_noofcards" integer NULL,
	"n_rowid" SERIAL NOT NULL,
	"d_created" timestamp NULL
) 
;
/****** Object:  Table "tbl_Dwr_CType_Details_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Dwr_CType_Details_log"(
	"n_srno" numeric(18, 0) NULL,
	"n_CType_Code" bigint NULL,
	"c_CTopic_Code" varchar(10) NULL,
	"c_KOL_Details" varchar(100) NULL,
	"c_Qualification" varchar(100) NULL,
	"c_VillageName" varchar(100) NULL,
	"n_NumPatients" integer NULL,
	"c_Footfalls" varchar(3) NULL,
	"n_Footfalls" integer NULL,
	"n_noofcards" integer NULL,
	"n_rowid" bigint NOT NULL
) 
;
/****** Object:  Table "Tbl_DWR_dcrdelete_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_DWR_dcrdelete_log"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"D_Date_Report" timestamp NOT NULL,
	"D_Entry_Date" timestamp NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"C_HQ_Code" varchar(10) NULL,
	"C_Worked_With" varchar(10) NULL,
	"C_Reason" varchar(200) NULL,
	"C_Area_Code" varchar(10) NULL,
	"C_Area_Stay" varchar(10) NULL,
	"C_Note1" varchar(200) NULL,
	"C_Note2" varchar(200) NULL,
	"C_Note3" varchar(200) NULL,
	"N_Distance" numeric(18, 0) NULL,
	"n_Fare" numeric(10, 0) NULL,
	"n_Allowance" integer NULL,
	"C_Allowance_Type" char(10) NULL,
	"c_WrkType" varchar(10) NULL,
	"N_Sort_Order" numeric(18, 0) NULL,
	"N_Flag" integer NULL,
	"C_Placeof_Work" varchar(10) NULL,
	"C_Stayed_At" varchar(10) NULL,
	"C_EMP_CODE" varchar(10) NULL,
	"c_temp_fs" varchar(10) NULL,
	"c_temp_emp" varchar(10) NULL,
	"D_Created" timestamp NULL,
	"D_Modified" timestamp NULL,
	"C_WorkContactRemarks" varchar(200) NULL
) 
;
/****** Object:  Table "tbl_dwr_delete_data"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_delete_data"(
	"n_srno" integer NULL,
	"c_fscode" varchar(20) NULL,
	"d_date_deport" timestamp NULL,
	"d_entry_date" timestamp NULL,
	"c_worked_with" varchar(20) NULL,
	"n_android_flag" integer NULL,
	"n_delete_flag" integer NOT NULL,
	"d_date_delete" timestamp NOT NULL
) 
;
/****** Object:  Table "tbl_dwr_delete_unlock_data"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_delete_unlock_data"(
	"n_srno" SERIAL NOT NULL,
	"d_date_report" timestamp NULL,
	"n_dwr_no" integer NULL,
	"n_dwr_type" integer NULL,
	"c_placeofwork" varchar(200) NULL,
	"c_reason" varchar(500) NULL,
	"c_fscode_submitted_by" varchar(20) NULL,
	"c_empcode_submitted_by" varchar(20) NULL,
	"d_submitted_date" timestamp NULL,
	"c_fscode_last_approved_rejected_by" varchar(20) NULL,
	"c_empcode_last_approved_rejected_by" varchar(20) NULL,
	"d_last_approved_rejected_date" timestamp NULL,
	"n_status" integer NULL,
	"n_delete_unlock" integer NULL,
	"n_setup" integer NULL,
	"c_next_approve_fscode" varchar(20) NULL,
	"c_next_approve_status" integer NULL,
	"c_remarks" varchar(500) NULL,
	"c_next_2_approve_fscode" varchar(20) NULL,
	"n_cycle_id" integer NULL
) 
;
/****** Object:  Table "tbl_dwr_delete_unlock_data1"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_delete_unlock_data1"(
	"n_srno" SERIAL NOT NULL,
	"d_date_report" timestamp NULL,
	"n_dwr_no" integer NULL,
	"n_dwr_type" integer NULL,
	"c_placeofwork" varchar(20) NULL,
	"c_reason" varchar(500) NULL,
	"c_fscode_submitted_by" varchar(20) NULL,
	"c_empcode_submitted_by" varchar(20) NULL,
	"d_submitted_date" timestamp NULL,
	"c_fscode_last_approved_rejected_by" varchar(20) NULL,
	"c_empcode_last_approved_rejected_by" varchar(20) NULL,
	"d_last_approved_rejected_date" timestamp NULL,
	"n_status" integer NULL,
	"n_delete_unlock" integer NULL,
	"n_setup" integer NULL,
	"c_next_approve_fscode" varchar(20) NULL,
	"c_next_approve_status" integer NULL,
	"c_remarks" varchar(500) NULL,
	"c_next_2_approve_fscode" varchar(20) NULL,
	"n_cycle_id" integer NULL
) 
;
/****** Object:  Table "tbl_dwr_delete_unlock_dets"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_delete_unlock_dets"(
	"n_srno" integer NULL,
	"n_setup_type" integer NULL,
	"c_mngr_type" varchar(100) NULL,
	"n_multiple_approval" integer NULL,
	"n_type" integer NULL
) 
;
/****** Object:  Table "Tbl_DWR_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_DWR_Details"(
	"N_Srno" integer NOT NULL,
	"n_rowid" integer NOT NULL,
	"n_type" integer NOT NULL,
	"C_DSC_Code" varchar(10) NOT NULL,
	"C_BA" varchar(50) NULL,
	"N_POB" numeric(18, 2) NULL,
	"N_Closing" numeric(18, 2) NULL,
	"N_Stock_Value" numeric(18, 2) NULL,
	"N_Sales_Value" numeric(18, 2) NULL,
	"N_Outstanding" numeric(18, 2) NULL,
	"C_Note" varchar(1000) NULL,
	"c_time" varchar(50) NULL,
	"c_doc_note" varchar(50) NULL,
	"c_doc_grade" varchar(50) NULL,
	"c_fmcg_stk_code" varchar(10) NULL,
	"n_process_status" integer NULL,
	"c_Comments" varchar(200) NULL,
	"c_moreve" char(1) NULL,
	"c_PhoneNo" varchar(20) NULL,
	"d_created" timestamp NULL,
	"c_no_promotional" varchar(5) NULL,
	"c_no_ctoc" varchar(5) NULL,
	"c_no_asset" varchar(5) NULL,
	"c_no_camp" varchar(5) NULL,
	"n_recovery_call" integer NULL,
 CONSTRAINT "PK_Tbl_DWR_Details" PRIMARY KEY  
(
	"N_Srno" ,
	"n_rowid" ,
	"n_type" ,
	"C_DSC_Code" 
) 
) 
;
/****** Object:  Table "tbl_dwr_details_2020_06_24"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_details_2020_06_24"(
	"N_Srno" integer NOT NULL,
	"n_rowid" integer NOT NULL,
	"n_type" integer NOT NULL,
	"C_DSC_Code" varchar(10) NOT NULL,
	"C_BA" varchar(50) NULL,
	"N_POB" numeric(18, 2) NULL,
	"N_Closing" numeric(18, 2) NULL,
	"N_Stock_Value" numeric(18, 2) NULL,
	"N_Sales_Value" numeric(18, 2) NULL,
	"N_Outstanding" numeric(18, 2) NULL,
	"C_Note" varchar(1000) NULL,
	"c_time" varchar(50) NULL,
	"c_doc_note" varchar(50) NULL,
	"c_doc_grade" varchar(50) NULL,
	"c_fmcg_stk_code" varchar(10) NULL,
	"n_process_status" integer NULL,
	"c_Comments" varchar(200) NULL,
	"c_moreve" char(1) NULL,
	"c_PhoneNo" varchar(20) NULL,
	"d_created" timestamp NULL
) 
;
/****** Object:  Table "TBL_DWR_DETAILS_ANDROID_LOCATION"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "TBL_DWR_DETAILS_ANDROID_LOCATION"(
	"N_DcrNo" numeric(18, 0) NOT NULL,
	"C_DSCA_CODE" varchar(20) NOT NULL,
	"N_Latitude" numeric(18, 12) NOT NULL,
	"N_Longitude" numeric(18, 12) NULL,
	"C_CHARGE" varchar(10) NULL,
	"C_DEVICE" varchar(100) NULL,
	"C_DEVICE_ID" varchar(200) NULL,
	"N_ANDROID_VERSION" integer NULL,
	"N_SIGNAL" integer NULL,
	"N_GPRS" integer NULL,
	"D_DATE" timestamp NULL,
	"c_placename" varchar(2000) NULL,
 CONSTRAINT "PK_TBL_DWR_DETAILS_ANDROID_LOCATION" PRIMARY KEY  
(
	"N_DcrNo" ,
	"C_DSCA_CODE" 
) 
) 
;
/****** Object:  Table "tbl_dwr_details_insqry"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_details_insqry"(
	"n_srno" numeric(18, 0) NULL,
	"c_qry" text NULL
) 
;
/****** Object:  Table "Tbl_DWR_Details_OtherRegionDrs"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_DWR_Details_OtherRegionDrs"(
	"N_Srno" integer NOT NULL,
	"n_rowid" integer NOT NULL,
	"n_type" integer NOT NULL,
	"C_DSC_Code" varchar(10) NOT NULL,
	"C_BA" varchar(50) NULL,
	"N_POB" numeric(18, 2) NULL,
	"N_Closing" numeric(18, 2) NULL,
	"N_Stock_Value" numeric(18, 2) NULL,
	"N_Sales_Value" numeric(18, 2) NULL,
	"N_Outstanding" numeric(18, 2) NULL,
	"C_Note" varchar(1000) NULL,
	"c_time" varchar(50) NULL,
	"c_doc_note" varchar(50) NULL,
	"c_doc_grade" varchar(50) NULL,
	"c_fmcg_stk_code" varchar(10) NULL,
	"n_process_status" integer NULL,
	"c_Comments" varchar(200) NULL,
	"c_moreve" char(1) NULL,
	"c_PhoneNo" varchar(20) NULL,
	"d_created" timestamp NULL
) 
;
/****** Object:  Table "tbl_dwr_doc_item_role_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_doc_item_role_det"(
	"n_dcr_no" varchar(20) NULL,
	"c_doc_code" varchar(20) NULL,
	"c_itemcode" varchar(20) NULL,
	"c_pref_code" varchar(2) NULL,
	"n_pref_qty" integer NULL
) 
;
/****** Object:  Table "tbl_dwr_doc_item_role_det_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_doc_item_role_det_log"(
	"n_dcr_no" varchar(20) NULL,
	"c_doc_code" varchar(20) NULL,
	"c_itemcode" varchar(20) NULL,
	"c_pref_code" varchar(2) NULL
) 
;
/****** Object:  Table "Tbl_Dwr_Doctor_Query"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Dwr_Doctor_Query"(
	"n_srno" numeric(18, 0) NOT NULL,
	"c_dsc_code" varchar(10) NOT NULL,
	"c_subject" varchar(50) NULL,
	"c_details" varchar(250) NULL,
	"c_email" varchar(100) NULL,
	"n_type" integer NOT NULL,
 CONSTRAINT "PK_Tbl_Dwr_Doctor_Query" PRIMARY KEY  
(
	"n_srno" ,
	"c_dsc_code" ,
	"n_type" 
) 
) 
;
/****** Object:  Table "TBL_DWR_DSCOIMAGE"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "TBL_DWR_DSCOIMAGE"(
	"n_dwr_no" numeric(18, 0) NULL,
	"c_dsco_code" varchar(100) NULL,
	"c_imgname" varchar(1000) NULL,
	"d_date" "date" NOT NULL
) 
;
/****** Object:  Table "tbl_dwr_Edetail_base64audiofile"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_Edetail_base64audiofile"(
	"c_srno" varchar(100) NOT NULL,
	"c_title_code" text NULL,
	"c_item_code" text NULL,
	"c_doc_code" text NULL,
	"C_filename" text NULL
) 
;
/****** Object:  Table "tbl_dwr_Edetail_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_Edetail_det"(
	"n_srno" integer NULL,
	"d_starting_time" varchar(50) NULL,
	"d_endingtime" varchar(50) NULL,
	"c_slideID" varchar(50) NULL,
	"d_date" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_item_code" varchar(50) NULL,
	"c_doc_code" varchar(50) NULL,
	"c_doc_grade" varchar(50) NULL,
	"C_voice_Rec" varchar(200) NULL,
	"c_title_code" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_dwr_Edetail_Det_New"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_Edetail_Det_New"(
	"c_srno" varchar(100) NULL,
	"d_starting_time" varchar(50) NULL,
	"d_endingtime" varchar(50) NULL,
	"c_slideID" varchar(50) NULL,
	"d_date" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_item_code" varchar(50) NULL,
	"c_doc_category" varchar(50) NULL,
	"C_voice_Rec" varchar(200) NULL,
	"c_title_code" varchar(10) NULL
) 
;
/****** Object:  Table "tbl_dwr_Edetail_DocSent"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_Edetail_DocSent"(
	"c_srno" text NULL,
	"c_document_code" varchar(100) NOT NULL,
	"c_doctor_code" varchar(50) NULL,
	"c_slideID" varchar(50) NOT NULL,
	"d_date" "date" NOT NULL,
	"c_email" varchar(50) NOT NULL
) 
;
/****** Object:  Table "tbl_Dwr_Edit_History"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Dwr_Edit_History"(
	"n_id" SERIAL NOT NULL,
	"n_dcrno" numeric(18, 0) NULL,
	"d_EditDate" timestamp NULL,
	"c_table" varchar(10) NULL,
	"c_action" varchar(50) NULL
) 
;
/****** Object:  Table "Tbl_DWR_Expense"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_DWR_Expense"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowId" integer NOT NULL,
	"C_Exp_Code" char(10) NOT NULL,
	"D_Date" timestamp NULL,
	"n_Amount" numeric(18, 2) NULL,
	"C_Note" varchar(100) NULL,
 CONSTRAINT "PK_Tbl_DWR_Expense" PRIMARY KEY  
(
	"N_Srno" ,
	"N_RowId" ,
	"C_Exp_Code" 
) 
) 
;
/****** Object:  Table "Tbl_DWR_Expense_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_DWR_Expense_log"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowId" integer NOT NULL,
	"C_Exp_Code" char(10) NOT NULL,
	"D_Date" timestamp NULL,
	"n_Amount" numeric(18, 2) NULL,
	"C_Note" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_dwr_fmcg_sub_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_fmcg_sub_Details"(
	"n_srno" numeric(18, 0) NOT NULL,
	"c_itemcode" varchar(50) NULL,
	"n_qty" numeric(18, 0) NULL,
	"n_stk_hand" numeric(18, 0) NULL,
	"c_note" varchar(100) NULL,
	"n_rate" numeric(18, 2) NULL,
	"n_SuppliedQty" numeric(18, 2) NULL,
	"n_reason_non_purchase" varchar(20) NULL,
	"d_Expiry" timestamp NULL,
	"n_Ordered_Qty" numeric(18, 0) NULL,
	"n_reasonfor_return" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_dwr_fmcg_sub_Details_POB_History"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_fmcg_sub_Details_POB_History"(
	"n_srno" numeric(18, 0) NOT NULL,
	"c_itemcode" varchar(50) NULL,
	"n_qty" numeric(18, 0) NULL,
	"n_stk_hand" numeric(18, 0) NULL,
	"c_chem_code" varchar(50) NOT NULL,
	"c_stk_code" varchar(50) NOT NULL,
	"c_note" varchar(100) NULL,
	"n_rate" numeric(9, 2) NULL,
	"c_OrderEntryType" varchar(10) NULL
) 
;
/****** Object:  Table "tbl_dwr_hospital_setup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_hospital_setup"(
	"n_map_type" integer NULL,
	"n_desig" integer NULL,
	"c_fs_code" varchar(10) NULL
) 
;
/****** Object:  Table "tbl_dwr_item_type_block"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_item_type_block"(
	"n_srno" SERIAL NOT NULL,
	"c_fscode" varchar(20) NULL,
	"c_cust_code" varchar(20) NULL,
	"n_type" integer NULL,
	"d_date_created" timestamp NULL,
	"c_modifier" varchar(20) NULL,
PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_dwr_item_type_block_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_item_type_block_log"(
	"n_srno" SERIAL NOT NULL,
	"c_fscode" varchar(20) NULL,
	"c_cust_code" varchar(20) NULL,
	"n_type" integer NULL,
	"d_date_created" timestamp NULL,
	"c_modifier" varchar(20) NULL,
PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "Tbl_DWR_log_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_DWR_log_Details"(
	"N_Srno" integer NOT NULL,
	"n_rowid" integer NOT NULL,
	"n_type" integer NOT NULL,
	"C_DSC_Code" varchar(10) NOT NULL,
	"C_BA" varchar(50) NULL,
	"N_POB" numeric(18, 2) NULL,
	"N_Closing" numeric(18, 2) NULL,
	"N_Stock_Value" numeric(18, 2) NULL,
	"N_Sales_Value" numeric(18, 2) NULL,
	"N_Outstanding" numeric(18, 2) NULL,
	"C_Note" varchar(200) NULL,
	"c_time" varchar(50) NULL,
	"c_doc_note" varchar(50) NULL,
	"c_doc_grade" varchar(50) NULL,
	"n_process_status" integer NULL,
	"c_fmcg_stk_code" varchar(10) NULL,
	"c_Comments" varchar(200) NULL
) 
;
/****** Object:  Table "tbl_dwr_log_doc_item_role_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_log_doc_item_role_det"(
	"n_dcr_no" varchar(20) NULL,
	"c_doc_code" varchar(20) NULL,
	"c_itemcode" varchar(20) NULL,
	"c_pref_code" varchar(2) NULL
) 
;
/****** Object:  Table "tbl_dwr_log_fmcg_sub_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_log_fmcg_sub_Details"(
	"n_srno" numeric(18, 0) NOT NULL,
	"c_itemcode" varchar(50) NULL,
	"n_qty" numeric(18, 0) NULL,
	"n_stk_hand" numeric(18, 0) NULL,
	"c_note" varchar(100) NULL,
	"n_rate" numeric(18, 2) NULL
) 
;
/****** Object:  Table "Tbl_DWR_log_Sub_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_DWR_log_Sub_Details"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_Doc_Code" varchar(10) NULL,
	"N_RowId" integer NULL,
	"C_Item_Code" char(10) NULL,
	"C_ITEM_EXP" char(10) NULL,
	"n_Product_Unit" numeric(18, 0) NULL,
	"N_Type" integer NULL,
	"c_title_code" varchar(20) NULL,
	"c_item_note" varchar(200) NULL
) 
;
/****** Object:  Table "tbl_dwr_log_workwith_sub_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_log_workwith_sub_det"(
	"n_srno" numeric(18, 0) NOT NULL,
	"c_doc_code" varchar(10) NOT NULL,
	"c_workwith_Fs_code" varchar(50) NOT NULL,
	"c_selectflag" char(1) NULL
) 
;
/****** Object:  Table "Tbl_DWR_Mobile"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_DWR_Mobile"(
	"N_DCRNO" integer NULL,
	"d_CreatedDate" timestamp NOT NULL
) 
;
/****** Object:  Table "tbl_dwr_patient_activity"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_patient_activity"(
	"n_srno" numeric(18, 0) NOT NULL,
	"c_patient" varchar(100) NOT NULL,
	"c_activity" varchar(100) NOT NULL
) 
;
/****** Object:  Table "tbl_dwr_patient_activity_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_patient_activity_log"(
	"n_srno" numeric(18, 0) NOT NULL,
	"c_patient" varchar(100) NOT NULL,
	"c_activity" varchar(100) NOT NULL
) 
;
/****** Object:  Table "tbl_dwr_patient_competitorproduct"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_patient_competitorproduct"(
	"n_srno" numeric(18, 0) NOT NULL,
	"c_patient" varchar(100) NOT NULL,
	"c_CompetitorProduct" varchar(100) NOT NULL,
	"c_BrandCode" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_dwr_patient_competitorproduct_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_patient_competitorproduct_log"(
	"n_srno" numeric(18, 0) NOT NULL,
	"c_patient" varchar(100) NOT NULL,
	"c_CompetitorProduct" varchar(100) NOT NULL,
	"c_BrandCode" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_dwr_patient_productbrand"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_patient_productbrand"(
	"n_srno" numeric(18, 0) NOT NULL,
	"c_patient" varchar(100) NOT NULL,
	"c_productbrand" varchar(100) NOT NULL
) 
;
/****** Object:  Table "tbl_dwr_patient_productbrand_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_patient_productbrand_log"(
	"n_srno" numeric(18, 0) NOT NULL,
	"c_patient" varchar(100) NOT NULL,
	"c_productbrand" varchar(100) NOT NULL
) 
;
/****** Object:  Table "tbl_dwr_prec_sub_details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_prec_sub_details"(
	"n_srno" numeric(9, 0) NULL,
	"c_doc_code" varchar(10) NULL,
	"c_item_code" varchar(15) NULL,
	"n_prec_qty" numeric(18, 2) NULL
) 
;
/****** Object:  Table "tbl_dwr_qusetion_Det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_qusetion_Det"(
	"n_ID" integer NOT NULL,
	"n_dcrno" char(10) NULL,
	"c_doctorCode" varchar(50) NULL,
	"n_questionID" integer NULL,
	"c_answer1" varchar(50) NULL,
	"c_answer2" varchar(50) NULL
) 
;
/****** Object:  Table "Tbl_DWR_SETUP"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_DWR_SETUP"(
	"N_DCR_RCPA_FLAG" integer NULL
) 
;
/****** Object:  Table "tbl_dwr_Stockist_setup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_Stockist_setup"(
	"n_map_type" integer NULL,
	"n_desig" integer NULL,
	"c_fs_code" varchar(10) NULL,
	"n_mapping" integer NULL
) 
;
/****** Object:  Table "Tbl_DWR_Sub_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_DWR_Sub_Details"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_Doc_Code" varchar(10) NULL,
	"N_RowId" integer NULL,
	"C_Item_Code" char(10) NULL,
	"C_ITEM_EXP" char(10) NULL,
	"n_Product_Unit" numeric(18, 0) NULL,
	"N_Type" integer NULL,
	"N_AUTO" numeric(18, 0) NULL,
	"c_title_code" varchar(20) NULL,
	"c_item_note" varchar(200) NULL
) 
;
/****** Object:  Table "Tbl_DWR_Sub_Details_OtherRegionDrs"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_DWR_Sub_Details_OtherRegionDrs"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_Doc_Code" varchar(10) NOT NULL,
	"N_RowId" integer NOT NULL,
	"C_Item_Code" char(10) NOT NULL,
	"C_ITEM_EXP" char(10) NULL,
	"n_Product_Unit" numeric(18, 0) NULL,
	"N_Type" integer NULL,
	"c_title_code" varchar(20) NULL,
	"c_item_note" varchar(200) NULL,
	"N_AUTO" numeric(18, 0) NULL
) 
;
/****** Object:  Table "tbl_dwr_workwith_sub_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dwr_workwith_sub_det"(
	"n_srno" numeric(18, 0) NOT NULL,
	"c_doc_code" varchar(10) NOT NULL,
	"c_workwith_Fs_code" varchar(50) NOT NULL,
	"c_selectflag" char(1) NULL,
 CONSTRAINT "PK_tbl_dwr_workwith_sub_det" PRIMARY KEY  
(
	"n_srno" ,
	"c_doc_code" ,
	"c_workwith_Fs_code" 
) 
) 
;
/****** Object:  Table "tbl_Dynamic_Compare_Master"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Dynamic_Compare_Master"(
	"n_srno" SERIAL NOT NULL,
	"c_name" varchar(200) NULL,
	"c_description" varchar(2000) NULL,
	"n_status" boolean NULL,
	"d_createdon" timestamp NULL,
	"c_createdby" varchar(50) NULL,
	"d_modifiedon" timestamp NULL,
	"c_modifiedby" varchar(50) NULL,
 CONSTRAINT "PK_tbl_Dynamic_Compare_Master" PRIMARY KEY  
(
	"n_srno" 
) ,
 CONSTRAINT "IX_tbl_Dynamic_Compare_Master" UNIQUE  
(
	"c_name" 
) 
) 
;
/****** Object:  Table "tbl_Dynamic_Control_Category_Master"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Dynamic_Control_Category_Master"(
	"n_srno" SERIAL NOT NULL,
	"c_name" varchar(200) NOT NULL,
	"c_description" varchar(2000) NULL,
	"n_status" boolean NULL,
	"d_createdon" timestamp NULL,
	"c_createdby" varchar(50) NULL,
	"d_modifiedon" timestamp NULL,
	"c_modifiedby" varchar(50) NULL,
 CONSTRAINT "PK_tbl_Dynamic_Control_Category_Master" PRIMARY KEY  
(
	"n_srno" 
) ,
 CONSTRAINT "IX_tbl_Dynamic_Control_Category_Master" UNIQUE  
(
	"c_name" 
) 
) 
;
/****** Object:  Table "tbl_Dynamic_Control_Compare_Table"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Dynamic_Control_Compare_Table"(
	"n_srno" SERIAL NOT NULL,
	"n_control_id" numeric(18, 0) NULL,
	"n_report_id" numeric(18, 0) NULL,
	"n_compare_control_id" numeric(18, 0) NULL,
	"n_compare_type_id" integer NULL,
	"c_maxdiff" varchar(500) NULL,
	"c_mindiff" varchar(500) NULL,
	"n_status" boolean NULL,
	"d_createdon" timestamp NULL,
	"c_createdby" varchar(50) NULL,
	"d_modifiedon" timestamp NULL,
	"c_modifiedby" varchar(50) NULL,
 CONSTRAINT "PK_tbl_Dynamic_Control_Compare_Table" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_Dynamic_Control_Custom_Default_Data"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Dynamic_Control_Custom_Default_Data"(
	"n_srno" SERIAL NOT NULL,
	"n_control_map_id" integer NULL,
	"c_text" varchar(500) NULL,
	"c_value" varchar(500) NULL,
	"n_sortorder" integer NULL,
	"n_status" boolean NULL,
	"d_createdon" timestamp NULL,
	"c_createdby" varchar(50) NULL,
	"d_modifiedon" timestamp NULL,
	"c_modifiedby" varchar(50) NULL,
 CONSTRAINT "PK_tbl_Dynamic_Control_Custom_Default_Data" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_Dynamic_Control_Default_Data"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Dynamic_Control_Default_Data"(
	"n_srno" SERIAL NOT NULL,
	"n_control_id" integer NULL,
	"c_text" varchar(500) NULL,
	"c_value" varchar(500) NULL,
	"n_sortorder" integer NULL,
	"n_status" boolean NULL,
	"d_createdon" timestamp NULL,
	"c_createdby" varchar(50) NULL,
	"d_modifiedon" timestamp NULL,
	"c_modifiedby" varchar(50) NULL,
 CONSTRAINT "PK_tbl_Dynamic_Control_Default_Data" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_Dynamic_Control_Dependency"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Dynamic_Control_Dependency"(
	"n_srno" SERIAL NOT NULL,
	"n_control_id" integer NULL,
	"n_dependent_control_id" integer NULL,
	"n_report_id" numeric(18, 0) NULL,
	"n_status" boolean NULL,
	"d_createdon" timestamp NULL,
	"c_createdby" varchar(50) NULL,
	"d_modifiedon" timestamp NULL,
	"c_modifiedby" varchar(50) NULL,
 CONSTRAINT "PK_tbl_Dynamic_Control_Dependency" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_Dynamic_Control_Types_Master"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Dynamic_Control_Types_Master"(
	"n_srno" SERIAL NOT NULL,
	"c_name" varchar(200) NOT NULL,
	"c_description" varchar(2000) NULL,
	"n_datatype_id" integer NULL,
	"n_status" boolean NULL,
	"d_createdon" timestamp NULL,
	"c_createdby" varchar(50) NULL,
	"d_modifiedon" timestamp NULL,
	"c_modifiedby" varchar(50) NULL,
 CONSTRAINT "PK_tbl_Dynamic_Control_Types_Master" PRIMARY KEY  
(
	"n_srno" 
) ,
 CONSTRAINT "IX_tbl_Dynamic_Control_Types_Master" UNIQUE  
(
	"c_name" 
) 
) 
;
/****** Object:  Table "tbl_Dynamic_Control_Validation_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Dynamic_Control_Validation_Details"(
	"n_srno" SERIAL NOT NULL,
	"n_control_id" numeric(18, 0) NULL,
	"n_report_id" numeric(18, 0) NULL,
	"n_validation_type_id" integer NULL,
	"n_validation_entity_id" integer NULL,
	"c_validation_text" varchar(2000) NULL,
	"n_status" boolean NULL,
	"d_createdon" timestamp NULL,
	"c_createdby" varchar(50) NULL,
	"d_modifiedon" timestamp NULL,
	"c_modifiedby" varchar(50) NULL,
 CONSTRAINT "PK_tbl_Dynamic_Control_Validation_Details" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_Dynamic_Controls"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Dynamic_Controls"(
	"n_srno" SERIAL NOT NULL,
	"c_name" varchar(200) NULL,
	"c_description" varchar(2000) NULL,
	"c_display_Label" varchar(200) NULL,
	"n_control_datatype_id" integer NULL,
	"n_control_type_id" integer NULL,
	"n_control_category_id" integer NULL,
	"n_ismandatory" boolean NULL,
	"c_placeholder" varchar(200) NULL,
	"c_default_text" varchar(200) NULL,
	"c_default_value" varchar(200) NULL,
	"c_query" varchar(2000) NULL,
	"c_parameter" varchar(500) NULL,
	"c_text_column" varchar(200) NULL,
	"c_value_column" varchar(200) NULL,
	"c_min_value" varchar(200) NULL,
	"c_max_value" varchar(200) NULL,
	"c_validationlevel" varchar(500) NULL,
	"c_comparelevel" varchar(500) NULL,
	"c_dependentlevel" varchar(500) NULL,
	"n_status" boolean NULL,
	"d_createdon" timestamp NULL,
	"c_createdby" varchar(50) NULL,
	"d_modifiedon" timestamp NULL,
	"c_modifiedby" varchar(50) NULL,
	"n_case_sensitivity" integer NULL,
 CONSTRAINT "PK_tbl_Dynamic_Controls" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_Dynamic_Controls_bck"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Dynamic_Controls_bck"(
	"n_srno" SERIAL NOT NULL,
	"c_name" varchar(200) NULL,
	"c_description" varchar(2000) NULL,
	"c_display_Label" varchar(200) NULL,
	"n_control_datatype_id" integer NULL,
	"n_control_type_id" integer NULL,
	"n_control_category_id" integer NULL,
	"n_ismandatory" boolean NULL,
	"c_placeholder" varchar(200) NULL,
	"c_default_text" varchar(200) NULL,
	"c_default_value" varchar(200) NULL,
	"c_query" varchar(2000) NULL,
	"c_parameter" varchar(500) NULL,
	"c_text_column" varchar(200) NULL,
	"c_value_column" varchar(200) NULL,
	"c_min_value" varchar(200) NULL,
	"c_max_value" varchar(200) NULL,
	"c_validationlevel" varchar(500) NULL,
	"c_comparelevel" varchar(500) NULL,
	"c_dependentlevel" varchar(500) NULL,
	"n_status" boolean NULL,
	"d_createdon" timestamp NULL,
	"c_createdby" varchar(50) NULL,
	"d_modifiedon" timestamp NULL,
	"c_modifiedby" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_Dynamic_Controls_bck_new"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Dynamic_Controls_bck_new"(
	"n_srno" SERIAL NOT NULL,
	"c_name" varchar(200) NULL,
	"c_description" varchar(2000) NULL,
	"c_display_Label" varchar(200) NULL,
	"n_control_datatype_id" integer NULL,
	"n_control_type_id" integer NULL,
	"n_control_category_id" integer NULL,
	"n_ismandatory" boolean NULL,
	"c_placeholder" varchar(200) NULL,
	"c_default_text" varchar(200) NULL,
	"c_default_value" varchar(200) NULL,
	"c_query" varchar(2000) NULL,
	"c_parameter" varchar(500) NULL,
	"c_text_column" varchar(200) NULL,
	"c_value_column" varchar(200) NULL,
	"c_min_value" varchar(200) NULL,
	"c_max_value" varchar(200) NULL,
	"c_validationlevel" varchar(500) NULL,
	"c_comparelevel" varchar(500) NULL,
	"c_dependentlevel" varchar(500) NULL,
	"n_status" boolean NULL,
	"d_createdon" timestamp NULL,
	"c_createdby" varchar(50) NULL,
	"d_modifiedon" timestamp NULL,
	"c_modifiedby" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_dynamic_dashboard"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dynamic_dashboard"(
	"n_id" SERIAL NOT NULL,
	"n_dashboard_id" integer NULL,
	"n_section_id" integer NULL,
	"c_section_name" varchar(200) NULL,
	"c_description" varchar(200) NULL,
	"n_enabled" integer NULL
) 
;
/****** Object:  Table "tbl_dynamic_dashboard_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dynamic_dashboard_det"(
	"n_srno" integer NULL,
	"n_setup_type" integer NULL,
	"n_section_id" varchar(200) NULL
) 
;
/****** Object:  Table "tbl_Dynamic_DataType_Master"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Dynamic_DataType_Master"(
	"n_srno" SERIAL NOT NULL,
	"c_name" varchar(200) NULL,
	"c_description" varchar(2000) NULL,
	"n_status" boolean NULL,
	"d_createdon" timestamp NULL,
	"c_createdby" varchar(50) NULL,
	"d_modifiedon" timestamp NULL,
	"c_modifiedby" varchar(50) NULL,
 CONSTRAINT "PK_tbl_Dynamic_DataType_Master" PRIMARY KEY  
(
	"n_srno" 
) ,
 CONSTRAINT "IX_tbl_Dynamic_DataType_Master" UNIQUE  
(
	"c_name" 
) 
) 
;
/****** Object:  Table "tbl_Dynamic_RegEx_Expressions_Master"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Dynamic_RegEx_Expressions_Master"(
	"n_srno" SERIAL NOT NULL,
	"c_name" varchar(200) NULL,
	"c_description" varchar(2000) NULL,
	"c_expressions" varchar(1000) NULL,
	"n_status" boolean NULL,
	"d_createdon" timestamp NULL,
	"c_createdby" varchar(50) NULL,
	"d_modifiedon" timestamp NULL,
	"c_modifiedby" varchar(50) NULL,
 CONSTRAINT "PK_tbl_Dynamic_RegEx_Expressions_Master" PRIMARY KEY  
(
	"n_srno" 
) ,
 CONSTRAINT "IX_tbl_Dynamic_RegEx_Expressions_Master" UNIQUE  
(
	"c_name" 
) 
) 
;
/****** Object:  Table "tbl_Dynamic_Report_Controls"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Dynamic_Report_Controls"(
	"n_srno" SERIAL NOT NULL,
	"n_report_id" numeric(18, 0) NULL,
	"n_control_id" numeric(18, 0) NULL,
	"c_control_mode" varchar(200) NULL,
	"c_display_Label" varchar(200) NULL,
	"n_control_datatype_id" integer NULL,
	"n_control_type_id" integer NULL,
	"n_control_category_id" integer NULL,
	"n_ismandatory" boolean NULL,
	"c_placeholder" varchar(200) NULL,
	"c_default_text" varchar(200) NULL,
	"c_default_value" varchar(200) NULL,
	"c_query" text NULL,
	"c_parameter" varchar(500) NULL,
	"c_text_column" varchar(200) NULL,
	"c_value_column" varchar(200) NULL,
	"c_min_value" varchar(200) NULL,
	"c_max_value" varchar(200) NULL,
	"c_validationlevel" varchar(500) NULL,
	"c_comparelevel" varchar(500) NULL,
	"c_dependentlevel" varchar(500) NULL,
	"n_status" boolean NULL,
	"d_createdon" timestamp NULL,
	"c_createdby" varchar(50) NULL,
	"d_modifiedon" timestamp NULL,
	"c_modifiedby" varchar(50) NULL,
	"n_case_sensitivity" integer NULL,
 CONSTRAINT "PK_tbl_Dynamic_Report_Controls" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_Dynamic_report_Controls_bck_new"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Dynamic_report_Controls_bck_new"(
	"n_srno" SERIAL NOT NULL,
	"n_report_id" numeric(18, 0) NULL,
	"n_control_id" numeric(18, 0) NULL,
	"c_control_mode" varchar(200) NULL,
	"c_display_Label" varchar(200) NULL,
	"n_control_datatype_id" integer NULL,
	"n_control_type_id" integer NULL,
	"n_control_category_id" integer NULL,
	"n_ismandatory" boolean NULL,
	"c_placeholder" varchar(200) NULL,
	"c_default_text" varchar(200) NULL,
	"c_default_value" varchar(200) NULL,
	"c_query" varchar(2000) NULL,
	"c_parameter" varchar(500) NULL,
	"c_text_column" varchar(200) NULL,
	"c_value_column" varchar(200) NULL,
	"c_min_value" varchar(200) NULL,
	"c_max_value" varchar(200) NULL,
	"c_validationlevel" varchar(500) NULL,
	"c_comparelevel" varchar(500) NULL,
	"c_dependentlevel" varchar(500) NULL,
	"n_status" boolean NULL,
	"d_createdon" timestamp NULL,
	"c_createdby" varchar(50) NULL,
	"d_modifiedon" timestamp NULL,
	"c_modifiedby" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_Dynamic_Report_Master"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Dynamic_Report_Master"(
	"n_srno" numeric(18, 0) NOT NULL,
	"n_menu_id" integer NULL,
	"c_code" varchar(50) NULL,
	"c_name" varchar(500) NULL,
	"c_description" varchar(2000) NULL,
	"n_report_head_type" boolean NULL,
	"c_report_head_display_text" varchar(2000) NULL,
	"n_columns_cnt" integer NULL,
	"c_column_names" text NULL,
	"c_query" text NULL,
	"c_parameters" text NULL,
	"n_page_default_rows_cnt" integer NULL,
	"n_parent_srno" numeric(18, 0) NULL,
	"n_status" boolean NULL,
	"d_createdon" timestamp NULL,
	"c_createdby" varchar(50) NULL,
	"d_modifiedon" timestamp NULL,
	"c_modifiedby" varchar(50) NULL,
	"c_columns_type" varchar(200) NULL,
	"n_isCSV" smallint NULL,
	"n_isDirectView" boolean NULL,
	"c_additional_note" text NULL,
	"n_id" SERIAL NOT NULL,
 CONSTRAINT "PK_tbl_Dynamic_Report_Master_1" PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "tbl_Dynamic_Report_Master_bck"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Dynamic_Report_Master_bck"(
	"n_srno" SERIAL NOT NULL,
	"n_menu_id" integer NULL,
	"c_code" varchar(50) NULL,
	"c_name" varchar(500) NULL,
	"c_description" varchar(2000) NULL,
	"n_report_head_type" boolean NULL,
	"c_report_head_display_text" varchar(2000) NULL,
	"n_columns_cnt" integer NULL,
	"c_column_names" text NULL,
	"c_query" text NULL,
	"c_parameters" text NULL,
	"n_page_default_rows_cnt" integer NULL,
	"n_parent_srno" numeric(18, 0) NULL,
	"n_status" boolean NULL,
	"d_createdon" timestamp NULL,
	"c_createdby" varchar(50) NULL,
	"d_modifiedon" timestamp NULL,
	"c_modifiedby" varchar(50) NULL,
	"c_columns_type" varchar(200) NULL,
	"n_isCSV" smallint NULL,
	"n_isDirectView" boolean NULL,
	"c_additional_note" text NULL
) 
;
/****** Object:  Table "tbl_Dynamic_Report_Master_bck_new"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Dynamic_Report_Master_bck_new"(
	"n_srno" SERIAL NOT NULL,
	"n_menu_id" integer NULL,
	"c_code" varchar(50) NULL,
	"c_name" varchar(500) NULL,
	"c_description" varchar(2000) NULL,
	"n_report_head_type" boolean NULL,
	"c_report_head_display_text" varchar(2000) NULL,
	"n_columns_cnt" integer NULL,
	"c_column_names" text NULL,
	"c_query" text NULL,
	"c_parameters" text NULL,
	"n_page_default_rows_cnt" integer NULL,
	"n_parent_srno" numeric(18, 0) NULL,
	"n_status" boolean NULL,
	"d_createdon" timestamp NULL,
	"c_createdby" varchar(50) NULL,
	"d_modifiedon" timestamp NULL,
	"c_modifiedby" varchar(50) NULL,
	"c_columns_type" varchar(200) NULL,
	"n_isCSV" smallint NULL,
	"n_isDirectView" boolean NULL,
	"c_additional_note" text NULL
) 
;
/****** Object:  Table "tbl_Dynamic_Report_View"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Dynamic_Report_View"(
	"n_srno" SERIAL NOT NULL,
	"n_report_id" numeric(18, 0) NULL,
	"n_columns_cnt" integer NULL,
	"c_column_names" text NULL,
	"c_column_type" varchar(200) NULL,
	"n_report_head_type" boolean NULL,
	"c_report_header_text" text NULL,
	"c_query" text NULL,
	"c_parameters" text NULL,
	"n_parent_srno" numeric(18, 0) NULL,
	"c_payload" text NULL,
	"n_page_default_rows_cnt" integer NULL,
	"d_viewedon" timestamp NULL,
	"d_downlodedon" timestamp NULL,
	"c_created_by" varchar(50) NULL,
	"c_created_on" timestamp NULL,
 CONSTRAINT "PK_tbl_Dynamic_Report_View" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_Dynamic_Report_View_Data"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Dynamic_Report_View_Data"(
	"n_srno" SERIAL NOT NULL,
	"n_report_view_id" numeric(18, 0) NULL,
	"c_column_1" text NULL,
	"c_column_2" text NULL,
	"c_column_3" text NULL,
	"c_column_4" text NULL,
	"c_column_5" text NULL,
	"c_column_6" text NULL,
	"c_column_7" text NULL,
	"c_column_8" text NULL,
	"c_column_9" text NULL,
	"c_column_10" text NULL,
	"c_column_11" text NULL,
	"c_column_12" text NULL,
	"c_column_13" text NULL,
	"c_column_14" text NULL,
	"c_column_15" text NULL,
	"c_column_16" text NULL,
	"c_column_17" text NULL,
	"c_column_18" text NULL,
	"c_column_19" text NULL,
	"c_column_20" text NULL,
	"c_column_21" text NULL,
	"c_column_22" text NULL,
	"c_column_23" text NULL,
	"c_column_24" text NULL,
	"c_column_25" text NULL,
	"c_column_26" text NULL,
	"c_column_27" text NULL,
	"c_column_28" text NULL,
	"c_column_29" text NULL,
	"c_column_30" text NULL,
	"c_column_31" text NULL,
	"c_column_32" text NULL,
	"c_column_33" text NULL,
	"c_column_34" text NULL,
	"c_column_35" text NULL,
	"c_column_36" text NULL,
	"c_column_37" text NULL,
	"c_column_38" text NULL,
	"c_column_39" text NULL,
	"c_column_40" text NULL,
	"c_column_41" text NULL,
	"c_column_42" text NULL,
	"c_column_43" text NULL,
	"c_column_44" text NULL,
	"c_column_45" text NULL,
	"c_column_46" text NULL,
	"c_column_47" text NULL,
	"c_column_48" text NULL,
	"c_column_49" text NULL,
	"c_column_50" text NULL,
	"c_column_51" text NULL,
	"c_column_52" text NULL,
	"c_column_53" text NULL,
	"c_column_54" text NULL,
	"c_column_55" text NULL,
	"c_column_56" text NULL,
	"c_column_57" text NULL,
	"c_column_58" text NULL,
	"c_column_59" text NULL,
	"c_column_60" text NULL,
	"c_column_61" text NULL,
	"c_column_62" text NULL,
	"c_column_63" text NULL,
	"c_column_64" text NULL,
	"c_column_65" text NULL,
	"c_column_66" text NULL,
	"c_column_67" text NULL,
	"c_column_68" text NULL,
	"c_column_69" text NULL,
	"c_column_70" text NULL,
	"c_column_71" text NULL,
	"c_column_72" text NULL,
	"c_column_73" text NULL,
	"c_column_74" text NULL,
	"c_column_75" text NULL,
	"d_createdon" timestamp NULL,
	"c_createdby" varchar(50) NULL,
 CONSTRAINT "PK_tbl_Dynamic_Report_View_Data" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_Dynamic_Reprot_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Dynamic_Reprot_Details"(
	"n_id" SERIAL NOT NULL,
	"n_reportId" integer NULL,
	"n_columnIndex" integer NULL,
	"c_description" varchar(200) NULL,
	"c_displayName" varchar(200) NULL,
	"n_visibility" smallint NULL,
	"n_sortEnabled" smallint NULL,
	"c_columnFormat" varchar(100) NULL,
	"c_displayFormatText" varchar(200) NULL,
	"c_displayCustomFormat" varchar(200) NULL,
	"c_columnMode" varchar(100) NULL,
	"c_relatedColumns" varchar(200) NULL,
	"n_alternateIndex" integer NULL
) 
;
/****** Object:  Table "tbl_dynamic_survey_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_dynamic_survey_mst"(
	"n_survey_id" SERIAL NOT NULL,
	"c_survey_name" varchar(100) NULL,
	"c_survey_page_name" varchar(100) NULL,
	"d_from_date" timestamp NULL,
	"d_to_date" timestamp NULL,
	"n_survey_order" integer NULL,
	"n_status" integer NULL,
	"n_deleted" integer NULL
) 
;
/****** Object:  Table "tbl_Dynamic_Validation_Type_Master"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Dynamic_Validation_Type_Master"(
	"n_srno" SERIAL NOT NULL,
	"c_name" varchar(200) NOT NULL,
	"c_description" varchar(2000) NULL,
	"n_status" boolean NULL,
	"d_createdon" timestamp NULL,
	"c_createdby" varchar(50) NULL,
	"d_modifiedon" timestamp NULL,
	"c_modifiedby" varchar(50) NULL,
 CONSTRAINT "PK_tbl_Dynamic_Validation_Type_Master" PRIMARY KEY  
(
	"n_srno" 
) ,
 CONSTRAINT "IX_tbl_Dynamic_Validation_Type_Master" UNIQUE  
(
	"c_name" 
) 
) 
;
/****** Object:  Table "tbl_DynamicRoleMasterSetup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_DynamicRoleMasterSetup"(
	"Id" integer NOT NULL,
	"TableName" varchar(100) NULL,
	"Header" varchar(150) NULL,
	"Priority" integer NOT NULL,
	"ColumnName" varchar(50) NULL,
	"LabelDisplay" varchar(150) NULL,
	"ValueType" varchar(50) NULL,
	"Visible" boolean NULL,
	"DefaultValue" varchar(50) NULL,
	"DefaultValueEvent" varchar(50) NULL,
	"Mandatory" boolean NULL,
	"DisplayType" varchar(50) NULL,
	"DisplayValue" text NULL,
	"DisplayName" varchar(50) NULL,
	"ReadOnly" boolean NULL,
	"AjaxBehaviour" boolean NULL,
	"TriggerOnFieldChange" varchar(50) NULL,
	"SqlQuery" varchar(5000) NULL,
	"AutoCode" varchar(50) NULL,
	"CodeLength" varchar(50) NULL,
	"Prefix" varchar(50) NULL,
	"RegularExpression" text NULL,
	"ControlID" varchar(50) NULL,
	"Event" varchar(20) NULL,
	"OnLoad" boolean NULL,
	"OnChangeQuery" varchar(5000) NULL,
	"P_key" boolean NULL,
	"TextType" varchar(10) NULL,
	"RequiredInList" boolean NULL,
	"NumericLength" varchar(10) NULL,
	"FilterColumn" varchar(200) NULL,
	"JoinCondition" varchar(7000) NULL,
	"RequiredToSave" boolean NULL,
	"FilterOperator" varchar(3) NULL,
	"ControlText" varchar(1000) NULL,
	"ControlTextQuery" varchar(5000) NULL,
	"ErrorMsg" varchar(200) NULL,
	"groupid" integer NULL,
	"ListCondition" varchar(250) NULL,
	"DetailsTableName" text NULL,
	"n_DetailsTable_flag" integer NULL,
	"PK_alias_name" varchar(100) NULL,
	"n_modifier" integer NULL,
	"n_NameOrShName" integer NULL,
	"n_Validator" integer NOT NULL,
	"Validator" varchar(100) NULL,
	"TargetValidator" varchar(1000) NULL,
	"RequiredToupdate" integer NULL,
	"n_order" integer NULL,
	"n_combination" integer NOT NULL,
	"n_editQuery" integer NOT NULL,
	"editQuery" text NULL,
	"EditFilterColumn" varchar(1000) NULL,
	"N_Split" integer NULL,
	"Split_char" varchar(10) NULL,
	"N_from_Master" integer NULL,
	"Requiredupdate" integer NULL,
	"Requiredsave" integer NULL,
	"N_role" integer NULL,
	"n_pop_up" integer NOT NULL,
	"LabelDisplay2" varchar(100) NULL,
	"C_SqlParameter" varchar(200) NULL,
	"n_dsca_type" integer NULL
) 
;
/****** Object:  Table "Tbl_ED_ZipExcel_Temp_Upload"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_ED_ZipExcel_Temp_Upload"(
	"n_srno" SERIAL NOT NULL,
	"Type_Brand_Item" varchar(50) NULL,
	"Brand_Code" varchar(100) NULL,
	"Category_Code" varchar(100) NULL,
	"VA_NAME" text NULL,
	"VA_PAGENAME" text NULL,
	"ZIP_FILENAME" varchar(500) NULL,
	"ZIP_FILEPATH" varchar(500) NULL,
	"Slide1_File" varchar(50) NULL,
	"Slide1" varchar(50) NULL,
	"Slide2_File" varchar(50) NULL,
	"Slide2" varchar(50) NULL,
	"Slide3_File" varchar(50) NULL,
	"Slide3" varchar(50) NULL,
	"Slide4_File" varchar(50) NULL,
	"Slide4" varchar(50) NULL,
	"Slide5_File" varchar(50) NULL,
	"Slide5" varchar(50) NULL,
	"Slide6_File" varchar(50) NULL,
	"Slide6" varchar(50) NULL,
	"Slide7_File" varchar(50) NULL,
	"Slide7" varchar(50) NULL,
	"Slide8_File" varchar(50) NULL,
	"Slide8" varchar(50) NULL,
	"Slide9_File" varchar(50) NULL,
	"Slide9" varchar(50) NULL,
	"Slide10_File" varchar(50) NULL,
	"Slide10" varchar(50) NULL,
	"Slide11_File" varchar(50) NULL,
	"Slide11" varchar(50) NULL,
	"Slide12_File" varchar(50) NULL,
	"Slide12" varchar(50) NULL,
	"Slide13_File" varchar(50) NULL,
	"Slide13" varchar(50) NULL,
	"Slide14_File" varchar(50) NULL,
	"Slide14" varchar(50) NULL,
	"Slide15_File" varchar(50) NULL,
	"Slide15" varchar(50) NULL,
	"Slide16_File" varchar(50) NULL,
	"Slide16" varchar(50) NULL,
	"Slide17_File" varchar(50) NULL,
	"Slide17" varchar(50) NULL,
	"Slide18_File" varchar(50) NULL,
	"Slide18" varchar(50) NULL,
	"Slide19_File" varchar(50) NULL,
	"Slide19" varchar(50) NULL,
	"Slide20_File" varchar(50) NULL,
	"Slide20" varchar(50) NULL,
	"Slide21_File" varchar(50) NULL,
	"Slide21" varchar(50) NULL,
	"Slide22_File" varchar(50) NULL,
	"Slide22" varchar(50) NULL,
	"Slide23_File" varchar(50) NULL,
	"Slide23" varchar(50) NULL,
	"Slide24_File" varchar(50) NULL,
	"Slide24" varchar(50) NULL,
	"Slide25_File" varchar(50) NULL,
	"Slide25" varchar(50) NULL,
	"Slide26_File" varchar(50) NULL,
	"Slide26" varchar(50) NULL,
	"Slide27_File" varchar(50) NULL,
	"Slide27" varchar(50) NULL,
	"Slide28_File" varchar(50) NULL,
	"Slide28" varchar(50) NULL,
	"Slide29_File" varchar(50) NULL,
	"Slide29" varchar(50) NULL,
	"Slide30_File" varchar(50) NULL,
	"Slide30" varchar(50) NULL,
	"d_date" varchar(20) NULL,
	"c_emp_no" varchar(50) NULL,
	"c_azure_url" text NULL,
	"c_azurehtml_urls" text NULL
) 
;
/****** Object:  Table "tbl_edetail_doc_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_edetail_doc_mst"(
	"c_code" varchar(10) NOT NULL,
	"c_doc_nm" varchar(500) NULL,
	"c_doc_desc" varchar(2000) NULL,
	"d_frmdate" timestamp NULL,
	"d_todate" timestamp NULL,
	"n_active" integer NULL,
	"c_doc_path" varchar(500) NULL,
	"n_deleted" integer NULL,
	"d_modifiedby" timestamp NULL,
	"d_createdby" timestamp NULL,
	"c_modifiedby" varchar(10) NULL,
	"c_createdby" varchar(10) NULL,
	"C_FileName" varchar(500) NULL,
 CONSTRAINT "PK_tbl_elearning_doc_mst" PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "tbl_Edetail_File_Download_Data"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Edetail_File_Download_Data"(
	"n_Id" SERIAL NOT NULL,
	"c_fscode" varchar(50) NULL,
	"c_empcode" varchar(50) NULL,
	"c_filename" varchar(1000) NULL,
	"n_filesize" numeric(30, 0) NULL,
	"d_downloadStartdate" timestamp NULL,
	"d_downloadEnddate" timestamp NULL,
	"c_downloadspeed" varchar(50) NULL,
	"c_Downloadtype" varchar(20) NULL,
	"c_ip" varchar(50) NULL,
PRIMARY KEY  
(
	"n_Id" 
) 
) 
;
/****** Object:  Table "tbl_edetail_greetings_setup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_edetail_greetings_setup"(
	"n_srno" SERIAL NOT NULL,
	"n_type" integer NULL,
	"c_division_code" text NULL,
	"c_region_code" text NULL,
	"c_message_details" text NULL,
	"c_message_line" text NULL,
	"n_deleted" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "tbl_edetail_mkt_emp_rel"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_edetail_mkt_emp_rel"(
	"c_fs_code" varchar(10) NOT NULL,
	"c_emp_code" varchar(10) NOT NULL,
	"d_date_from" timestamp NOT NULL,
	"d_date_to" timestamp NULL,
	"d_modified" timestamp NULL,
 CONSTRAINT "PK_tbl_edetail_mkt_emp_rel" PRIMARY KEY  
(
	"c_fs_code" ,
	"c_emp_code" ,
	"d_date_from" 
) 
) 
;
/****** Object:  Table "tbl_edetail_mkt_emp_rel_29102021"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_edetail_mkt_emp_rel_29102021"(
	"c_fs_code" varchar(10) NOT NULL,
	"c_emp_code" varchar(10) NOT NULL,
	"d_date_from" timestamp NOT NULL,
	"d_date_to" timestamp NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "tbl_edetail_multi_approval"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_edetail_multi_approval"(
	"n_srno" SERIAL NOT NULL,
	"n_type" integer NULL,
	"C_Emp_Code" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_edetail_multi_category"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_edetail_multi_category"(
	"n_srno" integer NOT NULL,
	"c_category" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_edetail_multi_category_history_new"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_edetail_multi_category_history_new"(
	"n_srno" integer NOT NULL,
	"c_category" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_edetail_multi_category_history_old"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_edetail_multi_category_history_old"(
	"n_srno" integer NOT NULL,
	"c_category" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_edetail_Region_map"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_edetail_Region_map"(
	"n_srno" integer NOT NULL,
	"c_edetail_code" varchar(50) NOT NULL,
	"c_region_code" varchar(50) NOT NULL,
	"d_date_from" timestamp NOT NULL,
	"d_date_to" timestamp NOT NULL,
	"c_note" varchar(500) NULL,
	"n_deleted" smallint NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(50) NULL,
	"n_active" integer NULL
) 
;
/****** Object:  Table "tbl_edetail_statusbar_freeze"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_edetail_statusbar_freeze"(
	"c_div_code" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_edetail_subtit_forward_history"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_edetail_subtit_forward_history"(
	"n_title_code" integer NULL,
	"n_subtitle_code" integer NULL,
	"c_emp_from" varchar(20) NULL,
	"c_emp_to" varchar(20) NULL,
	"c_note" varchar(250) NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "tbl_edetail_SubTitle_forward"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_edetail_SubTitle_forward"(
	"N_Title_Code" integer NULL,
	"N_Subtitle_Code" integer NULL,
	"c_Forward_to" varchar(20) NULL,
	"C_Note" varchar(500) NULL
) 
;
/****** Object:  Table "tbl_edetail_subtittle_doc_map"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_edetail_subtittle_doc_map"(
	"c_item_code" varchar(20) NULL,
	"c_sub_tittle_code" varchar(20) NULL,
	"c_document_code" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_edetail_subtittle_doc_map_history"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_edetail_subtittle_doc_map_history"(
	"c_item_code" varchar(20) NULL,
	"c_sub_tittle_code" varchar(20) NULL,
	"c_document_code" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_edetail_subtittle_doc_map_history_old"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_edetail_subtittle_doc_map_history_old"(
	"c_item_code" varchar(20) NULL,
	"c_sub_tittle_code" varchar(20) NULL,
	"c_document_code" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_edetail_title_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_edetail_title_det"(
	"n_title_code" integer NULL,
	"c_caption" varchar(50) NULL,
	"c_imagepath" varchar(500) NULL,
	"n_srno" integer NULL,
	"n_deleted" integer NOT NULL,
	"n_sort_order" integer NOT NULL,
	"n_priority" integer NULL,
	"c_forward_to" varchar(20) NULL,
	"c_package_name" varchar(200) NULL,
	"c_title_code" varchar(10) NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_zip_load_pagename" varchar(100) NULL,
	"c_FileSize" varchar(100) NULL,
	"c_azure_file_path" varchar(1000) NULL,
	"c_folder_file_path" varchar(1000) NULL,
	"c_file_extn" varchar(200) NULL,
	"c_file_type" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_edetail_title_det_changed_history"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_edetail_title_det_changed_history"(
	"n_title_code" integer NULL,
	"c_caption" varchar(50) NULL,
	"c_imagepath" varchar(500) NULL,
	"n_srno" integer NULL,
	"n_deleted" integer NOT NULL,
	"n_sort_order" integer NOT NULL,
	"n_priority" integer NULL,
	"c_forward_to" varchar(20) NULL,
	"c_package_name" varchar(200) NULL,
	"c_title_code" varchar(10) NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_zip_load_pagename" varchar(100) NULL,
	"c_FileSize" varchar(1000) NULL,
	"n_srno_mst" bigint NULL,
	"c_azure_file_path" varchar(1000) NULL,
	"c_folder_file_path" varchar(1000) NULL,
	"c_file_extn" varchar(200) NULL,
	"c_file_type" varchar(20) NULL,
	"n_srno_det" bigint NULL
) 
;
/****** Object:  Table "tbl_edetail_title_det_history"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_edetail_title_det_history"(
	"n_title_code" integer NULL,
	"c_caption" varchar(50) NULL,
	"c_imagepath" varchar(500) NULL,
	"n_srno" integer NULL,
	"n_deleted" integer NOT NULL,
	"n_sort_order" integer NOT NULL,
	"n_priority" integer NULL,
	"c_forward_to" varchar(20) NULL,
	"c_package_name" varchar(200) NULL,
	"c_title_code" varchar(10) NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_zip_load_pagename" varchar(100) NULL,
	"c_FileSize" varchar(1000) NULL,
	"n_srno_mst" bigint NULL,
	"c_azure_file_path" varchar(1000) NULL,
	"c_folder_file_path" varchar(1000) NULL,
	"c_file_extn" varchar(200) NULL,
	"c_file_type" varchar(20) NULL,
	"n_srno_det" bigint NULL
) 
;
/****** Object:  Table "tbl_edetail_title_forward"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_edetail_title_forward"(
	"N_Title_Code" varchar(20) NULL,
	"C_Emp_From" varchar(20) NULL,
	"C_Emp_to" varchar(20) NULL,
	"d_created_date" timestamp NULL,
	"c_note" varchar(250) NULL
) 
;
/****** Object:  Table "tbl_edetail_title_forward_history"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_edetail_title_forward_history"(
	"n_title_code" integer NULL,
	"c_emp_from" varchar(20) NULL,
	"c_emp_to" varchar(20) NULL,
	"c_note" varchar(250) NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "tbl_edetail_Title_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_edetail_Title_Mst"(
	"n_srno" integer NOT NULL,
	"c_title" varchar(250) NOT NULL,
	"c_prodcode" varchar(50) NULL,
	"c_doc_type" varchar(50) NULL,
	"n_active" integer NULL,
	"n_deleted" integer NOT NULL,
	"D_CREATED" timestamp NULL,
	"D_MODIFIED" timestamp NULL,
	"C_fs_code" varchar(10) NULL,
	"C_Status" varchar(10) NULL,
	"c_approver" varchar(10) NULL,
	"c_confirmer" varchar(10) NULL,
	"c_reject" varchar(10) NULL,
	"c_note" varchar(300) NULL,
	"n_type" integer NULL,
	"n_history" bigint NULL,
	"n_history_active" integer NULL
) 
;
/****** Object:  Table "tbl_edetail_Title_Mst_Changed_history"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_edetail_Title_Mst_Changed_history"(
	"n_srno" integer NOT NULL,
	"c_title" varchar(250) NOT NULL,
	"c_prodcode" varchar(50) NULL,
	"c_doc_type" varchar(50) NULL,
	"n_active" integer NULL,
	"n_deleted" integer NOT NULL,
	"D_CREATED" timestamp NULL,
	"D_MODIFIED" timestamp NULL,
	"C_fs_code" varchar(10) NULL,
	"C_Status" varchar(10) NULL,
	"c_approver" varchar(10) NULL,
	"c_confirmer" varchar(10) NULL,
	"c_reject" varchar(10) NULL,
	"c_note" varchar(300) NULL,
	"n_type" integer NULL,
	"n_srno_mst" bigint NULL,
	"d_status_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_edetail_Title_Mst_History"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_edetail_Title_Mst_History"(
	"n_srno" integer NOT NULL,
	"c_title" varchar(250) NOT NULL,
	"c_prodcode" varchar(50) NULL,
	"c_doc_type" varchar(50) NULL,
	"n_active" integer NULL,
	"n_deleted" integer NOT NULL,
	"D_CREATED" timestamp NULL,
	"D_MODIFIED" timestamp NULL,
	"C_fs_code" varchar(10) NULL,
	"C_Status" varchar(10) NULL,
	"c_approver" varchar(10) NULL,
	"c_confirmer" varchar(10) NULL,
	"c_reject" varchar(10) NULL,
	"c_note" varchar(300) NULL,
	"n_type" integer NULL,
	"n_srno_mst" bigint NULL,
	"d_status_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_edetail_Video_multi_region"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_edetail_Video_multi_region"(
	"n_srno" integer NOT NULL,
	"c_edetail_code" varchar(50) NOT NULL,
	"c_region_code" varchar(50) NOT NULL,
	"d_date_from" timestamp NOT NULL,
	"d_date_to" timestamp NOT NULL,
	"n_deleted" smallint NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_edetail_Video_Upload"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_edetail_Video_Upload"(
	"n_srno" SERIAL NOT NULL,
	"c_title" varchar(250) NOT NULL,
	"n_active" integer NULL,
	"n_deleted" integer NOT NULL,
	"D_CREATED" timestamp NULL,
	"D_MODIFIED" timestamp NULL,
	"C_fs_code" varchar(10) NULL,
	"C_Status" varchar(10) NULL,
	"c_approver" varchar(10) NULL,
	"c_confirmer" varchar(10) NULL,
	"c_reject" varchar(10) NULL,
	"C_NOTE" varchar(300) NULL,
 CONSTRAINT "PK_tbl_edetail_Video_Upload" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_Edetail_VisualAid_approval"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Edetail_VisualAid_approval"(
	"n_title_code" numeric(18, 0) NOT NULL,
	"d_date" timestamp NULL,
	"c_status" varchar(5) NULL,
	"c_note" varchar(250) NULL,
	"c_enteredbyempcode" varchar(20) NOT NULL,
	"c_enteredbyfscode" varchar(20) NOT NULL,
	"n_reject_type" integer NULL,
	"n_fsType" integer NULL,
	"c_AprSts" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_Edetail_VisualAid_approval_new"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Edetail_VisualAid_approval_new"(
	"n_title_code" numeric(18, 0) NOT NULL,
	"d_date" timestamp NULL,
	"c_status" varchar(5) NULL,
	"c_note" varchar(250) NULL,
	"c_enteredbyempcode" varchar(20) NOT NULL,
	"c_enteredbyfscode" varchar(20) NOT NULL,
	"n_reject_type" integer NULL,
	"n_fsType" integer NULL,
	"c_AprSts" varchar(20) NULL,
	"n_hist_srno" bigint NULL
) 
;
/****** Object:  Table "tbl_Edetail_VisualAid_approval_old"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Edetail_VisualAid_approval_old"(
	"n_title_code" numeric(18, 0) NOT NULL,
	"d_date" timestamp NULL,
	"c_status" varchar(5) NULL,
	"c_note" varchar(250) NULL,
	"c_enteredbyempcode" varchar(20) NOT NULL,
	"c_enteredbyfscode" varchar(20) NOT NULL,
	"n_reject_type" integer NULL,
	"n_fsType" integer NULL,
	"c_AprSts" varchar(20) NULL,
	"n_hist_srno" bigint NULL
) 
;
/****** Object:  Table "tbl_edetailDocitem_map"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_edetailDocitem_map"(
	"c_doc_code" varchar(20) NULL,
	"c_item_code" varchar(20) NULL,
	"n_deleted" integer NULL
) 
;
/****** Object:  Table "tbl_edi_sample_process"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_edi_sample_process"(
	"c_depo_code" char(15) NOT NULL,
	"c_year" char(2) NOT NULL,
	"c_prefix" char(2) NOT NULL,
	"n_srno" numeric(12, 0) NOT NULL,
	"d_date" timestamp NULL,
	"c_item_code" char(20) NOT NULL,
	"c_item_name" char(50) NOT NULL,
	"c_batch_no" char(20) NOT NULL,
	"n_qty" numeric(9, 0) NULL,
	"n_srt" numeric(12, 4) NULL,
	"c_rep_code" char(20) NULL,
	"c_rep_name" char(50) NULL,
	"c_add_1" char(50) NULL,
	"c_add_2" char(50) NULL,
	"c_add_3" char(50) NULL,
	"c_add_4" char(50) NULL,
	"c_pin" char(15) NULL,
	"c_phone" char(20) NULL,
	"c_mobile" char(15) NULL,
	"c_email" char(30) NULL,
	"n_cancel_flag" numeric(1, 0) NULL,
PRIMARY KEY  
(
	"c_depo_code" ,
	"c_year" ,
	"c_prefix" ,
	"n_srno" ,
	"c_item_code" ,
	"c_batch_no" 
) 
) 
;
/****** Object:  Table "tbl_email_doctor_mapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_email_doctor_mapping"(
	"c_dr_code" text NOT NULL,
	"c_createdby" varchar(50) NULL,
	"d_createddate" timestamp NULL
) 
;
/****** Object:  Table "tbl_email_engine_setup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_email_engine_setup"(
	"n_srno" SERIAL NOT NULL,
	"n_type" integer NULL,
	"c_Division_Code" text NULL,
	"c_Region_Code" text NULL,
	"n_deleted" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "Tbl_Email_Inbox"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Email_Inbox"(
	"n_inboxid" SERIAL NOT NULL,
	"c_fromuserid" text NULL,
	"c_ToUserID" text NULL,
	"c_cc" text NULL,
	"d_Created" timestamp NOT NULL,
	"c_Subject" varchar(255) NULL,
	"c_Body" text NULL,
	"c_filepath" text NULL,
	"n_parentid" integer NULL,
	"n_trash_moved" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_email_inbox_history"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_email_inbox_history"(
	"n_inboxid" integer NOT NULL,
	"n_Rowid" integer NOT NULL,
	"c_Receivedmailid" varchar(100) NOT NULL,
	"n_ReceivedType" varchar(3) NULL,
	"n_Sent" integer NOT NULL,
	"n_Trash" integer NOT NULL,
	"n_Draft" integer NOT NULL,
	"n_delete" integer NULL,
	"n_deletefromtrash" integer NULL,
	"n_read" integer NULL,
	"d_datetime" timestamp NULL
) 
;
/****** Object:  Table "tbl_emp_incent"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_emp_incent"(
	"C_candidateID" varchar(10) NOT NULL,
	"c_incent" varchar(5000) NOT NULL,
 CONSTRAINT "PK_tbl_emp_incent" PRIMARY KEY  
(
	"C_candidateID" 
) 
) 
;
/****** Object:  Table "tbl_Emp_LeaveDetails"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Emp_LeaveDetails"(
	"N_srno" integer NOT NULL,
	"n_LeaveTypeId" integer NOT NULL,
	"n_MaxLimit" integer NULL,
	"n_CF" integer NULL,
	"n_CFLimit" integer NULL,
	"n_EnCash" integer NULL,
	"n_EnLimit" integer NULL,
	"n_total_leave_limit" integer NULL,
	"n_display_report" integer NULL
) 
;
/****** Object:  Table "Tbl_emp_MandatoryCircular"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_emp_MandatoryCircular"(
	"c_emp_code" varchar(10) NULL,
	"c_fs_code" varchar(10) NULL,
	"C_Code" varchar(100) NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_emp_metro"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_emp_metro"(
	"c_metro" varchar(5000) NULL,
	"c_town" varchar(5000) NULL
) 
;
/****** Object:  Table "Tbl_Emp_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Emp_Mst"(
	"C_EmpCode" varchar(10) NOT NULL,
	"C_NAMEPREFIX" varchar(6) NULL,
	"C_Name" varchar(50) NULL,
	"C_Grade" char(10) NULL,
	"C_Qualification" varchar(30) NULL,
	"C_Add_1" varchar(50) NULL,
	"C_Add_2" varchar(50) NULL,
	"C_Add_3" varchar(50) NULL,
	"C_Add_4" varchar(50) NULL,
	"C_Pin" char(10) NULL,
	"C_Mobile_No" varchar(50) NULL,
	"C_OFFICE_PHONE_NO" varchar(20) NULL,
	"C_OFFICE_PHONE_EXTNNO" varchar(20) NULL,
	"C_Fax" char(20) NULL,
	"C_Desc" varchar(50) NULL,
	"C_SEX" char(3) NULL,
	"D_DOB" timestamp NULL,
	"D_DOJ" timestamp NULL,
	"D_CONF_DATE" timestamp NULL,
	"D_DOW" timestamp NULL,
	"C_EMAIL_OFFICE" varchar(50) NULL,
	"C_EMAIL_PERSONAL" varchar(50) NULL,
	"C_Desig" varchar(20) NULL,
	"c_bankcode" varchar(100) NULL,
	"C_Accno" varchar(50) NULL,
	"N_Deleted" integer NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"C_DEPT_CODE" varchar(10) NULL,
	"C_LOC_CODE" varchar(10) NULL,
	"D_RELIEVE_DATE" timestamp NULL,
	"C_ROLE" varchar(10) NULL,
	"C_JobDesc" varchar(50) NULL,
	"C_Hq_Address" varchar(200) NULL,
	"C_PAdd_1" varchar(200) NULL,
	"C_PAdd_2" varchar(200) NULL,
	"C_PAdd_3" varchar(200) NULL,
	"C_PAdd_4" varchar(200) NULL,
	"C_MAdd_1" varchar(200) NULL,
	"C_MAdd_2" varchar(200) NULL,
	"C_MAdd_3" varchar(200) NULL,
	"C_MAdd_4" varchar(200) NULL,
	"c_branch_name" varchar(100) NULL,
	"c_rtgs_neft" varchar(12) NULL,
	"c_hq_pin" varchar(50) NULL,
	"c_padd_pin" varchar(50) NULL,
	"c_madd_pin" varchar(50) NULL,
	"c_emp_type" integer NULL,
	"c_pan" varchar(10) NULL,
	"c_auto_report_email" varchar(50) NULL,
	"c_email_pwd" varchar(50) NULL,
	"Name_InAadhar" varchar(500) NULL,
	"Aadhar_No" varchar(20) NULL,
	"DOB_InAadhar" timestamp NULL,
	"AdharImgPath" varchar(200) NULL,
	"C_ESI_NO" varchar(15) NULL,
	"C_ADHAR_NO" varchar(50) NULL,
	"C_EMERGENCYMOBILE_NO" varchar(20) NULL,
	"C_CONTACTNAME" varchar(200) NULL,
	"C_profile_Image" text NULL,
 CONSTRAINT "Pk_Tbl_Emp_Mst" PRIMARY KEY  
(
	"C_EmpCode" 
) 
) 
;
/****** Object:  Table "Tbl_Emp_parent_fs"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Emp_parent_fs"(
	"C_EmpCode" varchar(10) NOT NULL,
	"C_ParentCode" varchar(10) NULL,
	"C_FSCode" varchar(10) NULL,
 CONSTRAINT "PK_Tbl_Emp_parent_fs" PRIMARY KEY  
(
	"C_EmpCode" 
) 
) 
;
/****** Object:  Table "tbl_emp_resign_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_emp_resign_mst"(
	"n_srno" SERIAL NOT NULL,
	"c_emp_code" varchar(10) NULL,
	"d_closing_date" timestamp NULL,
	"d_date" timestamp NULL,
	"c_filepath" varchar(200) NULL,
	"c_remarks" varchar(200) NULL,
	"c_status" varchar(50) NULL,
	"c_ConfirmedBy" varchar(10) NULL,
	"d_ConfirmedDate" timestamp NULL,
	"c_ConfirmedNote" varchar(200) NULL,
	"c_fs_code" varchar(10) NULL,
	"c_fscode_Enteredby" varchar(10) NULL
) 
;
/****** Object:  Table "tbl_emp_terms"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_emp_terms"(
	"C_candidateID" varchar(10) NULL,
	"c_terms" varchar(5000) NULL
) 
;
/****** Object:  Table "tbl_error_log_HtmlReportGenerator"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_error_log_HtmlReportGenerator"(
	"n_id" integer NULL,
	"c_error" text NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_EventPlaner_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_EventPlaner_mst"(
	"c_code" varchar(10) NOT NULL,
	"c_name" varchar(100) NULL,
	"c_division" text NULL,
	"c_region" text NULL,
	"n_status" numeric(18, 0) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"d_EventDate" timestamp NOT NULL,
 CONSTRAINT "PK_tbl_EventPlaner_mst" PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "Tbl_Excel_File"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Excel_File"(
	"N_Srno" integer NULL,
	"C_Display_Name" varchar(50) NULL,
	"C_Excel_Name" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_excel_generation_rpt_name"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_excel_generation_rpt_name"(
	"n_srno" SERIAL NOT NULL,
	"n_id" integer NULL,
	"c_report_name" varchar(100) NULL,
	"n_flag" integer NOT NULL,
	"n_deleted" integer NOT NULL
) 
;
/****** Object:  Table "Tbl_Excelupload_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Excelupload_Mst"(
	"C_CompID" varchar(50) NOT NULL,
	"C_CompFolder" varchar(50) NOT NULL,
	"C_Path" varchar(100) NULL,
 CONSTRAINT "PK_Tbl_Excelupload_Mst" PRIMARY KEY  
(
	"C_CompID" 
) 
) 
;
/****** Object:  Table "tbl_ExpClaimFormat_MultiApproval"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_ExpClaimFormat_MultiApproval"(
	"n_SetupNo" bigint NULL,
	"n_HeirarchyType" integer NULL
) 
;
/****** Object:  Table "tbl_ExpenceClaim_PrpRps"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_ExpenceClaim_PrpRps"(
	"N_Srno" integer NULL,
	"N_PRPRPS" numeric(18, 0) NOT NULL,
	"C_Event" varchar(50) NOT NULL,
	"N_ActualExpence" numeric(18, 2) NOT NULL,
	"N_AdvanceReceived" numeric(18, 2) NOT NULL,
	"N_AddRecovery" numeric(18, 2) NULL
) 
;
/****** Object:  Table "Tbl_Expense"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Expense"(
	"C_FS_CODE" varchar(10) NOT NULL,
	"D_DATE" timestamp NOT NULL,
	"N_TA" numeric(18, 2) NULL,
	"N_DA" numeric(18, 2) NULL,
	"N_DA_APP" numeric(18, 2) NULL,
	"N_TA_APP" numeric(18, 2) NULL,
	"N_TOT_KM" numeric(18, 2) NULL,
	"N_EXPA" numeric(18, 2) NULL,
	"N_EXPB" numeric(18, 2) NULL,
	"N_EXPC" numeric(18, 2) NULL,
	"N_EXPA_APP" numeric(18, 2) NULL,
	"N_EXPB_APP" numeric(18, 2) NULL,
	"N_EXPC_APP" numeric(18, 2) NULL,
	"N_APPROVED" numeric(18, 0) NULL,
	"N_CONFIRMED" numeric(18, 0) NULL,
	"C_NOTE" varchar(100) NULL,
	"C_PLACE_VISIT" varchar(100) NULL,
	"C_EMP_CODE" varchar(10) NOT NULL,
	"n_AdditionalTA" numeric(18, 2) NULL,
 CONSTRAINT "PK_Tbl_Expense" PRIMARY KEY  
(
	"C_FS_CODE" ,
	"D_DATE" ,
	"C_EMP_CODE" 
) 
) 
;
/****** Object:  Table "TBL_Expense_Account_Det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "TBL_Expense_Account_Det"(
	"N_Srno" integer NULL,
	"C_EmpCode" varchar(50) NULL,
	"C_Bank_Name" varchar(250) NULL,
	"C_Account_No" varchar(50) NULL,
	"C_Branch_Name" varchar(250) NULL,
	"C_IFSC" varchar(50) NULL,
	"N_Deleted" integer NULL,
	"C_Bank_Code" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_expense_beneficiary_details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_expense_beneficiary_details"(
	"n_srno" numeric(18, 0) NULL,
	"c_beneficiary" varchar(100) NULL,
	"c_PaymentChequeNo" varchar(100) NULL,
	"d_PaymentDate" timestamp NULL,
	"c_PaymentDetails" varchar(200) NULL,
	"n_PaymentAmount" numeric(18, 2) NULL,
	"n_rowid" integer NULL,
	"n_status" integer NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_expense_beneficiary_details_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_expense_beneficiary_details_log"(
	"n_srno" numeric(18, 0) NULL,
	"c_beneficiary" varchar(100) NULL,
	"c_PaymentChequeNo" varchar(100) NULL,
	"d_PaymentDate" timestamp NULL,
	"c_PaymentDetails" varchar(200) NULL,
	"n_PaymentAmount" numeric(18, 2) NULL,
	"n_rowid" integer NULL,
	"n_status" integer NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_expense_daily_file_upload"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_expense_daily_file_upload"(
	"id" SERIAL NOT NULL,
	"n_srno" integer NULL,
	"d_date" timestamp NULL,
	"c_file" text NULL,
	"c_FileName" varchar(500) NULL,
	"c_billtype" varchar(50) NULL,
	"c_billnumber" varchar(100) NULL,
	"c_billamount" numeric(18, 2) NULL,
	"C_Docpath" text NULL,
 CONSTRAINT "PK__tbl_expe__3213E83F9DD17EA6" PRIMARY KEY  
(
	"id" 
) 
) 
;
/****** Object:  Table "tbl_expense_daily_file_upload_android"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_expense_daily_file_upload_android"(
	"id" SERIAL NOT NULL,
	"n_srno" integer NULL,
	"d_date" timestamp NULL,
	"c_file" text NULL,
	"c_FileName" varchar(500) NULL,
	"c_billtype" varchar(50) NULL,
	"c_billnumber" varchar(100) NULL,
	"c_billamount" numeric(18, 2) NULL,
	"C_Docpath" text NULL
) 
;
/****** Object:  Table "tbl_expense_file_details_android"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_expense_file_details_android"(
	"id" SERIAL NOT NULL,
	"n_srno" integer NULL,
	"c_fscode" varchar(100) NULL,
	"c_empcode" varchar(100) NULL,
	"c_claimtype" varchar(100) NULL,
	"d_datefrom" timestamp NULL,
	"d_dateto" timestamp NULL
) 
;
/****** Object:  Table "tbl_Expense_LockActivation"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Expense_LockActivation"(
	"c_fs_code" varchar(20) NOT NULL,
	"d_ExpPeriod_From" timestamp NULL,
	"d_ExpPeriod_To" timestamp NULL,
	"d_ExpEntryExtended_From" timestamp NULL,
	"d_ExpEntryExtended_To" timestamp NULL,
	"c_Remark" varchar(500) NULL,
	"c_ModifiedBy" varchar(20) NULL,
	"d_Modified" timestamp NULL
) 
;
/****** Object:  Table "tbl_Expense_LockActivation_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Expense_LockActivation_log"(
	"c_fs_code" varchar(20) NOT NULL,
	"d_ExpPeriod_From" timestamp NULL,
	"d_ExpPeriod_To" timestamp NULL,
	"d_ExpEntryExtended_From" timestamp NULL,
	"d_ExpEntryExtended_To" timestamp NULL,
	"c_Remark" varchar(500) NULL,
	"c_ModifiedBy" varchar(20) NULL,
	"d_Modified" timestamp NULL
) 
;
/****** Object:  Table "Tbl_Expense_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Expense_Mst"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NULL,
	"n_Upper_Amount" numeric(18, 2) NULL,
	"C_Account_code" varchar(6) NULL,
	"N_Type" integer NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"n_visible" integer NOT NULL,
 CONSTRAINT "PK_Tbl_Expense_Mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "Tbl_Expense_Request_Management"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Expense_Request_Management"(
	"n_srno" numeric(18, 0) NOT NULL,
	"c_fs_code" varchar(100) NULL,
	"n_NextHeirarchyType" integer NULL,
	"c_NextHeirarchyFSCode" varchar(100) NULL,
	"n_setupid" integer NULL,
	"n_status" integer NULL,
	"d_Modifieddate" timestamp NULL,
	"n_apprequired" integer NULL,
	"n_SingleOrMultiple" integer NULL,
	"c_DeskCode" varchar(50) NULL,
	"n_submit" integer NULL,
	"n_confirmsubmit" integer NULL,
	"c_empno" varchar(20) NULL,
	"c_approvedby" varchar(2000) NULL,
	"c_confirmedby" varchar(100) NULL,
 CONSTRAINT "PK_Tbl_Expense_Request_Management" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_expenseApproval_ErrorChecking"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_expenseApproval_ErrorChecking"(
	"c_queryupdated" text NULL,
	"d_dateupdated" timestamp NULL
) 
;
/****** Object:  Table "tbl_expenseApproval_ErrorChecking_ForApprovalStaus"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_expenseApproval_ErrorChecking_ForApprovalStaus"(
	"c_srno" varchar(1000) NULL,
	"c_staus" varchar(1000) NULL,
	"d_dateapproved" timestamp NULL
) 
;
/****** Object:  Table "Tbl_ExpenseCategory"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_ExpenseCategory"(
	"N_Type" integer NOT NULL,
	"C_Name" varchar(50) NULL,
	"c_shname" varchar(20) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
 CONSTRAINT "PK_Tbl_ExpenseCategory" PRIMARY KEY  
(
	"N_Type" 
) 
) 
;
/****** Object:  Table "tbl_ExportReport_Tables_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_ExportReport_Tables_mst"(
	"n_id" integer NOT NULL,
	"c_Name" varchar(500) NULL,
	"n_active" integer NULL,
	"d_created" timestamp NULL,
	"c_FileNameStartsWith" varchar(1000) NULL
) 
;
/****** Object:  Table "Tbl_External_Employee_Sale"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_External_Employee_Sale"(
	"c_emp_code" varchar(10) NOT NULL,
	"d_date" timestamp NOT NULL,
	"c_month" varchar(2) NULL,
	"c_year" varchar(4) NULL,
	"c_item_code" varchar(10) NOT NULL,
	"n_qty" numeric(18, 2) NULL,
	"n_value" numeric(18, 2) NULL,
	"n_tgt_qty" numeric(18, 2) NULL,
	"n_tgt_value" numeric(18, 2) NULL,
	"c_group_name" varchar(200) NULL,
	"c_incentive_group_name" varchar(300) NULL,
	"c_incentive_sub_group_name" varchar(500) NULL,
 CONSTRAINT "PK_Tbl_External_Employee_Sale" PRIMARY KEY  
(
	"c_emp_code" ,
	"d_date" ,
	"c_item_code" 
) 
) 
;
/****** Object:  Table "Tbl_External_Stockist_Sale"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_External_Stockist_Sale"(
	"c_stockist_code" varchar(10) NOT NULL,
	"c_stockist_name" varchar(200) NULL,
	"d_date" timestamp NOT NULL,
	"c_month" varchar(2) NULL,
	"c_year" varchar(4) NULL,
	"c_item_code" varchar(10) NOT NULL,
	"n_qty" numeric(18, 2) NULL,
	"n_value" numeric(18, 2) NULL,
	"c_div_code" varchar(10) NULL,
	"c_emp_code" varchar(10) NOT NULL,
 CONSTRAINT "PK_Tbl_External_Stockist_Sale" PRIMARY KEY  
(
	"c_stockist_code" ,
	"d_date" ,
	"c_item_code" ,
	"c_emp_code" 
) 
) 
;
/****** Object:  Table "Tbl_favoritelist"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_favoritelist"(
	"N_typ" integer NULL,
	"C_user" varchar(50) NULL,
	"N_menu_id" varchar(50) NULL,
	"N_order" integer NULL
) 
;
/****** Object:  Table "Tbl_feedback"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_feedback"(
	"c_name" varchar(10) NULL,
	"y_name" varchar(50) NULL,
	"d_designation" varchar(50) NULL,
	"e_address" varchar(50) NULL,
	"p_phoneno" varchar(50) NULL,
	"d_dob" timestamp NULL
) 
;
/****** Object:  Table "Tbl_feedback2"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_feedback2"(
	"list_1" varchar(100) NULL,
	"list_2" varchar(100) NULL,
	"list_3" varchar(100) NULL,
	"list_4" varchar(100) NULL,
	"list_5" varchar(100) NULL,
	"c_companycode" varchar(50) NULL,
	"c_enteredby" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_fmcg_manager_loginlogoutdet"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_fmcg_manager_loginlogoutdet"(
	"n_id" SERIAL NOT NULL,
	"c_fsCode" varchar(50) NULL,
	"c_dsc_code" varchar(50) NULL,
	"c_stk_code" varchar(50) NULL,
	"d_logindate" timestamp NULL,
	"d_logoutdate" timestamp NULL,
	"c_latitude" varchar(100) NULL,
	"c_longitude" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_fmcg_scheme_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_fmcg_scheme_det"(
	"n_id" SERIAL NOT NULL,
	"n_SchHeader_id" integer NULL,
	"c_scheme_c_code" varchar(20) NOT NULL,
	"n_saleqty" numeric(10, 2) NULL,
	"n_salevalue" numeric(16, 2) NULL,
	"n_TotalSales" numeric(16, 2) NULL,
	"n_offerqty" numeric(10, 2) NULL,
	"n_offerrate" numeric(16, 2) NULL,
	"n_offervaleorqty" numeric(16, 2) NULL,
	"n_offerdiscount" numeric(10, 3) NULL,
	"n_typeofrepayment" integer NULL
) 
;
/****** Object:  Table "tbl_fmcg_scheme_header"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_fmcg_scheme_header"(
	"n_id" SERIAL NOT NULL,
	"c_scheme_c_code" varchar(20) NULL,
	"n_salesdefinedon" integer NULL,
	"n_typeofsale" integer NULL,
	"n_salesAganist" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_fmcg_scheme_itemcat_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_fmcg_scheme_itemcat_det"(
	"n_SchHeader_id" integer NULL,
	"c_schemecode_code" varchar(20) NOT NULL,
	"c_itemcat_code" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_fmcg_scheme_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_fmcg_scheme_mst"(
	"c_code" varchar(20) NOT NULL,
	"c_name" varchar(200) NULL,
	"d_dtfrom" timestamp NULL,
	"d_dtto" timestamp NULL,
	"c_description" varchar(500) NULL,
	"n_activelock" integer NULL,
	"n_natureofscheme" integer NULL,
	"n_applicablearea" integer NULL,
	"d_createddate" timestamp NULL,
	"d_modified" timestamp NULL,
	"n_deleted" integer NULL
) 
;
/****** Object:  Table "tbl_fmcg_target_daywise_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_fmcg_target_daywise_det"(
	"C_TargetCode" varchar(10) NOT NULL,
	"C_Item" varchar(10) NULL,
	"n_Rate" numeric(10, 2) NULL,
	"n_Day1" numeric(10, 2) NULL,
	"n_Day2" numeric(10, 2) NULL,
	"n_Day3" numeric(10, 2) NULL,
	"n_Day4" numeric(10, 2) NULL,
	"n_Day5" numeric(10, 2) NULL,
	"n_Day6" numeric(10, 2) NULL,
	"n_Day7" numeric(10, 2) NULL,
	"n_Day8" numeric(10, 2) NULL,
	"n_Day9" numeric(10, 2) NULL,
	"n_Day10" numeric(10, 2) NULL,
	"n_Day11" numeric(10, 2) NULL,
	"n_Day12" numeric(10, 2) NULL,
	"n_Day13" numeric(10, 2) NULL,
	"n_Day14" numeric(10, 2) NULL,
	"n_Day15" numeric(10, 2) NULL,
	"n_Day16" numeric(10, 2) NULL,
	"n_Day17" numeric(10, 2) NULL,
	"n_Day18" numeric(10, 2) NULL,
	"n_Day19" numeric(10, 2) NULL,
	"n_Day20" numeric(10, 2) NULL,
	"n_Day21" numeric(10, 2) NULL,
	"n_Day22" numeric(10, 2) NULL,
	"n_Day23" numeric(10, 2) NULL,
	"n_Day24" numeric(10, 2) NULL,
	"n_Day25" numeric(10, 2) NULL,
	"n_Day26" numeric(10, 2) NULL,
	"n_Day27" numeric(10, 2) NULL,
	"n_Day28" numeric(10, 2) NULL,
	"n_Day29" numeric(10, 2) NULL,
	"n_Day30" numeric(10, 2) NULL,
	"n_Day31" numeric(10, 2) NULL
) 
;
/****** Object:  Table "tbl_fmcg_target_details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_fmcg_target_details"(
	"C_TargetCode" varchar(10) NOT NULL,
	"c_TargetFor" varchar(10) NULL
) 
;
/****** Object:  Table "tbl_fmcg_target_monthwise_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_fmcg_target_monthwise_det"(
	"C_TargetCode" varchar(10) NOT NULL,
	"C_Item" varchar(10) NULL,
	"n_Rate" numeric(10, 2) NULL,
	"n_Jan" numeric(10, 2) NULL,
	"n_Feb" numeric(10, 2) NULL,
	"n_Mar" numeric(10, 2) NULL,
	"n_Apr" numeric(10, 2) NULL,
	"n_May" numeric(10, 2) NULL,
	"n_Jun" numeric(10, 2) NULL,
	"n_Jul" numeric(10, 2) NULL,
	"n_Aug" numeric(10, 2) NULL,
	"n_Sep" numeric(10, 2) NULL,
	"n_Oct" numeric(10, 2) NULL,
	"n_Nov" numeric(10, 2) NULL,
	"n_Dec" numeric(10, 2) NULL
) 
;
/****** Object:  Table "tbl_fmcg_target_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_fmcg_target_mst"(
	"c_code" varchar(10) NOT NULL,
	"c_name" varchar(50) NOT NULL,
	"c_divCode" varchar(10) NULL,
	"c_region" varchar(10) NULL,
	"c_HqFs" varchar(2) NULL,
	"c_TType" varchar(10) NULL,
	"c_ItemType" varchar(10) NULL,
	"c_month" varchar(10) NULL,
	"c_year" varchar(10) NULL,
	"c_Creater" varchar(10) NULL,
	"d_Created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"n_deleted" integer NOT NULL
) 
;
/****** Object:  Table "tbl_fmcg_target_weekwise_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_fmcg_target_weekwise_det"(
	"C_TargetCode" varchar(10) NOT NULL,
	"C_Item" varchar(10) NULL,
	"n_Rate" numeric(10, 2) NULL,
	"n_Week1" numeric(10, 2) NULL,
	"n_Week2" numeric(10, 2) NULL,
	"n_Week3" numeric(10, 2) NULL,
	"n_Week4" numeric(10, 2) NULL,
	"n_Week5" numeric(10, 2) NULL,
	"n_Week6" numeric(10, 2) NULL
) 
;
/****** Object:  Table "Tbl_FMV_Grade"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_FMV_Grade"(
	"N_ID" SERIAL NOT NULL,
	"C_Category_Code" varchar(50) NULL,
	"C_Category_Name" varchar(100) NULL,
	"N_Priority" integer NULL,
	"N_Status" integer NULL,
	"D_CreatedOn" timestamp NULL,
	"C_CreatedBy" varchar(50) NULL,
	"D_ModifiedOn" timestamp NULL,
	"C_ModifiedBy" varchar(50) NULL,
 CONSTRAINT "PK_Tbl_FMV_Grade" PRIMARY KEY  
(
	"N_ID" 
) 
) 
;
/****** Object:  Table "Tbl_FocussedBrands"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_FocussedBrands"(
	"c_Brand_Code" varchar(50) NULL,
	"d_From_Date" timestamp NULL,
	"d_To_Date" timestamp NULL,
	"c_Note" varchar(200) NULL,
	"n_SrNo" integer NOT NULL
) 
;
/****** Object:  Table "tbl_Food_Master"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Food_Master"(
	"c_code" varchar(20) NOT NULL,
	"c_name" varchar(50) NULL,
	"n_deleted" integer NULL,
	"n_status" integer NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
 CONSTRAINT "PK_tbl_Food_Master" PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "tbl_forced_login_setup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_forced_login_setup"(
	"n_srno" SERIAL NOT NULL,
	"c_division_code" text NULL,
	"c_region_code" text NULL,
	"n_setdaysreminder" integer NULL,
	"n_accessblock" integer NULL,
	"n_deleted" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_createdby" varchar(50) NULL
) 
;
/****** Object:  Table "Tbl_FS_Det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_FS_Det"(
	"c_code" varchar(10) NOT NULL,
	"n_type" integer NOT NULL,
	"d_date" timestamp NULL,
	"c_note" varchar(1000) NULL,
 CONSTRAINT "PK_Tbl_FS_Det" PRIMARY KEY  
(
	"c_code" ,
	"n_type" 
) 
) 
;
/****** Object:  Table "tbl_fs_emp_rel"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_fs_emp_rel"(
	"c_fs_code" varchar(10) NOT NULL,
	"c_emp_code" varchar(10) NOT NULL,
	"d_date_from" timestamp NOT NULL,
	"d_date_to" timestamp NULL,
	"d_modified" timestamp NULL,
 CONSTRAINT "PK_tbl_fs_emp_rel" PRIMARY KEY  
(
	"c_fs_code" ,
	"c_emp_code" ,
	"d_date_from" 
) 
) 
;
/****** Object:  Table "tbl_fs_emp_rel_20092021"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_fs_emp_rel_20092021"(
	"c_fs_code" varchar(10) NOT NULL,
	"c_emp_code" varchar(10) NOT NULL,
	"d_date_from" timestamp NOT NULL,
	"d_date_to" timestamp NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "tbl_fs_emp_rel_bkp_21042026"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_fs_emp_rel_bkp_21042026"(
	"c_fs_code" varchar(10) NOT NULL,
	"c_emp_code" varchar(10) NOT NULL,
	"d_date_from" timestamp NOT NULL,
	"d_date_to" timestamp NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "tbl_fs_mandatoryflag_mapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_fs_mandatoryflag_mapping"(
	"c_fs_code" varchar(50) NULL,
	"n_psg_type" integer NULL,
	"n_dsca_type" integer NULL,
	"n_flag" integer NULL,
	"c_modifier" varchar(20) NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_fs_mandatoryflag_mapping_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_fs_mandatoryflag_mapping_log"(
	"c_fs_code" varchar(50) NULL,
	"n_psg_type" integer NULL,
	"n_dsca_type" integer NULL,
	"n_flag" integer NULL,
	"c_modifier" varchar(20) NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "Tbl_FS_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_FS_Mst"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(100) NULL,
	"N_Type" numeric(18, 0) NOT NULL,
	"C_Grade" char(10) NULL,
	"C_Qualification" varchar(30) NULL,
	"C_Add_1" varchar(50) NULL,
	"C_Add_2" varchar(50) NULL,
	"C_Add_3" varchar(50) NULL,
	"C_Add_4" varchar(50) NULL,
	"C_Pin" char(10) NULL,
	"C_Phone" char(20) NULL,
	"C_Fax" char(20) NULL,
	"C_Category" char(10) NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"C_Parent" char(10) NULL,
	"C_EmpNo" varchar(10) NOT NULL,
	"C_Desc" varchar(50) NULL,
	"D_DOB" timestamp NULL,
	"D_DOJ" timestamp NULL,
	"D_DOW" timestamp NULL,
	"n_Status" integer NULL,
	"C_Email_ID" varchar(50) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"N_ptype" integer NULL,
	"c_div_code" varchar(10) NULL,
	"d_relieving_date" timestamp NULL,
 CONSTRAINT "PK_Tbl_FS_Mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "Tbl_FS_Mst_bkp_21042026"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_FS_Mst_bkp_21042026"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(100) NULL,
	"N_Type" numeric(18, 0) NOT NULL,
	"C_Grade" char(10) NULL,
	"C_Qualification" varchar(30) NULL,
	"C_Add_1" varchar(50) NULL,
	"C_Add_2" varchar(50) NULL,
	"C_Add_3" varchar(50) NULL,
	"C_Add_4" varchar(50) NULL,
	"C_Pin" char(10) NULL,
	"C_Phone" char(20) NULL,
	"C_Fax" char(20) NULL,
	"C_Category" char(10) NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"C_Parent" char(10) NULL,
	"C_EmpNo" varchar(10) NOT NULL,
	"C_Desc" varchar(50) NULL,
	"D_DOB" timestamp NULL,
	"D_DOJ" timestamp NULL,
	"D_DOW" timestamp NULL,
	"n_Status" integer NULL,
	"C_Email_ID" varchar(50) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"N_ptype" integer NULL,
	"c_div_code" varchar(10) NULL,
	"d_relieving_date" timestamp NULL
) 
;
/****** Object:  Table "Tbl_FS_Mst_LogTable"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_FS_Mst_LogTable"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"N_Type" numeric(18, 0) NOT NULL,
	"C_Grade" char(10) NULL,
	"C_Qualification" varchar(30) NULL,
	"C_Add_1" varchar(50) NULL,
	"C_Add_2" varchar(50) NULL,
	"C_Add_3" varchar(50) NULL,
	"C_Add_4" varchar(50) NULL,
	"C_Pin" char(10) NULL,
	"C_Phone" char(20) NULL,
	"C_Fax" char(20) NULL,
	"C_Category" char(10) NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"C_Parent" char(10) NULL,
	"C_EmpNo" varchar(10) NOT NULL,
	"C_Desc" varchar(50) NULL,
	"D_DOB" timestamp NULL,
	"D_DOJ" timestamp NULL,
	"D_DOW" timestamp NULL,
	"n_Status" integer NULL,
	"C_Email_ID" varchar(50) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"N_ptype" integer NULL,
	"c_div_code" varchar(10) NULL,
	"d_relieving_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_fs_relieving"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_fs_relieving"(
	"c_empcode" varchar(20) NULL,
	"c_fscode" varchar(20) NULL,
	"d_relievingdate" timestamp NULL,
	"d_date" timestamp NULL,
	"n_activity_process_update_flag" integer NULL
) 
;
/****** Object:  Table "tbl_fs_tab_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_fs_tab_det"(
	"c_empcode" varchar(50) NULL,
	"c_fscode" varchar(50) NULL,
	"c_imei_no" varchar(50) NULL,
	"c_mgrcode" varchar(50) NULL,
	"c_tab_with_whom" varchar(50) NULL,
	"n_status" integer NULL
) 
;
/****** Object:  Table "tbl_fs_token_android"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_fs_token_android"(
	"c_fscode" varchar(50) NULL,
	"c_token_id" text NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_Fscode_DrToDisplay_Mapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Fscode_DrToDisplay_Mapping"(
	"c_fscode" varchar(10) NOT NULL
) 
;
/****** Object:  Table "tbl_Fscode_DrToDisplay_Mapping_Det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Fscode_DrToDisplay_Mapping_Det"(
	"fscode" varchar(50) NULL,
	"c_grade" text NULL,
	"d_modified" timestamp NULL,
	"c_modifiedby" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_fsemp_map"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_fsemp_map"(
	"n_srno" integer NOT NULL,
	"c_fs_code" varchar(10) NOT NULL,
	"c_map_code" varchar(10) NOT NULL,
	"d_from_date" timestamp NOT NULL,
	"d_to_date" timestamp NULL,
	"n_stp_no" integer NULL,
 CONSTRAINT "PK_tbl_fsemp_map" PRIMARY KEY  
(
	"c_fs_code" ,
	"c_map_code" ,
	"d_from_date" 
) 
) 
;
/****** Object:  Table "tbl_fsheirarchy_change"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_fsheirarchy_change"(
	"c_oldfscode" varchar(50) NULL,
	"c_newfscode" varchar(50) NULL,
	"d_date" timestamp NULL,
	"n_doc_update_flag" integer NOT NULL,
	"n_primary_id" SERIAL NOT NULL,
	"n_activity_process_update_flag" integer NULL,
PRIMARY KEY  
(
	"n_primary_id" 
) 
) 
;
/****** Object:  Table "tbl_fsheirarchy_change_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_fsheirarchy_change_log"(
	"c_oldfscode" varchar(50) NULL,
	"c_newfscode" varchar(50) NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_fstype_division_online_mcr_exception"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_fstype_division_online_mcr_exception"(
	"n_fs_type" integer NULL,
	"c_division_code" varchar(20) NULL,
	"n_primary_id" SERIAL  NOT NULL
) 
;
/****** Object:  Table "tbl_Fswisecallavg_Report_Error_Log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Fswisecallavg_Report_Error_Log"(
	"DB" varchar(150) NULL,
	"Date" timestamp NULL,
	"ErrorNumber" integer NULL,
	"ErrorSeverity" integer NULL,
	"ErrorState" integer NULL,
	"ErrorProcedure" varchar(128) NULL,
	"ErrorLine" integer NULL,
	"ErrorMessage" varchar(4000) NULL
) 
;
/****** Object:  Table "tbl_FsWisecallavg_report_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_FsWisecallavg_report_log"(
	"DB" varchar(100) NULL,
	"StartTime" timestamp NULL,
	"EndTime" timestamp NULL,
	"Month" integer NULL,
	"Year" integer NULL
) 
;
/****** Object:  Table "tbl_gadget_group_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_gadget_group_det"(
	"C_GP_Code" varchar(20) NULL,
	"C_Gadget_Code" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_gadget_group_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_gadget_group_mst"(
	"c_code" varchar(10) NOT NULL,
	"c_name" varchar(50) NOT NULL,
	"n_active" boolean NOT NULL,
	"n_deleted" integer NOT NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(50) NULL,
 CONSTRAINT "PK_tbl_Gadget_Group_Mst" PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "Tbl_Gadget_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Gadget_Mst"(
	"c_code" varchar(10) NOT NULL,
	"c_name" varchar(50) NOT NULL,
	"c_description" varchar(200) NULL,
	"d_fromdate" timestamp NULL,
	"d_todate" timestamp NULL,
	"n_deleted" integer NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(50) NULL,
	"n_active" boolean NOT NULL,
	"c_url" varchar(100) NULL,
	"N_Must_Read" integer NULL,
 CONSTRAINT "PK_Tbl_Gadget_Mst" PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "tbl_Gadget_SetUp"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Gadget_SetUp"(
	"n_srno" SERIAL NOT NULL,
	"C_User_Code" varchar(10) NULL,
	"C_Gadget_Code" varchar(10) NULL,
	"n_Column_ID" integer NULL,
	"n_Sort_No" integer NULL,
	"n_Collapsed" integer NULL,
	"n_Deleted" integer NULL
) 
;
/****** Object:  Table "Tbl_GDN"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_GDN"(
	"C_DEP_CODE" varchar(10) NOT NULL,
	"C_YEAR" char(4) NOT NULL,
	"C_PREFIX" char(10) NOT NULL,
	"N_SRNO" numeric(30, 0) NOT NULL,
	"D_Date" timestamp NULL,
	"C_FS_CODE" varchar(10) NULL,
	"N_FLG" integer NULL,
	"N_TOTAL" numeric(18, 2) NULL,
	"C_INVOICE" varchar(50) NULL,
	"modidt" timestamp NULL,
 CONSTRAINT "PK_Tbl_GDN" PRIMARY KEY  
(
	"C_DEP_CODE" ,
	"C_YEAR" ,
	"C_PREFIX" ,
	"N_SRNO" 
) 
) 
;
/****** Object:  Table "Tbl_GDN_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_GDN_Details"(
	"C_DEP_CODE" varchar(10) NOT NULL,
	"C_YEAR" char(4) NOT NULL,
	"C_PREFIX" char(10) NOT NULL,
	"N_SRNO" numeric(30, 0) NOT NULL,
	"N_ROW_ID" numeric(18, 0) NOT NULL,
	"C_ITEM_CODE" varchar(10) NULL,
	"C_BATCH_NO" varchar(15) NULL,
	"N_QTY" numeric(18, 0) NULL,
	"N_RATE" numeric(18, 2) NULL
) 
;
/****** Object:  Table "Tbl_GDN_NotificationDetails"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_GDN_NotificationDetails"(
	"N_SRNO" numeric(30, 0) NOT NULL,
	"C_FS_CODE" varchar(20) NULL,
	"D_Date" timestamp NULL
) 
;
/****** Object:  Table "tbl_gdn_stock"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_gdn_stock"(
	"c_year" char(4) NOT NULL,
	"c_prefix" char(20) NOT NULL,
	"n_srno" numeric(30, 0) NOT NULL,
	"d_date" timestamp NULL,
	"c_empid" varchar(10) NULL,
	"n_type" integer NULL,
	"c_note" varchar(50) NULL,
	"n_delete" integer NULL,
	"c_ref_dep_code" varchar(10) NULL,
	"c_ref_year" char(4) NULL,
	"c_ref_prefix" char(10) NULL,
	"n_ref_srno" numeric(30, 0) NULL,
 CONSTRAINT "PK_tbl_gdn_stock" PRIMARY KEY  
(
	"c_year" ,
	"c_prefix" ,
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_gdn_stock_details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_gdn_stock_details"(
	"c_year" char(4) NOT NULL,
	"c_prefix" char(20) NOT NULL,
	"n_srno" numeric(20, 0) NOT NULL,
	"n_row_id" varchar(50) NOT NULL,
	"c_item_code" varchar(10) NULL,
	"n_qty" numeric(18, 0) NULL,
	"n_rate" numeric(18, 2) NULL,
 CONSTRAINT "PK_tbl_gdn_stock_details" PRIMARY KEY  
(
	"c_year" ,
	"c_prefix" ,
	"n_srno" ,
	"n_row_id" 
) 
) 
;
/****** Object:  Table "tbl_gdn_transactionstk"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_gdn_transactionstk"(
	"c_year" char(4) NOT NULL,
	"c_prefix" char(20) NOT NULL,
	"n_srno" numeric(30, 0) NOT NULL,
	"d_issueddate" timestamp NULL,
	"c_empid" varchar(10) NULL,
	"n_type" integer NULL,
	"c_note" varchar(500) NULL,
	"n_delete" integer NULL,
	"c_fscode_to" varchar(20) NULL,
	"n_status" integer NULL,
	"d_confirmeddate" timestamp NULL,
	"n_connectedsrno" numeric(30, 0) NULL
) 
;
/****** Object:  Table "tbl_gdn_transactionstk_details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_gdn_transactionstk_details"(
	"n_srno" numeric(20, 0) NOT NULL,
	"n_row_id" varchar(50) NOT NULL,
	"c_item_code" varchar(10) NOT NULL,
	"n_qty" numeric(18, 0) NULL,
	"n_issuedqty" numeric(18, 0) NULL
) 
;
/****** Object:  Table "tbl_general_divmapping_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_general_divmapping_det"(
	"n_id" SERIAL NOT NULL,
	"c_divmapping_code" varchar(255) NULL,
	"div_code" varchar(255) NULL,
PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "tbl_general_divmapping_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_general_divmapping_mst"(
	"c_code" varchar(255) NULL,
	"c_description" text NULL,
	"n_deleted" integer NULL
) 
;
/****** Object:  Table "tbl_general_setup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_general_setup"(
	"n_srno" SERIAL NOT NULL,
	"n_type" integer NULL,
	"c_setup_name" varchar(100) NULL,
	"n_deleted" integer NULL,
	"n_division" integer NULL,
	"n_region" integer NULL,
	"n_designation" integer NULL,
	"n_hqtype" integer NULL,
	"n_fs" integer NULL
) 
;
/****** Object:  Table "tbl_general_setup_Auto_SFC"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_general_setup_Auto_SFC"(
	"N_ID" SERIAL NOT NULL,
	"N_General_Setup_ID" numeric(18, 0) NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"N_Rateperkm" numeric(18, 2) NULL,
	"N_Transit" numeric(18, 2) NULL,
	"N_Monthly_EXP" numeric(18, 2) NULL,
	"N_TA_Type" integer NOT NULL,
	"C_Created_By" varchar(20) NULL,
	"D_Created_On" timestamp NULL,
	"C_Modified_By" varchar(20) NULL,
	"D_Modified_On" timestamp NULL
) 
;
/****** Object:  Table "tbl_general_setup_cme_rtm_expense"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_general_setup_cme_rtm_expense"(
	"n_id" SERIAL NOT NULL,
	"n_general_setup_id" numeric(18, 0) NOT NULL,
	"n_expense_approval_type" integer NOT NULL,
	"d_created_on" timestamp NOT NULL,
	"c_created_by" varchar(50) NULL,
	"d_modified_on" timestamp NULL,
	"c_modified_by" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_general_setup_cme_rtm_expense_sfa_approval_hierarchy"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_general_setup_cme_rtm_expense_sfa_approval_hierarchy"(
	"n_id" SERIAL NOT NULL,
	"n_general_setup_id" numeric(18, 0) NULL,
	"n_activity_type" integer NULL,
	"n_type" integer NULL,
	"c_created_by" varchar(20) NULL,
	"d_created_on" timestamp NULL,
	"c_modified_by" varchar(20) NULL,
	"d_modified_on" timestamp NULL
) 
;
/****** Object:  Table "tbl_general_setup_hdr"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_general_setup_hdr"(
	"n_srno" SERIAL NOT NULL,
	"c_division_code" text NULL,
	"c_region_code" text NULL,
	"c_desc_code" varchar(100) NULL,
	"C_fscode" text NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"n_setup_type" integer NULL,
	"d_date_from" timestamp NULL,
	"d_date_to" timestamp NULL,
	"n_approval_required" integer NULL,
	"n_approval_type" integer NULL,
	"n_activity_type_cust_mandatory" integer NULL,
	"n_customer_type_cust_mandatory" integer NULL,
	"n_status_cust_mandatory" integer NULL,
	"n_work_type_cust_mandatory" varchar(25) NULL
) 
;
/****** Object:  Table "tbl_general_setup_non_sfa_approval_hierarchy"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_general_setup_non_sfa_approval_hierarchy"(
	"N_ID" SERIAL NOT NULL,
	"N_General_Setup_ID" integer NULL,
	"C_Emp_Code" varchar(20) NULL,
	"N_Approval_Order" integer NULL,
	"C_Created_By" varchar(20) NULL,
	"D_Created_On" timestamp NULL,
	"C_Modified_By" varchar(20) NULL,
	"D_Modified_On" timestamp NULL,
	"C_Non_Sfa_User_Level_Name" varchar(500) NULL,
	"n_enablerejection" integer NULL,
	"n_activity_level" integer NULL
) 
;
/****** Object:  Table "tbl_general_setup_psa_amount_mapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_general_setup_psa_amount_mapping"(
	"N_ID" SERIAL NOT NULL,
	"N_General_Setup_ID" numeric(18, 0) NULL,
	"C_FMV_Grade" varchar(50) NULL,
	"N_Rate_Per_Hour" numeric(6, 0) NULL,
	"N_Max_Hours" integer NULL,
	"N_Deleted" integer NULL,
	"C_Created_By" varchar(20) NULL,
	"D_Created_On" timestamp NULL,
	"C_Modified_By" varchar(20) NULL,
	"D_Modified_On" timestamp NULL
) 
;
/****** Object:  Table "tbl_general_setup_sfa_approval_hierarchy"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_general_setup_sfa_approval_hierarchy"(
	"N_ID" SERIAL NOT NULL,
	"N_General_Setup_ID" numeric(18, 0) NULL,
	"N_Type" integer NULL,
	"C_Created_By" varchar(20) NULL,
	"D_Created_On" timestamp NULL,
	"C_Modified_By" varchar(20) NULL,
	"D_Modified_On" timestamp NULL
) 
;
/****** Object:  Table "tbl_general_setup_sfc_expence"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_general_setup_sfc_expence"(
	"N_ID" SERIAL NOT NULL,
	"N_General_Setup_ID" numeric(18, 0) NULL,
	"C_Expence_Code" varchar(20) NULL,
	"N_Amount" numeric(7, 2) NULL,
	"C_Created_By" varchar(20) NULL,
	"D_Created_On" timestamp NULL,
	"C_Modified_By" varchar(20) NULL,
	"D_Modified_On" timestamp NULL
) 
;
/****** Object:  Table "tbl_gps_tracking_interval_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_gps_tracking_interval_det"(
	"n_rowid" SERIAL NOT NULL,
	"n_setup_srno" integer NOT NULL,
	"n_setup_type" text NULL,
	"interval" integer NULL,
	"n_meters" numeric(18, 2) NULL
) 
;
/****** Object:  Table "tbl_Grade_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Grade_Mst"(
	"c_code" varchar(10) NOT NULL,
	"c_name" varchar(50) NOT NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
 CONSTRAINT "PK_tbl_Grade_Mst" PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "tbl_hcp_confirm_edit_disable_setup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_hcp_confirm_edit_disable_setup"(
	"n_primary_id" SERIAL NOT NULL,
	"n_setup" integer NULL,
	"c_doccode" integer NOT NULL,
	"c_docname" integer NOT NULL,
	"c_clinicName" integer NOT NULL,
	"c_clinicStreetName" integer NOT NULL,
	"c_clinicAreaName" integer NOT NULL,
	"c_clinicLandmark" integer NOT NULL,
	"c_clinicCityCode" integer NOT NULL,
	"c_clinicState" integer NOT NULL,
	"c_clinicPinCode" integer NOT NULL,
	"c_clinicSelAreaCode" integer NOT NULL,
	"c_resBuildName" integer NOT NULL,
	"c_resStreetName" integer NOT NULL,
	"c_resArea" integer NOT NULL,
	"c_resLandMark" integer NOT NULL,
	"c_resCityCode" integer NOT NULL,
	"c_resState" integer NOT NULL,
	"c_resPinCode" integer NOT NULL,
	"c_docRegNo" integer NOT NULL,
	"c_yrRegNo" integer NOT NULL,
	"c_regImageName" integer NOT NULL,
	"c_noExpHighQuali" integer NOT NULL,
	"c_therapAreaCode" integer NOT NULL,
	"c_noJournalPubli" integer NOT NULL,
	"c_noOfAuthorship" integer NOT NULL,
	"c_partRadio" integer NOT NULL,
	"c_partCheckValue" integer NOT NULL,
	"c_speakerRadio" integer NOT NULL,
	"c_speakerCheckValue" integer NOT NULL,
	"c_editorialBoard" integer NOT NULL,
	"c_position" integer NOT NULL,
	"c_experienceCode" integer NOT NULL,
	"c_documentCollect" integer NOT NULL,
	"c_panNo" integer NOT NULL,
	"c_panImage" integer NOT NULL,
	"c_email" integer NOT NULL,
	"c_qualificationCode" integer NOT NULL,
	"c_qualificationImage" integer NOT NULL,
	"C_Subarea_Code" integer NOT NULL,
	"c_mobileno" integer NOT NULL,
	"C_Category" integer NOT NULL,
	"n_lami" integer NOT NULL,
	"n_lgmi" integer NOT NULL,
	"c_prescription_pad_image" integer NOT NULL,
	"c_visiting_card_image" integer NOT NULL,
	"c_hospital_clinic_signboard_image" integer NOT NULL,
	"c_others_image" integer NOT NULL,
	"c_fscode" varchar(50) NULL,
	"c_empcode" varchar(50) NULL,
	"n_deleted" integer NOT NULL,
	"d_date" timestamp NOT NULL,
	"c_pan_name" integer NOT NULL,
PRIMARY KEY  
(
	"n_primary_id" 
) 
) 
;
/****** Object:  Table "tbl_hcp_fmv_category"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_hcp_fmv_category"(
	"n_primary_id" SERIAL NOT NULL,
	"c_code" varchar(50) NULL,
	"c_name" varchar(500) NULL,
	"n_deleted" integer NOT NULL,
PRIMARY KEY  
(
	"n_primary_id" 
) 
) 
;
/****** Object:  Table "tbl_hcp_fmv_metroclassification_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_hcp_fmv_metroclassification_det"(
	"n_primary_id" SERIAL NOT NULL,
	"c_hcp_fmv_category_code" varchar(50) NULL,
	"c_metroclassification_code" varchar(50) NULL,
	"n_fmv_value" integer NULL,
PRIMARY KEY  
(
	"n_primary_id" 
) 
) 
;
/****** Object:  Table "tbl_hcp_mandatory_setup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_hcp_mandatory_setup"(
	"n_primary_id" SERIAL NOT NULL,
	"n_setup" integer NULL,
	"c_doccode" integer NOT NULL,
	"c_docname" integer NOT NULL,
	"c_clinicName" integer NOT NULL,
	"c_clinicStreetName" integer NOT NULL,
	"c_clinicAreaName" integer NOT NULL,
	"c_clinicLandmark" integer NOT NULL,
	"c_clinicCityCode" integer NOT NULL,
	"c_clinicState" integer NOT NULL,
	"c_clinicPinCode" integer NOT NULL,
	"c_clinicSelAreaCode" integer NOT NULL,
	"c_resBuildName" integer NOT NULL,
	"c_resStreetName" integer NOT NULL,
	"c_resArea" integer NOT NULL,
	"c_resLandMark" integer NOT NULL,
	"c_resCityCode" integer NOT NULL,
	"c_resState" integer NOT NULL,
	"c_resPinCode" integer NOT NULL,
	"c_docRegNo" integer NOT NULL,
	"c_yrRegNo" integer NOT NULL,
	"c_regImageName" integer NOT NULL,
	"c_noExpHighQuali" integer NOT NULL,
	"c_therapAreaCode" integer NOT NULL,
	"c_noJournalPubli" integer NOT NULL,
	"c_noOfAuthorship" integer NOT NULL,
	"c_partRadio" integer NOT NULL,
	"c_partCheckValue" integer NOT NULL,
	"c_speakerRadio" integer NOT NULL,
	"c_speakerCheckValue" integer NOT NULL,
	"c_editorialBoard" integer NOT NULL,
	"c_position" integer NOT NULL,
	"c_experienceCode" integer NOT NULL,
	"c_documentCollect" integer NOT NULL,
	"c_panNo" integer NOT NULL,
	"c_panImage" integer NOT NULL,
	"c_email" integer NOT NULL,
	"c_qualificationCode" integer NOT NULL,
	"c_qualificationImage" integer NOT NULL,
	"C_Subarea_Code" integer NOT NULL,
	"c_mobileno" integer NOT NULL,
	"C_Category" integer NOT NULL,
	"n_lami" integer NOT NULL,
	"n_lgmi" integer NOT NULL,
	"c_prescription_pad_image" integer NOT NULL,
	"c_visiting_card_image" integer NOT NULL,
	"c_hospital_clinic_signboard_image" integer NOT NULL,
	"c_others_image" integer NOT NULL,
	"c_fscode" varchar(50) NULL,
	"c_empcode" varchar(50) NULL,
	"n_deleted" integer NOT NULL,
	"d_date" timestamp NOT NULL,
	"n_type" integer NOT NULL,
	"c_remarks" integer NOT NULL,
	"c_pan_name" integer NOT NULL,
	"c_any_image_mandatory_count" integer NOT NULL,
	"n_isfamilyphysician" integer NULL,
PRIMARY KEY  
(
	"n_primary_id" 
) 
) 
;
/****** Object:  Table "Tbl_Heirarchy_PSG_DSCA_Settings"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Heirarchy_PSG_DSCA_Settings"(
	"N_DscaType" integer NOT NULL,
	"N_Product" integer NULL,
	"N_Sample" integer NULL,
	"N_Gift" integer NULL,
	"n_promo" integer NOT NULL,
	"n_c2c" integer NOT NULL,
	"n_assetdoctors" integer NOT NULL,
	"n_camp" integer NOT NULL,
 CONSTRAINT "PK_Tbl_Heirarchy_PSG_DSCA_Settings" PRIMARY KEY  
(
	"N_DscaType" 
) 
) 
;
/****** Object:  Table "tbl_Hit_Count"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Hit_Count"(
	"c_userid" varchar(20) NOT NULL,
	"d_created" timestamp NULL,
	"n_menuid" integer NULL,
	"D_LOG_OUT" timestamp NULL,
	"c_ip" varchar(20) NULL,
	"c_browser" varchar(100) NULL,
	"c_lattitude" varchar(100) NULL,
	"c_longitude" varchar(100) NULL,
	"c_deviceID" varchar(500) NULL,
	"c_DeviceType" varchar(500) NULL,
	"n_srno" SERIAL NOT NULL,
	"c_imei" varchar(20) NULL,
	"c_TKey" varchar(50) NULL,
	"c_TKeyLoginHappend" integer NULL,
 CONSTRAINT "PK_HIT" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "Tbl_Holiday_Desc"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Holiday_Desc"(
	"N_Type" numeric(10, 0) NOT NULL,
	"C_Des" varchar(50) NOT NULL,
	"n_deleted" smallint NOT NULL,
	"c_modifier" varchar(10) NULL,
	"d_modified" timestamp NULL,
	"d_created" timestamp NOT NULL,
 CONSTRAINT "PK_Tbl_Holiday_Desc" PRIMARY KEY  
(
	"N_Type" 
) 
) 
;
/****** Object:  Table "tbl_Holiday_Emp_Map_Det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Holiday_Emp_Map_Det"(
	"n_id" integer NULL,
	"c_code" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_Holiday_Emp_Map_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Holiday_Emp_Map_Mst"(
	"n_id" SERIAL NOT NULL,
	"n_holidaytype" integer NULL,
	"d_holidaydate" timestamp NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_createdby" varchar(50) NULL
) 
;
/****** Object:  Table "Tbl_Holiday_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Holiday_Mst"(
	"C_State_Code" char(10) NOT NULL,
	"D_Date" timestamp NOT NULL,
	"N_Type" integer NOT NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"c_division" varchar(2000) NULL,
 CONSTRAINT "PK_Tbl_Holiday_Mst" PRIMARY KEY  
(
	"C_State_Code" ,
	"D_Date" ,
	"N_Type" 
) 
) 
;
/****** Object:  Table "tbl_hospital_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_hospital_mst"(
	"c_code" varchar(200) NOT NULL,
	"c_hospitaltype_name" varchar(200) NULL,
	"c_shortname" varchar(200) NULL,
	"n_deleted" integer NULL,
	"n_active" integer NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_HospitalMaster"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_HospitalMaster"(
	"n_id" SERIAL NOT NULL,
	"n_speciality_id" varchar(10) NOT NULL,
	"c_speciality_name" varchar(100) NOT NULL,
	"n_status" integer NOT NULL,
	"c_created_by" varchar(50) NULL,
	"d_created_on" timestamp NOT NULL,
PRIMARY KEY  
(
	"n_id" 
) ,
UNIQUE  
(
	"n_speciality_id" 
) 
) 
;
/****** Object:  Table "Tbl_HospitalMst_Det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_HospitalMst_Det"(
	"C_Code" varchar(10) NOT NULL,
	"C_therap_grp_code" varchar(300) NULL,
	"C_pg_code" varchar(200) NULL
) 
;
/****** Object:  Table "tbl_imagetagged_upload"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_imagetagged_upload"(
	"n_srno" SERIAL NOT NULL,
	"c_fileName" text NULL,
	"n_deleted" integer NULL,
	"d_date" timestamp NULL,
	"n_remoteserver" integer NULL,
	"c_fscode" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_ImageUploadSettings"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_ImageUploadSettings"(
	"n_id" SERIAL NOT NULL,
	"c_Desc" varchar(200) NULL,
	"c_filepath" text NULL,
	"n_flag" integer NULL,
	"c_Foldername" varchar(100) NULL,
	"c_indexno" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_input_tracking_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_input_tracking_det"(
	"n_expno" integer NULL,
	"c_fscode" varchar(100) NULL,
	"d_submit_date" timestamp NULL,
	"n_claim_amnt" integer NULL,
	"n_month" integer NULL,
	"n_year" integer NULL,
	"n_status" integer NULL,
	"c_approve_rej_by" varchar(100) NULL,
	"c_reason" varchar(500) NULL,
	"n_fromexpense" integer NULL,
	"d_approve_rej_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_input_tracking_dets"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_input_tracking_dets"(
	"n_hrd_srno" integer NULL,
	"n_setup_srno" integer NULL,
	"c_mngr_codes" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_input_tracking_mult_approve"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_input_tracking_mult_approve"(
	"n_expno" integer NULL,
	"c_approve_rej_by" varchar(100) NULL,
	"d_approve_rej_date" timestamp NULL,
	"c_reason" varchar(500) NULL,
	"n_status" integer NULL
) 
;
/****** Object:  Table "tbl_Institution_type"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Institution_type"(
	"c_code" varchar(20) NOT NULL,
	"c_name" varchar(50) NULL,
	"n_active" integer NOT NULL,
	"n_deleted" integer NOT NULL,
 CONSTRAINT "PK_tbl_Institution_type" PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "Tbl_Integers"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Integers"(
	"i" numeric(18, 0) NOT NULL
) 
;
/****** Object:  Table "Tbl_Integration_Alert"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Integration_Alert"(
	"c_code" varchar(10) NULL,
	"c_name" varchar(50) NULL,
	"c_divcode" varchar(10) NULL,
	"c_divname" varchar(50) NULL,
	"n_mrp" numeric(18, 2) NULL,
	"n_std_rate" numeric(18, 2) NULL,
	"n_pts_rate" numeric(18, 2) NULL,
	"c_prefix" varchar(10) NULL
) 
;
/****** Object:  Table "tbl_inv_desk_maping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_inv_desk_maping"(
	"c_inv_code" varchar(10) NOT NULL,
	"c_inv_desk_code" varchar(10) NOT NULL,
 CONSTRAINT "PK_tbl_inv_desk_maping" PRIMARY KEY  
(
	"c_inv_code" ,
	"c_inv_desk_code" 
) 
) 
;
/****** Object:  Table "tbl_inv_field_wise_staging"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_inv_field_wise_staging"(
	"c_inv_code" varchar(50) NOT NULL,
	"n_Fstype" integer NOT NULL,
	"n_type" integer NOT NULL,
	"n_upperlimit" numeric(18, 0) NOT NULL,
	"n_status" integer NOT NULL,
 CONSTRAINT "PK_tbl_inv_field_wise_staging" PRIMARY KEY  
(
	"c_inv_code" ,
	"n_Fstype" ,
	"n_type" 
) 
) 
;
/****** Object:  Table "tbl_inv_forward_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_inv_forward_det"(
	"n_srno" SERIAL NOT NULL,
	"n_inv_srno" integer NOT NULL,
	"c_fs_code_to" varchar(50) NOT NULL,
	"c_fs_code_from" varchar(50) NOT NULL,
	"c_Note" varchar(500) NULL,
	"c_reply_note" varchar(500) NULL,
	"d_reply_date" timestamp NULL,
	"d_posting_date" timestamp NULL,
	"n_deleted" integer NULL,
 CONSTRAINT "PK_tbl_inv_forward_det" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_inv_sales_Det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_inv_sales_Det"(
	"n_srno" SERIAL NOT NULL,
	"c_item_code" varchar(10) NOT NULL,
	"c_fscode" varchar(10) NOT NULL,
	"c_drcode" varchar(50) NOT NULL,
	"c_chemistcode" varchar(50) NOT NULL,
	"date" timestamp NOT NULL,
	"prefix" varchar(50) NULL,
	"docno" varchar(50) NULL,
	"qty" integer NOT NULL,
	"rate" numeric(18, 2) NULL,
	"val" numeric(18, 2) NULL,
 CONSTRAINT "PK_tbl_inv_sales_Det" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_inv_sales_history_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_inv_sales_history_det"(
	"n_srno" numeric(9, 0) NOT NULL,
	"n_target" numeric(19, 2) NULL,
	"n_sales" numeric(19, 2) NULL,
	"n_achievement" numeric(19, 4) NULL,
	"n_growth" numeric(19, 2) NULL,
	"n_productivity" numeric(18, 2) NULL
) 
;
/****** Object:  Table "tbl_inv_sales_history_det_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_inv_sales_history_det_log"(
	"n_srno" numeric(9, 0) NOT NULL,
	"n_target" numeric(19, 2) NULL,
	"n_sales" numeric(19, 2) NULL,
	"n_achievement" numeric(19, 4) NULL,
	"n_growth" numeric(19, 2) NULL,
	"n_productivity" numeric(18, 2) NULL
) 
;
/****** Object:  Table "tbl_inv_sales_summery"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_inv_sales_summery"(
	"n_srno" SERIAL NOT NULL,
	"C_FsCode" varchar(10) NOT NULL,
	"C_DR_Code" varchar(10) NOT NULL,
	"C_Chem_Code" char(10) NOT NULL,
	"N_Month" integer NOT NULL,
	"N_Year" integer NOT NULL,
	"N_WeekNo" integer NOT NULL,
	"C_Item_Code" varchar(10) NOT NULL,
	"N_Qty" integer NULL,
	"N_Val" numeric(18, 2) NULL,
	"n_rate" numeric(18, 2) NULL,
 CONSTRAINT "PK_tbl_inv_sales_summery_1" PRIMARY KEY  
(
	"C_FsCode" ,
	"C_DR_Code" ,
	"C_Chem_Code" ,
	"N_Month" ,
	"N_Year" ,
	"N_WeekNo" ,
	"C_Item_Code" 
) 
) 
;
/****** Object:  Table "tbl_inv_setup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_inv_setup"(
	"n_dcrinvrt" integer NULL,
	"c_inv_plan_lblamt" varchar(50) NULL,
	"n_inv_saleshistory" integer NULL,
	"n_inv_rate_edit" integer NULL,
	"n_inv_month" integer NULL,
	"n_inv_doc_profile" integer NULL,
	"n_doctor_timing" integer NULL,
	"n_dr_profile_validation" integer NULL,
	"n_month_validation" integer NULL,
	"n_print_req" integer NULL,
	"c_print_page" varchar(50) NULL,
	"n_approval_flag" integer NULL,
	"n_mis_sale_flag" integer NULL
) 
;
/****** Object:  Table "tbl_inv_stag_budget"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_inv_stag_budget"(
	"c_inv_code" varchar(10) NOT NULL,
	"c_fs_code" varchar(10) NOT NULL,
	"c_fstype" integer NULL,
	"c_pmt_code" varchar(50) NOT NULL,
	"n_amount" numeric(18, 0) NOT NULL,
	"n_totamt_fstype" numeric(18, 0) NOT NULL,
	"n_status" integer NULL,
 CONSTRAINT "PK_tbl_inv_stag_budget" PRIMARY KEY  
(
	"c_inv_code" ,
	"c_fs_code" ,
	"c_pmt_code" 
) 
) 
;
/****** Object:  Table "tbl_inv_type"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_inv_type"(
	"c_code" varchar(10) NOT NULL,
	"c_inv_type" varchar(50) NOT NULL,
	"c_budget_required" integer NOT NULL,
	"c_budget_pmt" integer NOT NULL,
	"n_deleted" integer NOT NULL,
	"c_details" text NULL,
 CONSTRAINT "PK_tbl_inv_type" PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "tbl_investment_aproval_details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_investment_aproval_details"(
	"n_srno" integer NOT NULL,
	"d_aprovedon" timestamp NULL,
	"d_paidon" timestamp NULL,
	"n_paid_amt" numeric(18, 0) NULL,
	"c_paidby" varchar(50) NULL,
	"c_paidas" varchar(50) NULL,
	"c_paid_ref" varchar(50) NULL,
	"c_pay_detail1" varchar(200) NULL,
	"c_pay_details2" varchar(200) NULL,
	"c_fs_code" varchar(50) NOT NULL,
 CONSTRAINT "PK_tbl_investment_aproval_details" PRIMARY KEY  
(
	"n_srno" ,
	"c_fs_code" 
) 
) 
;
/****** Object:  Table "Tbl_Investment_desk"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Investment_desk"(
	"C_CODE" varchar(10) NOT NULL,
	"C_NAME" varchar(50) NOT NULL,
	"C_EMP_CODE" varchar(10) NOT NULL,
	"N_DELETED" integer NOT NULL,
	"D_CREATED" timestamp NOT NULL,
	"D_MODIFIED" timestamp NULL,
	"C_MODIFIER" varchar(50) NULL,
	"C_Div_Code" varchar(50) NULL,
	"C_Region_Code" varchar(50) NULL,
	"C_Location_Code" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_investment_desk_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_investment_desk_det"(
	"c_desk_code" varchar(10) NOT NULL,
	"c_division" varchar(10) NULL,
	"c_region" varchar(10) NULL,
	"c_zone" varchar(10) NULL,
 CONSTRAINT "PK_PulseNewReports.dbo.tbl_investment_desk_det" PRIMARY KEY  
(
	"c_desk_code" 
) 
) 
;
/****** Object:  Table "Tbl_Investment_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Investment_Mst"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"C_Note" varchar(50) NULL,
	"D_date_from" timestamp NULL,
	"d_date_to" timestamp NULL,
	"n_amt_from" integer NULL,
	"n_amt_to" integer NULL,
	"n_months_min" integer NULL,
	"n_months_max" integer NULL,
	"n_active" integer NULL,
	"n_deleted" integer NULL,
	"c_modifier" varchar(50) NULL,
	"d_modifieddate" timestamp NULL,
	"n_MaxNRV" integer NULL,
	"n_TotalBudget" numeric(18, 0) NULL,
	"n_MinNRV" integer NULL,
	"n_rate_editable" double precision NULL,
	"c_inv_type" varchar(100) NULL,
 CONSTRAINT "PK_Tbl_Investment_Mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "Tbl_Investment_plan_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Investment_plan_det"(
	"n_srno" integer NOT NULL,
	"c_item_code" varchar(10) NULL,
	"n_month" integer NULL,
	"d_date" timestamp NULL,
	"n_Rx" integer NULL,
	"n_Qty" integer NULL,
	"n_val" numeric(18, 2) NULL,
	"n_actrate" numeric(18, 2) NULL,
	"n_rate" numeric(18, 2) NULL
) 
;
/****** Object:  Table "tbl_investment_plan_flowup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_investment_plan_flowup"(
	"n_srno" integer NULL,
	"n_month" integer NULL,
	"d_Date" timestamp NULL,
	"c_note" varchar(200) NULL,
	"n_amount" numeric(18, 0) NULL,
	"workedwith" integer NULL
) 
;
/****** Object:  Table "tbl_investment_releted_send_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_investment_releted_send_det"(
	"n_srno" numeric(9, 0) NOT NULL,
	"c_emp_code" varchar(10) NOT NULL,
	"c_event" varchar(2) NOT NULL,
	"n_flag" integer NULL,
	"d_create_date" timestamp NULL
) 
;
/****** Object:  Table "Tbl_InvestmentPlan_MST"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_InvestmentPlan_MST"(
	"n_srno" integer NOT NULL,
	"d_date" timestamp NULL,
	"c_investcode" varchar(10) NULL,
	"c_fscode" varchar(10) NULL,
	"c_drcode" varchar(10) NULL,
	"n_current_business" numeric(18, 2) NULL,
	"n_investment_planned" integer NULL,
	"c_request" varchar(200) NULL,
	"c_commitment" varchar(200) NULL,
	"c_promises" varchar(200) NULL,
	"n_total_expected_business" numeric(18, 2) NULL,
	"c_emp_code" varchar(10) NULL,
	"n_confirmed" integer NULL,
	"d_confirmedon" timestamp NULL,
	"c_confirmedby" varchar(50) NULL,
	"n_paid_amount" numeric(18, 0) NULL,
	"d_paid_on" timestamp NULL,
	"c_paid_by" varchar(50) NULL,
	"c_paid_as" varchar(10) NULL,
	"c_paid_refno" varchar(10) NULL,
	"c_pay_details1" varchar(200) NULL,
	"c_pay_details2" varchar(200) NULL,
	"n_months" integer NULL,
	"n_closed" integer NULL,
	"d_closeddate" timestamp NULL,
	"n_type" integer NULL,
	"d_BussExpctd_to" timestamp NULL,
	"d_BussExpctd_Frm" timestamp NULL,
	"c_parentCode" varchar(50) NULL,
	"c_desk_code" varchar(50) NULL,
	"childfscode" varchar(50) NULL,
	"n_patient" integer NULL,
	"c_buss_Rxed" varchar(200) NULL,
	"n_avg_buss" numeric(18, 2) NULL,
	"c_type_details" text NULL,
	"n_month_split" integer NULL,
 CONSTRAINT "PK_Tbl_InvestmentPlanMST" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_invoice_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_invoice_det"(
	"c_dep_code" varchar(10) NOT NULL,
	"c_year" varchar(10) NOT NULL,
	"c_prefix" varchar(10) NOT NULL,
	"n_bill_no" numeric(15, 0) NOT NULL,
	"c_itemcode" varchar(10) NOT NULL,
	"n_rowid" numeric(10, 0) NOT NULL,
	"c_batchno" varchar(15) NULL,
	"d_expdate" timestamp NULL,
	"n_qty" numeric(10, 0) NULL,
	"n_free_qty" numeric(10, 0) NULL,
	"n_replace_qty" char(10) NULL,
	"n_rate" numeric(10, 3) NULL,
	"n_ptr" numeric(10, 3) NULL,
	"n_mrp" numeric(10, 3) NULL,
	"n_excise_duty" numeric(8, 3) NULL,
	"n_tax1" numeric(15, 2) NULL,
	"n_tax1_amt" numeric(8, 2) NULL,
	"c_tax1" varchar(10) NULL,
	"n_tax2" numeric(15, 2) NULL,
	"n_tax2_amt" numeric(8, 2) NULL,
	"c_tax2" varchar(10) NULL,
	"n_tax3" numeric(15, 2) NULL,
	"n_tax3_amt" numeric(8, 2) NULL,
	"c_tax3" varchar(10) NULL,
	"n_tax4" numeric(15, 2) NULL,
	"n_tax4_amt" numeric(8, 2) NULL,
	"c_tax4" varchar(10) NULL,
	"n_tax5" numeric(15, 2) NULL,
	"n_tax5_amt" numeric(8, 2) NULL,
	"c_tax5" varchar(10) NULL,
	"n_tax6" numeric(15, 2) NULL,
	"n_tax6_amt" numeric(8, 2) NULL,
	"c_tax6" varchar(10) NULL,
	"n_scheme_disc" numeric(6, 2) NULL,
	"n_scheme_disc_amt" numeric(10, 2) NULL,
	"n_item_disc" numeric(6, 2) NULL,
	"n_item_disc_amt" numeric(10, 2) NULL,
	"c_order_no" varchar(10) NULL,
	"d_order_date" timestamp NULL,
	"n_tax_on_scheme_qty" numeric(5, 2) NULL,
 CONSTRAINT "PK_tbl_invoice_det" PRIMARY KEY  
(
	"c_dep_code" ,
	"c_year" ,
	"c_prefix" ,
	"n_bill_no" ,
	"c_itemcode" ,
	"n_rowid" 
) 
) 
;
/****** Object:  Table "tbl_invoice_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_invoice_mst"(
	"c_dep_code" varchar(10) NOT NULL,
	"c_year" varchar(10) NOT NULL,
	"c_prefix" varchar(10) NOT NULL,
	"n_bill_no" numeric(15, 0) NOT NULL,
	"d_bill_date" timestamp NULL,
	"d_due_date" timestamp NULL,
	"n_cr_days" numeric(3, 0) NULL,
	"c_refno" varchar(20) NULL,
	"d_refdate" timestamp NULL,
	"c_lrno" varchar(20) NULL,
	"d_lrdate" timestamp NULL,
	"c_stockist_code" varchar(50) NULL,
	"n_total_purchase_val" numeric(15, 2) NULL,
	"n_tax1" numeric(15, 2) NULL,
	"n_tax2" numeric(15, 2) NULL,
	"n_tax3" numeric(15, 2) NULL,
	"n_tax4" numeric(15, 2) NULL,
	"n_tax5" numeric(15, 2) NULL,
	"n_tax6" numeric(15, 2) NULL,
	"n_tax_amt" numeric(15, 2) NULL,
	"n_non_tax_amt" numeric(15, 2) NULL,
	"n_frieght" numeric(10, 2) NULL,
	"n_other_charges" numeric(15, 2) NULL,
	"n_discount" numeric(15, 2) NULL,
	"n_net_bill_amt" numeric(15, 2) NULL,
	"c_creditnote_no" varchar(15) NULL,
	"n_creditnote_amt" numeric(15, 2) NULL,
	"c_debitnote_no" varchar(15) NULL,
	"n_debitnote_amt" numeric(15, 2) NULL,
	"c_remark" varchar(100) NULL,
	"c_transport" varchar(100) NULL,
	"n_no_of_cases" numeric(8, 2) NULL,
	"n_weight" numeric(8, 2) NULL,
 CONSTRAINT "PK_tbl_invoice_mst" PRIMARY KEY  
(
	"c_dep_code" ,
	"c_year" ,
	"c_prefix" ,
	"n_bill_no" 
) 
) 
;
/****** Object:  Table "Tbl_Item_Category_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Item_Category_Mst"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"C_Sh_Name" char(7) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
 CONSTRAINT "PK_Tbl_Item_Category_Mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "Tbl_Item_Category_Mst_temp"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Item_Category_Mst_temp"(
	"C_Code" char(6) NULL,
	"C_Name" char(50) NULL,
	"C_Sh_name" char(20) NULL,
	"n_deleted" numeric(1, 0) NULL,
	"c_modifier" varchar(30) NULL,
	"d_created" varchar(30) NULL,
	"d_modified" varchar(30) NULL
) 
;
/****** Object:  Table "Tbl_Item_Div"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Item_Div"(
	"c_item_code" varchar(10) NOT NULL,
	"c_div_code" varchar(10) NOT NULL,
	"d_date_from" timestamp NOT NULL,
	"d_date_to" timestamp NULL,
 CONSTRAINT "PK_Tbl_Item_Div" PRIMARY KEY  
(
	"c_item_code" ,
	"c_div_code" ,
	"d_date_from" 
) 
) 
;
/****** Object:  Table "tbl_item_div_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_item_div_det"(
	"c_item_code" varchar(10) NOT NULL,
	"c_div_code" varchar(10) NOT NULL,
	"c_type" varchar(1) NOT NULL,
	"c_type_code" varchar(10) NOT NULL,
	"d_date_from" timestamp NOT NULL,
	"d_date_to" timestamp NULL,
 CONSTRAINT "PK_tbl_item_div_det" PRIMARY KEY  
(
	"c_item_code" ,
	"c_div_code" ,
	"c_type" ,
	"c_type_code" ,
	"d_date_from" 
) 
) 
;
/****** Object:  Table "tbl_item_map"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_item_map"(
	"c_item_code" varchar(10) NOT NULL,
	"c_map_code" varchar(10) NOT NULL,
	"n_factor" numeric(18, 2) NULL,
	"d_date_from" timestamp NOT NULL,
	"d_date_to" timestamp NULL,
 CONSTRAINT "PK_tbl_item_map" PRIMARY KEY  
(
	"c_item_code" ,
	"c_map_code" ,
	"d_date_from" 
) 
) 
;
/****** Object:  Table "tbl_item_mapping_integration"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_item_mapping_integration"(
	"c_item_code" varchar(18) NOT NULL,
	"c_sfa_item_code" varchar(10) NOT NULL,
 CONSTRAINT "PK_tbl_item_mapping_integration" PRIMARY KEY  
(
	"c_item_code" ,
	"c_sfa_item_code" 
) 
) 
;
/****** Object:  Table "Tbl_Item_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Item_Mst"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"C_SH_Name" varchar(7) NULL,
	"c_company" varchar(30) NULL,
	"C_desc" varchar(50) NULL,
	"C_Pack" char(6) NULL,
	"n_Rate" numeric(19, 2) NULL,
	"n_MRP" numeric(19, 2) NULL,
	"n_Standard_Rate" numeric(19, 2) NULL,
	"N_Type" numeric(18, 0) NULL,
	"C_Category_Code" varchar(10) NULL,
	"C_DIV_CODE" varchar(10) NULL,
	"c_brand_code" varchar(10) NULL,
	"n_pts_rate" numeric(19, 2) NULL,
	"D_Deleted" timestamp NULL,
	"N_Status" integer NULL,
	"C_Group_Code" varchar(50) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"N_NRVRate" numeric(18, 0) NULL,
	"c_qty_strip" char(6) NULL,
	"c_mfac_code" varchar(50) NULL,
	"c_refcode" varchar(50) NULL,
	"c_imageName" varchar(1000) NULL,
	"n_factor" numeric(6, 3) NULL,
	"n_inner_quantity" integer NULL,
	"n_outer_quantity" integer NULL,
	"c_imageName_bloburl" text NULL
) 
;
/****** Object:  Table "Tbl_Item_Mst_temp"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Item_Mst_temp"(
	"C_Code" char(6) NULL,
	"C_Name" char(50) NULL,
	"C_SH_Name" char(6) NULL,
	"c_company" varchar(15) NULL,
	"C_desc" varchar(20) NULL,
	"C_Pack" varchar(6) NULL,
	"n_Rate" numeric(12, 2) NULL,
	"n_MRP" numeric(12, 2) NULL,
	"n_Standard_Rate" numeric(12, 2) NULL,
	"N_Type" numeric(1, 0) NULL,
	"C_Category_Code" char(6) NULL,
	"C_DIV_CODE" char(10) NULL,
	"c_brand_code" char(6) NULL,
	"n_pts_rate" numeric(12, 2) NULL,
	"D_Deleted" numeric(1, 0) NULL,
	"N_Status" numeric(1, 0) NULL,
	"C_Group_Code" char(6) NULL,
	"n_deleted" numeric(1, 0) NULL,
	"d_created" varchar(30) NULL,
	"d_modified" varchar(30) NULL,
	"c_modifier" varchar(16) NULL,
	"N_NRVRate" numeric(12, 2) NULL
) 
;
/****** Object:  Table "tbl_item_rate"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_item_rate"(
	"c_Item_code" varchar(10) NOT NULL,
	"n_rate" numeric(18, 2) NULL,
	"n_mrp" numeric(18, 2) NULL,
	"n_std_rate" numeric(18, 2) NULL,
	"n_pts_rate" numeric(18, 2) NULL,
	"d_date_from" timestamp NOT NULL,
	"d_date_to" timestamp NULL,
 CONSTRAINT "PK_tbl_item_rate" PRIMARY KEY  
(
	"c_Item_code" ,
	"d_date_from" 
) 
) 
;
/****** Object:  Table "Tbl_ItemDetail_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_ItemDetail_Mst"(
	"c_item_code" varchar(10) NOT NULL,
	"n_flag" integer NULL,
	"n_fstype" integer NOT NULL,
 CONSTRAINT "PK_Tbl_ItemDetail_Mst" PRIMARY KEY  
(
	"c_item_code" ,
	"n_fstype" 
) 
) 
;
/****** Object:  Table "Tbl_ItemDetail_Mst1"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_ItemDetail_Mst1"(
	"c_item_code" varchar(10) NOT NULL,
	"n_flag" integer NULL,
	"n_fstype" integer NOT NULL
) 
;
/****** Object:  Table "Tbl_ItemGroup_Category"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_ItemGroup_Category"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"C_Shortname" varchar(20) NULL,
	"n_deleted" smallint NOT NULL,
	"c_modifier" varchar(10) NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
 CONSTRAINT "PK_Tbl_ItemGrouo_" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "Tbl_ItemGroup_Category_temp"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_ItemGroup_Category_temp"(
	"C_Code" char(6) NULL,
	"C_Name" char(50) NULL,
	"C_Shortname" char(20) NULL,
	"n_deleted" numeric(1, 0) NULL,
	"c_modifier" varchar(30) NULL,
	"d_created" varchar(30) NULL,
	"d_modified" varchar(30) NULL
) 
;
/****** Object:  Table "tbl_Itemtrget_Grp_Map"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Itemtrget_Grp_Map"(
	"c_item_code" varchar(10) NULL,
	"c_group_code" varchar(10) NULL,
	"d_date_from" timestamp NULL,
	"d_date_to" timestamp NULL
) 
;
/****** Object:  Table "tbl_Kam_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Kam_Mst"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"N_Type" numeric(18, 0) NOT NULL,
	"C_Grade" char(10) NULL,
	"C_Qualification" varchar(30) NULL,
	"C_Add_1" varchar(50) NULL,
	"C_Add_2" varchar(50) NULL,
	"C_Add_3" varchar(50) NULL,
	"C_Add_4" varchar(50) NULL,
	"C_Pin" char(10) NULL,
	"C_Phone" char(20) NULL,
	"C_Fax" char(20) NULL,
	"C_Category" char(10) NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"C_Parent" char(10) NULL,
	"C_EmpNo" varchar(10) NOT NULL,
	"C_Desc" varchar(50) NULL,
	"D_DOB" timestamp NULL,
	"D_DOJ" timestamp NULL,
	"D_DOW" timestamp NULL,
	"n_Status" integer NULL,
	"C_Email_ID" varchar(50) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"N_ptype" integer NULL,
	"c_div_code" varchar(25) NULL,
 CONSTRAINT "PK_Tbl_Kam_Mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "tbl_Kam_User_Access"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Kam_User_Access"(
	"N_Type" numeric(18, 0) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"c_sh_name" varchar(20) NULL,
	"n_CI_FLag" smallint NULL,
	"n_fs_flag" smallint NULL,
	"c_gadgetcode" varchar(50) NULL,
 CONSTRAINT "PK_Tbl_Kam_User_Access" PRIMARY KEY  
(
	"N_Type" 
) 
) 
;
/****** Object:  Table "Tbl_LandMark_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_LandMark_Mst"(
	"C_Code" varchar(20) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"C_Sh_Name" varchar(7) NULL,
	"n_deleted" integer NOT NULL,
	"n_status" integer NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL
) 
;
/****** Object:  Table "tbl_late_first_call_details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_late_first_call_details"(
	"n_id" SERIAL NOT NULL,
	"c_fscode" varchar(50) NULL,
	"d_firstCall_time" timestamp NULL,
	"d_serverupdatedate" timestamp NULL
) 
;
/****** Object:  Table "tbl_LBLDoc_MailStatus"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_LBLDoc_MailStatus"(
	"n_id" SERIAL NOT NULL,
	"c_doc_Code" varchar(50) NULL,
	"c_Doc_Mailid" varchar(300) NULL,
	"C_FromId" varchar(300) NULL,
	"n_status" integer NULL,
	"d_starttime" timestamp NULL,
	"d_endtime" timestamp NULL,
	"C_FileNames" varchar(500) NULL,
	"C_ErroMessage" text NULL
) 
;
/****** Object:  Table "Tbl_LC_Integration"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_LC_Integration"(
	"N_ID" SERIAL NOT NULL,
	"C_LC_C2Code" varchar(50) NULL,
	"C_LC_Base_Url" text NULL,
	"C_LC_Api_Key" varchar(500) NULL,
	"C_LC_Token" varchar(500) NULL,
	"D_CreatedOn" timestamp NULL,
	"C_CreatedBy" varchar(50) NULL,
	"D_ModifiedOn" timestamp NULL,
	"C_ModifiedBy" varchar(50) NULL,
 CONSTRAINT "PK_Tbl_LC_Integration" PRIMARY KEY  
(
	"N_ID" 
) 
) 
;
/****** Object:  Table "Tbl_Leave_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Leave_Details"(
	"N_Srno" integer NOT NULL,
	"D_Date" timestamp NOT NULL,
	"N_Type" integer NOT NULL,
	"n_sandwitch_leave" integer NULL,
	"n_sand_dependent_srno" integer NULL,
	"n_leave_status" varchar(5) NULL,
 CONSTRAINT "PK_LD" PRIMARY KEY  
(
	"N_Srno" ,
	"D_Date" ,
	"N_Type" 
) 
) 
;
/****** Object:  Table "tbl_Leave_Direct_approval_setup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Leave_Direct_approval_setup"(
	"n_id" SERIAL NOT NULL,
	"c_region_code" varchar(50) NULL,
	"c_div_code" varchar(50) NULL,
	"N_leave_type" integer NULL,
	"n_deleted" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"C_ModifiedBy" varchar(50) NULL
) 
;
/****** Object:  Table "Tbl_Leave_Log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Leave_Log"(
	"N_Srno" integer NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Apply_Date" timestamp NOT NULL,
	"D_Date_From" timestamp NOT NULL,
	"D_Date_To" timestamp NULL,
	"N_Type" integer NULL,
	"c_approved" char(1) NULL,
	"C_Approved_By" char(10) NULL,
	"C_Reason" varchar(100) NULL,
	"c_comment" varchar(250) NULL,
	"a_comment" varchar(250) NULL,
	"r_comment" varchar(250) NULL,
	"c_mgr_deleted" char(1) NULL,
	"c_mr_deleted" char(1) NULL,
	"c_cancelcomment" varchar(250) NULL,
	"d_approved_date" timestamp NULL
) 
;
/****** Object:  Table "Tbl_Leave_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Leave_Mst"(
	"N_Srno" integer NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Apply_Date" timestamp NOT NULL,
	"D_Date_From" timestamp NOT NULL,
	"D_Date_To" timestamp NULL,
	"N_Type" integer NULL,
	"c_approved" char(1) NULL,
	"C_Approved_By" char(10) NULL,
	"C_Reason" varchar(100) NULL,
	"c_comment" varchar(250) NULL,
	"r_comment" varchar(250) NULL,
	"a_comment" varchar(250) NULL,
	"c_mgr_deleted" char(1) NULL,
	"c_mr_deleted" char(1) NULL,
	"d_approved_date" timestamp NULL,
	"c_autoapprove" varchar(2) NULL,
	"n_dayswaitedforapproval" integer NULL,
	"n_setupdays" integer NULL,
 CONSTRAINT "PK_Tbl_Leave_Mst" PRIMARY KEY  
(
	"N_Srno" 
) 
) 
;
/****** Object:  Table "Tbl_leave_setting"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_leave_setting"(
	"n_srno" numeric(18, 0) NULL,
	"d_date" timestamp NULL,
	"c_fs_code" varchar(10) NULL,
	"n_type" integer NULL,
	"n_Actual_Leave" numeric(18, 0) NULL,
	"n_leave" numeric(18, 0) NULL,
	"n_CF" integer NULL,
	"n_EnCash" integer NULL,
	"n_setup" integer NULL,
	"d_fy_fromdate" timestamp NULL,
	"d_fy_todate" timestamp NULL,
	"d_plel_entry" timestamp NULL
) 
;
/****** Object:  Table "Tbl_leave_setting_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_leave_setting_log"(
	"n_srno" numeric(18, 0) NULL,
	"d_date" timestamp NULL,
	"c_fs_code" varchar(10) NULL,
	"n_type" integer NULL,
	"n_Actual_Leave" numeric(18, 0) NULL,
	"n_leave" numeric(18, 0) NULL,
	"n_CF" integer NULL,
	"n_EnCash" integer NULL,
	"n_setup" integer NULL
) 
;
/****** Object:  Table "tbl_leave_Setup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_leave_Setup"(
	"n_srNo" SERIAL NOT NULL,
	"c_Divison" text NULL,
	"c_Region" text NULL,
	"c_Designation" integer NULL,
	"c_Fs" text NULL,
	"n_delete" integer NOT NULL,
	"d_cdate" timestamp NULL,
	"c_user" varchar(50) NULL,
 CONSTRAINT "PK_tb_tbl_leave_PK_Setup" PRIMARY KEY  
(
	"n_srNo" 
) 
) 
;
/****** Object:  Table "tbl_leave_setupno"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_leave_setupno"(
	"n_srno" integer NULL,
	"n_setupno" integer NULL,
	"d_created" timestamp NULL,
	"c_division" text NULL,
	"c_desig" varchar(100) NULL,
	"c_empcode" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_leave_shiftapproval"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_leave_shiftapproval"(
	"n_leave_mst_srno" numeric(18, 0) NULL,
	"c_fs_code" varchar(50) NULL,
	"c_approvedby" varchar(50) NULL,
	"d_Modified" timestamp NULL
) 
;
/****** Object:  Table "Tbl_Leave_Type"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Leave_Type"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_Type" varchar(50) NOT NULL,
	"N_CarryForward" integer NULL,
	"N_Default" numeric(18, 0) NULL,
	"n_deleted" smallint NOT NULL,
	"c_modifier" varchar(10) NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_sh_name" varchar(50) NULL,
 CONSTRAINT "PK_Tbl_Leave_Type" PRIMARY KEY  
(
	"N_Srno" 
) 
) 
;
/****** Object:  Table "tbl_LeaveApprovalSetUp"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_LeaveApprovalSetUp"(
	"Id" numeric(18, 0) NOT NULL,
	"N_Type" integer NULL,
	"C_Code" char(10) NULL,
	"n_lock_days" integer NULL,
	"n_status" integer NULL,
	"n_fstype" integer NULL
) 
;
/****** Object:  Table "tbl_LeaveDetails_PL_EL_Leave"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_LeaveDetails_PL_EL_Leave"(
	"n_srno" integer NULL,
	"n_aftredaysreport" integer NULL,
	"n_creditsleave_days" integer NULL,
	"n_Compensation_Leave" integer NULL,
	"n_B15" numeric(18, 0) NULL,
	"n_A15" numeric(18, 0) NULL
) 
;
/****** Object:  Table "tbl_locatio_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_locatio_log"(
	"c_data" text NULL,
	"c_fscode" varchar(50) NULL,
	"d_Date" timestamp NULL
) 
;
/****** Object:  Table "Tbl_location_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_location_det"(
	"c_type" varchar(10) NULL,
	"n_srno" numeric(18, 0) NOT NULL,
	"c_code" varchar(10) NOT NULL,
	"c_subarea_code" varchar(10) NULL,
	"c_cellid" varchar(20) NULL,
	"c_mcc" varchar(20) NULL,
	"c_mnc" varchar(20) NULL,
	"c_lac" varchar(20) NULL,
	"c_cellinfo" varchar(50) NULL,
 CONSTRAINT "PK_Tbl_location_det" PRIMARY KEY  
(
	"n_srno" ,
	"c_code" 
) 
) 
;
/****** Object:  Table "Tbl_location_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_location_mst"(
	"c_cellid" varchar(20) NULL,
	"c_mcc" varchar(20) NULL,
	"c_mnc" varchar(20) NULL,
	"c_lac" varchar(20) NULL,
	"c_lat" varchar(10) NULL,
	"c_lon" varchar(10) NULL,
	"c_locationname" varchar(100) NULL
) 
;
/****** Object:  Table "TBL_LOG"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "TBL_LOG"(
	"Indexs" varchar(1000) NULL,
	"data" text NULL,
	"fscode" varchar(50) NULL,
	"dat" timestamp NULL
) 
;
/****** Object:  Table "tbl_log_drlocation_api"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_log_drlocation_api"(
	"companyID" varchar(50) NULL,
	"fscode" varchar(20) NULL,
	"empcode" varchar(20) NULL,
	"indexno" varchar(20) NULL,
	"data" text NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_Log_FSPARENTChk"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Log_FSPARENTChk"(
	"c_spname" varchar(500) NULL,
	"c_paramenters" text NULL,
	"d_Date" timestamp NULL
) 
;
/****** Object:  Table "Tbl_LogColumnList"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_LogColumnList"(
	"FieldName" varchar(20) NOT NULL,
	"FieldDescription" varchar(50) NOT NULL
) 
;
/****** Object:  Table "tbl_Login_Email_SendDetails"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Login_Email_SendDetails"(
	"n_srno" SERIAL NOT NULL,
	"n_referenceid" integer NOT NULL,
	"c_tomailids" varchar(1000) NULL,
	"d_send_on" timestamp NULL,
	"c_status" varchar(20) NULL,
	"c_error" varchar(1000) NULL
) 
;
/****** Object:  Table "tbl_Login_Email_ToSend"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Login_Email_ToSend"(
	"n_id" SERIAL NOT NULL,
	"c_fscode" varchar(50) NULL,
	"d_logindate" timestamp NULL,
	"d_serverupdateddate" timestamp NULL
) 
;
/****** Object:  Table "tbl_mail_error_Logs"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_mail_error_Logs"(
	"n_srno" SERIAL NOT NULL,
	"c_emailid" varchar(100) NULL,
	"c_errorlog" text NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "Tbl_ManageExpenseTA_AdditionalSettings"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_ManageExpenseTA_AdditionalSettings"(
	"n_srno" SERIAL NOT NULL,
	"n_FsType" integer NULL,
	"c_ExpCode" varchar(20) NULL,
	"n_SeqNo" integer NULL,
	"n_Flag" integer NULL,
	"n_Amount" numeric(18, 2) NULL,
	"n_TotalCall" integer NULL,
	"n_DrCall" integer NULL,
	"n_ChCall" integer NULL,
	"n_StkCall" integer NULL,
	"n_OtherCall" integer NULL,
	"n_deleted" integer NOT NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "Tbl_ManageExpenseTA_AdditionalSettings_bck"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_ManageExpenseTA_AdditionalSettings_bck"(
	"n_srno" SERIAL NOT NULL,
	"n_FsType" integer NULL,
	"c_ExpCode" varchar(20) NULL,
	"n_SeqNo" integer NULL,
	"n_Flag" integer NULL,
	"n_Amount" numeric(18, 2) NULL,
	"n_TotalCall" integer NULL,
	"n_DrCall" integer NULL,
	"n_ChCall" integer NULL,
	"n_StkCall" integer NULL,
	"n_OtherCall" integer NULL,
	"n_deleted" integer NOT NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_Manager_doc_Mapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Manager_doc_Mapping"(
	"c_cust_code" varchar(10) NOT NULL,
	"c_fs_code" varchar(10) NOT NULL,
	"c_date_from" timestamp NOT NULL,
	"c_date_to" timestamp NULL,
	"c_note" varchar(100) NULL,
	"c_created_by" varchar(10) NULL,
	"d_created_date" timestamp NULL,
	"c_dr_map_fscode" varchar(50) NULL,
 CONSTRAINT "PK_tbl_Manager_doc_Mapping_1" PRIMARY KEY  
(
	"c_cust_code" ,
	"c_fs_code" ,
	"c_date_from" 
) 
) 
;
/****** Object:  Table "tbl_manager_doc_mapping_items"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_manager_doc_mapping_items"(
	"c_cust_code" varchar(50) NULL,
	"c_fscode" varchar(50) NULL,
	"d_date_from" timestamp NULL,
	"d_date_to" timestamp NULL,
	"c_item_code" varchar(50) NULL
) 
;
/****** Object:  Table "Tbl_MandatoryCircular"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_MandatoryCircular"(
	"C_Code" varchar(10) NOT NULL,
	"c_subject" varchar(100) NOT NULL,
	"c_circular_type" varchar(10) NOT NULL,
	"d_entry_date" timestamp NOT NULL,
	"d_from_date" timestamp NOT NULL,
	"d_to_date" timestamp NULL,
	"n_active" boolean NOT NULL,
	"c_modifier" varchar(10) NULL,
	"d_modified" timestamp NULL,
	"d_created" timestamp NOT NULL,
	"n_deleted" integer NOT NULL,
	"c_filename" varchar(1000) NULL,
	"c_description" text NULL,
	"n_filetype" integer NULL,
 CONSTRAINT "PK_Tbl_MandatoryCircular" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "Tbl_MandatoryCircular_ImageDtls"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_MandatoryCircular_ImageDtls"(
	"c_code" varchar(20) NULL,
	"c_filename" varchar(50) NULL,
	"n_filetype" integer NULL,
	"n_srort" integer NULL
) 
;
/****** Object:  Table "tbl_MandatorySetup_Det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_MandatorySetup_Det"(
	"N_SrNo" integer NOT NULL,
	"C_SelectedItem" varchar(100) NOT NULL,
	"C_Type" varchar(50) NOT NULL
) 
;
/****** Object:  Table "tbl_MandatorySetup_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_MandatorySetup_Mst"(
	"N_SrNo" SERIAL NOT NULL,
	"C_ReportType" varchar(50) NOT NULL,
	"C_DesType" varchar(50) NOT NULL,
	"C_Type" varchar(50) NOT NULL,
	"D_Date_From" "date" NOT NULL,
	"D_Date_to" "date" NOT NULL,
	"N_Delete" integer NOT NULL,
	"C_Create_Fs" varchar(50) NOT NULL,
	"D_Create_date" timestamp NOT NULL,
	"C_Update_Fs" varchar(50) NULL,
	"D_Update_Date" timestamp NULL,
	"C_Division" varchar(50) NULL,
	"C_Region" varchar(50) NULL,
	"N_Designation" integer NULL,
	"C_Fs_Code" varchar(150) NULL,
 CONSTRAINT "PK_tbl_MandatorySetup_Mst" PRIMARY KEY  
(
	"N_SrNo" 
) 
) 
;
/****** Object:  Table "Tbl_Map_Chem_Doc"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Map_Chem_Doc"(
	"c_doc_code" char(10) NOT NULL,
	"c_chem_code" char(10) NOT NULL,
	"Weightage" numeric(18, 2) NULL,
 CONSTRAINT "PK_Tbl_Map_Chem_Doc" PRIMARY KEY  
(
	"c_doc_code" ,
	"c_chem_code" 
) 
) 
;
/****** Object:  Table "Tbl_Map_Hospital_Doc"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Map_Hospital_Doc"(
	"c_doc_code" char(10) NOT NULL,
	"c_hospital_code" char(10) NOT NULL,
	"Weightage" numeric(18, 2) NULL,
 CONSTRAINT "PK_Tbl_Map_Hospital_Doc" PRIMARY KEY  
(
	"c_doc_code" ,
	"c_hospital_code" 
) 
) 
;
/****** Object:  Table "tbl_marketing_msg_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_marketing_msg_mst"(
	"n_srno" SERIAL NOT NULL,
	"c_subject" varchar(50) NULL,
	"c_message" text NULL,
	"d_date_from" timestamp NULL,
	"d_date_to" timestamp NULL,
	"c_div_code" varchar(50) NULL,
	"n_type" integer NULL,
	"c_created_by" varchar(50) NULL,
	"d_created_date" timestamp NULL,
	"d_modify_date" timestamp NULL,
 CONSTRAINT "PK_tbl_marketing_msg_mst" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "Tbl_Master_Setup_Header"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Master_Setup_Header"(
	"n_ID" integer NOT NULL,
	"c_TableName" varchar(100) NULL,
	"c_DisplayNameInTheHeader" varchar(100) NULL,
	"c_DisplayNameForList" varchar(100) NULL,
	"c_extra_search_condition" varchar(7000) NULL,
	"menuid" varchar(100) NULL,
	"c_role" varchar(20) NULL
) 
;
/****** Object:  Table "Tbl_MasterCreated_Date"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_MasterCreated_Date"(
	"D_Created_Date" timestamp NOT NULL
) 
;
/****** Object:  Table "tbl_Material_Dispatch_Detailss"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Material_Dispatch_Detailss"(
	"n_srno" bigint NOT NULL,
	"c_dispatchmode" varchar(500) NULL,
	"d_dispatchdate" timestamp NULL,
	"c_dispatchproof" varchar(500) NULL,
	"c_dispatchaddress" varchar(250) NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"n_dispatchflag" integer NULL
) 
;
/****** Object:  Table "tbl_Material_Eligibility_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Material_Eligibility_Mst"(
	"c_code" varchar(10) NOT NULL,
	"c_grade" varchar(10) NOT NULL,
	"n_flag" smallint NOT NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
 CONSTRAINT "PK_tbl_Material_Eligibility_Mst_1" PRIMARY KEY  
(
	"c_code" ,
	"c_grade" 
) 
) 
;
/****** Object:  Table "tbl_Material_Group_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Material_Group_Mst"(
	"c_code" varchar(10) NOT NULL,
	"c_name" varchar(50) NOT NULL,
	"n_type" smallint NOT NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
 CONSTRAINT "PK_tbl_Material_Group_Mst" PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "tbl_material_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_material_mst"(
	"c_code" varchar(10) NOT NULL,
	"c_name" varchar(50) NOT NULL,
	"c_short_name" varchar(7) NULL,
	"c_description" varchar(100) NULL,
	"n_approval_required" integer NULL,
	"c_desk_code" varchar(10) NULL,
	"c_group_code" varchar(10) NULL,
	"N_Deleted" integer NULL,
	"C_Modifier" varchar(50) NULL,
	"D_Modified" timestamp NULL,
	"D_created" timestamp NULL,
	"n_type" integer NULL,
	"n_qty" numeric(18, 0) NULL,
	"c_vendor_name" varchar(100) NULL,
	"c_email_id" varchar(50) NULL,
	"c_email_Subject" varchar(100) NULL,
	"c_email_head1" varchar(100) NULL,
	"c_email_head2" varchar(100) NULL,
	"c_email_head3" varchar(100) NULL,
	"c_email_head4" varchar(100) NULL,
	"c_email_head5" varchar(100) NULL,
	"c_email_head6" varchar(100) NULL,
 CONSTRAINT "PK_tbl_material_mst" PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "tbl_material_request"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_material_request"(
	"n_srno" bigint NOT NULL,
	"c_emp_code" varchar(10) NULL,
	"d_date" timestamp NULL,
	"c_material_code" varchar(10) NULL,
	"c_description1" varchar(200) NULL,
	"c_description2" varchar(200) NULL,
	"n_priority" integer NULL,
	"d_approved" timestamp NULL,
	"d_due_date" timestamp NULL,
	"c_approved_note" varchar(200) NULL,
	"c_desk_code" varchar(10) NULL,
	"d_confirmed" timestamp NULL,
	"c_confirmed_note" varchar(200) NULL,
	"c_confirmedby" varchar(10) NULL,
	"c_status" char(1) NULL,
	"c_approvedby" varchar(10) NULL,
	"C_DeliveryType" varchar(10) NULL,
	"c_description3" varchar(100) NULL,
	"c_division_name" varchar(50) NULL,
	"c_designation" varchar(50) NULL,
	"n_rcvd" integer NULL,
	"c_rcvdby" varchar(10) NULL,
 CONSTRAINT "PK_tbl_material_request" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_material_request_heirarchy"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_material_request_heirarchy"(
	"n_srno" SERIAL NOT NULL,
	"n_request_type" integer NOT NULL,
	"c_material_group" varchar(10) NOT NULL,
	"c_request_emp_location" varchar(10) NULL,
	"c_request_emp_department" varchar(10) NULL,
	"c_request_emp_code" varchar(10) NULL,
	"c_desk_code" varchar(10) NOT NULL,
	"d_date" timestamp NOT NULL,
	"n_active" integer NOT NULL,
 CONSTRAINT "PK_tbl_material_request_heirarchy" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_mcr_reporting_setupdata"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_mcr_reporting_setupdata"(
	"c_fscode" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_mdm_device_mapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_mdm_device_mapping"(
	"n_id" SERIAL NOT NULL,
	"c_deviceid" varchar(50) NULL,
	"c_fs_code" varchar(20) NULL,
	"c_empno" varchar(20) NULL,
	"d_dtfrom" timestamp NULL,
	"d_dtto" timestamp NULL,
	"d_created" timestamp NULL,
	"c_createdby" varchar(20) NULL,
	"d_modified" timestamp NULL,
	"c_modifiedby" varchar(20) NULL,
	"n_requestid" numeric(18, 0) NULL
) 
;
/****** Object:  Table "tbl_menu_favourite"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_menu_favourite"(
	"n_id" SERIAL NOT NULL,
	"c_user_id" varchar(20) NULL,
	"c_menu_url" varchar(5000) NULL,
	"c_menu_name" varchar(200) NULL,
	"n_menu_id" integer NULL,
	"n_sort_order" integer NULL,
	"d_created" timestamp NULL,
PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "Tbl_Menu_Items"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Menu_Items"(
	"itemid" integer NOT NULL,
	"menuid" integer NULL,
	text varchar(100) NULL,
	"url" varchar(255) NULL,
	"showmenu" varchar(50) NULL,
	bytea varchar(200) NULL,
	"overimage" varchar(200) NULL,
	"flag" integer NULL,
	"n_visible" integer NULL,
	"N_Autocode_Flag" integer NULL,
	"SFARole" varchar(5) NOT NULL,
	"n_rights_flag" integer NOT NULL,
	"projectid" integer NULL,
	"c_Disply_Header" varchar(200) NULL,
	"n_Disply_Header_flag" boolean NULL,
	"n_shift" integer NULL,
	"N_MenuRights" integer NULL
) 
;
/****** Object:  Table "Tbl_menu_items_1643711670"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_menu_items_1643711670"(
	"itemid" integer NOT NULL,
	"menuid" integer NULL,
	text varchar(100) NULL,
	"url" varchar(255) NULL,
	"showmenu" varchar(50) NULL,
	bytea varchar(200) NULL,
	"overimage" varchar(200) NULL,
	"flag" integer NULL,
	"n_visible" integer NULL,
	"N_Autocode_Flag" integer NULL,
	"SFARole" varchar(5) NOT NULL,
	"n_rights_flag" integer NOT NULL,
	"projectid" integer NULL,
	"c_Disply_Header" varchar(200) NULL,
	"n_Disply_Header_flag" boolean NULL,
	"n_shift" integer NULL
) 
;
/****** Object:  Table "Tbl_Menu_Projects"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Menu_Projects"(
	"projectid" integer NOT NULL,
	"name" varchar(100) NULL,
	"menuCloseDelay" integer NULL,
	"menuOpenDelay" integer NULL,
	"subOffsetTop" integer NULL,
	"subOffsetLeft" integer NULL
) 
;
/****** Object:  Table "tbl_menu_rights_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_menu_rights_log"(
	"Id" SERIAL NOT NULL,
	"division" text NOT NULL,
	"c_region" text NOT NULL,
	"fstype" varchar(50) NULL,
	"fscode" text NULL,
	"menuItem" varchar(100) NOT NULL,
	"mainMenu" varchar(100) NOT NULL,
	"menuorderno" varchar(50) NOT NULL,
	"menustatus" varchar(50) NOT NULL,
	"d_cretedate" timestamp NOT NULL,
	"c_user" varchar(100) NOT NULL,
 CONSTRAINT "PK_tbl_menu_rights_log" PRIMARY KEY  
(
	"Id" 
) 
) 
;
/****** Object:  Table "Tbl_Menu_Styles"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Menu_Styles"(
	"styleid" integer NOT NULL,
	"name" varchar(50) NULL,
	"oncolor" char(6) NULL,
	"onbgcolor" char(6) NULL,
	"offcolor" char(6) NULL,
	"offbgcolor" char(6) NULL,
	"padding" integer NULL,
	"borderwidth" integer NULL,
	"fontfamily" varchar(25) NULL,
	"fontsize" char(6) NULL,
	"bordercolor" char(6) NULL,
	"borderstyle" char(10) NULL,
	"fontstyle" char(10) NULL,
	"headerbgcolor" char(6) NULL,
	"headercolor" char(6) NULL,
	"outfilter" varchar(500) NULL,
	"overfilter" varchar(500) NULL,
	"pagebgcolor" char(6) NULL,
	"pagecolor" char(25) NULL,
	"separatorcolor" char(6) NULL,
	"subimage" varchar(100) NULL,
	"subimagepadding" integer NULL,
	"onborder" varchar(100) NULL,
	"fontweight" varchar(100) NULL,
	"onsubimage" varchar(100) NULL,
	"c" varchar(100) NULL,
	"headerborder" varchar(100) NULL,
	"menubgimage" varchar(100) NULL,
	"imagepadding" integer NULL,
	bytea varchar(100) NULL,
	"menubgcolor" varchar(6) NULL,
	"separatorpadding" integer NULL,
	"separatorwidth" char(10) NULL,
	"separatoralign" char(10) NULL,
	"separatorsize" integer NULL
) 
;
/****** Object:  Table "Tbl_Menu_Styles_copy"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Menu_Styles_copy"(
	"styleid" integer NOT NULL,
	"name" varchar(50) NULL,
	"oncolor" char(6) NULL,
	"onbgcolor" char(6) NULL,
	"offcolor" char(6) NULL,
	"offbgcolor" char(6) NULL,
	"padding" integer NULL,
	"borderwidth" integer NULL,
	"fontfamily" varchar(25) NULL,
	"fontsize" char(6) NULL,
	"bordercolor" char(6) NULL,
	"borderstyle" char(10) NULL,
	"fontstyle" char(10) NULL,
	"headerbgcolor" char(6) NULL,
	"headercolor" char(6) NULL,
	"outfilter" varchar(500) NULL,
	"overfilter" varchar(500) NULL,
	"pagebgcolor" char(6) NULL,
	"pagecolor" char(25) NULL,
	"separatorcolor" char(6) NULL,
	"subimage" varchar(100) NULL,
	"subimagepadding" integer NULL,
	"onborder" varchar(100) NULL,
	"fontweight" varchar(100) NULL,
	"onsubimage" varchar(100) NULL,
	"c" varchar(100) NULL,
	"headerborder" varchar(100) NULL,
	"menubgimage" varchar(100) NULL,
	"imagepadding" integer NULL,
	bytea varchar(100) NULL,
	"menubgcolor" varchar(6) NULL,
	"separatorpadding" integer NULL,
	"separatorwidth" char(10) NULL,
	"separatoralign" char(10) NULL,
	"separatorsize" integer NULL
) 
;
/****** Object:  Table "tbl_menu360"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_menu360"(
	"n_id" SERIAL NOT NULL,
	"c_name" varchar(200) NULL,
	"c_image" varchar(200) NULL,
PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "tbl_menu360_bck010825"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_menu360_bck010825"(
	"n_id" SERIAL NOT NULL,
	"c_name" varchar(200) NULL,
	"c_image" varchar(200) NULL
) 
;
/****** Object:  Table "tbl_menu360_sub"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_menu360_sub"(
	"n_id" SERIAL NOT NULL,
	"n_menu_id" integer NULL,
	"c_name" varchar(200) NULL,
	"c_url" varchar(200) NULL,
	"old_url" varchar(400) NULL,
	"c_url_360" varchar(100) NULL,
	"N_Dsca_Type" integer NULL,
	"N_MenuRights" integer NULL,
	"n_visible" integer NULL,
PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "tbl_menu360_sub_bck010825"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_menu360_sub_bck010825"(
	"n_id" SERIAL NOT NULL,
	"n_menu_id" integer NULL,
	"c_name" varchar(200) NULL,
	"c_url" varchar(200) NULL,
	"old_url" varchar(400) NULL,
	"c_url_360" varchar(100) NULL,
	"N_Dsca_Type" integer NULL
) 
;
/****** Object:  Table "tbl_menus"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_menus"(
	"menuid" integer NOT NULL,
	"projectid" integer NULL,
	"styleid" integer NULL,
	"name" varchar(50) NULL,
	"alwaysvisible" integer NULL,
	"orientation" integer NULL,
	"overflow" varchar(50) NULL,
	"margin" integer NULL,
	"top" varchar(50) NULL,
	"left" integer NULL
) 
;
/****** Object:  Table "Tbl_Menus_copy"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Menus_copy"(
	"menuid" integer NOT NULL,
	"projectid" integer NULL,
	"styleid" integer NULL,
	"name" varchar(50) NULL,
	"alwaysvisible" integer NULL,
	"orientation" integer NULL,
	"overflow" varchar(50) NULL,
	"margin" integer NULL,
	"top" varchar(50) NULL,
	"left" integer NULL
) 
;
/****** Object:  Table "Tbl_Message_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Message_Details"(
	"N_Srno" char(10) NOT NULL,
	"C_Attach_Name" varchar(50) NOT NULL,
 CONSTRAINT "PK_Tbl_Message_Details" PRIMARY KEY  
(
	"N_Srno" 
) 
) 
;
/****** Object:  Table "Tbl_Message_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Message_Mst"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code_From" char(10) NOT NULL,
	"C_Parent" char(10) NULL,
	"C_FS_Code_To" char(10) NOT NULL,
	"C_Subject" varchar(500) NULL,
	"C_Message" varchar(500) NULL,
	"n_Read" integer NULL,
	"n_ReadParent" integer NULL,
	"N_Delete" integer NULL,
	"N_DeleteParent" integer NULL,
	"n_Msg_Type" integer NULL,
	"D_Created_Date" timestamp NULL,
	"n_msgid" numeric(18, 0) NULL,
	"c_empcode" char(10) NULL,
	"n_UpdateRequest_Srno" numeric(18, 0) NULL,
	"n_Transaction_Srno" numeric(18, 0) NULL,
	"n_Module_Srno" integer NULL,
 CONSTRAINT "PK_Tbl_Message_Mst" PRIMARY KEY  
(
	"N_Srno" 
) 
) 
;
/****** Object:  Table "Tbl_Message_Mst_temp"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Message_Mst_temp"(
	"C_FS_Code_From" char(10) NOT NULL,
	"C_Parent" char(10) NULL,
	"C_FS_Code_To" char(10) NOT NULL,
	"C_Subject" varchar(500) NULL,
	"C_Message" varchar(500) NULL,
	"n_Read" integer NULL,
	"n_ReadParent" integer NULL,
	"N_Delete" integer NULL,
	"N_DeleteParent" integer NULL,
	"n_Msg_Type" integer NULL,
	"D_Created_Date" timestamp NULL,
	"n_msgid" numeric(18, 0) NULL
) 
;
/****** Object:  Table "Tbl_Message_Type"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Message_Type"(
	"N_Msg_Type" integer NOT NULL,
	"C_Description" varchar(50) NOT NULL,
	"url" varchar(250) NULL,
 CONSTRAINT "PK_Tbl_Message_Type" PRIMARY KEY  
(
	"N_Msg_Type" 
) 
) 
;
/****** Object:  Table "tbl_metroclassification"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_metroclassification"(
	"n_id" integer NULL,
	"c_name" varchar(100) NULL,
	"n_deleted" integer NULL
) 
;
/****** Object:  Table "tbl_MFAC_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_MFAC_Mst"(
	"C_code" varchar(10) NOT NULL,
	"c_name" varchar(150) NULL,
	"Address" varchar(150) NULL,
	"Address1" varchar(150) NULL,
	"City_code" varchar(50) NULL,
	"State_code" varchar(50) NULL,
	"Pin" varchar(10) NULL,
	"Phone" varchar(15) NULL,
	"Active" integer NULL,
	"TIN_NO" varchar(25) NULL,
	"LIC_NO" varchar(25) NULL,
	"C_contact_person" varchar(100) NULL,
	"n_delete" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(20) NULL,
 CONSTRAINT "PK_tbl_MFAC_Mst" PRIMARY KEY  
(
	"C_code" 
) 
) 
;
/****** Object:  Table "Tbl_Mkt_DSCA_Type"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Mkt_DSCA_Type"(
	"N_Type" integer NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"c_display_name" varchar(50) NULL,
	"n_report_flag" varchar(50) NULL,
	"n_DCRdisplay" smallint NULL,
	"n_status" smallint NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_created" varchar(50) NULL,
	"c_modifier" varchar(50) NULL,
	"n_deleted" smallint NULL,
	"c_image_enable" varchar(500) NULL,
	"c_image_disable" varchar(500) NULL
) 
;
/****** Object:  Table "Tbl_mkt_DWR"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_mkt_DWR"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"D_Date_Report" timestamp NOT NULL,
	"D_Entry_Date" timestamp NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"C_HQ_Code" varchar(10) NOT NULL,
	"C_Worked_With" varchar(10) NULL,
	"C_Reason" varchar(200) NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"C_Area_Stay" varchar(10) NOT NULL,
	"C_Note1" varchar(200) NULL,
	"C_Note2" varchar(200) NULL,
	"C_Note3" varchar(200) NULL,
	"N_Distance" numeric(18, 0) NULL,
	"n_Fare" numeric(10, 0) NULL,
	"n_Allowance" integer NULL,
	"C_Allowance_Type" char(10) NULL,
	"c_WrkType" varchar(10) NULL,
	"N_Sort_Order" numeric(18, 0) NULL,
	"N_Flag" integer NULL,
	"C_Placeof_Work" varchar(10) NOT NULL,
	"C_Stayed_At" varchar(10) NOT NULL,
	"c_Emp_Code" varchar(10) NOT NULL,
	"c_temp_fs" varchar(10) NULL,
	"c_temp_emp" varchar(10) NULL,
	"D_Created" timestamp NULL,
	"D_Modified" timestamp NULL,
	"C_WorkContactRemarks" varchar(200) NULL,
 CONSTRAINT "PK_Tbl_mkt_DWR" PRIMARY KEY  
(
	"N_Srno" 
) 
) 
;
/****** Object:  Table "Tbl_mkt_DWR_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_mkt_DWR_Details"(
	"N_Srno" integer NOT NULL,
	"n_rowid" integer NOT NULL,
	"n_type" integer NOT NULL,
	"C_DSC_Code" varchar(10) NOT NULL,
	"C_BA" varchar(50) NULL,
	"N_POB" numeric(18, 2) NULL,
	"N_Closing" numeric(18, 2) NULL,
	"N_Stock_Value" numeric(18, 2) NULL,
	"N_Sales_Value" numeric(18, 2) NULL,
	"N_Outstanding" numeric(18, 2) NULL,
	"C_Note" varchar(200) NULL,
	"c_time" varchar(50) NULL,
	"c_doc_note" varchar(50) NULL,
	"c_doc_grade" varchar(50) NULL,
	"c_fmcg_stk_code" varchar(10) NULL,
	"n_process_status" integer NULL,
	"c_Comments" varchar(200) NULL,
 CONSTRAINT "PK_Tbl_mkt_DWR_Details" PRIMARY KEY  
(
	"N_Srno" ,
	"n_rowid" ,
	"n_type" ,
	"C_DSC_Code" 
) 
) 
;
/****** Object:  Table "Tbl_mkt_DWR_doc_item_role_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_mkt_DWR_doc_item_role_det"(
	"n_dcr_no" varchar(20) NULL,
	"c_doc_code" varchar(20) NULL,
	"c_itemcode" varchar(20) NULL,
	"c_pref_code" varchar(2) NULL
) 
;
/****** Object:  Table "Tbl_mkt_DWR_prec_sub_details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_mkt_DWR_prec_sub_details"(
	"n_srno" numeric(9, 0) NULL,
	"c_doc_code" varchar(10) NULL,
	"c_item_code" varchar(15) NULL,
	"n_prec_qty" numeric(18, 2) NULL
) 
;
/****** Object:  Table "Tbl_mkt_DWR_Sub_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_mkt_DWR_Sub_Details"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_Doc_Code" varchar(10) NULL,
	"N_RowId" integer NULL,
	"C_Item_Code" char(10) NULL,
	"C_ITEM_EXP" char(10) NULL,
	"n_Product_Unit" numeric(18, 0) NULL,
	"N_Type" integer NULL,
	"N_AUTO" numeric(18, 0) NULL,
	"c_title_code" varchar(20) NULL,
	"c_item_note" varchar(200) NULL
) 
;
/****** Object:  Table "Tbl_mkt_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_mkt_Mst"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"N_Type" numeric(18, 0) NOT NULL,
	"C_Grade" char(10) NULL,
	"C_Qualification" varchar(30) NULL,
	"C_Add_1" varchar(50) NULL,
	"C_Add_2" varchar(50) NULL,
	"C_Add_3" varchar(50) NULL,
	"C_Add_4" varchar(50) NULL,
	"C_Pin" char(10) NULL,
	"C_Phone" char(20) NULL,
	"C_Fax" char(20) NULL,
	"C_Category" char(10) NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"C_Parent" char(10) NULL,
	"C_EmpNo" varchar(10) NOT NULL,
	"C_Desc" varchar(50) NULL,
	"D_DOB" timestamp NULL,
	"D_DOJ" timestamp NULL,
	"D_DOW" timestamp NULL,
	"n_Status" integer NULL,
	"C_Email_ID" varchar(50) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"N_ptype" integer NULL,
	"c_div_code" varchar(25) NULL,
 CONSTRAINT "PK_Tbl_mkt_Mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "Tbl_mkt_Mst_29102021"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_mkt_Mst_29102021"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"N_Type" numeric(18, 0) NOT NULL,
	"C_Grade" char(10) NULL,
	"C_Qualification" varchar(30) NULL,
	"C_Add_1" varchar(50) NULL,
	"C_Add_2" varchar(50) NULL,
	"C_Add_3" varchar(50) NULL,
	"C_Add_4" varchar(50) NULL,
	"C_Pin" char(10) NULL,
	"C_Phone" char(20) NULL,
	"C_Fax" char(20) NULL,
	"C_Category" char(10) NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"C_Parent" char(10) NULL,
	"C_EmpNo" varchar(10) NOT NULL,
	"C_Desc" varchar(50) NULL,
	"D_DOB" timestamp NULL,
	"D_DOJ" timestamp NULL,
	"D_DOW" timestamp NULL,
	"n_Status" integer NULL,
	"C_Email_ID" varchar(50) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"N_ptype" integer NULL,
	"c_div_code" varchar(25) NULL
) 
;
/****** Object:  Table "Tbl_mkt_Mst_LogTable"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_mkt_Mst_LogTable"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"N_Type" numeric(18, 0) NOT NULL,
	"C_Grade" char(10) NULL,
	"C_Qualification" varchar(30) NULL,
	"C_Add_1" varchar(50) NULL,
	"C_Add_2" varchar(50) NULL,
	"C_Add_3" varchar(50) NULL,
	"C_Add_4" varchar(50) NULL,
	"C_Pin" char(10) NULL,
	"C_Phone" char(20) NULL,
	"C_Fax" char(20) NULL,
	"C_Category" char(10) NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"C_Parent" char(10) NULL,
	"C_EmpNo" varchar(10) NOT NULL,
	"C_Desc" varchar(50) NULL,
	"D_DOB" timestamp NULL,
	"D_DOJ" timestamp NULL,
	"D_DOW" timestamp NULL,
	"n_Status" integer NULL,
	"C_Email_ID" varchar(50) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"N_ptype" integer NULL
) 
;
/****** Object:  Table "Tbl_Mkt_STP"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Mkt_STP"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"d_modified" timestamp NULL,
	"N_DA_OTHER" numeric(18, 2) NULL,
 CONSTRAINT "PK_Tbl_Mkt_STP" PRIMARY KEY  
(
	"N_Srno" 
) 
) 
;
/****** Object:  Table "Tbl_Mkt_STP_Det_Temp_Upload"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Mkt_STP_Det_Temp_Upload"(
	"n_Srno" numeric(18, 0) NOT NULL,
	"c_Subarea" varchar(50) NULL,
	"c_AreaToVisit" varchar(50) NULL,
	"c_Type" varchar(5) NULL,
	"n_wkg_days" integer NULL,
	"n_Distance" numeric(10, 2) NULL,
	"n_Ta" numeric(19, 2) NULL,
	"d_date" varchar(20) NULL
) 
;
/****** Object:  Table "Tbl_Mkt_STP_Exp"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Mkt_STP_Exp"(
	"N_Srno" integer NOT NULL,
	"C_Exp_Code" char(10) NOT NULL,
	"N_Amount" numeric(18, 2) NULL,
 CONSTRAINT "PK_Tbl_Mkt_STP_Exp" PRIMARY KEY  
(
	"N_Srno" ,
	"C_Exp_Code" 
) 
) 
;
/****** Object:  Table "Tbl_mkt_WorkType"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_mkt_WorkType"(
	"c_code" char(10) NOT NULL,
	"c_name" char(10) NULL,
	"c_sh_name" char(5) NULL,
	"n_flag" integer NOT NULL,
	"n_Chflag" integer NOT NULL,
	"n_stockflag" integer NOT NULL,
	"n_deleted" smallint NOT NULL,
	"c_modifier" varchar(10) NULL,
	"N_Status" integer NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NOT NULL,
	"n_chemorder" integer NULL,
	"n_OthersFlag" integer NULL,
	"n_campflag" integer NULL,
 CONSTRAINT "PK_Tbl_mkt_WorkType" PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "tbl_Mkt_workWith_multiple"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Mkt_workWith_multiple"(
	"N_srno" numeric(9, 0) NULL,
	"C_fscode_parent" varchar(10) NULL
) 
;
/****** Object:  Table "Tbl_mktUser_Access"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_mktUser_Access"(
	"N_Type" numeric(18, 0) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"c_sh_name" varchar(20) NULL,
	"n_CI_FLag" smallint NULL,
	"n_fs_flag" smallint NULL,
	"c_gadgetcode" varchar(50) NULL,
 CONSTRAINT "PK_Tbl_mktUser_Access" PRIMARY KEY  
(
	"N_Type" 
) 
) 
;
/****** Object:  Table "tbl_mngr_gift_allocation"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_mngr_gift_allocation"(
	"c_empcode" varchar(100) NULL,
	"c_itemcode" varchar(100) NULL,
	"n_qty" integer NULL,
	"d_date" timestamp NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(50) NULL,
	"c_doccode" varchar(20) NULL,
	"n_id" integer NULL,
	"c_transaction_id" varchar(50) NULL,
	"n_cycle_balance_qty" integer NULL,
	"c_cycle_id" varchar(50) NULL,
	"n_primary_id" SERIAL NOT NULL,
	"n_lotsize" integer NULL,
PRIMARY KEY  
(
	"n_primary_id" 
) 
) 
;
/****** Object:  Table "tbl_mngr_gift_allocation_rps_reject_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_mngr_gift_allocation_rps_reject_log"(
	"c_empcode" varchar(100) NULL,
	"c_itemcode" varchar(100) NULL,
	"n_qty" integer NULL,
	"d_date" timestamp NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(50) NULL,
	"c_doccode" varchar(20) NULL,
	"n_id" integer NULL,
	"c_transaction_id" varchar(50) NULL,
	"n_cycle_balance_qty" integer NULL,
	"c_cycle_id" varchar(50) NULL,
	"n_primary_id" SERIAL NOT NULL,
PRIMARY KEY  
(
	"n_primary_id" 
) 
) 
;
/****** Object:  Table "tbl_mngr_gift_allocation_stock"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_mngr_gift_allocation_stock"(
	"c_empcode" varchar(100) NULL,
	"c_itemcode" varchar(100) NULL,
	"n_qty" integer NULL,
	"n_qty_stock" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_doccode" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_mngr_gift_allocation_upload"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_mngr_gift_allocation_upload"(
	"c_empcode" varchar(100) NULL,
	"c_itemcode" varchar(100) NULL,
	"n_qty" varchar(100) NULL,
	"d_date" timestamp NULL,
	"c_modifier" varchar(50) NULL,
	"n_uploadid" numeric(18, 0) NOT NULL,
	"c_cycle_id" varchar(50) NULL,
	"n_lotsize" varchar(100) NULL,
	"n_validationpass" integer NULL,
	"c_validationmessage" text NULL,
	"d_modified" timestamp NULL,
	"n_isStockUpdated" smallint NULL,
	"n_primary_id" SERIAL NOT NULL
) 
;
/****** Object:  Table "tbl_Mob_Hit_Count"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Mob_Hit_Count"(
	"c_userid" varchar(20) NOT NULL,
	"d_created" timestamp NULL,
	"n_menuid" integer NULL,
	"D_LOG_OUT" timestamp NULL,
	"c_ip" varchar(20) NULL,
 CONSTRAINT "PK_tbl_Mob_Hit_Count" PRIMARY KEY  
(
	"c_userid" 
) 
) 
;
/****** Object:  Table "tbl_Mobile_Reports"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Mobile_Reports"(
	"c_Report_ID" varchar(50) NULL,
	"c_Report_Name" varchar(100) NULL,
	"c_Parameters" varchar(500) NULL,
	"c_Url" varchar(100) NULL
) 
;
/****** Object:  Table "Tbl_Module_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Module_mst"(
	"C_code" varchar(10) NOT NULL,
	"C_modname" varchar(50) NOT NULL,
 CONSTRAINT "PK_Tbl_Module_mst" PRIMARY KEY  
(
	"C_code" 
) 
) 
;
/****** Object:  Table "Tbl_ModuleEvent_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_ModuleEvent_Mst"(
	"C_Mod_code" varchar(10) NOT NULL,
	"C_Event" varchar(50) NOT NULL,
	"C_Group_code" varchar(10) NOT NULL
) 
;
/****** Object:  Table "Tbl_ModuleGroup_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_ModuleGroup_det"(
	"C_Group_code" varchar(10) NOT NULL,
	"C_Emp_code" varchar(10) NOT NULL
) 
;
/****** Object:  Table "Tbl_ModuleGroup_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_ModuleGroup_mst"(
	"C_code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
 CONSTRAINT "PK_Tbl_ModuleGroup_mst" PRIMARY KEY  
(
	"C_code" 
) 
) 
;
/****** Object:  Table "tbl_ModuleMst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_ModuleMst"(
	"n_srNo" integer NOT NULL,
	"C_Code" varchar(100) NOT NULL,
	"C_Name" varchar(300) NOT NULL,
	"C_CreateDate" timestamp NULL,
	"C_Modified" timestamp NULL,
	"C_Deleted" integer NULL,
	"C_Type" varchar(100) NULL,
	"C_CreatedBy" varchar(100) NULL,
 CONSTRAINT "PK_tbl_ModuleMst" PRIMARY KEY  
(
	"n_srNo" 
) 
) 
;
/****** Object:  Table "tbl_ModuleMst_Det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_ModuleMst_Det"(
	"n_srNo" integer NOT NULL,
	"C_Code" varchar(100) NOT NULL,
	"C_Name" varchar(300) NOT NULL,
	"n_type" varchar(100) NULL,
	"FS2" varchar(100) NULL,
	"FS3" varchar(100) NULL,
	"FS4" varchar(100) NULL,
	"FS5" varchar(100) NULL,
	"FS6" varchar(100) NULL,
	"FS7" varchar(100) NULL,
	"FS8" varchar(100) NULL,
	"FS9" varchar(100) NULL,
	"FS10" varchar(100) NULL,
	"FS11" varchar(100) NULL,
	"FS12" varchar(100) NULL,
	"FS13" varchar(100) NULL,
	"FS14" varchar(100) NULL,
	"FS15" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_ModuleMst_Det_Log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_ModuleMst_Det_Log"(
	"Id" SERIAL NOT NULL,
	"n_srNo" integer NOT NULL,
	"D_Modified_Date" timestamp NOT NULL,
	"FS2" varchar(100) NULL,
	"FS3" varchar(100) NULL,
	"FS4" varchar(100) NULL,
	"FS5" varchar(100) NULL,
	"FS6" varchar(100) NULL,
	"FS7" varchar(100) NULL,
	"FS8" varchar(100) NULL,
	"FS9" varchar(100) NULL,
	"FS10" varchar(100) NULL,
	"FS11" varchar(100) NULL,
	"FS12" varchar(100) NULL,
	"FS13" varchar(100) NULL,
	"FS14" varchar(100) NULL,
	"FS15" varchar(100) NULL,
 CONSTRAINT "PK_tbl_ModuleMst_Det_Log" PRIMARY KEY  
(
	"Id" 
) 
) 
;
/****** Object:  Table "Tbl_Mon"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Mon"(
	"MonthNo" integer NULL,
	"MonthName" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_Monthly_Performance_Survey_feedback_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Monthly_Performance_Survey_feedback_mst"(
	"n_srno" SERIAL NOT NULL,
	"n_Survey_Srno" integer NOT NULL,
	"d_feedback_date" timestamp NOT NULL,
	"d_feedback_create_date" timestamp NOT NULL,
	"c_feedback_createBy" varchar(50) NOT NULL,
	"c_feedback_empcode" varchar(50) NOT NULL,
	"c_feedback_Fs_Code" varchar(50) NOT NULL,
	"c_feedback_Fs_Type" varchar(50) NOT NULL,
	"c_group" varchar(50) NOT NULL,
	"n_delete" varchar(50) NOT NULL,
PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_Monthly_Performance_Survey_feedback_result"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Monthly_Performance_Survey_feedback_result"(
	"n_srno" integer NOT NULL,
	"c_code" varchar(100) NOT NULL,
	"c_answer" text NOT NULL,
	"c_TypeFormat" varchar(100) NOT NULL,
	"d_Survey_date" timestamp NOT NULL,
	"d_create_date" timestamp NOT NULL,
	"c_createBy" varchar(50) NOT NULL,
	"c_empcode" varchar(50) NOT NULL,
	"c_group" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_Monthly_Performance_Survey_result"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Monthly_Performance_Survey_result"(
	"n_srno" integer NOT NULL,
	"c_code" varchar(100) NOT NULL,
	"c_answer" text NOT NULL,
	"c_TypeFormat" varchar(100) NOT NULL,
	"d_Survey_date" timestamp NOT NULL,
	"d_create_date" timestamp NOT NULL,
	"c_createBy" varchar(50) NOT NULL,
	"c_empcode" varchar(50) NOT NULL,
	"c_group" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_Monthly_Performance_Survey_result_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Monthly_Performance_Survey_result_mst"(
	"n_srno" SERIAL NOT NULL,
	"d_Survey_date" timestamp NOT NULL,
	"d_create_date" timestamp NOT NULL,
	"c_createBy" varchar(50) NOT NULL,
	"c_empcode" varchar(50) NOT NULL,
	"c_Fs_Code" varchar(50) NOT NULL,
	"c_Fs_Type" varchar(50) NOT NULL,
	"c_group" varchar(50) NOT NULL,
	"n_delete" varchar(50) NOT NULL,
PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_Moodle_LMS_LinkParameter"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Moodle_LMS_LinkParameter"(
	"n_parameter_code" integer NULL,
	"c_parameter_name" varchar(50) NULL,
	"c_client_parameter" varchar(50) NULL,
	"n_enabled" integer NULL
) 
;
/****** Object:  Table "Tbl_MstCreator"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_MstCreator"(
	"C_Code" varchar(10) NULL,
	"C_FS_Code" varchar(10) NULL
) 
;
/****** Object:  Table "Tbl_MTP"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_MTP"(
	"N_Srno" integer NOT NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"C_HQ_Code" char(10) NOT NULL,
	"N_Month" integer NOT NULL,
	"N_Year" integer NOT NULL,
	"c_approved" char(1) NULL,
	"C_Approved_By" varchar(50) NULL,
	"C_EMP_CODE" varchar(10) NOT NULL,
	"Lock_flag" integer NULL,
	"C_Reason" varchar(200) NULL,
	"N_BLOCK_FLAG" integer NULL,
	"D_Approved_Date" timestamp NULL,
	"n_copy" integer NULL,
	"c_approvedby_shifted" varchar(100) NULL,
	"D_Auto_MTP_Date" timestamp NULL,
	"auto_appr_flag" integer NOT NULL,
	"auto_appr_date" timestamp NULL,
	"c_is_approved" varchar(2) NULL,
	"n_resubmitted_count" integer NULL,
	"d_resubmitted_date" "date" NULL,
 CONSTRAINT "PK_Tbl_MTP" PRIMARY KEY  
(
	"N_Srno" 
) 
) 
;
/****** Object:  Table "tbl_mtp_automation_setup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_mtp_automation_setup"(
	"n_HQworking" integer NOT NULL,
	"n_MissedDrcallpopup" integer NOT NULL,
	"n_Missedsubareapopup" integer NOT NULL,
	"n_displayprefertime" integer NOT NULL,
	"n_stptemplate" integer NOT NULL,
	"n_mtpgenerateday" integer NOT NULL
) 
;
/****** Object:  Table "tbl_MTP_Change_request_Android"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_MTP_Change_request_Android"(
	"N_Srno" SERIAL NOT NULL,
	"c_Fs_Code" varchar(50) NULL,
	"D_FromDate" timestamp NULL,
	"D_ToDate" timestamp NULL,
	"c_Subarea_from" varchar(50) NULL,
	"c_Subarea_to" varchar(50) NULL,
	"C_Reason" varchar(300) NULL,
	"d_Reqdate" timestamp NULL,
	"d_UploadedDate" timestamp NULL,
	"c_Status" varchar(5) NULL
) 
;
/****** Object:  Table "tbl_MTP_Change_request_Android_details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_MTP_Change_request_Android_details"(
	"N_Srno" integer NOT NULL,
	"c_doccode_From" varchar(50) NULL,
	"c_doccode_to" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_mtp_daywise_msg"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_mtp_daywise_msg"(
	"c_FS_Code" varchar(100) NULL,
	"c_pagename" varchar(100) NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "Tbl_MTP_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_MTP_Details"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowId" numeric(18, 0) NOT NULL,
	"D_Date" timestamp NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" numeric(18, 0) NOT NULL,
	"C_Mode" char(10) NOT NULL,
	"N_DocVst" numeric(18, 0) NULL,
	"N_ChemVst" numeric(18, 0) NULL,
	"N_StkVst" numeric(18, 0) NULL,
	"C_Subarea_Note" varchar(100) NULL,
	"c_subarea_code" varchar(10) NOT NULL,
	"c_work_type" varchar(10) NULL,
	"c_work_with" varchar(50) NULL,
	"N_OtherVst" numeric(18, 0) NULL,
	"c_fs_code" varchar(10) NULL,
	"n_copy" integer NULL,
	"N_HosVst" numeric(18, 0) NULL,
	"n_From_Android" integer NULL,
	"n_campvst" numeric(18, 0) NULL,
	"c_is_approved" varchar(2) NULL,
 CONSTRAINT "PK_Tbl_MTP_Details" PRIMARY KEY  
(
	"N_Srno" ,
	"N_RowId" 
) 
) 
;
/****** Object:  Table "tbl_mtp_entry_unlock"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_mtp_entry_unlock"(
	"n_id" SERIAL NOT NULL,
	"n_month" integer NOT NULL,
	"n_year" integer NOT NULL,
	"c_fscode" varchar(20) NOT NULL,
	"d_created" timestamp NOT NULL,
	"c_created_by" varchar(50) NOT NULL,
PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "tbl_mtp_entry_unlock_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_mtp_entry_unlock_log"(
	"n_log_id" SERIAL NOT NULL,
	"n_id" integer NULL,
	"n_month" integer NULL,
	"n_year" integer NULL,
	"c_fscode" varchar(20) NULL,
	"d_created" timestamp NULL,
	"c_created_by" varchar(50) NULL,
	"d_deleted" timestamp NULL,
	"c_deleted_by" varchar(50) NULL,
PRIMARY KEY  
(
	"n_log_id" 
) 
) 
;
/****** Object:  Table "tbl_mtp_lock_settings"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_mtp_lock_settings"(
	"c_code" varchar(50) NOT NULL,
	"n_lock_days" numeric(9, 0) NULL,
	"n_type" integer NOT NULL,
	"n_lock_days_from" integer NULL,
 CONSTRAINT "PK_tbl_mtp_lock_settings" PRIMARY KEY  
(
	"c_code" ,
	"n_type" 
) 
) 
;
/****** Object:  Table "tbl_mtp_note"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_mtp_note"(
	"N_srno" numeric(9, 0) NOT NULL,
	"c_work_type" varchar(10) NOT NULL,
	"D_Date" timestamp NOT NULL,
	"c_Note" varchar(500) NULL
) 
;
/****** Object:  Table "tbl_mtp_promotionalactivity_setup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_mtp_promotionalactivity_setup"(
	"n_srno" SERIAL NOT NULL,
	"c_division_code" text NULL,
	"c_region_code" text NULL,
	"c_desc_code" text NULL,
	"c_fscode" text NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "tbl_mtp_shiftapproval"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_mtp_shiftapproval"(
	"n_mtp_srno" numeric(18, 0) NULL,
	"c_fs_code" varchar(50) NULL,
	"c_approvedby" varchar(50) NULL,
	"d_Modified" timestamp NULL
) 
;
/****** Object:  Table "Tbl_MTP_stp"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_MTP_stp"(
	"N_Srno" integer NOT NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"C_HQ_Code" char(10) NOT NULL,
	"N_Month" integer NOT NULL,
	"N_Year" integer NOT NULL,
	"c_approved" char(1) NULL,
	"C_Approved_By" varchar(50) NULL,
	"C_EMP_CODE" varchar(10) NOT NULL,
	"Lock_flag" integer NULL,
	"C_Reason" varchar(200) NULL,
	"N_BLOCK_FLAG" integer NULL,
	"D_Approved_Date" timestamp NULL,
	"N_STP_Template_Created_For" numeric(18, 0) NULL,
 CONSTRAINT "PK_Tbl_MTP_stp" PRIMARY KEY  
(
	"N_Srno" 
) 
) 
;
/****** Object:  Table "Tbl_MTP_stp_20092018"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_MTP_stp_20092018"(
	"N_Srno" integer NOT NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"C_HQ_Code" char(10) NOT NULL,
	"N_Month" integer NOT NULL,
	"N_Year" integer NOT NULL,
	"c_approved" char(1) NULL,
	"C_Approved_By" varchar(50) NULL,
	"C_EMP_CODE" varchar(10) NOT NULL,
	"Lock_flag" integer NULL,
	"C_Reason" varchar(200) NULL,
	"N_BLOCK_FLAG" integer NULL,
	"D_Approved_Date" timestamp NULL
) 
;
/****** Object:  Table "Tbl_MTP_stp_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_MTP_stp_Details"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowId" numeric(18, 0) NOT NULL,
	"N_dayof_week" varchar(20) NOT NULL,
	"n_week" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" numeric(18, 0) NOT NULL,
	"C_Mode" char(10) NOT NULL,
	"N_DocVst" numeric(18, 0) NULL,
	"N_ChemVst" numeric(18, 0) NULL,
	"N_StkVst" numeric(18, 0) NULL,
	"C_Subarea_Note" varchar(100) NULL,
	"c_subarea_code" varchar(10) NOT NULL,
	"c_work_type" varchar(10) NULL,
	"c_work_with" varchar(50) NULL,
	"N_OtherVst" numeric(18, 0) NULL,
	"c_fs_code" varchar(10) NULL,
 CONSTRAINT "PK_Tbl_MTP_stp_Details" PRIMARY KEY  
(
	"N_Srno" ,
	"N_RowId" 
) 
) 
;
/****** Object:  Table "Tbl_MTP_stp_Details_20092018"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_MTP_stp_Details_20092018"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowId" numeric(18, 0) NOT NULL,
	"N_dayof_week" varchar(20) NOT NULL,
	"n_week" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" numeric(18, 0) NOT NULL,
	"C_Mode" char(10) NOT NULL,
	"N_DocVst" numeric(18, 0) NULL,
	"N_ChemVst" numeric(18, 0) NULL,
	"N_StkVst" numeric(18, 0) NULL,
	"C_Subarea_Note" varchar(100) NULL,
	"c_subarea_code" varchar(10) NOT NULL,
	"c_work_type" varchar(10) NULL,
	"c_work_with" varchar(50) NULL,
	"N_OtherVst" numeric(18, 0) NULL,
	"c_fs_code" varchar(10) NULL
) 
;
/****** Object:  Table "Tbl_MTP_stp_Sub_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_MTP_stp_Sub_Details"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_Doc_Code" varchar(10) NULL,
	"N_RowId" integer NULL,
	"C_Item_Code" char(10) NULL,
	"C_ITEM_EXP" char(10) NULL,
	"n_Product_Unit" numeric(18, 0) NULL,
	"N_Type" integer NULL,
	"N_AUTO" numeric(18, 0) NULL,
	"N_MTPRowId" numeric(18, 0) NULL
) 
;
/****** Object:  Table "Tbl_MTP_stp_Sub_Details_20092018"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_MTP_stp_Sub_Details_20092018"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_Doc_Code" varchar(10) NULL,
	"N_RowId" integer NULL,
	"C_Item_Code" char(10) NULL,
	"C_ITEM_EXP" char(10) NULL,
	"n_Product_Unit" numeric(18, 0) NULL,
	"N_Type" integer NULL,
	"N_AUTO" numeric(18, 0) NULL,
	"N_MTPRowId" numeric(18, 0) NULL
) 
;
/****** Object:  Table "Tbl_MTP_stp_SubDetails"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_MTP_stp_SubDetails"(
	"N_SrNo" numeric(18, 0) NOT NULL,
	"N_MTPRowId" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Doc_Code" varchar(10) NULL,
	"C_Note" varchar(500) NULL,
	"c_work_with" varchar(50) NULL,
	"n_type" integer NULL,
 CONSTRAINT "PK_Tbl_MTP_stp_SubDetails" PRIMARY KEY  
(
	"N_SrNo" ,
	"N_MTPRowId" ,
	"N_RowID" 
) 
) 
;
/****** Object:  Table "Tbl_MTP_stp_SubDetails_20092018"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_MTP_stp_SubDetails_20092018"(
	"N_SrNo" numeric(18, 0) NOT NULL,
	"N_MTPRowId" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Doc_Code" varchar(10) NULL,
	"C_Note" varchar(500) NULL,
	"c_work_with" varchar(50) NULL,
	"n_type" integer NULL
) 
;
/****** Object:  Table "Tbl_MTP_Sub_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_MTP_Sub_Details"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_Doc_Code" varchar(10) NULL,
	"N_RowId" integer NULL,
	"C_Item_Code" char(10) NULL,
	"C_ITEM_EXP" char(10) NULL,
	"n_Product_Unit" numeric(18, 0) NULL,
	"N_Type" integer NULL,
	"N_AUTO" numeric(18, 0) NULL,
	"N_MTPRowId" numeric(18, 0) NULL,
	"n_copy" integer NULL,
	"c_is_approved" varchar(2) NULL
) 
;
/****** Object:  Table "tbl_MTP_SubareChange_request_Android"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_MTP_SubareChange_request_Android"(
	"c_fsCode" varchar(50) NULL,
	"d_mtpdate" timestamp NULL,
	"c_from_Beat" varchar(50) NULL,
	"c_to_Beat" varchar(50) NULL,
	"c_reason" varchar(1000) NULL,
	"d_reqdate" timestamp NULL,
	"d_serverupdateddate" timestamp NULL,
	"c_status" varchar(5) NULL,
	"n_id" SERIAL NOT NULL
) 
;
/****** Object:  Table "Tbl_MTP_SubDetails"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_MTP_SubDetails"(
	"N_SrNo" numeric(18, 0) NOT NULL,
	"N_MTPRowId" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Doc_Code" varchar(10) NULL,
	"C_Note" varchar(500) NULL,
	"c_work_with" varchar(50) NULL,
	"n_type" integer NULL,
	"n_copy" integer NULL,
	"C_meet_from" varchar(50) NULL,
	"C_meet_to" varchar(50) NULL,
	"c_is_approved" varchar(2) NULL,
 CONSTRAINT "PK_Tbl_MTP_SubDetails" PRIMARY KEY  
(
	"N_SrNo" ,
	"N_MTPRowId" ,
	"N_RowID" 
) 
) 
;
/****** Object:  Table "tbl_mtp_subdetailscamp"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_mtp_subdetailscamp"(
	"n_srno" numeric(18, 0) NOT NULL,
	"n_mtprowid" numeric(18, 0) NOT NULL,
	"n_rowid" numeric(18, 0) NOT NULL,
	"c_village_code" varchar(20) NULL,
	"c_camp_type" varchar(20) NULL,
	"c_camp_topic" varchar(20) NULL,
	"c_note" varchar(500) NULL,
	"c_work_with" varchar(50) NULL,
	"n_copy" integer NULL,
	"c_campsetup" varchar(20) NULL,
 CONSTRAINT "PK_Tbl_MTP_SubDetailsCamp" PRIMARY KEY  
(
	"n_srno" ,
	"n_mtprowid" ,
	"n_rowid" 
) 
) 
;
/****** Object:  Table "tbl_NetworkDetails"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_NetworkDetails"(
	"c_ServerInstanceName" varchar(500) NULL,
	"c_Sourcepath" varchar(2000) NULL,
	"c_ip" varchar(200) NULL,
	"c_username" varchar(800) NULL,
	"c_Password" varchar(500) NULL,
	"c_DestinationFolder" varchar(2000) NULL
) 
;
/****** Object:  Table "tbl_NewDcr_Entry_Setup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_NewDcr_Entry_Setup"(
	"c_DivZoReArDesFs_Code" varchar(100) NULL,
	"C_type" varchar(5) NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"n_DCR_MCR" integer NULL
) 
;
/****** Object:  Table "tbl_NewDcr_Entry_Setup_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_NewDcr_Entry_Setup_log"(
	"c_DivZoReArDesFs_Code" varchar(100) NULL,
	"C_type" varchar(5) NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "tbl_NoActivity_reason_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_NoActivity_reason_mst"(
	"c_Code" varchar(50) NULL,
	"c_name" varchar(500) NULL,
	"n_deleted" integer NULL,
	"d_Created" timestamp NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "Tbl_NonPurchase_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_NonPurchase_Mst"(
	"C_Code" varchar(20) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"C_Sh_Name" varchar(7) NULL,
	"n_deleted" integer NOT NULL,
	"n_status" integer NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
 CONSTRAINT "PK_Tbl_NonPurchase_Mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "Tbl_OfferValiditySetup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_OfferValiditySetup"(
	"n_srno" SERIAL NOT NULL,
	"n_FsType" numeric(18, 0) NOT NULL,
	"n_Days" integer NULL
) 
;
/****** Object:  Table "Tbl_Officelocation_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Officelocation_Mst"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"C_Sh_Name" varchar(7) NULL,
	"C_Description" varchar(100) NOT NULL,
	"N_Deleted" smallint NOT NULL,
	"D_Created" timestamp NOT NULL,
	"D_Modified" timestamp NULL,
	"C_Modifier" varchar(10) NULL,
 CONSTRAINT "Pk_Tbl_Officelocation_Mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "tbl_OrderCancel_Setup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_OrderCancel_Setup"(
	"C_CatCode" varchar(50) NULL,
	"n_hours" integer NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "Tbl_OtherInfo"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_OtherInfo"(
	"C_MSG" varchar(8000) NULL
) 
;
/****** Object:  Table "tbl_otp_fmcg_new_chemist"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_otp_fmcg_new_chemist"(
	"n_id" SERIAL NOT NULL,
	"n_mobno" numeric(10, 0) NULL,
	"n_otp" numeric(4, 0) NULL,
	"n_otp_status" integer NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_outstanding"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_outstanding"(
	"c_depo" varchar(10) NOT NULL,
	"c_prefix" varchar(10) NOT NULL,
	"c_type" varchar(10) NOT NULL,
	"c_bill_no" numeric(18, 0) NOT NULL,
	"d_bill_date" timestamp NULL,
	"d_due_date" timestamp NULL,
	"c_stockist_code" varchar(10) NOT NULL,
	"n_bill_amount" numeric(12, 2) NULL,
	"n_due_amount" numeric(12, 2) NULL,
	"c_remark" varchar(50) NOT NULL,
	"c_year" varchar(4) NOT NULL,
	"c_stockist_xlcode" varchar(10) NULL,
	"c_div_code" varchar(10) NULL,
 CONSTRAINT "PK_tbl_outstanding_1" PRIMARY KEY  
(
	"c_depo" ,
	"c_prefix" ,
	"c_type" ,
	"c_bill_no" ,
	"c_stockist_code" ,
	"c_year" 
) 
) 
;
/****** Object:  Table "tbl_passwordhistory"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_passwordhistory"(
	"c_userid" varchar(50) NULL,
	"c_password" varchar(100) NULL,
	"d_created_date" timestamp NULL,
	"c_fscode" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_Patient_Activity_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Patient_Activity_Mst"(
	"C_Code" varchar(100) NOT NULL,
	"c_Name" varchar(100) NULL,
	"n_status" integer NULL,
	"n_deleted" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_Patient_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Patient_det"(
	"C_Code" varchar(100) NOT NULL,
	"c_surgeonname" varchar(100) NULL,
	"c_surgerytype" varchar(100) NULL,
	"c_pt_relativename" varchar(100) NULL,
	"c_emailid" varchar(100) NULL,
	"c_phone" varchar(100) NULL,
	"c_hospitalname" varchar(250) NULL,
	"c_preferdlanguage" varchar(250) NULL,
	"c_proceduredate" timestamp NULL,
	"d_created" timestamp NULL,
	"n_age" integer NULL
) 
;
/****** Object:  Table "tbl_Patient_Languages_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Patient_Languages_Mst"(
	"C_Code" varchar(100) NOT NULL,
	"c_Name" varchar(100) NULL,
	"n_status" integer NULL,
	"n_deleted" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(20) NULL
) 
;
/****** Object:  Table "Tbl_Patient_Survey"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Patient_Survey"(
	"N_Pid" SERIAL NOT NULL,
	"C_Name" varchar(100) NULL,
	"C_Mobile_No" varchar(100) NULL,
	"C_Email" varchar(50) NULL,
	"C_Gender" varchar(5) NULL,
	"D_Dob" timestamp NULL,
	"N_Age" integer NULL,
	"C_Address" varchar(1000) NULL,
	"C_Survey_Code" varchar(150) NULL
) 
;
/****** Object:  Table "tbl_Patients_Range_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Patients_Range_mst"(
	"C_range" varchar(50) NULL,
	"n_id" SERIAL NOT NULL
) 
;
/****** Object:  Table "Tbl_Payments_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Payments_det"(
	"N_SRNO" integer NOT NULL,
	"C_PAYCODE" varchar(50) NULL,
	"N_AMOUNT" numeric(18, 0) NULL,
	"C_Note" varchar(100) NULL
) 
;
/****** Object:  Table "Tbl_Payments_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Payments_Mst"(
	"N_SRNO" SERIAL NOT NULL,
	"C_PAYTYPE_CODE" varchar(10) NOT NULL,
	"C_EMP_CODE" varchar(10) NOT NULL,
	"C_DEPT_CODE" varchar(10) NULL,
	"C_GRADE" varchar(50) NULL,
	"C_HQNAME" varchar(50) NULL,
	"C_HQCODE" varchar(50) NULL,
	"D_DATE" timestamp NULL,
	"N_ADDITIONS" numeric(18, 0) NULL,
	"N_DEDUCTIONS" numeric(18, 0) NULL,
	"N_NETPAY" numeric(18, 0) NULL,
	"C_NOTE1" varchar(100) NULL,
	"C_APPROVED_BY" varchar(50) NULL,
	"D_APPROVED" timestamp NULL,
	"C_NOTE2" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_Paytype_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Paytype_det"(
	"ID" SERIAL NOT NULL,
	"C_CODE" varchar(10) NOT NULL,
	"C_NAME" varchar(50) NOT NULL,
	"C_SHORT_NAME" varchar(50) NULL,
	"N_DEFAULT_AMT" numeric(18, 0) NULL,
	"N_UPPERLIMIT" numeric(18, 0) NULL,
	"N_LOWERLIMIT" numeric(18, 0) NULL,
	"C_PAYTYPECODE" varchar(10) NULL,
	"N_TYPE" integer NULL,
	"C_EXTERNAL_CODE" varchar(50) NULL,
	"n_deleted" integer NULL,
	"n_status" integer NULL
) 
;
/****** Object:  Table "Tbl_Paytype_Display"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Paytype_Display"(
	"ID" SERIAL NOT NULL,
	"C_form_name" varchar(50) NULL,
	"C_description" varchar(100) NULL,
	"C_Type" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_Paytype_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Paytype_mst"(
	"ID" SERIAL NOT NULL,
	"C_CODE" varchar(10) NOT NULL,
	"C_NAME" varchar(50) NOT NULL,
	"C_SHORT_NAME" varchar(10) NULL,
	"C_DESCRIPTION" varchar(100) NULL,
	"C_FORM_NAME" varchar(50) NOT NULL,
	"n_deleted" integer NULL,
	"n_status" integer NULL,
 CONSTRAINT "PK_tbl_Paytype_mst" PRIMARY KEY  
(
	"C_CODE" 
) 
) 
;
/****** Object:  Table "Tbl_PG_Course_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_PG_Course_Mst"(
	"C_Code" varchar(20) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"C_NoOfSeats" integer NOT NULL,
	"n_deleted" integer NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
 CONSTRAINT "PK_Tbl_PG_Course_Mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "tbl_PhoneOrder_Email_SendDetails"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_PhoneOrder_Email_SendDetails"(
	"n_srno" SERIAL NOT NULL,
	"n_referenceid" integer NOT NULL,
	"c_tomailids" varchar(1000) NULL,
	"d_send_on" timestamp NULL,
	"c_status" varchar(20) NULL,
	"c_error" varchar(1000) NULL
) 
;
/****** Object:  Table "tbl_PhoneOrder_Email_ToSend"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_PhoneOrder_Email_ToSend"(
	"n_id" SERIAL NOT NULL,
	"n_orderno" numeric(18, 0) NULL,
	"C_StockistCode" varchar(50) NULL,
	"c_fscode" varchar(50) NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_photo_tagged_upload_setup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_photo_tagged_upload_setup"(
	"n_srno" SERIAL NOT NULL,
	"c_division_Code" text NULL,
	"c_region_Code" text NULL,
	"n_deleted" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "tbl_pmt_details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_pmt_details"(
	"C_pmt_code" varchar(10) NOT NULL,
	"c_item_code" varchar(50) NOT NULL
) 
;
/****** Object:  Table "tbl_pmt_grp_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_pmt_grp_mst"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NULL,
	"C_Empcode" varchar(50) NULL,
	"n_deleted" integer NULL,
 CONSTRAINT "PK_tbl_pmt_grp_mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "tbl_pmt_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_pmt_mst"(
	"c_code" varchar(10) NOT NULL,
	"c_name" varchar(50) NULL,
	"c_group_code" varchar(10) NULL,
	"n_deleted" integer NULL,
 CONSTRAINT "PK_tbl_pmt_mst" PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "tbl_PMTDcrMcr_Setup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_PMTDcrMcr_Setup"(
	"n_DcrMcr_Sample_Mandatory" integer NULL,
	"n_DcrMcr_Gift_Mandatory" integer NULL,
	"n_DcrMcr_Others_Sample_Mandatory" integer NULL,
	"n_DcrMcr_Others_Gift_Mandatory" integer NULL,
	"n_DcrMCr_DrNoteMandatory" integer NULL,
	"n_DcrMCr_DrPOBMandatory" integer NULL,
	"n_da_flag" integer NULL,
	"n_da_per" integer NULL
) 
;
/****** Object:  Table "tbl_PMTSetup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_PMTSetup"(
	"n_MKT_STPUploadEnabled" integer NULL,
	"N_MKT_Stpsubmitiondcr" integer NULL,
	"n_Mkt_MMIEnabled" integer NULL,
	"n_MKT_AddSTPDAForOther" integer NULL,
	"n_da_flag" integer NULL,
	"n_da_per" numeric(9, 2) NULL,
	"n_MMIEnabled" integer NULL
) 
;
/****** Object:  Table "tbl_POBreport_email_data"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_POBreport_email_data"(
	"c_empno" varchar(50) NULL,
	"n_month" integer NULL,
	"n_year" integer NULL
) 
;
/****** Object:  Table "Tbl_Pool_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Pool_Details"(
	"C_Code" varchar(10) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"N_Percentage" numeric(18, 2) NULL,
	"d_from_dt" timestamp NULL,
	"d_to_dt" timestamp NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "tbl_precall_visibility"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_precall_visibility"(
	"c_divcode" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_PrescriberCombination_ForReport"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_PrescriberCombination_ForReport"(
	"c_CombFrom" varchar(10) NOT NULL,
	"c_CombTo" varchar(10) NOT NULL,
	"n_SortOrder" integer NOT NULL
) 
;
/****** Object:  Table "tbl_priority_detailingsetup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_priority_detailingsetup"(
	"id" SERIAL NOT NULL,
	"c_type" varchar(500) NULL,
	"c_code" varchar(150) NULL,
	"c_priority" text NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
PRIMARY KEY  
(
	"id" 
) 
) 
;
/****** Object:  Table "tbl_prisecSales_forwh"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prisecSales_forwh"(
	"N_MONTH" varchar(4) NULL,
	"N_YEAR" varchar(4) NULL
) 
;
/****** Object:  Table "tbl_proc_exectime"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_proc_exectime"(
	"c_spname" varchar(1000) NULL,
	"c_status" varchar(10) NULL,
	"d_dt" timestamp NULL
) 
;
/****** Object:  Table "Tbl_ProdSample_Android_Caption"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_ProdSample_Android_Caption"(
	"N_Type" integer NULL,
	"C_Caption" varchar(50) NULL,
	"C_Display_Caption" varchar(50) NULL
) 
;
/****** Object:  Table "Tbl_Project"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Project"(
	"n_SrNo" SERIAL NOT NULL,
	"c_Name" varchar(50) NULL,
	"c_Description" varchar(200) NULL,
	"n_Deleted" integer NULL,
	"d_Deleted" timestamp NULL,
 CONSTRAINT "PK_Tbl_Project" PRIMARY KEY  
(
	"n_SrNo" 
) 
) 
;
/****** Object:  Table "tbl_prp_accHead_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_accHead_det"(
	"C_Code" varchar(15) NOT NULL,
	"c_accHead_Code" varchar(20) NULL
) 
;
/****** Object:  Table "Tbl_PRP_AccHeadMst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_PRP_AccHeadMst"(
	"C_Code" varchar(15) NOT NULL,
	"c_name" varchar(50) NULL,
	"n_deleted" smallint NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
 CONSTRAINT "PK_Tbl_PRP_AccHeadMst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "Tbl_PRP_AccountType_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_PRP_AccountType_Mst"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"n_deleted" smallint NOT NULL,
	"c_modifier" varchar(10) NULL,
	"d_modified" timestamp NULL,
	"d_created" timestamp NOT NULL,
	"n_status" integer NULL
) 
;
/****** Object:  Table "tbl_prp_applicableHeirarchy_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_applicableHeirarchy_det"(
	"C_Code" varchar(15) NULL,
	"n_type" integer NULL
) 
;
/****** Object:  Table "tbl_prp_approvalHeirarchy_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_approvalHeirarchy_det"(
	"C_Code" varchar(15) NULL,
	"n_type" integer NULL
) 
;
/****** Object:  Table "tbl_prp_CurrentBussiness_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_CurrentBussiness_Details"(
	"n_srno" integer NOT NULL,
	"c_brandcode" varchar(50) NULL,
	"n_amount" numeric(12, 2) NULL
) 
;
/****** Object:  Table "tbl_prp_desk_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_desk_mst"(
	"c_code" varchar(50) NOT NULL,
	"c_deskName" varchar(50) NULL,
	"c_employee" varchar(50) NULL,
	"c_prp" varchar(100) NULL,
	"n_Deleted" smallint NULL,
 CONSTRAINT "PK_tbl_prp_desk_mst" PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "tbl_prp_desk_region"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_desk_region"(
	"C_Code" varchar(15) NULL,
	"c_region_code" varchar(50) NULL,
	"n_checked" smallint NULL
) 
;
/****** Object:  Table "tbl_prp_desk_zone"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_desk_zone"(
	"C_Code" varchar(15) NULL,
	"c_zone_code" varchar(50) NULL,
	"n_checked" smallint NULL
) 
;
/****** Object:  Table "tbl_prp_division_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_division_det"(
	"C_Code" varchar(15) NULL,
	"c_division_Code" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_Prp_EmailSMSSend"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Prp_EmailSMSSend"(
	"n_srno" numeric(18, 0) NULL,
	"d_senddate" timestamp NULL,
	"n_type" integer NULL,
	"d_currentdate" timestamp NULL
) 
;
/****** Object:  Table "tbl_prp_ExpectedBussiness_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_ExpectedBussiness_Details"(
	"n_srno" integer NOT NULL,
	"c_brandcode" varchar(50) NULL,
	"n_amount" numeric(12, 2) NULL
) 
;
/****** Object:  Table "TBL_PRP_EXPENSE"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "TBL_PRP_EXPENSE"(
	"N_RPS_REQID" numeric(18, 0) NOT NULL,
	"N_REQAMOUNT" numeric(20, 4) NOT NULL,
	"C_REQREMARKS" varchar(500) NULL,
	"C_Doctor" varchar(200) NULL,
	"D_REQDATE" timestamp NULL,
	"N_APPAMOUNT" numeric(20, 4) NULL,
	"C_APPREMARKS" varchar(500) NULL,
	"C_APPROVEDBY" varchar(50) NULL,
	"D_APPDATE" timestamp NULL,
	"N_CONFAMOUNT" numeric(20, 4) NULL,
	"C_CONFREMARKS" varchar(500) NULL,
	"C_CONFIRMEDBY" varchar(50) NULL,
	"D_CONFDATE" timestamp NULL,
	"N_DESKAMOUNT" numeric(20, 4) NULL,
	"C_DESKREMARKS" varchar(500) NULL,
	"C_DESKCONFIRMEDBY" varchar(50) NULL,
	"D_DESKCONFDATE" timestamp NULL,
PRIMARY KEY  
(
	"N_RPS_REQID" 
) 
) 
;
/****** Object:  Table "tbl_prp_expense_BillUpload"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_expense_BillUpload"(
	"n_Srno" numeric(18, 0) NOT NULL,
	"c_imagefilename" varchar(300) NULL,
	"c_UploadedBy" text NULL
) 
;
/****** Object:  Table "tbl_prp_expense_Brands"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_expense_Brands"(
	"n_Srno" numeric(18, 0) NOT NULL,
	"c_BrandCode" varchar(300) NULL
) 
;
/****** Object:  Table "tbl_prp_expense_Brands_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_expense_Brands_log"(
	"n_Srno" numeric(18, 0) NOT NULL,
	"c_BrandCode" varchar(300) NULL,
	"n_CycleId" numeric(18, 0) NULL
) 
;
/****** Object:  Table "tbl_prp_expense_data"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_expense_data"(
	"n_Srno" numeric(18, 0) NOT NULL,
	"c_ExpCode" varchar(20) NULL,
	"n_ActualAmt" numeric(10, 2) NULL,
	"n_Adv_ActualAmt" numeric(10, 4) NULL,
	"n_Conf_Adv_ActualAmt" numeric(10, 4) NULL,
	"n_Conf_ActualAmt" numeric(10, 4) NULL,
	"n_paid_recover_amt" numeric(20, 2) NULL,
	"d_date_exp" timestamp NULL,
	"c_remark" text NULL,
	"n_flg" integer NULL
) 
;
/****** Object:  Table "tbl_prp_expense_data_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_expense_data_log"(
	"n_Srno" numeric(18, 0) NOT NULL,
	"c_ExpCode" varchar(20) NULL,
	"n_ActualAmt" numeric(10, 2) NULL,
	"n_Adv_ActualAmt" numeric(10, 4) NULL,
	"n_Conf_Adv_ActualAmt" numeric(10, 4) NULL,
	"n_Conf_ActualAmt" numeric(10, 4) NULL,
	"n_paid_recover_amt" numeric(20, 2) NULL,
	"d_date_exp" timestamp NULL,
	"c_remark" text NULL,
	"n_flg" integer NULL,
	"n_CycleId" numeric(18, 0) NULL
) 
;
/****** Object:  Table "TBL_PRP_EXPENSE_LOG"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "TBL_PRP_EXPENSE_LOG"(
	"N_RPS_REQID" numeric(18, 0) NOT NULL,
	"N_REQAMOUNT" numeric(20, 4) NOT NULL,
	"C_REQREMARKS" varchar(500) NULL,
	"C_Doctor" varchar(200) NULL,
	"D_REQDATE" timestamp NULL,
	"N_APPAMOUNT" numeric(20, 4) NULL,
	"C_APPREMARKS" varchar(500) NULL,
	"C_APPROVEDBY" varchar(50) NULL,
	"D_APPDATE" timestamp NULL,
	"N_CONFAMOUNT" numeric(20, 4) NULL,
	"C_CONFREMARKS" varchar(500) NULL,
	"C_CONFIRMEDBY" varchar(50) NULL,
	"D_CONFDATE" timestamp NULL,
	"N_DESKAMOUNT" numeric(20, 4) NULL,
	"C_DESKREMARKS" varchar(500) NULL,
	"C_DESKCONFIRMEDBY" varchar(50) NULL,
	"D_DESKCONFDATE" timestamp NULL
) 
;
/****** Object:  Table "tbl_prp_expense_multiapprovallog"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_expense_multiapprovallog"(
	"n_Srno" numeric(18, 0) NOT NULL,
	"c_approvedby" varchar(20) NULL,
	"d_date" timestamp NULL,
	"c_remarks" text NULL,
	"n_reject" integer NOT NULL
) 
;
/****** Object:  Table "tbl_prp_expense_multiapprovallog_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_expense_multiapprovallog_det"(
	"n_Srno" numeric(18, 0) NOT NULL,
	"c_approvedby" varchar(20) NULL,
	"d_date" timestamp NULL,
	"c_Remarks" text NULL,
	"n_reject" integer NOT NULL,
	"n_CycleId" numeric(18, 0) NULL
) 
;
/****** Object:  Table "tbl_prp_expense_PhotoUpload"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_expense_PhotoUpload"(
	"n_Srno" numeric(18, 0) NOT NULL,
	"c_imagefilename" varchar(300) NULL,
	"c_UploadedBy" text NULL
) 
;
/****** Object:  Table "tbl_prp_expense_PhotoUpload_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_expense_PhotoUpload_log"(
	"n_Srno" numeric(18, 0) NOT NULL,
	"c_imagefilename" varchar(300) NULL,
	"n_CycleId" numeric(18, 0) NULL
) 
;
/****** Object:  Table "tbl_prp_expense_request"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_expense_request"(
	"n_Srno" numeric(18, 0) NOT NULL,
	"c_PrpCode" varchar(100) NULL,
	"c_Venue" varchar(1000) NULL,
	"c_Speaker" varchar(1000) NULL,
	"n_No_DrAttended" integer NULL,
	"d_Prp_Requested_Date" timestamp NULL,
	"d_Prp_Cme_Date" timestamp NULL,
	"c_TopicCode" varchar(100) NULL,
	"c_Subarea" text NULL,
	"n_BTC" numeric(10, 2) NULL,
	"n_EsitmatedTotAmt" numeric(18, 2) NULL,
	"n_ActualTotAmt" numeric(18, 2) NULL,
	"n_AdvReceived" numeric(18, 2) NULL,
	"n_Balance" numeric(18, 2) NULL,
	"n_NoTeamMembers" integer NULL,
	"c_RequestedFs" varchar(20) NULL,
	"c_RequestedDt" timestamp NULL,
	"c_ApprovedBy" varchar(20) NULL,
	"c_ApprovedDt" timestamp NULL,
	"c_ConfirmedBy" varchar(20) NULL,
	"c_ConfirmedDt" timestamp NULL,
	"n_status" integer NULL,
	"d_Modified" timestamp NULL,
	"c_division" varchar(100) NULL,
	"c_region" varchar(100) NULL,
	"n_month" integer NULL,
	"n_year" integer NULL,
	"c_hotel" varchar(100) NULL,
	"n_attendess" integer NULL,
	"c_Confirm_Remarks" text NULL,
	"d_EvtDate" timestamp NULL,
	"n_cancelled" integer NULL,
	"n_exp_cancel_req" integer NULL,
	"c_exp_cancel_Remarks" text NULL
) 
;
/****** Object:  Table "tbl_prp_expense_request_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_expense_request_log"(
	"n_Srno" numeric(18, 0) NOT NULL,
	"c_PrpCode" varchar(100) NULL,
	"c_Venue" varchar(1000) NULL,
	"c_Speaker" varchar(1000) NULL,
	"n_No_DrAttended" integer NULL,
	"d_Prp_Requested_Date" timestamp NULL,
	"d_Prp_Cme_Date" timestamp NULL,
	"c_TopicCode" varchar(100) NULL,
	"c_Subarea" text NULL,
	"n_BTC" numeric(10, 2) NULL,
	"n_EsitmatedTotAmt" numeric(18, 2) NULL,
	"n_ActualTotAmt" numeric(18, 2) NULL,
	"n_AdvReceived" numeric(18, 2) NULL,
	"n_Balance" numeric(18, 2) NULL,
	"n_NoTeamMembers" integer NULL,
	"c_RequestedFs" varchar(20) NULL,
	"c_RequestedDt" timestamp NULL,
	"c_ApprovedBy" varchar(20) NULL,
	"c_ApprovedDt" timestamp NULL,
	"c_ConfirmedBy" varchar(20) NULL,
	"c_ConfirmedDt" timestamp NULL,
	"c_RejectedBy" varchar(20) NULL,
	"c_RejectedDt" timestamp NULL,
	"n_status" integer NULL,
	"d_Modified" timestamp NULL,
	"c_division" varchar(100) NULL,
	"c_region" varchar(100) NULL,
	"n_month" integer NULL,
	"n_year" integer NULL,
	"c_hotel" varchar(100) NULL,
	"n_attendess" integer NULL,
	"d_EvtDate" timestamp NULL,
	"c_Confirm_Remarks" text NULL,
	"n_CycleId" numeric(18, 0) NULL
) 
;
/****** Object:  Table "tbl_prp_expense_Subarea_DRCode"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_expense_Subarea_DRCode"(
	"n_Srno" numeric(18, 0) NOT NULL,
	"c_DrCode" varchar(300) NULL
) 
;
/****** Object:  Table "tbl_prp_expense_Subarea_DRCode_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_expense_Subarea_DRCode_log"(
	"n_Srno" numeric(18, 0) NOT NULL,
	"c_DrCode" varchar(300) NULL,
	"n_CycleId" numeric(18, 0) NULL
) 
;
/****** Object:  Table "tbl_prp_expense_TeamMembers"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_expense_TeamMembers"(
	"n_Srno" numeric(18, 0) NOT NULL,
	"c_TeamMemberName" varchar(300) NULL
) 
;
/****** Object:  Table "tbl_prp_expense_TeamMembers_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_expense_TeamMembers_log"(
	"n_Srno" numeric(18, 0) NOT NULL,
	"c_TeamMemberName" varchar(300) NULL,
	"n_CycleId" numeric(18, 0) NULL
) 
;
/****** Object:  Table "tbl_prp_geoHeirarchy_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_geoHeirarchy_det"(
	"C_Code" varchar(15) NULL,
	"c_region_code" varchar(20) NULL
) 
;
/****** Object:  Table "Tbl_Prp_KOL_Attended_DocDetails"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Prp_KOL_Attended_DocDetails"(
	"n_Srno" numeric(18, 0) NULL,
	"c_DoctorCode" varchar(100) NULL,
	"d_Date" timestamp NULL
) 
;
/****** Object:  Table "tbl_prp_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_mst"(
	"C_Code" varchar(15) NOT NULL,
	"c_name" varchar(100) NULL,
	"c_topic" varchar(100) NULL,
	"c_type" varchar(100) NULL,
	"n_report_format" integer NULL,
	"d_validity_from" timestamp NULL,
	"d_validity_to" timestamp NULL,
	"d_create_date" timestamp NULL,
	"c_create_user" varchar(50) NULL,
	"d_modify_date" timestamp NULL,
	"c_modify_user" varchar(50) NULL,
	"n_deleted" integer NULL,
	"n_Status" integer NULL,
	"n_prp_other_type" integer NULL,
 CONSTRAINT "PK_tbl_prp_mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "tbl_Prp_Multiple_Approval_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Prp_Multiple_Approval_log"(
	"n_srno" integer NULL,
	"c_approvedby" varchar(50) NULL,
	"d_approved" timestamp NULL,
	"C_AprRej_Note" varchar(500) NULL,
	"n_Apr_level" integer NULL,
	"n_AprRej_flag" integer NULL
) 
;
/****** Object:  Table "Tbl_PRP_OtherTopic_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_PRP_OtherTopic_Mst"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"n_deleted" smallint NOT NULL,
	"c_modifier" varchar(10) NULL,
	"d_modified" timestamp NULL,
	"d_created" timestamp NOT NULL,
	"n_status" integer NULL
) 
;
/****** Object:  Table "Tbl_PRP_OtherType_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_PRP_OtherType_Mst"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"n_deleted" smallint NOT NULL,
	"c_modifier" varchar(10) NULL,
	"d_modified" timestamp NULL,
	"d_created" timestamp NOT NULL,
	"n_status" integer NULL
) 
;
/****** Object:  Table "tbl_prp_report_format"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_report_format"(
	"n_id" SERIAL NOT NULL,
	"c_formatName" varchar(100) NULL,
	"n_datefield" smallint NULL,
	"n_datefieldMan" smallint NULL,
	"n_place" smallint NULL,
	"n_placeMan" smallint NULL,
	"n_location" smallint NULL,
	"n_locationMan" smallint NULL,
	"n_topic" smallint NULL,
	"n_topicMan" smallint NULL,
	"n_attendees" smallint NULL,
	"n_attendeesMan" smallint NULL,
	"n_audio" smallint NULL,
	"n_audioMan" smallint NULL,
	"n_video" smallint NULL,
	"n_videoMan" smallint NULL,
	"n_speaker" smallint NULL,
	"n_speakerMan" smallint NULL,
	"n_KOL" smallint NULL,
	"n_KOLMan" smallint NULL,
	"n_deleted" smallint NULL,
	"N_Status" integer NULL,
	"n_CurBussiness" integer NULL,
	"n_ExpBussiness" integer NULL,
	"n_CurBussinessMand" integer NULL,
	"n_ExpBussinessMand" integer NULL,
 CONSTRAINT "PK_tbl_prp_report_format" PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "Tbl_Prp_Request"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Prp_Request"(
	"n_Srno" SERIAL NOT NULL,
	"d_PostedDate" timestamp NULL,
	"d_PrpDate" timestamp NULL,
	"c_Place" text NULL,
	"c_Location" varchar(100) NULL,
	"c_PrpCode" varchar(100) NULL,
	"c_TopicCode" varchar(100) NULL,
	"n_ExpAudience" integer NULL,
	"c_RequestNote" varchar(500) NULL,
	"c_ApprovalNote" varchar(500) NULL,
	"c_ConfirmationNote" varchar(500) NULL,
	"c_fs_code" varchar(50) NULL,
	"c_Hq" varchar(50) NULL,
	"c_AccNo" varchar(100) NULL,
	"c_Division" varchar(50) NULL,
	"c_FID" varchar(100) NULL,
	"c_Bank" varchar(200) NULL,
	"d_InstrumentDate" timestamp NULL,
	"n_Status" integer NULL,
	"c_ApprovedBy" varchar(100) NULL,
	"c_ConfirmedBy" varchar(100) NULL,
	"n_Attendees" integer NULL,
	"c_AudioQual" varchar(100) NULL,
	"c_VideoQual" varchar(100) NULL,
	"c_InvitSpeakCom" varchar(500) NULL,
	"c_nextHeirchyFs" varchar(100) NULL,
	"c_nextHeirchyFsType" integer NULL,
	"n_ExpenseEntryStatus" integer NULL,
	"d_confirmedDate" timestamp NULL,
	"c_venue" varchar(500) NULL,
	"n_BTC" numeric(10, 2) NULL,
	"n_CurrBussiness" numeric(10, 2) NULL,
	"n_ExpBussiness" numeric(10, 2) NULL,
	"n_AprRej_flag" integer NULL,
	"c_RejectNote" varchar(500) NULL,
	"c_holdnote" varchar(250) NULL,
	"d_acc_date" timestamp NULL,
	"c_region" varchar(50) NULL,
	"c_month" varchar(50) NULL,
	"n_year" integer NULL,
	"c_hotel" varchar(50) NULL,
	"n_type" integer NULL,
	"d_EvtDate" timestamp NULL
) 
;
/****** Object:  Table "Tbl_Prp_Request_Brand"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Prp_Request_Brand"(
	"n_Srno" numeric(18, 0) NULL,
	"c_BrandCode" varchar(100) NULL,
	"d_Date" timestamp NULL
) 
;
/****** Object:  Table "Tbl_Prp_Request_Estimate"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Prp_Request_Estimate"(
	"n_Srno" numeric(18, 0) NULL,
	"c_AccountHead" varchar(100) NULL,
	"n_EstimatedAmount" numeric(10, 2) NULL,
	"n_ApprovedAmount" numeric(10, 2) NULL,
	"n_ConfirmedAmount" numeric(10, 2) NULL,
	"d_Date" timestamp NULL,
	"n_AdvanceAmount" numeric(10, 4) NULL,
	"n_checked" integer NULL
) 
;
/****** Object:  Table "tbl_prp_Topic_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_Topic_Mst"(
	"C_Code" varchar(15) NOT NULL,
	"c_Name" varchar(50) NULL,
	"n_deleted" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_mofiedby" varchar(50) NULL,
	"n_mandatory" integer NULL,
 CONSTRAINT "PK_tbl_prp_Topic_Mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "tbl_prp_topic_Mst_Det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_prp_topic_Mst_Det"(
	"C_Code" varchar(15) NULL,
	"c_Brand" text NULL
) 
;
/****** Object:  Table "Tbl_PRP_Type_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_PRP_Type_Mst"(
	"C_Code" varchar(15) NOT NULL,
	"c_Name" varchar(50) NULL,
	"n_Deleted" smallint NOT NULL,
	"d_Created" timestamp NOT NULL,
	"d_Modified" timestamp NOT NULL,
	"c_Modifier" varchar(10) NULL,
 CONSTRAINT "PK_tbl_PRP_Type_Mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "tbl_PrpRps_EmailSMSSend"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_PrpRps_EmailSMSSend"(
	"n_srno" numeric(18, 0) NULL,
	"d_senddate" timestamp NULL,
	"n_type" integer NULL,
	"d_currentdate" timestamp NULL
) 
;
/****** Object:  Table "tbl_psa_request"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_psa_request"(
	"N_Srno" SERIAL NOT NULL,
	"N_General_Setup_ID" numeric(18, 0) NOT NULL,
	"N_PSA_Doc_Wise_Setup_ID" numeric(18, 0) NULL,
	"D_Request_Date" timestamp NULL,
	"C_FS_Code" varchar(20) NULL,
	"C_EMP_Code" varchar(20) NULL,
	"C_Doc_Code" varchar(50) NULL,
	"N_Approval_Type" integer NOT NULL,
	"C_FMV_Grade" varchar(50) NULL,
	"N_Rate_Per_Hour" numeric(18, 2) NULL,
	"N_Req_PSA_Hours" integer NULL,
	"N_Req_PSA_Amount" numeric(18, 2) NULL,
	"C_Email_ID" varchar(1000) NULL,
	"N_Mobile_No" numeric(10, 0) NULL,
	"N_Status" integer NULL,
	"N_Last_Activity_Done_By" varchar(20) NULL,
	"d_Last_Activity_Date" timestamp NULL,
	"C_Last_Activity_Remarks" varchar(1000) NULL
) 
;
/****** Object:  Table "Tbl_Qualification_Master"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Qualification_Master"(
	"C_Code" varchar(50) NULL,
	"C_Name" varchar(100) NULL,
	"C_Sh_Name" varchar(50) NULL,
	"N_Deleted" numeric(18, 0) NULL,
	"D_Created" timestamp NULL,
	"D_Modified" timestamp NULL,
	"C_Modifier" varchar(10) NULL
) 
;
/****** Object:  Table "Tbl_Qualification_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Qualification_mst"(
	"C_Code" varchar(100) NOT NULL,
	"C_Name" varchar(100) NULL,
	"C_Sh_Name" varchar(7) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL
) 
;
/****** Object:  Table "Tbl_Qualification_mst_02_12_2025"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Qualification_mst_02_12_2025"(
	"C_Code" varchar(100) NOT NULL,
	"C_Name" varchar(100) NULL,
	"C_Sh_Name" varchar(7) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL
) 
;
/****** Object:  Table "tbl_question_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_question_mst"(
	"C_Question" varchar(1000) NULL,
	"n_QuestionID" integer NOT NULL,
	"n_Quest_groupid" integer NULL
) 
;
/****** Object:  Table "tbl_questionGroup_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_questionGroup_Mst"(
	"n_groupID" integer NOT NULL,
	"n_groupname" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_rcpa_email_sent_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_rcpa_email_sent_det"(
	"c_fscode" varchar(20) NULL,
	"c_email" varchar(20) NULL,
	"d_date" timestamp NULL,
	"n_email_sent_flag" integer NULL,
	"c_error_msg" text NULL
) 
;
/****** Object:  Table "tbl_rcpa_email_settings"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_rcpa_email_settings"(
	"n_type" integer NULL,
	"d_start_date" timestamp NULL,
	"d_end_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_rcpa_sourcename_history"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_rcpa_sourcename_history"(
	"c_code" varchar(50) NOT NULL,
	"c_name" varchar(100) NULL,
PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "Tbl_Reason_Non_Purchase"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Reason_Non_Purchase"(
	"N_Id" SERIAL NOT NULL,
	"C_Reason" varchar(100) NULL,
 CONSTRAINT "PK_Tbl_Reason_Non_Purchase" PRIMARY KEY  
(
	"N_Id" 
) 
) 
;
/****** Object:  Table "Tbl_Reason_Return"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Reason_Return"(
	"N_Id" SERIAL NOT NULL,
	"C_Reason" varchar(100) NULL,
 CONSTRAINT "PK_Tbl_Reason_Return" PRIMARY KEY  
(
	"N_Id" 
) 
) 
;
/****** Object:  Table "Tbl_ReasonForSalesRtn_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_ReasonForSalesRtn_Mst"(
	"C_Code" varchar(20) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"C_Sh_Name" varchar(7) NULL,
	"n_deleted" integer NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL
) 
;
/****** Object:  Table "tbl_REC_request"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_REC_request"(
	"n_srno" SERIAL NOT NULL,
	"c_name" varchar(100) NULL,
	"d_entry_date" timestamp NULL,
	"d_dob" timestamp NULL,
	"c_gender" char(1) NULL,
	"n_experience_years" numeric(18, 0) NULL,
	"c_post_app_sort" varchar(100) NULL,
	"c_qualification" varchar(10) NULL,
	"c_email" varchar(100) NULL,
	"c_mobile" varchar(50) NULL,
	"c_position" varchar(50) NULL,
	"c_state" varchar(10) NULL,
	"c_town" varchar(10) NULL,
	"c_notice_period" varchar(10) NULL,
	"d_joining_date" timestamp NULL,
	"c_permanent_address" varchar(100) NULL,
	"c_permanent_town" varchar(10) NULL,
	"c_permanent_state" varchar(10) NULL,
	"n_pin" numeric(18, 0) NULL,
	"c_offerletter_path" varchar(100) NULL,
	"c_status" char(1) NULL,
	"C_EmpCode" varchar(50) NULL,
	"C_OfferLetter" varchar(50) NULL,
	"C_JoiningLetter" varchar(50) NULL,
	"c_reg_code" varchar(50) NULL,
	"c_div_code" varchar(50) NULL,
	"c_fscode" varchar(10) NULL,
	"n_active" integer NULL,
	"c_bankname" varchar(100) NULL,
	"c_bankaccount" varchar(100) NULL,
	"c_bankbranch" varchar(100) NULL,
	"c_rtgsneft" varchar(100) NULL,
	"c_pancard" varchar(100) NULL,
	"c_aptitude" varchar(100) NULL,
	"c_currentcomp" varchar(100) NULL,
	"c_currentdivision" varchar(100) NULL,
	"c_reportingto" varchar(100) NULL,
	"n_suggctc" numeric(18, 2) NULL,
	"D_ActualJoin_Date" timestamp NULL,
	"N_Joined" boolean NULL,
	"c_mname" varchar(50) NULL,
	"c_lname" varchar(50) NULL,
	"D_HRConfirm" timestamp NULL,
	"C_HRConfirmedBy" varchar(10) NULL,
	"n_crntctc" numeric(18, 2) NULL,
	"C_CandidateEmpCode" varchar(50) NULL,
	"c_title" char(6) NULL,
	"n_freshr_exp" integer NULL,
	"n_cand_refer" integer NULL,
	"c_name_refere" varchar(100) NULL,
	"c_refer_emp" varchar(100) NULL,
	"c_design" varchar(100) NULL,
	"c_div_name" varchar(100) NULL,
	"c_acc_pf" varchar(100) NULL,
	"c_add_prsnt" varchar(100) NULL,
	"n_pan_typ" integer NULL,
	"n_age" numeric(18, 0) NULL,
	"n_exp_ctc" numeric(18, 2) NULL
) 
;
/****** Object:  Table "tbl_REC_request_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_REC_request_det"(
	"n_srno" numeric(18, 0) NULL,
	"c_assesment" varchar(200) NULL,
	"c_strength" varchar(200) NULL,
	"c_areas_improve" varchar(200) NULL,
	"c_reason_fitting_position" varchar(200) NULL,
	"c_approvedby" varchar(10) NULL,
	"d_approved_date" timestamp NULL,
	"c_approvednote" varchar(200) NULL,
	"c_confirmedBy" varchar(10) NULL,
	"d_confirmed_date" timestamp NULL,
	"c_confirmend_note" varchar(200) NULL,
	"c_emp_code" varchar(10) NULL,
	"c_parent_code" varchar(10) NULL,
	"C_Code" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_region_item_rate"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_region_item_rate"(
	"c_item_code" varchar(10) NOT NULL,
	"c_region_code" varchar(50) NOT NULL,
	"d_date_from" timestamp NOT NULL,
	"d_date_to" timestamp NULL,
	"n_rate" numeric(19, 2) NULL,
	"n_mrp" numeric(19, 2) NULL,
	"n_std_rate" numeric(19, 2) NULL,
	"n_pts_rate" numeric(19, 2) NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
 CONSTRAINT "PK_tbl_region_item_rate" PRIMARY KEY  
(
	"c_item_code" ,
	"c_region_code" ,
	"d_date_from" 
) 
) 
;
/****** Object:  Table "Tbl_Region_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Region_Mst"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"C_Sh_Name" varchar(7) NULL,
	"C_Zone_Code" varchar(10) NOT NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"n_lami" double precision NULL,
	"n_lgmi" double precision NULL,
	"n_dcr_disabled" integer NOT NULL,
	"n_mcr_disabled" integer NOT NULL,
 CONSTRAINT "PK_Tbl_Region_Mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "Tbl_region_Mst_temp"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_region_Mst_temp"(
	"c_code" varchar(10) NULL,
	"c_name" varchar(50) NULL,
	"c_sh_name" varchar(20) NULL,
	"c_zone_code" varchar(10) NULL,
	"n_deleted" numeric(1, 0) NULL,
	"d_created" varchar(30) NULL,
	"d_modified" varchar(30) NULL,
	"c_modifier" varchar(20) NULL
) 
;
/****** Object:  Table "Tbl_Remove_SideTray"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Remove_SideTray"(
	"c_div_code" varchar(50) NULL
) 
;
/****** Object:  Table "Tbl_rep_group_mapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_rep_group_mapping"(
	"C_report_id" varchar(10) NOT NULL,
	"C_rep_group_id" varchar(10) NOT NULL,
	"C_Subtitle_id" varchar(10) NOT NULL,
	"D_modified" timestamp NULL,
 CONSTRAINT "PK_Tbl_rep_group_mapping" PRIMARY KEY  
(
	"C_rep_group_id" 
) 
) 
;
/****** Object:  Table "tbl_rep_group_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_rep_group_mst"(
	"c_ID" varchar(10) NOT NULL,
	"C_name" varchar(50) NOT NULL,
	"N_deleted" boolean NULL,
	"D_Created" timestamp NULL,
	"D_Modified" timestamp NULL,
	"C_CreatedBy" varchar(50) NULL,
	"C_ModifiedBy" varchar(50) NULL,
 CONSTRAINT "PK_tbl_rep_group_mst" PRIMARY KEY  
(
	"c_ID" 
) 
) 
;
/****** Object:  Table "Tbl_rep_sp_column_def"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_rep_sp_column_def"(
	"C_Sp_Id" varchar(10) NOT NULL,
	"C_Id" varchar(10) NOT NULL,
	"C_Col_Name" varchar(10) NOT NULL,
	"C_Col_Type" varchar(10) NOT NULL,
 CONSTRAINT "PK_Tbl_rep_sp_column_def" PRIMARY KEY  
(
	"C_Id" 
) 
) 
;
/****** Object:  Table "Tbl_rep_sp_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_rep_sp_mst"(
	"C_Spid" varchar(10) NOT NULL,
	"C_name" varchar(50) NOT NULL,
	"C_Sp_Type" varchar(10) NOT NULL,
	"C_Sp_ParamDet" text NOT NULL,
 CONSTRAINT "PK_Tbl_rep_sp_mst" PRIMARY KEY  
(
	"C_Spid" 
) 
) 
;
/****** Object:  Table "Tbl_rep_sp_type"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_rep_sp_type"(
	"C_Sp_Type" varchar(10) NOT NULL,
	"C_name" varchar(50) NOT NULL,
	"N_deleted" bytea NULL,
 CONSTRAINT "PK_Tbl_rep_sp_type" PRIMARY KEY  
(
	"C_Sp_Type" ,
	"C_name" 
) 
) 
;
/****** Object:  Table "Tbl_Rep_Sub_title_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Rep_Sub_title_det"(
	"C_QuesId" varchar(50) NULL,
	"C_Spid" varchar(50) NULL,
	"C_ColId" varchar(50) NULL,
	"C_Editable" boolean NULL,
	"n_width" integer NULL,
	"C_HeadingName" varchar(50) NULL
) 
;
/****** Object:  Table "Tbl_Rep_sub_title_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Rep_sub_title_mst"(
	"C_Quest_Id" varchar(50) NOT NULL,
	"C_Quest_Text" text NOT NULL,
	"C_Result_Type" varchar(50) NOT NULL,
	"C_Rep_Grp_ID" varchar(10) NOT NULL,
	"N_Editable" boolean NOT NULL,
	"N_deleted" boolean NULL,
	"D_Created" timestamp NULL,
	"D_Modified" timestamp NULL,
	"C_CreatedBy" varchar(10) NULL,
	"C_ModifiedBy" varchar(10) NULL,
	"c_sp_id" varchar(10) NULL,
	"c_col_Id" varchar(10) NULL,
	"c_userOption" varchar(250) NULL,
 CONSTRAINT "PK_Tbl_Rep_sub_title_mst" PRIMARY KEY  
(
	"C_Quest_Id" 
) 
) 
;
/****** Object:  Table "Tbl_Rep_TemplateDet"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Rep_TemplateDet"(
	"c_id" varchar(10) NOT NULL,
	"c_grp_id" varchar(20) NOT NULL,
	"c_quest_id" varchar(20) NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "Tbl_Rep_TemplatMst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Rep_TemplatMst"(
	"C_Id" varchar(10) NOT NULL,
	"c_name" varchar(50) NULL,
	"c_usertype" integer NULL,
	"c_reporttype" varchar(10) NULL,
 CONSTRAINT "PK_Tbl_Rep_TemplatMst" PRIMARY KEY  
(
	"C_Id" 
) 
) 
;
/****** Object:  Table "Tbl_Rep_type_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Rep_type_mst"(
	"C_Id" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"N_deleted" boolean NULL,
	"D_Created" timestamp NULL,
	"D_Modified" timestamp NULL,
	"C_CreatedBy" varchar(10) NULL,
	"C_ModifiedBy" varchar(10) NULL,
 CONSTRAINT "PK_Tbl_Rep_type_mst" PRIMARY KEY  
(
	"C_Id" 
) 
) 
;
/****** Object:  Table "tbl_repair_vendor_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_repair_vendor_mst"(
	"n_vendorcode" SERIAL NOT NULL,
	"c_vendorname" varchar(500) NULL,
	"c_vendor_address" varchar(500) NULL,
	"n_status" integer NULL,
	"n_deleted" integer NOT NULL,
	"d_createddate" timestamp NULL,
	"c_createdby" varchar(500) NULL,
	"d_modifieddate" timestamp NULL,
	"c_modifiedby" varchar(20) NULL
) 
;
/****** Object:  Table "Tbl_Replace_Doc"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Replace_Doc"(
	"n_srno" SERIAL NOT NULL,
	"C_Code" varchar(10) NULL,
	"C_Name" varchar(200) NULL,
	"N_type" integer NULL,
	"C_Grade" varchar(10) NULL,
	"C_Qualification" varchar(50) NULL,
	"C_Add_1" varchar(200) NULL,
	"C_Add_2" varchar(200) NULL,
	"C_Add_3" varchar(50) NULL,
	"C_Add_4" varchar(50) NULL,
	"C_Pin" varchar(10) NULL,
	"C_Phone" varchar(20) NULL,
	"C_Fax" varchar(50) NULL,
	"C_Category" varchar(10) NULL,
	"C_Area_Code" varchar(10) NULL,
	"C_Subarea_Code" varchar(10) NULL,
	"D_DOB" timestamp NULL,
	"D_DOW" timestamp NULL,
	"C_Email_ID" varchar(50) NULL,
	"C_FsCode" varchar(10) NULL,
	"d_created" timestamp NOT NULL,
	"n_flag" integer NOT NULL,
	"c_reason" varchar(500) NULL,
	"d_closedt" timestamp NULL,
	"N_Status" integer NOT NULL,
	"d_openindate" timestamp NULL,
	"d_approvedate" timestamp NULL,
	"d_confirmdate" timestamp NULL,
	"C_Region_Code" varchar(10) NULL,
	"C_Div_Code" varchar(10) NULL,
	"c_DrClass_Code" varchar(10) NULL,
	"c_Approval_Remarks" varchar(500) NULL,
	"c_Confirmation_Remarks" varchar(500) NULL,
	"n_mci" varchar(40) NULL,
	"C_FName" varchar(50) NULL,
	"C_LName" varchar(50) NULL,
	"C_ApprovedBy" varchar(50) NULL,
	"n_SetupId" bigint NULL,
	"n_age" varchar(100) NULL,
	"c_speciality" varchar(200) NULL,
	"n_noofpatients" varchar(100) NULL,
	"n_drpurchase" integer NULL,
	"n_crntbusines" varchar(200) NULL,
	"n_drpotentcial" varchar(200) NULL,
	"n_businespotential" varchar(200) NULL,
	"c_childname1" varchar(200) NULL,
	"d_child1dob" timestamp NULL,
	"c_childname2" varchar(200) NULL,
	"d_child2dob" timestamp NULL,
	"c_childname3" varchar(200) NULL,
	"d_child3dob" timestamp NULL,
	"c_city" varchar(200) NULL,
	"c_state" varchar(200) NULL,
	"c_house" varchar(200) NULL,
	"c_street" varchar(200) NULL,
	"c_area" varchar(200) NULL,
	"c_landmark" varchar(200) NULL,
	"c_city1" varchar(200) NULL,
	"c_state2" varchar(200) NULL,
	"c_pincode" varchar(200) NULL,
	"N_DRPRESCRIPTION" varchar(200) NULL,
	"n_child2dob" integer NULL,
	"c_landline" varchar(20) NULL,
	"c_middlename" varchar(50) NULL,
	"c_spousename" varchar(100) NULL,
	"D_spousedob" timestamp NULL,
	"c_ConfirmDeskCode" varchar(100) NULL,
	"c_RefFsCode" varchar(10) NULL,
	"c_confirmedBy" varchar(15) NULL,
	"c_docmstpan" varchar(10) NULL,
	"c_img_url" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_replace_doc_05072018"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_replace_doc_05072018"(
	"n_srno" SERIAL NOT NULL,
	"C_Code" varchar(10) NULL,
	"C_Name" varchar(200) NULL,
	"N_type" integer NULL,
	"C_Grade" varchar(10) NULL,
	"C_Qualification" varchar(50) NULL,
	"C_Add_1" varchar(50) NULL,
	"C_Add_2" varchar(50) NULL,
	"C_Add_3" varchar(50) NULL,
	"C_Add_4" varchar(50) NULL,
	"C_Pin" varchar(10) NULL,
	"C_Phone" varchar(20) NULL,
	"C_Fax" varchar(50) NULL,
	"C_Category" varchar(10) NULL,
	"C_Area_Code" varchar(10) NULL,
	"C_Subarea_Code" varchar(10) NULL,
	"D_DOB" timestamp NULL,
	"D_DOW" timestamp NULL,
	"C_Email_ID" varchar(50) NULL,
	"C_FsCode" varchar(10) NULL,
	"d_created" timestamp NOT NULL,
	"n_flag" integer NOT NULL,
	"c_reason" varchar(500) NULL,
	"d_closedt" timestamp NULL,
	"N_Status" integer NOT NULL,
	"d_openindate" timestamp NULL,
	"d_approvedate" timestamp NULL,
	"d_confirmdate" timestamp NULL,
	"C_Region_Code" varchar(10) NULL,
	"C_Div_Code" varchar(10) NULL,
	"c_DrClass_Code" varchar(10) NULL,
	"c_Approval_Remarks" varchar(500) NULL,
	"c_Confirmation_Remarks" varchar(500) NULL,
	"n_mci" varchar(20) NULL,
	"C_FName" varchar(50) NULL,
	"C_LName" varchar(50) NULL,
	"C_ApprovedBy" varchar(50) NULL,
	"n_SetupId" bigint NULL,
	"n_age" varchar(100) NULL,
	"c_speciality" varchar(200) NULL,
	"n_noofpatients" varchar(100) NULL,
	"n_drpurchase" integer NULL,
	"n_crntbusines" varchar(200) NULL,
	"n_drpotentcial" varchar(200) NULL,
	"n_businespotential" varchar(200) NULL,
	"c_childname1" varchar(200) NULL,
	"d_child1dob" timestamp NULL,
	"c_childname2" varchar(200) NULL,
	"d_child2dob" timestamp NULL,
	"c_childname3" varchar(200) NULL,
	"d_child3dob" timestamp NULL,
	"c_city" varchar(200) NULL,
	"c_state" varchar(200) NULL,
	"c_house" varchar(200) NULL,
	"c_street" varchar(200) NULL,
	"c_area" varchar(200) NULL,
	"c_landmark" varchar(200) NULL,
	"c_city1" varchar(200) NULL,
	"c_state2" varchar(200) NULL,
	"c_pincode" varchar(200) NULL,
	"N_DRPRESCRIPTION" varchar(200) NULL,
	"n_child2dob" integer NULL,
	"c_landline" varchar(20) NULL,
	"c_middlename" varchar(50) NULL,
	"c_spousename" varchar(100) NULL,
	"D_spousedob" timestamp NULL,
	"c_ConfirmDeskCode" varchar(100) NULL,
	"c_RefFsCode" varchar(10) NULL,
	"c_confirmedBy" varchar(15) NULL,
	"c_docmstpan" varchar(10) NULL
) 
;
/****** Object:  Table "Tbl_replace_doc_compare_DocMst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_replace_doc_compare_DocMst"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(200) NULL,
	"N_Type" integer NOT NULL,
	"C_Grade" varchar(10) NULL,
	"C_Qualification" varchar(50) NULL,
	"C_Add_1" varchar(200) NULL,
	"C_Add_2" varchar(200) NULL,
	"C_Add_3" varchar(70) NULL,
	"C_Add_4" varchar(70) NULL,
	"C_Pin" varchar(10) NULL,
	"C_Phone" varchar(20) NULL,
	"C_Fax" varchar(50) NULL,
	"C_Category" varchar(10) NULL,
	"C_Area_Code" varchar(10) NULL,
	"C_Subarea_Code" varchar(10) NULL,
	"D_DOB" timestamp NULL,
	"D_DOW" timestamp NULL,
	"n_Status" integer NULL,
	"D_Create_Date" timestamp NULL,
	"D_modify_Date" timestamp NULL,
	"C_Email_ID" varchar(50) NULL,
	"C_FsCode" varchar(10) NULL,
	"c_region_code" varchar(10) NULL,
	"n_convert" numeric(9, 0) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(20) NULL,
	"n_lami" double precision NULL,
	"n_lgmi" double precision NULL,
	"c_tin_no" varchar(50) NULL,
	"c_lic_no" varchar(50) NULL,
	"c_contact_name" varchar(50) NULL,
	"n_Sft_shop" numeric(18, 0) NULL,
	"n_No_of_display_Shelf" numeric(9, 0) NULL,
	"c_desc_display_shelf" varchar(100) NULL,
	"n_Front_Board_Height" numeric(9, 2) NULL,
	"n_Front_Board_length" numeric(9, 2) NULL,
	"n_Backlit" smallint NULL,
	"n_Computerised" smallint NULL,
	"c_lic_food" varchar(50) NULL,
	"c_sort" varchar(10) NULL,
	"c_contact_mob" varchar(50) NULL,
	"c_contact_outlet_num" varchar(50) NULL,
	"C_Landmark" varchar(100) NULL,
	"C_Short_Name" varchar(10) NULL,
	"C_Doc_Class" varchar(10) NULL,
	"C_Spousename" varchar(100) NULL,
	"D_SpouseDob" timestamp NULL,
	"C_FName" varchar(200) NULL,
	"C_LName" varchar(50) NULL,
	"n_mcino" varchar(40) NULL,
	"C_HOSPITAL_NAME" varchar(200) NULL,
	"C_STREET_NAME" varchar(150) NULL,
	"C_AREA_NAME" varchar(150) NULL,
	"C_LANDMARK1" varchar(150) NULL,
	"C_CITY" varchar(150) NULL,
	"C_STATE" varchar(150) NULL,
	"C_HOUSE_NAME" varchar(150) NULL,
	"C_STREET_NAME1" varchar(150) NULL,
	"C_AREA_NAME1" varchar(150) NULL,
	"C_LANDMARK2" varchar(150) NULL,
	"C_CITY_1" varchar(150) NULL,
	"N_PATIENTS" varchar(150) NULL,
	"N_CRNTBUSINES" varchar(150) NULL,
	"C_STATE1" varchar(150) NULL,
	"C_PINCODE1" varchar(150) NULL,
	"C_BUSINES_POTENTIAL" varchar(150) NULL,
	"D_CHILD_DOB1" timestamp NULL,
	"D_CHILD_DOB2" timestamp NULL,
	"D_CHILD_DOB3" timestamp NULL,
	"n_age" varchar(10) NULL,
	"C_SPECIALITY" varchar(150) NULL,
	"C_childnname1" varchar(150) NULL,
	"C_childnname2" varchar(150) NULL,
	"C_childnname3" varchar(150) NULL,
	"n_drpurchase" integer NULL,
	"N_drprescription" integer NULL,
	"N_drpotential" varchar(50) NULL,
	"c_landline" varchar(40) NULL,
	"c_middlename" varchar(50) NULL,
	"c_tldl1" varchar(100) NULL,
	"c_tldl2" varchar(100) NULL,
	"c_dlfood1" varchar(100) NULL,
	"c_tldl11" varchar(100) NULL,
	"c_tldl12" varchar(100) NULL,
	"c_dlfood2" varchar(100) NULL,
	"d_DLDate1" timestamp NULL,
	"d_DLDate2" timestamp NULL,
	"c_pan1" varchar(100) NULL,
	"c_pan2" varchar(100) NULL,
	"c_Purchase_manager_Name" varchar(100) NULL,
	"c_Purchase_manager_Mob" varchar(20) NULL,
	"c_Account_Type" varchar(50) NULL,
	"n_visit_freq" integer NULL,
	"n_fridge" integer NULL,
	"c_Institutn_type" varchar(100) NULL,
	"c_Account_Grp" varchar(100) NULL,
	"n_hostel" integer NULL,
	"n_no_of_canteen" integer NULL,
	"c_type_of_food" text NULL,
	"c_Canteen_contr_name" varchar(100) NULL,
	"c_Canteen_contr_addr" varchar(500) NULL,
	"D_agreement_date" timestamp NULL,
	"n_Total_Disc" numeric(5, 2) NULL,
	"D_Total_Disc_From" timestamp NULL,
	"D_Total_Disc_To" timestamp NULL,
	"c_Store_Classification" varchar(100) NULL,
	"n_Store_Type" integer NULL,
	"c_Distributor" varchar(20) NULL,
	"c_store_type" varchar(50) NULL,
	"c_Store_Manager" varchar(50) NULL,
	"c_Distributor_name" varchar(100) NULL,
	"n_active" integer NULL,
	"c_classification" varchar(10) NULL,
	"c_chemisttype" varchar(10) NULL,
	"n_WindowSize" varchar(50) NULL,
	"C_AccountClassfctn" varchar(5) NULL,
	"C_AccountAddress" varchar(100) NULL,
	"C_AccountCode" varchar(10) NULL,
	"n_DaysTo_Activate" integer NULL,
	"d_Start_Date" timestamp NULL,
	"d_activation_Date" timestamp NULL,
	"c_storetype" varchar(50) NULL,
	"c_distributorcode" varchar(50) NULL,
	"c_visitfrequency" varchar(50) NULL,
	"c_classificationcode" varchar(50) NULL,
	"c_stmanager" varchar(50) NULL,
	"C_SA_Classification" varchar(20) NULL,
	"c_Hospital_Code" varchar(200) NULL,
	"C_TypeofHsptl" varchar(300) NULL,
	"C_Area" varchar(100) NULL,
	"C_Inhouse_phar_exist" varchar(100) NULL,
	"C_Fin_Turnover" varchar(100) NULL,
	"C_Potencial" varchar(100) NULL,
	"C_No_of_Beds" varchar(100) NULL,
	"C_No_of_Emer_Beds" varchar(100) NULL,
	"C_No_of_Critic_ICU_Beds" varchar(100) NULL,
	"C_No_of_Sur_Theaters" varchar(100) NULL,
	"C_Hospital" varchar(100) NULL,
	"C_Tot_No_of_Doctors" varchar(100) NULL,
	"C_Pur_Mgr_Name" varchar(100) NULL,
	"C_Pur_Mgr__Contact" varchar(100) NULL,
	"C_Stk_Inchrg_Name" varchar(100) NULL,
	"C_Stk_Inchrg_Contact" varchar(100) NULL,
	"C_Fin_Ofcr_Name" varchar(100) NULL,
	"C_Fin_Ofcr_Contact" varchar(100) NULL,
	"C_No_of_Thrputc_Group" varchar(100) NULL,
	"C_Techng_Institution" varchar(100) NULL,
	"C_Gstno" varchar(50) NULL,
	"c_docmstpan" varchar(10) NULL,
	"c_classtype" varchar(10) NULL,
	"n_SASCollection" integer NULL,
	"n_DrUpdateReqNo" numeric(18, 0) NULL,
	"c_clinicsubarea" varchar(150) NULL
) 
;
/****** Object:  Table "tbl_replace_doc_confirmation_que_add_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_replace_doc_confirmation_que_add_log"(
	"n_srno" numeric(18, 0) NULL,
	"c_code" varchar(10) NULL,
	"type" integer NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "Tbl_Replace_Doc_CoreProduct"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Replace_Doc_CoreProduct"(
	"c_srno" varchar(100) NOT NULL,
	"C_Doc_Code" varchar(20) NULL,
	"c_Product_Code" varchar(20) NOT NULL,
	"n_priority" integer NULL
) 
;
/****** Object:  Table "Tbl_Replace_Doc_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Replace_Doc_log"(
	"n_srno" numeric(18, 0) NOT NULL,
	"C_Code" varchar(10) NULL,
	"C_Name" varchar(200) NULL,
	"N_type" integer NULL,
	"C_Grade" varchar(10) NULL,
	"C_Qualification" char(40) NULL,
	"C_Add_1" varchar(200) NULL,
	"C_Add_2" varchar(200) NULL,
	"C_Add_3" varchar(50) NULL,
	"C_Add_4" varchar(50) NULL,
	"C_Pin" varchar(10) NULL,
	"C_Phone" varchar(20) NULL,
	"C_Fax" varchar(50) NULL,
	"C_Category" varchar(10) NULL,
	"C_Area_Code" varchar(10) NULL,
	"C_Subarea_Code" varchar(10) NULL,
	"D_DOB" timestamp NULL,
	"D_DOW" timestamp NULL,
	"C_Email_ID" varchar(50) NULL,
	"C_FsCode" varchar(10) NULL,
	"d_created" timestamp NOT NULL,
	"n_flag" integer NOT NULL,
	"c_reason" varchar(500) NULL,
	"d_closedt" timestamp NULL,
	"N_Status" integer NOT NULL,
	"d_openindate" timestamp NULL,
	"d_approvedate" timestamp NULL,
	"d_confirmdate" timestamp NULL,
	"C_Region_Code" varchar(10) NULL,
	"C_Div_Code" varchar(10) NULL,
	"c_DrClass_Code" varchar(10) NULL,
	"c_Approval_Remarks" varchar(500) NULL,
	"c_Confirmation_Remarks" varchar(500) NULL,
	"n_mci" varchar(40) NULL,
	"C_FName" varchar(50) NULL,
	"C_LName" varchar(50) NULL,
	"n_SetupId" bigint NULL,
	"c_landline" varchar(20) NULL,
	"c_middlename" varchar(50) NULL,
	"c_spousename" varchar(100) NULL,
	"D_spousedob" timestamp NULL,
	"c_ConfirmDeskCode" varchar(100) NULL,
	"c_RefFsCode" varchar(10) NULL,
	"c_confirmedBy" varchar(15) NULL
) 
;
/****** Object:  Table "Tbl_Replace_Doc_LogData"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Replace_Doc_LogData"(
	"n_srno" numeric(18, 0) NOT NULL,
	"C_Code" varchar(10) NULL,
	"C_Name" varchar(200) NULL,
	"N_type" integer NULL,
	"C_Grade" varchar(10) NULL,
	"C_Qualification" varchar(50) NULL,
	"C_Add_1" varchar(200) NULL,
	"C_Add_2" varchar(200) NULL,
	"C_Add_3" varchar(50) NULL,
	"C_Add_4" varchar(50) NULL,
	"C_Pin" varchar(10) NULL,
	"C_Phone" varchar(20) NULL,
	"C_Fax" varchar(50) NULL,
	"C_Category" varchar(10) NULL,
	"C_Area_Code" varchar(10) NULL,
	"C_Subarea_Code" varchar(10) NULL,
	"D_DOB" timestamp NULL,
	"D_DOW" timestamp NULL,
	"C_Email_ID" varchar(50) NULL,
	"C_FsCode" varchar(10) NULL,
	"d_created" timestamp NOT NULL,
	"n_flag" integer NOT NULL,
	"c_reason" varchar(500) NULL,
	"d_closedt" timestamp NULL,
	"N_Status" integer NOT NULL,
	"d_openindate" timestamp NULL,
	"d_approvedate" timestamp NULL,
	"d_confirmdate" timestamp NULL,
	"C_Region_Code" varchar(10) NULL,
	"C_Div_Code" varchar(10) NULL,
	"c_DrClass_Code" varchar(10) NULL,
	"c_Approval_Remarks" varchar(500) NULL,
	"c_Confirmation_Remarks" varchar(500) NULL,
	"n_mci" varchar(40) NULL,
	"C_FName" varchar(50) NULL,
	"C_LName" varchar(50) NULL,
	"C_ApprovedBy" varchar(50) NULL,
	"n_SetupId" bigint NULL,
	"n_age" varchar(100) NULL,
	"c_speciality" varchar(200) NULL,
	"n_noofpatients" varchar(100) NULL,
	"n_drpurchase" integer NULL,
	"n_crntbusines" varchar(200) NULL,
	"n_drpotentcial" varchar(200) NULL,
	"n_businespotential" varchar(200) NULL,
	"c_childname1" varchar(200) NULL,
	"d_child1dob" timestamp NULL,
	"c_childname2" varchar(200) NULL,
	"d_child2dob" timestamp NULL,
	"c_childname3" varchar(200) NULL,
	"d_child3dob" timestamp NULL,
	"c_city" varchar(200) NULL,
	"c_state" varchar(200) NULL,
	"c_house" varchar(200) NULL,
	"c_street" varchar(200) NULL,
	"c_area" varchar(200) NULL,
	"c_landmark" varchar(200) NULL,
	"c_city1" varchar(200) NULL,
	"c_state2" varchar(200) NULL,
	"c_pincode" varchar(200) NULL,
	"N_DRPRESCRIPTION" varchar(200) NULL,
	"n_child2dob" integer NULL,
	"c_landline" varchar(20) NULL,
	"c_middlename" varchar(50) NULL,
	"c_spousename" varchar(100) NULL,
	"D_spousedob" timestamp NULL,
	"c_ConfirmDeskCode" varchar(100) NULL,
	"c_RefFsCode" varchar(10) NULL,
	"c_confirmedBy" varchar(15) NULL
) 
;
/****** Object:  Table "Tbl_Replace_Doc_MultiApproval_Log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Replace_Doc_MultiApproval_Log"(
	"n_srno" numeric(18, 0) NOT NULL,
	"C_Code" varchar(10) NULL,
	"C_Name" varchar(200) NULL,
	"N_type" integer NULL,
	"C_Grade" varchar(10) NULL,
	"C_Qualification" varchar(50) NULL,
	"C_Add_1" varchar(50) NULL,
	"C_Add_2" varchar(50) NULL,
	"C_Add_3" varchar(50) NULL,
	"C_Add_4" varchar(50) NULL,
	"C_Pin" varchar(10) NULL,
	"C_Phone" varchar(20) NULL,
	"C_Fax" varchar(50) NULL,
	"C_Category" varchar(10) NULL,
	"C_Area_Code" varchar(10) NULL,
	"C_Subarea_Code" varchar(10) NULL,
	"D_DOB" timestamp NULL,
	"D_DOW" timestamp NULL,
	"C_Email_ID" varchar(50) NULL,
	"C_FsCode" varchar(10) NULL,
	"d_created" timestamp NULL,
	"n_flag" integer NOT NULL,
	"c_reason" varchar(500) NULL,
	"d_closedt" timestamp NULL,
	"N_Status" integer NOT NULL,
	"d_openindate" timestamp NULL,
	"d_approvedate" timestamp NULL,
	"d_confirmdate" timestamp NULL,
	"C_Region_Code" varchar(10) NULL,
	"C_Div_Code" varchar(10) NULL,
	"c_DrClass_Code" varchar(10) NULL,
	"c_Approval_Remarks" varchar(500) NULL,
	"c_Confirmation_Remarks" varchar(500) NULL,
	"n_mci" varchar(40) NULL,
	"C_FName" varchar(50) NULL,
	"C_LName" varchar(50) NULL,
	"C_ApprovedBy" varchar(50) NULL,
	"n_SetupId" bigint NULL,
	"n_age" varchar(100) NULL,
	"c_speciality" varchar(200) NULL,
	"n_noofpatients" varchar(100) NULL,
	"n_drpurchase" integer NULL,
	"n_crntbusines" varchar(200) NULL,
	"n_drpotentcial" varchar(200) NULL,
	"n_businespotential" varchar(200) NULL,
	"c_childname1" varchar(200) NULL,
	"d_child1dob" timestamp NULL,
	"c_childname2" varchar(200) NULL,
	"d_child2dob" timestamp NULL,
	"c_childname3" varchar(200) NULL,
	"d_child3dob" timestamp NULL,
	"c_city" varchar(200) NULL,
	"c_state" varchar(200) NULL,
	"c_house" varchar(200) NULL,
	"c_street" varchar(200) NULL,
	"c_area" varchar(200) NULL,
	"c_landmark" varchar(200) NULL,
	"c_city1" varchar(200) NULL,
	"c_state2" varchar(200) NULL,
	"c_pincode" varchar(200) NULL,
	"N_DRPRESCRIPTION" varchar(200) NULL,
	"n_child2dob" integer NULL,
	"c_landline" varchar(20) NULL,
	"c_middlename" varchar(50) NULL,
	"c_spousename" varchar(100) NULL,
	"D_spousedob" timestamp NULL,
	"c_RefFsCode" varchar(10) NULL
) 
;
/****** Object:  Table "tbl_Replace_Doc_MultipleSub_Det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Replace_Doc_MultipleSub_Det"(
	"n_srno" varchar(50) NULL,
	"c_DSC_Code" varchar(50) NULL,
	"c_DocAreacode" varchar(50) NULL,
	"c_DocSubAreacode" varchar(50) NULL,
	"n_SubType" integer NULL
) 
;
/****** Object:  Table "Tbl_Replace_Doc_Request_Management"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Replace_Doc_Request_Management"(
	"n_srno" numeric(18, 0) NOT NULL,
	"c_fs_code" varchar(100) NULL,
	"n_NextHeirarchyType" integer NULL,
	"c_NextHeirarchyFSCode" varchar(100) NULL,
	"n_setupid" integer NULL,
	"n_status" integer NULL,
	"d_Modifieddate" timestamp NULL,
	"n_apprequired" integer NULL,
	"n_SingleOrMultiple" integer NULL,
	"n_DeskFsType" integer NULL,
	"n_ConfRequiredFieldExists" integer NULL,
 CONSTRAINT "PK_Tbl_Replace_Doc_Request_Management" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_replace_doc_request_management_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_replace_doc_request_management_log"(
	"n_srno" numeric(18, 0) NOT NULL,
	"c_fs_code" varchar(100) NULL,
	"n_nextheirarchytype" integer NULL,
	"c_nextheirarchyfscode" varchar(100) NULL,
	"n_setupid" integer NULL,
	"n_status" integer NULL,
	"d_modifieddate" timestamp NULL,
	"n_apprequired" integer NULL,
	"n_singleormultiple" integer NULL,
	"n_deskfstype" integer NULL,
	"n_confrequiredfieldexists" integer NULL,
 CONSTRAINT "pk_tbl_replace_doc_request_management_log" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "Tbl_ReplaceDoc_VisitDetails"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_ReplaceDoc_VisitDetails"(
	"n_srno" numeric(18, 0) NOT NULL,
	"C_Doc_Day_Meet" varchar(20) NULL,
	"C_Doc_Ftime_Meet" varchar(50) NULL,
	"C_Doc_Ttime_Meet" varchar(50) NULL,
	"C_Doc_App_Criteria" varchar(300) NULL,
	"N_Doc_App_Fixed" smallint NULL
) 
;
/****** Object:  Table "tbl_ReplaceDocConfirmationQue"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_ReplaceDocConfirmationQue"(
	"sr_no" varchar(20) NULL,
	"doc_code" varchar(100) NULL,
	"d_date" timestamp NULL,
	"n_status" integer NULL,
	"c_loginfs" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_report_filter_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_report_filter_mst"(
	"n_id" integer NOT NULL,
	"c_label_display" varchar(50) NULL,
	"c_display_type" varchar(50) NULL,
	"c_sql_query" text NULL,
	"n_onload" integer NULL,
	"c_control_type" varchar(50) NULL,
	"c_query_type" varchar(50) NULL,
	"c_query_parameter" varchar(500) NULL,
	"n_R_type" integer NULL,
 CONSTRAINT "PK_tbl_report_filter_mst" PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "tbl_report_input_details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_report_input_details"(
	"n_id" integer NOT NULL,
	"n_priority" integer NOT NULL,
	"n_control_id" integer NULL,
	"n_multiple_select" boolean NULL,
	"n_mandatory" boolean NULL,
	"n_readonly" boolean NULL,
	"c_onchange_query" text NULL,
	"c_onchange_parameter" varchar(1000) NULL,
	"c_onchange_control" varchar(1000) NULL,
	"c_retrival_option" varchar(100) NULL,
	"n_rerival_priority" integer NULL,
 CONSTRAINT "PK_tbl_report_input_details" PRIMARY KEY  
(
	"n_id" ,
	"n_priority" 
) 
) 
;
/****** Object:  Table "Tbl_Report_Setup_Header"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Report_Setup_Header"(
	"N_ID" integer NOT NULL,
	"C_MenuName" varchar(200) NULL,
	"C_ReportHeaderName" varchar(500) NULL,
	"C_ReportDetailName" varchar(500) NULL,
	"C_PageLocation" varchar(200) NULL,
	"C_PageName" varchar(200) NULL,
	"c_parameter" varchar(100) NULL,
	"menuid" integer NULL,
 CONSTRAINT "PK_Tbl_Report_Setup_Header" PRIMARY KEY  
(
	"N_ID" 
) 
) 
;
/****** Object:  Table "tbl_report_view_query"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_report_view_query"(
	"n_id" integer NOT NULL,
	"c_query" text NULL,
	"c_query_type" varchar(50) NULL,
	"c_query_parameter" varchar(1000) NULL,
	"c_report_column" text NULL,
 CONSTRAINT "PK_tbl_report_view_query" PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "Tbl_Reported"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Reported"(
	"DIVISION" varchar(50) NULL,
	"REGION" varchar(50) NULL,
	"DESIGNATION" varchar(50) NULL,
	"REPORTED" integer NULL
) 
;
/****** Object:  Table "tbl_ReportSave"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_ReportSave"(
	"id" varchar(50) NULL,
	"htmlvalue" "xml" NULL
) 
;
/****** Object:  Table "tbl_Req_Incentives_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Req_Incentives_mst"(
	"c_code" varchar(10) NOT NULL,
	"c_name" varchar(500) NOT NULL,
	"n_fs_type" integer NOT NULL,
	"c_sh_name" varchar(20) NULL,
	"n_deleted" numeric(18, 0) NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(50) NULL,
 CONSTRAINT "PK_tbl_Req_Incentives_mst" PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "tbl_request_type"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_request_type"(
	"c_code" SERIAL NOT NULL,
	"c_request_type" varchar(50) NOT NULL,
 CONSTRAINT "PK_tbl_request_type" PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "tbl_res_emp_plel_balance_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_res_emp_plel_balance_det"(
	"n_srno" SERIAL NOT NULL,
	"c_fs_code" varchar(50) NULL,
	"c_emp_code" varchar(50) NULL,
	"d_created_date" timestamp NULL,
	"d_api_called_date" timestamp NULL,
	"n_api_status" integer NULL,
	"n_balance_plel" integer NULL,
	"n_remain_month_bal" integer NULL,
	"n_total_plel_bal" integer NULL
) 
;
/****** Object:  Table "tbl_resignationsetup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_resignationsetup"(
	"n_type" numeric(18, 0) NULL
) 
;
/****** Object:  Table "Tbl_Retailer_Classification"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Retailer_Classification"(
	"c_code" varchar(10) NOT NULL,
	"c_name" varchar(50) NOT NULL,
	"c_sh_name" varchar(7) NULL,
	"n_pur" numeric(18, 0) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"C_EMailPassword" varchar(500) NULL,
	"C_EMailID" varchar(3000) NULL,
	"C_DisplayNameEmail" varchar(100) NULL,
 CONSTRAINT "PK_Tbl_Retailer_Classification" PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "tbl_Retailer_MonthlySalesEntry_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Retailer_MonthlySalesEntry_Details"(
	"n_srno" numeric(18, 0) NOT NULL,
	"c_ItemCode" varchar(50) NULL,
	"n_Qty" numeric(15, 2) NULL,
	"n_SchemeQuantity" numeric(18, 2) NULL,
	"n_Value" numeric(18, 2) NULL,
	"n_rate" numeric(10, 2) NULL
) 
;
/****** Object:  Table "tbl_Retailer_MonthlySalesEntry_Header"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Retailer_MonthlySalesEntry_Header"(
	"n_srno" SERIAL NOT NULL,
	"c_ChemistCode" varchar(50) NOT NULL,
	"c_StockistCode" varchar(50) NOT NULL,
	"n_Month" integer NULL,
	"n_Year" integer NULL,
	"n_deleted" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"n_EditQtyValColumn" integer NULL,
	"c_fscode" varchar(50) NULL
) 
;
/****** Object:  Table "Tbl_Retailer_Sales_Entry_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Retailer_Sales_Entry_Mst"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_stockstsetup" integer NOT NULL,
	"N_chemistsetup" integer NULL,
	"N_productrate" integer NOT NULL,
	"N_SchemeQuantityAdded" integer NOT NULL,
	"N_QuantityValue" integer NOT NULL
) 
;
/****** Object:  Table "tbl_retailer_setup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_retailer_setup"(
	"n_pincode" integer NULL,
	"n_phnone" integer NULL,
	"n_grade" integer NULL,
	"n_class" integer NULL,
	"n_landmark" integer NULL,
	"n_typeofOutlet" integer NULL
) 
;
/****** Object:  Table "tbl_RetailerActivityStatus"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_RetailerActivityStatus"(
	"N_Id" integer NOT NULL,
	"C_Name" varchar(50) NULL,
 CONSTRAINT "PK_tbl_RetailerActivityStatus" PRIMARY KEY  
(
	"N_Id" 
) 
) 
;
/****** Object:  Table "tbl_RetailerOutletAdd_Email_SendDetails"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_RetailerOutletAdd_Email_SendDetails"(
	"n_srno" SERIAL NOT NULL,
	"n_referenceid" integer NOT NULL,
	"c_tomailids" varchar(1000) NULL,
	"d_send_on" timestamp NULL,
	"c_status" varchar(20) NULL,
	"c_error" varchar(1000) NULL
) 
;
/****** Object:  Table "tbl_RetailerOutletAdd_Email_ToSend"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_RetailerOutletAdd_Email_ToSend"(
	"n_id" SERIAL NOT NULL,
	"c_code" varchar(50) NULL,
	"c_fscode" varchar(50) NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_roi_brand_mapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_roi_brand_mapping"(
	"n_srno" SERIAL NOT NULL,
	"c_divison" varchar(50) NULL,
	"n_type" integer NULL,
	"c_item_code" text NULL,
	"c_createdby" varchar(50) NULL,
	"d_createddate" timestamp NULL
) 
;
/****** Object:  Table "tbl_roi_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_roi_det"(
	"n_srno" integer NOT NULL,
	"c_doc_code" varchar(20) NULL,
	"c_itemcode" varchar(20) NULL,
	"n_pack" varchar(20) NULL,
	"n_rate" varchar(20) NULL,
	"n_qty" varchar(20) NULL,
	"n_value" varchar(20) NULL,
	"c_note" varchar(500) NULL,
	"n_docroi" integer NULL,
	"roi_remark" varchar(200) NULL
) 
;
/****** Object:  Table "tbl_roi_hdr"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_roi_hdr"(
	"n_srno" SERIAL NOT NULL,
	"c_subarea" varchar(100) NULL,
	"d_date" timestamp NULL,
	"n_no_roi" integer NULL,
	"n_status" integer NULL,
	"c_requestedby" varchar(20) NULL,
	"n_totalamount" varchar(20) NULL,
	"c_note" text NULL,
	"d_posting_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_roi_mandatorysettings_setup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_roi_mandatorysettings_setup"(
	"n_srno" SERIAL NOT NULL,
	"n_type" integer NULL,
	"c_division_code" text NULL,
	"c_region_code" text NULL,
	"n_deleted" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"n_campaign_dr_mandatory" integer NULL
) 
;
/****** Object:  Table "tbl_role_component_availablemappings"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_role_component_availablemappings"(
	"n_dsca_type" integer NULL,
	"n_component_id" integer NULL,
	"n_delete" integer NULL,
	"c_comp_display_name" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_roll_master_cateogry_mapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_roll_master_cateogry_mapping"(
	"c_hospital_code" varchar(100) NULL,
	"c_category_code" varchar(100) NULL,
	"n_hospital_type" integer NULL
) 
;
/****** Object:  Table "tbl_rp_srno_5072018"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_rp_srno_5072018"(
	"srno" varchar(100) NULL,
	"fs1" varchar(20) NULL,
	"fs2" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_rps_cluster_confirmator"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_rps_cluster_confirmator"(
	"n_srno" SERIAL NOT NULL,
	"n_setup_no" integer NULL,
	"c_cluster_confirmator" varchar(50) NULL,
	"n_amount" numeric(18, 2) NULL,
	"c_cluster_extrn_email" text NULL,
	"c_acc_dept1_code" varchar(50) NULL,
	"c_acc_dept1_extrn_email" text NULL,
	"c_acc_dept2_code" varchar(50) NULL,
	"c_acc_dept2_extrn_email" text NULL,
	"c_div_sec_code" varchar(50) NULL,
	"c_div_sec_extrn_email" text NULL,
	"c_dr_app_rej_type" integer NULL,
	"c_dr_app_rej_extrn_email" text NULL,
	"c_approval_extrn_email" text NULL,
	"n_rps_flow" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "tbl_rps_cluster_confirmator_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_rps_cluster_confirmator_log"(
	"n_id" SERIAL NOT NULL,
	"n_srno" integer NULL,
	"n_setup_no" integer NULL,
	"c_cluster_confirmator" varchar(50) NULL,
	"n_amount" numeric(18, 2) NULL,
	"c_cluster_extrn_email" text NULL,
	"c_acc_dept1_code" varchar(50) NULL,
	"c_acc_dept1_extrn_email" text NULL,
	"c_acc_dept2_code" varchar(50) NULL,
	"c_acc_dept2_extrn_email" text NULL,
	"c_div_sec_code" varchar(50) NULL,
	"c_div_sec_extrn_email" text NULL,
	"c_dr_app_rej_type" integer NULL,
	"c_dr_app_rej_extrn_email" text NULL,
	"c_approval_extrn_email" text NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"d_insert" timestamp NULL
) 
;
/****** Object:  Table "tbl_RPS_Compare"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_RPS_Compare"(
	"n_Id" SERIAL NOT NULL,
	"n_CompareCode" integer NOT NULL,
	"c_CompareName" varchar(500) NOT NULL,
	"n_delete" integer NOT NULL,
 CONSTRAINT "PK_tbl_RPS_Compare" PRIMARY KEY  
(
	"n_Id" 
) 
) 
;
/****** Object:  Table "tbl_Rps_control_type_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Rps_control_type_mst"(
	"N_ID" SERIAL NOT NULL,
	"n_cntTypeCode" integer NOT NULL,
	"c_typename" varchar(100) NULL,
	"n_deleted" integer NULL,
	"n_html_type" integer NULL,
	"c_BindQuery" text NULL,
 CONSTRAINT "PK_tbl_Rps_control_type_mst" PRIMARY KEY  
(
	"N_ID" 
) 
) 
;
/****** Object:  Table "tbl_rps_doctorwise_gift_allocation_upload"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_rps_doctorwise_gift_allocation_upload"(
	"c_empcode" varchar(100) NULL,
	"c_itemcode" varchar(100) NULL,
	"c_doctorcode" varchar(100) NULL,
	"n_qty" integer NULL,
	"d_date" timestamp NULL,
	"c_modifier" varchar(50) NULL,
	"n_uploadid" numeric(18, 0) NOT NULL,
	"c_cycle_id" varchar(50) NULL,
	"n_lotsize" integer NULL,
	"d_modified" timestamp NULL,
	"n_primary_id" SERIAL NOT NULL,
	"c_pancard" varchar(50) NULL,
	"n_headerUpdate" integer NULL,
	"n_stockUpdate" integer NULL,
	"n_transactionUpdate" integer NULL,
	"n_rpsno" varchar(10) NULL
) 
;
/****** Object:  Table "tbl_rps_expense_BillUpload"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_rps_expense_BillUpload"(
	"n_Srno" numeric(18, 0) NOT NULL,
	"c_imagefilename" varchar(300) NULL
) 
;
/****** Object:  Table "tbl_rps_expense_PhotoUpload"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_rps_expense_PhotoUpload"(
	"n_Srno" numeric(18, 0) NOT NULL,
	"c_imagefilename" varchar(300) NULL
) 
;
/****** Object:  Table "tbl_rps_gift_doc_input_qty"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_rps_gift_doc_input_qty"(
	"n_rps_srno" bigint NULL,
	"d_rps_date" timestamp NULL,
	"c_doc_code" varchar(20) NULL,
	"c_gift_code" varchar(20) NULL,
	"n_gift_qty" numeric(18, 2) NULL,
	"d_createddate" timestamp NULL
) 
;
/****** Object:  Table "tbl_rps_gift_doc_input_qty_rps_reject_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_rps_gift_doc_input_qty_rps_reject_log"(
	"n_rps_srno" bigint NULL,
	"d_rps_date" timestamp NULL,
	"c_doc_code" varchar(20) NULL,
	"c_gift_code" varchar(20) NULL,
	"n_gift_qty" numeric(18, 2) NULL,
	"d_createddate" timestamp NULL
) 
;
/****** Object:  Table "tbl_rps_manager_division"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_rps_manager_division"(
	"n_primary_id" SERIAL NOT NULL,
	"c_mgr_fscode" varchar(50) NULL,
	"c_mgr_divcode" varchar(50) NULL,
	"c_mgr_empcode" varchar(50) NULL,
PRIMARY KEY  
(
	"n_primary_id" 
) 
) 
;
/****** Object:  Table "tbl_rps_name"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_rps_name"(
	"c_name" varchar(100) NULL,
	"c_display_caption" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_Rps_RegularExpressions_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Rps_RegularExpressions_Mst"(
	"N_Id" SERIAL NOT NULL,
	"n_ValidationTypeCode" integer NOT NULL,
	"c_ValidationName" varchar(500) NOT NULL,
	"c_Regularexpression" text NOT NULL,
	"n_delete" integer NOT NULL,
 CONSTRAINT "PK_tbl_Rps_RegularExpressions_Mst" PRIMARY KEY  
(
	"N_Id" 
) 
) 
;
/****** Object:  Table "tbl_rps_sap_data_extract_cycle_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_rps_sap_data_extract_cycle_det"(
	"n_primary_id" SERIAL NOT NULL,
	"c_cycle_id" varchar(50) NULL,
	"n_deleted" integer NOT NULL,
	"d_date" timestamp NULL,
PRIMARY KEY  
(
	"n_primary_id" 
) 
) 
;
/****** Object:  Table "tbl_rps_transaction_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_rps_transaction_det"(
	"n_id" SERIAL NOT NULL,
	"n_rps_no" numeric(18, 0) NULL,
	"c_doc_code" varchar(20) NULL,
	"c_item_code" varchar(20) NULL,
	"n_qty" integer NULL,
	"n_cycle_id" varchar(200) NULL,
	"c_transaction_id" varchar(50) NULL,
	"d_createddt" timestamp NULL,
	"n_sap_flag" integer NOT NULL
) 
;
/****** Object:  Table "tbl_rps_transaction_det_reject_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_rps_transaction_det_reject_log"(
	"n_id" numeric(18, 0) NULL,
	"n_rps_no" numeric(18, 0) NULL,
	"c_doc_code" varchar(20) NULL,
	"c_item_code" varchar(20) NULL,
	"n_qty" integer NULL,
	"n_cycle_id" numeric(18, 0) NULL,
	"c_transaction_id" varchar(50) NULL,
	"d_createddt" timestamp NULL
) 
;
/****** Object:  Table "tbl_rpt_regionmapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_rpt_regionmapping"(
	"C_Report_Id" varchar(50) NOT NULL,
	"C_Division" varchar(50) NULL,
	"C_Region" varchar(50) NULL,
	"D_FromDate" timestamp NULL,
	"D_ToDate" timestamp NULL,
	"N_Deleted" integer NULL,
	"D_Created" timestamp NULL,
	"D_Modified" timestamp NULL
) 
;
/****** Object:  Table "Tbl_RSP"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_RSP"(
	"C_FS_Code" char(10) NULL,
	"C_Item_Code" char(10) NULL,
	"N_Qty" numeric(18, 0) NOT NULL,
	"N_Value" numeric(18, 2) NULL,
	"N_Month" numeric(18, 0) NOT NULL,
	"N_year" numeric(18, 0) NOT NULL,
	"C_Created_By" char(10) NULL
) 
;
/****** Object:  Table "tbl_SalarySlipUpload"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_SalarySlipUpload"(
	"N_Id" SERIAL NOT NULL,
	"C_Year" varchar(4) NULL,
	"C_Month" varchar(2) NULL,
	"C_FileName" varchar(200) NULL,
	"C_FilePath" varchar(500) NULL,
	"D_UploadedDate" timestamp NULL,
 CONSTRAINT "PK_tbl_SalarySlipUpload" PRIMARY KEY  
(
	"N_Id" 
) 
) 
;
/****** Object:  Table "tbl_SalarySlipUpload_Det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_SalarySlipUpload_Det"(
	"N_Id" bigint NULL,
	"C_EmpCode" varchar(50) NULL,
	"C_FileName" varchar(200) NULL,
	"C_FilePath" varchar(1000) NULL,
	"C_ZIPName" varchar(50) NULL,
	"N_Deltd" integer NULL
) 
;
/****** Object:  Table "Tbl_Sales"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Sales"(
	"C_DEP_CODE" varchar(10) NOT NULL,
	"c_year" varchar(4) NOT NULL,
	"c_prefix" varchar(10) NOT NULL,
	"N_SRNO" numeric(18, 0) NOT NULL,
	"D_DATE" timestamp NULL,
	"C_CUST_CODE" varchar(50) NULL,
	"N_TOTAL" numeric(18, 2) NULL,
	"N_TAX_AMT" numeric(18, 2) NULL,
	"N_NON_TAX_AMT" numeric(18, 2) NULL,
	"C_LRNO" varchar(20) NULL,
	"D_LRDT" timestamp NULL,
	"C_FS_CODE" char(10) NULL,
	"C_AM_CODE" char(10) NULL,
	"C_RM" char(10) NULL,
	"C_ZM" char(10) NULL,
	"C_GM" char(10) NULL,
	"C_INVOICE" varchar(50) NULL,
	"D_DUEDATE" timestamp NULL,
	"N_FLAG" integer NULL,
	"C_DIV_CODE" varchar(10) NULL,
	"d_inv_date" timestamp NULL,
	"modidt" timestamp NULL,
	"depocode" varchar(20) NULL,
	"c_order_br_code" varchar(20) NULL,
	"n_cancel_flag" numeric(1, 0) NULL,
	"c_order_c2code" varchar(20) NULL,
	"SalableReturn_Qty" integer NULL,
	"SalableReturn_Val" numeric(18, 2) NULL,
	"NonSalableReturn_Qty" integer NULL,
	"NonSalableReturn_Val" numeric(18, 2) NULL,
	"Net_Qty" integer NULL,
	"Net_Val" numeric(18, 2) NULL,
 CONSTRAINT "PK_Tbl_Sales" PRIMARY KEY  
(
	"C_DEP_CODE" ,
	"c_year" ,
	"c_prefix" ,
	"N_SRNO" 
) 
) 
;
/****** Object:  Table "Tbl_Sales_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Sales_Details"(
	"C_DEP_CODE" varchar(10) NOT NULL,
	"c_YEAR" varchar(4) NOT NULL,
	"C_PREFIX" varchar(10) NOT NULL,
	"N_SRNO" numeric(18, 0) NOT NULL,
	"N_ROW_ID" numeric(18, 0) NOT NULL,
	"C_ITEM_CODE" varchar(10) NULL,
	"C_BATCH_NO" char(20) NULL,
	"N_QTY" numeric(18, 2) NULL,
	"N_SCH_QTY" numeric(18, 2) NULL,
	"N_RECPT_QTY" numeric(18, 2) NULL,
	"N_SRT" numeric(18, 2) NULL,
	"N_VALUE" numeric(18, 2) NULL,
	"c_reason_code" varchar(20) NULL,
	"d_date" timestamp NULL,
	"n_cancel_flag" numeric(1, 0) NULL,
	"d_print_exp_dt" "date" NULL
) 
;
/****** Object:  Table "Tbl_Sales_Details_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Sales_Details_log"(
	"C_DEP_CODE" varchar(10) NOT NULL,
	"c_YEAR" varchar(4) NOT NULL,
	"C_PREFIX" varchar(10) NOT NULL,
	"N_SRNO" numeric(18, 0) NOT NULL,
	"N_ROW_ID" numeric(18, 0) NOT NULL,
	"C_ITEM_CODE" varchar(10) NULL,
	"C_BATCH_NO" char(20) NULL,
	"N_QTY" numeric(18, 2) NULL,
	"N_SCH_QTY" numeric(18, 2) NULL,
	"N_RECPT_QTY" numeric(18, 2) NULL,
	"N_SRT" numeric(18, 2) NULL,
	"N_VALUE" numeric(18, 2) NULL,
	"C_Action" varchar(100) NULL
) 
;
/****** Object:  Table "Tbl_Sales_Details_temp"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Sales_Details_temp"(
	"C_DEP_CODE" varchar(10) NOT NULL,
	"c_YEAR" varchar(4) NOT NULL,
	"C_PREFIX" varchar(10) NOT NULL,
	"N_SRNO" numeric(18, 0) NOT NULL,
	"N_ROW_ID" numeric(18, 0) NOT NULL,
	"C_ITEM_CODE" varchar(10) NULL,
	"C_BATCH_NO" char(20) NULL,
	"N_QTY" numeric(18, 2) NULL,
	"N_SCH_QTY" numeric(18, 2) NULL,
	"N_RECPT_QTY" numeric(18, 2) NULL,
	"N_SRT" numeric(18, 2) NULL,
	"N_VALUE" numeric(18, 2) NULL
) 
;
/****** Object:  Table "Tbl_Sales_Import"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Sales_Import"(
	"C_DEP_CODE" varchar(10) NOT NULL,
	"N_YEAR" numeric(18, 0) NOT NULL,
	"C_PREFIX" varchar(10) NOT NULL,
	"N_SRNO" numeric(18, 0) NOT NULL,
	"N_IMPORT_MONTH" numeric(18, 0) NOT NULL,
	"N_IMPORT_YEAR" numeric(18, 0) NOT NULL,
	"c_division" varchar(100) NULL
) 
;
/****** Object:  Table "Tbl_Sales_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Sales_log"(
	"C_DEP_CODE" varchar(10) NOT NULL,
	"c_year" varchar(4) NOT NULL,
	"c_prefix" varchar(10) NOT NULL,
	"N_SRNO" numeric(18, 0) NOT NULL,
	"D_DATE" timestamp NULL,
	"C_CUST_CODE" varchar(50) NULL,
	"N_TOTAL" numeric(18, 2) NULL,
	"N_TAX_AMT" numeric(18, 2) NULL,
	"N_NON_TAX_AMT" numeric(18, 2) NULL,
	"C_LRNO" char(10) NULL,
	"D_LRDT" timestamp NULL,
	"C_FS_CODE" char(10) NULL,
	"C_AM_CODE" char(10) NULL,
	"C_RM" char(10) NULL,
	"C_ZM" char(10) NULL,
	"C_GM" char(10) NULL,
	"C_INVOICE" varchar(50) NULL,
	"D_DUEDATE" timestamp NULL,
	"N_FLAG" integer NULL,
	"C_DIV_CODE" varchar(10) NULL,
	"d_inv_date" timestamp NULL,
	"modidt" timestamp NULL,
	"depocode" varchar(20) NULL,
	"C_Action" varchar(100) NULL
) 
;
/****** Object:  Table "Tbl_Sales_temp"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Sales_temp"(
	"C_DEP_CODE" varchar(10) NOT NULL,
	"c_year" varchar(4) NOT NULL,
	"c_prefix" varchar(10) NOT NULL,
	"N_SRNO" numeric(18, 0) NOT NULL,
	"D_DATE" timestamp NULL,
	"C_CUST_CODE" varchar(10) NULL,
	"N_TOTAL" numeric(18, 2) NULL,
	"N_TAX_AMT" numeric(18, 2) NULL,
	"N_NON_TAX_AMT" numeric(18, 2) NULL,
	"C_LRNO" char(10) NULL,
	"D_LRDT" timestamp NULL,
	"C_FS_CODE" char(10) NULL,
	"C_AM_CODE" char(10) NULL,
	"C_RM" char(10) NULL,
	"C_ZM" char(10) NULL,
	"C_GM" char(10) NULL,
	"C_INVOICE" varchar(50) NULL,
	"D_DUEDATE" timestamp NULL,
	"N_FLAG" integer NULL,
	"C_DIV_CODE" varchar(10) NULL,
	"d_inv_date" timestamp NULL,
	"modidt" timestamp NULL,
	"depocode" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_sample_transaction_setup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_sample_transaction_setup"(
	"n_srno" SERIAL NOT NULL,
	"c_division" varchar(2000) NULL,
	"c_region" varchar(2000) NULL,
	"c_createdby" varchar(20) NULL,
	"n_deleted" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "tbl_sap_employee_Det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_sap_employee_Det"(
	"Id" SERIAL NOT NULL,
	"C_EmpCode" varchar(50) NULL,
	"C_EmployeeEname" varchar(250) NULL,
	"C_ReplacementEmpCode" varchar(50) NULL,
	"C_FsCode" varchar(50) NULL,
	"D_StartDate" timestamp NULL,
	"D_CloseDate" timestamp NULL,
	"N_Activeflag" integer NULL,
	"N_Delete" integer NULL,
	"D_CreateDate" timestamp NULL,
 CONSTRAINT "PK_tbl_sap_employee_Det" PRIMARY KEY  
(
	"Id" 
) 
) 
;
/****** Object:  Table "tbl_sap_employee_resign_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_sap_employee_resign_det"(
	"Id" SERIAL NOT NULL,
	"C_EmpCode" varchar(50) NULL,
	"C_EmployeeEname" varchar(250) NULL,
	"D_CloseDate" timestamp NULL,
	"D_LastReportDate" timestamp NULL,
	"N_Activeflag" integer NULL,
	"N_Delete" integer NULL,
	"D_CreateDate" timestamp NULL
) 
;
/****** Object:  Table "tbl_savere_skipDetails"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_savere_skipDetails"(
	"c_Fs_code" varchar(100) NULL,
	"c_group" varchar(150) NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_scheme_applicable_area"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_scheme_applicable_area"(
	"c_schemecode" varchar(20) NOT NULL,
	"c_applicablecode" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_scheme_applicable_grade"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_scheme_applicable_grade"(
	"c_schemecode" varchar(20) NOT NULL,
	"c_applicablegrade" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_scheme_offered_items"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_scheme_offered_items"(
	"n_SchDet_id" integer NULL,
	"n_SchHeader_id" integer NULL,
	"c_schemecode" varchar(20) NOT NULL,
	"c_item_code" varchar(20) NOT NULL,
	"n_qty" integer NULL
) 
;
/****** Object:  Table "tbl_Sec_Sales_Activation_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Sec_Sales_Activation_mst"(
	"SrNo" SERIAL NOT NULL,
	"C_FsCode" varchar(20) NULL,
	"C_Region" varchar(20) NULL,
	"C_Designation" varchar(20) NULL,
	"D_SalesEntryExt_FrDate" timestamp NULL,
	"D_SalesEntryExt_ToDate" timestamp NULL,
	"N_DateMonth_F" integer NULL,
	"N_Deleted" integer NULL,
	"C_CreatedBy" varchar(20) NULL,
	"C_ModifiedBy" varchar(20) NULL,
	"D_Created_Date" timestamp NULL,
	"D_ModifiedDate" timestamp NULL
) 
;
/****** Object:  Table "tbl_sec_sales_item_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_sec_sales_item_det"(
	"c_stk_code" varchar(50) NULL,
	"c_item_code" varchar(10) NULL,
	"d_date" timestamp NULL,
	"n_Qty" numeric(18, 0) NULL,
	"c_fscode" varchar(10) NULL,
	"n_soh" numeric(18, 0) NULL,
	"n_SrNo" integer NULL
) 
;
/****** Object:  Table "tbl_Sec_Sales_Item_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Sec_Sales_Item_Mst"(
	"n_SrNo" SERIAL NOT NULL,
	"c_stk_code" varchar(50) NULL,
	"d_date" timestamp NULL,
	"c_fscode" varchar(10) NULL
) 
;
/****** Object:  Table "Tbl_Secondary_Target_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Secondary_Target_Mst"(
	"C_FS_HQ_Code" char(10) NOT NULL,
	"C_Item_Brand_Code" char(10) NOT NULL,
	"N_Qty" numeric(18, 0) NULL,
	"N_Value" numeric(18, 2) NULL,
	"N_Month" numeric(18, 0) NOT NULL,
	"N_Year" numeric(18, 0) NOT NULL,
	"N_Flag" integer NULL,
	"C_Created_By" char(10) NULL,
 CONSTRAINT "Pk_Tbl_Secondary_Target_Mst" PRIMARY KEY  
(
	"C_FS_HQ_Code" ,
	"C_Item_Brand_Code" ,
	"N_Month" ,
	"N_Year" 
) 
) 
;
/****** Object:  Table "tbl_SecSales_Act_Date_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_SecSales_Act_Date_Details"(
	"SrNo" integer NULL,
	"C_Months" varchar(50) NULL,
	"D_FromDate" timestamp NULL,
	"D_ToDate" timestamp NULL
) 
;
/****** Object:  Table "tbl_sequential_priority_detailingsetup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_sequential_priority_detailingsetup"(
	"id" SERIAL NOT NULL,
	"c_type" varchar(500) NULL,
	"c_code" varchar(150) NULL,
	"c_priority" text NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
 CONSTRAINT "PK_tbl_sequential_priority_detailingsetup" PRIMARY KEY  
(
	"id" 
) 
) 
;
/****** Object:  Table "Tbl_Setting"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Setting"(
	"N_Type" integer NULL,
	"C_Code" char(10) NULL,
	"N_Days" integer NULL,
	"n_leave_days" integer NULL,
	"n_flag" integer NULL
) 
;
/****** Object:  Table "tbl_setup_change_request"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_setup_change_request"(
	"c_field_name" varchar(50) NULL,
	"n_edit_flag" integer NULL
) 
;
/****** Object:  Table "TBL_SFA_ANDROID_LOGINDETAILS"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "TBL_SFA_ANDROID_LOGINDETAILS"(
	"C_USERID" varchar(100) NULL,
	"C_EMPCODE" varchar(100) NULL,
	"D_DATE" varchar(500) NULL
) 
;
/****** Object:  Table "tbl_sfa_depo_item_mapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_sfa_depo_item_mapping"(
	"n_srno" integer NOT NULL,
	"c_depo_code" varchar(50) NULL,
	"c_depo_itemcode" varchar(50) NULL,
	"c_depo_itemname" varchar(100) NULL,
	"c_sfa_itemcode" varchar(50) NULL,
	"c_sfa_itemname" varchar(100) NULL,
	"c_refcode" varchar(100) NULL,
	"C_unitPack" varchar(100) NULL,
	"n_qty" integer NULL,
	"n_freeissues" integer NULL,
	"n_rate" numeric(18, 2) NULL,
	"n_value" numeric(18, 2) NULL,
	"n_discount" numeric(18, 2) NULL,
	"n_uploadedsrno" integer NULL,
	"c_prefix" varchar(10) NULL,
	"n_stksrno" integer NULL,
	"d_exceldate" timestamp NULL,
	"n_rowid" integer NULL,
	"c_depo_stockistcode" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_sfa_depo_item_mapping_header"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_sfa_depo_item_mapping_header"(
	"N_srno" SERIAL NOT NULL,
	"c_depocode" varchar(50) NULL,
	"D_UploadDate" timestamp NULL,
	"C_UploadedBy" varchar(50) NULL,
	"N_Approved" integer NULL,
	"n_stksrno" integer NULL
) 
;
/****** Object:  Table "tbl_sfa_depo_stockist_mapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_sfa_depo_stockist_mapping"(
	"n_srno" integer NOT NULL,
	"c_depo_code" varchar(50) NULL,
	"c_depo_stockistcode" varchar(50) NULL,
	"c_depo_stockistname" varchar(100) NULL,
	"c_sfa_stockistcode" varchar(50) NULL,
	"c_sfa_stockistname" varchar(100) NULL,
	"n_uploadedsrno" integer NULL,
	"c_prefix" varchar(10) NULL,
	"n_itmsrno" integer NULL,
	"n_rowid" integer NULL
) 
;
/****** Object:  Table "tbl_sfa_depo_stockist_mapping_header"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_sfa_depo_stockist_mapping_header"(
	"N_srno" SERIAL NOT NULL,
	"c_depocode" varchar(50) NULL,
	"D_UploadDate" timestamp NULL,
	"C_UploadedBy" varchar(50) NULL,
	"N_Approved" integer NULL,
	"n_itmsrno" integer NULL
) 
;
/****** Object:  Table "tbl_SFA_IOS_ERRORLOG"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_SFA_IOS_ERRORLOG"(
	"N_SRNO" SERIAL NOT NULL,
	"C_INDEXNO" varchar(50) NULL,
	"C_FSCODE" varchar(20) NULL,
	"C_ERROR_MESSAGE" varchar(500) NULL,
	"C_DATA" varchar(1000) NULL,
	"D_DATE" timestamp NULL
) 
;
/****** Object:  Table "tbl_sfa_menu_items"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_sfa_menu_items"(
	"itemid" integer NOT NULL,
	"menuid" integer NULL,
	text varchar(100) NULL,
	"url" varchar(255) NULL,
	"showmenu" varchar(50) NULL,
	bytea varchar(200) NULL,
	"overimage" varchar(200) NULL,
	"flag" integer NULL,
	"n_visible" integer NULL,
	"N_Autocode_Flag" integer NULL,
	"SFARole" varchar(5) NOT NULL,
	"n_rights_flag" integer NOT NULL,
	"projectid" integer NULL,
	"c_Disply_Header" varchar(200) NULL,
	"n_Disply_Header_flag" boolean NULL,
	"n_shift" integer NULL,
	"n_menu_refid" integer NULL,
	"n_CommonMenus" integer NOT NULL,
	"n_user_type" integer NULL,
	"n_mapped_itm" integer NULL,
	"n_refid" integer NULL,
	"n_menu_sort" integer NULL
) 
;
/****** Object:  Table "tbl_Sfa_Stk_item_Mapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Sfa_Stk_item_Mapping"(
	"c_stk_code" varchar(10) NULL,
	"c_sfa_item_code" varchar(50) NULL,
	"c_stk_item_code" varchar(50) NULL,
	"c_pack" varchar(50) NULL,
	"n_rate" numeric(9, 2) NULL
) 
;
/****** Object:  Table "tbl_sfa_Stockist_Chemist_mapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_sfa_Stockist_Chemist_mapping"(
	"n_srno" integer NOT NULL,
	"c_Stockist_code" varchar(50) NULL,
	"c_Stockist_Chemistcode" varchar(50) NULL,
	"c_Stockist_Chemistname" varchar(100) NULL,
	"c_sfa_Chemistcode" varchar(50) NULL,
	"c_sfa_Chemistname" varchar(100) NULL,
	"c_pincode" varchar(100) NULL,
	"n_itmsrno" integer NULL,
	"n_rowid" integer NULL
) 
;
/****** Object:  Table "tbl_sfa_Stockist_Chemist_mapping_header"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_sfa_Stockist_Chemist_mapping_header"(
	"N_srno" SERIAL NOT NULL,
	"c_Stockistcode" varchar(50) NULL,
	"D_UploadDate" timestamp NULL,
	"C_UploadedBy" varchar(50) NULL,
	"N_Approved" integer NULL,
	"n_itmsrno" integer NULL,
	"D_ApprovedDate" timestamp NULL
) 
;
/****** Object:  Table "tbl_sfa_stockist_item_mapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_sfa_stockist_item_mapping"(
	"n_srno" integer NOT NULL,
	"c_stockist_code" varchar(50) NULL,
	"c_stockist_itemcode" varchar(50) NULL,
	"c_stockist_itemname" varchar(100) NULL,
	"c_sfa_itemcode" varchar(50) NULL,
	"c_sfa_itemname" varchar(100) NULL,
	"n_qty" integer NULL,
	"n_chmsrno" integer NULL,
	"n_rowid" integer NULL,
	"c_stockist_chemistcode" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_sfa_stockist_item_mapping_header"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_sfa_stockist_item_mapping_header"(
	"N_srno" SERIAL NOT NULL,
	"c_stockist" varchar(50) NULL,
	"D_UploadDate" timestamp NULL,
	"C_UploadedBy" varchar(50) NULL,
	"N_Approved" integer NULL,
	"n_chmsrno" integer NULL,
	"D_ApprovedDate" timestamp NULL
) 
;
/****** Object:  Table "Tbl_SFA_Table_List_Integration"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_SFA_Table_List_Integration"(
	"n_table_id" numeric(3, 0) NULL,
	"c_name" varchar(50) NULL,
	"n_flag" numeric(18, 0) NULL,
	"n_in_out_flag" integer NULL,
	"d_last_sync_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_SFA_userrights"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_SFA_userrights"(
	"n_itemid" integer NULL,
	"c_userid" varchar(50) NULL,
	"n_user_type" integer NULL
) 
;
/****** Object:  Table "tbl_SFA_userrights_04032016"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_SFA_userrights_04032016"(
	"n_itemid" integer NULL,
	"c_userid" varchar(50) NULL,
	"n_user_type" integer NULL
) 
;
/****** Object:  Table "tbl_sfachmist_stkchmist_mapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_sfachmist_stkchmist_mapping"(
	"c_stk_code" varchar(50) NULL,
	"c_sfa_chem_code" varchar(50) NULL,
	"c_stk_chem_code" varchar(10) NULL,
	"d_date_created" timestamp NULL
) 
;
/****** Object:  Table "tbl_sfc_request"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_sfc_request"(
	"N_Srno" SERIAL NOT NULL,
	"N_General_Setup_ID" numeric(18, 0) NULL,
	"D_Request_Date" timestamp NULL,
	"C_FS_Code" varchar(20) NULL,
	"C_EMP_Code" varchar(20) NULL,
	"D_Eff_From_Date" timestamp NULL,
	"D_Eff_To_Date" timestamp NULL,
	"C_Based_At" varchar(20) NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"N_Rateperkm" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"N_Monthly_EXP" numeric(18, 2) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_Status" integer NULL,
	"N_Last_Activity_Done_By" varchar(20) NULL,
	"N_Last_Activity_Done_By_Type" integer NULL,
	"C_Last_Activity_Remarks" varchar(1000) NULL,
	"N_Deleted" integer NULL,
	"C_Deleted_By" varchar(20) NULL,
	"D_Deleted_On" timestamp NULL,
	"C_Created_By" varchar(20) NULL,
	"D_Created_On" timestamp NULL,
	"C_Modified_By" varchar(20) NULL,
	"D_Modified_On" timestamp NULL
) 
;
/****** Object:  Table "tbl_sfc_request_approval_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_sfc_request_approval_det"(
	"N_ID" SERIAL NOT NULL,
	"N_SFC_Request_ID" numeric(18, 0) NULL,
	"N_General_Setup_ID" numeric(18, 0) NULL,
	"C_FS_Code" varchar(20) NULL,
	"C_EMP_Code" varchar(20) NULL,
	"D_Approved_On" timestamp NULL,
	"N_Status" integer NULL,
	"C_Remarks" varchar(1000) NULL,
	"C_Created_By" varchar(20) NULL,
	"D_Created_On" timestamp NULL,
	"C_Modified_By" varchar(20) NULL,
	"D_Modified_On" timestamp NULL
) 
;
/****** Object:  Table "tbl_sfc_request_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_sfc_request_det"(
	"N_ID" SERIAL NOT NULL,
	"N_SFC_Request_ID" numeric(18, 0) NULL,
	"N_General_Combination_ID" numeric(18, 0) NULL,
	"N_RowID" integer NULL,
	"N_Area_Type" integer NULL,
	"C_Subarea_code_From" varchar(20) NULL,
	"C_Subarea_Code_To" varchar(20) NULL,
	"N_Wkg_Days" integer NULL,
	"N_TA" numeric(7, 2) NULL,
	"N_Doc_Visit" integer NULL,
	"N_Chem_Visit" integer NULL,
	"N_Stk_Visit" integer NULL,
	"N_Cur_Business" numeric(19, 2) NULL,
	"N_Exp_Business" numeric(19, 2) NULL,
	"N_Distance" integer NULL,
	"N_Master_Distance" integer NULL,
	"C_Map_Link" text NULL,
	"C_Image_Name" varchar(1000) NULL,
	"C_Image_URL" varchar(1000) NULL,
	"N_Deleted" integer NULL,
	"C_Deleted_By" varchar(20) NULL,
	"D_Deleted_On" timestamp NULL,
	"C_Created_By" varchar(20) NULL,
	"D_Created_On" timestamp NULL,
	"C_Modified_By" varchar(20) NULL,
	"D_Modified_On" timestamp NULL
) 
;
/****** Object:  Table "tbl_sfc_request_det_modification"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_sfc_request_det_modification"(
	"N_ID" SERIAL NOT NULL,
	"N_SFC_Request_Det_ID" numeric(18, 0) NULL,
	"N_General_Combination_ID" numeric(18, 0) NULL,
	"N_Area_Type" integer NULL,
	"C_Subarea_code_From" varchar(20) NULL,
	"C_Subarea_Code_To" varchar(20) NULL,
	"N_Wkg_Days" integer NULL,
	"N_TA" numeric(7, 2) NULL,
	"N_Doc_Visit" integer NULL,
	"N_Chem_Visit" integer NULL,
	"N_Stk_Visit" integer NULL,
	"N_Cur_Business" numeric(19, 2) NULL,
	"N_Exp_Business" numeric(19, 2) NULL,
	"N_Distance" integer NULL,
	"C_Map_Link" text NULL,
	"C_Image_Name" varchar(1000) NULL,
	"C_Image_URL" varchar(1000) NULL,
	"N_Deleted" integer NULL,
	"C_Deleted_By" varchar(20) NULL,
	"D_Deleted_On" timestamp NULL,
	"N_Status" integer NULL,
	"C_Updated_By" varchar(20) NULL,
	"D_Updated_On" timestamp NULL,
	"C_Created_By" varchar(20) NULL,
	"D_Created_On" timestamp NULL,
	"C_Modified_By" varchar(20) NULL,
	"D_Modified_On" timestamp NULL
) 
;
/****** Object:  Table "tbl_sfc_request_Exp"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_sfc_request_Exp"(
	"N_ID" SERIAL NOT NULL,
	"N_SFC_Request_ID" numeric(18, 0) NULL,
	"C_Expence_Code" varchar(20) NULL,
	"N_Amount" numeric(7, 2) NULL,
	"C_Created_By" varchar(20) NULL,
	"D_Created_On" timestamp NULL,
	"C_Modified_By" varchar(20) NULL,
	"D_Modified_On" timestamp NULL
) 
;
/****** Object:  Table "Tbl_SFC_Subarea_Combinations_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_SFC_Subarea_Combinations_Mst"(
	"N_ID" SERIAL NOT NULL,
	"C_Subarea_Code_From" varchar(50) NULL,
	"C_Subarea_Code_To" char(10) NULL,
	"N_Distance" double precision NULL,
	"N_Area_Type" integer NULL,
	"C_Map_Link" text NULL,
	"C_Image_Name" varchar(1000) NULL,
	"C_Image_URL" varchar(1000) NULL,
	"N_Status" integer NULL,
	"C_CreatedBy" varchar(50) NULL,
	"D_CreatedOn" timestamp NULL,
	"C_ModifiedBy" varchar(50) NULL,
	"D_ModifiedOn" timestamp NULL,
	"C_Area" text NULL,
	"C_Region" text NULL,
 CONSTRAINT "PK_Tbl_SFC_Subarea_Combinations_Mst" PRIMARY KEY  
(
	"N_ID" 
) 
) 
;
/****** Object:  Table "tbl_SingleSignOn_Parameter"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_SingleSignOn_Parameter"(
	"c_name" varchar(50) NULL,
	"n_value" integer NULL
) 
;
/****** Object:  Table "tbl_SKUType"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_SKUType"(
	"n_type" integer NULL,
	"c_name" varchar(100) NULL,
	"c_display_caption" varchar(100) NULL,
	"c_display_tooltip" varchar(100) NULL,
	"c_mpping_columnname" varchar(50) NULL,
	"n_psg_type" integer NULL
) 
;
/****** Object:  Table "tbl_SMS_Email_exec_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_SMS_Email_exec_log"(
	"n_srno" SERIAL NOT NULL,
	"n_sms_srno" integer NULL,
	"n_email_flag" integer NULL,
	"n_sms_flag" integer NULL,
	"d_lastdate" timestamp NULL,
PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_sp_columns_data"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_sp_columns_data"(
	"n_id" SERIAL NOT NULL,
	"c_column_type" varchar(100) NULL,
	"d_created_date" timestamp NULL,
	"c_key" varchar(20) NULL,
	"n_key_val" integer NULL,
	"n_deleted" integer NULL,
	"n_priority" integer NULL,
	"c_report_type" varchar(20) NULL,
PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "tbl_sp_columns_selection_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_sp_columns_selection_log"(
	"n_srno" SERIAL NOT NULL,
	"c_fscode" varchar(100) NULL,
	"c_column_type" varchar(100) NULL,
	"d_created_date" timestamp NULL,
	"c_selection" varchar(10) NULL,
	"c_column_id" varchar(10) NULL,
	"c_key" varchar(20) NULL,
PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_sp_piriod"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_sp_piriod"(
	"n_id" SERIAL NOT NULL,
	"c_month" varchar(20) NULL,
	"c_year" integer NULL,
	"n_month" integer NULL,
	"n_selection" integer NULL,
PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "Tbl_Speciality_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Speciality_mst"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"C_Sh_Name" varchar(7) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"c_qualification" varchar(100) NULL,
 CONSTRAINT "PK_Tbl_Speciality_mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "tbl_speciality_qualifications"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_speciality_qualifications"(
	"c_speciality_code" varchar(100) NULL,
	"c_qualification" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_SSales_multiple_approval_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_SSales_multiple_approval_log"(
	"n_srno" integer NOT NULL,
	"C_FsCode" varchar(50) NULL,
	"c_approvedby" varchar(50) NULL,
	"d_dateApproved" timestamp NULL
) 
;
/****** Object:  Table "tbl_SSales_multiple_approval_log_Bck"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_SSales_multiple_approval_log_Bck"(
	"n_srno" integer NOT NULL,
	"c_fscode" varchar(50) NULL,
	"c_approvedby" varchar(50) NULL,
	"d_approveddate" timestamp NULL,
	"d_deleted" timestamp NULL
) 
;
/****** Object:  Table "tbl_sse_setup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_sse_setup"(
	"n_returns" integer NULL,
	"n_receipt" integer NULL,
	"n_transit" integer NULL,
	"d_datemodified" timestamp NULL,
	"c_modifiedby" varchar(10) NULL,
	"n_ngt_closing" integer NULL,
	"n_transitmonths" integer NULL,
	"n_sales_closing" integer NULL,
	"n_closing" integer NULL,
	"n_editbypoolfs" integer NULL,
	"n_approvalreq" integer NULL,
	"n_prisalesimport" integer NULL,
	"n_defaultQtyZero" integer NULL,
	"n_returnCfaRss" integer NULL,
	"n_SCh_Cls_Open" integer NULL,
	"n_SASCollection" integer NULL,
	"n_Openings" integer NULL,
	"n_Recpt" integer NULL,
	"n_Return" integer NULL,
	"n_sals_dta_entry" integer NULL,
	"n_editable" integer NULL,
	"n_sls_enty_closday" varchar(2) NULL,
	"n_sales_sch" integer NULL,
	"n_nonoperatingstk" integer NOT NULL,
	"n_openqty_with_transit" integer NOT NULL
) 
;
/****** Object:  Table "tbl_sse_setup_heirarchyDetails"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_sse_setup_heirarchyDetails"(
	"n_heirtype" integer NULL
) 
;
/****** Object:  Table "tbl_state_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_state_mst"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
 CONSTRAINT "PK_tbl_state_mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "tbl_stk_beat_map"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_stk_beat_map"(
	"c_subarea_code" varchar(10) NOT NULL,
	"c_stockist_code" varchar(10) NOT NULL,
	"c_area_code" varchar(50) NULL,
	"d_date_from" timestamp NOT NULL,
	"d_date_to" timestamp NULL,
 CONSTRAINT "PK_tbl_stk_beat_map" PRIMARY KEY  
(
	"c_subarea_code" ,
	"c_stockist_code" ,
	"d_date_from" 
) 
) 
;
/****** Object:  Table "Tbl_Stk_Item_Order"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Stk_Item_Order"(
	"C_Stockist_Code" varchar(10) NOT NULL,
	"C_Item_Code" varchar(50) NOT NULL,
	"N_Order" numeric(9, 0) NULL,
 CONSTRAINT "PK_Tbl_Stk_Item_Order" PRIMARY KEY  
(
	"C_Stockist_Code" ,
	"C_Item_Code" 
) 
) 
;
/****** Object:  Table "tbl_stk_Mapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_stk_Mapping"(
	"c_SFA_stk_Code" varchar(10) NULL,
	"c_Map_stk_Code" varchar(20) NULL,
	"LastUpdate" timestamp NULL
) 
;
/****** Object:  Table "tbl_Stockist_xl_column_mapping_details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Stockist_xl_column_mapping_details"(
	"n_rowid" integer NULL,
	"n_srno" integer NOT NULL,
	"c_sfa_Columns" varchar(100) NULL,
	"c_xl_columns" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_Stockist_xl_column_mapping_header"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Stockist_xl_column_mapping_header"(
	"n_srno" integer NOT NULL,
	"c_name" varchar(100) NULL,
	"d_date" timestamp NULL,
	"c_uploadedby" varchar(50) NULL,
	"c_stockistcode" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_Stockist_xl_columns_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Stockist_xl_columns_mst"(
	"c_Stockist_columnname" varchar(200) NULL,
	"d_Createddate" timestamp NULL,
	"d_modifieddate" timestamp NULL,
	"c_createdby" varchar(100) NULL,
	"n_deleted" integer NULL,
	"n_status" integer NULL
) 
;
/****** Object:  Table "Tbl_StockNSales_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_StockNSales_Details"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_Stockist_Code" char(10) NOT NULL,
	"N_Month" integer NOT NULL,
	"N_Year" integer NOT NULL,
	"C_Item_Code" char(10) NOT NULL,
	"N_Sales_Qty" numeric(18, 2) NULL,
	"N_Scheme_Qty" numeric(18, 2) NULL,
	"N_Sales_Value" numeric(18, 2) NULL,
	"N_Receipt_Qty" numeric(18, 2) NULL,
	"N_Receipt_Scheme" numeric(18, 2) NULL,
	"N_Receipt_Value" numeric(18, 2) NULL,
	"N_Closing_Qty" numeric(18, 2) NULL,
	"N_Closing_Value" numeric(18, 2) NULL,
	"N_Other_Qty" numeric(18, 2) NULL,
	"N_SalesRtn_qty" numeric(18, 2) NULL,
	"N_SalesRtn_Scheme" numeric(18, 2) NULL,
	"N_transit_Qty" numeric(18, 2) NULL,
	"C_Note" varchar(1000) NULL,
	"C_Created_By" char(10) NULL,
	"N_Closing_Scheme" numeric(18, 2) NULL,
	"N_Other_Scheme" numeric(18, 2) NULL,
	"n_other_value" numeric(18, 2) NULL,
	"n_item_rate" numeric(19, 2) NULL,
	"N_retCfa_Qty" numeric(18, 2) NULL,
	"N_retCfa_Scheme" numeric(18, 2) NULL,
	"N_retCfa_value" numeric(18, 2) NULL,
	"N_Opening_Sch_Qty" numeric(18, 2) NULL,
	"N_Closing_Sch_Qty" numeric(18, 2) NULL
) 
;
/****** Object:  Table "Tbl_StockNSales_Details_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_StockNSales_Details_log"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_Stockist_Code" varchar(10) NOT NULL,
	"N_Month" integer NOT NULL,
	"N_Year" integer NOT NULL,
	"C_Item_Code" varchar(10) NOT NULL,
	"N_Sales_Qty" numeric(18, 2) NULL,
	"N_Scheme_Qty" numeric(18, 2) NULL,
	"N_Sales_Value" numeric(18, 2) NULL,
	"N_Receipt_Qty" numeric(18, 2) NULL,
	"N_Receipt_Scheme" numeric(18, 2) NULL,
	"N_Receipt_Value" numeric(18, 2) NULL,
	"N_Closing_Qty" numeric(18, 2) NULL,
	"N_Closing_Value" numeric(18, 2) NULL,
	"N_Other_Qty" numeric(18, 2) NULL,
	"N_SalesRtn_qty" numeric(18, 2) NULL,
	"N_SalesRtn_Scheme" numeric(18, 2) NULL,
	"N_transit_Qty" numeric(18, 2) NULL,
	"C_Note" varchar(1000) NULL,
	"C_Created_By" varchar(10) NULL,
	"N_Closing_Scheme" numeric(18, 2) NULL,
	"N_Other_Scheme" numeric(18, 2) NULL,
	"n_other_value" numeric(18, 2) NULL,
	"n_item_rate" numeric(19, 2) NULL,
	"C_Action" varchar(100) NULL
) 
;
/****** Object:  Table "Tbl_StockNSales_Details_temp"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_StockNSales_Details_temp"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_Item_Code" char(10) NOT NULL,
	"N_Sales_Qty" numeric(18, 2) NULL,
	"N_Scheme_Qty" numeric(18, 2) NULL,
	"N_Sales_Value" numeric(18, 2) NULL,
	"N_Receipt_Qty" numeric(18, 2) NULL,
	"N_Receipt_Scheme" numeric(18, 2) NULL,
	"N_Receipt_Value" numeric(18, 2) NULL,
	"N_Closing_Qty" numeric(18, 2) NULL,
	"N_Closing_Value" numeric(18, 2) NULL,
	"N_Other_Qty" numeric(18, 2) NULL,
	"N_SalesRtn_qty" numeric(18, 2) NULL,
	"N_SalesRtn_Scheme" numeric(18, 2) NULL,
	"N_transit_Qty" numeric(18, 2) NULL,
	"C_Note" varchar(1000) NULL,
	"C_Created_By" char(10) NULL,
	"N_Closing_Scheme" numeric(18, 2) NULL,
	"N_Other_Scheme" numeric(18, 2) NULL,
	"n_other_value" numeric(18, 2) NULL,
	"n_item_rate" numeric(18, 2) NULL
) 
;
/****** Object:  Table "tbl_stocknsales_docs"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_stocknsales_docs"(
	"n_srno" numeric(18, 0) NULL,
	"c_fscode" varchar(50) NULL,
	"c_filename" varchar(150) NULL,
	"c_stockiestcode" varchar(50) NULL,
	"n_deleted" integer NULL,
	"c_docpath" text NULL
) 
;
/****** Object:  Table "tbl_stocknsales_header"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_stocknsales_header"(
	"n_srno" numeric(18, 0) NOT NULL,
	"c_stockist_code" varchar(10) NOT NULL,
	"n_month" integer NOT NULL,
	"n_year" integer NOT NULL,
	"n_tot_sales_value" numeric(19, 2) NULL,
	"n_tot_scheme_value" numeric(19, 2) NULL,
	"n_tot_receipt_value" numeric(19, 2) NULL,
	"n_tot_receipt_scheme_value" numeric(19, 2) NULL,
	"n_tot_closing_value" numeric(19, 2) NULL,
	"n_tot_other_value" numeric(19, 2) NULL,
	"n_tot_other_scheme_value" numeric(19, 2) NULL,
	"n_tot_transit_value" numeric(19, 2) NULL,
	"d_created_date" timestamp NULL,
	"c_note" varchar(500) NULL,
	"c_enteredby" varchar(15) NULL,
	"n_other_value" numeric(18, 2) NULL,
	"n_item_rate" numeric(18, 2) NULL,
	"n_status" integer NULL,
	"n_tot_retCfa_value" numeric(19, 2) NULL,
	"n_tot_retCfa_scheme_values" numeric(19, 2) NULL,
	"n_Sch_Opn_cls" integer NULL,
	"n_nonoperating_stckst" integer NULL,
 CONSTRAINT "PK_tbl_stocknsales_header" PRIMARY KEY  
(
	"n_srno" ,
	"c_stockist_code" ,
	"n_month" ,
	"n_year" 
) 
) 
;
/****** Object:  Table "tbl_stocknsales_header_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_stocknsales_header_log"(
	"n_srno" numeric(18, 0) NOT NULL,
	"c_stockist_code" varchar(10) NOT NULL,
	"n_month" integer NOT NULL,
	"n_year" integer NOT NULL,
	"n_tot_sales_value" numeric(19, 2) NULL,
	"n_tot_scheme_value" numeric(19, 2) NULL,
	"n_tot_receipt_value" numeric(19, 2) NULL,
	"n_tot_receipt_scheme_value" numeric(19, 2) NULL,
	"n_tot_closing_value" numeric(19, 2) NULL,
	"n_tot_other_value" numeric(19, 2) NULL,
	"n_tot_other_scheme_value" numeric(19, 2) NULL,
	"n_tot_transit_value" numeric(19, 2) NULL,
	"d_created_date" timestamp NULL,
	"c_note" varchar(500) NULL,
	"c_enteredby" varchar(15) NULL,
	"n_other_value" numeric(18, 2) NULL,
	"n_item_rate" numeric(18, 2) NULL,
	"C_Action" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_stocknsales_Notes"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_stocknsales_Notes"(
	"n_srno" numeric(18, 0) NULL,
	"c_fscode" varchar(10) NULL,
	"c_note" varchar(500) NULL
) 
;
/****** Object:  Table "Tbl_Store_Type_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Store_Type_Mst"(
	"C_Code" varchar(20) NOT NULL,
	"C_Name" varchar(20) NOT NULL,
	"n_deleted" integer NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
 CONSTRAINT "PK_Tbl_Store_Type_Mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "tbl_Storia_retailer_loginlogoutdet"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Storia_retailer_loginlogoutdet"(
	"n_id" SERIAL NOT NULL,
	"c_fsCode" varchar(50) NULL,
	"c_dsc_code" varchar(50) NULL,
	"c_stk_code" varchar(50) NULL,
	"d_logindate" timestamp NULL,
	"d_logoutdate" timestamp NULL,
	"c_latitude" varchar(100) NULL,
	"c_longitude" varchar(100) NULL,
	"n_geomatch" smallint NULL
) 
;
/****** Object:  Table "tbl_stp"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_stp"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"d_modified" timestamp NULL,
	"N_DA_OTHER" numeric(18, 2) NULL,
	"n_tempsrno" integer NULL,
	"C_Approved" char(1) NULL,
	"C_Approved_By" varchar(50) NULL,
	"D_Approved_Date" timestamp NULL,
	"C_Reason" varchar(500) NULL,
	"C_Region_Code" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_stp_05072021"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_stp_05072021"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"d_modified" timestamp NULL,
	"N_DA_OTHER" numeric(18, 2) NULL,
	"n_tempsrno" integer NULL,
	"C_Approved" char(1) NULL,
	"C_Approved_By" varchar(50) NULL,
	"D_Approved_Date" timestamp NULL,
	"C_Reason" varchar(500) NULL
) 
;
/****** Object:  Table "tbl_stp_10052022"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_stp_10052022"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"d_modified" timestamp NULL,
	"N_DA_OTHER" numeric(18, 2) NULL,
	"n_tempsrno" integer NULL,
	"C_Approved" char(1) NULL,
	"C_Approved_By" varchar(50) NULL,
	"D_Approved_Date" timestamp NULL,
	"C_Reason" varchar(500) NULL
) 
;
/****** Object:  Table "tbl_stp_20122021"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_stp_20122021"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"d_modified" timestamp NULL,
	"N_DA_OTHER" numeric(18, 2) NULL,
	"n_tempsrno" integer NULL,
	"C_Approved" char(1) NULL,
	"C_Approved_By" varchar(50) NULL,
	"D_Approved_Date" timestamp NULL,
	"C_Reason" varchar(500) NULL
) 
;
/****** Object:  Table "tbl_stp_29062021"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_stp_29062021"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"d_modified" timestamp NULL,
	"N_DA_OTHER" numeric(18, 2) NULL,
	"n_tempsrno" integer NULL,
	"C_Approved" char(1) NULL,
	"C_Approved_By" varchar(50) NULL,
	"D_Approved_Date" timestamp NULL,
	"C_Reason" varchar(500) NULL
) 
;
/****** Object:  Table "tbl_Stp_AppSetup_DivRegMapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Stp_AppSetup_DivRegMapping"(
	"n_SetupId" bigint NULL,
	"c_RegionCode" varchar(50) NULL,
	"c_divcode" varchar(50) NULL
) 
;
/****** Object:  Table "Tbl_STP_Auto"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_STP_Auto"(
	"N_Srno" SERIAL NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"n_monthly_exp" numeric(18, 2) NULL,
	"N_DA_Other" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"c_ApprovedBy" varchar(50) NULL,
	"d_ApprovedDate" timestamp NULL,
	"c_ApprovelNote" varchar(200) NULL,
	"c_confirmedby" varchar(10) NULL,
	"d_confirmed_date" timestamp NULL,
	"c_confirmnote" varchar(200) NULL,
	"n_Status" integer NULL,
	"n_Deleted" integer NULL,
	"d_modified" timestamp NULL,
	"n_setup_id" integer NULL,
	"n_stp_setup_id" integer NULL
) 
;
/****** Object:  Table "Tbl_STP_Auto_Approval_Det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_STP_Auto_Approval_Det"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"c_ApprovedBy" varchar(50) NULL,
	"d_created_date" timestamp NULL
) 
;
/****** Object:  Table "Tbl_STP_Auto_Approval_Det_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_STP_Auto_Approval_Det_log"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"c_ApprovedBy" varchar(50) NULL,
	"d_created_date" timestamp NULL,
	"n_rowid" integer NULL
) 
;
/****** Object:  Table "Tbl_STP_Auto_Confirmation_Det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_STP_Auto_Confirmation_Det"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"c_ConfirmedBy" varchar(50) NULL,
	"d_created_date" timestamp NULL,
	"n_rowid" integer NULL
) 
;
/****** Object:  Table "Tbl_STP_Det_Temp_Upload"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_STP_Det_Temp_Upload"(
	"n_Srno" numeric(18, 0) NOT NULL,
	"c_Subarea" varchar(50) NULL,
	"c_AreaToVisit" varchar(50) NULL,
	"c_Type" varchar(5) NULL,
	"n_wkg_days" integer NULL,
	"n_Distance" numeric(10, 2) NULL,
	"n_Ta" numeric(19, 2) NULL,
	"d_date" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_stp_details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_stp_details"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" integer NULL,
	"N_Distance" numeric(10, 2) NULL,
	"N_Ta" numeric(19, 2) NULL,
	"n_Cur_Business" numeric(19, 2) NULL,
	"n_Exp_Business" numeric(19, 2) NULL,
	"N_Doc_Visit_A" integer NULL,
	"N_Doc_Visit_B" integer NULL,
	"C_Area_From" char(10) NULL,
	"N_Chem_Visit" integer NULL,
	"N_Stk_Visit" integer NULL,
	"C_Subarea_code_From" varchar(10) NOT NULL,
	"C_Subarea_code_to" varchar(10) NOT NULL,
	"n_wkg_days" integer NULL,
	"N_Transit_Days" integer NULL,
	"N_MMIDistance" numeric(10, 2) NULL,
	"c_MMIMapLink" varchar(5000) NULL,
	"n_mode_of_travel" integer NULL,
	"C_Mode_of_Travel" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_stp_details_05072021"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_stp_details_05072021"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" integer NULL,
	"N_Distance" numeric(10, 2) NULL,
	"N_Ta" numeric(19, 2) NULL,
	"n_Cur_Business" numeric(19, 2) NULL,
	"n_Exp_Business" numeric(19, 2) NULL,
	"N_Doc_Visit_A" integer NULL,
	"N_Doc_Visit_B" integer NULL,
	"C_Area_From" char(10) NULL,
	"N_Chem_Visit" integer NULL,
	"N_Stk_Visit" integer NULL,
	"C_Subarea_code_From" varchar(10) NOT NULL,
	"C_Subarea_code_to" varchar(10) NOT NULL,
	"n_wkg_days" integer NULL,
	"N_Transit_Days" integer NULL,
	"N_MMIDistance" numeric(10, 2) NULL,
	"c_MMIMapLink" varchar(5000) NULL,
	"n_mode_of_travel" integer NULL,
	"C_Mode_of_Travel" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_stp_details_20122021"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_stp_details_20122021"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" integer NULL,
	"N_Distance" numeric(10, 2) NULL,
	"N_Ta" numeric(19, 2) NULL,
	"n_Cur_Business" numeric(19, 2) NULL,
	"n_Exp_Business" numeric(19, 2) NULL,
	"N_Doc_Visit_A" integer NULL,
	"N_Doc_Visit_B" integer NULL,
	"C_Area_From" char(10) NULL,
	"N_Chem_Visit" integer NULL,
	"N_Stk_Visit" integer NULL,
	"C_Subarea_code_From" varchar(10) NOT NULL,
	"C_Subarea_code_to" varchar(10) NOT NULL,
	"n_wkg_days" integer NULL,
	"N_Transit_Days" integer NULL,
	"N_MMIDistance" numeric(10, 2) NULL,
	"c_MMIMapLink" varchar(5000) NULL,
	"n_mode_of_travel" integer NULL,
	"C_Mode_of_Travel" varchar(50) NULL
) 
;
/****** Object:  Table "Tbl_STP_Details_Auto"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_STP_Details_Auto"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" integer NULL,
	"N_Distance" numeric(10, 2) NULL,
	"N_Ta" numeric(19, 2) NULL,
	"n_Cur_Business" numeric(19, 2) NULL,
	"n_Exp_Business" numeric(19, 2) NULL,
	"N_Doc_Visit_A" integer NULL,
	"N_Doc_Visit_B" integer NULL,
	"C_Area_From" char(10) NULL,
	"N_Chem_Visit" integer NULL,
	"N_Stk_Visit" integer NULL,
	"C_Subarea_code_From" varchar(10) NOT NULL,
	"C_Subarea_code_to" varchar(10) NOT NULL,
	"n_wkg_days" integer NULL,
	"N_Transit_Days" integer NULL,
	"N_MMIDistance" numeric(10, 2) NULL,
	"c_MMIMapLink" varchar(5000) NULL,
	"n_delete_subarea" integer NULL,
	"n_Confirmed" integer NULL,
	"d_confirmed" timestamp NULL,
	"n_mode_of_travel" integer NULL,
	"n_delete" integer NULL
) 
;
/****** Object:  Table "Tbl_STP_Details28june2021"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_STP_Details28june2021"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" integer NULL,
	"N_Distance" numeric(10, 2) NULL,
	"N_Ta" numeric(19, 2) NULL,
	"n_Cur_Business" numeric(19, 2) NULL,
	"n_Exp_Business" numeric(19, 2) NULL,
	"N_Doc_Visit_A" integer NULL,
	"N_Doc_Visit_B" integer NULL,
	"C_Area_From" char(10) NULL,
	"N_Chem_Visit" integer NULL,
	"N_Stk_Visit" integer NULL,
	"C_Subarea_code_From" varchar(10) NOT NULL,
	"C_Subarea_code_to" varchar(10) NOT NULL,
	"n_wkg_days" integer NULL,
	"N_Transit_Days" integer NULL,
	"N_MMIDistance" numeric(10, 2) NULL,
	"c_MMIMapLink" varchar(5000) NULL,
	"n_mode_of_travel" integer NULL,
	"C_Mode_of_Travel" varchar(50) NULL,
 CONSTRAINT "PK_Tbl_STP_Details" PRIMARY KEY  
(
	"N_Srno" ,
	"N_RowID" 
) 
) 
;
/****** Object:  Table "tbl_stp_details29062021"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_stp_details29062021"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" integer NULL,
	"N_Distance" numeric(10, 2) NULL,
	"N_Ta" numeric(19, 2) NULL,
	"n_Cur_Business" numeric(19, 2) NULL,
	"n_Exp_Business" numeric(19, 2) NULL,
	"N_Doc_Visit_A" integer NULL,
	"N_Doc_Visit_B" integer NULL,
	"C_Area_From" char(10) NULL,
	"N_Chem_Visit" integer NULL,
	"N_Stk_Visit" integer NULL,
	"C_Subarea_code_From" varchar(10) NOT NULL,
	"C_Subarea_code_to" varchar(10) NOT NULL,
	"n_wkg_days" integer NULL,
	"N_Transit_Days" integer NULL,
	"N_MMIDistance" numeric(10, 2) NULL,
	"c_MMIMapLink" varchar(5000) NULL,
	"n_mode_of_travel" integer NULL,
	"C_Mode_of_Travel" varchar(50) NULL
) 
;
/****** Object:  Table "Tbl_STP_Exp"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_STP_Exp"(
	"N_Srno" integer NOT NULL,
	"C_Exp_Code" char(10) NOT NULL,
	"N_Amount" numeric(18, 2) NULL,
 CONSTRAINT "PK_Tbl_STP_Exp" PRIMARY KEY  
(
	"N_Srno" ,
	"C_Exp_Code" 
) 
) 
;
/****** Object:  Table "Tbl_STP_link_fs"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_STP_link_fs"(
	"Region Name" varchar(255) NULL,
	"STPNo" varchar(255) NULL,
	"rowid" varchar(255) NULL,
	"Division" varchar(255) NULL,
	"FS CODE" varchar(255) NULL,
	"FS NAME" varchar(255) NULL,
	"HQ CODE" varchar(255) NULL,
	"HQ NAME" varchar(255) NULL,
	"Based At Code" varchar(255) NULL,
	"Based At Name" varchar(255) NULL,
	"STP Date From" timestamp NULL,
	"STP Date To" timestamp NULL,
	"HQDA" varchar(255) NULL,
	"EXDA" varchar(255) NULL,
	"OSDA" varchar(255) NULL,
	"TAType" varchar(255) NULL,
	"RateKM" varchar(255) NULL,
	"From Area Code" varchar(255) NULL,
	"From Area Name" varchar(255) NULL,
	"ToAreaCode" varchar(255) NULL,
	"ToAreaname" varchar(255) NULL,
	"A grade doct count" varchar(255) NULL,
	"B grade doctor count" varchar(255) NULL,
	"chemist count" varchar(255) NULL,
	"stockiest count" varchar(255) NULL,
	"curent business" varchar(255) NULL,
	"expected business" varchar(255) NULL,
	"AreaType" varchar(255) NULL,
	"Distance" varchar(255) NULL,
	"TA" varchar(255) NULL
) 
;
/****** Object:  Table "Tbl_STP_Mkt_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_STP_Mkt_Details"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" integer NULL,
	"N_Distance" numeric(10, 2) NULL,
	"N_Ta" numeric(19, 2) NULL,
	"n_Cur_Business" numeric(19, 2) NULL,
	"n_Exp_Business" numeric(19, 2) NULL,
	"N_Doc_Visit_A" integer NULL,
	"N_Doc_Visit_B" integer NULL,
	"C_Area_From" char(10) NULL,
	"N_Chem_Visit" integer NULL,
	"N_Stk_Visit" integer NULL,
	"C_Subarea_code_From" varchar(10) NOT NULL,
	"C_Subarea_code_to" varchar(10) NOT NULL,
	"n_wkg_days" integer NULL,
	"N_Transit_Days" integer NULL,
	"N_MMIDistance" numeric(10, 2) NULL,
	"c_MMIMapLink" varchar(5000) NULL,
 CONSTRAINT "PK_Tbl_STP_Mkt_Details" PRIMARY KEY  
(
	"N_Srno" ,
	"N_RowID" 
) 
) 
;
/****** Object:  Table "Tbl_STP28june2021"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_STP28june2021"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"d_modified" timestamp NULL,
	"N_DA_OTHER" numeric(18, 2) NULL,
	"n_tempsrno" integer NULL,
	"C_Approved" char(1) NULL,
	"C_Approved_By" varchar(50) NULL,
	"D_Approved_Date" timestamp NULL,
	"C_Reason" varchar(500) NULL,
 CONSTRAINT "PK_Tbl_STP" PRIMARY KEY  
(
	"N_Srno" 
) 
) 
;
/****** Object:  Table "Tbl_STPA_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_STPA_Mst"(
	"N_SrNo" SERIAL NOT NULL,
	"C_From" varchar(20) NULL,
	"C_To" varchar(20) NULL,
	"N_Distance" numeric(18, 2) NULL,
	"N_Visit_Type" integer NULL,
 CONSTRAINT "PK_Tbl_Distance_Mst" PRIMARY KEY  
(
	"N_SrNo" 
) 
) 
;
/****** Object:  Table "tbl_stpbackup2017_21_07"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_stpbackup2017_21_07"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Transit" numeric(19, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"d_modified" timestamp NULL,
	"N_DA_OTHER" numeric(18, 2) NULL
) 
;
/****** Object:  Table "tbl_stpbackupdetails2017_21_07"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_stpbackupdetails2017_21_07"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" integer NULL,
	"N_Distance" numeric(10, 2) NULL,
	"N_Ta" numeric(19, 2) NULL,
	"n_Cur_Business" numeric(19, 2) NULL,
	"n_Exp_Business" numeric(19, 2) NULL,
	"N_Doc_Visit_A" integer NULL,
	"N_Doc_Visit_B" integer NULL,
	"C_Area_From" char(10) NULL,
	"N_Chem_Visit" integer NULL,
	"N_Stk_Visit" integer NULL,
	"C_Subarea_code_From" varchar(10) NOT NULL,
	"C_Subarea_code_to" varchar(10) NOT NULL,
	"n_wkg_days" integer NULL,
	"N_Transit_Days" integer NULL,
	"N_MMIDistance" numeric(10, 2) NULL,
	"c_MMIMapLink" varchar(5000) NULL
) 
;
/****** Object:  Table "tbl_stpmodeoftravel"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_stpmodeoftravel"(
	"n_srno" integer NULL,
	"c_code" varchar(100) NULL,
	"c_name" varchar(100) NULL,
	"n_deleted" integer NULL
) 
;
/****** Object:  Table "Tbl_Sub_Area_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Sub_Area_Mst"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"C_Sh_Name" varchar(7) NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_HQ_Flag" numeric(5, 0) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"n_lami" varchar(100) NULL,
	"n_lgmi" varchar(100) NULL,
	"C_Classification_Code" varchar(20) NULL,
 CONSTRAINT "PK_Tbl_Sub_Area_Mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "Tbl_sub_area_Mst_temp"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_sub_area_Mst_temp"(
	"C_Code" char(6) NULL,
	"C_Name" char(50) NULL,
	"C_Sh_Name" char(20) NULL,
	"C_Area_Code" char(6) NULL,
	"N_HQ_Flag" numeric(1, 0) NULL,
	"n_deleted" numeric(1, 0) NULL,
	"d_created" varchar(30) NULL,
	"d_modified" varchar(30) NULL,
	"c_modifier" char(20) NULL
) 
;
/****** Object:  Table "Tbl_Subarea_Target"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Subarea_Target"(
	"c_subarea_code" varchar(10) NOT NULL,
	"c_item_code" varchar(10) NOT NULL,
	"n_target" numeric(18, 0) NULL,
	"n_month" numeric(18, 0) NOT NULL,
	"n_year" numeric(18, 0) NOT NULL,
 CONSTRAINT "PK_Tbl_Subarea_Target" PRIMARY KEY  
(
	"c_subarea_code" ,
	"c_item_code" ,
	"n_month" ,
	"n_year" 
) 
) 
;
/****** Object:  Table "tbl_Surgery_type_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Surgery_type_Mst"(
	"C_Code" varchar(100) NOT NULL,
	"c_Name" varchar(100) NULL,
	"n_status" integer NULL,
	"n_deleted" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_survey_answer"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_survey_answer"(
	"n_srno" SERIAL NOT NULL,
	"c_fs_code" varchar(20) NULL,
	"c_cust_code" varchar(20) NULL,
	"n_SurveyId" integer NULL,
	"d_surveydt" timestamp NULL,
	"d_uploaddate" timestamp NULL,
	"C_Fs_Remarks" varchar(500) NULL,
	"C_DSCA_Remarks" varchar(500) NULL,
	"c_imageFile_name" varchar(500) NULL,
	"n_type" integer NULL,
	"N_SType" integer NULL
) 
;
/****** Object:  Table "tbl_survey_answer_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_survey_answer_det"(
	"n_srno" numeric(18, 0) NULL,
	"n_QuestionID" numeric(18, 0) NULL,
	"c_Answer_Selected" varchar(100) NULL,
	"N_ID" SERIAL NOT NULL,
	"c_other" varchar(1000) NULL,
PRIMARY KEY  
(
	"N_ID" 
) 
) 
;
/****** Object:  Table "tbl_Survey_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Survey_Mst"(
	"n_SurveyId" SERIAL NOT NULL,
	"c_SurveyName" varchar(1000) NULL,
	"c_ShortName" varchar(50) NULL,
	"n_active" integer NULL,
	"n_deleted" integer NULL,
	"d_FromDt" timestamp NULL,
	"d_ToDate" timestamp NULL,
	"n_SurveyLimitCount" integer NULL
) 
;
/****** Object:  Table "tbl_Survey_Question_Mapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Survey_Question_Mapping"(
	"n_SurveyId" integer NULL,
	"n_QuestionID" integer NULL
) 
;
/****** Object:  Table "tbl_Survey_Question_Master"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Survey_Question_Master"(
	"n_QuestionID" SERIAL NOT NULL,
	"c_Question" varchar(500) NULL,
	"n_QuestionType" integer NULL,
	"c_Choice1" varchar(200) NULL,
	"c_Choice2" varchar(200) NULL,
	"c_Choice3" varchar(200) NULL,
	"c_Choice4" varchar(200) NULL,
	"c_Choice5" varchar(200) NULL,
	"n_deleted" integer NULL,
	"c_Choice6" varchar(200) NULL,
	"c_Choice7" varchar(200) NULL,
	"c_Choice8" varchar(200) NULL,
	"c_Choice9" varchar(200) NULL,
	"c_Choice10" varchar(200) NULL,
	"c_Choice11" varchar(200) NULL,
	"c_Choice12" varchar(200) NULL,
	"c_Choice13" varchar(200) NULL,
	"c_Choice14" varchar(200) NULL,
	"c_Choice15" varchar(200) NULL,
	"N_other" integer NULL
) 
;
/****** Object:  Table "tbl_Survey_Question_Type"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Survey_Question_Type"(
	"n_QuestionTypeCode" integer NULL,
	"c_description" varchar(500) NULL,
	"n_deleted" integer NULL,
	"c_ControlType" varchar(50) NULL,
	"n_ValidationType" varchar(5) NULL
) 
;
/****** Object:  Table "tbl_Survey_Question_Type_Det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Survey_Question_Type_Det"(
	"n_QuestionTypeCode" integer NULL,
	"n_rowid" integer NULL,
	"c_Description" varchar(500) NULL,
	"n_deleted" integer NULL
) 
;
/****** Object:  Table "tbl_Survey_Setup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Survey_Setup"(
	"n_srno" SERIAL NOT NULL,
	"c_SurveyId" numeric(18, 0) NULL,
	"c_SurveyType" integer NULL,
	"c_div_code" varchar(5000) NULL,
	"c_reg_code" varchar(5000) NULL,
	"c_area_code" varchar(5000) NULL,
	"c_fstype" varchar(100) NULL,
	"c_category" varchar(5000) NULL,
	"c_grade" varchar(5000) NULL,
	"d_created" timestamp NULL,
	"n_deleted" integer NULL
) 
;
/****** Object:  Table "tbl_tab_details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_tab_details"(
	"c_empcode" varchar(50) NULL,
	"c_fscode" varchar(50) NULL,
	"c_imei_no" varchar(50) NULL,
	"c_mgrcode" varchar(50) NULL,
	"d_date_from" timestamp NULL,
	"d_date_to" timestamp NULL,
	"n_status" integer NULL
) 
;
/****** Object:  Table "tbl_tablet_survey"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_tablet_survey"(
	"n_id" SERIAL NOT NULL,
	"c_fs_code" varchar(20) NULL,
	"c_emp_code" varchar(20) NULL,
	"c_answer_1" integer NULL,
	"c_tab_serial_no" varchar(25) NULL,
	"n_answer_2" integer NULL,
	"c_reason" varchar(1000) NULL,
	"c_mgr_name" varchar(25) NULL,
	"c_mgr_code" varchar(25) NULL,
	"c_mgr_mobileno" varchar(20) NULL,
	"n_answer_3" integer NULL,
	"d_created" timestamp NULL
) 
;
/****** Object:  Table "tbl_tagtime"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_tagtime"(
	"fromtime" varchar(100) NULL,
	"totime" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_target_grp_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_target_grp_mst"(
	"c_code" varchar(10) NULL,
	"c_name" varchar(50) NULL,
	"c_sh_name" varchar(50) NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(20) NULL,
	"n_deleted" integer NULL
) 
;
/****** Object:  Table "Tbl_Target_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Target_Mst"(
	"C_FSHQ_Code" char(10) NOT NULL,
	"C_ItemBrand_Code" char(10) NOT NULL,
	"N_Qty" numeric(18, 0) NOT NULL,
	"N_Value" numeric(18, 2) NULL,
	"N_Month" numeric(18, 0) NOT NULL,
	"N_year" numeric(18, 0) NOT NULL,
	"C_Created_By" char(10) NULL,
	"N_HqFsFlag" integer NULL,
	"N_BrdItmflag" integer NULL,
	"N_PriSecFlag" integer NOT NULL,
	"d_date" timestamp NULL,
	"c_typecode" varchar(10) NULL,
 CONSTRAINT "PK_Tbl_Target_Mst" PRIMARY KEY  
(
	"C_FSHQ_Code" ,
	"C_ItemBrand_Code" ,
	"N_Month" ,
	"N_year" ,
	"N_PriSecFlag" 
) 
) 
;
/****** Object:  Table "tbl_target_type_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_target_type_mst"(
	"c_code" varchar(50) NULL,
	"c_name" varchar(50) NULL,
	"c_description" varchar(50) NULL,
	"N_HqFsFlag" integer NULL,
	"N_BrdItmflag" integer NULL,
	"N_PriSecFlag" integer NULL,
	"N_Active" integer NULL,
	"C_Created_By" varchar(50) NULL,
	"d_created" timestamp NULL,
	"c_modifier" varchar(50) NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "tbl_task"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_task"(
	"n_task_id" SERIAL NOT NULL,
	"c_task_from" varchar(20) NULL,
	"c_task_to" varchar(20) NULL,
	"d_task_date" timestamp NULL,
	"d_created" timestamp NULL,
	"c_Description" varchar(1500) NULL,
	"n_deleted" integer NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "Tbl_Task_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Task_Mst"(
	"c_task_id" varchar(10) NOT NULL,
	"c_taskName" varchar(50) NOT NULL,
	"n_deleted" integer NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(50) NULL,
	"d_datefrom" timestamp NULL,
	"d_dateto" timestamp NULL
) 
;
/****** Object:  Table "tbl_task_tran"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_task_tran"(
	"c_task_code" varchar(50) NULL,
	"c_emp_code" varchar(10) NULL,
	"c_doctor_code" varchar(10) NULL,
	"c_comment" varchar(200) NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "Tbl_Tem_MkT_Stp"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Tem_MkT_Stp"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Ref_Srno" numeric(18, 0) NULL,
	"N_Transit" numeric(18, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"N_DA_OTHER" numeric(18, 2) NULL,
 CONSTRAINT "PK_Tbl_Tem_MKT_Stp" PRIMARY KEY  
(
	"N_Srno" 
) 
) 
;
/****** Object:  Table "Tbl_Tem_Stp"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Tem_Stp"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code" varchar(10) NOT NULL,
	"D_Eff_From_Date" timestamp NOT NULL,
	"D_Eff_To_Date" timestamp NOT NULL,
	"N_DA_HQ" numeric(18, 2) NULL,
	"N_DA_EX" numeric(18, 2) NULL,
	"N_DA_OS" numeric(18, 2) NULL,
	"D_Date_Of_Creation" timestamp NOT NULL,
	"C_Created_By" char(10) NULL,
	"C_Based_At" varchar(10) NULL,
	"N_TA_Type" integer NOT NULL,
	"N_MONTHLY_EXP" numeric(18, 2) NULL,
	"N_Ref_Srno" numeric(18, 0) NULL,
	"N_Transit" numeric(18, 0) NULL,
	"n_rateperkm" numeric(18, 2) NULL,
	"N_DA_OTHER" numeric(18, 2) NULL,
 CONSTRAINT "PK_Tbl_Tem_Stp" PRIMARY KEY  
(
	"N_Srno" 
) 
) 
;
/****** Object:  Table "tbl_temp_DoctorLIst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_temp_DoctorLIst"(
	"DoctorCode" varchar(100) NULL,
	"DoctorName" varchar(100) NULL,
	"Qualification" varchar(100) NULL,
	"Grade" varchar(100) NULL,
	"Category" varchar(100) NULL,
	"DocClass" varchar(100) NULL,
	"MobileNo" varchar(100) NULL,
	"LandlineNo" varchar(100) NULL,
	"Subarea" varchar(100) NULL,
	"LastVisited" varchar(100) NULL,
	"MclNo" varchar(100) NULL,
	"mcino" varchar(100) NULL,
	"Modifier" varchar(100) NULL,
	"ModifiedDate" varchar(100) NULL,
	"Deleted" varchar(100) NULL,
	"dob" varchar(100) NULL,
	"Age" varchar(100) NULL,
	"dow" varchar(100) NULL,
	"prodmapped" varchar(5000) NULL,
	"spousename" varchar(100) NULL,
	"spousedob" varchar(100) NULL,
	"Email" varchar(100) NULL,
	"Speciality" varchar(100) NULL,
	"Hospital" varchar(200) NULL,
	"StreetName" varchar(100) NULL,
	"AreaName" varchar(100) NULL,
	"Landmark" varchar(100) NULL,
	"City" varchar(100) NULL,
	"State" varchar(100) NULL,
	"PinCode" varchar(100) NULL,
	"HouseName" varchar(100) NULL,
	"StreetName1" varchar(100) NULL,
	"AreaName1" varchar(100) NULL,
	"Landmark1" varchar(100) NULL,
	"City1" varchar(100) NULL,
	"State1" varchar(100) NULL,
	"Pincode1" varchar(100) NULL,
	"NoofPatients" varchar(100) NULL,
	"CurrentBusiness" varchar(100) NULL,
	"N_drpotential" varchar(100) NULL,
	"BusinessPotential" varchar(100) NULL,
	"Isdocprescribed" varchar(100) NULL,
	"Isdocpurchasing" varchar(100) NULL,
	"Child1Name" varchar(100) NULL,
	"Child1Dob" varchar(100) NULL,
	"Child2Name" varchar(100) NULL,
	"Child2Dob" varchar(100) NULL,
	"Child3Name" varchar(100) NULL,
	"Child3Dob" varchar(100) NULL,
	"c_userid" varchar(100) NULL,
	"PanNo" varchar(50) NULL,
	"AreaType" varchar(2) NULL,
	"FsName" text NULL
) 
;
/****** Object:  Table "Tbl_Temp_Stp_Details"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Temp_Stp_Details"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"N_RowID" numeric(18, 0) NOT NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"N_Area_Type" integer NULL,
	"N_Distance" numeric(10, 2) NULL,
	"N_Ta" numeric(19, 2) NULL,
	"n_Cur_Business" numeric(19, 2) NULL,
	"n_Exp_Business" numeric(19, 2) NULL,
	"N_Doc_Visit_A" integer NULL,
	"N_Doc_Visit_B" integer NULL,
	"C_Area_From" char(10) NULL,
	"N_Chem_Visit" integer NULL,
	"N_Stk_Visit" integer NULL,
	"C_Subarea_code_From" varchar(10) NOT NULL,
	"C_Subarea_code_to" varchar(10) NOT NULL,
	"N_Wkg_Days" integer NULL,
	"N_ref_srno" numeric(18, 0) NULL,
 CONSTRAINT "PK_Tbl_Temp_Stp_Details" PRIMARY KEY  
(
	"N_Srno" ,
	"N_RowID" 
) 
) 
;
/****** Object:  Table "tbl_temp_table_sales"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_temp_table_sales"(
	"c_childcode" varchar(50) NULL,
	"c_parentcode" varchar(50) NULL,
	"n_type" integer NULL
) 
;
/****** Object:  Table "tbl_TempCore_Product_mapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_TempCore_Product_mapping"(
	"c_LogInFS" varchar(50) NULL,
	"c_CategoryCode" varchar(50) NULL,
	"c_DoctorCode" varchar(50) NULL,
	"c_ProductCode" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_Terms_and_Conditions_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Terms_and_Conditions_mst"(
	"c_code" varchar(10) NOT NULL,
	"c_name" varchar(500) NOT NULL,
	"n_fs_type" integer NOT NULL,
	"c_sh_name" varchar(20) NULL,
	"n_deleted" numeric(18, 0) NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(50) NULL,
 CONSTRAINT "PK_tbl_Terms_and_Conditions_mst" PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "Tbl_Therapeutic_Area_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Therapeutic_Area_Mst"(
	"c_code" varchar(50) NULL,
	"c_name" varchar(200) NULL,
	"d_created" timestamp NULL,
	"d_modified_date" timestamp NULL,
	"n_deleted" integer NULL,
	"n_status" integer NULL
) 
;
/****** Object:  Table "tbl_therapeutical_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_therapeutical_mst"(
	"C_Code" varchar(20) NOT NULL,
	"C_Name" varchar(500) NOT NULL,
	"C_NoDrs" char(10) NULL,
	"N_Type" integer NOT NULL,
	"n_deleted" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
 CONSTRAINT "PK_tbl_therapeutical_mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "tbl_totfs"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_totfs"(
	"DIVISION" varchar(50) NULL,
	"REGION" varchar(50) NULL,
	"DESIGNATION" varchar(50) NULL,
	"VACANT" integer NULL
) 
;
/****** Object:  Table "tbl_Travel_Location_Android"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Travel_Location_Android"(
	"c_fs_code" varchar(50) NULL,
	"N_Latitude" varchar(50) NULL,
	"N_Longitude" varchar(50) NULL,
	"d_datetime" timestamp NULL,
	"n_GPS" integer NULL,
	"n_GPRS" integer NULL,
	"n_rowid" SERIAL NOT NULL,
	"c_deviceid" varchar(1000) NULL,
	"C_Place" varchar(2000) NULL,
	"d_Upload_Date" timestamp NULL,
 CONSTRAINT "PK_tbl_Travel_Location_Android" PRIMARY KEY  
(
	"n_rowid" 
) 
) 
;
/****** Object:  Table "tbl_Travel_Location_Android_LOG"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Travel_Location_Android_LOG"(
	"c_fs_code" varchar(10) NOT NULL,
	"N_Latitude" varchar(50) NOT NULL,
	"N_Longitude" varchar(50) NOT NULL,
	"d_datetime" timestamp NOT NULL,
	"n_GPS" integer NULL,
	"n_GPRS" integer NULL,
	"n_rowid" integer NULL,
	"c_deviceid" varchar(100) NOT NULL,
	"C_Place" varchar(2000) NULL,
	"d_Upload_Date" timestamp NULL
) 
;
/****** Object:  Table "tbl_travel_type"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_travel_type"(
	"n_id" SERIAL NOT NULL,
	"c_name" varchar(20) NULL,
	"d_created" timestamp NULL,
	"n_delete" integer NULL,
PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "tbl_unique_doc_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_unique_doc_log"(
	"n_primary_id" SERIAL NOT NULL,
	"c_doccode" varchar(50) NULL,
	"c_docname" varchar(255) NULL,
	"c_clinicName" varchar(200) NULL,
	"c_clinicStreetName" varchar(200) NULL,
	"c_clinicAreaName" varchar(200) NULL,
	"c_clinicLandmark" varchar(200) NULL,
	"c_clinicCityCode" varchar(50) NULL,
	"c_clinicState" varchar(50) NULL,
	"c_clinicPinCode" varchar(100) NULL,
	"c_clinicSelAreaCode" varchar(50) NULL,
	"c_resBuildName" varchar(200) NULL,
	"c_resStreetName" varchar(200) NULL,
	"c_resArea" varchar(50) NULL,
	"c_resLandMark" varchar(200) NULL,
	"c_resCityCode" varchar(200) NULL,
	"c_resState" varchar(50) NULL,
	"c_resPinCode" varchar(100) NULL,
	"c_docRegNo" varchar(100) NULL,
	"c_yrRegNo" varchar(100) NULL,
	"c_regImageName" varchar(200) NULL,
	"c_noExpHighQuali" varchar(20) NULL,
	"c_therapAreaCode" varchar(50) NULL,
	"c_noJournalPubli" varchar(20) NULL,
	"c_noOfAuthorship" varchar(20) NULL,
	"c_partRadio" varchar(20) NULL,
	"c_partCheckValue" varchar(50) NULL,
	"c_speakerRadio" varchar(20) NULL,
	"c_speakerCheckValue" varchar(20) NULL,
	"c_editorialBoard" varchar(200) NULL,
	"c_position" varchar(20) NULL,
	"c_experienceCode" varchar(20) NULL,
	"c_documentCollect" varchar(200) NULL,
	"c_panNo" varchar(100) NULL,
	"c_panImage" text NULL,
	"c_email" varchar(100) NULL,
	"c_qualificationCode" varchar(50) NULL,
	"c_qualificationImage" text NULL,
	"C_Subarea_Code" varchar(50) NULL,
	"N_Type" integer NULL,
	"c_Status" varchar(2) NULL,
	"c_remarks" text NULL,
	"n_setup" integer NULL,
	"c_fscode_submitted_by" varchar(20) NULL,
	"c_empcode_submitted_by" varchar(20) NULL,
	"d_submitted_date" timestamp NULL,
	"c_fscode_last_approved_rejected_by" varchar(20) NULL,
	"c_empcode_last_approved_rejected_by" varchar(20) NULL,
	"d_last_approved_rejected_date" timestamp NULL,
	"c_next_approve_fscode" varchar(20) NULL,
	"c_next_approve_status" integer NULL,
	"c_next_2_approve_fscode" varchar(20) NULL,
	"c_new_reject_status" varchar(10) NOT NULL,
	"c_prescription_pad_image" text NULL,
	"c_visiting_card_image" text NULL,
	"c_hospital_clinic_signboard_image" text NULL,
	"c_others_image" text NULL,
	"c_speciality_code" varchar(50) NULL,
	"c_doccode_mst" varchar(50) NULL,
	"c_mobileno" varchar(200) NULL,
	"C_Category" varchar(50) NULL,
	"n_lami" double precision NULL,
	"n_lgmi" double precision NULL,
	"c_specialitycode" varchar(50) NULL,
	"c_pan_name" varchar(255) NULL,
	"d_modified_date" timestamp NULL,
	"n_status" integer NOT NULL,
	"n_isfamilyphysician" integer NULL,
	"n_req_id" numeric(18, 0) NULL,
	"c_panImage_Url" text NULL,
	"c_prescription_pad_image_Url" text NULL,
	"c_visiting_card_image_Url" text NULL,
	"c_hospital_clinic_signboard_image_Url" text NULL,
	"c_others_image_Url" text NULL,
	"c_regImageName_Url" text NULL,
	"c_qualificationImage_Url" text NULL,
 CONSTRAINT "PK__tbl_uniq__033CC7CF50FC2AB8" PRIMARY KEY  
(
	"n_primary_id" 
) 
) 
;
/****** Object:  Table "tbl_unique_doc_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_unique_doc_mst"(
	"n_primary_id" SERIAL NOT NULL,
	"c_doccode" varchar(50) NULL,
	"c_docname" varchar(255) NULL,
	"c_clinicName" varchar(200) NULL,
	"c_clinicStreetName" varchar(200) NULL,
	"c_clinicAreaName" varchar(200) NULL,
	"c_clinicLandmark" varchar(200) NULL,
	"c_clinicCityCode" varchar(50) NULL,
	"c_clinicState" varchar(50) NULL,
	"c_clinicPinCode" varchar(100) NULL,
	"c_clinicSelAreaCode" varchar(50) NULL,
	"c_resBuildName" varchar(200) NULL,
	"c_resStreetName" varchar(200) NULL,
	"c_resArea" varchar(50) NULL,
	"c_resLandMark" varchar(200) NULL,
	"c_resCityCode" varchar(200) NULL,
	"c_resState" varchar(50) NULL,
	"c_resPinCode" varchar(100) NULL,
	"c_docRegNo" varchar(100) NULL,
	"c_yrRegNo" varchar(100) NULL,
	"c_regImageName" varchar(200) NULL,
	"c_noExpHighQuali" varchar(20) NULL,
	"c_therapAreaCode" varchar(50) NULL,
	"c_noJournalPubli" varchar(20) NULL,
	"c_noOfAuthorship" varchar(20) NULL,
	"c_partRadio" varchar(20) NULL,
	"c_partCheckValue" varchar(50) NULL,
	"c_speakerRadio" varchar(20) NULL,
	"c_speakerCheckValue" varchar(20) NULL,
	"c_editorialBoard" varchar(200) NULL,
	"c_position" varchar(20) NULL,
	"c_experienceCode" varchar(20) NULL,
	"c_documentCollect" varchar(200) NULL,
	"c_panNo" varchar(100) NULL,
	"c_panImage" text NULL,
	"c_email" varchar(100) NULL,
	"c_qualificationCode" varchar(50) NULL,
	"c_qualificationImage" text NULL,
	"C_Subarea_Code" varchar(50) NULL,
	"N_Type" integer NULL,
	"c_Status" varchar(2) NULL,
	"n_setup" integer NULL,
	"c_fscode_submitted_by" varchar(20) NULL,
	"c_empcode_submitted_by" varchar(20) NULL,
	"d_submitted_date" timestamp NULL,
	"c_fscode_last_approved_rejected_by" varchar(20) NULL,
	"c_empcode_last_approved_rejected_by" varchar(20) NULL,
	"d_last_approved_rejected_date" timestamp NULL,
	"c_next_approve_fscode" varchar(20) NULL,
	"c_next_approve_status" integer NULL,
	"c_next_2_approve_fscode" varchar(20) NULL,
	"n_tagged" integer NOT NULL,
	"c_mobileno" varchar(200) NULL,
	"C_Category" varchar(50) NULL,
	"n_lami" double precision NULL,
	"n_lgmi" double precision NULL,
	"c_prescription_pad_image" text NULL,
	"c_visiting_card_image" text NULL,
	"c_hospital_clinic_signboard_image" text NULL,
	"c_others_image" text NULL,
	"c_new_reject_status" varchar(10) NOT NULL,
	"c_speciality_code" varchar(50) NULL,
	"c_specialitycode" varchar(50) NULL,
	"n_total_score_A" numeric(18, 2) NULL,
	"n_total_score_B" numeric(18, 2) NULL,
	"c_doc_category" varchar(20) NULL,
	"n_maximum_fmv" numeric(18, 2) NULL,
	"c_pan_name" varchar(255) NULL,
	"d_modified_date" timestamp NULL,
	"n_status" integer NOT NULL,
	"n_isfamilyphysician" integer NULL,
	"C_Vendor_Code" varchar(50) NULL,
	"C_Vendor_Name" varchar(200) NULL,
	"c_panImage_Url" text NULL,
	"c_prescription_pad_image_Url" text NULL,
	"c_visiting_card_image_Url" text NULL,
	"c_hospital_clinic_signboard_image_Url" text NULL,
	"c_others_image_Url" text NULL,
	"c_regImageName_Url" text NULL,
	"c_qualificationImage_Url" text NULL,
 CONSTRAINT "PK__tbl_uniq__033CC7CF4D2B99D4" PRIMARY KEY  
(
	"n_primary_id" 
) 
) 
;
/****** Object:  Table "tbl_unique_doc_mst_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_unique_doc_mst_log"(
	"n_primary_id" numeric(18, 0) NOT NULL,
	"c_doccode" varchar(50) NULL,
	"c_docname" varchar(255) NULL,
	"c_clinicName" varchar(200) NULL,
	"c_clinicStreetName" varchar(200) NULL,
	"c_clinicAreaName" varchar(200) NULL,
	"c_clinicLandmark" varchar(200) NULL,
	"c_clinicCityCode" varchar(50) NULL,
	"c_clinicState" varchar(50) NULL,
	"c_clinicPinCode" varchar(100) NULL,
	"c_clinicSelAreaCode" varchar(50) NULL,
	"c_resBuildName" varchar(200) NULL,
	"c_resStreetName" varchar(200) NULL,
	"c_resArea" varchar(50) NULL,
	"c_resLandMark" varchar(200) NULL,
	"c_resCityCode" varchar(200) NULL,
	"c_resState" varchar(50) NULL,
	"c_resPinCode" varchar(100) NULL,
	"c_docRegNo" varchar(100) NULL,
	"c_yrRegNo" varchar(100) NULL,
	"c_regImageName" varchar(200) NULL,
	"c_noExpHighQuali" varchar(20) NULL,
	"c_therapAreaCode" varchar(50) NULL,
	"c_noJournalPubli" varchar(20) NULL,
	"c_noOfAuthorship" varchar(20) NULL,
	"c_partRadio" varchar(20) NULL,
	"c_partCheckValue" varchar(50) NULL,
	"c_speakerRadio" varchar(20) NULL,
	"c_speakerCheckValue" varchar(20) NULL,
	"c_editorialBoard" varchar(200) NULL,
	"c_position" varchar(20) NULL,
	"c_experienceCode" varchar(20) NULL,
	"c_documentCollect" varchar(200) NULL,
	"c_panNo" varchar(100) NULL,
	"c_panImage" text NULL,
	"c_email" varchar(100) NULL,
	"c_qualificationCode" varchar(50) NULL,
	"c_qualificationImage" text NULL,
	"C_Subarea_Code" varchar(50) NULL,
	"N_Type" integer NULL,
	"c_Status" varchar(2) NULL,
	"n_setup" integer NULL,
	"c_fscode_submitted_by" varchar(20) NULL,
	"c_empcode_submitted_by" varchar(20) NULL,
	"d_submitted_date" timestamp NULL,
	"c_fscode_last_approved_rejected_by" varchar(20) NULL,
	"c_empcode_last_approved_rejected_by" varchar(20) NULL,
	"d_last_approved_rejected_date" timestamp NULL,
	"c_next_approve_fscode" varchar(20) NULL,
	"c_next_approve_status" integer NULL,
	"c_next_2_approve_fscode" varchar(20) NULL,
	"n_tagged" integer NOT NULL,
	"c_mobileno" varchar(200) NULL,
	"C_Category" varchar(50) NULL,
	"n_lami" double precision NULL,
	"n_lgmi" double precision NULL,
	"c_new_reject_status" varchar(10) NOT NULL,
	"c_speciality_code" varchar(50) NULL,
	"c_specialitycode" varchar(50) NULL,
	"c_prescription_pad_image" text NULL,
	"c_visiting_card_image" text NULL,
	"c_hospital_clinic_signboard_image" text NULL,
	"c_others_image" text NULL,
	"n_total_score_A" numeric(18, 2) NULL,
	"n_total_score_B" numeric(18, 2) NULL,
	"c_doc_category" varchar(20) NULL,
	"n_maximum_fmv" numeric(18, 2) NULL,
	"c_pan_name" varchar(255) NULL,
	"n_status" integer NOT NULL,
	"d_modified_date" timestamp NULL,
	"n_isfamilyphysician" integer NULL,
	"C_Vendor_Code" varchar(50) NULL,
	"C_Vendor_Name" varchar(200) NULL,
	"d_log_date" timestamp NULL,
	"n_req_id" numeric(18, 0) NOT NULL
) 
;
/****** Object:  Table "tbl_unique_doc_req"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_unique_doc_req"(
	"n_primary_id" SERIAL NOT NULL,
	"c_doccode" varchar(50) NULL,
	"c_docname" varchar(255) NULL,
	"c_clinicName" varchar(200) NULL,
	"c_clinicStreetName" varchar(200) NULL,
	"c_clinicAreaName" varchar(200) NULL,
	"c_clinicLandmark" varchar(200) NULL,
	"c_clinicCityCode" varchar(50) NULL,
	"c_clinicState" varchar(50) NULL,
	"c_clinicPinCode" varchar(100) NULL,
	"c_clinicSelAreaCode" varchar(50) NULL,
	"c_resBuildName" varchar(200) NULL,
	"c_resStreetName" varchar(200) NULL,
	"c_resArea" varchar(50) NULL,
	"c_resLandMark" varchar(200) NULL,
	"c_resCityCode" varchar(200) NULL,
	"c_resState" varchar(50) NULL,
	"c_resPinCode" varchar(100) NULL,
	"c_docRegNo" varchar(100) NULL,
	"c_yrRegNo" varchar(100) NULL,
	"c_regImageName" varchar(200) NULL,
	"c_noExpHighQuali" varchar(20) NULL,
	"c_therapAreaCode" varchar(50) NULL,
	"c_noJournalPubli" varchar(20) NULL,
	"c_noOfAuthorship" varchar(20) NULL,
	"c_partRadio" varchar(20) NULL,
	"c_partCheckValue" varchar(50) NULL,
	"c_speakerRadio" varchar(20) NULL,
	"c_speakerCheckValue" varchar(20) NULL,
	"c_editorialBoard" varchar(200) NULL,
	"c_position" varchar(20) NULL,
	"c_experienceCode" varchar(20) NULL,
	"c_documentCollect" varchar(200) NULL,
	"c_panNo" varchar(100) NULL,
	"c_panImage" text NULL,
	"c_email" varchar(100) NULL,
	"c_qualificationCode" varchar(50) NULL,
	"c_qualificationImage" text NULL,
	"C_Subarea_Code" varchar(50) NULL,
	"N_Type" integer NULL,
	"c_Status" varchar(2) NULL,
	"n_setup" integer NULL,
	"c_fscode_submitted_by" varchar(20) NULL,
	"c_empcode_submitted_by" varchar(20) NULL,
	"d_submitted_date" timestamp NULL,
	"c_fscode_last_approved_rejected_by" varchar(20) NULL,
	"c_empcode_last_approved_rejected_by" varchar(20) NULL,
	"d_last_approved_rejected_date" timestamp NULL,
	"c_next_approve_fscode" varchar(20) NULL,
	"c_next_approve_status" integer NULL,
	"c_next_2_approve_fscode" varchar(20) NULL,
	"c_new_reject_status" varchar(10) NOT NULL,
	"c_prescription_pad_image" text NULL,
	"c_visiting_card_image" text NULL,
	"c_hospital_clinic_signboard_image" text NULL,
	"c_others_image" text NULL,
	"c_speciality_code" varchar(50) NULL,
	"c_remarks" varchar(500) NULL,
	"c_mobileno" varchar(200) NULL,
	"C_Category" varchar(50) NULL,
	"n_lami" double precision NULL,
	"n_lgmi" double precision NULL,
	"c_specialitycode" varchar(50) NULL,
	"c_pan_name" varchar(255) NULL,
	"d_modified_date" timestamp NULL,
	"n_status" integer NOT NULL,
	"n_isfamilyphysician" integer NULL,
	"c_panImage_Url" text NULL,
	"c_prescription_pad_image_Url" text NULL,
	"c_visiting_card_image_Url" text NULL,
	"c_hospital_clinic_signboard_image_Url" text NULL,
	"c_others_image_Url" text NULL,
	"c_regImageName_Url" text NULL,
	"c_qualificationImage_Url" text NULL,
 CONSTRAINT "PK_tbl_unique_doc_req" PRIMARY KEY  
(
	"n_primary_id" 
) 
) 
;
/****** Object:  Table "Tbl_Unique_Doctor_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Unique_Doctor_Mst"(
	"c_doc_uniqueid" varchar(50) NULL,
	"C_Name" varchar(200) NULL,
	"C_Phone" varchar(20) NULL,
	"C_Pin" varchar(10) NULL,
	"d_date" timestamp NULL
) 
;
/****** Object:  Table "tbl_unique_dr_app_con_history"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_unique_dr_app_con_history"(
	"n_rowid" SERIAL NOT NULL,
	"n_req_id" numeric(18, 0) NULL,
	"c_approvedby" varchar(20) NULL,
	"d_approved_date" timestamp NULL,
	"c_confirmedby" varchar(20) NULL,
	"d_confirmeddate" timestamp NULL,
	"c_remarks" text NULL,
	"c_status" varchar(10) NULL
) 
;
/****** Object:  Table "tbl_update_doctor_request_mapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_update_doctor_request_mapping"(
	"c_dr_code" text NOT NULL,
	"c_createdby" varchar(50) NULL,
	"d_createddate" timestamp NULL
) 
;
/****** Object:  Table "tbl_UpdateDrRequest_MultiHierarchyApproval"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_UpdateDrRequest_MultiHierarchyApproval"(
	"n_RequestType" integer NULL,
	"n_Type" integer NULL,
	"n_setupid" integer NULL
) 
;
/****** Object:  Table "tbl_upload_data_column_mapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_upload_data_column_mapping"(
	"n_srno" SERIAL NOT NULL,
	"n_id" integer NULL,
	"c_fscode" varchar(50) NULL,
	"c_columns" text NULL,
	"c_columns_excel" text NULL,
	"c_columns_mapped" text NULL,
	"n_rowcount" integer NULL,
	"n_ismapped" integer NULL,
	"n_anyvalidation" integer NULL,
	"n_insertedall" integer NULL,
	"d_created" timestamp NULL,
	"n_lock" integer NULL,
	"c_other_data" varchar(500) NULL,
	"c_excel_path" varchar(500) NULL,
	"c_file_type" varchar(10) NULL,
	"n_bulk" integer NULL
) 
;
/****** Object:  Table "tbl_upload_data_excel_cols"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_upload_data_excel_cols"(
	"n_srno" SERIAL NOT NULL,
	"n_id" integer NULL,
	"c_column" varchar(100) NULL,
	"c_label" varchar(500) NULL,
	"n_priority" integer NULL,
	"n_mandatory" integer NULL,
	"n_required" integer NULL,
	"n_excel_col" integer NULL,
	"c_default_val" varchar(500) NULL,
	"allow_null" integer NULL,
	"max_length" integer NULL,
	"allow_specialchar" integer NULL,
	"if_exist" varchar(500) NULL,
	"choose_from" varchar(500) NULL,
	"condititional_cols" varchar(500) NULL,
	"number_only" integer NULL,
	"date_format" varchar(500) NULL,
	"email_val" integer NULL,
	"alpha_numeric" integer NULL,
	"c_special_chars_not_allowed" varchar(500) NULL,
	"check_duplicate" varchar(1000) NULL,
	"table_name" varchar(500) NULL,
	"max_value" integer NULL,
 CONSTRAINT "PK_tbl_upload_data_excel_cols" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_upload_data_excel_cols_bck"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_upload_data_excel_cols_bck"(
	"n_srno" SERIAL NOT NULL,
	"n_id" integer NULL,
	"c_column" varchar(100) NULL,
	"c_label" varchar(500) NULL,
	"n_priority" integer NULL,
	"n_mandatory" integer NULL,
	"n_required" integer NULL,
	"n_excel_col" integer NULL,
	"c_default_val" varchar(500) NULL,
	"allow_null" integer NULL,
	"max_length" integer NULL,
	"allow_specialchar" integer NULL,
	"if_exist" varchar(500) NULL,
	"choose_from" varchar(500) NULL,
	"condititional_cols" varchar(500) NULL,
	"number_only" integer NULL,
	"date_format" varchar(500) NULL,
	"email_val" integer NULL,
	"alpha_numeric" integer NULL,
	"c_special_chars_not_allowed" varchar(500) NULL,
	"check_duplicate" varchar(1000) NULL,
	"table_name" varchar(500) NULL,
	"max_value" integer NULL
) 
;
/****** Object:  Table "tbl_upload_data_master_header"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_upload_data_master_header"(
	"n_srno" SERIAL NOT NULL,
	"n_id" integer NULL,
	"c_header" varchar(200) NULL,
	"c_type" varchar(5) NULL,
	"n_active" integer NULL,
	"n_max_limit" integer NULL,
 CONSTRAINT "PK_tbl_upload_data_master_header" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_upload_data_master_header_bck"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_upload_data_master_header_bck"(
	"n_srno" SERIAL NOT NULL,
	"n_id" integer NULL,
	"c_header" varchar(200) NULL,
	"c_type" varchar(5) NULL,
	"n_active" integer NULL,
	"n_max_limit" integer NULL
) 
;
/****** Object:  Table "tbl_upload_data_temp"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_upload_data_temp"(
	"n_srno" SERIAL NOT NULL,
	"n_header_id" integer NULL,
	"c_fscode" varchar(50) NULL,
	"n_status" integer NULL,
	"c_validation_msg" text NULL,
	"c1" text NULL,
	"c2" text NULL,
	"c3" text NULL,
	"c4" text NULL,
	"c5" text NULL,
	"c6" text NULL,
	"c7" text NULL,
	"c8" text NULL,
	"c9" text NULL,
	"c10" text NULL,
	"c11" text NULL,
	"c12" text NULL,
	"c13" text NULL,
	"c14" text NULL,
	"c15" text NULL,
	"c16" text NULL,
	"c17" text NULL,
	"c18" text NULL,
	"c19" text NULL,
	"c20" text NULL,
	"c21" text NULL,
	"c22" text NULL,
	"c23" text NULL,
	"c24" text NULL,
	"c25" text NULL,
	"c26" text NULL,
	"c27" text NULL,
	"c28" text NULL,
	"c29" text NULL,
	"c30" text NULL,
	"c31" text NULL,
	"c32" text NULL,
	"c33" text NULL,
	"c34" text NULL,
	"c35" text NULL,
	"c36" text NULL,
	"c37" text NULL,
	"c38" text NULL,
	"c39" text NULL,
	"c40" text NULL,
	"c41" text NULL,
	"c42" text NULL,
	"c43" text NULL,
	"c44" text NULL,
	"c45" text NULL,
	"c46" text NULL,
	"c47" text NULL,
	"c48" text NULL,
	"c49" text NULL,
	"c50" text NULL,
	"c51" text NULL,
	"c52" text NULL,
	"c53" text NULL,
	"c54" text NULL,
	"c55" text NULL,
	"c56" text NULL,
	"c57" text NULL,
	"c58" text NULL,
	"c59" text NULL,
	"c60" text NULL,
	"c61" text NULL,
	"c62" text NULL,
	"c63" text NULL,
	"c64" text NULL,
	"c65" text NULL,
	"c66" text NULL,
	"c67" text NULL,
	"c68" text NULL,
	"c69" text NULL,
	"c70" text NULL,
	"c71" text NULL,
	"c72" text NULL,
	"c73" text NULL,
	"c74" text NULL,
	"c75" text NULL,
 CONSTRAINT "PK_tbl_upload_data_temp" PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_upload_data_validated_rows"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_upload_data_validated_rows"(
	"n_srno" SERIAL NOT NULL,
	"n_temp_srno" integer NULL,
	"n_id" integer NULL,
	"c_fscode" varchar(20) NULL,
	"c_validation_msg" text NULL,
PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "tbl_uppercase_headings"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_uppercase_headings"(
	"n_srno" integer NOT NULL,
	"c_caption" varchar(100) NULL,
PRIMARY KEY  
(
	"n_srno" 
) 
) 
;
/****** Object:  Table "Tbl_User_Access"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_User_Access"(
	"N_Type" numeric(18, 0) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"c_sh_name" varchar(10) NULL,
	"n_CI_FLag" smallint NULL,
	"n_fs_flag" smallint NULL,
	"c_gadgetcode" varchar(50) NULL,
	"n_dashboard_type" integer NULL,
 CONSTRAINT "PK_Tbl_User_Access" PRIMARY KEY  
(
	"N_Type" 
) 
) 
;
/****** Object:  Table "Tbl_User_Access_Rights"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_User_Access_Rights"(
	"N_Type" numeric(18, 0) NOT NULL,
	"C_Page" varchar(50) NULL,
	"C_Name_Show" char(20) NULL,
	"N_Order" numeric(18, 0) NULL,
 CONSTRAINT "PK_Tbl_User_Access_Rights" PRIMARY KEY  
(
	"N_Type" 
) 
) 
;
/****** Object:  Table "tbl_user_activity"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_user_activity"(
	"n_id" SERIAL NOT NULL,
	"n_month_type" integer NULL,
	"n_Year" integer NULL,
	"c_Fs_Code" varchar(50) NULL,
	"n_status" integer NULL,
	"d_Created" timestamp NULL,
	"d_Modified" timestamp NULL,
	"d_ApprovedDt" timestamp NULL,
	"c_ApprovedBy" varchar(20) NULL,
	"n_deleted" integer NULL
) 
;
/****** Object:  Table "tbl_user_activity_detail"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_user_activity_detail"(
	"n_id" numeric(18, 0) NULL,
	"c_Jan" varchar(500) NULL,
	"c_Feb" varchar(500) NULL,
	"c_Mar" varchar(500) NULL,
	"c_Apr" varchar(500) NULL,
	"c_May" varchar(500) NULL,
	"c_Jun" varchar(500) NULL,
	"c_Jul" varchar(500) NULL,
	"c_Aug" varchar(500) NULL,
	"c_Sep" varchar(500) NULL,
	"c_Oct" varchar(500) NULL,
	"c_Nov" varchar(500) NULL,
	"c_Dec" varchar(500) NULL,
	"n_CommentLevelOrData" integer NULL,
	"n_ActivityType" integer NULL
) 
;
/****** Object:  Table "tbl_user_activity_detail_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_user_activity_detail_log"(
	"n_id" numeric(18, 0) NULL,
	"c_Jan" varchar(500) NULL,
	"c_Feb" varchar(500) NULL,
	"c_Mar" varchar(500) NULL,
	"c_Apr" varchar(500) NULL,
	"c_May" varchar(500) NULL,
	"c_Jun" varchar(500) NULL,
	"c_Jul" varchar(500) NULL,
	"c_Aug" varchar(500) NULL,
	"c_Sep" varchar(500) NULL,
	"c_Oct" varchar(500) NULL,
	"c_Nov" varchar(500) NULL,
	"c_Dec" varchar(500) NULL,
	"n_CommentLevelOrData" integer NULL,
	"n_ActivityType" integer NULL
) 
;
/****** Object:  Table "tbl_user_activity_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_user_activity_log"(
	"n_id" numeric(18, 0) NULL,
	"n_month_type" integer NULL,
	"n_Year" integer NULL,
	"c_Fs_Code" varchar(50) NULL,
	"n_status" integer NULL,
	"d_Created" timestamp NULL,
	"d_Modified" timestamp NULL,
	"d_ApprovedDt" timestamp NULL,
	"c_ApprovedBy" varchar(20) NULL,
	"n_deleted" integer NULL
) 
;
/****** Object:  Table "Tbl_User_Allowance"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_User_Allowance"(
	"C_Code" char(10) NOT NULL,
	"C_Allow_ID" char(10) NOT NULL,
	"C_Name" char(10) NOT NULL,
	"M_Amount" numeric(19,4) NOT NULL
) 
;
/****** Object:  Table "Tbl_User_Info"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_User_Info"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(500) NULL,
	"C_UserID" varchar(20) NOT NULL,
	"C_Password" varchar(100) NULL,
	"N_Lock" integer NOT NULL,
	"C_Description" varchar(250) NULL,
	"N_Edit" integer NULL,
	"N_Delete" integer NULL,
	"N_AddNew" integer NULL,
	"N_Shift" integer NULL,
	"N_ShiftEdit" integer NULL,
	"D_Create_Date" timestamp NULL,
	"D_Modify_Date" timestamp NULL,
	"c_mob_UniqueID" varchar(10) NULL,
	"c_mob_Prev_ID" varchar(10) NULL,
	"n_mobile_user" integer NULL,
	"n_type" integer NULL,
	"n_menuid" integer NULL,
	"n_webuser" integer NULL,
	"n_Mobwebuser" integer NULL,
	"n_edetailng" integer NULL,
	"n_Androiduser" integer NULL,
	"n_attempts" integer NULL,
	"n_encryptexe" integer NULL,
	"mobile_number" varchar(200) NULL,
 CONSTRAINT "PK_Tbl_User_Info" PRIMARY KEY  
(
	"C_Code" ,
	"C_UserID" 
) 
) 
;
/****** Object:  Table "tbl_user_info_2412019"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_user_info_2412019"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(500) NULL,
	"C_UserID" varchar(20) NOT NULL,
	"C_Password" varchar(100) NULL,
	"N_Lock" integer NOT NULL,
	"C_Description" varchar(250) NULL,
	"N_Edit" integer NULL,
	"N_Delete" integer NULL,
	"N_AddNew" integer NULL,
	"N_Shift" integer NULL,
	"N_ShiftEdit" integer NULL,
	"D_Create_Date" timestamp NULL,
	"D_Modify_Date" timestamp NULL,
	"c_mob_UniqueID" varchar(10) NULL,
	"c_mob_Prev_ID" varchar(10) NULL,
	"n_mobile_user" integer NULL,
	"n_type" integer NULL,
	"n_menuid" integer NULL,
	"n_webuser" integer NULL,
	"n_Mobwebuser" integer NULL,
	"n_edetailng" integer NULL,
	"n_Androiduser" integer NULL,
	"n_attempts" integer NULL,
	"n_encryptexe" integer NULL
) 
;
/****** Object:  Table "tbl_user_info_cpy10112015"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_user_info_cpy10112015"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(500) NULL,
	"C_UserID" varchar(20) NOT NULL,
	"C_Password" varchar(100) NULL,
	"N_Lock" integer NOT NULL,
	"C_Description" varchar(250) NULL,
	"N_Edit" integer NULL,
	"N_Delete" integer NULL,
	"N_AddNew" integer NULL,
	"N_Shift" integer NULL,
	"N_ShiftEdit" integer NULL,
	"D_Create_Date" timestamp NULL,
	"D_Modify_Date" timestamp NULL,
	"c_mob_UniqueID" varchar(10) NULL,
	"c_mob_Prev_ID" varchar(10) NULL,
	"n_mobile_user" integer NULL,
	"n_type" integer NULL,
	"n_menuid" integer NULL
) 
;
/****** Object:  Table "TBL_USER_LOGOUT"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "TBL_USER_LOGOUT"(
	"C_USERID" varchar(200) NOT NULL,
	"C_DEVICE_ID" varchar(2000) NULL,
	"D_DATE_LOGIN" timestamp NULL,
	"C_FSCODE" varchar(50) NULL,
 CONSTRAINT "PK_UserId" PRIMARY KEY  
(
	"C_USERID" 
) 
) 
;
/****** Object:  Table "TBL_USER_LOGOUT_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "TBL_USER_LOGOUT_log"(
	"C_USERID" varchar(200) NOT NULL,
	"C_DEVICE_ID" varchar(2000) NULL,
	"D_DATE_LOGIN" timestamp NULL,
	"C_FSCODE" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_user_task_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_user_task_det"(
	"n_task_id" SERIAL NOT NULL,
	"c_task_type_code" varchar(100) NULL,
	"c_task_description" varchar(1000) NULL,
	"d_task_date" "date" NULL,
	"t_task_time" "time"(7) NULL,
	"c_task_user" varchar(100) NULL,
	"n_delete" integer NOT NULL,
	"d_created" timestamp NOT NULL,
	"n_task_status" integer NULL,
	"d_task_completed" timestamp NULL
) 
;
/****** Object:  Table "tbl_user_token"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_user_token"(
	"c_userid" varchar(20) NULL,
	"c_token" varchar(50) NULL,
	"n_androidflg" integer NULL,
	"d_date" timestamp NULL,
	"n_deleted" integer NULL
) 
;
/****** Object:  Table "Tbl_UserEnable_Setup"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_UserEnable_Setup"(
	"N_Type" integer NOT NULL,
	"C_UserrightsID" varchar(20) NULL,
	"n_webUser" integer NULL,
	"n_AndroidUser" integer NULL,
	"n_mobUser" integer NULL,
	"n_EdetailUser" integer NULL,
	"C_AndroidUserID" varchar(20) NULL,
	"n_DCRLock" integer NULL,
	"n_MCRLock" integer NULL,
	"n_Leavedays" integer NULL,
	"n_deleted" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "Tbl_UserRights"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_UserRights"(
	"c_code" char(10) NOT NULL,
	"c_userid" varchar(20) NOT NULL,
	"c_menu1" char(100) NULL,
	"c_menu2" char(100) NULL,
	"c_menu3" char(100) NULL,
	"c_menu4" char(100) NULL,
	"c_menu5" char(100) NULL,
	"c_menu6" char(100) NULL,
	"c_menu7" char(100) NULL,
	"c_menu8" char(100) NULL,
	"c_menu9" char(100) NULL,
	"c_menu10" char(100) NULL,
	"c_menu11" char(100) NULL,
	"c_menu12" char(100) NULL,
	"c_menu13" char(100) NULL,
	"c_menu14" char(100) NULL,
	"c_menu15" char(100) NULL,
	"c_menu16" char(100) NULL,
	"c_menu17" char(100) NULL,
	"c_menu18" char(100) NULL,
	"c_menu19" char(100) NULL,
	"c_menu20" char(100) NULL,
	"c_menu21" char(100) NULL,
	"c_modify_user" varchar(20) NULL,
	"d_modify_date" timestamp NULL,
	"n_deleted" integer NULL,
	"c_menu22" char(100) NULL,
	"c_menu23" char(100) NULL,
	"projectid" integer NULL,
	"c_menu24" varchar(100) NULL,
	"c_menu25" varchar(100) NULL,
	"c_menu26" varchar(100) NULL,
	"c_menu27" varchar(100) NULL,
	"c_menu28" varchar(100) NULL,
	"c_menu29" varchar(100) NULL,
	"c_menu30" varchar(100) NULL,
	"c_menu31" varchar(100) NULL,
	"c_menu32" varchar(100) NULL,
	"c_menu33" varchar(100) NULL,
	"c_menu34" varchar(100) NULL,
	"c_menu35" varchar(100) NULL,
	"c_menu36" varchar(100) NULL,
	"c_menu37" varchar(100) NULL,
	"c_menu38" varchar(100) NULL,
	"c_menu39" varchar(100) NULL,
	"c_menu40" varchar(100) NULL,
	"c_menu41" varchar(100) NULL,
	"c_menu42" varchar(100) NULL,
	"c_menu43" varchar(100) NULL,
	"c_menu44" varchar(100) NULL,
	"c_menu45" varchar(100) NULL,
	"c_menu46" varchar(100) NULL,
	"c_menu47" varchar(100) NULL,
	"c_menu48" varchar(100) NULL,
	"c_menu49" varchar(100) NULL,
	"c_menu50" varchar(100) NULL,
	"c_menu51" varchar(100) NULL,
	"n_dsca_default_Rights" integer NULL,
 CONSTRAINT "PK_Tbl_UserRights" PRIMARY KEY  
(
	"c_code" ,
	"c_userid" 
) 
) 
;
/****** Object:  Table "Tbl_UserRights_360"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_UserRights_360"(
	"n_id" SERIAL NOT NULL,
	"c_itemid" varchar(20) NULL,
	"c_menuid" varchar(20) NULL,
	"c_userid" varchar(200) NULL,
PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "Tbl_UserRights_360_type"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_UserRights_360_type"(
	"n_id" SERIAL NOT NULL,
	"c_type" varchar(200) NOT NULL,
	"n_active" integer NOT NULL,
	"n_menu" integer NOT NULL,
	"d_creation" timestamp NULL,
	"c_createdby" timestamp NULL,
	"Region" varchar(200) NULL,
	"Divsion" varchar(200) NULL,
	"c_itemid" varchar(200) NULL,
PRIMARY KEY  
(
	"n_id" ,
	"c_type" ,
	"n_active" ,
	"n_menu" 
) 
) 
;
/****** Object:  Table "Tbl_UserRights_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_UserRights_log"(
	"c_code" char(10) NOT NULL,
	"c_userid" varchar(20) NOT NULL,
	"c_menu1" char(100) NULL,
	"c_menu2" char(100) NULL,
	"c_menu3" char(100) NULL,
	"c_menu4" char(100) NULL,
	"c_menu5" char(100) NULL,
	"c_menu6" char(100) NULL,
	"c_menu7" char(100) NULL,
	"c_menu8" char(100) NULL,
	"c_menu9" char(100) NULL,
	"c_menu10" char(100) NULL,
	"c_menu11" char(100) NULL,
	"c_menu12" char(100) NULL,
	"c_menu13" char(100) NULL,
	"c_menu14" char(100) NULL,
	"c_menu15" char(100) NULL,
	"c_menu16" char(100) NULL,
	"c_menu17" char(100) NULL,
	"c_menu18" char(100) NULL,
	"c_menu19" char(100) NULL,
	"c_menu20" char(100) NULL,
	"c_menu21" char(100) NULL,
	"c_modify_user" varchar(20) NULL,
	"d_modify_date" timestamp NULL,
	"n_deleted" integer NULL,
	"c_menu22" char(100) NULL,
	"c_menu23" char(100) NULL,
	"projectid" integer NULL,
	"c_menu24" varchar(100) NULL,
	"c_menu25" varchar(100) NULL,
	"c_menu26" varchar(100) NULL,
	"c_menu27" varchar(100) NULL,
	"c_menu28" varchar(100) NULL,
	"c_menu29" varchar(100) NULL,
	"c_menu30" varchar(100) NULL,
	"c_menu31" varchar(100) NULL,
	"c_menu32" varchar(100) NULL,
	"c_menu33" varchar(100) NULL,
	"c_menu34" varchar(100) NULL,
	"c_menu35" varchar(100) NULL,
	"c_menu36" varchar(100) NULL,
	"c_menu37" varchar(100) NULL,
	"c_menu38" varchar(100) NULL,
	"c_menu39" varchar(100) NULL,
	"c_menu40" varchar(100) NULL,
	"c_menu41" varchar(100) NULL,
	"c_menu42" varchar(100) NULL,
	"c_menu43" varchar(100) NULL,
	"c_menu44" varchar(100) NULL,
	"c_menu45" varchar(100) NULL,
	"c_menu46" varchar(100) NULL,
	"c_menu47" varchar(100) NULL,
	"c_menu48" varchar(100) NULL,
	"c_menu49" varchar(100) NULL,
	"c_menu50" varchar(100) NULL,
	"c_menu51" varchar(100) NULL,
	"n_dsca_default_Rights" integer NULL,
	"d_loginsertedate" timestamp NULL,
	"c_action" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_va_modification_count"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_va_modification_count"(
	"n_srno" bigint NULL,
	"n_row_update" integer NULL,
	"n_caption_update" integer NULL,
	"n_row_delete" integer NULL,
	"n_delete" integer NULL,
	"det_n_srno" bigint NULL,
	"lbl_change" bigint NULL,
	"mst_change" bigint NULL,
	"n_priority" integer NULL
) 
;
/****** Object:  Table "tbl_vac"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_vac"(
	"DIVISION" varchar(50) NULL,
	"REGION" varchar(50) NULL,
	"DESIGNATION" varchar(50) NULL,
	"VACANT" integer NULL
) 
;
/****** Object:  Table "tbl_vacancy_candidate_data"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_vacancy_candidate_data"(
	"n_id" SERIAL NOT NULL,
	"n_vacancy_id" bigint NULL,
	"n_form_id" integer NULL,
	"n_input_priority" integer NULL,
	"c_input_value" text NULL,
	"c_refered_fscode" varchar(20) NULL,
	"c_refered_empcode" varchar(20) NULL,
	"d_refered_on" timestamp NULL,
	"c_created" varchar(20) NULL,
	"d_modified" timestamp NULL,
	"c_modified" varchar(20) NULL,
PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "tbl_vacancy_candidate_form_details_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_vacancy_candidate_form_details_det"(
	"n_id" SERIAL NOT NULL,
	"n_form_id" bigint NULL,
	"c_caption_to_display" varchar(500) NULL,
	"n_input_priority" integer NULL,
	"n_length" integer NULL,
	"n_mandatory" integer NULL,
	"n_input_Type" integer NULL,
PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "tbl_vacancy_candidate_form_details_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_vacancy_candidate_form_details_mst"(
	"n_form_id" SERIAL NOT NULL,
	"c_formName" varchar(200) NULL,
	"c_description" varchar(500) NULL,
	"n_delete" smallint NULL,
	"d_created" timestamp NULL,
	"c_created" varchar(20) NULL,
	"d_modified" timestamp NULL,
	"c_modified" varchar(20) NULL,
PRIMARY KEY  
(
	"n_form_id" 
) 
) 
;
/****** Object:  Table "tbl_vacancy_candidate_form_input_type"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_vacancy_candidate_form_input_type"(
	"n_id" SERIAL NOT NULL,
	"c_input_type" varchar(100) NULL,
	"c_validation" varchar(200) NULL,
	"n_delete" integer NULL,
	"d_created" timestamp NULL,
PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "tbl_vacancy_display_designation_mapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_vacancy_display_designation_mapping"(
	"n_id" SERIAL NOT NULL,
	"n_vacancy_id" bigint NULL,
	"c_Designation_code" text NULL,
	"d_created" timestamp NULL,
PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "tbl_vacancy_display_location_mapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_vacancy_display_location_mapping"(
	"n_id" SERIAL NOT NULL,
	"n_vacancy_id" bigint NULL,
	"c_location_code" text NULL,
	"d_created" timestamp NULL,
PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "tbl_vacancy_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_vacancy_mst"(
	"n_id" SERIAL NOT NULL,
	"c_roles_resposibilities" varchar(1000) NULL,
	"c_expertise" varchar(500) NULL,
	"n_referal_bonus" bigint NULL,
	"n_number_of_vacancies" integer NULL,
	"c_additional_information" varchar(1000) NULL,
	"c_display_location_type" integer NULL,
	"d_active_from" timestamp NULL,
	"d_active_to" timestamp NULL,
	"n_active" integer NULL,
	"n_form_id" integer NULL,
	"d_created" timestamp NULL,
	"c_created" varchar(20) NULL,
	"d_modified" timestamp NULL,
	"c_modified" varchar(20) NULL,
	"c_state" varchar(30) NULL,
	"c_therapy" varchar(200) NULL,
PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "Tbl_version_error_log"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_version_error_log"(
	"N_srno" numeric(18, 0) NOT NULL,
	"V_ID" SERIAL NOT NULL,
	"C_message" varchar(300) NOT NULL,
	"D_Date" timestamp NOT NULL
) 
;
/****** Object:  Table "tbl_version_execution_errors"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_version_execution_errors"(
	"n_id" SERIAL NOT NULL,
	"c_version_no" varchar(50) NULL,
	"c_message" text NULL,
	"n_activity_status" integer NULL,
	"c_activity" text NULL,
	"d_created" timestamp NULL,
PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "Tbl_Version_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Version_Mst"(
	"V_ID" numeric(18, 5) NOT NULL,
	"V_Name" varchar(50) NOT NULL,
	"V_Type" numeric(3, 2) NOT NULL,
	"V_Date" timestamp NOT NULL,
 CONSTRAINT "PK_Tbl_Version_Mst" PRIMARY KEY  
(
	"V_ID" 
) 
) 
;
/****** Object:  Table "tbl_Video_approval"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Video_approval"(
	"n_title_code" numeric(18, 0) NOT NULL,
	"d_date" timestamp NULL,
	"c_status" varchar(5) NULL,
	"c_note" varchar(250) NULL,
	"c_enteredbyempcode" varchar(20) NOT NULL,
	"c_enteredbyfscode" varchar(20) NOT NULL,
	"n_reject_type" integer NULL,
	"n_fsType" integer NULL,
	"c_AprSts" varchar(20) NULL
) 
;
/****** Object:  Table "Tbl_Video_Def_Det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Video_Def_Det"(
	"c_code" varchar(10) NOT NULL,
	"c_emp_code" varchar(50) NOT NULL,
	"n_status" integer NOT NULL,
	"d_Assigned_Date" timestamp NOT NULL,
	"d_read_Date" timestamp NULL,
	"n_must_read" integer NOT NULL
) 
;
/****** Object:  Table "Tbl_video_desk_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_video_desk_det"(
	"n_srno" integer NULL,
	"c_code" varchar(30) NULL,
	"c_empcode" varchar(20) NULL,
	"c_region" varchar(20) NULL
) 
;
/****** Object:  Table "Tbl_Video_desk_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Video_desk_mst"(
	"C_CODE" varchar(10) NOT NULL,
	"C_NAME" varchar(50) NOT NULL,
	"C_EMP_CODE" varchar(10) NOT NULL,
	"N_DELETED" integer NOT NULL,
	"D_CREATED" timestamp NOT NULL,
	"D_MODIFIED" timestamp NULL,
	"C_MODIFIER" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_Video_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Video_Mst"(
	"C_Code" varchar(10) NOT NULL,
	"c_subject" varchar(100) NOT NULL,
	"d_entry_date" timestamp NOT NULL,
	"d_from_date" timestamp NOT NULL,
	"d_to_date" timestamp NULL,
	"n_active" boolean NOT NULL,
	"n_must_read" integer NOT NULL,
	"c_modifier" varchar(10) NULL,
	"d_modified" timestamp NULL,
	"d_created" timestamp NOT NULL,
	"n_deleted" integer NOT NULL,
	"c_VideoUploaded" varchar(50) NULL,
 CONSTRAINT "PK_tbl_Video_Mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "tbl_Video_multi_approval"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Video_multi_approval"(
	"n_srno" SERIAL NOT NULL,
	"n_type" integer NULL
) 
;
/****** Object:  Table "tbl_VideoUpload_title_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_VideoUpload_title_det"(
	"n_title_code" integer NULL,
	"c_caption" varchar(50) NULL,
	"c_imagepath" varchar(500) NULL,
	"n_srno" integer NULL,
	"n_deleted" integer NOT NULL,
	"n_sort_order" integer NOT NULL,
	"n_priority" integer NULL,
	"c_forward_to" varchar(20) NULL,
	"c_package_name" varchar(200) NULL,
	"c_title_code" varchar(10) NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL
) 
;
/****** Object:  Table "tbl_Village_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Village_Mst"(
	"C_Code" varchar(10) NOT NULL,
	"c_Name" varchar(200) NULL,
	"c_ShortName" varchar(50) NULL,
	"c_subarea_code" varchar(10) NULL,
	"n_status" integer NULL,
	"n_deleted" integer NULL,
	"d_created" timestamp NULL,
	"d_modified" timestamp NULL,
PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "Tbl_Visit_Frequency_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_Visit_Frequency_Mst"(
	"C_Code" varchar(20) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"n_deleted" integer NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
 CONSTRAINT "PK_Tbl_Visit_Frequency_Mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "Tbl_visualaid_desk_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_visualaid_desk_det"(
	"n_srno" integer NULL,
	"c_code" varchar(30) NULL,
	"c_empcode" varchar(20) NULL,
	"c_item_code" varchar(20) NULL
) 
;
/****** Object:  Table "Tbl_visualaid_desk_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_visualaid_desk_mst"(
	"C_CODE" varchar(10) NOT NULL,
	"C_NAME" varchar(50) NOT NULL,
	"C_EMP_CODE" varchar(20) NULL,
	"N_DELETED" integer NOT NULL,
	"D_CREATED" timestamp NOT NULL,
	"D_MODIFIED" timestamp NULL,
	"C_MODIFIER" varchar(50) NULL
) 
;
/****** Object:  Table "Tbl_wc_Fs_Mapping"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_wc_Fs_Mapping"(
	"n_SrNo" SERIAL NOT NULL,
	"c_wc_GrpCode" varchar(50) NULL,
	"n_FsType" smallint NULL,
	"n_Active" smallint NULL,
	"d_FromDate" timestamp NULL,
	"d_ToDate" timestamp NULL,
	"c_EnteredBy" varchar(10) NULL,
	"n_deleted" smallint NULL,
	"d_Created" timestamp NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"c_division" varchar(1000) NULL,
	"c_region" varchar(1000) NULL,
	"n_frequency" smallint NULL,
	"n_applicableday" smallint NULL,
	"n_Survey_Type" integer NULL
) 
;
/****** Object:  Table "tbl_wc_Question_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_wc_Question_Mst"(
	"n_QuestionTypeCode" integer NULL,
	"c_description" varchar(500) NULL,
	"n_deleted" integer NULL,
	"c_ControlType" varchar(50) NULL,
	"n_ValidationType" varchar(5) NULL
) 
;
/****** Object:  Table "tbl_wc_Question_Mst_Type_Det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_wc_Question_Mst_Type_Det"(
	"n_QuestionTypeCode" integer NULL,
	"n_rowid" integer NULL,
	"c_Description" varchar(500) NULL,
	"n_deleted" integer NULL
) 
;
/****** Object:  Table "Tbl_wc_Questiongrp_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_wc_Questiongrp_det"(
	"N_SrNo" integer NOT NULL,
	"C_wc_questionid" varchar(10) NULL,
	"n_visible_to_downlevel" smallint NULL,
	"n_Quesorderno" integer NULL,
	"n_feedbackquestion" integer NULL
) 
;
/****** Object:  Table "Tbl_wc_QuestionGrp_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_wc_QuestionGrp_Mst"(
	"N_SrNo" SERIAL NOT NULL,
	"C_Code" varchar(10) NULL,
	"C_Name" varchar(100) NULL,
	"C_Description" varchar(1000) NULL,
	"n_Type" smallint NULL,
	"N_deleted" smallint NULL,
	"D_Created" timestamp NULL,
	"d_Modified" timestamp NULL,
	"c_Modifier" varchar(10) NULL,
	"n_assesment_startdate" integer NULL,
	"n_assesment_enddate" integer NULL,
	"n_mandatory_days" integer NULL,
	"n_applicable" integer NOT NULL,
 CONSTRAINT "PK_Tbl_wc_QuestionGrp_Mst" PRIMARY KEY  
(
	"N_SrNo" 
) 
) 
;
/****** Object:  Table "Tbl_wc_QuestionMst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_wc_QuestionMst"(
	"N_SrNo" SERIAL NOT NULL,
	"C_Code" varchar(10) NULL,
	"C_Name" varchar(100) NULL,
	"C_ShortName" varchar(50) NULL,
	"C_Description" varchar(1000) NULL,
	"N_Active" smallint NULL,
	"N_deleted" smallint NULL,
	"D_Created" timestamp NULL,
	"d_Modified" timestamp NULL,
	"c_Modifier" varchar(10) NULL,
	"n_QuestionType" integer NULL,
	"c_Choice1" varchar(100) NULL,
	"c_Choice2" varchar(100) NULL,
	"c_Choice3" varchar(100) NULL,
	"c_Choice4" varchar(100) NULL,
	"c_Choice5" varchar(100) NULL,
	"N_textdata" integer NULL,
	"n_orderno" integer NULL
) 
;
/****** Object:  Table "Tbl_wc_Res_Det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_wc_Res_Det"(
	"n_McrNo" integer NOT NULL,
	"c_Dsc_Code" varchar(10) NULL,
	"c_Question_Id" varchar(10) NULL,
	"n_Mark" varchar(100) NULL,
	"n_Applicable" smallint NULL,
	"n_Type" smallint NULL,
	"c_QuestionGrpCode" varchar(10) NULL,
	"n_wc_Mapping_SrNo" integer NULL,
	"c_Comments" varchar(200) NULL
) 
;
/****** Object:  Table "Tbl_wc_Res_Mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "Tbl_wc_Res_Mst"(
	"n_McrNo" integer NOT NULL,
	"c_EnteredBy" varchar(10) NULL,
	"d_Date" timestamp NULL,
	"n_Type" smallint NULL
) 
;
/****** Object:  Table "tbl_Week_holidays"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_Week_holidays"(
	"c_regionfscode" varchar(50) NULL,
	"c_fscode" varchar(50) NULL,
	"c_weekholiday" varchar(100) NULL
) 
;
/****** Object:  Table "tbl_wh_callavg_dashboard_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_wh_callavg_dashboard_det"(
	"c_fscode" varchar(100) NOT NULL,
	"n_month" integer NOT NULL,
	"n_year" integer NOT NULL,
	"n_tcallVisit" integer NULL,
	"d1" integer NULL,
	"d2" integer NULL,
	"d3" integer NULL,
	"d4" integer NULL,
	"d5" integer NULL,
	"d6" integer NULL,
	"d7" integer NULL,
	"d8" integer NULL,
	"d9" integer NULL,
	"d10" integer NULL,
	"d11" integer NULL,
	"d12" integer NULL,
	"d13" integer NULL,
	"d14" integer NULL,
	"d15" integer NULL,
	"d16" integer NULL,
	"d17" integer NULL,
	"d18" integer NULL,
	"d19" integer NULL,
	"d20" integer NULL,
	"d21" integer NULL,
	"d22" integer NULL,
	"d23" integer NULL,
	"d24" integer NULL,
	"d25" integer NULL,
	"d26" integer NULL,
	"d27" integer NULL,
	"d28" integer NULL,
	"d29" integer NULL,
	"d30" integer NULL,
	"d31" integer NULL,
 CONSTRAINT "PK_tbl_wh_callavg_dashboard_det" PRIMARY KEY  
(
	"c_fscode" ,
	"n_month" ,
	"n_year" 
) 
) 
;
/****** Object:  Table "tbl_wh_callavg_dashboard_mst"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_wh_callavg_dashboard_mst"(
	"c_fscode" varchar(100) NULL,
	"n_month" integer NULL,
	"n_year" integer NULL,
	"n_tcallVisit" integer NULL,
	"d1" integer NULL,
	"d2" integer NULL,
	"d3" integer NULL,
	"d4" integer NULL,
	"d5" integer NULL,
	"d6" integer NULL,
	"d7" integer NULL,
	"d8" integer NULL,
	"d9" integer NULL,
	"d10" integer NULL,
	"d11" integer NULL,
	"d12" integer NULL,
	"d13" integer NULL,
	"d14" integer NULL,
	"d15" integer NULL,
	"d16" integer NULL,
	"d17" integer NULL,
	"d18" integer NULL,
	"d19" integer NULL,
	"d20" integer NULL,
	"d21" integer NULL,
	"d22" integer NULL,
	"d23" integer NULL,
	"d24" integer NULL,
	"d25" integer NULL,
	"d26" integer NULL,
	"d27" integer NULL,
	"d28" integer NULL,
	"d29" integer NULL,
	"d30" integer NULL,
	"d31" integer NULL
) 
;
/****** Object:  Table "tbl_wh_callavg_report"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_wh_callavg_report"(
	"fscode" char(10) NULL,
	"empcode" varchar(10) NULL,
	"n_month" integer NULL,
	"n_year" integer NULL,
	"n_working_days" integer NULL,
	"n_leave" integer NULL,
	"n_NFWdays" integer NULL,
	"n_FWdays" integer NULL,
	"N_daysworked" integer NULL,
	"N_Mcl_drcount" integer NULL,
	"n_Tot_Dr_calls" integer NULL,
	"n_dr_visited" integer NULL,
	"n_dr_coverage" numeric(18, 2) NULL,
	"n_dr_missed" integer NULL,
	"n_dr_missed_calls" integer NULL,
	"n_dr_call_avg" numeric(18, 2) NULL,
	"n_chem_visited" integer NULL,
	"n_Chem_Call_Avg" numeric(18, 2) NULL,
	"n_pob" numeric(15, 2) NULL,
	"n_stk_visited" integer NULL,
	"n_Joint_work" integer NULL,
	"n_Dr_add" integer NULL,
	"n_Dr_del" integer NULL,
	"n_holiday" integer NULL,
	"n_Dr_Met" integer NULL,
	"n_MAN_Tot_Dr_calls" integer NULL,
	"n_MGR_NFWdays" integer NULL,
	"n_MGR_FWdays" integer NULL,
	"n_MGR_dr_call_avg" numeric(18, 2) NULL,
	"n_MGR_dr_coverage" numeric(18, 2) NULL,
	"n_MGR_dr_missed" integer NULL,
	"n_MGR_dr_missed_calls" integer NULL,
	"n_MGR_Chem_Call_Avg" numeric(18, 2) NULL,
	"n_MGR_Joint_work" integer NULL,
	"n_MGR_stk_visited" integer NULL,
	"n_MGR_pob" integer NULL,
	"n_Dr_Lca" integer NULL,
	"n_mgr_dr_pob" numeric(9, 2) NULL,
	"n_dr_pob" numeric(9, 2) NULL,
	"N_mgr_Mcl_drcount" integer NULL,
	"n_MGR_Dr_Met_Morning" numeric(18, 0) NULL,
	"n_MGR_Dr_Met_Evng" numeric(18, 0) NULL,
	"n_Dr_Met_Morning" numeric(18, 0) NULL,
	"n_Dr_Met_Evng" numeric(18, 0) NULL,
	"n_TP_Dev_Days" numeric(18, 0) NULL,
	"n_HQ_Working" numeric(18, 0) NULL,
	"n_EX_Working" numeric(18, 0) NULL,
	"n_OS_Working" numeric(18, 0) NULL,
	"n_MGR_TP_Dev_Days" numeric(18, 0) NULL,
	"n_MR_NFWdays" integer NULL,
	"n_MR_FWdays" integer NULL,
	"n_MR_TP_Dev_Days" numeric(18, 0) NULL,
	"n_MR_HQ_Working" numeric(18, 0) NULL,
	"n_MR_EX_Working" numeric(18, 0) NULL,
	"n_MR_OS_Working" numeric(18, 0) NULL,
	"n_MR_Dr_Met_Morning" numeric(18, 0) NULL,
	"n_MR_Dr_Met_Evng" numeric(18, 0) NULL,
	"n_MGR_HQ_Working" numeric(18, 0) NULL,
	"n_MGR_EX_Working" numeric(18, 0) NULL,
	"n_MGR_OS_Working" numeric(18, 0) NULL,
	"n_working_days_bw_twodates" integer NULL,
	"n_Chem_pob" numeric(15, 2) NULL,
	"n_Add_dr_Visited" integer NULL,
	"n_Dcr_Mcr_Submitted_Count" integer NULL,
	"n_mgr_chem_visited" integer NULL
) 
;
/****** Object:  Table "tbl_wh_dco_visit_LastQuarter"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_wh_dco_visit_LastQuarter"(
	"doc" integer NULL,
	"grade" varchar(30) NULL,
	"n_noof_visit" integer NULL,
	"c_fscode" varchar(7) NOT NULL
) 
;
/****** Object:  Table "tbl_wh_dco_visit_previousMonth"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_wh_dco_visit_previousMonth"(
	"doc" integer NULL,
	"grade" varchar(30) NULL,
	"n_noof_visit" integer NULL,
	"c_fscode" varchar(7) NOT NULL
) 
;
/****** Object:  Table "tbl_wh_dco_visit_secondpreviousMonth"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_wh_dco_visit_secondpreviousMonth"(
	"doc" integer NULL,
	"grade" varchar(30) NULL,
	"n_noof_visit" integer NULL,
	"c_fscode" varchar(7) NOT NULL
) 
;
/****** Object:  Table "tbl_wh_div_data"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_wh_div_data"(
	"n_id" SERIAL NOT NULL,
	"c_fs_code" varchar(20) NULL,
	"c_div_code_all" varchar(1000) NULL,
	"c_div_name_all" varchar(3000) NULL,
	"c_div_code_today" varchar(1000) NULL,
	"c_div_name_today" varchar(3000) NULL,
PRIMARY KEY  
(
	"n_id" 
) 
) 
;
/****** Object:  Table "tbl_wh_doctor_visit_days"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_wh_doctor_visit_days"(
	"c_fs_code" varchar(10) NOT NULL,
	"n_year" integer NOT NULL,
	"c_mcl_no" varchar(20) NULL,
	"c_region" varchar(10) NULL,
	"c_area_code" varchar(10) NULL,
	"c_doc_code" varchar(10) NOT NULL,
	"c_subarea_code" varchar(10) NULL,
	"n_noof_visit" integer NULL,
	"c_grade_code" varchar(10) NULL,
	"c_JAN" varchar(75) NULL,
	"c_FEB" varchar(75) NULL,
	"c_MAR" varchar(75) NULL,
	"c_APR" varchar(75) NULL,
	"c_MAY" varchar(75) NULL,
	"c_JUN" varchar(75) NULL,
	"c_JUL" varchar(75) NULL,
	"c_AUG" varchar(75) NULL,
	"c_SEP" varchar(75) NULL,
	"c_OCT" varchar(75) NULL,
	"c_NOV" varchar(75) NULL,
	"c_DEC" varchar(75) NULL,
	"d_last_dcr_date" timestamp NULL,
	"c_Mcr_JAN" varchar(75) NULL,
	"c_Mcr_FEB" varchar(75) NULL,
	"c_Mcr_MAR" varchar(75) NULL,
	"c_Mcr_APR" varchar(75) NULL,
	"c_Mcr_MAY" varchar(75) NULL,
	"c_Mcr_JUN" varchar(75) NULL,
	"c_Mcr_JUL" varchar(75) NULL,
	"c_Mcr_AUG" varchar(75) NULL,
	"c_Mcr_SEP" varchar(75) NULL,
	"c_Mcr_OCT" varchar(75) NULL,
	"c_Mcr_NOV" varchar(75) NULL,
	"c_Mcr_DEC" varchar(75) NULL,
	"c_DCD_JAN" varchar(75) NULL,
	"c_DCD_FEB" varchar(75) NULL,
	"c_DCD_MAR" varchar(75) NULL,
	"c_DCD_APR" varchar(75) NULL,
	"c_DCD_MAY" varchar(75) NULL,
	"c_DCD_JUN" varchar(75) NULL,
	"c_DCD_JUL" varchar(75) NULL,
	"c_DCD_AUG" varchar(75) NULL,
	"c_DCD_SEP" varchar(75) NULL,
	"c_DCD_OCT" varchar(75) NULL,
	"c_DCD_NOV" varchar(75) NULL,
	"c_DCD_DEC" varchar(75) NULL
) 
;
/****** Object:  Table "tbl_wh_Empwisedocgradecalls"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_wh_Empwisedocgradecalls"(
	"fscode" varchar(10) NULL,
	"empcode" varchar(10) NULL,
	"n_month" integer NULL,
	"n_year" integer NULL,
	"c_gradecode" char(10) NULL,
	"c_gradename" char(20) NULL,
	"_DR_NOT_MET" char(10) NULL,
	"_DR_MET_ONCE" char(10) NULL,
	"_DR_MET_TWICE" char(10) NULL,
	"_DR_MET_MORE_TWICE" char(10) NULL,
	"_TOTAL_CALLS_MADE" char(10) NULL,
	"_COVERAGE" char(10) NULL,
	"mgr_dr_not_met" integer NULL,
	"mgr_dr_met_once" integer NULL,
	"mgr_dr_met_twice" integer NULL,
	"mgr_dr_met_more_twice" integer NULL,
	"mgr_total_calls_made" integer NULL,
	"mgr_coverage" char(10) NULL,
	"n_mcldoc" integer NULL,
	"n_mgr_mcldoc" integer NULL,
	"MR_DR_NOT_MET" char(10) NULL,
	"MR_DR_MET_ONCE" char(10) NULL,
	"MR_DR_MET_TWICE" char(10) NULL,
	"MR_DR_MET_MORE_TWICE" char(10) NULL,
	"MR_TOTAL_CALLS_MADE" char(10) NULL,
	"_n_MR_mcldoc" integer NULL,
	"MR_coverage" char(10) NULL
) 
;
/****** Object:  Table "tbl_wh_Empwisedocgradecalls_core_product_wise_visit"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_wh_Empwisedocgradecalls_core_product_wise_visit"(
	"fscode" varchar(20) NULL,
	"empcode" varchar(20) NULL,
	"itemcode" varchar(20) NULL,
	"itemname" varchar(200) NULL,
	"mcl" integer NULL,
	"n_noof_visit" integer NULL,
	"grade_code" varchar(20) NULL,
	"doc_count" integer NULL,
	"visit" integer NULL,
	"MET_LESS" integer NULL,
	"MET" integer NULL,
	"MET_MORE" integer NULL,
	"year" integer NULL,
	"month" integer NULL,
	"mcl_itemwise" integer NULL,
	"visited_exact_or_more" integer NULL
) 
;
/****** Object:  Table "tbl_wh_fs_month_last_update"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_wh_fs_month_last_update"(
	"c_fs_code" varchar(10) NULL,
	"n_month" integer NULL,
	"n_year" integer NULL,
	"d_last_sync_date" timestamp NULL,
	"n_type" integer NULL
) 
;
/****** Object:  Table "tbl_wh_fs_month_last_update_temp"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_wh_fs_month_last_update_temp"(
	"c_fs_code" varchar(10) NULL,
	"n_month" integer NULL,
	"n_year" integer NULL,
	"d_last_sync_date" timestamp NULL,
	"n_type" integer NULL
) 
;
/****** Object:  Table "tbl_wh_fswise_monthwise_worktype_det"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_wh_fswise_monthwise_worktype_det"(
	"n_month" integer NULL,
	"n_year" integer NULL,
	"c_fs_code" varchar(10) NULL,
	"c_work_type" varchar(10) NULL,
	"n_count" integer NULL
) 
;
/****** Object:  Table "tbl_wh_FSwisedoccategorycalls"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_wh_FSwisedoccategorycalls"(
	"fscode" char(50) NULL,
	"n_month" integer NULL,
	"n_year" integer NULL,
	"c_gradecode" char(10) NULL,
	"c_gradename" char(50) NULL,
	"_DR_NOT_MET" char(10) NULL,
	"_DR_MET_ONCE" char(10) NULL,
	"_DR_MET_TWICE" char(10) NULL,
	"_DR_MET_MORE_TWICE" char(10) NULL,
	"_TOTAL_CALLS_MADE" char(10) NULL,
	"_COVERAGE" char(10) NULL
) 
;
/****** Object:  Table "tbl_wh_FSwisedocgradecalls"    Script Date: 5/20/2026 2:30:22 PM ******/
;
;
CREATE TABLE "tbl_wh_FSwisedocgradecalls"(
	"fscode" char(10) NULL,
	"n_month" integer NULL,
	"n_year" integer NULL,
	"c_gradecode" char(10) NULL,
	"c_gradename" char(20) NULL,
	"_DR_NOT_MET" char(10) NULL,
	"_DR_MET_ONCE" char(10) NULL,
	"_DR_MET_TWICE" char(10) NULL,
	"_DR_MET_MORE_TWICE" char(10) NULL,
	"_TOTAL_CALLS_MADE" char(10) NULL,
	"_COVERAGE" char(10) NULL
) 
;
/****** Object:  Table "tbl_wh_FSwiseMonthwiseSummary"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "tbl_wh_FSwiseMonthwiseSummary"(
	"fscode" char(10) NULL,
	"n_month" integer NULL,
	"n_year" integer NULL,
	"n_working_days" integer NULL,
	"n_leave" integer NULL,
	"n_NFWdays" integer NULL,
	"n_FWdays" integer NULL,
	"N_daysworked" integer NULL,
	"N_Mcl_drcount" integer NULL,
	"n_Tot_Dr_calls" integer NULL,
	"n_dr_visited" integer NULL,
	"n_dr_coverage" numeric(18, 2) NULL,
	"n_dr_missed" integer NULL,
	"n_dr_missed_calls" integer NULL,
	"n_dr_call_avg" numeric(18, 2) NULL,
	"n_chem_visited" integer NULL,
	"n_Chem_Call_Avg" numeric(18, 2) NULL,
	"n_pob" integer NULL,
	"n_stk_visited" integer NULL,
	"n_Joint_work" integer NULL,
	"n_Dr_add" integer NULL,
	"n_Dr_del" integer NULL,
	"n_holiday" integer NULL,
	"n_Dr_Met" integer NULL,
	"n_MAN_Tot_Dr_calls" integer NULL,
	"n_MGR_NFWdays" integer NULL,
	"n_MGR_FWdays" integer NULL,
	"n_MGR_dr_call_avg" numeric(18, 2) NULL,
	"n_MGR_dr_coverage" numeric(18, 2) NULL,
	"n_MGR_dr_missed" integer NULL,
	"n_MGR_dr_missed_calls" integer NULL,
	"n_MGR_Chem_Call_Avg" numeric(18, 2) NULL,
	"n_MGR_Joint_work" integer NULL,
	"n_MGR_stk_visited" integer NULL,
	"n_MGR_pob" integer NULL,
	"n_Dr_Lca" integer NULL,
	"n_FS_Tot_Dr_calls" integer NULL
) 
;
/****** Object:  Table "tbl_wh_fswiseprisecsalestargetqtyvalue"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "tbl_wh_fswiseprisecsalestargetqtyvalue"(
	"c_fscode" varchar(20) NULL,
	"n_prisec" integer NULL,
	"c_targettype" varchar(20) NULL,
	"n_month" integer NULL,
	"n_year" integer NULL,
	"n_salesqty" numeric(20, 2) NULL,
	"n_salesvalue" numeric(20, 2) NULL,
	"n_targetqty" numeric(20, 2) NULL,
	"n_targetvalue" numeric(20, 2) NULL,
	"n_Closingqty" numeric(20, 2) NULL,
	"n_Closingvalue" numeric(20, 2) NULL
) 
;
/****** Object:  Table "tbl_wh_Primary_Sales_Target"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "tbl_wh_Primary_Sales_Target"(
	"n_sales" numeric(19, 2) NULL,
	"n_target" numeric(19, 2) NULL,
	"c_monthname" varchar(10) NULL,
	"n_month" integer NULL,
	"n_year" integer NULL,
	"c_fscode" varchar(10) NULL
) 
;
/****** Object:  Table "tbl_wh_Secondary_Sales_Target"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "tbl_wh_Secondary_Sales_Target"(
	"n_sales" numeric(19, 2) NULL,
	"n_target" numeric(19, 2) NULL,
	"c_monthname" varchar(10) NULL,
	"n_month" integer NULL,
	"n_year" integer NULL,
	"c_fscode" varchar(10) NULL
) 
;
/****** Object:  Table "tbl_wh_settings"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "tbl_wh_settings"(
	"n_doctor_visit_current_month" integer NULL,
	"c_secondarySales_LastUpdated_Date" varchar(20) NULL,
	"c_primarySales_LastUpdated_Date" varchar(20) NULL,
	"c_fscode" varchar(50) NULL
) 
;
/****** Object:  Table "tbl_work_contact_setup_det"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "tbl_work_contact_setup_det"(
	"n_setup_id" integer NULL,
	"c_RegCode" text NULL,
	"n_mandatory" varchar(20) NULL
) 
;
/****** Object:  Table "tbl_work_contact_setup_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "tbl_work_contact_setup_mst"(
	"n_setup_id" SERIAL NOT NULL,
	"c_type" varchar(50) NULL,
	"c_DivCode" text NULL,
	"d_created" timestamp NULL,
	"n_deleted" integer NULL,
	"c_FsDivision" varchar(100) NULL,
	"c_FsRegion" varchar(100) NULL,
	"c_FsArea" varchar(100) NULL,
	"n_FsDesig" varchar(10) NULL,
	"c_Fs_Fscode" varchar(100) NULL,
PRIMARY KEY  
(
	"n_setup_id" 
) 
) 
;
/****** Object:  Table "Tbl_WorkType"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "Tbl_WorkType"(
	"c_code" char(10) NOT NULL,
	"c_name" varchar(50) NULL,
	"c_sh_name" char(5) NULL,
	"n_flag" integer NOT NULL,
	"n_Chflag" integer NOT NULL,
	"n_stockflag" integer NOT NULL,
	"n_deleted" smallint NOT NULL,
	"c_modifier" varchar(10) NULL,
	"N_Status" integer NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NOT NULL,
	"n_chemorder" integer NULL,
	"n_OthersFlag" integer NULL,
	"n_campflag" integer NULL,
	"n_PatientFlag" integer NULL,
	"n_DoctorMandatory" integer NULL,
	"n_HospitalFlag" integer NULL,
	"n_workcontact" integer NULL,
	"n_DoctorMandatory_mcr" integer NULL,
	"n_group_activity" integer NULL,
	"c_division" varchar(2000) NULL,
 CONSTRAINT "PK_Tbl_WorkType" PRIMARY KEY  
(
	"c_code" 
) 
) 
;
/****** Object:  Table "tbl_workWith_mtp_sub_det"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "tbl_workWith_mtp_sub_det"(
	"n_srno" numeric(18, 0) NOT NULL,
	"N_MTPRowId" numeric(18, 0) NOT NULL,
	"c_workwith_Fs_code" varchar(50) NOT NULL,
	"c_doc_code" varchar(10) NOT NULL
) 
;
/****** Object:  Table "tbl_workWith_multiple"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "tbl_workWith_multiple"(
	"N_srno" numeric(9, 0) NULL,
	"C_fscode_parent" varchar(10) NULL
) 
;
/****** Object:  Table "tbl_workWith_multiple_log"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "tbl_workWith_multiple_log"(
	"N_srno" numeric(9, 0) NULL,
	"C_fscode_parent" varchar(10) NULL
) 
;
/****** Object:  Table "tbl_workWith_multiple_MTP"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "tbl_workWith_multiple_MTP"(
	"N_srno" numeric(9, 0) NOT NULL,
	"C_fscode_parent" varchar(10) NOT NULL,
	"c_work_type" varchar(10) NOT NULL,
	"D_Date" timestamp NOT NULL,
	"n_copy" integer NULL
) 
;
/****** Object:  Table "tbl_workWith_multiple_MTP_STP"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "tbl_workWith_multiple_MTP_STP"(
	"N_srno" numeric(9, 0) NOT NULL,
	"C_fscode_parent" varchar(10) NOT NULL,
	"c_work_type" varchar(10) NOT NULL,
	"n_dayof_week" varchar(20) NOT NULL,
	"n_week" numeric(18, 0) NOT NULL
) 
;
/****** Object:  Table "tbl_workWith_multiple_PMT"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "tbl_workWith_multiple_PMT"(
	"N_srno" numeric(9, 0) NULL,
	"C_fscode_parent" varchar(10) NULL
) 
;
/****** Object:  Table "Tbl_Zone_Mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "Tbl_Zone_Mst"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"C_Sh_Name" varchar(7) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
 CONSTRAINT "PK_Tbl_Zone_Mst" PRIMARY KEY  
(
	"C_Code" 
) 
) 
;
/****** Object:  Table "Tbl_Zone_Mst_temp"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "Tbl_Zone_Mst_temp"(
	"C_Code" varchar(10) NULL,
	"C_Name" varchar(50) NULL,
	"C_Sh_Name" varchar(20) NULL,
	"n_deleted" numeric(1, 0) NULL,
	"d_created" varchar(30) NULL,
	"d_modified" varchar(30) NULL,
	"c_modifier" varchar(20) NULL
) 
;
/****** Object:  Table "tblCollateralItem"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "tblCollateralItem"(
	"n_SetupCode" varchar(50) NULL,
	"c_ItemCode" varchar(50) NULL,
	"n_Qty" numeric(18, 2) NULL
) 
;
/****** Object:  Table "tblcompanysettbackup"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "tblcompanysettbackup"(
	"c_company_code" varchar(50) NOT NULL,
	"c_company_name" varchar(40) NOT NULL,
	"d_lbdt" timestamp NULL,
	"c_dbip" varchar(25) NOT NULL,
	"c_dbname" varchar(25) NOT NULL,
	"c_dbuser" varchar(25) NOT NULL,
	"c_dbpwd" varchar(25) NOT NULL,
	"c_dbdsn" varchar(25) NOT NULL,
	"c_SfaCompanyID" varchar(20) NULL,
	"c_RegistrationPassword" varchar(20) NULL,
	"n_mobile_user" integer NULL,
	"N_SMSFlag" boolean NULL,
	"c_sub_company_code" varchar(4) NULL,
	"n_emailflg" boolean NULL,
	"projectid" integer NULL,
	"c_company_url" varchar(500) NULL,
	"c_mob_browser_url" varchar(500) NULL,
	"n_order_mail" integer NULL,
	"c_go4plus_redirection_url" varchar(200) NULL,
	"N_htmldownloadflg" integer NULL,
	"d_tokennumber__ldate_integration_qlikview" timestamp NULL,
	"c_tokennumber_integration_qlikview" varchar(100) NULL,
	"c_registrationKey_integration_qlikview" varchar(100) NULL,
	"n_dcrsmsflag" integer NULL,
	"c_android_device_url" varchar(250) NULL,
	"n_LMSFlg" integer NULL,
	"n_BdayFlag" integer NULL,
	"n_AnniversaryFlag" integer NULL,
	"n_MTPflag" integer NULL,
	"c_C2code" varchar(10) NULL,
	"n_encrypt" integer NULL,
	"n_SingleSignOn" integer NULL,
	"n_SingleSignOnLoginType" integer NULL,
	"c_SingleSignOnLogoutUrl" varchar(150) NULL,
	"n_EnableNormalLogin" integer NULL,
	"c_MoodleLMSLink" text NULL,
	"n_autoleaveapproval" integer NULL
) 
;
/****** Object:  Table "tblerror"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "tblerror"(
	"code" varchar(200) NULL
) 
;
/****** Object:  Table "tblsettingsbckup"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "tblsettingsbckup"(
	"N_Type" integer NULL,
	"C_Code" char(10) NULL,
	"N_Days" integer NULL,
	"n_leave_days" integer NULL,
	"n_flag" integer NULL
) 
;
/****** Object:  Table "Temp_fielactivity_HTMLDownload"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "Temp_fielactivity_HTMLDownload"(
	"Zone" varchar(500) NULL,
	"Region" varchar(500) NULL,
	"Area" varchar(500) NULL,
	"Fs_name" varchar(500) NULL,
	"DCRDate" varchar(10) NULL,
	"DcrEntryDate" varchar(10) NULL,
	"WorkType" varchar(50) NULL,
	"Planned" varchar(500) NULL,
	"Worked" varchar(500) NULL,
	"MCL" integer NULL,
	"NONMCL" integer NULL,
	"Chemist_Count" integer NULL,
	"Chemist_POB" integer NULL,
	"WorkedWith" text NULL,
	"Calendar_Days" integer NULL,
	"Field_WorkDays" integer NULL,
	"NonField_WorkDays" integer NULL,
	"Leave_Days" integer NULL,
	"Holidays" integer NULL,
	"DCRMCRnotreceived" integer NULL,
	"Missed_Doctors" integer NULL
) 
;
/****** Object:  Table "temp_mob_dcr"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "temp_mob_dcr"(
	"compId" varchar(50) NULL,
	"fscode" varchar(50) NULL,
	"details" varchar(500) NULL,
	"doc_chem_stk" text NULL,
	"c_time" varchar(100) NULL
) 
;
/****** Object:  Table "temp_TBL_DOCINV_SETUP"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "temp_TBL_DOCINV_SETUP"(
	"n_srno" numeric(18, 0) NOT NULL,
	"c_name" varchar(50) NULL,
	"n_inv_mode_min" numeric(18, 0) NULL,
	"n_inv_mode_max" numeric(18, 0) NULL,
	"d_date_from" timestamp NULL,
	"d_date_to" timestamp NULL,
	"n_months" integer NULL,
	"n_roi_on" integer NULL,
	"n_roi_value" integer NULL,
	"n_roi_det" integer NULL,
	"n_roi_reconci" integer NULL,
	"c_budget_view" varchar(20) NULL,
	"c_budget_validate" varchar(20) NULL,
	"n_mcl_mand" integer NULL,
	"n_drph" integer NULL,
	"n_update_drmst" integer NULL,
	"n_email_id" integer NULL,
	"n_commit_dr" integer NULL,
	"n_req_dr" integer NULL,
	"n_rmks" integer NULL,
	"n_curr_sale" integer NULL,
	"n_disp_sale" integer NULL,
	"n_visit_det" integer NULL,
	"n_docprof_months" integer NULL,
	"n_Fs_invhistory" integer NULL,
	"n_dr_invhistory" integer NULL,
	"n_inv_productrate" integer NULL,
	"n_product_rate" integer NULL,
	"n_single_approval" integer NULL,
	"n_upload" integer NULL,
	"c_status" varchar(20) NULL,
	"c_ratetype" varchar(10) NULL,
	"n_actualrate" numeric(18, 2) NULL,
	"n_print" integer NULL,
	"n_deleted" integer NULL,
	"c_modifier" varchar(20) NULL,
	"d_modified" timestamp NULL,
	"c_print_opt" varchar(20) NULL,
	"c_req_editable" varchar(50) NULL,
	"c_rcpa_view" varchar(50) NULL
) 
;
/****** Object:  Table "temp_tbl_fs_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "temp_tbl_fs_mst"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"N_Type" numeric(18, 0) NOT NULL,
	"C_Grade" char(10) NULL,
	"C_Qualification" varchar(30) NULL,
	"C_Add_1" varchar(50) NULL,
	"C_Add_2" varchar(50) NULL,
	"C_Add_3" varchar(50) NULL,
	"C_Add_4" varchar(50) NULL,
	"C_Pin" char(10) NULL,
	"C_Phone" char(20) NULL,
	"C_Fax" char(20) NULL,
	"C_Category" char(10) NULL,
	"C_Area_Code" varchar(10) NOT NULL,
	"C_Parent" char(10) NULL,
	"C_EmpNo" varchar(10) NOT NULL,
	"C_Desc" varchar(50) NULL,
	"D_DOB" timestamp NULL,
	"D_DOJ" timestamp NULL,
	"D_DOW" timestamp NULL,
	"n_Status" integer NULL,
	"C_Email_ID" varchar(50) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"N_ptype" integer NULL,
	"c_div_code" varchar(10) NULL
) 
;
/****** Object:  Table "temp_tbl_menu_items"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "temp_tbl_menu_items"(
	"itemid" integer NOT NULL,
	"menuid" integer NULL,
	text varchar(100) NULL,
	"url" varchar(255) NULL,
	"showmenu" varchar(50) NULL,
	bytea varchar(200) NULL,
	"overimage" varchar(200) NULL,
	"flag" integer NULL,
	"n_visible" integer NULL,
	"N_Autocode_Flag" integer NULL,
	"SFARole" varchar(5) NOT NULL,
	"n_rights_flag" integer NOT NULL,
	"projectid" integer NULL,
	"c_Disply_Header" varchar(200) NULL,
	"n_Disply_Header_flag" boolean NULL
) 
;
/****** Object:  Table "temp_tbl_menus"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "temp_tbl_menus"(
	"menuid" integer NOT NULL,
	"projectid" integer NULL,
	"styleid" integer NULL,
	"name" varchar(50) NULL,
	"alwaysvisible" integer NULL,
	"orientation" integer NULL,
	"overflow" varchar(50) NULL,
	"margin" integer NULL,
	"top" varchar(50) NULL,
	"left" integer NULL
) 
;
/****** Object:  Table "temp_tbl_sms"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "temp_tbl_sms"(
	"c_mob_no" varchar(20) NULL,
	"c_msg" text NULL,
	"c_empcode" varchar(10) NULL
) 
;
/****** Object:  Table "temp_unlockdata_log"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "temp_unlockdata_log"(
	"fscode" varchar(50) NULL,
	"d_createddate" timestamp NULL,
	"d_createdfs" varchar(50) NULL
) 
;
/****** Object:  Table "tempK"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "tempK"(
	"va" varchar(200) NULL
) 
;
/****** Object:  Table "tempstpupdate"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "tempstpupdate"(
	"Region Name" varchar(255) NULL,
	"STPNo" double precision NULL,
	"rowid" double precision NULL,
	"Division" varchar(255) NULL,
	"FS CODE" varchar(255) NULL,
	"FS NAME" varchar(255) NULL,
	"HQ CODE" varchar(255) NULL,
	"HQ NAME" varchar(255) NULL,
	"Based At Code" varchar(255) NULL,
	"Based At Name" varchar(255) NULL,
	"STP Date From" timestamp NULL,
	"STP Date To" timestamp NULL,
	"HQDA" double precision NULL,
	"EXDA" double precision NULL,
	"OSDA" double precision NULL,
	"TAType" double precision NULL,
	"RateKM" double precision NULL,
	"From Area Code" varchar(255) NULL,
	"From Area Name" varchar(255) NULL,
	"ToAreaCode" varchar(255) NULL,
	"ToAreaname" varchar(255) NULL,
	"A grade doct count" double precision NULL,
	"B grade doctor count" double precision NULL,
	"chemist count" double precision NULL,
	"stockiest count" double precision NULL,
	"curent business" double precision NULL,
	"expected business" double precision NULL,
	"AreaType" varchar(255) NULL,
	"Distance" double precision NULL,
	"TA" double precision NULL
) 
;
/****** Object:  Table "TOTALFS"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "TOTALFS"(
	"DIVISION" varchar(50) NULL,
	"REGION" varchar(50) NULL,
	"HQ" varchar(50) NULL,
	"TOTAL" varchar(50) NULL,
	"DESIGNATION" varchar(50) NULL
) 
;
/****** Object:  Table "up_update"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "up_update"(
	"DocCode" varchar(255) NULL,
	"SubAreaCode" varchar(255) NULL,
	"Areamaster" varchar(255) NULL,
	"Regionmaster" varchar(255) NULL
) 
;
/****** Object:  Table "'UPDATE SUBAREAS$'"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "'UPDATE SUBAREAS$'"(
	"DocCode" varchar(255) NULL,
	"SubAreaCode" varchar(255) NULL,
	"areamaster" varchar(255) NULL,
	"regionmst" varchar(255) NULL
) 
;
/****** Object:  Table "update_doc"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "update_doc"(
	"DOCCODE" varchar(255) NULL,
	"NEW SUBAREA" varchar(255) NULL,
	"areacode" varchar(255) NULL,
	"region code" varchar(255) NULL
) 
;
/****** Object:  Table "update_doc3"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "update_doc3"(
	"code" varchar(255) NULL,
	"Firstname" varchar(255) NULL,
	"Middlename" varchar(255) NULL,
	"Lastname" varchar(255) NULL,
	"gradecode" varchar(255) NULL,
	"qualification" varchar(255) NULL,
	"Clinic/Hospital Code" varchar(255) NULL,
	"House/Building Name" varchar(255) NULL,
	"Street Name" varchar(255) NULL,
	"Area" varchar(255) NULL,
	"Landmark" varchar(255) NULL,
	"City" varchar(255) NULL,
	"State" varchar(255) NULL,
	"pin" double precision NULL,
	"Mobileno " varchar(255) NULL,
	"Landno" varchar(255) NULL,
	"referenceno" varchar(255) NULL,
	"categorycode" varchar(255) NULL,
	"subareacode" varchar(255) NULL,
	"Age" varchar(255) NULL,
	"dob" varchar(255) NULL,
	"dow" varchar(255) NULL,
	"email" varchar(255) NULL,
	"fscode" varchar(255) NULL,
	"divcode" varchar(255) NULL,
	"LAT" varchar(255) NULL,
	"LONG" varchar(255) NULL,
	"Class" varchar(255) NULL,
	"Spousename" varchar(255) NULL,
	"SpouseDOB" varchar(255) NULL,
	"Drregno" varchar(255) NULL,
	"Speciality As Per Practice" varchar(255) NULL,
	"No Of Patients Per Day" varchar(255) NULL,
	"Current Business" varchar(255) NULL,
	"Business Potential" varchar(255) NULL,
	"Doctor Potential" varchar(255) NULL,
	"Is doctor Purchasing" varchar(255) NULL,
	"Is doctor Prescribing" varchar(255) NULL,
	"Child1 Name" varchar(255) NULL,
	"Child1 Dob" varchar(255) NULL,
	"Child2 Name" varchar(255) NULL,
	"Child2 Dob" varchar(255) NULL,
	"Child3 Name" varchar(255) NULL,
	"Child3 Dob " varchar(255) NULL
) 
;
/****** Object:  Table "useraccessbackup_2018"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "useraccessbackup_2018"(
	"N_Type" numeric(18, 0) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"c_sh_name" varchar(10) NULL,
	"n_CI_FLag" smallint NULL,
	"n_fs_flag" smallint NULL,
	"c_gadgetcode" varchar(50) NULL
) 
;
/****** Object:  Table "vacants"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vacants"(
	"DIVISION" varchar(50) NULL,
	"REGION" varchar(50) NULL,
	"DESIGNATION" varchar(50) NULL,
	"HQ" varchar(50) NULL,
	"NOOFVACANTS" varchar(50) NULL
) 
;
/****** Object:  Table "vg_alert_setup"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vg_alert_setup"(
	"c_provider" varchar(20) NULL,
	"c_user" varchar(20) NULL,
	"c_psw" varchar(20) NULL,
	"n_active" numeric(1, 0) NULL,
	"n_No_sms_purchased" numeric(18, 0) NULL,
	"n_sms_left" numeric(18, 0) NULL,
	"c_sms_prefix" varchar(7000) NULL,
	"c_sms_suffix" varchar(7000) NULL,
	"c_sms_to_prefix" varchar(1000) NULL,
	"c_sms_to_suffix" varchar(1000) NULL,
	"c_sms_url" varchar(1000) NULL,
	"n_msg_account_flag" integer NULL,
	"C_APIkey" varchar(100) NULL,
	"C_Sender" varchar(100) NULL
) 
;
/****** Object:  Table "vg_area_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vg_area_mst"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"C_Sh_Name" varchar(7) NULL,
	"C_Region_Code" varchar(10) NOT NULL,
	"C_SalesHQ" varchar(50) NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"n_lami" double precision NULL,
	"n_lgmi" double precision NULL
) 
;
/****** Object:  Table "vg_category_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vg_category_mst"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(50) NOT NULL,
	"C_Sh_Name" char(10) NULL,
	"N_Type" integer NULL,
	"n_deleted" smallint NOT NULL,
	"d_created" timestamp NOT NULL,
	"d_modified" timestamp NULL,
	"c_modifier" varchar(10) NULL,
	"n_CatStatus" integer NULL,
	"c_image" varchar(500) NULL
) 
;
/****** Object:  Table "vg_Cust_Div"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vg_Cust_Div"(
	"c_cust_code" char(10) NOT NULL,
	"c_div_code" varchar(10) NOT NULL,
	"c_fs_code" char(10) NOT NULL,
	"d_date" timestamp NOT NULL,
	"c_grade" varchar(10) NULL,
	"d_date_to" timestamp NULL,
	"n_per" integer NULL,
	"C_ref_no" varchar(52) NULL,
	"d_modified" timestamp NULL,
	"N_CRNTBUSINES" varchar(150) NULL,
	"C_BUSINES_POTENTIAL" varchar(150) NULL,
	"N_drpotential" varchar(50) NULL
) 
;
/****** Object:  Table "vg_cust_div_backup_before_duplicatedelete_20072016"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vg_cust_div_backup_before_duplicatedelete_20072016"(
	"c_cust_code" char(10) NOT NULL,
	"c_div_code" varchar(10) NOT NULL,
	"c_fs_code" char(10) NOT NULL,
	"d_date" timestamp NOT NULL,
	"c_grade" varchar(10) NULL,
	"d_date_to" timestamp NULL,
	"n_per" integer NULL,
	"C_ref_no" varchar(52) NULL,
	"d_modified" timestamp NULL,
	"N_CRNTBUSINES" varchar(150) NULL,
	"C_BUSINES_POTENTIAL" varchar(150) NULL,
	"N_drpotential" varchar(50) NULL
) 
;
/****** Object:  Table "vg_docclose"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vg_docclose"(
	"Code" varchar(255) NULL,
	"FS" varchar(255) NULL
) 
;
/****** Object:  Table "VG_DR"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "VG_DR"(
	"DR" varchar(7) NOT NULL
) 
;
/****** Object:  Table "VG_DR2"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "VG_DR2"(
	"Division Code" varchar(255) NULL,
	"employee name" varchar(255) NULL,
	"fs code" varchar(255) NULL,
	"Doctor Code" varchar(255) NULL,
	"DoctorName" varchar(255) NULL,
	"Qualification 1" varchar(255) NULL,
	"Qualification 2" varchar(255) NULL,
	"Qualification 3" varchar(255) NULL,
	"Qualification 4" varchar(255) NULL,
	"Qualification 5" varchar(255) NULL,
	"Grade" varchar(255) NULL,
	"Speciality Type" varchar(255) NULL,
	"Doctor Class" varchar(255) NULL,
	"Mobile No" varchar(255) NULL,
	"Land Line No" varchar(255) NULL,
	"SubArea" varchar(255) NULL,
	"MCLNO" varchar(255) NULL,
	"DR Registration No" varchar(255) NULL,
	"DOB" varchar(255) NULL,
	"Age" varchar(255) NULL,
	"DOW" varchar(255) NULL,
	"Product Mapped" varchar(255) NULL,
	"Spouse name" varchar(255) NULL,
	"Spouse DOB" varchar(255) NULL,
	"EmailID" varchar(255) NULL,
	"Speciality As Per Qualification" varchar(255) NULL,
	"Clinic/Hospital Name" varchar(255) NULL,
	"Address 1" varchar(255) NULL,
	"Address 2" varchar(255) NULL,
	"Address 3" varchar(255) NULL,
	"Area" varchar(255) NULL,
	"Landmark" varchar(255) NULL,
	"City" varchar(255) NULL,
	"District" varchar(255) NULL,
	"State" varchar(255) NULL,
	"PIN" double precision NULL,
	"House/Building Name" varchar(255) NULL,
	"Street Name" varchar(255) NULL,
	"Area1" varchar(255) NULL,
	"Landmark1" varchar(255) NULL,
	"City1" varchar(255) NULL,
	"State1" varchar(255) NULL,
	"PIN1" varchar(255) NULL,
	"No Of Patients Per Day" varchar(255) NULL,
	"Current Business" varchar(255) NULL,
	"Business Potential" varchar(255) NULL,
	"Doctor Potential" varchar(255) NULL,
	"Is doctor Is Prescribing" varchar(255) NULL,
	"Is doctor Is Purchasing" varchar(255) NULL,
	"Child1 Name" varchar(255) NULL,
	"Child1 DOB" varchar(255) NULL,
	"Child2 Name" varchar(255) NULL,
	"Child2 DOB" varchar(255) NULL,
	"Child3 Name" varchar(255) NULL,
	"Child3 DOB" varchar(255) NULL
) 
;
/****** Object:  Table "vg_hol"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vg_hol"(
	"Regioncode" varchar(255) NULL,
	"Holidaycode" double precision NULL,
	"Date" timestamp NULL
) 
;
/****** Object:  Table "vg_hospital"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vg_hospital"(
	"hospitalcode" varchar(255) NULL,
	"hospitalname" varchar(255) NULL,
	"type" varchar(255) NULL,
	"grade" varchar(255) NULL,
	"regioncode" varchar(255) NULL,
	"areacode" varchar(255) NULL,
	"subareacode" varchar(255) NULL,
	"category" varchar(255) NULL,
	"streetname" varchar(255) NULL,
	"area" varchar(255) NULL,
	"landmark" varchar(255) NULL,
	"city" varchar(255) NULL,
	"state" varchar(255) NULL,
	"pin" varchar(255) NULL,
	"landno" varchar(255) NULL,
	"inhouse pharmacy" varchar(255) NULL,
	"financial turnover" varchar(255) NULL,
	"potential" varchar(255) NULL,
	"no of beds" varchar(255) NULL,
	"no of emergency beds" varchar(255) NULL,
	"no of critical icu beds" varchar(255) NULL,
	"no of surgical theaters" varchar(255) NULL,
	"hospital" varchar(255) NULL,
	"total no of doctors working" varchar(255) NULL,
	"purchase manager name" varchar(255) NULL,
	"purchase manager contact" varchar(255) NULL,
	"stock incharge name" varchar(255) NULL,
	"stock incharge contact" varchar(255) NULL,
	"financial officer name" varchar(255) NULL,
	"financial officer contact" varchar(255) NULL,
	"no of therapeutic group" varchar(255) NULL,
	"teaching institution" varchar(255) NULL,
	"therapeutic group code" varchar(255) NULL,
	"pgcode" varchar(255) NULL
) 
;
/****** Object:  Table "vg_map"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vg_map"(
	"FSCODE" varchar(255) NULL,
	"Doctor Code" varchar(255) NULL,
	"Div code" varchar(255) NULL
) 
;
/****** Object:  Table "vg_message_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vg_message_mst"(
	"N_Srno" numeric(18, 0) NOT NULL,
	"C_FS_Code_From" char(10) NOT NULL,
	"C_Parent" char(10) NULL,
	"C_FS_Code_To" char(10) NOT NULL,
	"C_Subject" varchar(500) NULL,
	"C_Message" varchar(500) NULL,
	"n_Read" integer NULL,
	"n_ReadParent" integer NULL,
	"N_Delete" integer NULL,
	"N_DeleteParent" integer NULL,
	"n_Msg_Type" integer NULL,
	"D_Created_Date" timestamp NULL,
	"n_msgid" numeric(18, 0) NULL,
	"c_empcode" char(10) NULL
) 
;
/****** Object:  Table "vg_sfa_userrights"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vg_sfa_userrights"(
	"n_itemid" integer NULL,
	"c_userid" varchar(50) NULL,
	"n_user_type" integer NULL
) 
;
/****** Object:  Table "vg_userinfo"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vg_userinfo"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(500) NULL,
	"C_UserID" varchar(20) NOT NULL,
	"C_Password" varchar(100) NULL,
	"N_Lock" integer NOT NULL,
	"C_Description" varchar(250) NULL,
	"N_Edit" integer NULL,
	"N_Delete" integer NULL,
	"N_AddNew" integer NULL,
	"N_Shift" integer NULL,
	"N_ShiftEdit" integer NULL,
	"D_Create_Date" timestamp NULL,
	"D_Modify_Date" timestamp NULL,
	"c_mob_UniqueID" varchar(10) NULL,
	"c_mob_Prev_ID" varchar(10) NULL,
	"n_mobile_user" integer NULL,
	"n_type" integer NULL,
	"n_menuid" integer NULL,
	"n_webuser" integer NULL,
	"n_Mobwebuser" integer NULL,
	"n_edetailng" integer NULL,
	"n_Androiduser" integer NULL
) 
;
/****** Object:  Table "vg_userinfo_backup_beforeInactiveUserDeletion"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vg_userinfo_backup_beforeInactiveUserDeletion"(
	"C_Code" varchar(10) NOT NULL,
	"C_Name" varchar(500) NULL,
	"C_UserID" varchar(20) NOT NULL,
	"C_Password" varchar(100) NULL,
	"N_Lock" integer NOT NULL,
	"C_Description" varchar(250) NULL,
	"N_Edit" integer NULL,
	"N_Delete" integer NULL,
	"N_AddNew" integer NULL,
	"N_Shift" integer NULL,
	"N_ShiftEdit" integer NULL,
	"D_Create_Date" timestamp NULL,
	"D_Modify_Date" timestamp NULL,
	"c_mob_UniqueID" varchar(10) NULL,
	"c_mob_Prev_ID" varchar(10) NULL,
	"n_mobile_user" integer NULL,
	"n_type" integer NULL,
	"n_menuid" integer NULL,
	"n_webuser" integer NULL,
	"n_Mobwebuser" integer NULL,
	"n_edetailng" integer NULL,
	"n_Androiduser" integer NULL
) 
;
/****** Object:  Table "vg_vermst_bak"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vg_vermst_bak"(
	"V_ID" numeric(18, 3) NOT NULL,
	"V_Name" varchar(50) NOT NULL,
	"V_Type" numeric(3, 2) NOT NULL,
	"V_Date" timestamp NOT NULL
) 
;
/****** Object:  Table "vg3"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vg3"(
	"doccode" varchar(255) NULL,
	"Fscode " varchar(255) NULL,
	"Division" varchar(255) NULL
) 
;
/****** Object:  Table "vgarea"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vgarea"(
	"Fscode " varchar(255) NULL,
	"HqCode " varchar(255) NULL,
	"F3" varchar(255) NULL
) 
;
/****** Object:  Table "vgd"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vgd"(
	"Doctor Code " varchar(255) NULL,
	"FS Name " varchar(255) NULL,
	"Divison Code" varchar(255) NULL
) 
;
/****** Object:  Table "vgdoc"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vgdoc"(
	"code" varchar(255) NULL,
	"Firstname" varchar(255) NULL,
	"gradecode" varchar(255) NULL,
	"qualification" varchar(255) NULL,
	"Clinic/Hospital Name" varchar(255) NULL,
	"Street Name" varchar(255) NULL,
	"Area" varchar(255) NULL,
	"Landmark" varchar(255) NULL,
	"City" varchar(255) NULL,
	"pin" varchar(255) NULL,
	"Mobileno " varchar(255) NULL,
	"categorycode" varchar(255) NULL,
	"subareacode" varchar(255) NULL,
	"email" varchar(255) NULL,
	"fscode" varchar(255) NULL,
	"divcode" varchar(255) NULL,
	"Drregno" varchar(255) NULL
) 
;
/****** Object:  Table "vgdocdata"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vgdocdata"(
	"DocCode" varchar(10) NOT NULL,
	"DocName" varchar(200) NULL,
	"FsCode" varchar(10) NOT NULL,
	"FsName" varchar(100) NULL,
	"Category" varchar(50) NULL,
	"Grade" varchar(30) NULL,
	"Class" varchar(100) NULL,
	"Subarea" varchar(50) NULL,
	"Area" varchar(50) NULL,
	"Region" varchar(50) NULL,
	"refno" varchar(52) NULL,
	"DivCode" varchar(10) NOT NULL,
	"Div" varchar(50) NULL,
	"DocEmailid" varchar(50) NULL
) 
;
/****** Object:  Table "vgdocfull"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vgdocfull"(
	"code" varchar(255) NULL,
	"Firstname" varchar(255) NULL,
	"gradecode" varchar(255) NULL,
	"qualification" varchar(255) NULL,
	"Clinic/Hospital Name" varchar(255) NULL,
	"Street Name" varchar(255) NULL,
	"Area" varchar(255) NULL,
	"pin" varchar(255) NULL,
	"Mobileno " varchar(255) NULL,
	"categorycode" varchar(255) NULL,
	"subareacode" varchar(255) NULL,
	"email" varchar(255) NULL,
	"fscode" varchar(255) NULL,
	"divcode" varchar(255) NULL,
	"Drregno" varchar(255) NULL
) 
;
/****** Object:  Table "vgdocinsert"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vgdocinsert"(
	"code" varchar(255) NULL,
	"Firstname" varchar(255) NULL,
	"gradecode" varchar(255) NULL,
	"qualification" varchar(255) NULL,
	"Clinic/Hospital Name" varchar(255) NULL,
	"Street Name" varchar(255) NULL,
	"pin" varchar(255) NULL,
	"Mobileno " varchar(255) NULL,
	"categorycode" varchar(255) NULL,
	"subareacode" varchar(255) NULL,
	"email" varchar(255) NULL,
	"fscode" varchar(255) NULL,
	"divcode" varchar(255) NULL,
	"Drregno" double precision NULL,
	"F15" varchar(255) NULL,
	"F16" varchar(255) NULL,
	"F17" varchar(255) NULL,
	"F18" varchar(255) NULL,
	"F19" varchar(255) NULL,
	"F20" varchar(255) NULL,
	"F21" varchar(255) NULL,
	"F22" varchar(255) NULL,
	"F23" varchar(255) NULL,
	"F24" varchar(255) NULL
) 
;
/****** Object:  Table "vgdocinsert_errorlog"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vgdocinsert_errorlog"(
	"doccode" varchar(100) NULL
) 
;
/****** Object:  Table "vgdocinsert1"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vgdocinsert1"(
	"code" varchar(255) NULL,
	"Firstname" varchar(255) NULL,
	"gradecode" varchar(255) NULL,
	"qualification" varchar(255) NULL,
	"Clinic/Hospital Name" varchar(255) NULL,
	"Street Name" varchar(255) NULL,
	"Area" varchar(255) NULL,
	"pin" varchar(255) NULL,
	"Mobileno " varchar(255) NULL,
	"categorycode" varchar(255) NULL,
	"subareacode" varchar(255) NULL,
	"email" varchar(255) NULL,
	"fscode" varchar(255) NULL,
	"divcode" varchar(255) NULL,
	"Drregno" varchar(255) NULL
) 
;
/****** Object:  Table "vgdocmap1"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vgdocmap1"(
	"Doctor code " varchar(255) NULL,
	"Fs Code " varchar(255) NULL,
	"Division" varchar(255) NULL
) 
;
/****** Object:  Table "vgdocup"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vgdocup"(
	"code" varchar(255) NULL,
	"Firstname" varchar(255) NULL,
	"gradecode" varchar(255) NULL,
	"qualification" varchar(255) NULL,
	"HospitalName" varchar(255) NULL,
	"StreetName " varchar(255) NULL,
	"City" varchar(255) NULL,
	"pin" varchar(255) NULL,
	"Mobileno " varchar(255) NULL,
	"categorycode" varchar(255) NULL,
	"subareacode" varchar(255) NULL,
	"email" varchar(255) NULL,
	"fscode" varchar(255) NULL,
	"divcode" varchar(255) NULL,
	"Drregno" double precision NULL
) 
;
/****** Object:  Table "vgmap"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vgmap"(
	"D47827" varchar(255) NULL,
	"TSE089" varchar(255) NULL
) 
;
/****** Object:  Table "vgmp"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vgmp"(
	"DRCODE" varchar(255) NULL,
	"FSCODE" varchar(255) NULL,
	"DIV" varchar(255) NULL
) 
;
/****** Object:  Table "vgnagpur"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "vgnagpur"(
	"code" varchar(255) NULL,
	"Firstname" varchar(255) NULL,
	"gradecode" varchar(255) NULL,
	"qualification" varchar(255) NULL,
	"Clinic/Hospital Name" varchar(255) NULL,
	"Street Name" varchar(255) NULL,
	"Area" varchar(255) NULL,
	"pin" varchar(255) NULL,
	"Mobileno " varchar(255) NULL,
	"categorycode" varchar(255) NULL,
	"subareacode" varchar(255) NULL,
	"email" varchar(255) NULL,
	"fscode" varchar(255) NULL,
	"divcode" varchar(255) NULL,
	"Drregno" double precision NULL
) 
;
/****** Object:  Table "volga_stp"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "volga_stp"(
	"Region Name" varchar(255) NULL,
	"STPNo" double precision NULL,
	"FS CODE" varchar(255) NULL,
	"division" varchar(255) NULL,
	"FS NAME" varchar(255) NULL,
	"STP Date From" timestamp NULL,
	"STP Date To" timestamp NULL,
	"HQDA" double precision NULL,
	"EXDA" double precision NULL,
	"OSDA" double precision NULL,
	"TAType" double precision NULL,
	"RateKM" double precision NULL,
	"distnace" double precision NULL,
	"TA" double precision NULL,
	"From Area Code" varchar(255) NULL,
	"From Area Name" varchar(255) NULL,
	"ToAreaCode" varchar(255) NULL,
	"ToAreaname" varchar(255) NULL,
	"A grade doct count" double precision NULL,
	"B grade doctor count" double precision NULL,
	"workingdays" double precision NULL,
	"chemist count" double precision NULL,
	"stockiest count" double precision NULL,
	"curent business" double precision NULL,
	"expected business" double precision NULL,
	"AreaType" varchar(255) NULL
) 
;
/****** Object:  Table "volga_stp1"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "volga_stp1"(
	"Region Name" varchar(255) NULL,
	"STPNo" double precision NULL,
	"FS CODE" varchar(255) NULL,
	"division" varchar(255) NULL,
	"FS NAME" varchar(255) NULL,
	"STP Date From" timestamp NULL,
	"STP Date To" timestamp NULL,
	"HQDA" double precision NULL,
	"EXDA" double precision NULL,
	"OSDA" double precision NULL,
	"TAType" double precision NULL,
	"RateKM" double precision NULL,
	"distnace" double precision NULL,
	"TA" double precision NULL,
	"From Area Code" varchar(255) NULL,
	"From Area Name" varchar(255) NULL,
	"ToAreaCode" varchar(255) NULL,
	"ToAreaname" varchar(255) NULL,
	"A grade doct count" double precision NULL,
	"B grade doctor count" double precision NULL,
	"workingdays" double precision NULL,
	"chemist count" double precision NULL,
	"stockiest count" double precision NULL,
	"curent business" double precision NULL,
	"expected business" double precision NULL,
	"AreaType" double precision NULL
) 
;
/****** Object:  Table "WorkedRpt"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "WorkedRpt"(
	"Empcode" integer NULL,
	"DIVISION" varchar(50) NULL,
	"REGION" varchar(50) NULL,
	"FSCODE" varchar(50) NULL,
	"FSNAME" varchar(50) NULL,
	"HQ" varchar(50) NULL,
	"REPORTINGMANAGER" varchar(50) NULL,
	"PREVDAYSTATUS" varchar(50) NULL,
	"PREVDAYCALLS" varchar(50) NULL,
	"WORKINGDAYS" varchar(50) NULL,
	"WORKDDAYS" varchar(50) NULL,
	"VISITEDDOCTORS" integer NULL,
	"CALLAVG" varchar(50) NULL,
	"LEAVEDAYS" varchar(50) NULL,
	"HOLIDAYS" varchar(50) NULL,
	"Dayscnt" integer NULL
) 
;
/****** Object:  Table "worktype"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "worktype"(
	"WorkType" varchar(10) NULL,
	"Stat" varchar(10) NULL
) 
;
/****** Object:  Table "wrkgdays"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "wrkgdays"(
	"empcode" varchar(50) NULL,
	"workngdays" varchar(50) NULL
) 
;
/****** Object:  Table "xltemp10494_Doc_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltemp10494_Doc_mst"(
	"srno" integer NOT NULL,
	"code" varchar(10) NULL,
	"firstname" varchar(50) NULL,
	"middlename" varchar(50) NULL,
	"lastname" varchar(50) NULL,
	"gradecode" varchar(10) NULL,
	"qualification" varchar(50) NULL,
	"clinichospitalname" varchar(100) NULL,
	"streetname" varchar(100) NULL,
	"area" varchar(100) NULL,
	"landmark" varchar(100) NULL,
	"city" varchar(100) NULL,
	"state" varchar(100) NULL,
	"pin" varchar(20) NULL,
	"housebuildingname" varchar(100) NULL,
	"streetname1" varchar(100) NULL,
	"area1" varchar(100) NULL,
	"landmark1" varchar(100) NULL,
	"city1" varchar(100) NULL,
	"state1" varchar(100) NULL,
	"pin1" varchar(20) NULL,
	"phone" varchar(20) NULL,
	"landno" varchar(20) NULL,
	"referenceno" varchar(20) NULL,
	"categorycode" varchar(20) NULL,
	"subareacode" varchar(20) NULL,
	"age" varchar(20) NULL,
	"dob" varchar(20) NULL,
	"dow" varchar(20) NULL,
	"email" varchar(50) NULL,
	"fscode" varchar(50) NULL,
	"divcode" varchar(50) NULL,
	"lat" double precision NULL,
	"long" double precision NULL,
	"class" varchar(50) NULL,
	"spousename" varchar(100) NULL,
	"spousedob" varchar(50) NULL,
	"mcino" varchar(50) NULL,
	"speciality" varchar(50) NULL,
	"noofpatients" varchar(50) NULL,
	"currentBusiness" varchar(50) NULL,
	"Businesspotential" varchar(50) NULL,
	"doctorpotential" varchar(50) NULL,
	"doctorpurchasing" varchar(50) NULL,
	"doctorprescribing" varchar(50) NULL,
	"child1name" varchar(50) NULL,
	"child1dob" varchar(50) NULL,
	"child2name" varchar(50) NULL,
	"child2dob" varchar(50) NULL,
	"child3name" varchar(50) NULL,
	"child3dob" varchar(50) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltemp10555_Doc_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltemp10555_Doc_mst"(
	"srno" integer NOT NULL,
	"code" varchar(10) NULL,
	"firstname" varchar(50) NULL,
	"middlename" varchar(50) NULL,
	"lastname" varchar(50) NULL,
	"gradecode" varchar(10) NULL,
	"qualification" varchar(50) NULL,
	"clinichospitalname" varchar(100) NULL,
	"streetname" varchar(100) NULL,
	"area" varchar(100) NULL,
	"landmark" varchar(100) NULL,
	"city" varchar(100) NULL,
	"state" varchar(100) NULL,
	"pin" varchar(20) NULL,
	"housebuildingname" varchar(100) NULL,
	"streetname1" varchar(100) NULL,
	"area1" varchar(100) NULL,
	"landmark1" varchar(100) NULL,
	"city1" varchar(100) NULL,
	"state1" varchar(100) NULL,
	"pin1" varchar(20) NULL,
	"phone" varchar(20) NULL,
	"landno" varchar(20) NULL,
	"referenceno" varchar(20) NULL,
	"categorycode" varchar(20) NULL,
	"subareacode" varchar(20) NULL,
	"age" varchar(20) NULL,
	"dob" varchar(20) NULL,
	"dow" varchar(20) NULL,
	"email" varchar(50) NULL,
	"fscode" varchar(50) NULL,
	"divcode" varchar(50) NULL,
	"lat" double precision NULL,
	"long" double precision NULL,
	"class" varchar(50) NULL,
	"spousename" varchar(100) NULL,
	"spousedob" varchar(50) NULL,
	"mcino" varchar(50) NULL,
	"speciality" varchar(50) NULL,
	"noofpatients" varchar(50) NULL,
	"currentBusiness" varchar(50) NULL,
	"Businesspotential" varchar(50) NULL,
	"doctorpotential" varchar(50) NULL,
	"doctorpurchasing" varchar(50) NULL,
	"doctorprescribing" varchar(50) NULL,
	"child1name" varchar(50) NULL,
	"child1dob" varchar(50) NULL,
	"child2name" varchar(50) NULL,
	"child2dob" varchar(50) NULL,
	"child3name" varchar(50) NULL,
	"child3dob" varchar(50) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltemp108086_Doc_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltemp108086_Doc_mst"(
	"srno" integer NOT NULL,
	"code" varchar(10) NULL,
	"firstname" varchar(50) NULL,
	"middlename" varchar(50) NULL,
	"lastname" varchar(50) NULL,
	"gradecode" varchar(10) NULL,
	"qualification" varchar(50) NULL,
	"clinichospitalname" varchar(100) NULL,
	"streetname" varchar(100) NULL,
	"area" varchar(100) NULL,
	"landmark" varchar(100) NULL,
	"city" varchar(100) NULL,
	"state" varchar(100) NULL,
	"pin" varchar(14) NULL,
	"housebuildingname" varchar(100) NULL,
	"streetname1" varchar(100) NULL,
	"area1" varchar(100) NULL,
	"landmark1" varchar(100) NULL,
	"city1" varchar(100) NULL,
	"state1" varchar(100) NULL,
	"pin1" varchar(14) NULL,
	"phone" varchar(14) NULL,
	"landno" varchar(14) NULL,
	"referenceno" varchar(14) NULL,
	"categorycode" varchar(14) NULL,
	"subareacode" varchar(14) NULL,
	"age" varchar(14) NULL,
	"dob" varchar(20) NULL,
	"dow" varchar(20) NULL,
	"email" varchar(50) NULL,
	"fscode" varchar(50) NULL,
	"divcode" varchar(50) NULL,
	"lat" double precision NULL,
	"long" double precision NULL,
	"class" varchar(50) NULL,
	"spousename" varchar(100) NULL,
	"spousedob" varchar(50) NULL,
	"mcino" varchar(50) NULL,
	"speciality" varchar(50) NULL,
	"noofpatients" varchar(50) NULL,
	"currentBusiness" varchar(50) NULL,
	"Businesspotential" varchar(50) NULL,
	"doctorpotential" varchar(50) NULL,
	"doctorpurchasing" varchar(50) NULL,
	"doctorprescribing" varchar(50) NULL,
	"child1name" varchar(50) NULL,
	"child1dob" varchar(50) NULL,
	"child2name" varchar(50) NULL,
	"child2dob" varchar(50) NULL,
	"child3name" varchar(50) NULL,
	"child3dob" varchar(50) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltemp11500_Doc_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltemp11500_Doc_mst"(
	"srno" integer NOT NULL,
	"code" varchar(10) NULL,
	"firstname" varchar(50) NULL,
	"middlename" varchar(50) NULL,
	"lastname" varchar(50) NULL,
	"gradecode" varchar(10) NULL,
	"qualification" varchar(50) NULL,
	"clinichospitalname" varchar(100) NULL,
	"streetname" varchar(100) NULL,
	"area" varchar(100) NULL,
	"landmark" varchar(100) NULL,
	"city" varchar(100) NULL,
	"state" varchar(100) NULL,
	"pin" varchar(14) NULL,
	"housebuildingname" varchar(100) NULL,
	"streetname1" varchar(100) NULL,
	"area1" varchar(100) NULL,
	"landmark1" varchar(100) NULL,
	"city1" varchar(100) NULL,
	"state1" varchar(100) NULL,
	"pin1" varchar(14) NULL,
	"phone" varchar(14) NULL,
	"landno" varchar(14) NULL,
	"referenceno" varchar(14) NULL,
	"categorycode" varchar(14) NULL,
	"subareacode" varchar(50) NULL,
	"age" varchar(14) NULL,
	"dob" varchar(50) NULL,
	"dow" varchar(14) NULL,
	"email" varchar(50) NULL,
	"fscode" varchar(50) NULL,
	"divcode" varchar(50) NULL,
	"lat" double precision NULL,
	"long" double precision NULL,
	"class" varchar(50) NULL,
	"spousename" varchar(100) NULL,
	"spousedob" varchar(50) NULL,
	"mcino" varchar(50) NULL,
	"speciality" varchar(50) NULL,
	"noofpatients" varchar(50) NULL,
	"currentBusiness" varchar(50) NULL,
	"Businesspotential" varchar(50) NULL,
	"doctorpotential" varchar(50) NULL,
	"doctorpurchasing" varchar(50) NULL,
	"doctorprescribing" varchar(50) NULL,
	"child1name" varchar(50) NULL,
	"child1dob" varchar(50) NULL,
	"child2name" varchar(50) NULL,
	"child2dob" varchar(50) NULL,
	"child3name" varchar(50) NULL,
	"child3dob" varchar(50) NULL,
	"panno" varchar(20) NULL,
	"Hstreetname" varchar(50) NULL,
	"Hareaname" varchar(50) NULL,
	"Hlandmark" varchar(50) NULL,
	"Hcity" varchar(50) NULL,
	"Hstate" varchar(50) NULL,
	"Hpincode" varchar(10) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltemp1545_fs_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltemp1545_fs_mst"(
	"srno" integer NOT NULL,
	"empcode" varchar(15) NULL,
	"fscode" varchar(15) NULL,
	"fstype" integer NULL,
	"areacode" varchar(15) NULL,
	"parentcode" varchar(15) NULL,
	"divcode" varchar(10) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin_anual_target_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin_anual_target_mst"(
	"srno" integer NOT NULL,
	"fscode" varchar(10) NULL,
	"itemcode" varchar(10) NULL,
	"nyear" integer NULL,
	"nstmonth" integer NULL,
	"qty1" numeric(20, 2) NULL,
	"qty2" numeric(20, 2) NULL,
	"qty3" numeric(20, 2) NULL,
	"qty4" numeric(20, 2) NULL,
	"qty5" numeric(20, 2) NULL,
	"qty6" numeric(20, 2) NULL,
	"qty7" numeric(20, 2) NULL,
	"qty8" numeric(20, 2) NULL,
	"qty9" numeric(20, 2) NULL,
	"qty10" numeric(20, 2) NULL,
	"qty11" numeric(20, 2) NULL,
	"qty12" numeric(20, 2) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin_area_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin_area_mst"(
	"srno" integer NOT NULL,
	"areacode" varchar(20) NULL,
	"areaname" varchar(100) NULL,
	"shortname" varchar(10) NULL,
	"regioncode" varchar(15) NULL,
	"saleshqcode" varchar(15) NULL,
	"lat" double precision NULL,
	"long" double precision NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin_Categ_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin_Categ_mst"(
	"srno" integer NOT NULL,
	"catcode" varchar(20) NULL,
	"catname" varchar(50) NULL,
	"shortname" varchar(50) NULL,
	"type" integer NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin_Chemist_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin_Chemist_mst"(
	"srno" integer NOT NULL,
	"code" varchar(20) NULL,
	"name" varchar(50) NULL,
	"add1" varchar(100) NULL,
	"add2" varchar(100) NULL,
	"city" varchar(100) NULL,
	"state" varchar(50) NULL,
	"pin" varchar(50) NULL,
	"phone" varchar(50) NULL,
	"referenceno" varchar(50) NULL,
	"email" varchar(100) NULL,
	"fscode" varchar(50) NULL,
	"subareacode" varchar(50) NULL,
	"lat" double precision NULL,
	"long" double precision NULL,
	"tin" varchar(50) NULL,
	"lic" varchar(50) NULL,
	"contactname" varchar(50) NULL,
	"sftshop" numeric(18, 0) NULL,
	"displayshelf" numeric(9, 0) NULL,
	"descdisplayshelf" varchar(100) NULL,
	"fboardheight" numeric(18, 0) NULL,
	"fboardlength" numeric(18, 0) NULL,
	"backlit" integer NULL,
	"computrised" integer NULL,
	"licfood" varchar(50) NULL,
	"contactmob" varchar(20) NULL,
	"contoutletnumber" varchar(50) NULL,
	"landmark" varchar(100) NULL,
	"grade" varchar(10) NULL,
	"dob" timestamp NULL,
	"dow" timestamp NULL,
	"outlettype" varchar(15) NULL,
	"shortname" varchar(10) NULL,
	"fridge" integer NULL,
	"windowsize" varchar(100) NULL,
	"storemanager" varchar(50) NULL,
	"storeclassification" varchar(50) NULL,
	"storetype" varchar(50) NULL,
	"distributorcode" varchar(50) NULL,
	"agreementdate" timestamp NULL,
	"totaldiscountperc" numeric(5, 2) NULL,
	"fromdate" timestamp NULL,
	"todate" timestamp NULL,
	"accountcode" varchar(50) NULL,
	"hostelfacility" integer NULL,
	"typeoffood" text NULL,
	"noofcanteens" integer NULL,
	"canteencontractorname" varchar(100) NULL,
	"canteencontractoraddress" varchar(100) NULL,
	"degreeno" varchar(500) NULL,
	"classtype" varchar(10) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin_Doc_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin_Doc_mst"(
	"srno" integer NOT NULL,
	"code" varchar(10) NULL,
	"firstname" varchar(50) NULL,
	"middlename" varchar(50) NULL,
	"lastname" varchar(50) NULL,
	"gradecode" varchar(10) NULL,
	"qualification" varchar(50) NULL,
	"clinichospitalname" varchar(200) NULL,
	"streetname" varchar(100) NULL,
	"area" varchar(100) NULL,
	"landmark" varchar(100) NULL,
	"city" varchar(100) NULL,
	"state" varchar(100) NULL,
	"pin" varchar(14) NULL,
	"housebuildingname" varchar(100) NULL,
	"streetname1" varchar(100) NULL,
	"area1" varchar(100) NULL,
	"landmark1" varchar(100) NULL,
	"city1" varchar(100) NULL,
	"state1" varchar(100) NULL,
	"pin1" varchar(14) NULL,
	"phone" varchar(14) NULL,
	"landno" varchar(14) NULL,
	"referenceno" varchar(14) NULL,
	"categorycode" varchar(14) NULL,
	"subareacode" varchar(50) NULL,
	"age" varchar(14) NULL,
	"dob" varchar(50) NULL,
	"dow" varchar(50) NULL,
	"email" varchar(50) NULL,
	"fscode" varchar(50) NULL,
	"divcode" varchar(50) NULL,
	"lat" double precision NULL,
	"long" double precision NULL,
	"class" varchar(50) NULL,
	"spousename" varchar(100) NULL,
	"spousedob" varchar(50) NULL,
	"mcino" varchar(50) NULL,
	"speciality" varchar(50) NULL,
	"noofpatients" varchar(50) NULL,
	"currentBusiness" varchar(50) NULL,
	"Businesspotential" varchar(50) NULL,
	"doctorpotential" varchar(50) NULL,
	"doctorpurchasing" varchar(50) NULL,
	"doctorprescribing" varchar(50) NULL,
	"child1name" varchar(50) NULL,
	"child1dob" varchar(50) NULL,
	"child2name" varchar(50) NULL,
	"child2dob" varchar(50) NULL,
	"child3name" varchar(50) NULL,
	"child3dob" varchar(50) NULL,
	"panno" varchar(20) NULL,
	"Hstreetname" varchar(50) NULL,
	"Hareaname" varchar(50) NULL,
	"Hlandmark" varchar(50) NULL,
	"Hcity" varchar(50) NULL,
	"Hstate" varchar(50) NULL,
	"Hpincode" varchar(10) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin_DrCoreProd_Mapping"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin_DrCoreProd_Mapping"(
	"srno" integer NOT NULL,
	"doctorcode" varchar(20) NULL,
	"p1" varchar(50) NULL,
	"p2" varchar(50) NULL,
	"p3" varchar(50) NULL,
	"p4" varchar(50) NULL,
	"p5" varchar(50) NULL,
	"p6" varchar(50) NULL,
	"p7" varchar(50) NULL,
	"p8" varchar(50) NULL,
	"p9" varchar(50) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin_employee_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin_employee_mst"(
	"srno" integer NOT NULL,
	"employeecode" varchar(10) NULL,
	"employeename" varchar(100) NULL,
	"designation" varchar(100) NULL,
	"qualification" varchar(100) NULL,
	"add1" varchar(100) NULL,
	"add2" varchar(100) NULL,
	"add3" varchar(100) NULL,
	"add4" varchar(100) NULL,
	"pin" varchar(20) NULL,
	"phone" varchar(20) NULL,
	"fax" varchar(20) NULL,
	"dob" timestamp NULL,
	"doj" timestamp NULL,
	"dow" timestamp NULL,
	"description" varchar(100) NULL,
	"accno" varchar(50) NULL,
	"bankcode" varchar(10) NULL,
	"Location" varchar(20) NULL,
	"Grade" varchar(10) NULL,
	"Department" varchar(20) NULL,
	"Sex" varchar(4) NULL,
	"Title" varchar(10) NULL,
	"Role" varchar(10) NULL,
	"OfficePhoneno" varchar(20) NULL,
	"Extensionno" varchar(20) NULL,
	"DOC" timestamp NULL,
	"DOR" timestamp NULL,
	"OffEmailID" varchar(50) NULL,
	"PersonalEmailID" varchar(50) NULL,
	"parentcode" varchar(20) NULL,
	"rtgs" varchar(12) NULL,
	"pan" varchar(50) NULL,
	"job_description" varchar(1000) NULL,
	"C_ESI_NO" varchar(15) NULL,
	"AdharNo" varchar(50) NULL,
	"EmergencyMobileNo" varchar(20) NULL,
	"ContactName" varchar(200) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin_fs_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin_fs_mst"(
	"srno" integer NOT NULL,
	"empcode" varchar(15) NULL,
	"fscode" varchar(15) NULL,
	"fstype" integer NULL,
	"areacode" varchar(15) NULL,
	"parentcode" varchar(15) NULL,
	"divcode" varchar(10) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin_grade_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin_grade_mst"(
	"srno" integer NOT NULL,
	"gradecode" varchar(20) NULL,
	"gradename" varchar(50) NULL,
	"noofvisit" integer NULL,
	"shortname" varchar(50) NULL,
	"type" integer NULL,
	"subarea" varchar(50) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin_hospital_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin_hospital_mst"(
	"srno" integer NOT NULL,
	"hospitalcode" varchar(200) NULL,
	"hospitalname" varchar(500) NULL,
	"type" varchar(500) NULL,
	"grade" varchar(10) NULL,
	"regioncode" varchar(20) NULL,
	"areacode" varchar(20) NULL,
	"subareacode" varchar(20) NULL,
	"category" varchar(20) NULL,
	"streetname" varchar(500) NULL,
	"area" varchar(500) NULL,
	"landmark" varchar(500) NULL,
	"city" varchar(500) NULL,
	"state" varchar(500) NULL,
	"pin" varchar(20) NULL,
	"landno" varchar(20) NULL,
	"inhouse pharmacy" varchar(50) NULL,
	"financial turnover" varchar(100) NULL,
	"potential" varchar(100) NULL,
	"no of beds" varchar(100) NULL,
	"no of emergency beds" varchar(100) NULL,
	"no of critical icu beds" varchar(100) NULL,
	"no of surgical theaters" varchar(100) NULL,
	"hospital" varchar(100) NULL,
	"total no of doctors working" varchar(100) NULL,
	"purchase manager name" text NULL,
	"purchase manager contact" varchar(100) NULL,
	"stock incharge name" varchar(100) NULL,
	"stock incharge contact" varchar(100) NULL,
	"financial officer name" varchar(100) NULL,
	"financial officer contact" varchar(100) NULL,
	"no of therapeutic group" varchar(100) NULL,
	"teaching institution" varchar(100) NULL,
	"therapeutic group code" varchar(200) NULL,
	"pgcode" varchar(200) NULL,
	"purchase manager mail id" varchar(200) NULL,
	"purchase team size" varchar(10) NULL,
	"stockiest name" varchar(200) NULL,
	"fs mapping" varchar(200) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin_Item_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin_Item_mst"(
	"srno" integer NOT NULL,
	"itemcode" varchar(20) NULL,
	"itemname" varchar(100) NULL,
	"shortname" varchar(7) NULL,
	"type" integer NULL,
	"company" varchar(50) NULL,
	"description" varchar(100) NULL,
	"pack" varchar(20) NULL,
	"ptr" numeric(18, 4) NULL,
	"mrp" numeric(18, 4) NULL,
	"stdrate" numeric(18, 4) NULL,
	"pts" numeric(18, 4) NULL,
	"brand" varchar(20) NULL,
	"catcode" varchar(20) NULL,
	"divcode" varchar(20) NULL,
	"groupcode" varchar(10) NULL,
	"nrvrate" numeric(18, 4) NULL,
	"manufacturercode" varchar(50) NULL,
	"qtyperstrip" varchar(10) NULL,
	"referencecode" varchar(500) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin_ItemCateg_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin_ItemCateg_mst"(
	"srno" integer NOT NULL,
	"catcode" varchar(20) NULL,
	"catname" varchar(50) NULL,
	"shortname" varchar(50) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin_primary_sales"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin_primary_sales"(
	"srno" integer NOT NULL,
	"dep_code" varchar(20) NULL,
	"d_date" timestamp NULL,
	"prefix" varchar(50) NULL,
	"invoice_srno" numeric(18, 0) NULL,
	"stockist_code" varchar(50) NULL,
	"itemcode" varchar(10) NULL,
	"pack" char(6) NULL,
	"qty" numeric(18, 3) NULL,
	"sch_qty" numeric(18, 3) NULL,
	"rate" numeric(18, 4) NULL,
	"div_code" varchar(10) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin_region_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin_region_mst"(
	"srno" integer NOT NULL,
	"regioncode" varchar(20) NULL,
	"regionname" varchar(100) NULL,
	"shortname" varchar(10) NULL,
	"zonecode" varchar(15) NULL,
	"lat" double precision NULL,
	"long" double precision NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin_regionholiday_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin_regionholiday_mst"(
	"srno" integer NULL,
	"code" varchar(50) NULL,
	"holiday" integer NULL,
	"rgdate" timestamp NULL
) 
;
/****** Object:  Table "xltempadmin_sdn"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin_sdn"(
	"srno" numeric(30, 0) NOT NULL,
	"dep_code" varchar(10) NULL,
	"d_date" timestamp NULL,
	"prefix" varchar(50) NULL,
	"n_srno" numeric(30, 0) NULL,
	"emp_code" varchar(10) NULL,
	"itemcode" varchar(10) NULL,
	"qty" numeric(18, 4) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin_stockiest_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin_stockiest_mst"(
	"srno" integer NULL,
	"code" varchar(50) NULL,
	"NAME" varchar(300) NULL,
	"add1" varchar(500) NULL,
	"add2" varchar(500) NULL,
	"add3" varchar(500) NULL,
	"add4" varchar(500) NULL,
	"pin" varchar(50) NULL,
	"phone" varchar(50) NULL,
	"email" varchar(500) NULL,
	"fax" varchar(50) NULL,
	"subareacode" varchar(100) NULL,
	"dob" timestamp NULL,
	"dow" timestamp NULL,
	"lat" double precision NULL,
	"long" double precision NULL,
	"shname" varchar(500) NULL,
	"grade" varchar(100) NULL,
	"category" varchar(200) NULL,
	"contactperson" varchar(500) NULL,
	"contactpersonmobileno" varchar(50) NULL,
	"TLDLNo1" varchar(500) NULL,
	"TLDLNo2" varchar(500) NULL,
	"DLValidDate1" timestamp NULL,
	"FoodDLNo1" varchar(500) NULL,
	"PANNo1" varchar(200) NULL,
	"TLDLNo11" varchar(500) NULL,
	"TLDLNo12" varchar(500) NULL,
	"DLValidDate2" timestamp NULL,
	"FoodDLNo2" varchar(500) NULL,
	"PANNo2" varchar(500) NULL,
	"n_sascollection" varchar(100) NULL
) 
;
/****** Object:  Table "xltempadmin_subarea_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin_subarea_mst"(
	"srno" integer NOT NULL,
	"subareacode" varchar(20) NULL,
	"subareaname" varchar(100) NULL,
	"shortname" varchar(10) NULL,
	"areacode" varchar(15) NULL,
	"hqflag" integer NULL,
	"lat" double precision NULL,
	"long" double precision NULL,
	"clasifcncode" varchar(15) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin_target_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin_target_mst"(
	"srno" integer NULL,
	"fscode" varchar(10) NULL,
	"itemcode" varchar(10) NULL,
	"qty" integer NULL,
	"nmonth" integer NULL,
	"nyear" integer NULL,
	"HQFSFlag" integer NULL,
	"BrandItemFlag" integer NULL,
	"PriSecFlag" integer NULL
) 
;
/****** Object:  Table "xltempadmin_zone_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin_zone_mst"(
	"srno" integer NOT NULL,
	"zonecode" varchar(20) NULL,
	"zonename" varchar(100) NULL,
	"shortname" varchar(10) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin1_Chemist_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin1_Chemist_mst"(
	"srno" integer NOT NULL,
	"code" varchar(20) NULL,
	"name" varchar(50) NULL,
	"add1" varchar(100) NULL,
	"add2" varchar(100) NULL,
	"city" varchar(100) NULL,
	"state" varchar(50) NULL,
	"pin" varchar(50) NULL,
	"phone" varchar(50) NULL,
	"referenceno" varchar(50) NULL,
	"email" varchar(100) NULL,
	"fscode" varchar(50) NULL,
	"subareacode" varchar(50) NULL,
	"lat" double precision NULL,
	"long" double precision NULL,
	"tin" varchar(50) NULL,
	"lic" varchar(50) NULL,
	"contactname" varchar(50) NULL,
	"sftshop" numeric(18, 0) NULL,
	"displayshelf" numeric(9, 0) NULL,
	"descdisplayshelf" varchar(100) NULL,
	"fboardheight" numeric(18, 0) NULL,
	"fboardlength" numeric(18, 0) NULL,
	"backlit" integer NULL,
	"computrised" integer NULL,
	"licfood" varchar(50) NULL,
	"sort" varchar(10) NULL,
	"contactmob" varchar(20) NULL,
	"contoutletnumber" varchar(50) NULL,
	"landmark" varchar(100) NULL,
	"grade" varchar(10) NULL,
	"dob" timestamp NULL,
	"dow" timestamp NULL,
	"outlettype" varchar(15) NULL,
	"shortname" varchar(10) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin1_Doc_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin1_Doc_mst"(
	"srno" integer NOT NULL,
	"code" varchar(10) NULL,
	"firstname" varchar(50) NULL,
	"middlename" varchar(50) NULL,
	"lastname" varchar(50) NULL,
	"gradecode" varchar(10) NULL,
	"qualification" varchar(50) NULL,
	"clinichospitalname" varchar(100) NULL,
	"streetname" varchar(100) NULL,
	"area" varchar(100) NULL,
	"landmark" varchar(100) NULL,
	"city" varchar(100) NULL,
	"state" varchar(100) NULL,
	"pin" varchar(20) NULL,
	"housebuildingname" varchar(100) NULL,
	"streetname1" varchar(100) NULL,
	"area1" varchar(100) NULL,
	"landmark1" varchar(100) NULL,
	"city1" varchar(100) NULL,
	"state1" varchar(100) NULL,
	"pin1" varchar(20) NULL,
	"phone" varchar(20) NULL,
	"landno" varchar(20) NULL,
	"referenceno" varchar(20) NULL,
	"categorycode" varchar(20) NULL,
	"subareacode" varchar(20) NULL,
	"age" varchar(20) NULL,
	"dob" varchar(20) NULL,
	"dow" varchar(20) NULL,
	"email" varchar(50) NULL,
	"fscode" varchar(50) NULL,
	"divcode" varchar(50) NULL,
	"lat" double precision NULL,
	"long" double precision NULL,
	"class" varchar(50) NULL,
	"spousename" varchar(100) NULL,
	"spousedob" varchar(50) NULL,
	"mcino" varchar(50) NULL,
	"speciality" varchar(50) NULL,
	"noofpatients" varchar(50) NULL,
	"currentBusiness" varchar(50) NULL,
	"Businesspotential" varchar(50) NULL,
	"doctorpotential" varchar(50) NULL,
	"doctorpurchasing" varchar(50) NULL,
	"doctorprescribing" varchar(50) NULL,
	"child1name" varchar(50) NULL,
	"child1dob" varchar(50) NULL,
	"child2name" varchar(50) NULL,
	"child2dob" varchar(50) NULL,
	"child3name" varchar(50) NULL,
	"child3dob" varchar(50) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin2_Chemist_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin2_Chemist_mst"(
	"srno" integer NOT NULL,
	"code" varchar(20) NULL,
	"name" varchar(50) NULL,
	"add1" varchar(100) NULL,
	"add2" varchar(100) NULL,
	"city" varchar(100) NULL,
	"state" varchar(50) NULL,
	"pin" varchar(50) NULL,
	"phone" varchar(50) NULL,
	"referenceno" varchar(50) NULL,
	"email" varchar(100) NULL,
	"fscode" varchar(50) NULL,
	"subareacode" varchar(50) NULL,
	"lat" double precision NULL,
	"long" double precision NULL,
	"tin" varchar(50) NULL,
	"lic" varchar(50) NULL,
	"contactname" varchar(50) NULL,
	"sftshop" numeric(18, 0) NULL,
	"displayshelf" numeric(9, 0) NULL,
	"descdisplayshelf" varchar(100) NULL,
	"fboardheight" numeric(18, 0) NULL,
	"fboardlength" numeric(18, 0) NULL,
	"backlit" integer NULL,
	"computrised" integer NULL,
	"licfood" varchar(50) NULL,
	"contactmob" varchar(20) NULL,
	"contoutletnumber" varchar(50) NULL,
	"landmark" varchar(100) NULL,
	"grade" varchar(10) NULL,
	"dob" timestamp NULL,
	"dow" timestamp NULL,
	"outlettype" varchar(15) NULL,
	"shortname" varchar(10) NULL,
	"fridge" integer NULL,
	"windowsize" varchar(100) NULL,
	"storemanager" varchar(50) NULL,
	"storeclassification" varchar(50) NULL,
	"storetype" varchar(50) NULL,
	"distributorcode" varchar(50) NULL,
	"agreementdate" timestamp NULL,
	"totaldiscountperc" numeric(5, 2) NULL,
	"fromdate" timestamp NULL,
	"todate" timestamp NULL,
	"accountcode" varchar(50) NULL,
	"hostelfacility" integer NULL,
	"typeoffood" text NULL,
	"noofcanteens" integer NULL,
	"canteencontractorname" varchar(100) NULL,
	"canteencontractoraddress" varchar(100) NULL,
	"degreeno" varchar(500) NULL,
	"classtype" varchar(10) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin2_Doc_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin2_Doc_mst"(
	"srno" integer NOT NULL,
	"code" varchar(10) NULL,
	"firstname" varchar(50) NULL,
	"middlename" varchar(50) NULL,
	"lastname" varchar(50) NULL,
	"gradecode" varchar(10) NULL,
	"qualification" varchar(50) NULL,
	"clinichospitalname" varchar(200) NULL,
	"streetname" varchar(100) NULL,
	"area" varchar(100) NULL,
	"landmark" varchar(100) NULL,
	"city" varchar(100) NULL,
	"state" varchar(100) NULL,
	"pin" varchar(14) NULL,
	"housebuildingname" varchar(100) NULL,
	"streetname1" varchar(100) NULL,
	"area1" varchar(100) NULL,
	"landmark1" varchar(100) NULL,
	"city1" varchar(100) NULL,
	"state1" varchar(100) NULL,
	"pin1" varchar(14) NULL,
	"phone" varchar(14) NULL,
	"landno" varchar(14) NULL,
	"referenceno" varchar(14) NULL,
	"categorycode" varchar(14) NULL,
	"subareacode" varchar(50) NULL,
	"age" varchar(14) NULL,
	"dob" varchar(50) NULL,
	"dow" varchar(50) NULL,
	"email" varchar(50) NULL,
	"fscode" varchar(50) NULL,
	"divcode" varchar(50) NULL,
	"lat" double precision NULL,
	"long" double precision NULL,
	"class" varchar(50) NULL,
	"spousename" varchar(100) NULL,
	"spousedob" varchar(50) NULL,
	"mcino" varchar(50) NULL,
	"speciality" varchar(50) NULL,
	"noofpatients" varchar(50) NULL,
	"currentBusiness" varchar(50) NULL,
	"Businesspotential" varchar(50) NULL,
	"doctorpotential" varchar(50) NULL,
	"doctorpurchasing" varchar(50) NULL,
	"doctorprescribing" varchar(50) NULL,
	"child1name" varchar(50) NULL,
	"child1dob" varchar(50) NULL,
	"child2name" varchar(50) NULL,
	"child2dob" varchar(50) NULL,
	"child3name" varchar(50) NULL,
	"child3dob" varchar(50) NULL,
	"panno" varchar(20) NULL,
	"Hstreetname" varchar(50) NULL,
	"Hareaname" varchar(50) NULL,
	"Hlandmark" varchar(50) NULL,
	"Hcity" varchar(50) NULL,
	"Hstate" varchar(50) NULL,
	"Hpincode" varchar(10) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin2_DrCoreProd_Mapping"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin2_DrCoreProd_Mapping"(
	"srno" integer NOT NULL,
	"doctorcode" varchar(20) NULL,
	"p1" varchar(50) NULL,
	"p2" varchar(50) NULL,
	"p3" varchar(50) NULL,
	"p4" varchar(50) NULL,
	"p5" varchar(50) NULL,
	"p6" varchar(50) NULL,
	"p7" varchar(50) NULL,
	"p8" varchar(50) NULL,
	"p9" varchar(50) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin2_employee_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin2_employee_mst"(
	"srno" integer NOT NULL,
	"employeecode" varchar(10) NULL,
	"employeename" varchar(100) NULL,
	"designation" varchar(100) NULL,
	"qualification" varchar(100) NULL,
	"add1" varchar(100) NULL,
	"add2" varchar(100) NULL,
	"add3" varchar(100) NULL,
	"add4" varchar(100) NULL,
	"pin" varchar(20) NULL,
	"phone" varchar(20) NULL,
	"fax" varchar(20) NULL,
	"dob" timestamp NULL,
	"doj" timestamp NULL,
	"dow" timestamp NULL,
	"description" varchar(100) NULL,
	"accno" varchar(50) NULL,
	"bankcode" varchar(10) NULL,
	"Location" varchar(20) NULL,
	"Grade" varchar(10) NULL,
	"Department" varchar(20) NULL,
	"Sex" varchar(4) NULL,
	"Title" varchar(10) NULL,
	"Role" varchar(10) NULL,
	"OfficePhoneno" varchar(20) NULL,
	"Extensionno" varchar(20) NULL,
	"DOC" timestamp NULL,
	"DOR" timestamp NULL,
	"OffEmailID" varchar(50) NULL,
	"PersonalEmailID" varchar(50) NULL,
	"parentcode" varchar(20) NULL,
	"rtgs" varchar(12) NULL,
	"pan" varchar(50) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin2_fs_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin2_fs_mst"(
	"srno" integer NOT NULL,
	"empcode" varchar(15) NULL,
	"fscode" varchar(15) NULL,
	"fstype" integer NULL,
	"areacode" varchar(15) NULL,
	"parentcode" varchar(15) NULL,
	"divcode" varchar(10) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin2_grade_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin2_grade_mst"(
	"srno" integer NOT NULL,
	"gradecode" varchar(20) NULL,
	"gradename" varchar(50) NULL,
	"noofvisit" integer NULL,
	"shortname" varchar(50) NULL,
	"type" integer NULL,
	"subarea" varchar(50) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin2_hospital_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin2_hospital_mst"(
	"srno" integer NOT NULL,
	"hospitalcode" varchar(200) NULL,
	"hospitalname" varchar(500) NULL,
	"type" varchar(500) NULL,
	"grade" varchar(10) NULL,
	"regioncode" varchar(20) NULL,
	"areacode" varchar(20) NULL,
	"subareacode" varchar(20) NULL,
	"category" varchar(20) NULL,
	"streetname" varchar(500) NULL,
	"area" varchar(500) NULL,
	"landmark" varchar(500) NULL,
	"city" varchar(500) NULL,
	"state" varchar(500) NULL,
	"pin" varchar(20) NULL,
	"landno" varchar(20) NULL,
	"inhouse pharmacy" varchar(50) NULL,
	"financial turnover" varchar(100) NULL,
	"potential" varchar(100) NULL,
	"no of beds" varchar(100) NULL,
	"no of emergency beds" varchar(100) NULL,
	"no of critical icu beds" varchar(100) NULL,
	"no of surgical theaters" varchar(100) NULL,
	"hospital" varchar(100) NULL,
	"total no of doctors working" varchar(100) NULL,
	"purchase manager name" text NULL,
	"purchase manager contact" varchar(100) NULL,
	"stock incharge name" varchar(100) NULL,
	"stock incharge contact" varchar(100) NULL,
	"financial officer name" varchar(100) NULL,
	"financial officer contact" varchar(100) NULL,
	"no of therapeutic group" varchar(100) NULL,
	"teaching institution" varchar(100) NULL,
	"therapeutic group code" varchar(200) NULL,
	"pgcode" varchar(200) NULL,
	"purchase manager mail id" varchar(200) NULL,
	"purchase team size" varchar(10) NULL,
	"stockiest name" varchar(200) NULL,
	"fs mapping" varchar(200) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin2_Others_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin2_Others_mst"(
	"srno" integer NOT NULL,
	"code" varchar(20) NULL,
	"name" varchar(100) NULL,
	"gradecode" varchar(20) NULL,
	"qualification" varchar(200) NULL,
	"add1" varchar(200) NULL,
	"add2" varchar(200) NULL,
	"add3" varchar(200) NULL,
	"add4" varchar(200) NULL,
	"pin" varchar(100) NULL,
	"phone" varchar(100) NULL,
	"referenceno" varchar(100) NULL,
	"categorycode" varchar(100) NULL,
	"subareacode" varchar(100) NULL,
	"emailid" varchar(100) NULL,
	"dob" timestamp NULL,
	"dow" timestamp NULL,
	"lat" double precision NULL,
	"long" double precision NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin2_stockiest_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin2_stockiest_mst"(
	"srno" integer NULL,
	"code" varchar(50) NULL,
	"NAME" varchar(300) NULL,
	"add1" varchar(500) NULL,
	"add2" varchar(500) NULL,
	"add3" varchar(500) NULL,
	"add4" varchar(500) NULL,
	"pin" varchar(50) NULL,
	"phone" varchar(50) NULL,
	"email" varchar(500) NULL,
	"fax" varchar(50) NULL,
	"subareacode" varchar(100) NULL,
	"dob" timestamp NULL,
	"dow" timestamp NULL,
	"lat" double precision NULL,
	"long" double precision NULL,
	"shname" varchar(500) NULL,
	"grade" varchar(100) NULL,
	"category" varchar(200) NULL,
	"contactperson" varchar(500) NULL,
	"contactpersonmobileno" varchar(50) NULL,
	"TLDLNo1" varchar(500) NULL,
	"TLDLNo2" varchar(500) NULL,
	"DLValidDate1" timestamp NULL,
	"FoodDLNo1" varchar(500) NULL,
	"PANNo1" varchar(200) NULL,
	"TLDLNo11" varchar(500) NULL,
	"TLDLNo12" varchar(500) NULL,
	"DLValidDate2" timestamp NULL,
	"FoodDLNo2" varchar(500) NULL,
	"PANNo2" varchar(500) NULL,
	"n_sascollection" varchar(100) NULL
) 
;
/****** Object:  Table "xltempadmin2_subarea_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin2_subarea_mst"(
	"srno" integer NOT NULL,
	"subareacode" varchar(20) NULL,
	"subareaname" varchar(100) NULL,
	"shortname" varchar(10) NULL,
	"areacode" varchar(15) NULL,
	"hqflag" integer NULL,
	"lat" double precision NULL,
	"long" double precision NULL,
	"clasifcncode" varchar(15) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin3_Categ_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin3_Categ_mst"(
	"srno" integer NOT NULL,
	"catcode" varchar(20) NULL,
	"catname" varchar(50) NULL,
	"shortname" varchar(50) NULL,
	"type" integer NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin3_Chemist_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin3_Chemist_mst"(
	"srno" integer NOT NULL,
	"code" varchar(20) NULL,
	"name" varchar(50) NULL,
	"add1" varchar(100) NULL,
	"add2" varchar(100) NULL,
	"city" varchar(100) NULL,
	"state" varchar(50) NULL,
	"pin" varchar(50) NULL,
	"phone" varchar(50) NULL,
	"referenceno" varchar(50) NULL,
	"email" varchar(100) NULL,
	"fscode" varchar(50) NULL,
	"subareacode" varchar(50) NULL,
	"lat" double precision NULL,
	"long" double precision NULL,
	"tin" varchar(50) NULL,
	"lic" varchar(50) NULL,
	"contactname" varchar(50) NULL,
	"sftshop" numeric(18, 0) NULL,
	"displayshelf" numeric(9, 0) NULL,
	"descdisplayshelf" varchar(100) NULL,
	"fboardheight" numeric(18, 0) NULL,
	"fboardlength" numeric(18, 0) NULL,
	"backlit" integer NULL,
	"computrised" integer NULL,
	"licfood" varchar(50) NULL,
	"contactmob" varchar(20) NULL,
	"contoutletnumber" varchar(50) NULL,
	"landmark" varchar(100) NULL,
	"grade" varchar(10) NULL,
	"dob" timestamp NULL,
	"dow" timestamp NULL,
	"outlettype" varchar(15) NULL,
	"shortname" varchar(10) NULL,
	"fridge" integer NULL,
	"windowsize" varchar(100) NULL,
	"storemanager" varchar(50) NULL,
	"storeclassification" varchar(50) NULL,
	"storetype" varchar(50) NULL,
	"distributorcode" varchar(50) NULL,
	"agreementdate" timestamp NULL,
	"totaldiscountperc" numeric(5, 2) NULL,
	"fromdate" timestamp NULL,
	"todate" timestamp NULL,
	"accountcode" varchar(50) NULL,
	"hostelfacility" integer NULL,
	"typeoffood" text NULL,
	"noofcanteens" integer NULL,
	"canteencontractorname" varchar(100) NULL,
	"canteencontractoraddress" varchar(100) NULL,
	"degreeno" varchar(500) NULL,
	"classtype" varchar(10) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin3_Doc_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin3_Doc_mst"(
	"srno" integer NOT NULL,
	"code" varchar(10) NULL,
	"firstname" varchar(50) NULL,
	"middlename" varchar(50) NULL,
	"lastname" varchar(50) NULL,
	"gradecode" varchar(10) NULL,
	"qualification" varchar(50) NULL,
	"clinichospitalname" varchar(200) NULL,
	"streetname" varchar(100) NULL,
	"area" varchar(100) NULL,
	"landmark" varchar(100) NULL,
	"city" varchar(100) NULL,
	"state" varchar(100) NULL,
	"pin" varchar(14) NULL,
	"housebuildingname" varchar(100) NULL,
	"streetname1" varchar(100) NULL,
	"area1" varchar(100) NULL,
	"landmark1" varchar(100) NULL,
	"city1" varchar(100) NULL,
	"state1" varchar(100) NULL,
	"pin1" varchar(14) NULL,
	"phone" varchar(14) NULL,
	"landno" varchar(14) NULL,
	"referenceno" varchar(14) NULL,
	"categorycode" varchar(14) NULL,
	"subareacode" varchar(50) NULL,
	"age" varchar(14) NULL,
	"dob" varchar(50) NULL,
	"dow" varchar(50) NULL,
	"email" varchar(50) NULL,
	"fscode" varchar(50) NULL,
	"divcode" varchar(50) NULL,
	"lat" double precision NULL,
	"long" double precision NULL,
	"class" varchar(50) NULL,
	"spousename" varchar(100) NULL,
	"spousedob" varchar(50) NULL,
	"mcino" varchar(50) NULL,
	"speciality" varchar(50) NULL,
	"noofpatients" varchar(50) NULL,
	"currentBusiness" varchar(50) NULL,
	"Businesspotential" varchar(50) NULL,
	"doctorpotential" varchar(50) NULL,
	"doctorpurchasing" varchar(50) NULL,
	"doctorprescribing" varchar(50) NULL,
	"child1name" varchar(50) NULL,
	"child1dob" varchar(50) NULL,
	"child2name" varchar(50) NULL,
	"child2dob" varchar(50) NULL,
	"child3name" varchar(50) NULL,
	"child3dob" varchar(50) NULL,
	"panno" varchar(20) NULL,
	"Hstreetname" varchar(50) NULL,
	"Hareaname" varchar(50) NULL,
	"Hlandmark" varchar(50) NULL,
	"Hcity" varchar(50) NULL,
	"Hstate" varchar(50) NULL,
	"Hpincode" varchar(10) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin4_Chemist_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin4_Chemist_mst"(
	"srno" integer NOT NULL,
	"code" varchar(20) NULL,
	"name" varchar(50) NULL,
	"add1" varchar(100) NULL,
	"add2" varchar(100) NULL,
	"city" varchar(100) NULL,
	"state" varchar(50) NULL,
	"pin" varchar(50) NULL,
	"phone" varchar(50) NULL,
	"referenceno" varchar(50) NULL,
	"email" varchar(100) NULL,
	"fscode" varchar(50) NULL,
	"subareacode" varchar(50) NULL,
	"lat" double precision NULL,
	"long" double precision NULL,
	"tin" varchar(50) NULL,
	"lic" varchar(50) NULL,
	"contactname" varchar(50) NULL,
	"sftshop" numeric(18, 0) NULL,
	"displayshelf" numeric(9, 0) NULL,
	"descdisplayshelf" varchar(100) NULL,
	"fboardheight" numeric(18, 0) NULL,
	"fboardlength" numeric(18, 0) NULL,
	"backlit" integer NULL,
	"computrised" integer NULL,
	"licfood" varchar(50) NULL,
	"contactmob" varchar(20) NULL,
	"contoutletnumber" varchar(50) NULL,
	"landmark" varchar(100) NULL,
	"grade" varchar(10) NULL,
	"dob" timestamp NULL,
	"dow" timestamp NULL,
	"outlettype" varchar(15) NULL,
	"shortname" varchar(10) NULL,
	"fridge" integer NULL,
	"windowsize" varchar(100) NULL,
	"storemanager" varchar(50) NULL,
	"storeclassification" varchar(50) NULL,
	"storetype" varchar(50) NULL,
	"distributorcode" varchar(50) NULL,
	"agreementdate" timestamp NULL,
	"totaldiscountperc" numeric(5, 2) NULL,
	"fromdate" timestamp NULL,
	"todate" timestamp NULL,
	"accountcode" varchar(50) NULL,
	"hostelfacility" integer NULL,
	"typeoffood" text NULL,
	"noofcanteens" integer NULL,
	"canteencontractorname" varchar(100) NULL,
	"canteencontractoraddress" varchar(100) NULL,
	"degreeno" varchar(500) NULL,
	"classtype" varchar(10) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin4_Doc_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin4_Doc_mst"(
	"srno" integer NOT NULL,
	"code" varchar(10) NULL,
	"firstname" varchar(50) NULL,
	"middlename" varchar(50) NULL,
	"lastname" varchar(50) NULL,
	"gradecode" varchar(10) NULL,
	"qualification" varchar(50) NULL,
	"clinichospitalname" varchar(200) NULL,
	"streetname" varchar(100) NULL,
	"area" varchar(100) NULL,
	"landmark" varchar(100) NULL,
	"city" varchar(100) NULL,
	"state" varchar(100) NULL,
	"pin" varchar(14) NULL,
	"housebuildingname" varchar(100) NULL,
	"streetname1" varchar(100) NULL,
	"area1" varchar(100) NULL,
	"landmark1" varchar(100) NULL,
	"city1" varchar(100) NULL,
	"state1" varchar(100) NULL,
	"pin1" varchar(14) NULL,
	"phone" varchar(14) NULL,
	"landno" varchar(14) NULL,
	"referenceno" varchar(14) NULL,
	"categorycode" varchar(14) NULL,
	"subareacode" varchar(50) NULL,
	"age" varchar(14) NULL,
	"dob" varchar(50) NULL,
	"dow" varchar(50) NULL,
	"email" varchar(50) NULL,
	"fscode" varchar(50) NULL,
	"divcode" varchar(50) NULL,
	"lat" double precision NULL,
	"long" double precision NULL,
	"class" varchar(50) NULL,
	"spousename" varchar(100) NULL,
	"spousedob" varchar(50) NULL,
	"mcino" varchar(50) NULL,
	"speciality" varchar(50) NULL,
	"noofpatients" varchar(50) NULL,
	"currentBusiness" varchar(50) NULL,
	"Businesspotential" varchar(50) NULL,
	"doctorpotential" varchar(50) NULL,
	"doctorpurchasing" varchar(50) NULL,
	"doctorprescribing" varchar(50) NULL,
	"child1name" varchar(50) NULL,
	"child1dob" varchar(50) NULL,
	"child2name" varchar(50) NULL,
	"child2dob" varchar(50) NULL,
	"child3name" varchar(50) NULL,
	"child3dob" varchar(50) NULL,
	"panno" varchar(20) NULL,
	"Hstreetname" varchar(50) NULL,
	"Hareaname" varchar(50) NULL,
	"Hlandmark" varchar(50) NULL,
	"Hcity" varchar(50) NULL,
	"Hstate" varchar(50) NULL,
	"Hpincode" varchar(10) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin4_DrCoreProd_Mapping"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin4_DrCoreProd_Mapping"(
	"srno" integer NOT NULL,
	"doctorcode" varchar(20) NULL,
	"p1" varchar(50) NULL,
	"p2" varchar(50) NULL,
	"p3" varchar(50) NULL,
	"p4" varchar(50) NULL,
	"p5" varchar(50) NULL,
	"p6" varchar(50) NULL,
	"p7" varchar(50) NULL,
	"p8" varchar(50) NULL,
	"p9" varchar(50) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin4_employee_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin4_employee_mst"(
	"srno" integer NOT NULL,
	"employeecode" varchar(10) NULL,
	"employeename" varchar(100) NULL,
	"designation" varchar(100) NULL,
	"qualification" varchar(100) NULL,
	"add1" varchar(100) NULL,
	"add2" varchar(100) NULL,
	"add3" varchar(100) NULL,
	"add4" varchar(100) NULL,
	"pin" varchar(20) NULL,
	"phone" varchar(20) NULL,
	"fax" varchar(20) NULL,
	"dob" timestamp NULL,
	"doj" timestamp NULL,
	"dow" timestamp NULL,
	"description" varchar(100) NULL,
	"accno" varchar(50) NULL,
	"bankcode" varchar(10) NULL,
	"Location" varchar(20) NULL,
	"Grade" varchar(10) NULL,
	"Department" varchar(20) NULL,
	"Sex" varchar(4) NULL,
	"Title" varchar(10) NULL,
	"Role" varchar(10) NULL,
	"OfficePhoneno" varchar(20) NULL,
	"Extensionno" varchar(20) NULL,
	"DOC" timestamp NULL,
	"DOR" timestamp NULL,
	"OffEmailID" varchar(50) NULL,
	"PersonalEmailID" varchar(50) NULL,
	"parentcode" varchar(20) NULL,
	"rtgs" varchar(12) NULL,
	"pan" varchar(50) NULL,
	"job_description" varchar(1000) NULL,
	"C_ESI_NO" varchar(15) NULL,
	"AdharNo" varchar(50) NULL,
	"EmergencyMobileNo" varchar(20) NULL,
	"ContactName" varchar(200) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin4_fs_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin4_fs_mst"(
	"srno" integer NOT NULL,
	"empcode" varchar(15) NULL,
	"fscode" varchar(15) NULL,
	"fstype" integer NULL,
	"areacode" varchar(15) NULL,
	"parentcode" varchar(15) NULL,
	"divcode" varchar(10) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin4_hospital_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin4_hospital_mst"(
	"srno" integer NOT NULL,
	"hospitalcode" varchar(200) NULL,
	"hospitalname" varchar(500) NULL,
	"type" varchar(500) NULL,
	"grade" varchar(10) NULL,
	"regioncode" varchar(20) NULL,
	"areacode" varchar(20) NULL,
	"subareacode" varchar(20) NULL,
	"category" varchar(20) NULL,
	"streetname" varchar(500) NULL,
	"area" varchar(500) NULL,
	"landmark" varchar(500) NULL,
	"city" varchar(500) NULL,
	"state" varchar(500) NULL,
	"pin" varchar(20) NULL,
	"landno" varchar(20) NULL,
	"inhouse pharmacy" varchar(50) NULL,
	"financial turnover" varchar(100) NULL,
	"potential" varchar(100) NULL,
	"no of beds" varchar(100) NULL,
	"no of emergency beds" varchar(100) NULL,
	"no of critical icu beds" varchar(100) NULL,
	"no of surgical theaters" varchar(100) NULL,
	"hospital" varchar(100) NULL,
	"total no of doctors working" varchar(100) NULL,
	"purchase manager name" text NULL,
	"purchase manager contact" varchar(100) NULL,
	"stock incharge name" varchar(100) NULL,
	"stock incharge contact" varchar(100) NULL,
	"financial officer name" varchar(100) NULL,
	"financial officer contact" varchar(100) NULL,
	"no of therapeutic group" varchar(100) NULL,
	"teaching institution" varchar(100) NULL,
	"therapeutic group code" varchar(200) NULL,
	"pgcode" varchar(200) NULL,
	"purchase manager mail id" varchar(200) NULL,
	"purchase team size" varchar(10) NULL,
	"stockiest name" varchar(200) NULL,
	"fs mapping" varchar(200) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin4_Item_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin4_Item_mst"(
	"srno" integer NOT NULL,
	"itemcode" varchar(20) NULL,
	"itemname" varchar(100) NULL,
	"shortname" varchar(7) NULL,
	"type" integer NULL,
	"company" varchar(50) NULL,
	"description" varchar(100) NULL,
	"pack" varchar(20) NULL,
	"ptr" numeric(18, 4) NULL,
	"mrp" numeric(18, 4) NULL,
	"stdrate" numeric(18, 4) NULL,
	"pts" numeric(18, 4) NULL,
	"brand" varchar(20) NULL,
	"catcode" varchar(20) NULL,
	"divcode" varchar(20) NULL,
	"groupcode" varchar(10) NULL,
	"nrvrate" numeric(18, 4) NULL,
	"manufacturercode" varchar(50) NULL,
	"qtyperstrip" varchar(10) NULL,
	"referencecode" varchar(500) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin4_regionholiday_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin4_regionholiday_mst"(
	"srno" integer NULL,
	"code" varchar(50) NULL,
	"holiday" integer NULL,
	"rgdate" timestamp NULL
) 
;
/****** Object:  Table "xltempadmin4_sdn"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin4_sdn"(
	"srno" numeric(30, 0) NOT NULL,
	"dep_code" varchar(10) NULL,
	"d_date" timestamp NULL,
	"prefix" varchar(50) NULL,
	"n_srno" numeric(30, 0) NULL,
	"emp_code" varchar(10) NULL,
	"itemcode" varchar(10) NULL,
	"qty" numeric(18, 4) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
/****** Object:  Table "xltempadmin4_stockiest_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempadmin4_stockiest_mst"(
	"srno" integer NULL,
	"code" varchar(50) NULL,
	"NAME" varchar(300) NULL,
	"add1" varchar(500) NULL,
	"add2" varchar(500) NULL,
	"add3" varchar(500) NULL,
	"add4" varchar(500) NULL,
	"pin" varchar(50) NULL,
	"phone" varchar(50) NULL,
	"email" varchar(500) NULL,
	"fax" varchar(50) NULL,
	"subareacode" varchar(100) NULL,
	"dob" timestamp NULL,
	"dow" timestamp NULL,
	"lat" double precision NULL,
	"long" double precision NULL,
	"shname" varchar(500) NULL,
	"grade" varchar(100) NULL,
	"category" varchar(200) NULL,
	"contactperson" varchar(500) NULL,
	"contactpersonmobileno" varchar(50) NULL,
	"TLDLNo1" varchar(500) NULL,
	"TLDLNo2" varchar(500) NULL,
	"DLValidDate1" timestamp NULL,
	"FoodDLNo1" varchar(500) NULL,
	"PANNo1" varchar(200) NULL,
	"TLDLNo11" varchar(500) NULL,
	"TLDLNo12" varchar(500) NULL,
	"DLValidDate2" timestamp NULL,
	"FoodDLNo2" varchar(500) NULL,
	"PANNo2" varchar(500) NULL,
	"n_sascollection" varchar(100) NULL
) 
;
/****** Object:  Table "xltempdiaspa_Doc_mst"    Script Date: 5/20/2026 2:30:23 PM ******/
;
;
CREATE TABLE "xltempdiaspa_Doc_mst"(
	"srno" integer NOT NULL,
	"code" varchar(10) NULL,
	"firstname" varchar(50) NULL,
	"middlename" varchar(50) NULL,
	"lastname" varchar(50) NULL,
	"gradecode" varchar(10) NULL,
	"qualification" varchar(50) NULL,
	"clinichospitalname" varchar(100) NULL,
	"streetname" varchar(100) NULL,
	"area" varchar(100) NULL,
	"landmark" varchar(100) NULL,
	"city" varchar(100) NULL,
	"state" varchar(100) NULL,
	"pin" varchar(14) NULL,
	"housebuildingname" varchar(100) NULL,
	"streetname1" varchar(100) NULL,
	"area1" varchar(100) NULL,
	"landmark1" varchar(100) NULL,
	"city1" varchar(100) NULL,
	"state1" varchar(100) NULL,
	"pin1" varchar(14) NULL,
	"phone" varchar(14) NULL,
	"landno" varchar(14) NULL,
	"referenceno" varchar(14) NULL,
	"categorycode" varchar(14) NULL,
	"subareacode" varchar(14) NULL,
	"age" varchar(14) NULL,
	"dob" varchar(20) NULL,
	"dow" varchar(20) NULL,
	"email" varchar(50) NULL,
	"fscode" varchar(50) NULL,
	"divcode" varchar(50) NULL,
	"lat" double precision NULL,
	"long" double precision NULL,
	"class" varchar(50) NULL,
	"spousename" varchar(100) NULL,
	"spousedob" varchar(50) NULL,
	"mcino" varchar(50) NULL,
	"speciality" varchar(50) NULL,
	"noofpatients" varchar(50) NULL,
	"currentBusiness" varchar(50) NULL,
	"Businesspotential" varchar(50) NULL,
	"doctorpotential" varchar(50) NULL,
	"doctorpurchasing" varchar(50) NULL,
	"doctorprescribing" varchar(50) NULL,
	"child1name" varchar(50) NULL,
	"child1dob" varchar(50) NULL,
	"child2name" varchar(50) NULL,
	"child2dob" varchar(50) NULL,
	"child3name" varchar(50) NULL,
	"child3dob" varchar(50) NULL,
PRIMARY KEY  
(
	"srno" 
) 
) 
;
ALTER TABLE "daywisestatus" ALTER COLUMN "N_Srno" SET DEFAULT '0'
;
ALTER TABLE "DynamicMasterSetup" ALTER COLUMN "groupid" SET DEFAULT '0'
;
ALTER TABLE "DynamicMasterSetup" ALTER COLUMN "n_modifier" SET DEFAULT '0'
;
ALTER TABLE "DynamicMasterSetup" ALTER COLUMN "n_Validator" SET DEFAULT '0'
;
ALTER TABLE "DynamicMasterSetup" ALTER COLUMN "n_combination" SET DEFAULT '0'
;
ALTER TABLE "DynamicMasterSetup" ALTER COLUMN "n_editQuery" SET DEFAULT '0'
;
ALTER TABLE "DynamicMasterSetup" ALTER COLUMN "Requiredupdate" SET DEFAULT '0'
;
ALTER TABLE "DynamicMasterSetup" ALTER COLUMN "Requiredsave" SET DEFAULT '0'
;
ALTER TABLE "DynamicMasterSetup" ALTER COLUMN "n_pop_up" SET DEFAULT '0'
;
ALTER TABLE "DynamicMasterSetup" ALTER COLUMN "n_delete_chek" SET DEFAULT '0'
;
ALTER TABLE "DynamicMasterSetup" ALTER COLUMN "n_toggle" SET DEFAULT '0'
;
ALTER TABLE "mclinsertion" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "mob_ErrorLog" ALTER COLUMN "ErrorTime" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Account_Group" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Account_Group" ALTER COLUMN "n_active" SET DEFAULT '0'
;
ALTER TABLE "tbl_Account_Group" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Account_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Account_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_account_type" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_account_type" ALTER COLUMN "n_active" SET DEFAULT '0'
;
ALTER TABLE "tbl_activity_process" ALTER COLUMN "d_created_on" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_activity_process_log" ALTER COLUMN "log_created_on" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_AdminMessage_Mst" ALTER COLUMN "N_Read" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Alert_Activated" ALTER COLUMN "n_sms_email" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Alert_Sms" ALTER COLUMN "d_date" SET DEFAULT (NULL)
;
ALTER TABLE "Tbl_Alert_Sms" ALTER COLUMN "n_send" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Alert_Sms" ALTER COLUMN "C_EmpCode_From" SET DEFAULT ('Auto')
;
ALTER TABLE "tbl_Alkem_DrLocation_Hitcount" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Alkem_DrLocation_ImgSaveDetails" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Alkem_DrLocation_UpdateDrDetails" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_android_api_payload_log" ALTER COLUMN "d_createdon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Android_Crash_Log" ALTER COLUMN "c_Apk" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_android_forced_login" ALTER COLUMN "n_status" SET DEFAULT '0'
;
ALTER TABLE "tbl_Android_Service_CallTime" ALTER COLUMN "d_datetime" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Android_Service_CallTime" ALTER COLUMN "c_id" SET DEFAULT '1'
;
ALTER TABLE "Tbl_Area_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Area_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_area_othersubarea_mapping" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_asset_fs_question_mst" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_asset_request" ALTER COLUMN "n_Request_type" SET DEFAULT ((3))
;
ALTER TABLE "tbl_asset_type_mst" ALTER COLUMN "n_category" SET DEFAULT '0'
;
ALTER TABLE "tbl_Auto_Stp_Setup_TAallowance_det" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Autocode_Mst" ALTER COLUMN "n_autocodelgth" SET DEFAULT ((7))
;
ALTER TABLE "tbl_campaign_data_collection" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Campaign_Mst" ALTER COLUMN "n_Deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Campaign_Mst" ALTER COLUMN "d_Created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_CampaignRequest_Hdr" ALTER COLUMN "n_Deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_CampaignRequest_Hdr" ALTER COLUMN "n_Rejected" SET DEFAULT '0'
;
ALTER TABLE "tbl_CampTopic_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_CampTopic_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_CampTye_Fs_Mapping" ALTER COLUMN "d_modified" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_CampType_Mst" ALTER COLUMN "n_status" SET DEFAULT '0'
;
ALTER TABLE "tbl_CampType_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_CampType_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_candidate_desk_mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_candidate_desk_mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_candidate_desk_setup" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_candidate_desk_setup" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Category_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Category_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Category_Mst" ALTER COLUMN "c_modifier" SET DEFAULT ('ADM0001')
;
ALTER TABLE "Tbl_Category_Mst" ALTER COLUMN "n_CatStatus" SET DEFAULT '1'
;
ALTER TABLE "Tbl_Chem_Request" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Chem_Request" ALTER COLUMN "C_Approved" SET DEFAULT '0'
;
ALTER TABLE "tbl_chemist_mst_ril" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_chemist_pob_hdr" ALTER COLUMN "n_status" SET DEFAULT '0'
;
ALTER TABLE "tbl_chemist_pob_hdr" ALTER COLUMN "d_posting_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Circular_Def_Det" ALTER COLUMN "n_status" SET DEFAULT '0'
;
ALTER TABLE "tbl_circular_Mst" ALTER COLUMN "n_active" SET DEFAULT '1'
;
ALTER TABLE "tbl_circular_Mst" ALTER COLUMN "n_must_read" SET DEFAULT '0'
;
ALTER TABLE "tbl_circular_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_circular_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_circular_Mst" ALTER COLUMN "n_Disply_Type" SET DEFAULT '0'
;
ALTER TABLE "tbl_circulartype_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_City_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_City_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_City_Mst" ALTER COLUMN "n_metroclassification" SET DEFAULT '1'
;
ALTER TABLE "Tbl_claim_desk" ALTER COLUMN "N_DELETED" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_desk" ALTER COLUMN "D_CREATED" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_claim_det" ALTER COLUMN "N_DAYTYPE" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_det" ALTER COLUMN "N_NO_DR" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_det" ALTER COLUMN "N_NO_CHM" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_det" ALTER COLUMN "N_NO_STK" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_det" ALTER COLUMN "N_DISTANCE" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_det" ALTER COLUMN "N_STPDISTANCE" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_det" ALTER COLUMN "N_VISITTYPE" SET DEFAULT ((4))
;
ALTER TABLE "tbl_Claim_FileUpload_Daily" ALTER COLUMN "d_Date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_claim_format_det" ALTER COLUMN "N_FLAG" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_format_det" ALTER COLUMN "n_type" SET DEFAULT ((2))
;
ALTER TABLE "Tbl_claim_format_det" ALTER COLUMN "N_UPPER_LIMIT" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_format_det" ALTER COLUMN "N_DEFAULT_VALUE" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_format_det" ALTER COLUMN "n_check" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_format_det" ALTER COLUMN "N_MonthlyFixdExp" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_format_mst" ALTER COLUMN "N_MONTH_DAY" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_format_mst" ALTER COLUMN "N_VISITDETAIL_FROM" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_format_mst" ALTER COLUMN "N_PLACEVISIT_HEADER" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_format_mst" ALTER COLUMN "N_PRE_CLAIM_REF" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_format_mst" ALTER COLUMN "N_DETAIL_REQUIRED" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_format_mst" ALTER COLUMN "N_SUMMARY_REQUIRED" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_format_mst" ALTER COLUMN "N_REIMBURSMENT_REQUIRED" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_format_mst" ALTER COLUMN "N_DETAIL_DR_COUNT" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_format_mst" ALTER COLUMN "N_DETAIL_CHEM_COUNT" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_format_mst" ALTER COLUMN "N_DETAIL_STK_COUNT" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_format_mst" ALTER COLUMN "N_DETAIL_DIST_KM" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_format_mst" ALTER COLUMN "n_detail_dist_stp_km" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_format_mst" ALTER COLUMN "N_DETAIL_VISITTYPE" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_format_mst" ALTER COLUMN "N_DETAIL_WORKWITH" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_format_mst" ALTER COLUMN "N_DETAIL_DESCRIPTION_LOOKUP" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_format_mst" ALTER COLUMN "N_STATUS" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_format_mst" ALTER COLUMN "N_DELETED" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_format_mst" ALTER COLUMN "D_CREATED" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_claim_format_mst" ALTER COLUMN "n_stayed_at" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_format_mst" ALTER COLUMN "N_MonthlyFixdExp" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_format_mst" ALTER COLUMN "n_ModeOfTravel" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_format_mst" ALTER COLUMN "n_DA_TA_Confn_Remarks" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_log" ALTER COLUMN "N_DELETED" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_log" ALTER COLUMN "n_approved_amt" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_mst" ALTER COLUMN "N_APPROVED" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_mst" ALTER COLUMN "N_MANUAL_AUTO" SET DEFAULT '1'
;
ALTER TABLE "Tbl_claim_mst" ALTER COLUMN "N_CONFIRMED" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_mst" ALTER COLUMN "N_DELETED" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_mst" ALTER COLUMN "n_claimed_amt" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_mst" ALTER COLUMN "n_approved_amt" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_mst" ALTER COLUMN "n_confirmed_amt" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_mst" ALTER COLUMN "n_confirmsubmit" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_mst" ALTER COLUMN "n_reconfirm" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_mst_approval_log" ALTER COLUMN "D_MODIFIED" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_claim_mst_approval_log" ALTER COLUMN "n_type" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_claim_onboard_outlet" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_claim_setup" ALTER COLUMN "n_auto_claim" SET DEFAULT '1'
;
ALTER TABLE "Tbl_claim_setup" ALTER COLUMN "n_approval_required" SET DEFAULT '1'
;
ALTER TABLE "Tbl_claim_setup" ALTER COLUMN "n_claim_approval" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_setup" ALTER COLUMN "n_lock_days" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_setup" ALTER COLUMN "n_EditRequired" SET DEFAULT '1'
;
ALTER TABLE "Tbl_claim_setup" ALTER COLUMN "n_setup_status" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_setup" ALTER COLUMN "n_PrintButtonOnSubmit" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_sub_det" ALTER COLUMN "C_EXP_CODE" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_sub_det" ALTER COLUMN "N_ROWID" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_sub_det" ALTER COLUMN "N_APPROVED_AMT" SET DEFAULT '0'
;
ALTER TABLE "Tbl_claim_sub_det" ALTER COLUMN "N_TYPE" SET DEFAULT '1'
;
ALTER TABLE "tbl_ClaimType_Mst" ALTER COLUMN "n_sfatype" SET DEFAULT '0'
;
ALTER TABLE "tbl_ClaimType_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_ClaimType_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Classification_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Classification_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_CME_RTM_Control_Panel_Active_Rps_Mode" ALTER COLUMN "D_Created_On" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_CME_RTM_Request" ALTER COLUMN "Acknowledgement_check" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Commessage_Mst" ALTER COLUMN "N_Deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Competator_Audit_Cycle" ALTER COLUMN "N_DELETED" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Competator_Info_Det" ALTER COLUMN "n_type" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Competator_Mst" ALTER COLUMN "N_PRIORITY" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Competator_Mst" ALTER COLUMN "N_CREATION_TYPE" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Competator_Mst" ALTER COLUMN "N_DELETED" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Competator_Mst" ALTER COLUMN "N_unit_price" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Competator_Setup" ALTER COLUMN "N_EDITDAYS" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Competator_Setup" ALTER COLUMN "n_value_auto" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Competator_Setup" ALTER COLUMN "n_unitprice_consider" SET DEFAULT '1'
;
ALTER TABLE "Tbl_Competator_Setup" ALTER COLUMN "n_item_display" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Competator_Setup" ALTER COLUMN "n_rcpa_doctor_display" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Competator_Source" ALTER COLUMN "N_DELETED" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_month_exp_review" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "N_JobDesc" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "N_HQ_Address" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_MCRAddmarks" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_Dcr_Others_Product_Mandatory" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_Dcr_Others_sample_madatory" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_ConsiderGrade_NoOfVisit_ForDrDisplay" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "c_DownLoad_FilePath" SET DEFAULT ('D:\ExportReport')
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_leaveValidationDCR" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "c_password" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_McrExistsOnDayBeforeRptDt" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_STPUploadEnabled" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_ExpenseDailyUpload" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_DcrDrNoteMandatory" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_DcrMCrMiscellaneousEnable" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_syncdays" SET DEFAULT ((3))
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_timeout" SET DEFAULT ((120))
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_company_status" SET DEFAULT '1'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_Mcr_doctor_pob_details" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_addworkedwithself" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "dcr_misc_limit_hide" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "mcr_misc_limit_hide" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_doc_phone_order" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_android_camera" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_SequentialCheckingDCRMCRSeperate" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_Dcr_Patient_Product_Mandatory" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_DcrPatientNoteMandatory" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_DcrPatientSalesEntry" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_Exp_RelDoc_Upload" SET DEFAULT '1'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_FmcgDaywise" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_FmcgWeekwise" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_FmcgMonthwise" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "N_DocUpdateMngr" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_ClinicHospitalAddressCboOrTxt" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_captchavalidate" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_campaign_confirmation" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_campgn_frmdate" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_RPS_prev_exe_date" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_prp_prev_date" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_edit_TP_in_approval" SET DEFAULT '1'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_expns_areavisited" SET DEFAULT '1'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_expns_leavetype" SET DEFAULT '1'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_Doclimitcheck" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_PRP_RPS_Enable_sms" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_PRP_RPS_Enable_email" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_exp_reconfirm_block" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_core_product_numbers" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_auto_STP_page" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_visitTypeLimitCheck" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_stpdist_block_same_subarea_chk" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_auto_leave" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_expns_aprv_aftr_ss" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_mngr_expns_aftr_me" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_dcrtomcrcopy" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_dcr_stayAt" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_geo_max_distance_flag" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_distance_entry_dcr" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_distance_entry_mcr" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_download_file_delete_enable" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_rpsflow" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_android_edit_flag" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_login_questionnaire" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_leave_fy" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_leavebalanceshowhide" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_DCRMorngevgMand" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_corepro_mand" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_visit_type_dcr" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_visit_type_mcr" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_input_track_exp_block" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_android_dashboard" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_self_assessment_validate" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_asset_email" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_fmcg_hunter_calls" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_fmcg_farmer_calls" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_fmcg_hunterfarmer_calls" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_asset_master_email" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_sandwitch_leave" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "RegionWise_CategoryWiseDocVisit_heteroo" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "Ideltimeout" SET DEFAULT ((15))
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_expense_moreve_show_areavisit" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_dwr_delete_unlock_approve_email_flag" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_dcr_unlock_prevoius_alldays" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_rps_gift_max_doc_count" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_rps_item_mapping_required" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_rps_approval_skip_days" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_expense_list_limit" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_expense_entry_dcrdays" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_c2c_dr_wise_mandatory_settings_days" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_c2c_item_multipleselection" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_vacany_alert_frequency" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst" ALTER COLUMN "n_dbe_dwr_blockstartday" SET DEFAULT '0'
;
ALTER TABLE "tbl_controlpanel_mst_expense" ALTER COLUMN "n_Expense_MTPDeviation_Highlight" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_controlpanel_mst_expense" ALTER COLUMN "n_Expense_NoVisit_Highlight" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_controlpanel_mst_expense" ALTER COLUMN "n_Expense_VisitTypeHQ_Highlight" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_controlpanel_mst_expense" ALTER COLUMN "n_BlockDayWiseExpenceEntry" SET DEFAULT '0'
;
ALTER TABLE "tbl_controlpanel_mst_expense" ALTER COLUMN "n_AddBeneficiaryDetails" SET DEFAULT '0'
;
ALTER TABLE "tbl_controlpanel_mst_expense" ALTER COLUMN "n_EntryPageLimitHide" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst_Log" ALTER COLUMN "n_distance_entry_dcr" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst_Log" ALTER COLUMN "n_distance_entry_mcr" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ControlPanel_Mst_Log" ALTER COLUMN "n_download_file_delete_enable" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Core_Product_log_delete" ALTER COLUMN "D_Date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_covid_survey" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_covid_survey_log" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_CRM_Template_Mst" ALTER COLUMN "n_Deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_dbe_customer_details" ALTER COLUMN "d_create" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_dbe_dwr_unlock" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_dbe_dwr_unlock_delete_log" ALTER COLUMN "d_delete" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_dbe_upload_files" ALTER COLUMN "d_created_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_dcotor_location_api_update" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_dcr_component_mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_Dcr_LockActivation" ALTER COLUMN "d_Modified" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dcr_LockActivation" ALTER COLUMN "n_flag" SET DEFAULT '0'
;
ALTER TABLE "tbl_Dcr_LockActivation_history" ALTER COLUMN "d_Modified" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dcr_LockActivation_history" ALTER COLUMN "n_flag" SET DEFAULT '0'
;
ALTER TABLE "tbl_Dcr_LockActivation_log" ALTER COLUMN "d_Modified" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dcr_LockActivation_log" ALTER COLUMN "n_flag" SET DEFAULT '0'
;
ALTER TABLE "tbl_dcr_mcr_samp_gift_promo_setup" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dcr_PSG_Mandatory" ALTER COLUMN "n_product" SET DEFAULT '0'
;
ALTER TABLE "tbl_Dcr_PSG_Mandatory" ALTER COLUMN "n_sample" SET DEFAULT '0'
;
ALTER TABLE "tbl_Dcr_PSG_Mandatory" ALTER COLUMN "n_gift" SET DEFAULT '0'
;
ALTER TABLE "tbl_dcrmcr_approve_log" ALTER COLUMN "d_approved_rejected_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_dd" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Degree_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Degree_Mst" ALTER COLUMN "n_status" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Degree_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Delivery_mst" ALTER COLUMN "N_Flag" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Delivery_mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Delivery_mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_department_mst" ALTER COLUMN "N_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_department_mst" ALTER COLUMN "D_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Depot_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Depot_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Depot_Stock" ALTER COLUMN "n_bal_qty" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Depot_Stock" ALTER COLUMN "n_brk_qty" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Depot_Stock" ALTER COLUMN "n_srt" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Depot_Stock" ALTER COLUMN "n_mrp" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Depot_Stock" ALTER COLUMN "n_exc_rt" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Depot_Stock" ALTER COLUMN "n_trt" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Depot_Stock" ALTER COLUMN "n_strip_box" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Depot_Stock" ALTER COLUMN "n_box_case" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Depot_Stock" ALTER COLUMN "n_lock" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Depot_Stock" ALTER COLUMN "n_prt" SET DEFAULT '0'
;
ALTER TABLE "tbl_desk_mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_desk_mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_direct_expence" ALTER COLUMN "n_claim_amount" SET DEFAULT '0'
;
ALTER TABLE "tbl_direct_expence" ALTER COLUMN "n_app_amount" SET DEFAULT '0'
;
ALTER TABLE "tbl_direct_expence" ALTER COLUMN "n_add" SET DEFAULT '0'
;
ALTER TABLE "tbl_direct_expence" ALTER COLUMN "n_less" SET DEFAULT '0'
;
ALTER TABLE "tbl_dispense_mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_dispense_mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_DisplaySetup_Followup" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_DisplaySetupRequest" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_DisplaySetupRequest" ALTER COLUMN "n_status" SET DEFAULT '0'
;
ALTER TABLE "Tbl_District_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_District_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Div_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Div_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_doc_grade_mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_doc_grade_mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_doc_grade_mst" ALTER COLUMN "n_rpt_display" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Doc_Imag_Save" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Doc_MultipleSub_Det" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_Doc_MultipleSub_Det_Bckup" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Doc_Req_Setup" ALTER COLUMN "n_Code" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Doc_Req_Setup" ALTER COLUMN "n_Name" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Doc_Req_Setup" ALTER COLUMN "n_Qualification" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Doc_Req_Setup" ALTER COLUMN "n_Address1" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Doc_Req_Setup" ALTER COLUMN "n_Address2" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Doc_Req_Setup" ALTER COLUMN "n_Address3" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Doc_Req_Setup" ALTER COLUMN "n_SubArea" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Doc_Req_Setup" ALTER COLUMN "n_Phone" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Doc_Req_Setup" ALTER COLUMN "n_MCL_No" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Doc_Req_Setup" ALTER COLUMN "n_Category" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Doc_Req_Setup" ALTER COLUMN "n_PinCode" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Doc_Req_Setup" ALTER COLUMN "n_DateOfBirth" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Doc_Req_Setup" ALTER COLUMN "n_DateOfWedding" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Doc_Req_Setup" ALTER COLUMN "n_EMail" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Doc_Req_Setup" ALTER COLUMN "n_Grade" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Doc_Req_Setup" ALTER COLUMN "n_ApprovalFlag" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Doc_Req_Setup" ALTER COLUMN "n_type" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Doc_Req_Setup" ALTER COLUMN "n_DrClass" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Doc_Stock_Chem_Add_Det" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Doc_Stock_Chem_Add_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Doc_Stock_Chem_Add_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Doc_Stock_LimitChk_Det" ALTER COLUMN "d_from_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Doc_Stock_LimitChk_Det_log" ALTER COLUMN "d_from_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Doc_Stock_LimitChk_Det_log" ALTER COLUMN "d_inserteddate" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_docinv_cluster_approval" ALTER COLUMN "n_type" SET DEFAULT '0'
;
ALTER TABLE "tbl_DocInv_InvHtml_SAvecopy" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_DocInv_Req_Mst" ALTER COLUMN "n_confirm_bu_skip" SET DEFAULT '0'
;
ALTER TABLE "tbl_DocInv_Req_Mst_rps_reject_log" ALTER COLUMN "n_confirm_bu_skip" SET DEFAULT '0'
;
ALTER TABLE "TBL_DOCINV_SETUP" ALTER COLUMN "n_AmntValidate" SET DEFAULT '1'
;
ALTER TABLE "TBL_DOCINV_SETUP" ALTER COLUMN "n_gift_nongift" SET DEFAULT '0'
;
ALTER TABLE "TBL_DOCINV_SETUP" ALTER COLUMN "n_vendor" SET DEFAULT '0'
;
ALTER TABLE "tbl_doctor_registration_image" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_doctor_registration_image_log" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_doctor_registration_image_temp" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_DoctorPOB_FMCG_HDR" ALTER COLUMN "d_order_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dr_confirmationSetup_mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_Dr_confirmationSetup_mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_dr_confirmsetup_details" ALTER COLUMN "d_createddate" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_DrDuplication_Group" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_DrDuplication_Group_Unique" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_DrUpdateRequestSetup_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_DSCA_Type" ALTER COLUMN "n_CreateUserrights" SET DEFAULT '0'
;
ALTER TABLE "Tbl_DSCA_Type" ALTER COLUMN "n_AddIn_HeirarchySetup" SET DEFAULT '0'
;
ALTER TABLE "Tbl_DWR" ALTER COLUMN "N_Srno" SET DEFAULT '0'
;
ALTER TABLE "Tbl_DWR" ALTER COLUMN "D_Created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_DWR" ALTER COLUMN "n_workedwithself" SET DEFAULT '0'
;
ALTER TABLE "Tbl_DWR" ALTER COLUMN "n_distance_entry" SET DEFAULT '0'
;
ALTER TABLE "tbl_dwr_ctype_det_agegroup" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dwr_CType_Details" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_dwr_delete_data" ALTER COLUMN "n_delete_flag" SET DEFAULT '0'
;
ALTER TABLE "tbl_dwr_delete_data" ALTER COLUMN "d_date_delete" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_DWR_Details" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_DWR_Details" ALTER COLUMN "c_no_promotional" SET DEFAULT ('0')
;
ALTER TABLE "Tbl_DWR_Details" ALTER COLUMN "c_no_ctoc" SET DEFAULT ('0')
;
ALTER TABLE "Tbl_DWR_Details" ALTER COLUMN "c_no_asset" SET DEFAULT ('0')
;
ALTER TABLE "Tbl_DWR_Details" ALTER COLUMN "c_no_camp" SET DEFAULT ('0')
;
ALTER TABLE "TBL_DWR_DSCOIMAGE" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dwr_Edit_History" ALTER COLUMN "d_EditDate" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_DWR_Mobile" ALTER COLUMN "d_CreatedDate" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_Compare_Master" ALTER COLUMN "n_status" SET DEFAULT '0'
;
ALTER TABLE "tbl_Dynamic_Compare_Master" ALTER COLUMN "d_createdon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_Compare_Master" ALTER COLUMN "d_modifiedon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_Control_Category_Master" ALTER COLUMN "n_status" SET DEFAULT '0'
;
ALTER TABLE "tbl_Dynamic_Control_Category_Master" ALTER COLUMN "d_createdon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_Control_Category_Master" ALTER COLUMN "d_modifiedon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_Control_Compare_Table" ALTER COLUMN "n_status" SET DEFAULT '0'
;
ALTER TABLE "tbl_Dynamic_Control_Compare_Table" ALTER COLUMN "d_createdon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_Control_Compare_Table" ALTER COLUMN "d_modifiedon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_Control_Custom_Default_Data" ALTER COLUMN "n_status" SET DEFAULT '0'
;
ALTER TABLE "tbl_Dynamic_Control_Custom_Default_Data" ALTER COLUMN "d_createdon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_Control_Custom_Default_Data" ALTER COLUMN "d_modifiedon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_Control_Default_Data" ALTER COLUMN "n_status" SET DEFAULT '0'
;
ALTER TABLE "tbl_Dynamic_Control_Default_Data" ALTER COLUMN "d_createdon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_Control_Default_Data" ALTER COLUMN "d_modifiedon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_Control_Dependency" ALTER COLUMN "n_status" SET DEFAULT '0'
;
ALTER TABLE "tbl_Dynamic_Control_Dependency" ALTER COLUMN "d_createdon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_Control_Dependency" ALTER COLUMN "d_modifiedon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_Control_Types_Master" ALTER COLUMN "n_status" SET DEFAULT '0'
;
ALTER TABLE "tbl_Dynamic_Control_Types_Master" ALTER COLUMN "d_createdon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_Control_Types_Master" ALTER COLUMN "d_modifiedon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_Control_Validation_Details" ALTER COLUMN "n_status" SET DEFAULT '0'
;
ALTER TABLE "tbl_Dynamic_Control_Validation_Details" ALTER COLUMN "d_createdon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_Control_Validation_Details" ALTER COLUMN "d_modifiedon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_Controls" ALTER COLUMN "n_status" SET DEFAULT '0'
;
ALTER TABLE "tbl_Dynamic_Controls" ALTER COLUMN "d_createdon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_Controls" ALTER COLUMN "d_modifiedon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_DataType_Master" ALTER COLUMN "n_status" SET DEFAULT '0'
;
ALTER TABLE "tbl_Dynamic_DataType_Master" ALTER COLUMN "d_createdon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_DataType_Master" ALTER COLUMN "d_modifiedon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_RegEx_Expressions_Master" ALTER COLUMN "n_status" SET DEFAULT '0'
;
ALTER TABLE "tbl_Dynamic_RegEx_Expressions_Master" ALTER COLUMN "d_createdon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_RegEx_Expressions_Master" ALTER COLUMN "d_modifiedon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_Report_Controls" ALTER COLUMN "n_status" SET DEFAULT '0'
;
ALTER TABLE "tbl_Dynamic_Report_Controls" ALTER COLUMN "d_createdon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_Report_Controls" ALTER COLUMN "d_modifiedon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_Report_Master" ALTER COLUMN "d_createdon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_Report_Master" ALTER COLUMN "d_modifiedon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_Report_Master" ALTER COLUMN "n_isCSV" SET DEFAULT '1'
;
ALTER TABLE "tbl_Dynamic_Report_Master" ALTER COLUMN "n_isDirectView" SET DEFAULT '0'
;
ALTER TABLE "tbl_Dynamic_Report_View" ALTER COLUMN "c_created_on" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_Report_View_Data" ALTER COLUMN "d_createdon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_dynamic_survey_mst" ALTER COLUMN "d_from_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_dynamic_survey_mst" ALTER COLUMN "n_status" SET DEFAULT '1'
;
ALTER TABLE "tbl_dynamic_survey_mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_Dynamic_Validation_Type_Master" ALTER COLUMN "n_status" SET DEFAULT '0'
;
ALTER TABLE "tbl_Dynamic_Validation_Type_Master" ALTER COLUMN "d_createdon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Dynamic_Validation_Type_Master" ALTER COLUMN "d_modifiedon" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_DynamicRoleMasterSetup" ALTER COLUMN "groupid" SET DEFAULT '0'
;
ALTER TABLE "tbl_DynamicRoleMasterSetup" ALTER COLUMN "n_modifier" SET DEFAULT '0'
;
ALTER TABLE "tbl_DynamicRoleMasterSetup" ALTER COLUMN "n_Validator" SET DEFAULT '0'
;
ALTER TABLE "tbl_DynamicRoleMasterSetup" ALTER COLUMN "n_combination" SET DEFAULT '0'
;
ALTER TABLE "tbl_DynamicRoleMasterSetup" ALTER COLUMN "n_editQuery" SET DEFAULT '0'
;
ALTER TABLE "tbl_DynamicRoleMasterSetup" ALTER COLUMN "Requiredupdate" SET DEFAULT '0'
;
ALTER TABLE "tbl_DynamicRoleMasterSetup" ALTER COLUMN "Requiredsave" SET DEFAULT '0'
;
ALTER TABLE "tbl_DynamicRoleMasterSetup" ALTER COLUMN "n_pop_up" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ED_ZipExcel_Temp_Upload" ALTER COLUMN "d_date" SET DEFAULT (to_char(CURRENT_TIMESTAMP, 'DD/MM/YYYY'))
;
ALTER TABLE "tbl_edetail_greetings_setup" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_edetail_title_det" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_edetail_title_det" ALTER COLUMN "n_sort_order" SET DEFAULT '0'
;
ALTER TABLE "tbl_edetail_title_det_changed_history" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_edetail_title_det_changed_history" ALTER COLUMN "n_sort_order" SET DEFAULT '0'
;
ALTER TABLE "tbl_edetail_title_det_history" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_edetail_title_det_history" ALTER COLUMN "n_sort_order" SET DEFAULT '0'
;
ALTER TABLE "tbl_edetail_Title_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_edetail_Title_Mst_Changed_history" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_edetail_Title_Mst_History" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_edetail_Video_Upload" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_edi_sample_process" ALTER COLUMN "c_prefix" SET DEFAULT ('SM')
;
ALTER TABLE "tbl_edi_sample_process" ALTER COLUMN "n_cancel_flag" SET DEFAULT '0'
;
ALTER TABLE "tbl_email_inbox_history" ALTER COLUMN "d_datetime" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Emp_LeaveDetails" ALTER COLUMN "n_display_report" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Emp_Mst" ALTER COLUMN "N_Deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Emp_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Emp_Mst" ALTER COLUMN "C_ROLE" SET DEFAULT '0'
;
ALTER TABLE "tbl_error_log_HtmlReportGenerator" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_EventPlaner_mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_EventPlaner_mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_excel_generation_rpt_name" ALTER COLUMN "n_flag" SET DEFAULT '1'
;
ALTER TABLE "tbl_excel_generation_rpt_name" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_ExpenceClaim_PrpRps" ALTER COLUMN "N_ActualExpence" SET DEFAULT '0'
;
ALTER TABLE "tbl_ExpenceClaim_PrpRps" ALTER COLUMN "N_AdvanceReceived" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Expense" ALTER COLUMN "N_TA" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Expense" ALTER COLUMN "N_DA" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Expense" ALTER COLUMN "N_DA_APP" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Expense" ALTER COLUMN "N_TA_APP" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Expense" ALTER COLUMN "N_TOT_KM" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Expense" ALTER COLUMN "N_EXPA" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Expense" ALTER COLUMN "N_EXPB" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Expense" ALTER COLUMN "N_EXPC" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Expense" ALTER COLUMN "N_EXPA_APP" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Expense" ALTER COLUMN "N_EXPB_APP" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Expense" ALTER COLUMN "N_EXPC_APP" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Expense" ALTER COLUMN "N_APPROVED" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Expense" ALTER COLUMN "N_CONFIRMED" SET DEFAULT '0'
;
ALTER TABLE "tbl_expense_beneficiary_details" ALTER COLUMN "n_srno" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_expense_beneficiary_details" ALTER COLUMN "c_beneficiary" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_expense_beneficiary_details" ALTER COLUMN "c_PaymentChequeNo" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_expense_beneficiary_details" ALTER COLUMN "d_PaymentDate" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_expense_beneficiary_details" ALTER COLUMN "c_PaymentDetails" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_expense_beneficiary_details" ALTER COLUMN "n_PaymentAmount" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_expense_beneficiary_details" ALTER COLUMN "n_rowid" SET DEFAULT '1'
;
ALTER TABLE "tbl_expense_beneficiary_details" ALTER COLUMN "n_status" SET DEFAULT '1'
;
ALTER TABLE "tbl_expense_beneficiary_details" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_expense_beneficiary_details_log" ALTER COLUMN "n_srno" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_expense_beneficiary_details_log" ALTER COLUMN "c_beneficiary" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_expense_beneficiary_details_log" ALTER COLUMN "c_PaymentChequeNo" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_expense_beneficiary_details_log" ALTER COLUMN "d_PaymentDate" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_expense_beneficiary_details_log" ALTER COLUMN "c_PaymentDetails" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_expense_beneficiary_details_log" ALTER COLUMN "n_PaymentAmount" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_expense_beneficiary_details_log" ALTER COLUMN "n_rowid" SET DEFAULT '1'
;
ALTER TABLE "tbl_expense_beneficiary_details_log" ALTER COLUMN "n_status" SET DEFAULT '1'
;
ALTER TABLE "tbl_expense_beneficiary_details_log" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Expense_LockActivation" ALTER COLUMN "d_Modified" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Expense_LockActivation_log" ALTER COLUMN "d_Modified" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Expense_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Expense_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Expense_Mst" ALTER COLUMN "n_visible" SET DEFAULT '1'
;
ALTER TABLE "tbl_expenseApproval_ErrorChecking" ALTER COLUMN "d_dateupdated" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_expenseApproval_ErrorChecking_ForApprovalStaus" ALTER COLUMN "d_dateapproved" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_ExpenseCategory" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ExpenseCategory" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_ExportReport_Tables_mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_fmcg_scheme_mst" ALTER COLUMN "d_createddate" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_fmcg_scheme_mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_Food_Master" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_Food_Master" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_fs_mandatoryflag_mapping" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_fs_mandatoryflag_mapping_log" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_FS_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_FS_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_fsemp_map" ALTER COLUMN "n_stp_no" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_fsheirarchy_change" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_fsheirarchy_change" ALTER COLUMN "n_doc_update_flag" SET DEFAULT '0'
;
ALTER TABLE "tbl_fsheirarchy_change_log" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Gadget_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Gadget_Mst" ALTER COLUMN "n_active" SET DEFAULT '1'
;
ALTER TABLE "tbl_Gadget_SetUp" ALTER COLUMN "n_Collapsed" SET DEFAULT '0'
;
ALTER TABLE "tbl_Gadget_SetUp" ALTER COLUMN "n_Deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_general_setup_Auto_SFC" ALTER COLUMN "D_Created_On" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_general_setup_cme_rtm_expense" ALTER COLUMN "d_created_on" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_general_setup_cme_rtm_expense_sfa_approval_hierarchy" ALTER COLUMN "d_created_on" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_general_setup_non_sfa_approval_hierarchy" ALTER COLUMN "D_Created_On" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_general_setup_psa_amount_mapping" ALTER COLUMN "D_Created_On" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_general_setup_sfa_approval_hierarchy" ALTER COLUMN "D_Created_On" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_general_setup_sfc_expence" ALTER COLUMN "D_Created_On" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Grade_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_Grade_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_doccode" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_docname" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_clinicName" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_clinicStreetName" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_clinicAreaName" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_clinicLandmark" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_clinicCityCode" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_clinicState" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_clinicPinCode" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_clinicSelAreaCode" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_resBuildName" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_resStreetName" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_resArea" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_resLandMark" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_resCityCode" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_resState" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_resPinCode" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_docRegNo" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_yrRegNo" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_regImageName" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_noExpHighQuali" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_therapAreaCode" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_noJournalPubli" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_noOfAuthorship" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_partRadio" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_partCheckValue" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_speakerRadio" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_speakerCheckValue" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_editorialBoard" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_position" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_experienceCode" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_documentCollect" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_panNo" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_panImage" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_email" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_qualificationCode" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_qualificationImage" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "C_Subarea_Code" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_mobileno" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "C_Category" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "n_lami" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "n_lgmi" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_prescription_pad_image" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_visiting_card_image" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_hospital_clinic_signboard_image" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_others_image" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_hcp_confirm_edit_disable_setup" ALTER COLUMN "c_pan_name" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_fmv_category" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_doccode" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_docname" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_clinicName" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_clinicStreetName" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_clinicAreaName" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_clinicLandmark" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_clinicCityCode" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_clinicState" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_clinicPinCode" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_clinicSelAreaCode" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_resBuildName" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_resStreetName" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_resArea" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_resLandMark" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_resCityCode" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_resState" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_resPinCode" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_docRegNo" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_yrRegNo" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_regImageName" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_noExpHighQuali" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_therapAreaCode" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_noJournalPubli" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_noOfAuthorship" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_partRadio" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_partCheckValue" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_speakerRadio" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_speakerCheckValue" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_editorialBoard" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_position" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_experienceCode" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_documentCollect" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_panNo" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_panImage" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_email" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_qualificationCode" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_qualificationImage" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "C_Subarea_Code" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_mobileno" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "C_Category" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "n_lami" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "n_lgmi" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_prescription_pad_image" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_visiting_card_image" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_hospital_clinic_signboard_image" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_others_image" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "n_type" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_remarks" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_pan_name" SET DEFAULT '0'
;
ALTER TABLE "tbl_hcp_mandatory_setup" ALTER COLUMN "c_any_image_mandatory_count" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Heirarchy_PSG_DSCA_Settings" ALTER COLUMN "N_Product" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Heirarchy_PSG_DSCA_Settings" ALTER COLUMN "N_Sample" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Heirarchy_PSG_DSCA_Settings" ALTER COLUMN "N_Gift" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Heirarchy_PSG_DSCA_Settings" ALTER COLUMN "n_promo" SET DEFAULT '1'
;
ALTER TABLE "Tbl_Heirarchy_PSG_DSCA_Settings" ALTER COLUMN "n_c2c" SET DEFAULT '1'
;
ALTER TABLE "Tbl_Heirarchy_PSG_DSCA_Settings" ALTER COLUMN "n_assetdoctors" SET DEFAULT '1'
;
ALTER TABLE "Tbl_Heirarchy_PSG_DSCA_Settings" ALTER COLUMN "n_camp" SET DEFAULT '1'
;
ALTER TABLE "tbl_Hit_Count" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Holiday_Desc" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Holiday_Desc" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Holiday_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Holiday_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_hospital_mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_HospitalMaster" ALTER COLUMN "n_status" SET DEFAULT '1'
;
ALTER TABLE "tbl_HospitalMaster" ALTER COLUMN "d_created_on" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Institution_type" ALTER COLUMN "n_active" SET DEFAULT '0'
;
ALTER TABLE "tbl_Institution_type" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Investment_desk" ALTER COLUMN "N_DELETED" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Investment_desk" ALTER COLUMN "D_CREATED" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Item_Category_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Item_Category_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Item_Mst" ALTER COLUMN "N_Status" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Item_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Item_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_ItemDetail_Mst" ALTER COLUMN "n_fstype" SET DEFAULT '1'
;
ALTER TABLE "Tbl_ItemGroup_Category" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ItemGroup_Category" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_LandMark_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_LandMark_Mst" ALTER COLUMN "n_status" SET DEFAULT '0'
;
ALTER TABLE "Tbl_LandMark_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_LBLDoc_MailStatus" ALTER COLUMN "n_status" SET DEFAULT '0'
;
ALTER TABLE "tbl_LBLDoc_MailStatus" ALTER COLUMN "d_starttime" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_LC_Integration" ALTER COLUMN "D_CreatedOn" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Leave_Direct_approval_setup" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_Leave_Direct_approval_setup" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_leave_shiftapproval" ALTER COLUMN "d_Modified" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Leave_Type" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Leave_Type" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Log_FSPARENTChk" ALTER COLUMN "d_Date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_ManageExpenseTA_AdditionalSettings" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ManageExpenseTA_AdditionalSettings" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_MandatoryCircular" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_MandatoryCircular" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_Material_Dispatch_Detailss" ALTER COLUMN "d_dispatchdate" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_Material_Eligibility_Mst" ALTER COLUMN "n_flag" SET DEFAULT '0'
;
ALTER TABLE "tbl_Material_Eligibility_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_Material_Eligibility_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Material_Group_Mst" ALTER COLUMN "n_type" SET DEFAULT '0'
;
ALTER TABLE "tbl_Material_Group_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_Material_Group_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_material_mst" ALTER COLUMN "N_Deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_material_request" ALTER COLUMN "n_priority" SET DEFAULT ((3))
;
ALTER TABLE "tbl_material_request_heirarchy" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_material_request_heirarchy" ALTER COLUMN "n_active" SET DEFAULT '0'
;
ALTER TABLE "tbl_mdm_device_mapping" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_mdm_device_mapping" ALTER COLUMN "d_modified" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_menu_favourite" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_metroclassification" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_mkt_DWR" ALTER COLUMN "N_Srno" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Mkt_STP_Det_Temp_Upload" ALTER COLUMN "d_date" SET DEFAULT (to_char(CURRENT_TIMESTAMP, 'DD/MM/YYYY'))
;
ALTER TABLE "Tbl_mkt_WorkType" ALTER COLUMN "n_flag" SET DEFAULT '0'
;
ALTER TABLE "Tbl_mkt_WorkType" ALTER COLUMN "n_Chflag" SET DEFAULT '0'
;
ALTER TABLE "Tbl_mkt_WorkType" ALTER COLUMN "n_stockflag" SET DEFAULT '0'
;
ALTER TABLE "Tbl_mkt_WorkType" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_mkt_WorkType" ALTER COLUMN "N_Status" SET DEFAULT '1'
;
ALTER TABLE "Tbl_mkt_WorkType" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_mkt_WorkType" ALTER COLUMN "d_modified" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_mkt_WorkType" ALTER COLUMN "n_OthersFlag" SET DEFAULT '0'
;
ALTER TABLE "Tbl_mkt_WorkType" ALTER COLUMN "n_campflag" SET DEFAULT '0'
;
ALTER TABLE "tbl_mngr_gift_allocation_stock" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_mngr_gift_allocation_upload" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_mngr_gift_allocation_upload" ALTER COLUMN "n_validationpass" SET DEFAULT '0'
;
ALTER TABLE "tbl_mngr_gift_allocation_upload" ALTER COLUMN "d_modified" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_MTP" ALTER COLUMN "auto_appr_flag" SET DEFAULT '0'
;
ALTER TABLE "Tbl_MTP" ALTER COLUMN "c_is_approved" SET DEFAULT (NULL)
;
ALTER TABLE "Tbl_MTP" ALTER COLUMN "n_resubmitted_count" SET DEFAULT '0'
;
ALTER TABLE "tbl_mtp_daywise_msg" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_MTP_Details" ALTER COLUMN "c_is_approved" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_mtp_entry_unlock" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_mtp_entry_unlock_log" ALTER COLUMN "d_deleted" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_mtp_shiftapproval" ALTER COLUMN "d_Modified" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_MTP_Sub_Details" ALTER COLUMN "c_is_approved" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_MTP_SubareChange_request_Android" ALTER COLUMN "d_serverupdateddate" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_MTP_SubDetails" ALTER COLUMN "c_is_approved" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_NoActivity_reason_mst" ALTER COLUMN "d_Created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_NonPurchase_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_NonPurchase_Mst" ALTER COLUMN "n_status" SET DEFAULT '0'
;
ALTER TABLE "Tbl_NonPurchase_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Officelocation_Mst" ALTER COLUMN "N_Deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Officelocation_Mst" ALTER COLUMN "D_Created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_OrderCancel_Setup" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_otp_fmcg_new_chemist" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Paytype_det" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_Paytype_mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_PG_Course_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_PG_Course_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_PMTDcrMcr_Setup" ALTER COLUMN "n_DcrMcr_Sample_Mandatory" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_PMTDcrMcr_Setup" ALTER COLUMN "n_DcrMcr_Gift_Mandatory" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_PMTDcrMcr_Setup" ALTER COLUMN "n_DcrMcr_Others_Sample_Mandatory" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_PMTDcrMcr_Setup" ALTER COLUMN "n_DcrMcr_Others_Gift_Mandatory" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_PMTDcrMcr_Setup" ALTER COLUMN "n_DcrMCr_DrNoteMandatory" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_PMTDcrMcr_Setup" ALTER COLUMN "n_DcrMCr_DrPOBMandatory" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_PMTDcrMcr_Setup" ALTER COLUMN "n_da_flag" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_PMTDcrMcr_Setup" ALTER COLUMN "n_da_per" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_PMTSetup" ALTER COLUMN "n_MMIEnabled" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Project" ALTER COLUMN "n_Deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_Prp_EmailSMSSend" ALTER COLUMN "d_currentdate" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_prp_expense_multiapprovallog" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_prp_expense_multiapprovallog" ALTER COLUMN "n_reject" SET DEFAULT '0'
;
ALTER TABLE "tbl_prp_expense_multiapprovallog_det" ALTER COLUMN "n_reject" SET DEFAULT '0'
;
ALTER TABLE "tbl_prp_expense_request" ALTER COLUMN "c_RequestedDt" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Prp_Request" ALTER COLUMN "d_PostedDate" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Prp_Request" ALTER COLUMN "n_Status" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Prp_Request_Brand" ALTER COLUMN "d_Date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Prp_Request_Estimate" ALTER COLUMN "d_Date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_PrpRps_EmailSMSSend" ALTER COLUMN "d_currentdate" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_rcpa_email_sent_det" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_rcpa_email_sent_det" ALTER COLUMN "n_email_sent_flag" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ReasonForSalesRtn_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_ReasonForSalesRtn_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Region_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Region_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Region_Mst" ALTER COLUMN "n_dcr_disabled" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Region_Mst" ALTER COLUMN "n_mcr_disabled" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Replace_Doc" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Replace_Doc" ALTER COLUMN "n_flag" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Replace_Doc" ALTER COLUMN "N_Status" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Replace_Doc" ALTER COLUMN "c_Approval_Remarks" SET DEFAULT (NULL)
;
ALTER TABLE "Tbl_Replace_Doc" ALTER COLUMN "c_Confirmation_Remarks" SET DEFAULT (NULL)
;
ALTER TABLE "Tbl_Replace_Doc" ALTER COLUMN "c_img_url" SET DEFAULT (NULL)
;
ALTER TABLE "Tbl_replace_doc_compare_DocMst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_replace_doc_compare_DocMst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Replace_Doc_log" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Replace_Doc_log" ALTER COLUMN "n_flag" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Replace_Doc_log" ALTER COLUMN "N_Status" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Replace_Doc_log" ALTER COLUMN "c_Approval_Remarks" SET DEFAULT (NULL)
;
ALTER TABLE "Tbl_Replace_Doc_log" ALTER COLUMN "c_Confirmation_Remarks" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_Replace_Doc_MultipleSub_Det" ALTER COLUMN "n_SubType" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Replace_Doc_Request_Management" ALTER COLUMN "d_Modifieddate" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Replace_Doc_Request_Management" ALTER COLUMN "n_ConfRequiredFieldExists" SET DEFAULT '0'
;
ALTER TABLE "tbl_role_component_availablemappings" ALTER COLUMN "n_delete" SET DEFAULT '0'
;
ALTER TABLE "tbl_rps_doctorwise_gift_allocation_upload" ALTER COLUMN "d_modified" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_rps_doctorwise_gift_allocation_upload" ALTER COLUMN "n_headerUpdate" SET DEFAULT '0'
;
ALTER TABLE "tbl_rps_doctorwise_gift_allocation_upload" ALTER COLUMN "n_stockUpdate" SET DEFAULT '0'
;
ALTER TABLE "tbl_rps_doctorwise_gift_allocation_upload" ALTER COLUMN "n_transactionUpdate" SET DEFAULT '0'
;
ALTER TABLE "tbl_rps_gift_doc_input_qty" ALTER COLUMN "d_createddate" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_rps_gift_doc_input_qty_rps_reject_log" ALTER COLUMN "d_createddate" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Rps_RegularExpressions_Mst" ALTER COLUMN "n_delete" SET DEFAULT '0'
;
ALTER TABLE "tbl_rps_sap_data_extract_cycle_det" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_rps_sap_data_extract_cycle_det" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_rps_transaction_det" ALTER COLUMN "d_createddt" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_rps_transaction_det" ALTER COLUMN "n_sap_flag" SET DEFAULT '0'
;
ALTER TABLE "tbl_SalarySlipUpload_Det" ALTER COLUMN "N_Deltd" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Sales" ALTER COLUMN "N_FLAG" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Sales" ALTER COLUMN "d_inv_date" SET DEFAULT (NULL)
;
ALTER TABLE "tbl_sample_transaction_setup" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_sap_employee_resign_det" ALTER COLUMN "D_CreateDate" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_sfa_depo_item_mapping_header" ALTER COLUMN "D_UploadDate" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_sfa_depo_item_mapping_header" ALTER COLUMN "N_Approved" SET DEFAULT '0'
;
ALTER TABLE "tbl_sfa_depo_stockist_mapping_header" ALTER COLUMN "D_UploadDate" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_sfa_depo_stockist_mapping_header" ALTER COLUMN "N_Approved" SET DEFAULT '0'
;
ALTER TABLE "tbl_sfa_menu_items" ALTER COLUMN "n_refid" SET DEFAULT '0'
;
ALTER TABLE "tbl_sfa_menu_items" ALTER COLUMN "n_menu_sort" SET DEFAULT '0'
;
ALTER TABLE "tbl_sfa_Stockist_Chemist_mapping_header" ALTER COLUMN "D_UploadDate" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_sfa_Stockist_Chemist_mapping_header" ALTER COLUMN "N_Approved" SET DEFAULT '0'
;
ALTER TABLE "tbl_sfa_stockist_item_mapping_header" ALTER COLUMN "C_UploadedBy" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_sfa_stockist_item_mapping_header" ALTER COLUMN "N_Approved" SET DEFAULT '0'
;
ALTER TABLE "tbl_sfc_request" ALTER COLUMN "D_Created_On" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_sfc_request_approval_det" ALTER COLUMN "D_Created_On" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_sfc_request_det" ALTER COLUMN "D_Created_On" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_sfc_request_det_modification" ALTER COLUMN "D_Created_On" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_sfc_request_Exp" ALTER COLUMN "D_Created_On" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_SFC_Subarea_Combinations_Mst" ALTER COLUMN "D_CreatedOn" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_sp_columns_data" ALTER COLUMN "d_created_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_sp_columns_selection_log" ALTER COLUMN "d_created_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_SSales_multiple_approval_log" ALTER COLUMN "d_dateApproved" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_SSales_multiple_approval_log_Bck" ALTER COLUMN "d_deleted" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_sse_setup" ALTER COLUMN "n_closing" SET DEFAULT '0'
;
ALTER TABLE "tbl_sse_setup" ALTER COLUMN "n_editbypoolfs" SET DEFAULT '0'
;
ALTER TABLE "tbl_sse_setup" ALTER COLUMN "n_approvalreq" SET DEFAULT '0'
;
ALTER TABLE "tbl_sse_setup" ALTER COLUMN "n_prisalesimport" SET DEFAULT '0'
;
ALTER TABLE "tbl_sse_setup" ALTER COLUMN "n_defaultQtyZero" SET DEFAULT '0'
;
ALTER TABLE "tbl_sse_setup" ALTER COLUMN "n_nonoperatingstk" SET DEFAULT '0'
;
ALTER TABLE "tbl_sse_setup" ALTER COLUMN "n_openqty_with_transit" SET DEFAULT '0'
;
ALTER TABLE "tbl_state_mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_state_mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_stk_Mapping" ALTER COLUMN "LastUpdate" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_stocknsales_header" ALTER COLUMN "n_status" SET DEFAULT '0'
;
ALTER TABLE "Tbl_STP_Det_Temp_Upload" ALTER COLUMN "d_date" SET DEFAULT (to_char(CURRENT_TIMESTAMP, 'DD/MM/YYYY'))
;
ALTER TABLE "Tbl_STP_Details_Auto" ALTER COLUMN "n_wkg_days" SET DEFAULT '0'
;
ALTER TABLE "Tbl_STP_Details28june2021" ALTER COLUMN "n_wkg_days" SET DEFAULT '0'
;
ALTER TABLE "Tbl_STP_Mkt_Details" ALTER COLUMN "n_wkg_days" SET DEFAULT '0'
;
ALTER TABLE "Tbl_STP28june2021" ALTER COLUMN "N_TA_Type" SET DEFAULT '0'
;
ALTER TABLE "tbl_stpmodeoftravel" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Sub_Area_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Sub_Area_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_survey_answer" ALTER COLUMN "d_uploaddate" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_tablet_survey" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Target_Mst" ALTER COLUMN "N_Qty" SET DEFAULT '0'
;
ALTER TABLE "tbl_task" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Task_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Task_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_task_tran" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_therapeutical_mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_therapeutical_mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Travel_Location_Android" ALTER COLUMN "d_Upload_Date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_travel_type" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_travel_type" ALTER COLUMN "n_delete" SET DEFAULT '0'
;
ALTER TABLE "tbl_unique_doc_log" ALTER COLUMN "d_submitted_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_unique_doc_log" ALTER COLUMN "c_new_reject_status" SET DEFAULT ('0')
;
ALTER TABLE "tbl_unique_doc_log" ALTER COLUMN "n_status" SET DEFAULT '0'
;
ALTER TABLE "tbl_unique_doc_mst" ALTER COLUMN "d_submitted_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_unique_doc_mst" ALTER COLUMN "n_tagged" SET DEFAULT '0'
;
ALTER TABLE "tbl_unique_doc_mst" ALTER COLUMN "c_new_reject_status" SET DEFAULT ('0')
;
ALTER TABLE "tbl_unique_doc_mst" ALTER COLUMN "n_status" SET DEFAULT '0'
;
ALTER TABLE "tbl_unique_doc_mst_log" ALTER COLUMN "d_submitted_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_unique_doc_mst_log" ALTER COLUMN "n_tagged" SET DEFAULT '0'
;
ALTER TABLE "tbl_unique_doc_mst_log" ALTER COLUMN "c_new_reject_status" SET DEFAULT ('0')
;
ALTER TABLE "tbl_unique_doc_mst_log" ALTER COLUMN "n_status" SET DEFAULT '0'
;
ALTER TABLE "tbl_unique_doc_mst_log" ALTER COLUMN "d_log_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_unique_doc_req" ALTER COLUMN "d_submitted_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_unique_doc_req" ALTER COLUMN "c_new_reject_status" SET DEFAULT ('0')
;
ALTER TABLE "tbl_unique_doc_req" ALTER COLUMN "n_status" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Unique_Doctor_Mst" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_unique_dr_app_con_history" ALTER COLUMN "d_approved_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_unique_dr_app_con_history" ALTER COLUMN "d_confirmeddate" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_user_activity" ALTER COLUMN "d_Created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_user_activity_log" ALTER COLUMN "d_Created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_User_Info" ALTER COLUMN "N_Shift" SET DEFAULT '0'
;
ALTER TABLE "Tbl_User_Info" ALTER COLUMN "N_ShiftEdit" SET DEFAULT '0'
;
ALTER TABLE "Tbl_User_Info" ALTER COLUMN "c_mob_UniqueID" SET DEFAULT ('newproc')
;
ALTER TABLE "Tbl_User_Info" ALTER COLUMN "c_mob_Prev_ID" SET DEFAULT ('newproc')
;
ALTER TABLE "Tbl_User_Info" ALTER COLUMN "n_mobile_user" SET DEFAULT '0'
;
ALTER TABLE "Tbl_User_Info" ALTER COLUMN "n_attempts" SET DEFAULT '0'
;
ALTER TABLE "tbl_user_task_det" ALTER COLUMN "n_delete" SET DEFAULT '0'
;
ALTER TABLE "tbl_user_task_det" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_user_token" ALTER COLUMN "d_date" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_user_token" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_UserEnable_Setup" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_UserRights_log" ALTER COLUMN "d_loginsertedate" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_va_modification_count" ALTER COLUMN "n_row_update" SET DEFAULT '0'
;
ALTER TABLE "tbl_va_modification_count" ALTER COLUMN "n_caption_update" SET DEFAULT '0'
;
ALTER TABLE "tbl_va_modification_count" ALTER COLUMN "n_row_delete" SET DEFAULT '0'
;
ALTER TABLE "tbl_va_modification_count" ALTER COLUMN "n_delete" SET DEFAULT '0'
;
ALTER TABLE "tbl_vacancy_candidate_data" ALTER COLUMN "d_refered_on" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_vacancy_candidate_form_input_type" ALTER COLUMN "n_delete" SET DEFAULT '0'
;
ALTER TABLE "tbl_vacancy_candidate_form_input_type" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_vacancy_display_designation_mapping" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_vacancy_display_location_mapping" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_vacancy_mst" ALTER COLUMN "n_active" SET DEFAULT '0'
;
ALTER TABLE "tbl_vacancy_mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_version_execution_errors" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_Video_Def_Det" ALTER COLUMN "n_status" SET DEFAULT '0'
;
ALTER TABLE "tbl_Video_Mst" ALTER COLUMN "n_active" SET DEFAULT '1'
;
ALTER TABLE "tbl_Video_Mst" ALTER COLUMN "n_must_read" SET DEFAULT '0'
;
ALTER TABLE "tbl_Video_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "tbl_Video_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_VideoUpload_title_det" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "tbl_VideoUpload_title_det" ALTER COLUMN "n_sort_order" SET DEFAULT '0'
;
ALTER TABLE "Tbl_wc_QuestionGrp_Mst" ALTER COLUMN "n_applicable" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "n_tcallVisit" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d1" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d2" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d3" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d4" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d5" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d6" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d7" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d8" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d9" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d10" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d11" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d12" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d13" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d14" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d15" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d16" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d17" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d18" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d19" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d20" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d21" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d22" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d23" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d24" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d25" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d26" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d27" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d28" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d29" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d30" SET DEFAULT '0'
;
ALTER TABLE "tbl_wh_callavg_dashboard_det" ALTER COLUMN "d31" SET DEFAULT '0'
;
ALTER TABLE "Tbl_WorkType" ALTER COLUMN "n_flag" SET DEFAULT '0'
;
ALTER TABLE "Tbl_WorkType" ALTER COLUMN "n_Chflag" SET DEFAULT '0'
;
ALTER TABLE "Tbl_WorkType" ALTER COLUMN "n_stockflag" SET DEFAULT '0'
;
ALTER TABLE "Tbl_WorkType" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_WorkType" ALTER COLUMN "N_Status" SET DEFAULT '1'
;
ALTER TABLE "Tbl_WorkType" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_WorkType" ALTER COLUMN "d_modified" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "Tbl_WorkType" ALTER COLUMN "n_OthersFlag" SET DEFAULT '0'
;
ALTER TABLE "Tbl_WorkType" ALTER COLUMN "n_campflag" SET DEFAULT '0'
;
ALTER TABLE "Tbl_WorkType" ALTER COLUMN "n_PatientFlag" SET DEFAULT '0'
;
ALTER TABLE "Tbl_WorkType" ALTER COLUMN "n_DoctorMandatory" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Zone_Mst" ALTER COLUMN "n_deleted" SET DEFAULT '0'
;
ALTER TABLE "Tbl_Zone_Mst" ALTER COLUMN "d_created" SET DEFAULT (CURRENT_TIMESTAMP)
;
ALTER TABLE "dwr"  ADD  CONSTRAINT "FK_dwr_dwr_details" FOREIGN KEY("N_Srno")
REFERENCES "dwr" ("N_Srno")
;
;
ALTER TABLE "Tbl_Area_Mst"  ADD  CONSTRAINT "FK_Tbl_Area_Mst_Tbl_Region_Mst" FOREIGN KEY("C_Region_Code")
REFERENCES "Tbl_Region_Mst" ("C_Code")
;
;
ALTER TABLE "Tbl_Competator_Info_Det"  ADD  CONSTRAINT "FK_Tbl_Competator_Info_Det_Tbl_Competator_Info_Mst" FOREIGN KEY("N_SRNO")
REFERENCES "Tbl_Competator_Info_Mst" ("N_SRNO")
ON DELETE CASCADE
;
;
ALTER TABLE "Tbl_Doc_Exp"  ADD  CONSTRAINT "FK_Tbl_Doc_Exp_Tbl_FS_Mst" FOREIGN KEY("C_FS_CODE")
REFERENCES "Tbl_FS_Mst" ("C_Code")
;
;
ALTER TABLE "Tbl_DWR"  ADD  CONSTRAINT "FK_Tbl_DWR_Tbl_Area_Mst" FOREIGN KEY("C_HQ_Code")
REFERENCES "Tbl_Area_Mst" ("C_Code")
;
;
ALTER TABLE "Tbl_HospitalMst_Det"  ADD  CONSTRAINT "FK_Tbl_HospitalMst_Det_Tbl_Doc_Stock_Chem_Add_Mst" FOREIGN KEY("C_Code")
REFERENCES "Tbl_Doc_Stock_Chem_Add_Mst" ("C_Code")
;
;
ALTER TABLE "tbl_invoice_det"  ADD  CONSTRAINT "FK_tbl_invoice_mst_tbl_invoice_det" FOREIGN KEY("c_dep_code", "c_year", "c_prefix", "n_bill_no")
REFERENCES "tbl_invoice_mst" ("c_dep_code", "c_year", "c_prefix", "n_bill_no")
ON DELETE CASCADE
;
;
ALTER TABLE "Tbl_mkt_DWR"  ADD  CONSTRAINT "FK_Tbl_mkt_DWR_Tbl_Area_Mst" FOREIGN KEY("C_HQ_Code")
REFERENCES "Tbl_Area_Mst" ("C_Code")
;
;
ALTER TABLE "Tbl_mkt_DWR"  ADD  CONSTRAINT "FK_Tbl_mkt_DWR_Tbl_FS_Mst" FOREIGN KEY("C_FS_Code")
REFERENCES "Tbl_mkt_Mst" ("C_Code")
;
;
ALTER TABLE "tbl_ModuleMst_Det"  ADD FOREIGN KEY("n_srNo")
REFERENCES "tbl_ModuleMst" ("n_srNo")
;
ALTER TABLE "Tbl_MTP"  ADD  CONSTRAINT "FK_Tbl_MTP_Tbl_FS_Mst" FOREIGN KEY("C_FS_Code")
REFERENCES "Tbl_FS_Mst" ("C_Code")
;
;
ALTER TABLE "Tbl_MTP_Details"  ADD  CONSTRAINT "FK_Tbl_MTP_Details_Tbl_Area_Mst" FOREIGN KEY("C_Area_Code")
REFERENCES "Tbl_Area_Mst" ("C_Code")
;
;
ALTER TABLE "Tbl_Region_Mst"  ADD  CONSTRAINT "FK_Tbl_Region_Mst_Tbl_Zone_Mst" FOREIGN KEY("C_Zone_Code")
REFERENCES "Tbl_Zone_Mst" ("C_Code")
;
;
ALTER TABLE "Tbl_rep_group_mapping"  ADD  CONSTRAINT "FK_Tbl_rep_group_mapping_tbl_rep_group_mst" FOREIGN KEY("C_rep_group_id")
REFERENCES "tbl_rep_group_mst" ("c_ID")
;
;
ALTER TABLE "Tbl_rep_sp_column_def"  ADD  CONSTRAINT "FK_Tbl_rep_sp_column_def_Tbl_rep_sp_mst" FOREIGN KEY("C_Sp_Id")
REFERENCES "Tbl_rep_sp_mst" ("C_Spid")
;
;
ALTER TABLE "Tbl_Sales_Details"  ADD  CONSTRAINT "FK_Tbl_Sales_Details_Tbl_Sales" FOREIGN KEY("C_DEP_CODE", "c_YEAR", "C_PREFIX", "N_SRNO")
REFERENCES "Tbl_Sales" ("C_DEP_CODE", "c_year", "c_prefix", "N_SRNO")
;
;
ALTER TABLE "Tbl_STP_Details28june2021"  ADD  CONSTRAINT "FK_Tbl_STP_Details_Tbl_Area_Mst" FOREIGN KEY("C_Area_Code")
REFERENCES "Tbl_Area_Mst" ("C_Code")
;
;
ALTER TABLE "Tbl_STP_Mkt_Details"  ADD  CONSTRAINT "FK_Tbl_STP_Mkt_Details_Tbl_Area_Mst" FOREIGN KEY("C_Area_Code")
REFERENCES "Tbl_Area_Mst" ("C_Code")
;
;
ALTER TABLE "Tbl_Sub_Area_Mst"  ADD  CONSTRAINT "FK_Tbl_Sub_Area_Mst_Tbl_Area_Mst" FOREIGN KEY("C_Area_Code")
REFERENCES "Tbl_Area_Mst" ("C_Code")
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;

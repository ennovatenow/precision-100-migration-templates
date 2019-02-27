CREATE TABLE CU1_O_TABLE
(
   ORGKEY		 		NVARCHAR2(32) NULL,
   CIF_ID 			 	NVARCHAR2(32) NULL,
   ENTITYTYPE  			 	NVARCHAR2(50) NULL,
   CUST_TYPE_CODE		 	NVARCHAR2(5) NULL,
   SALUTATION_CODE		 	NVARCHAR2(5) NULL,
   CUST_FIRST_NAME		 	NVARCHAR2(80) NULL,
   CUST_MIDDLE_NAME  			NVARCHAR2(80) NULL,
   CUST_LAST_NAME  			NVARCHAR2(80) NULL,
   PREFERREDNAME	 		NVARCHAR2(50) NULL,
   SHORT_NAME			 	NVARCHAR2(10) NULL,
   CUST_DOB			 	NVARCHAR2(11) NULL,
   GENDER  			 	NVARCHAR2(10) NULL,
   OCCUPATION_CODE  			NVARCHAR2(5) NULL,
   NATIONALITY  			NVARCHAR2(50) NULL,
   NATIVELANG_TITLE			NVARCHAR2(5) NULL,
   NATIVELANG_NAME			NVARCHAR2(80) NULL,
   DOCUMENT_RECIEVED			NVARCHAR2(1) NULL,
   STAFF_FLAG			 	NVARCHAR2(25) NULL,
   STAFFEMPLOYEEID		 	NVARCHAR2(50) NULL,
   MANAGER			 	NVARCHAR2(100) NULL,
   CUSTOMERNRE_FLAG			NVARCHAR2(1) NULL,
   DATEOFBECOMINGNRE			NVARCHAR2(11) NULL,
   CUSTOMER_MINOR			NVARCHAR2(1) NULL,
   CUSTOMER_GUARDIAN_ID			NVARCHAR2(50) NULL,
   MINOR_GUARD_CODE			NVARCHAR2(1) NULL,
   MINOR_GUARD_NAME			NVARCHAR2(40) NULL,
   REGION			 	NVARCHAR2(50) NULL,
   PRIMARY_SERVICE_CENTRE		NVARCHAR2(5) NULL,
   RELATIONSHIPOPENINGDATE		NVARCHAR2(11) NULL,
   STATUS_CODE			 	NVARCHAR2(5) NULL,
   CUSTSTATUSCHGDATE			NVARCHAR2(17) NULL,
   HOUSEHOLD_ID			 	NVARCHAR2(50) NULL,
   HOUSEHOLD_NAME			NVARCHAR2(50) NULL,
   CRNCY_CODE_RETAIL			NVARCHAR2(3) NULL,
   RATING_CODE			 	NVARCHAR2(5) NULL,
   RATING_DATE			 	NVARCHAR2(17) NULL,
   CUST_PREF_TILL_DATE			NVARCHAR2(17) NULL,
   TDS_TBL_CODE			 	NVARCHAR2(5) NULL,
   INTRODUCER_ID			NVARCHAR2(50) NULL,
   INTRODUCER_SALUTATION		NVARCHAR2(5) NULL,
   INTRODUCER_NAME			NVARCHAR2(40) NULL,
   INTRODUCER_STATUS_CODE		NVARCHAR2(100) NULL,
   OFFLINE_CUM_DEBIT_LIMIT		NVARCHAR2(25) NULL,
   CUST_TOT_TOD_ALWD_TIMES		NVARCHAR2(5) NULL,
   CUST_COMMU_CODE			NVARCHAR2(5) NULL,
   CARD_HOLDER			 	NVARCHAR2(1) NULL,
   CUST_HLTH			 	NVARCHAR2(200) NULL,
   CUST_HLTH_CODE			NVARCHAR2(5) NULL,
   TFPARTYFLAG			 	NVARCHAR2(1) NULL,
   PRIMARY_SOL_ID			NVARCHAR2(8) NULL,
   CONSTITUTION_REF_CODE		NVARCHAR2(5) NULL,
   CUSTOTHERBANKCODE			NVARCHAR2(6) NULL,
   CUST_FIRST_ACCT_DATE			NVARCHAR2(11) NULL,
   CHARGE_LEVEL_CODE			NVARCHAR2(5) NULL,
   CHRG_DR_FORACID			NVARCHAR2(16) NULL,
   CHRG_DR_SOL_ID			NVARCHAR2(8) NULL,
   CUST_CHRG_HISTORY_FLG		NVARCHAR2(1) NULL,
   COMBINED_STMT_REQD			NVARCHAR2(1) NULL,
   LOANS_STMT_TYPE			NVARCHAR2(1) NULL,
   TD_STMT_TYPE			 	NVARCHAR2(1) NULL,
   COMB_STMT_CHRG_CODE			NVARCHAR2(5) NULL,
   DESPATCH_MODE			NVARCHAR2(1) NULL,
   CS_LAST_PRINTED_DATE			NVARCHAR2(11) NULL,
   CS_NEXT_DUE_DATE			NVARCHAR2(11) NULL,
   ALLOW_SWEEPS			 	NVARCHAR2(1) NULL,
   PS_FREQ_TYPE			 	NVARCHAR2(1) NULL,
   PS_FREQ_WEEK_NUM			NVARCHAR2(1) NULL,
   PS_FREQ_WEEK_DAY			NVARCHAR2(1) NULL,
   PS_FREQ_START_DD			NVARCHAR2(2) NULL,
   PS_FREQ_HLDY_STAT			NVARCHAR2(1) NULL,
   ENTITY_TYPE			 	NVARCHAR2(30) NULL,
   LINKEDRETAILCIF			NVARCHAR2(32) NULL,
   HSHLDU_FLAG			 	NVARCHAR2(1) NULL,
   SMALL_STR1			 	NVARCHAR2(50) NULL,
   SMALL_STR2			 	NVARCHAR2(50) NULL,
   SMALL_STR3			 	NVARCHAR2(50) NULL,
   SMALL_STR4			 	NVARCHAR2(50) NULL,
   SMALL_STR5			 	NVARCHAR2(50) NULL,
   SMALL_STR6			 	NVARCHAR2(50) NULL,
   SMALL_STR7			 	NVARCHAR2(50) NULL,
   SMALL_STR8			 	NVARCHAR2(50) NULL,
   SMALL_STR9			 	NVARCHAR2(50) NULL,
   SMALL_STR10			 	NVARCHAR2(50) NULL,
   MED_STR1			 	NVARCHAR2(100) NULL,
   MED_STR2			 	NVARCHAR2(100) NULL,
   MED_STR3			 	NVARCHAR2(100) NULL,
   MED_STR4			 	NVARCHAR2(100) NULL,
   MED_STR5		 		NVARCHAR2(100) NULL,
   MED_STR6			 	NVARCHAR2(100) NULL,
   MED_STR7			 	NVARCHAR2(100) NULL,
   MED_STR8			 	NVARCHAR2(100) NULL,
   MED_STR9			 	NVARCHAR2(100) NULL,
   MED_STR10			 	NVARCHAR2(100) NULL,
   LARGE_STR1			 	NVARCHAR2(250) NULL,
   LARGE_STR2			 	NVARCHAR2(250) NULL,
   LARGE_STR3			 	NVARCHAR2(250) NULL,
   LARGE_STR4			 	NVARCHAR2(250) NULL,
   LARGE_STR5			 	NVARCHAR2(250) NULL,
   DATE1			 	NVARCHAR2(11) NULL,
   DATE2			 	NVARCHAR2(11) NULL,
   DATE3			 	NVARCHAR2(11) NULL,
   DATE4			 	NVARCHAR2(11) NULL,
   DATE5			 	NVARCHAR2(11) NULL,
   DATE6			 	NVARCHAR2(11) NULL,
   DATE7			 	NVARCHAR2(11) NULL,
   DATE8			 	NVARCHAR2(11) NULL,
   DATE9			 	NVARCHAR2(11) NULL,
   DATE10			 	NVARCHAR2(11) NULL,
   NUMBER1				NVARCHAR2(38) NULL,
   NUMBER2			 	NVARCHAR2(38) NULL,
   NUMBER3			 	NVARCHAR2(38) NULL,
   NUMBER4			 	NVARCHAR2(38) NULL,
   NUMBER5			 	NVARCHAR2(38) NULL,
   NUMBER6			 	NVARCHAR2(38) NULL,
   NUMBER7			 	NVARCHAR2(38) NULL,
   NUMBER8			 	NVARCHAR2(38) NULL,
   NUMBER9			 	NVARCHAR2(38) NULL,
   NUMBER10			 	NVARCHAR2(38) NULL,
   DECIMAL1			 	NVARCHAR2(25) NULL,
   DECIMAL2			 	NVARCHAR2(25) NULL,
   DECIMAL3			 	NVARCHAR2(25) NULL,
   DECIMAL4			 	NVARCHAR2(25) NULL,
   DECIMAL5			 	NVARCHAR2(25) NULL,
   DECIMAL6			 	NVARCHAR2(25) NULL,
   DECIMAL7			 	NVARCHAR2(25) NULL,
   DECIMAL8			 	NVARCHAR2(25) NULL,
   DECIMAL9			 	NVARCHAR2(25) NULL,
   DECIMAL10			 	NVARCHAR2(25) NULL,
   CORE_CUST_ID			 	NVARCHAR2(9) NULL,
   PERSON_TYPE			 	NVARCHAR2(50) NULL,
   CUST_LANGUAGE			NVARCHAR2(50) NULL,
   CUST_STAFF_STATUS			NVARCHAR2(50) NULL,
   PHONE			 	NVARCHAR2(25) NULL,
   EXTENSION			 	NVARCHAR2(10) NULL,
   FAX			 		NVARCHAR2(25) NULL,
   FAX_HOME			 	NVARCHAR2(50) NULL,
   PHONE_HOME			 	NVARCHAR2(25) NULL,
   PHONE_HOME2			 	NVARCHAR2(50) NULL,
   PHONE_CELL			 	NVARCHAR2(25) NULL,
   EMAIL_HOME			 	NVARCHAR2(50) NULL,
   EMAIL_PALM			 	NVARCHAR2(50) NULL,
   EMAIL			 	NVARCHAR2(50) NULL,
   CITY			 		NVARCHAR2(50) NULL,
   PREFERRED_CHANNEL_ID			NVARCHAR2(38) NULL,
   CUSTOMER_RELATIONSHIP_no		NVARCHAR2(50) NULL,
   RELATIONSHIP_VALUE			NVARCHAR2(38) NULL,
   CATEGORY			 	NVARCHAR2(50) NULL,
   NUMBEROFPRODUCTS			NVARCHAR2(38) NULL,
   RELATIONSHIP_MANAGER_ID		NVARCHAR2(38) NULL,
   RELATIONSHIP_CREATED_BY_ID		NVARCHAR2(38) NULL,
   URL			 		NVARCHAR2(50) NULL,
   STATUS			 	NVARCHAR2(50) NULL,
   INDUSTRY			 	NVARCHAR2(50) NULL,
   PARENTORG			 	NVARCHAR2(50) NULL,
   COMPETITOR			 	NVARCHAR2(100) NULL,
   SIC_CODE			 	NVARCHAR2(50) NULL,
   CIN			 		NVARCHAR2(50) NULL,
   DESIGNATION			 	NVARCHAR2(50) NULL,
   ASSISTANT			 	NVARCHAR2(100) NULL,
   INTERNAL_SCORE			NVARCHAR2(25) NULL,
   CREDIT_BUREAU_SCORE_VALIDITY		NVARCHAR2(10) NULL,
   CREDIT_BUREAU_SCORE			NVARCHAR2(20) NULL,
   CREDIT_BUREAU_REQUEST_DATE		NVARCHAR2(11) NULL,
   CREDIT_BUREAU_DESCRIPTION		NVARCHAR2(100) NULL,
   MAIDEN_MOTHER_NAME			NVARCHAR2(50) NULL,
   ANNUAL_REVENUE			NVARCHAR2(20) NULL,
   REVENUE_UNITS			NVARCHAR2(20) NULL,
   TICKER_SYMBOL			NVARCHAR2(50) NULL,
   AUTO_APRPOVAL			NVARCHAR2(5) NULL,
   FREEZE_PRODUCT_SALE			NVARCHAR2(5) NULL,
   RELATIONSHIP_FIELD_1			NVARCHAR2(100) NULL,
   RELATIONSHIP_FIELD_2			NVARCHAR2(100) NULL,
   RELATIONSHIP_FIELD_3			NVARCHAR2(100) NULL,
   DELINQUENCY_FLAG			NVARCHAR2(1) NULL,
   CUSTOMER_NRE_FLAG			NVARCHAR2(1) NULL,
   COMBINED_STMT_FLAG			NVARCHAR2(1) NULL,
   CUSTOMER_TRADE			NVARCHAR2(1) NULL,
   PLACE_OF_BIRTH			NVARCHAR2(50) NULL,
   COUNTRY_OF_BIRTH			NVARCHAR2(50) NULL,
   PROOF_OF_AGE_FLAG			NVARCHAR2(1) NULL,
   PROOF_OF_AGE_DOCUMENT		NVARCHAR2(50) NULL,
   NAME_SUFFIX			 	NVARCHAR2(25) NULL,
   MAIDEN_NAME			 	NVARCHAR2(50) NULL,
   CUSTOMER_PROFITABILITY		NVARCHAR2(20) NULL,
   CURRENT_CR_EXPOSURE			NVARCHAR2(20) NULL,
   TOTAL_CREDIT_EXOPSURE		NVARCHAR2(20) NULL,
   POTENTIAL_CREDIT_LINE		NVARCHAR2(20) NULL,
   AVAILABLE_CREDI_LIMIT		NVARCHAR2(20) NULL,
   CREDIT_SCORE_REQUESTED_FLAG		NVARCHAR2(1) NULL,
   CREDIRT_HISTORY_REQUESTED_FLG	NVARCHAR2(1) NULL,
   GROUP_ID				NVARCHAR2(50) NULL,
   FLG1			 		NVARCHAR2(10) NULL,
   FLG2			 		NVARCHAR2(10) NULL,
   FLG3			 		NVARCHAR2(10) NULL,
   ALERT1				NVARCHAR2(10) NULL,
   ALERT2				NVARCHAR2(10) NULL,
   ALERT3				NVARCHAR2(10) NULL,
   RELATIONSHIP_OFFICER_1		NVARCHAR2(50) NULL,
   RELATIONSHIP_OFFICER_2		NVARCHAR2(50) NULL,
   DTDATE1				NVARCHAR2(10) NULL,
   DTDATE2				NVARCHAR2(10) NULL,
   DTDATE3				NVARCHAR2(10) NULL,
   DTDATE4				NVARCHAR2(10) NULL,
   DTDATE5				NVARCHAR2(10) NULL,
   DTDATE6				NVARCHAR2(10) NULL,
   DTDATE7				NVARCHAR2(10) NULL,
   DTDATE8				NVARCHAR2(10) NULL,
   DTDATE9				NVARCHAR2(10) NULL,
   Amount1				NVARCHAR2(20) NULL,
   Amount2				NVARCHAR2(20) NULL,
   Amount3				NVARCHAR2(20) NULL,
   Amount4				NVARCHAR2(20) NULL,
   Amount5				NVARCHAR2(20) NULL,
   strfield1				NVARCHAR2(100) NULL,
   strfield2				NVARCHAR2(100) NULL,
   strfield3				NVARCHAR2(100) NULL,
   strfield4				NVARCHAR2(100) NULL,
   strfield5				NVARCHAR2(100) NULL,
   strfield6				NVARCHAR2(50) NULL,
   strfield7				NVARCHAR2(50) NULL,
   strfield8				NVARCHAR2(50) NULL,
   strfield9				NVARCHAR2(50) NULL,
   strfield10				NVARCHAR2(50) NULL,
   strfield11				NVARCHAR2(50) NULL,
   strfield12				NVARCHAR2(50) NULL,
   strfield13				NVARCHAR2(50) NULL,
   strfield14				NVARCHAR2(50) NULL,
   strfield15				NVARCHAR2(50) NULL,
   UserFlag1				NVARCHAR2(1) NULL,
   UserFlag2				NVARCHAR2(1) NULL,
   UserFlag3				NVARCHAR2(1) NULL,
   UserFlag4				NVARCHAR2(1) NULL,
   MLUserField1				NVARCHAR2(80) NULL,
   MLUserField2				NVARCHAR2(80) NULL,
   MLUserField3				NVARCHAR2(80) NULL,
   MLUserField4				NVARCHAR2(200) NULL,
   MLUserField5				NVARCHAR2(200) NULL,
   MLUserField6				NVARCHAR2(200) NULL,
   MLUserField7				NVARCHAR2(100) NULL,
   MLUserField8				NVARCHAR2(100) NULL,
   MLUserField9				NVARCHAR2(100) NULL,
   MLUserField10			NVARCHAR2(100) NULL,
   MLUserField11			NVARCHAR2(100) NULL,
   Notes				NVARCHAR2(1000) NULL,
   Priority_Code			NVARCHAR2(50) NULL,
   Created_From				NVARCHAR2(1) NULL,
   Constitution_Code			NVARCHAR2(200) NULL,
   StrField16				NVARCHAR2(50) NULL,
   StrField17				NVARCHAR2(50) NULL,
   StrField18				NVARCHAR2(50) NULL,
   StrField19				NVARCHAR2(50) NULL,
   StrField20				NVARCHAR2(50) NULL,
   StrField21				NVARCHAR2(100) NULL,
   StrField22				NVARCHAR2(50) NULL,
   Amount6				NVARCHAR2(20) NULL,
   Amount7				NVARCHAR2(20) NULL,
   Amount8				NVARCHAR2(20) NULL,
   Amount9				NVARCHAR2(20) NULL,
   Amount10				NVARCHAR2(20) NULL,
   Amount11				NVARCHAR2(20) NULL,
   Amount12				NVARCHAR2(20) NULL,
   IntField1				NVARCHAR2(38) NULL,
   IntField2				NVARCHAR2(38) NULL,
   IntField3				NVARCHAR2(38) NULL,
   IntField4				NVARCHAR2(38) NULL,
   IntField5				NVARCHAR2(38) NULL,
   nick_name				NVARCHAR2(10) NULL,
   mother_name				NVARCHAR2(20) NULL,
   father_husband_name			NVARCHAR2(20) NULL,
   previous_name			NVARCHAR2(20) NULL,
   lead_source				NVARCHAR2(50) NULL,
   relationship_type			NVARCHAR2(5) NULL,
   rm_group_id				NVARCHAR2(5) NULL,
   relationship_level			NVARCHAR2(5) NULL,
   DSA_ID				NVARCHAR2(12) NULL,
   photograph_id			NVARCHAR2(10) NULL,
   Secure_id				NVARCHAR2(10) NULL,
   Deliquency_Period			NVARCHAR2(38) NULL,
   AddName1				NVARCHAR2(50) NULL,
   AddName2				NVARCHAR2(50) NULL,
   AddName3				NVARCHAR2(50) NULL,
   AddName4				NVARCHAR2(50) NULL,
   AddName5				NVARCHAR2(50) NULL,
   OldEntityCreatedOn			NVARCHAR2(10) NULL,
   OldEntityType			NVARCHAR2(50) NULL,
   OldEntityID				NVARCHAR2(20) NULL,
   Document_Received			NVARCHAR2(1) NULL,
   Suspend_Notes			NVARCHAR2(500) NULL,
   Suspend_Reason			NVARCHAR2(250) NULL,
   Blacklist_Notes			NVARCHAR2(500) NULL,
   Blacklist_Reason			NVARCHAR2(250) NULL,
   Negated_Notes			NVARCHAR2(500) NULL,
   Negated_Reason			NVARCHAR2(250) NULL,
   Segmentation_Class			NVARCHAR2(100) NULL,
   Name			 		NVARCHAR2(100) NULL,
   Manager_Opinion			NVARCHAR2(240) NULL,
   Introd_Status			NVARCHAR2(50) NULL,
   NativeLangCode			NVARCHAR2(10) NULL,
   MinorAttainMajorDate			NVARCHAR2(11) NULL,
   NREBecomingOrdDate			NVARCHAR2(11) NULL,
   Start_Date				NVARCHAR2(11) NULL,
   Add1_First_Name			NVARCHAR2(80) NULL,
   Add1_Middle_Name			NVARCHAR2(80) NULL,
   Add1_Last_Name			NVARCHAR2(80) NULL,
   Add2_First_Name			NVARCHAR2(80) NULL,
   Add2_Middle_Name			NVARCHAR2(80) NULL,
   Add2_Last_Name			NVARCHAR2(80) NULL,
   Add3_First_Name			NVARCHAR2(80) NULL,
   Add3_Middle_Name			NVARCHAR2(80) NULL,
   Add3_Last_Name			NVARCHAR2(80) NULL,
   Add4_First_Name			NVARCHAR2(80) NULL,
   Add4_Middle_Name			NVARCHAR2(80) NULL,
   Add4_Last_Name			NVARCHAR2(80) NULL,
   Add5_First_Name			NVARCHAR2(80) NULL,
   Add5_Middle_Name			NVARCHAR2(80) NULL,
   Add5_Last_Name			NVARCHAR2(80) NULL,
   Dual_First_Name			NVARCHAR2(80) NULL,
   Dual_Middle_Name			NVARCHAR2(80) NULL,
   Dual_Last_Name			NVARCHAR2(80) NULL,
   Cust_Community			NVARCHAR2(50) NULL,
   Core_introd_cust_id			NVARCHAR2(9) NULL,
   Introd_Salutation_code		NVARCHAR2(5) NULL,
   Tds_cust_id				NVARCHAR2(9) NULL,
   Nat_id_card_num			NVARCHAR2(16) NULL,
   Psprt_issue_date			NVARCHAR2(11) NULL,
   Psprt_det				NVARCHAR2(25) NULL,
   Psprt_exp_date			NVARCHAR2(11) NULL,
   Crncy_code				NVARCHAR2(3) NULL,
   Pref_code				NVARCHAR2(15) NULL,
   Introd_Status_Code			NVARCHAR2(5) NULL,
   NativeLangTitle_code			NVARCHAR2(5) NULL,
   Groupid_code				NVARCHAR2(5) NULL,
   Sector				NVARCHAR2(50) NULL,
   SubSector				NVARCHAR2(50) NULL,
   CustCreationMode			NVARCHAR2(1) NULL,
   First_Product_Processor		NVARCHAR2(50) NULL,
   Interface_Reference_ID		NVARCHAR2(50) NULL,
   cust_health_ref_code			NVARCHAR2(5) NULL,
   TDS_CIFID				NVARCHAR2(50) NULL,
   PREF_CODE_RCODE			NVARCHAR2(5) NULL,
   CUST_SWIFT_CODE_DESC			NVARCHAR2(50) NULL,
   IS_SWIFT_CODE_OF_BANK		NVARCHAR2(1) NULL,
   NATIVELANGCODE_CODE			NVARCHAR2(5) NULL,
   CreatedBySystemID			NVARCHAR2(50) NULL,
   PreferredEmailType			NVARCHAR2(50) NULL,
   PreferredPhone			NVARCHAR2(25) NULL,
   CUST_FIRST_NAME_NATIVE		NVARCHAR2(80) NULL,
   CUST_MIDDLE_NAME_NATIVE		NVARCHAR2(80) NULL,
   CUST_LAST_NAME_NATIVE		NVARCHAR2(80) NULL,
   SHORT_NAME_NATIVE			NVARCHAR2(50) NULL,
   CUST_FIRST_NAME_NATIVE1		NVARCHAR2(80) NULL,
   CUST_MIDDLE_NAME_NATIVE1		NVARCHAR2(80) NULL,
   CUST_LAST_NAME_NATIVE1		NVARCHAR2(80) NULL,
   SHORT_NAME_NATIVE1			NVARCHAR2(50) NULL,
   SecondaryRM_ID			NVARCHAR2(50) NULL,
   TertiaryRM_ID			NVARCHAR2(50) NULL,
   SUBSEGMENT				NVARCHAR2(50) NULL,
   ACCESSOWNERGROUP			NVARCHAR2(38) NULL,
   ACCESSOWNERSEGMENT			NVARCHAR2(50) NULL,
   ACCESSOWNERBC			NVARCHAR2(38) NULL,
   ACCESSOWNERAGENT			NVARCHAR2(38) NULL,
   ACCESSASSIGNEEAGENT			NVARCHAR2(38) NULL,
   CHARGELEVELCODE			NVARCHAR2(50) NULL,
   IntUserField1			NVARCHAR2(38) NULL,
   IntUserField2			NVARCHAR2(38) NULL,
   IntUserField3			NVARCHAR2(38) NULL,
   IntUserField4			NVARCHAR2(38) NULL,
   IntUserField5			NVARCHAR2(38) NULL,
   StrUserField1			NVARCHAR2(100) NULL,
   StrUserField2			NVARCHAR2(100) NULL,
   StrUserField3			NVARCHAR2(100) NULL,
   StrUserField4			NVARCHAR2(100) NULL,
   StrUserField5			NVARCHAR2(100) NULL,
   StrUserField6			NVARCHAR2(100) NULL,
   StrUserField7			NVARCHAR2(100) NULL,
   StrUserField8			NVARCHAR2(100) NULL,
   StrUserField9			NVARCHAR2(100) NULL,
   StrUserField10			NVARCHAR2(100) NULL,
   StrUserField11			NVARCHAR2(100) NULL,
   StrUserField12			NVARCHAR2(100) NULL,
   StrUserField13			NVARCHAR2(100) NULL,
   StrUserField14			NVARCHAR2(100) NULL,
   StrUserField15			NVARCHAR2(100) NULL,
   StrUserField16			NVARCHAR2(100) NULL,
   StrUserField17			NVARCHAR2(100) NULL,
   StrUserField18			NVARCHAR2(100) NULL,
   StrUserField19			NVARCHAR2(100) NULL,
   StrUserField20			NVARCHAR2(100) NULL,
   StrUserField21			NVARCHAR2(100) NULL,
   StrUserField22			NVARCHAR2(100) NULL,
   StrUserField23			NVARCHAR2(100) NULL,
   StrUserField24			NVARCHAR2(100) NULL,
   StrUserField25			NVARCHAR2(100) NULL,
   StrUserField26			NVARCHAR2(100) NULL,
   StrUserField27			NVARCHAR2(100) NULL,
   StrUserField28			NVARCHAR2(100) NULL,
   StrUserField29			NVARCHAR2(100) NULL,
   StrUserField30			NVARCHAR2(100) NULL,
   DateUserField1			NVARCHAR2(11) NULL,
   DateUserField2			NVARCHAR2(11) NULL,
   DateUserField3			NVARCHAR2(11) NULL,
   DateUserField4			NVARCHAR2(11) NULL,
   DateUserField5			NVARCHAR2(11) NULL,
   Back_End_ID				NVARCHAR2(50) NULL,
   RISK_PROFILE_SCORE			NVARCHAR2(38) NULL,
   RISK_PROFILE_EXPIRY_DATE		NVARCHAR2(17) NULL,
   PreferredPhoneType			NVARCHAR2(50) NULL,
   PreferredEmail			NVARCHAR2(150) NULL,
   NoOfCreditCards			NVARCHAR2(38) NULL,
   ReasonForMovingOut			NVARCHAR2(5) NULL,
   CompetitorProductID			NVARCHAR2(50) NULL,
   OCCUPATION_TYPE			NVARCHAR2(50) NULL,
   BANK_ID				NVARCHAR2(8) NULL,
   ZAKAT_DEDUCTION			NVARCHAR2(2) NULL,
   ASSET_CLASSIFICATION			NVARCHAR2(1) NULL,
   CUSTOMER_LEVEL_PROVISIONING		NVARCHAR2(1) NULL,
   ISLAMIC_BANKING_CUSTOMER		NVARCHAR2(1) NULL,
   PREFERREDCALENDER			NVARCHAR2(50) NULL,
   IDTYPER1				NVARCHAR2(50) NULL,
   IDTYPER2				NVARCHAR2(50) NULL,
   IDTYPER3				NVARCHAR2(50) NULL,
   IDTYPER4				NVARCHAR2(50) NULL,
   IDTYPER5				NVARCHAR2(50) NULL,
   CUST_LAST_NAME_ALT1			NVARCHAR2(80) NULL,
   CUST_FIRST_NAME_ALT1			NVARCHAR2(80) NULL,
   CUST_MIDDLE_NAME_ALT1		NVARCHAR2(80) NULL,
   STRFIELD6_ALT1			NVARCHAR2(50) NULL,
   NAME_ALT1				NVARCHAR2(80) NULL,
   SHORT_NAME_ALT1			NVARCHAR2(10) NULL,
   ISEBANKINGENABLED			NVARCHAR2(1) NULL,
   PURGEFLAG				NVARCHAR2(1) NULL,
   SUSPENDED				NVARCHAR2(1) NULL,
   BLACKLISTED				NVARCHAR2(1) NULL,
   NEGATED		 		NVARCHAR2(1) NULL,
   ACCOUNTID				NVARCHAR2(50) NULL,
   ADDRESS_LINE1			NVARCHAR2(200) NULL,
   ADDRESS_LINE2			NVARCHAR2(200) NULL,
   ADDRESS_LINE3			NVARCHAR2(200) NULL,
   STATE				NVARCHAR2(200) NULL,
   COUNTRY				NVARCHAR2(100) NULL,
   ZIP					NVARCHAR2(100) NULL,
   BOCREATEDBYLOGINID			NVARCHAR2(50) NULL,
   date_of_death        NVARCHAR2(11) NULL,
   date_of_notifi        NVARCHAR2(11) NULL,
   riskrating            NVARCHAR2(11) NULL
   --phy_state            NVARCHAR2(20) NULL,
   --date_of_death        NVARCHAR2(11) NULL,
   --date_of_notifi        NVARCHAR2(11) NULL,
   --submit_for_kyc        NVARCHAR2(11) NULL,
   --kyc_rev_date          NVARCHAR2(11) NULL,
   --kyc_date              NVARCHAR2(11) NULL,
   --riskrating            NVARCHAR2(11) NULL,
   --FATCA_Required		 NVARCHAR2(11) NULL,
   --forgn_tax_rep_req_cuntry    NVARCHAR2(11) NULL,
   --forgn_tax_rep_req_status    NVARCHAR2(11) NULL,
   --last_forgn_tax_revw_date     NVARCHAR2(11) NULL,
   --next_forgn_tax_revw_date     NVARCHAR2(11) NULL,
   --TIN_EIN						NVARCHAR2(11) NULL,
   --unique_id_number             NVARCHAR2(11) NULL,
   --enbd_riskrating				NVARCHAR2(11) NULL
);

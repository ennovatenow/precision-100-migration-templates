--FileName          :SCU1.sql
--FileCreatedfor    :spooldatatofile
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 1200
set page size 0
set pages 0
set trimspool on
CHARACTERSET UTF8
spool $MIG_PATH/output/finacle/cifkw/RC001.txt
select 
trim(ORGKEY)||'|'||
trim(CIF_ID)||'|'||
trim(ENTITYTYPE)||'|'||
trim(CUST_TYPE_CODE)||'|'||
trim(SALUTATION_CODE)||'|'||
trim(CUST_FIRST_NAME)||'|'||
trim(CUST_MIDDLE_NAME)||'|'||
trim(CUST_LAST_NAME)||'|'||
trim(PREFERREDNAME)||'|'||
trim(SHORT_NAME)||'|'||
trim(CUST_DOB)||'|'||
trim(GENDER)||'|'||
trim(OCCUPATION_CODE)||'|'||
trim(NATIONALITY)||'|'||
trim(NATIVELANG_TITLE)||'|'||
trim(NATIVELANG_NAME)||'|'||
trim(DOCUMENT_RECIEVED)||'|'||
trim(STAFF_FLAG)||'|'||
trim(STAFFEMPLOYEEID)||'|'||
trim(MANAGER)||'|'||
trim(CUSTOMERNRE_FLAG)||'|'||
trim(DATEOFBECOMINGNRE)||'|'||
trim(CUSTOMER_MINOR)||'|'||
trim(CUSTOMER_GUARDIAN_ID)||'|'||
trim(MINOR_GUARD_CODE)||'|'||
trim(MINOR_GUARD_NAME)||'|'||
trim(REGION)||'|'||
trim(PRIMARY_SERVICE_CENTRE)||'|'||
trim(RELATIONSHIPOPENINGDATE)||'|'||
trim(STATUS_CODE)||'|'||
trim(CUSTSTATUSCHGDATE)||'|'||
trim(HOUSEHOLD_ID)||'|'||
trim(HOUSEHOLD_NAME)||'|'||
trim(CRNCY_CODE_RETAIL)||'|'||
trim(RATING_CODE)||'|'||
trim(RATING_DATE)||'|'||
trim(CUST_PREF_TILL_DATE)||'|'||
trim(TDS_TBL_CODE)||'|'||
trim(INTRODUCER_ID)||'|'||
trim(INTRODUCER_SALUTATION)||'|'||
trim(INTRODUCER_NAME)||'|'||
trim(INTRODUCER_STATUS_CODE)||'|'||
trim(OFFLINE_CUM_DEBIT_LIMIT)||'|'||
trim(CUST_TOT_TOD_ALWD_TIMES)||'|'||
trim(CUST_COMMU_CODE)||'|'||
trim(CARD_HOLDER)||'|'||
trim(CUST_HLTH)||'|'||
trim(CUST_HLTH_CODE)||'|'||
trim(TFPARTYFLAG)||'|'||
trim(PRIMARY_SOL_ID)||'|'||
trim(CONSTITUTION_REF_CODE)||'|'||
trim(CUSTOTHERBANKCODE)||'|'||
trim(CUST_FIRST_ACCT_DATE)||'|'||
trim(CHARGE_LEVEL_CODE)||'|'||
trim(CHRG_DR_FORACID)||'|'||
trim(CHRG_DR_SOL_ID)||'|'||
trim(CUST_CHRG_HISTORY_FLG)||'|'||
trim(COMBINED_STMT_REQD)||'|'||
trim(LOANS_STMT_TYPE)||'|'||
trim(TD_STMT_TYPE)||'|'||
trim(COMB_STMT_CHRG_CODE)||'|'||
trim(DESPATCH_MODE)||'|'||
trim(CS_LAST_PRINTED_DATE)||'|'||
trim(CS_NEXT_DUE_DATE)||'|'||
trim(ALLOW_SWEEPS)||'|'||
trim(PS_FREQ_TYPE)||'|'||
trim(PS_FREQ_WEEK_NUM)||'|'||
trim(PS_FREQ_WEEK_DAY)||'|'||
trim(PS_FREQ_START_DD)||'|'||
trim(PS_FREQ_HLDY_STAT)||'|'||
trim(ENTITY_TYPE)||'|'||
trim(LINKEDRETAILCIF)||'|'||
trim(HSHLDU_FLAG)||'|'||
trim(SMALL_STR1)||'|'||
trim(SMALL_STR2)||'|'||
trim(SMALL_STR3)||'|'||
trim(SMALL_STR4)||'|'||
trim(SMALL_STR5)||'|'||
trim(SMALL_STR6)||'|'||
trim(SMALL_STR7)||'|'||
trim(SMALL_STR8)||'|'||
trim(SMALL_STR9)||'|'||
trim(SMALL_STR10)||'|'||
trim(MED_STR1)||'|'||
trim(MED_STR2)||'|'||
trim(MED_STR3)||'|'||
trim(MED_STR4)||'|'||
trim(MED_STR5)||'|'||
trim(MED_STR6)||'|'||
trim(MED_STR7)||'|'||
trim(MED_STR8)||'|'||
trim(MED_STR9)||'|'||
trim(MED_STR10)||'|'||
trim(LARGE_STR1)||'|'||
trim(LARGE_STR2)||'|'||
trim(LARGE_STR3)||'|'||
trim(LARGE_STR4)||'|'||
trim(LARGE_STR5)||'|'||
trim(DATE1)||'|'||
trim(DATE2)||'|'||
trim(DATE3)||'|'||
trim(DATE4)||'|'||
trim(DATE5)||'|'||
trim(DATE6)||'|'||
trim(DATE7)||'|'||
trim(DATE8)||'|'||
trim(DATE9)||'|'||
trim(DATE10)||'|'||
trim(NUMBER1)||'|'||
trim(NUMBER2)||'|'||
trim(NUMBER3)||'|'||
trim(NUMBER4)||'|'||
trim(NUMBER5)||'|'||
trim(NUMBER6)||'|'||
trim(NUMBER7)||'|'||
trim(NUMBER8)||'|'||
trim(NUMBER9)||'|'||
trim(NUMBER10)||'|'||
trim(DECIMAL1)||'|'||
trim(DECIMAL2)||'|'||
trim(DECIMAL3)||'|'||
trim(DECIMAL4)||'|'||
trim(DECIMAL5)||'|'||
trim(DECIMAL6)||'|'||
trim(DECIMAL7)||'|'||
trim(DECIMAL8)||'|'||
trim(DECIMAL9)||'|'||
trim(DECIMAL10)||'|'||
trim(CORE_CUST_ID)||'|'||
trim(PERSON_TYPE)||'|'||
trim(CUST_LANGUAGE)||'|'||
trim(CUST_STAFF_STATUS)||'|'||
trim(PHONE)||'|'||
trim(EXTENSION)||'|'||
trim(FAX)||'|'||
trim(FAX_HOME)||'|'||
trim(PHONE_HOME)||'|'||
trim(PHONE_HOME2)||'|'||
trim(PHONE_CELL)||'|'||
trim(EMAIL_HOME)||'|'||
trim(EMAIL_PALM)||'|'||
trim(EMAIL)||'|'||
trim(CITY)||'|'||
trim(PREFERRED_CHANNEL_ID)||'|'||
trim(CUSTOMER_RELATIONSHIP_no)||'|'||
trim(RELATIONSHIP_VALUE)||'|'||
trim(CATEGORY)||'|'||
trim(NUMBEROFPRODUCTS)||'|'||
trim(RELATIONSHIP_MANAGER_ID)||'|'||
trim(RELATIONSHIP_CREATED_BY_ID)||'|'||
trim(URL)||'|'||
trim(STATUS)||'|'||
trim(INDUSTRY)||'|'||
trim(PARENTORG)||'|'||
trim(COMPETITOR)||'|'||
trim(SIC_CODE)||'|'||
trim(CIN)||'|'||
trim(DESIGNATION)||'|'||
trim(ASSISTANT)||'|'||
trim(INTERNAL_SCORE)||'|'||
trim(CREDIT_BUREAU_SCORE_VALIDITY)||'|'||
trim(CREDIT_BUREAU_SCORE)||'|'||
trim(CREDIT_BUREAU_REQUEST_DATE)||'|'||
trim(CREDIT_BUREAU_DESCRIPTION)||'|'||
trim(MAIDEN_MOTHER_NAME)||'|'||
trim(ANNUAL_REVENUE)||'|'||
trim(REVENUE_UNITS)||'|'||
trim(TICKER_SYMBOL)||'|'||
trim(AUTO_APRPOVAL)||'|'||
trim(FREEZE_PRODUCT_SALE)||'|'||
trim(RELATIONSHIP_FIELD_1)||'|'||
trim(RELATIONSHIP_FIELD_2)||'|'||
trim(RELATIONSHIP_FIELD_3)||'|'||
trim(DELINQUENCY_FLAG)||'|'||
trim(CUSTOMER_NRE_FLAG)||'|'||
trim(COMBINED_STMT_FLAG)||'|'||
trim(CUSTOMER_TRADE)||'|'||
trim(PLACE_OF_BIRTH)||'|'||
trim(COUNTRY_OF_BIRTH)||'|'||
trim(PROOF_OF_AGE_FLAG)||'|'||
trim(PROOF_OF_AGE_DOCUMENT)||'|'||
trim(NAME_SUFFIX)||'|'||
trim(MAIDEN_NAME)||'|'||
trim(CUSTOMER_PROFITABILITY)||'|'||
trim(CURRENT_CR_EXPOSURE)||'|'||
trim(TOTAL_CREDIT_EXOPSURE)||'|'||
trim(POTENTIAL_CREDIT_LINE)||'|'||
trim(AVAILABLE_CREDI_LIMIT)||'|'||
trim(CREDIT_SCORE_REQUESTED_FLAG)||'|'||
trim(CREDIRT_HISTORY_REQUESTED_FLG)||'|'||
trim(GROUP_ID)||'|'||
trim(FLG1)||'|'||
trim(FLG2)||'|'||
trim(FLG3)||'|'||
trim(ALERT1)||'|'||
trim(ALERT2)||'|'||
trim(ALERT3)||'|'||
trim(RELATIONSHIP_OFFICER_1)||'|'||
trim(RELATIONSHIP_OFFICER_2)||'|'||
trim(DTDATE1)||'|'||
trim(DTDATE2)||'|'||
trim(DTDATE3)||'|'||
trim(DTDATE4)||'|'||
trim(DTDATE5)||'|'||
trim(DTDATE6)||'|'||
trim(DTDATE7)||'|'||
trim(DTDATE8)||'|'||
trim(DTDATE9)||'|'||
trim(Amount1)||'|'||
trim(Amount2)||'|'||
trim(Amount3)||'|'||
trim(Amount4)||'|'||
trim(Amount5)||'|'||
trim(strfield1)||'|'||
trim(strfield2)||'|'||
trim(strfield3)||'|'||
trim(strfield4)||'|'||
trim(strfield5)||'|'||
trim(strfield6)||'|'||
trim(strfield7)||'|'||
trim(strfield8)||'|'||
trim(strfield9)||'|'||
trim(strfield10)||'|'||
trim(strfield11)||'|'||
trim(strfield12)||'|'||
trim(strfield13)||'|'||
trim(strfield14)||'|'||
trim(strfield15)||'|'||
trim(UserFlag1)||'|'||
trim(UserFlag2)||'|'||
trim(UserFlag3)||'|'||
trim(UserFlag4)||'|'||
trim(MLUserField1)||'|'||
trim(MLUserField2)||'|'||
trim(MLUserField3)||'|'||
trim(MLUserField4)||'|'||
trim(MLUserField5)||'|'||
trim(MLUserField6)||'|'||
trim(MLUserField7)||'|'||
trim(MLUserField8)||'|'||
trim(MLUserField9)||'|'||
trim(MLUserField10)||'|'||
trim(MLUserField11)||'|'||
trim(Notes)||'|'||
trim(Priority_Code)||'|'||
trim(Created_From)||'|'||
trim(Constitution_Code)||'|'||
trim(StrField16)||'|'||
trim(StrField17)||'|'||
trim(StrField18)||'|'||
trim(StrField19)||'|'||
trim(StrField20)||'|'||
trim(StrField21)||'|'||
trim(StrField22)||'|'||
trim(Amount6)||'|'||
trim(Amount7)||'|'||
trim(Amount8)||'|'||
trim(Amount9)||'|'||
trim(Amount10)||'|'||
trim(Amount11)||'|'||
trim(Amount12)||'|'||
trim(IntField1)||'|'||
trim(IntField2)||'|'||
trim(IntField3)||'|'||
trim(IntField4)||'|'||
trim(IntField5)||'|'||
trim(nick_name)||'|'||
trim(mother_name)||'|'||
trim(father_husband_name)||'|'||
trim(previous_name)||'|'||
trim(lead_source)||'|'||
trim(relationship_type)||'|'||
trim(rm_group_id)||'|'||
trim(relationship_level)||'|'||
trim(DSA_ID)||'|'||
trim(photograph_id)||'|'||
trim(Secure_id)||'|'||
trim(Deliquency_Period)||'|'||
trim(AddName1)||'|'||
trim(AddName2)||'|'||
trim(AddName3)||'|'||
trim(AddName4)||'|'||
trim(AddName5)||'|'||
trim(OldEntityCreatedOn)||'|'||
trim(OldEntityType)||'|'||
trim(OldEntityID)||'|'||
trim(Document_Received)||'|'||
trim(Suspend_Notes)||'|'||
trim(Suspend_Reason)||'|'||
trim(Blacklist_Notes)||'|'||
trim(Blacklist_Reason)||'|'||
trim(Negated_Notes)||'|'||
trim(Negated_Reason)||'|'||
trim(Segmentation_Class)||'|'||
trim(Name)||'|'||
trim(Manager_Opinion)||'|'||
trim(Introd_Status)||'|'||
trim(NativeLangCode)||'|'||
trim(MinorAttainMajorDate)||'|'||
trim(NREBecomingOrdDate)||'|'||
trim(Start_Date)||'|'||
trim(Add1_First_Name)||'|'||
trim(Add1_Middle_Name)||'|'||
trim(Add1_Last_Name)||'|'||
trim(Add2_First_Name)||'|'||
trim(Add2_Middle_Name)||'|'||
trim(Add2_Last_Name)||'|'||
trim(Add3_First_Name)||'|'||
trim(Add3_Middle_Name)||'|'||
trim(Add3_Last_Name)||'|'||
trim(Add4_First_Name)||'|'||
trim(Add4_Middle_Name)||'|'||
trim(Add4_Last_Name)||'|'||
trim(Add5_First_Name)||'|'||
trim(Add5_Middle_Name)||'|'||
trim(Add5_Last_Name)||'|'||
trim(Dual_First_Name)||'|'||
trim(Dual_Middle_Name)||'|'||
trim(Dual_Last_Name)||'|'||
trim(Cust_Community)||'|'||
trim(Core_introd_cust_id)||'|'||
trim(Introd_Salutation_code)||'|'||
trim(Tds_cust_id)||'|'||
trim(Nat_id_card_num)||'|'||
trim(Psprt_issue_date)||'|'||
trim(Psprt_det)||'|'||
trim(Psprt_exp_date)||'|'||
trim(Crncy_code)||'|'||
trim(Pref_code)||'|'||
trim(Introd_Status_Code)||'|'||
trim(NativeLangTitle_code)||'|'||
trim(Groupid_code)||'|'||
trim(Sector)||'|'||
trim(SubSector)||'|'||
trim(CustCreationMode)||'|'||
trim(First_Product_Processor)||'|'||
trim(Interface_Reference_ID)||'|'||
trim(cust_health_ref_code)||'|'||
trim(TDS_CIFID)||'|'||
trim(PREF_CODE_RCODE)||'|'||
trim(CUST_SWIFT_CODE_DESC)||'|'||
trim(IS_SWIFT_CODE_OF_BANK)||'|'||
trim(NATIVELANGCODE_CODE)||'|'||
trim(CreatedBySystemID)||'|'||
trim(PreferredEmailType)||'|'||
trim(PreferredPhone)||'|'||
trim(CUST_FIRST_NAME_NATIVE)||'|'||
trim(CUST_MIDDLE_NAME_NATIVE)||'|'||
trim(CUST_LAST_NAME_NATIVE)||'|'||
trim(SHORT_NAME_NATIVE)||'|'||
trim(CUST_FIRST_NAME_NATIVE1)||'|'||
trim(CUST_MIDDLE_NAME_NATIVE1)||'|'||
trim(CUST_LAST_NAME_NATIVE1)||'|'||
trim(SHORT_NAME_NATIVE1)||'|'||
trim(SecondaryRM_ID)||'|'||
trim(TertiaryRM_ID)||'|'||
trim(SUBSEGMENT)||'|'||
trim(ACCESSOWNERGROUP)||'|'||
trim(ACCESSOWNERSEGMENT)||'|'||
trim(ACCESSOWNERBC)||'|'||
trim(ACCESSOWNERAGENT)||'|'||
trim(ACCESSASSIGNEEAGENT)||'|'||
trim(CHARGELEVELCODE)||'|'||
trim(IntUserField1)||'|'||
trim(IntUserField2)||'|'||
trim(IntUserField3)||'|'||
trim(IntUserField4)||'|'||
trim(IntUserField5)||'|'||
trim(StrUserField1)||'|'||
trim(StrUserField2)||'|'||
trim(StrUserField3)||'|'||
trim(StrUserField4)||'|'||
trim(StrUserField5)||'|'||
trim(StrUserField6)||'|'||
trim(StrUserField7)||'|'||
trim(StrUserField8)||'|'||
trim(StrUserField9)||'|'||
trim(StrUserField10)||'|'||
trim(StrUserField11)||'|'||
trim(StrUserField12)||'|'||
trim(StrUserField13)||'|'||
trim(StrUserField14)||'|'||
trim(StrUserField15)||'|'||
trim(StrUserField16)||'|'||
trim(StrUserField17)||'|'||
trim(StrUserField18)||'|'||
trim(StrUserField19)||'|'||
trim(StrUserField20)||'|'||
trim(StrUserField21)||'|'||
trim(StrUserField22)||'|'||
trim(StrUserField23)||'|'||
trim(StrUserField24)||'|'||
trim(StrUserField25)||'|'||
trim(StrUserField26)||'|'||
trim(StrUserField27)||'|'||
trim(StrUserField28)||'|'||
trim(StrUserField29)||'|'||
trim(StrUserField30)||'|'||
trim(DateUserField1)||'|'||
trim(DateUserField2)||'|'||
trim(DateUserField3)||'|'||
trim(DateUserField4)||'|'||
trim(DateUserField5)||'|'||
trim(Back_End_ID)||'|'||
trim(RISK_PROFILE_SCORE)||'|'||
trim(RISK_PROFILE_EXPIRY_DATE)||'|'||
trim(PreferredPhoneType)||'|'||
trim(PreferredEmail)||'|'||
trim(NoOfCreditCards)||'|'||
trim(ReasonForMovingOut)||'|'||
trim(CompetitorProductID)||'|'||
trim(OCCUPATION_TYPE)||'|'||
trim(BANK_ID)||'|'||
trim(ZAKAT_DEDUCTION)||'|'||
trim(ASSET_CLASSIFICATION)||'|'||
trim(CUSTOMER_LEVEL_PROVISIONING)||'|'||
trim(ISLAMIC_BANKING_CUSTOMER)||'|'||
trim(PREFERREDCALENDER)||'|'||
trim(IDTYPER1)||'|'||
trim(IDTYPER2)||'|'||
trim(IDTYPER3)||'|'||
trim(IDTYPER4)||'|'||
trim(IDTYPER5)||'|'||
trim(CUST_LAST_NAME_ALT1)||'|'||
trim(CUST_FIRST_NAME_ALT1)||'|'||
trim(CUST_MIDDLE_NAME_ALT1)||'|'||
trim(STRFIELD6_ALT1)||'|'||
trim(NAME_ALT1)||'|'||
trim(SHORT_NAME_ALT1)||'|'||
trim(ISEBANKINGENABLED)||'|'||
trim(PURGEFLAG)||'|'||
trim(SUSPENDED)||'|'||
trim(BLACKLISTED)||'|'||
trim(NEGATED)||'|'||
trim(ACCOUNTID)||'|'||
trim(ADDRESS_LINE1)||'|'||
trim(ADDRESS_LINE2)||'|'||
trim(ADDRESS_LINE3)||'|'||
trim(STATE)||'|'||
trim(COUNTRY)||'|'||
trim(ZIP)||'|'||
trim(BOCREATEDBYLOGINID)||'|'||
trim(DATE_OF_DEATH)||'|'||
trim(DATE_OF_NOTIFI)||'|'||
trim(RISKRATING)
from cu1_o_table; 
spool off;
exit;
 
 
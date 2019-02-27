set head off
set feedback off
set term off
set lines 1100
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/reports/kw/cif/s_retail_master.dat
select
'LEG_BRANCH'||'|'||
'LEG_CUST_NUMBER'||'|'||
'FINACLE_SOL_ID'||'|'||
'SOL_DESCRIPTION'||'|'||
'FINACLE_CIF_ID'||'|'||
'ENTITY_TYPE'||'|'||
'LEG_CUSTOMER_TYPE'||'|'||
'FIN_CUSTOMER_TYPE'||'|'||
'CUSTOMER_TYPE_MATCH'||'|'||
'LEG_SALUTATION_CODE'||'|'||
'FINACLE_SALUTATION_CODE'||'|'||
'LEG_FIRST_NAME'||'|'||
'FINACLE_FIRST_NAME'||'|'||
'FIRST_NAME_MATCH'||'|'||
'LEG_MIDDLE_NAME'||'|'||
'FINACLE_MIDDLE_NAME'||'|'||
'MIDDLE_NAME_MATCH'||'|'||
'LEG_LAST_NAME'||'|'||
'FINACLE_LAST_NAME'||'|'||
'LAST_NAME_MATCH'||'|'||
'LEG_PREFERRED_NAME'||'|'||
'FINACLE_PREFERRED_NAME'||'|'||
'PREFERRED_NAME_MATCH'||'|'||
'LEG_SHORT_NAME'||'|'||
'FIN_SHORT_NAME'||'|'||
'SHORT_NAME_MATCH'||'|'||
'LEG_GENDER'||'|'||
'FINACLE_GENDER'||'|'||
'GENDER_MATCH'||'|'||
'LEG_CIF_DOB'||'|'||
'FINACLE_DOB'||'|'||
'DOB_MATCH'||'|'||
'LEG_MINOR_FLAG'||'|'||
'FINACLE_MINOR_FLAG'||'|'||
'MINOR_FLAG_MATCH'||'|'||
'LEG_CUST_STATUS'||'|'||
'FINACLE_CUST_STATUS'||'|'||
'CUST_STATUS_MATCH'||'|'||
'LEG_CONSTITUTION_CODE'||'|'||
'FINACLE_CUST_CONSITUTION_CODE'||'|'||
'CONSTITUTION_CODE_MATCH'||'|'||
'LEG_SUSPENDED_FLAG'||'|'||
'FINACLE_SUSPENDED_FLAG'||'|'||
'SUSPENDED_FLAG_MATCH'||'|'||
'SUSPEND_REASON'||'|'||
'LEG_MANAGER'||'|'||
'FINACLE_MANAGER'||'|'||
'LEG_RELATION_OPEN_DATE'||'|'||
'FINACLE_RELATION_OPEN_DATE'||'|'||
'RELATION_OPEN_DATE_MATCH'||'|'||
'LEG_NATIONALITY'||'|'||
'FIN_NATIONALITY'||'|'||
'NATIONALITY_MATCH'||'|'||
'LEG_RESIDENT_COUNTRY'||'|'||
'FIN_RESIDENT_COUNTRY'||'|'||
'RESIDENT_COUNTRY_MATCH'||'|'||
'LEG_STAFF_FLAG'||'|'||
'FIN_STAFF_FLAG'||'|'||
'STAFF_FLAG_MATCH'||'|'||
'LEG_NRE_FLAG'||'|'||
'FIN_NRE_FLAG'||'|'||
'NRE_FLAG_MATCH'||'|'||
'CURRENCY_CODE'||'|'||
'LEG_TF_FLAG'||'|'||
'FIN_TF_FLAG'||'|'||
'TF_FLAG_MATCH'||'|'||
'LEG_RISK_RATING'||'|'||
'FIN_RISK_RATING'||'|'||
'RISK_RATING_MATCH'||'|'||
'LEG_CBK_SECRET_NO'||'|'||
'FIN_CBK_SECRET_NO'||'|'||
'CBK_SECRET_NO_MATCH'
from dual
union all
select
to_char(LEG_BRANCH)||'|'||
to_char(LEG_CUST_NUMBER)||'|'||
to_char(FINACLE_SOL_ID)||'|'||
to_char(SOL_DESCRIPTION)||'|'||
to_char(FINACLE_CIF_ID)||'|'||
to_char(ENTITY_TYPE)||'|'||
to_char(LEG_CUSTOMER_TYPE)||'|'||
to_char(FIN_CUSTOMER_TYPE)||'|'||
to_char(CUSTOMER_TYPE_MATCH)||'|'||
to_char(LEG_SALUTATION_CODE)||'|'||
to_char(FINACLE_SALUTATION_CODE)||'|'||
to_char(LEG_FIRST_NAME)||'|'||
to_char(FINACLE_FIRST_NAME)||'|'||
to_char(FIRST_NAME_MATCH)||'|'||
to_char(LEG_MIDDLE_NAME)||'|'||
to_char(FINACLE_MIDDLE_NAME)||'|'||
to_char(MIDDLE_NAME_MATCH)||'|'||
to_char(LEG_LAST_NAME)||'|'||
to_char(FINACLE_LAST_NAME)||'|'||
to_char(LAST_NAME_MATCH)||'|'||
to_char(LEG_PREFERRED_NAME)||'|'||
to_char(FINACLE_PREFERRED_NAME)||'|'||
to_char(PREFERRED_NAME_MATCH)||'|'||
to_char(LEG_SHORT_NAME)||'|'||
to_char(FIN_SHORT_NAME)||'|'||
to_char(SHORT_NAME_MATCH)||'|'||
to_char(LEG_GENDER)||'|'||
to_char(FINACLE_GENDER)||'|'||
to_char(GENDER_MATCH)||'|'||
to_char(LEG_CIF_DOB)||'|'||
to_char(FINACLE_DOB)||'|'||
to_char(DOB_MATCH)||'|'||
to_char(LEG_MINOR_FLAG)||'|'||
to_char(FINACLE_MINOR_FLAG)||'|'||
to_char(MINOR_FLAG_MATCH)||'|'||
to_char(LEG_CUST_STATUS)||'|'||
to_char(FINACLE_CUST_STATUS)||'|'||
to_char(CUST_STATUS_MATCH)||'|'||
to_char(LEG_CONSTITUTION_CODE)||'|'||
to_char(FINACLE_CUST_CONSITUTION_CODE)||'|'||
to_char(CONSTITUTION_CODE_MATCH)||'|'||
to_char(LEG_SUSPENDED_FLAG)||'|'||
to_char(FINACLE_SUSPENDED_FLAG)||'|'||
to_char(SUSPENDED_FLAG_MATCH)||'|'||
to_char(SUSPEND_REASON)||'|'||
to_char(LEG_MANAGER)||'|'||
to_char(FINACLE_MANAGER)||'|'||
to_char(LEG_RELATION_OPEN_DATE)||'|'||
to_char(FINACLE_RELATION_OPEN_DATE)||'|'||
to_char(RELATION_OPEN_DATE_MATCH)||'|'||
to_char(LEG_NATIONALITY)||'|'||
to_char(FIN_NATIONALITY)||'|'||
to_char(NATIONALITY_MATCH)||'|'||
to_char(LEG_RESIDENT_COUNTRY)||'|'||
to_char(FIN_RESIDENT_COUNTRY)||'|'||
to_char(RESIDENT_COUNTRY_MATCH)||'|'||
to_char(LEG_STAFF_FLAG)||'|'||
to_char(FIN_STAFF_FLAG)||'|'||
to_char(STAFF_FLAG_MATCH)||'|'||
to_char(LEG_NRE_FLAG)||'|'||
to_char(FIN_NRE_FLAG)||'|'||
to_char(NRE_FLAG_MATCH)||'|'||
to_char(CURRENCY_CODE)||'|'||
to_char(LEG_TF_FLAG)||'|'||
to_char(FIN_TF_FLAG)||'|'||
to_char(TF_FLAG_MATCH)||'|'||
to_char(LEG_RISK_RATING)||'|'||
to_char(FIN_RISK_RATING)||'|'||
to_char(RISK_RATING_MATCH)||'|'||
to_char(LEG_CBK_SECRET_NO)||'|'||
to_char(FIN_CBK_SECRET_NO)||'|'||
to_char(CBK_SECRET_NO_MATCH)
from rep_master where sort1='STAFF';
exit; 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/collateral/COL_OTH.txt
select 
TRIM(COL_TYPE) ||'|'||
TRIM(COL_CODE) ||'|'||
TRIM(CEILING_LIMIT) ||'|'||
TRIM(COL_CLASS) ||'|'||
TRIM(COL_GROUP) ||'|'||
TRIM(LTV_PCNT) ||'|'||
TRIM(DR_ACC_FOR_FEES) ||'|'||
TRIM(LAST_VALUATION_DT) ||'|'||
TRIM(REASON_CODE) ||'|'||
TRIM(NATURE_OF_CHARGE) ||'|'||
TRIM(COL_VALUE) ||'|'||
TRIM(REVIEW_DATE) ||'|'||
TRIM(RECEIVED_DATE) ||'|'||
TRIM(DUE_DATE) ||'|'||
TRIM(LODGED_DATE) ||'|'||
TRIM(CIF_ID) ||'|'||
TRIM(NOTES0) ||'|'||
TRIM(INSPECTION_TYPE) ||'|'||
TRIM(ADDRESSLINE_1) ||'|'||
TRIM(ADDRESLINE_2) ||'|'||
TRIM(CITY_CODE) ||'|'||
TRIM(STATE_CODE) ||'|'||
TRIM(ZIP_CODE) ||'|'||
TRIM(TELEPHONE_NUMBER) ||'|'||
TRIM(DATE_OF_VISIT) ||'|'||
TRIM(DUE_DATE_OF_VISIT) ||'|'||
TRIM(INSPECTED_VALUE) ||'|'||
TRIM(INSPECTED_EMP_ID) ||'|'||
TRIM(NOTES1) ||'|'||
TRIM(NOTES2) ||'|'||
TRIM(INSURANCE_TYPE) ||'|'||
TRIM(INSURER_DETAILS) ||'|'||
TRIM(INSURANCE_POLICY_NUMBER) ||'|'||
TRIM(INSURANCE_POLICY_AMOUNT) ||'|'||
TRIM(RISK_COVER_START_DATE) ||'|'||
TRIM(RISK_COVER_END_DATE) ||'|'||
TRIM(LAST_PREMIUM_PAID_DATE) ||'|'||
TRIM(PREMIUM_AMOUNT) ||'|'||
TRIM(FREQUENCY_OF_THE_STATEMENT) ||'|'||
TRIM(ITEMS_INSURED) ||'|'||
TRIM(NOTES) ||'|'||
TRIM(LINKAGE_TYPE) ||'|'||
TRIM(COLL_STATUS) ||'|'||--COLL_STATUS         
TRIM(ACCOUNT_TO_BE_LINKED) ||'|'||
TRIM(DP_CONTRBTN) ||'|'||--DP_CONTRBTN         
TRIM(MARGIN) ||'|'||
TRIM(LIMIT_PREFIX) ||'|'||
TRIM(LIMIT_SUFFIX) ||'|'||
TRIM(UPLOAD_STATUS) ||'|'||--UPLOAD_STATUS       
TRIM(get_param('BANK_ID')) ||'|'||
TRIM(PRIMARYSECNDRY) ||'|'||--PRIMARYSECNDRY      
TRIM(SERIAL_NUMBER) ||'|'|| 
TRIM(FORACID_COLL_VALUE) ||'|'||--FORACID_COLL_VALUE      
TRIM(SERIAL_NUMBER) ||'|'||  
TRIM(CC_FINONE_ACCNT)--CC_FINONE_ACCNT  
from col_others_o_table;
exit;
 

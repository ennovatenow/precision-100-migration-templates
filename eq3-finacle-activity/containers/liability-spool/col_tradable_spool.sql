set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/collateral/COL_TRAD.txt
select 
TRIM(COL_TYPE) ||'|'||
TRIM(COL_CODE) ||'|'||
TRIM(CEILING_LIMIT) ||'|'||
TRIM(COL_CLASS) ||'|'||
TRIM(COL_GROUP) ||'|'||
TRIM(MARGIN) ||'|'||
TRIM(LTV_PCNT) ||'|'||
TRIM(DR_ACC_FOR_FEES) ||'|'||
TRIM(LAST_VALUATION_DT) ||'|'||
TRIM(FROM_DISTINCTIVE_NO) ||'|'||
TRIM(TO_DISTINCTIVE_NO) ||'|'||
TRIM(NO_OF_UNITS) ||'|'||
TRIM(UNIT_VALUE) ||'|'||
TRIM(TOTAL_COLLATERAL_VALUE) ||'|'||
TRIM(NOTES) ||'|'||
TRIM(CIF_ID) ||'|'||
TRIM(NATURE_OF_CHARGE) ||'|'||
TRIM(REVIEW_DATE) ||'|'||
TRIM(DUE_DATE) ||'|'||
TRIM(CLIENT_ID) ||'|'||
TRIM(DP_ID) ||'|'||
TRIM(HOLDING_PATTERN) ||'|'||
TRIM(WITHDRAW) ||'|'||
TRIM(DEL) ||'|'||
TRIM(REASON_CODE) ||'|'||
TRIM(BROKER_NAME) ||'|'||
TRIM(SENT_FOR_SALE_ON) ||'|'||
TRIM(SALES_REVIEW_DATE) ||'|'||--SALES_REVIEW_DATE
TRIM(SALES_DUE_DATE) ||'|'||--SALES_DUE_DATE
TRIM(EXPECTED_MIN_PRICE) ||'|'||
TRIM(PROCEEDS_RECEIVED_ON) ||'|'||
TRIM(SALES_PROCEEDS_RECEIVED) ||'|'||
TRIM(STOCK_EXCHANGE) ||'|'||
TRIM(NOTES_1) ||'|'||
TRIM(NOTES_2) ||'|'||
TRIM(COLLATERAL_STATUS) ||'|'||--COLLATERAL_STATUS
TRIM(LINKAGE_TYPE) ||'|'||
TRIM(ACCOUNT_TO_BE_LINKED) ||'|'||
TRIM(LIMIT_PREFIX) ||'|'||
TRIM(LIMIT_SUFFIX) ||'|'||
TRIM(SERIAL_NUMBER) ||'|'||  
TRIM(FORACID_COLL_VALUE) ||'|'||--FORACID_COLL_VALUE
TRIM(CC_FINONE_ACCNT) ||'|'||--CC_FINONE_ACCNT
TRIM(SERIAL_NUMBER) ||'|'||  
TRIM(UPLOAD_STATUS) ||'|'||  
TRIM(get_param('BANK_ID'))
from COL_TRADEABLE_O_TABLE;
exit; 

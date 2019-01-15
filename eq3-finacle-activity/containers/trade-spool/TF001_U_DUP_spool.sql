
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/TF/TF001_U_DUP.txt
SELECT
FUNC_CODE,
SOL_ID,
BG_NUM,
EVENT_AMT,
BG_EXPIRY_MONTH,
BG_EXPIRY_DAYS,
BG_EXPIRY_DATE,
BG_CLAIM_EXPIRY_MONTHS,
BG_CLAIM_EXPIRY_DAYS,
BG_CLAIM_EXPIRY_DATE,
BG_CHARGES_BORNE_BY,
BG_TYPE,
BG_CURRENCY,
CIF_ID,
EVENT_DATE,
PURPOSE_OF_GUARANTEE_TEXT,
BG_CLASS,
BG_EFFECTIVE_DATE,
APPLICABLE_RULES,
APPLICABLE_SUB_RULES,
BG_FRUCTIFIED_AMOUNT,
IS_ORIGINAL_BG_RECEIVED_FLAG,
BG_REMARKS,
COUNTER_BG_NUMBER,
IMPORT_LICENSE_NUM,
LICENSE_EXPIRYDATE,
CAPITALADEQUANCYCODE,
BG_PROVISION_AMOUNT,
FREE_CODE1,
FREE_CODE2,
FREE_CODE3,
BG_OPERATIVE_ACCOUNT_ID,
APPLICANT_NAME,
APPLICANT_ADDRESS1,
APPLICANT_ADDRESS2,
APPLICANT_ADDRESS3,
APPLICANT_CITY,
APPLICANT_STATE,
APPLICANT_COUNTRY,
APPLICANT_PIN_CODE,
APPLICANT_REF_NUM,
BG_RATE_CODE,
BG_RATE,
OTHER_BANK_REF_NUM,
PAYSYS_ID,
BENEFICIARY_CIF_ID,
BENEFICIARY_NAME,
BENEFICIARY_ADDRESS1,
BENEFICIARY_ADDRESS2,
BENEFICIARY_ADDRESS3,
BENEFICIARY_CITY,
BENEFICIARY_STATE,
BENEFICIARY_COUNTRY,
BENEFICIARY_PINCODE,
BENEFICIARY_TYPE,
BG_CORRESPONDENT_BANK,
BG_CORRESPONDENT_BRANCH,
BG_CORRESPONDENT_NAME,
BG_CORRESPONDENT_ADDRESS1,
BG_CORRESPONDENT_ADDRESS2,
BG_CORRESPONDENT_ADDRESS3,
BG_CORRESPONDENT_CITY,
BG_CORRESPONDENT_STATE,
BG_CORRESPONDENT_COUNTRY,
BG_CORRESPONDENT_PINCODE,
BIC_CODE,
PARTY_IDENTIFIER,
CORR_BANK_ADDRESS_TYPE,
BG_CRNCY_CODE,
DC_REF_NUM,
SG_BILL_EQUIVALENT_CRNCY_CODE,
SG_BILL_EQUIVALENT_AMOUNT,
BG_DC_RATE_CODE,
BG_DC_RATE,
SG_CONTINGENT_CRNCY_CODE,
SG_CONTINGENT_AMOUNT,
RETAIN_MIN_CONTINGENT_AMOUNT,
CONTINGENT_REVERSAL_EVENT,
MARGIN_REVERSAL_RATE_CODE,
TRUST_RECEIPT_NUM,
NO_OF_UNITS,
UNIT_VALUE,
COMMODITY_DETAILS_DESC,
COMMODITY_REMARKS,
BILL_LADING_NUM,
CARRIER_ID,
CARRIER_NAME,
CARRIER_ADDRESS1,
CARRIER_ADDRESS2,
CARRIER_ADDRESS3,
CARRIER_CITY,
CARRIER_STATE,
CARRIER_COUNTRY,
CARRIER_PINCODE,
ORDER_OF_CONSIGNEE,
PORT_OF_DESTINATION,
ACTUAL_SHIPMENT_DATE,
LIMITPREFIX,
LIMITSUFFIX,
LIMITMARGINPCNT,
RELLIMITS,
AMENDMENT_INDICATOR,
AMENDMENT_REMARKS,
STATUS,
AMENDINITIATEDBY,
AUTORENEWAPPLICABLEFLG,
FINALEXPIRYDATE,
AUTORENEWNEXTCYCLE,
AUTORENEWFREQTYPE,
AUTORENEWFREQDATE,
AUTORENEWFREQWEEKNUM,
AUTORENEWFREQDAY,
ISFREQDAYONHOLIDAY,
BGCOUNTERGUARANTEERATECODE,
COUNTERRATE,
ADVANCEAMTPAID,
SOLIDORDER1,
ORDERNODTLS1,
SOLIDORDER2,
ORDERNODTLS2,
SOLIDORDER3,
ORDERNODTLS3,
SOLIDORDER4,
ORDERNODTLS4,
SOLIDORDER5,
ORDERNODTLS5,
PURCHASEFORACID,
SGDOPAYABLEFORACID,
EXECADVNO1,
EXECADVNO2,
EXECADVNO3,
EXECADVNO4,
EXECADVNO5,
PROMISETOPURCHASERECV,
PROMISETOPURCHASEDATE,
PROMISETOPURCHASEREFNO,
PURCHASEACCPTADVICE,
FINANCINGFORACID,
DEBITFINANCINGFORACID,
PREFIXFINANCINGLIMITID,
SUFFIXFINANCINGLIMITID,
ISLAMICRATECODE,
ISLAMICRATE,
SECTORCODE,
EXPCIFID,
EXPNAME,
EXPADDR1,
EXPADDR2,
EXPADDR3,
EXPCITY,
EXPSTATE,
EXPCNTRY,
EXPPINCODE,
BGCOLLBANKCODE,
BGCOLLBRANCHCODE,
BGCOLLBANKNAME,
BGCOLLBANKADDR1,
BGCOLLBANKADDR2,
BGCOLLBANKADDR3,
BGCOLLBANKCITY,
BGCOLLBANKSTATE,
BGCOLLBANKCNTRY,
BGCOLLBANKPINCODE,
BGCOLLBICCODE,
BGCOLLPARTYID,
BGCOLLADDRTYPE,
INTENDTOEXPORT,
INWARDDCREFNUM
FROM TF001_DUP
order by BG_NUM,to_date(event_date,'dd-mm-yyyy');
spool off;
 

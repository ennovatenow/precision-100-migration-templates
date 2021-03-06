-- File Name		: fx_spot_deals_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/FX_SPOT_SALE_DEALS.TXT
SELECT 
'RESPONSE'||'|'||
'PRODUCT_TYPE'||'|'||
'DEAL_DATE'||'|'||
'DEAL_IDENTIFIER'||'|'||
'TRADING_BOOK'||'|'||
'MAIN_LEG.SPOT_TRD_BOOK'||'|'||
'SUBTYPE'||'|'||
'DEPT_NAME'||'|'||
'ACCOUNTING_CODE'||'|'||
'ENTITY_NAME'||'|'||
'MAIN_LEG.SPOT_RISK_ENTITY'||'|'||
'MAIN_LEG.CPTY'||'|'||
'MAIN_LEG.CCY_PAIR'||'|'||
'TRADED_CCY'||'|'||
'DCO_CURRENCY'||'|'||
'MAIN_LEG.FX_BUY_SELL'||'|'||
'MAIN_LEG.CCY_ONE_AMOUNT'||'|'||
'MAIN_LEG.CUSTOMER_SPOT_RATE'||'|'||
'MAIN_LEG.CCY_TWO_AMOUNT'||'|'||
'MAIN_LEG.VALUE_DATE_ONE'||'|'||
'MEMO_FIELD_1'||'|'||
'CONFIRM_METHOD'||'|'||
'SI_FLOW_PAY.SSI_ID'||'|'||
'SI_FLOW_PAY.NOSTRO'||'|'||
'SI_FLOW_PAY.SETT_METHOD'||'|'||
'SI_FLOW_PAY.CPTY_AGENT'||'|'||
'SI_FLOW_REC.SSI_ID'||'|'||
'SI_FLOW_REC.NOSTRO'||'|'||
'SI_FLOW_REC.SETT_METHOD'||'|'||
'SI_FLOW_REC.CPTY_AGENT'||'|'||
'MAIN_LEG.SPOT_MARGIN_POINTS'||'|'||
'MAIN_LEG.MARKET_SPOT_RATE'
FROM DUAL
UNION ALL
select
TO_CHAR(
TRIM(RESPONSE)||'|'||
TRIM(PRODUCT_TYPE)||'|'||
TRIM(DEAL_DATE)||'|'||
TRIM(DEAL_IDENTIFIER)||'|'||
TRIM(TRADING_BOOK)||'|'||
TRIM(MAIN_LEG_SPOT_TRD_BOOK)||'|'||
TRIM(SUBTYPE)||'|'||
TRIM(DEPT_NAME)||'|'||
TRIM(ACCOUNTING_CODE)||'|'||
TRIM(ENTITY_NAME)||'|'||
TRIM(MAIN_LEG_SPOT_RISK_ENTITY)||'|'||
TRIM(MAIN_LEG_CPTY)||'|'||
TRIM(MAIN_LEG_CCY_PAIR)||'|'||
TRIM(SPOT_RISK_CCY)||'|'||
TRIM(DCO_CURRENCY)||'|'||
TRIM(MAIN_LEG_FX_BUY_SELL)||'|'||
TRIM(MAIN_LEG_CCY_ONE_AMOUNT)||'|'||
TRIM(MAIN_LEG_CUSTOMER_SPOT_RATE)||'|'||
TRIM(MAIN_LEG_CCY_TWO_AMOUNT)||'|'||
TRIM(MAIN_LEG_VALUE_DATE_ONE)||'|'||
TRIM(MEMO_FIELD_1)||'|'||
TRIM(CONFIRM_METHOD)||'|'||
TRIM(SI_FLOW_PAY_SSI_ID)||'|'||
TRIM(SI_FLOW_PAY_NOSTRO)||'|'||
TRIM(SI_FLOW_PAY_SETT_METHOD)||'|'||
TRIM(SI_FLOW_PAY_CPTY_AGENT)||'|'||
TRIM(SI_FLOW_REC_SSI_ID)||'|'||
TRIM(SI_FLOW_REC_NOSTRO)||'|'||
TRIM(SI_FLOW_REC_SETT_METHOD)||'|'||
TRIM(SI_FLOW_REC_CPTY_AGENT)||'|'||
TRIM('')||'|'||--SPOT_MARGIN_POINTS
TRIM(MAIN_LEG_MARKET_SPOT_RATE)
)
from FX_SPOT_DEALS_O_TABLE  where trim(SUBTYPE) ='CORP';
exit; 

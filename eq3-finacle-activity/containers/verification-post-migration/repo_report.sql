========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
repo_report.sql 
select
D.DEALNO OPICS_DEALNO, FIN_REPO.DEAL_IDENTIFIER FINACLE_DEAL_IDENTIFIER, CASE WHEN TRIM(D.DEALNO) = TRIM(FIN_REPO.DEAL_IDENTIFIER) THEN 'TRUE' ELSE 'FALSE' END MATCH_DEALNO,
D.PORT OPICS_PORT,SDTRBK.NAME FINACLE_TRADING_BOOK,
D.BR OPICS_BR,SDENT.NAME FINACLE_ENTITY_NAME,
D.PORT OPICS_PORT,SDSBTY.NAME FINACLE_SUBTYPE,
C.CMNE OPICS_CMNE,SDCP.MNEMONIC FINACLE_COUNTERPARTY_STRING,CASE WHEN TRIM(C.CMNE) = TRIM(SDCP.MNEMONIC) THEN 'TRUE' ELSE 'FALSE' END MATCH_COUNTERPARTY_STRING,
D.DEALDATE OPICS_DEALDATE,FIN_REPO.DEAL_DATE FINACLE_DEAL_DATE ,CASE WHEN D.DEALDATE = FIN_REPO.DEAL_DATE THEN 'TRUE' ELSE 'FALSE' END MATCH_DEALDATE,
D.VDATE OPICS_VDATE , FIN_REPO.START_DATE FINACLE_START_DATE,CASE WHEN D.VDATE =  FIN_REPO.START_DATE THEN 'TRUE' ELSE 'FALSE' END MATCH_START_DATE,
R.MDATE OPICS_MDATE,FIN_REPO.END_DATE FINACLE_END_DATE,CASE WHEN R.MDATE = FIN_REPO.END_DATE THEN 'TRUE' ELSE 'FALSE' END MATCH_END_DATE,
D.PS OPICS_PS , LONG_OR_SHORT FINACLE_LONG_OR_SHORT,
D.PS OPICS_PS,D.RATECODE OPICS_RATECODE,TYPE_STRING FINACLE_TYPE_STRING ,--***
D.CCY OPICS_CCY,FIN_REPO.CURRENCY_LIST FINACLE_CURRENCY_LIST,
R.PROCEEDAMT OPICS_PROCEEDAMT,TTCMFL.NOTIONAL_AMOUNT_VALUE FINACLE_NOTIONAL_AMOUNT_VALUE,
D.BASIS OPICS_BASIS,TTCMFL.BASIS_CODE OPICS_BASIS_CODE,
D.REPORATE_8 OPICS_REPORATE_8 ,TTCMFL.FIX_RATE*100 FINACLE_FIX_RATE,--SIDE_SIDE_ONE_FIX_RATE,--***
C.BIC OPICS_BIC,FIN_REPO.CONFIRM_METHOD--,
FROM  RPRH D 
LEFT JOIN CUST C ON TRIM(D.CNO)=TRIM(C.CNO)
LEFT JOIN RPDT R ON TRIM(D.DEALNO)=TRIM(R.DEALNO)
LEFT JOIN FTABKBPD.TT_COM_LOAN@FTFC FIN_REPO ON TRIM(D.DEALNO) = TRIM(FIN_REPO.DEAL_IDENTIFIER) AND SUBTYPE_FBO_ID_NUM IN (SELECT FBO_ID_NUM FROM FTABKBPD.SD_SUBTYPE@FTFC WHERE TRIM(DESCRIPTION) IN ('REPO deal with Banks','REPO deal with Central Banks'))
LEFT JOIN FTABKBPD.SD_TRADING_BOOK@FTFC SDTRBK ON SDTRBK.FBO_ID_NUM = FIN_REPO.TRADING_BOOK_FBO_ID_NUM
LEFT JOIN FTABKBPD.SD_ENTITY@FTFC SDENT ON SDENT.FBO_ID_NUM = FIN_REPO.ENTITY_FBO_ID_NUM
LEFT JOIN FTABKBPD.SD_SUBTYPE@FTFC SDSBTY ON SDSBTY.FBO_ID_NUM = FIN_REPO.SUBTYPE_FBO_ID_NUM
LEFT JOIN FTABKBPD.SD_CPTY@FTFC SDCP ON SDCP.FBO_ID_NUM= FIN_REPO.CPTY_FBO_ID_NUM
LEFT JOIN FTABKBPD.TT_CMLOAN_CASH_FLOWS@FTFC TTCMFL ON TTCMFL.PARENT_FBO_ID_NUM = FIN_REPO.DEAL_NUM  AND TTCMFL.FIX_RATE IS NOT NULL
WHERE R.MDATE>TO_DATE(get_param('EOD_DATE'),'DD-MM-YYYY') AND TRIM(R.REVDATE) IS NULL 
;




select
D.DEALNO ||'-'||trim(D.PORT)||'-'||TRIM(D.BR)||'-'||TRIM(D.PORT)||'-'||trim(CMNE)||'-'||DEALDATE||'-'||D.VDATE||'-'||D.MATDATE||'-'||D.PS||'-'||D.CCY||'-'||R.COMMPROCAMT||'-'||
D.BASIS||'-'||D.REPORATE_8 OPICS_DATA,
D.DEALNO ||'-'||CASE WHEN trim(D.PORT)='MMBK' THEN 'CORPORATE' ELSE 'INTERBANK' END||'-'||CASE WHEN TRIM(D.BR)='51' THEN 'ABKUAE' ELSE 'ABKKWT' END||'-'||
trim(CMNE)||'-'||DEALDATE||'-'||D.VDATE||'-'||D.MATDATE||'-'||CASE WHEN D.PS='S' THEN 'S' ELSE 'L' END||'-'||D.CCY||'-'||R.COMMPROCAMT||'-'||SUBSTR(D.BASIS,1,1)||'/'||SUBSTR(D.BASIS,2)||'-'||
D.REPORATE_8 CONV_OPICS_DATA,
FIN_REPO.DEAL_IDENTIFIER||'-'||SDTRBK.NAME||'-'||SDENT.NAME||'-'||SDCP.NAME||'-'||FIN_REPO.DEAL_DATE||'-'||FIN_REPO.START_DATE||'-'||FIN_REPO.END_DATE||'-'||LONG_OR_SHORT||'-'||
FIN_REPO.CURRENCY_LIST||'-'||ABS(TTCMFL.NOTIONAL_AMOUNT_VALUE)||'-'||TTCMFL.BASIS_CODE||'-'||TTCMFL.SETTLEMENT_RATE*100 FIN_DATA,
CASE WHEN D.DEALNO ||'-'||CASE WHEN trim(D.PORT)='MMBK' THEN 'CORPORATE' ELSE 'INTERBANK' END||'-'||CASE WHEN TRIM(D.BR)='51' THEN 'ABKUAE' ELSE 'ABKKWT' END||'-'||
trim(CMNE)||'-'||DEALDATE||'-'||D.VDATE||'-'||D.MATDATE||'-'||CASE WHEN D.PS='S' THEN 'S' ELSE 'L' END||'-'||D.CCY||'-'||R.COMMPROCAMT||'-'||SUBSTR(D.BASIS,1,1)||'/'||SUBSTR(D.BASIS,2)||'-'||
D.REPORATE_8= FIN_REPO.DEAL_IDENTIFIER||'-'||SDTRBK.NAME||'-'||SDENT.NAME||'-'||SDCP.NAME||'-'||FIN_REPO.DEAL_DATE||'-'||FIN_REPO.START_DATE||'-'||FIN_REPO.END_DATE||'-'||LONG_OR_SHORT||'-'||
FIN_REPO.CURRENCY_LIST||'-'||ABS(TTCMFL.NOTIONAL_AMOUNT_VALUE)||'-'||TTCMFL.BASIS_CODE||'-'||TTCMFL.SETTLEMENT_RATE*100THEN 'TRUE' ELSE 'FALSE' END MATCH_DATA
FROM  RPRH D 
LEFT JOIN CUST C ON TRIM(D.CNO)=TRIM(C.CNO)
LEFT JOIN RPDT R ON TRIM(D.DEALNO)=TRIM(R.DEALNO)
LEFT JOIN TT_COM_LOAN@FTMIG FIN_REPO ON TRIM(D.DEALNO) = TRIM(FIN_REPO.DEAL_IDENTIFIER) AND SUBTYPE_FBO_ID_NUM IN (SELECT FBO_ID_NUM FROM SD_SUBTYPE@FTMIG WHERE TRIM(DESCRIPTION) IN ('REPO deal with Banks','REPO deal with Central Banks'))
LEFT JOIN SD_TRADING_BOOK@FTMIG SDTRBK ON SDTRBK.FBO_ID_NUM = FIN_REPO.TRADING_BOOK_FBO_ID_NUM
LEFT JOIN SD_ENTITY@FTMIG SDENT ON SDENT.FBO_ID_NUM = FIN_REPO.ENTITY_FBO_ID_NUM
LEFT JOIN SD_SUBTYPE@FTMIG SDSBTY ON SDSBTY.FBO_ID_NUM = FIN_REPO.SUBTYPE_FBO_ID_NUM
LEFT JOIN SD_CPTY@FTMIG SDCP ON SDCP.FBO_ID_NUM= FIN_REPO.CPTY_FBO_ID_NUM
LEFT JOIN TT_CMLOAN_CASH_FLOWS@FTMIG TTCMFL ON TTCMFL.PARENT_FBO_ID_NUM = FIN_REPO.DEAL_NUM  AND TTCMFL.FIX_RATE IS NOT NULL
WHERE R.MDATE>TO_DATE(get_param('EOD_DATE'),'DD-MM-YYYY') AND TRIM(R.REVDATE) IS NULL 
;
 

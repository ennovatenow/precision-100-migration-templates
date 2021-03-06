--CORPORATE

SELECT BORROWER_NAME, NODE_LEVEL, LIMIT_PREFIX, LIMIT_SUFFIX,C.GROUP_NAME ENTITY_GROUP_NAME, LIMIT_DESC, CRNCY_CODE, PARENT_LIMIT_PREFIX, PARENT_LIMIT_SUFFIX, B.GROUP_NAME PARENT_ENTITY_GROUP_NAME, 
SANCTION_LIMIT, DRAWING_POWER_IND, LIMIT_APPROVAL_DATE, LIMIT_EXPIRY_DATE, LIMIT_REVIEW_DATE, APPROVAL_AUTH_CODE, APPROVAL_LEVEL,
 LIMIT_APPROVAL_REF, NOTES, TERMS_AND_CONDITIONS, LIMIT_TYPE, LOAN_TYPE, MASTER_LIMIT_NODE, MIN_COLL_VALUE_BASED_ON, DRWNG_POWER_PCNT,
  PATTERN_OF_FUNDING, DEBIT_ACCOUNT_FOR_FEES, COMMITTED_LINES, CONTRACT_SIGN_DATE, UPLOAD_STATUS, COND_PRECEDENT_FLG, GLOBAL_LIMIT_FLG,
   MAIN_PRODUCT_TYPE, PROJECT_NAME, PRODUCT_NAME, PURPOSE_OF_LIMIT, BANK_ID FROM LIMIT_CORE_O_TABLE A
LEFT JOIN GROUP_MASTER_O_TABLE B ON TRIM(A.PARENT_LIMIT_PREFIX)=TRIM(B.GROUP_ID)
LEFT JOIN GROUP_MASTER_O_TABLE C ON TRIM(A.LIMIT_PREFIX)=TRIM(C.GROUP_ID)
WHERE  EXISTS( SELECT 1 FROM(
select DISTINCT TO_CHAR(FIN_CIF_ID) LIMIT_PREFIX from gfpf INNER JOIN MAP_CIF ON TRIM(MAP_CIF.GFCLC)||TRIM(MAP_CIF.GFCUS) = TRIM(gfpf.GFCLC)||TRIM(gfpf.GFCUS) where (to_number(TRIM(GFACO)) < 300 OR  to_number(TRIM(GFACO)) > 399 OR TRIM(GFACO) IS NULL) and TRIM(GFACO)!='450'
UNION
SELECT DISTINCT TO_CHAR(PARENT_LIMIT_PREFIX) FROM LIMIT_CORE_O_TABLE WHERE PARENT_LIMIT_PREFIX IS NOT NULL AND NODE_LEVEL IN('3') AND 
LIMIT_PREFIX IN(select DISTINCT FIN_CIF_ID from gfpf INNER JOIN MAP_CIF ON TRIM(MAP_CIF.GFCLC)||TRIM(MAP_CIF.GFCUS) = TRIM(gfpf.GFCLC)||TRIM(gfpf.GFCUS) where (to_number(TRIM(GFACO)) < 300 OR  to_number(TRIM(GFACO)) > 399 OR TRIM(GFACO) IS NULL) and TRIM(GFACO)!='450')
UNION
SELECT TO_CHAR(PARENT_LIMIT_PREFIX) FROM LIMIT_CORE_O_TABLE WHERE PARENT_LIMIT_PREFIX IS NOT NULL AND NODE_LEVEL IN('2') AND 
LIMIT_PREFIX IN(SELECT PARENT_LIMIT_PREFIX FROM LIMIT_CORE_O_TABLE WHERE PARENT_LIMIT_PREFIX IS NOT NULL AND NODE_LEVEL IN('3') 
AND LIMIT_PREFIX IN(select DISTINCT FIN_CIF_ID from gfpf INNER JOIN MAP_CIF ON TRIM(MAP_CIF.GFCLC)||TRIM(MAP_CIF.GFCUS) = TRIM(gfpf.GFCLC)||TRIM(gfpf.GFCUS) where (to_number(TRIM(GFACO)) < 300 OR  to_number(TRIM(GFACO)) > 399 OR TRIM(GFACO) IS NULL) and TRIM(GFACO)!='450'))
) B WHERE B.LIMIT_PREFIX =  a.LIMIT_PREFIX
);

--BANK
SELECT BORROWER_NAME, NODE_LEVEL, LIMIT_PREFIX, LIMIT_SUFFIX,C.REPORTING_GROUP_ID ENTITY_GROUP_NAME, LIMIT_DESC, CRNCY_CODE, PARENT_LIMIT_PREFIX, PARENT_LIMIT_SUFFIX, B.REPORTING_GROUP_ID PARENT_ENTITY_GROUP_NAME, 
SANCTION_LIMIT, DRAWING_POWER_IND, LIMIT_APPROVAL_DATE, LIMIT_EXPIRY_DATE, LIMIT_REVIEW_DATE, APPROVAL_AUTH_CODE, APPROVAL_LEVEL,
 LIMIT_APPROVAL_REF, NOTES, TERMS_AND_CONDITIONS, LIMIT_TYPE, LOAN_TYPE, MASTER_LIMIT_NODE, MIN_COLL_VALUE_BASED_ON, DRWNG_POWER_PCNT,
  PATTERN_OF_FUNDING, DEBIT_ACCOUNT_FOR_FEES, COMMITTED_LINES, CONTRACT_SIGN_DATE, UPLOAD_STATUS, COND_PRECEDENT_FLG, GLOBAL_LIMIT_FLG,
   MAIN_PRODUCT_TYPE, PROJECT_NAME, PRODUCT_NAME, PURPOSE_OF_LIMIT, BANK_ID FROM LIMIT_CORE_O_TABLE A
LEFT JOIN GROUP_MASTER_O_TABLE B ON TRIM(A.PARENT_LIMIT_PREFIX)=TRIM(B.GROUP_ID)
LEFT JOIN GROUP_MASTER_O_TABLE C ON TRIM(A.LIMIT_PREFIX)=TRIM(C.GROUP_ID)
WHERE not EXISTS( SELECT 1 FROM(
select DISTINCT TO_CHAR(FIN_CIF_ID) LIMIT_PREFIX from gfpf INNER JOIN MAP_CIF ON TRIM(MAP_CIF.GFCLC)||TRIM(MAP_CIF.GFCUS) = TRIM(gfpf.GFCLC)||TRIM(gfpf.GFCUS) where (to_number(TRIM(GFACO)) < 300 OR  to_number(TRIM(GFACO)) > 399 OR TRIM(GFACO) IS NULL) and TRIM(GFACO)!='450'
UNION
SELECT DISTINCT TO_CHAR(PARENT_LIMIT_PREFIX) FROM LIMIT_CORE_O_TABLE WHERE PARENT_LIMIT_PREFIX IS NOT NULL AND NODE_LEVEL IN('3') AND 
LIMIT_PREFIX IN(select DISTINCT FIN_CIF_ID from gfpf INNER JOIN MAP_CIF ON TRIM(MAP_CIF.GFCLC)||TRIM(MAP_CIF.GFCUS) = TRIM(gfpf.GFCLC)||TRIM(gfpf.GFCUS) where (to_number(TRIM(GFACO)) < 300 OR  to_number(TRIM(GFACO)) > 399 OR TRIM(GFACO) IS NULL) and TRIM(GFACO)!='450')
UNION
SELECT TO_CHAR(PARENT_LIMIT_PREFIX) FROM LIMIT_CORE_O_TABLE WHERE PARENT_LIMIT_PREFIX IS NOT NULL AND NODE_LEVEL IN('2') AND 
LIMIT_PREFIX IN(SELECT PARENT_LIMIT_PREFIX FROM LIMIT_CORE_O_TABLE WHERE PARENT_LIMIT_PREFIX IS NOT NULL AND NODE_LEVEL IN('3') 
AND LIMIT_PREFIX IN(select DISTINCT FIN_CIF_ID from gfpf INNER JOIN MAP_CIF ON TRIM(MAP_CIF.GFCLC)||TRIM(MAP_CIF.GFCUS) = TRIM(gfpf.GFCLC)||TRIM(gfpf.GFCUS) where (to_number(TRIM(GFACO)) < 300 OR  to_number(TRIM(GFACO)) > 399 OR TRIM(GFACO) IS NULL) and TRIM(GFACO)!='450'))
) B WHERE B.LIMIT_PREFIX =  a.LIMIT_PREFIX
);

--GROUP HOUSE HOLD
select ORGKEY cif_id,GROUPHOUSEHOLDCODE reporting_group_id,GROUPHOUSEHOLDNAME entity_or_group_name,a.GROUP_ID entity_or_group_id,LOCALETEXT GROUP_TYPE  from CU9CORP_O_TABLE a
left join GROUP_MASTER_O_TABLE b on a.GROUP_ID =b.group_id
left join (select value ,LOCALETEXT from CRMUSER.CATEGORIES a,CRMUSER.CATEGORY_LANG b where CATEGORYTYPE ='CIFGROUP_TYPE' and a.categoryid=b.categoryid and a.bank_id='01') c on trim(GROUP_TYPE) = trim(c.value);

--LIMIT LINKAGE

select * from LIMIT_LINKAGE_TO_ACCT_O_TABLE;
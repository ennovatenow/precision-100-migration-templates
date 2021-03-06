SELECT A.ORGKEY LEG_CIF_ID,C.ORGKEY FIN_CIF_ID,CASE WHEN A.ORGKEY = C.ORGKEY THEN 'TRUE' ELSE 'FALSE' END MATCH_CIF_ID,
GROUPHOUSEHOLDCODE LEG_REPORTING_GROUP_ID,GROUPNAME_NATIVE FIN_REPORTING_GROUP_ID,CASE WHEN GROUPHOUSEHOLDCODE = GROUPNAME_NATIVE THEN 'TRUE' ELSE 'FALSE' END MATCH_REPORTING_GROUP_ID,
GROUPHOUSEHOLDNAME LEG_ENTITY_OR_GROUP_NAME,GROUPNAME FIN_ENTITY_OR_GROUP_NAME,CASE WHEN TRIM(GROUPHOUSEHOLDNAME) = TRIM(GROUPNAME) THEN 'TRUE' ELSE 'FALSE' END MATCH_ENTITY_OR_GROUP_NAME,
A.GROUP_ID LEG_ENTITY_OR_GROUP_ID,C.GROUP_ID FIN_ENTITY_OR_GROUP_ID,CASE WHEN A.GROUP_ID = C.GROUP_ID THEN 'TRUE' ELSE 'FALSE' END MATCH_ENTITY_OR_GROUP_ID,
D.LOCALETEXT LEG_GROUP_TYPE,C.GROUPTYPE FIN_GROUP_TYPE,CASE WHEN D.LOCALETEXT = C.GROUPTYPE THEN 'TRUE' ELSE 'FALSE' END MATCH_GROUP_TYPE  FROM CU9CORP_O_TABLE A
LEFT JOIN GROUP_MASTER_O_TABLE B ON A.GROUP_ID =B.GROUP_ID
LEFT JOIN (SELECT VALUE ,LOCALETEXT FROM CRMUSER.CATEGORIES A,CRMUSER.CATEGORY_LANG B WHERE CATEGORYTYPE ='CIFGROUP_TYPE' AND A.CATEGORYID=B.CATEGORYID AND A.BANK_ID='01') D ON TRIM(GROUP_TYPE) = TRIM(D.VALUE)
LEFT JOIN (SELECT ORGKEY,GROUPNAME_NATIVE,GROUPNAME,GROUP_ID,LOCALETEXT GROUPTYPE FROM CRMUSER.GROUPHOUSEHOLD A
LEFT JOIN CRMUSER.CIFGROUPS B ON A.GROUP_ID=B.GROUPID
LEFT JOIN (SELECT VALUE ,LOCALETEXT FROM CRMUSER.CATEGORIES A,CRMUSER.CATEGORY_LANG B WHERE CATEGORYTYPE ='CIFGROUP_TYPE' AND A.CATEGORYID=B.CATEGORYID AND A.BANK_ID='01') C ON TRIM(GROUPTYPE) = TRIM(C.VALUE)
WHERE A.BANK_ID='01' AND B.BANK_ID='01') C ON A.ORGKEY =  C.ORGKEY AND A.GROUP_ID = C.GROUP_ID 

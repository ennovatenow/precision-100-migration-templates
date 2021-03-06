========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
Retail_InternetUserReport.sql 
select DISTINCT
--LPAD(E_BANKING_REC_SEQ.NEXTVAL,5,'0') REC_NUM,
       O.CUSTOMER_NO LEG_CUST_ID,FIN_IU.CUST_ID FIN_CUST_ID,CASE WHEN O.CUSTOMER_NO = FIN_IU.CUST_ID THEN 'TRUE' ELSE 'FALSE' END MATCH_CUSTOMER_NO ,
        O.USERID LEG_USERID,FIN_IU.USER_ID FIN_USER_ID,CASE WHEN O.USERID = FIN_IU.USER_ID THEN 'TRUE' ELSE 'FALSE' END MATCH_USERID ,
   --    CASE WHEN LENGTH(REPLACE(A.SALUTATION,'','.'))=1 THEN CONVERT_CODES('ALPHABET','Y') ELSE TO_CHAR(A.SALUTATION) END SALUTATION,FIN_IU.SALUTATION,
   --    CASE WHEN LENGTH(REPLACE(A.CUST_LAST_NAME,'','.'))=1 THEN CONVERT_CODES('ALPHABET','Y') ELSE TO_CHAR(A.CUST_LAST_NAME) END C_L_NAME,FIN_IU.C_L_NAME,
   --    CASE WHEN LENGTH(REPLACE(NVL(A.CUST_MIDDLE_NAME,' '),'','.'))=1 THEN CONVERT_CODES('ALPHABET','Y') ELSE TO_CHAR(A.CUST_MIDDLE_NAME) END C_M_NAME,FIN_IU.C_M_NAME,
   --    CASE WHEN LENGTH(REPLACE(A.CUST_FIRST_NAME,'','.'))=1 THEN CONVERT_CODES('ALPHABET','Y') ELSE TO_CHAR(A.CUST_FIRST_NAME) END C_F_NAME,FIN_IU.C_F_NAME,
       O.email LEG_C_EMAIL_ID ,FIN_IU.C_EMAIL_ID FIN_C_EMAIL_ID,CASE WHEN O.email = FIN_IU.C_EMAIL_ID THEN 'TRUE' ELSE 'FALSE' END MATCH_C_EMAIL_ID ,
       TRIM(A.ADDRESS_LINE1)LEG_C_ADDR1,FIN_IU.C_ADDR1 FIN_C_ADDR1,CASE WHEN TRIM(A.ADDRESS_LINE1) = FIN_IU.C_ADDR1 THEN 'TRUE' ELSE 'FALSE' END MATCH_ADDRESS_LINE1 ,
       A.ADDRESS_LINE2 LEG_ADDRESS_LINE2,FIN_IU.C_ADDR2 FIN_C_ADDR2,CASE WHEN TRIM(A.ADDRESS_LINE2) = FIN_IU.C_ADDR2 THEN 'TRUE' ELSE 'FALSE' END MATCH_ADDRESS_LINE2 ,
       A.ADDRESS_LINE3 LEG_ADDRESS_LINE3,FIN_IU.C_ADDR3 FIN_C_ADDR3,CASE WHEN TRIM(A.ADDRESS_LINE3) = FIN_IU.C_ADDR3 THEN 'TRUE' ELSE 'FALSE' END MATCH_ADDRESS_LINE3 ,
    --   A.PHONE C_PHONE_NO,FIN_IU.C_PHONE_NO,CASE WHEN TRIM(A.PHONE) = FIN_IU.C_PHONE_NO THEN 'TRUE' ELSE 'FALSE' END MATCH_C_PHONE_NO ,
       A.GENDER LEG_GENDER,FIN_IU.C_GENDER FIN_C_GENDER,CASE WHEN TRIM(A.GENDER) = FIN_IU.C_GENDER THEN 'TRUE' ELSE 'FALSE' END MATCH_C_GENDER ,
       A.CUST_dob LEG_DATE_OF_BIRTH,FIN_IU.DATE_OF_BIRTH FIN_DATE_OF_BIRTH,CASE WHEN TRIM(A.CUST_dob) = FIN_IU.DATE_OF_BIRTH THEN 'TRUE' ELSE 'FALSE' END MATCH_DATE_OF_BIRTH ,
       A.NAT_ID_CARD_NUM LEG_PAN_NATIONAL_ID,FIN_IU.PAN_NATIONAL_ID FIN_PAN_NATIONAL_ID,CASE WHEN TRIM(A.NAT_ID_CARD_NUM) = FIN_IU.PAN_NATIONAL_ID THEN 'TRUE' ELSE 'FALSE' END MATCH_PAN_NATIONAL_ID,
      -- SUBSTR(O.USERID ,1,32) PRINCIPAL_ID,CU.PRINCIPAL_ID,
      -- SUBSTR(O.USERID ,1,32) BAY_USER_ID,CU.BAY_USER_ID,
       TRIM(O.LANGUAGE) LEG_LANGUAGE ,FIN_IU.LANG_ID FIN_LANG_ID
FROM       
 (SELECT A.CUSTOMER_NO,U.USERID,A.email,U.LANGUAGE,U.CIVILID,A.STATUS FROM ONLINE_BANK_CUST_DTLS A
    INNER JOIN( SELECT CUSTOMER_NO,MAX (TO_DATE (SUBSTR (LASTLOG_DATE, 1, 19),'YYYY-MM-DD HH24:MI:SS'))MAX_LASTLOG_DATE
            FROM ONLINE_BANK_CUST_DTLS GROUP BY CUSTOMER_NO) B
          ON A.CUSTOMER_NO = B.CUSTOMER_NO
             AND TO_DATE (SUBSTR (A.LASTLOG_DATE, 1, 19),  'YYYY-MM-DD HH24:MI:SS') = B.MAX_LASTLOG_DATE
    INNER JOIN (SELECT * FROM USERS WHERE DELETEFLAG = '0' AND STATUS = 'A') U ON A.CUSTOMER_NO = U.CUSTOMERNO AND A.USER_ID=U.USERID
 WHERE  A.STATUS='A' or ( A.STATUS='D' and to_date(substr(LASTLOG_DATE,1,19),'YYYY-MM-DD HH24:MI:SS') > to_date('2015-09-26 09:48:36','YYYY-MM-DD HH24:MI:SS' ))) O
LEFT JOIN map_cif M ON SUBSTR (M.fin_cif_id, 2, 10) = SUBSTR (O.CUSTOMER_NO, 2, 10) and individual = 'Y'
LEFT JOIN CRMUSER.ACCOUNTS A ON A.ORGKEY = M.fin_cif_id  and  a.bank_id = get_param ('BANK_ID')
LEFT JOIN (SELECT DISTINCT FIN_CUSR.* FROM ECECUSER.CUSR@EBUAT_DBLINK FIN_CUSR
inner JOIN ECECUSER.CSIP@EBUAT_DBLINK FIN_CSIP ON FIN_CSIP.INDIVIDUAL_ID = FIN_CUSR.INDIVIDUAL_ID  
WHERE FIN_CSIP.CHANNEL_ID='I' and FIN_CUSR.DB_TS='1' AND FIN_CUSR.DB_TS='1' and FIN_CSIP.DB_TS='1'  AND FIN_CUSR.BANK_ID='01' and USER_ID not like 'SMS%'-- AND FIN_CSIP.DEL_FLG='N'
) FIN_IU ON trim(O.CUSTOMER_NO) = trim(FIN_IU.CUST_ID)--  AND FIN_IU.USER_ID = TRIM(O.USERID)

select 
a.CUST_ID LEG_CIF_ID,b.CUST_ID FIN_CIF_ID,case when NVL(a.CUST_ID,' ') = NVL(b.CUST_ID,' ') then 'TRUE' ELSE 'FALSE' END MATCH_CIF_ID, 
a.CORP_USER LEG_USER_ID,b.USER_ID FIN_USER_ID,case when upper(NVL(trim(a.CORP_USER),' ')) = NVL(b.USER_ID,' ') then 'TRUE' ELSE 'FALSE' END MATCH_USER_ID,
a.C_L_NAME LEG_LAST_NAME,b.C_L_NAME FIN_LAST_NAME ,case when NVL(a.C_L_NAME,' ') = NVL(b.C_L_NAME,' ') then 'TRUE' ELSE 'FALSE' END MATCH_LAST_NAME,
a.C_M_NAME LEG_MIDDLE_NAME,b.C_M_NAME FIN_MIDDLE_NAME,case when NVL(a.C_M_NAME,' ') = NVL(b.C_M_NAME,' ') then 'TRUE' ELSE 'FALSE' END MATCH_MIDDLE_NAME,
a.C_F_NAME LEG_FIRST_NAME,b.C_F_NAME FIN_FIRST_NAME,case when NVL(a.C_F_NAME ,' ')= NVL(b.C_F_NAME,' ') then 'TRUE' ELSE 'FALSE' END MATCH_FIRST_NAME,
a.C_EMAIL_ID LEG_EMAIL_ID,b.C_EMAIL_ID FIN_EMAIL_ID,case when NVL(a.C_EMAIL_ID,' ') = NVL(b.C_EMAIL_ID,' ') then 'TRUE' ELSE 'FALSE' END MATCH_EMAIL_ID,
a.C_ADDR1 LEG_ADDRESS1,b.C_ADDR1 FIN_ADDRESS1,case when NVL(a.C_ADDR1 ,' ')= NVL(b.C_ADDR1,' ') then 'TRUE' ELSE 'FALSE' END MATCH_ADDRESS1,
a.C_ADDR2 LEG_ADDRESS2,b.C_ADDR2 FIN_ADDRESS2,case when NVL(a.C_ADDR2,' ') = NVL(b.C_ADDR2,' ') then 'TRUE' ELSE 'FALSE' END MATCH_ADDRESS2,
a.C_GENDER LEG_GENDER,b.C_GENDER FIN_GENDER,case when NVL(a.C_GENDER,' ') = NVL(b.C_GENDER,' ') then 'TRUE' ELSE 'FALSE' END MATCH_GENDER,
--a.DATE_OF_BIRTH LEG_DATE_OF_BIRTH,b.DATE_OF_BIRTH FIN_DATE_OF_BIRTH,case when NVL(a.DATE_OF_BIRTH,sysdate) = NVL(b.DATE_OF_BIRTH,sysdate) then 'TRUE' ELSE 'FALSE' END MATCH_DATE_OF_BIRTH,
a.PAN_NATIONAL_ID LEG_CIVIL_ID,b.PAN_NATIONAL_ID FIN_CIVIL_ID,case when NVL(a.PAN_NATIONAL_ID,' ') = NVL(b.PAN_NATIONAL_ID,' ') then 'TRUE' ELSE 'FALSE' END MATCH_CIVIL_ID
 from SMS_AND_E_BANKING_USER_O_TABLE A
LEFT JOIN (
SELECT DISTINCT * FROM ECECUSER.CUSR@DBREAD_USER FIN_CUSR
inner JOIN ECECUSER.CSIP@DBREAD_USER FIN_CSIP ON FIN_CSIP.INDIVIDUAL_ID = FIN_CUSR.INDIVIDUAL_ID  
WHERE FIN_CSIP.CHANNEL_ID='I' and FIN_CUSR.DB_TS='1' AND FIN_CUSR.DB_TS='1' and FIN_CSIP.DB_TS='1'  AND FIN_CUSR.BANK_ID='01' and USER_ID not like 'SMS%'-- AND FIN_CSIP.DEL_FLG='N'
) B ON A.CUST_ID = B.CUST_ID 

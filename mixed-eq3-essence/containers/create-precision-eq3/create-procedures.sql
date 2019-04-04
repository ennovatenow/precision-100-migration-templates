CREATE OR REPLACE FUNCTION EQ3_TO_ORACLE_DATE(inp_date IN VARCHAR2) RETURN VARCHAR2 AS
  out_date VARCHAR2(10);
  v_temp_date VARCHAR2(10);
BEGIN
  BEGIN
    v_temp_date := to_char(to_number(inp_date));
  EXCEPTION
    WHEN VALUE_ERROR THEN
      v_temp_date := '';
    WHEN OTHERS THEN
      v_temp_date := '';
  END;

  IF length(v_temp_date)= 6 THEN 
    out_date := '19'||substr(v_temp_date,1,2)||'-'||substr(v_temp_date,3,2)||'-'||substr(v_temp_date,5,2);
  ELSE
    IF substr(v_temp_date,1,1) = 0 THEN 
      out_date := '19'||substr(v_temp_date,2,2)||'-'||substr(v_temp_date,4,2)||'-'||substr(v_temp_date,6,2);
    ELSE
      out_date := '20'||substr(v_temp_date,2,2)||'-'||substr(v_temp_date,4,2)||'-'||substr(v_temp_date,6,2);
    END IF;
  END IF;

  IF ((v_temp_date = '000000') OR (v_temp_date = '0') OR (trim(v_temp_date) = '') OR v_temp_date is null) OR (v_temp_date = '9999999') OR (length(v_temp_date) <6 ) THEN
    out_date := NULL;
  END IF;

  RETURN (out_date);

END EQ3_TO_ORACLE_DATE;
/
CREATE OR REPLACE FUNCTION CONVERT_CODES(
   CODE_TYPE_IN IN NVARCHAR2 ,  
   LEGACY_CODE_IN IN NVARCHAR2
  ) RETURN NVARCHAR2 IS
    FIN_CODE_RET NVARCHAR2(100);
    DEF_FIN_CODE_RET NVARCHAR2(100) := '';
BEGIN
   SELECT DEST_CODE 
   INTO   DEF_FIN_CODE_RET 
   FROM   MAP_CODES 
   WHERE  CODE_TYPE = CODE_TYPE_IN 
   AND    IS_DEFAULT = 'Y';

   SELECT DEST_CODE 
   INTO   FIN_CODE_RET 
   FROM   MAP_CODES 
   WHERE  CODE_TYPE = CODE_TYPE_IN 
   AND    LEG_CODE = LEGACY_CODE_IN;

   RETURN FIN_CODE_RET;
EXCEPTION
   WHEN NO_DATA_FOUND THEN
      RETURN DEF_FIN_CODE_RET;
END CONVERT_CODES;
/

/*
** Here we collect all the records which do not match the default values?
** Simple validation list 
** v_party_common
** Length(column) > max_length
** column_value <> default value
** mandatory column is null or space
** colum value <> list
**
*/ 
INSERT INTO V_PARTY_COMMON 
-- PartyType has validation of type list
SELECT 'Invalid Party Type', COUNT(1) FROM O_PARTY_COMMON WHERE (PARTYTYPE <> '1062' AND PARTYTYPE <> '1063')
UNION
--SELECT 'Invalid Party Sub Type', COUNT(1) FROM O_PARTY_COMMON WHERE (PARTYSUBTYPE <> '1062' AND PARTYSUBTYPE <> '1063')
--UNION
SELECT 'Invalid Party Category', COUNT(1) FROM O_PARTY_COMMON WHERE (PARTYCATEGORY <> 'Full')
;



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
select 'Number of party migrated', count(*) from o_party_common
union all
select 'Mandatory value check(Empty)  - Party ID', count(*) from o_party_common where partyid is null
union all
select 'Mandatory value check(Empty)  - Party Type', count(*) from o_party_common where partytype is null
union all
select 'Mandatory value check(Empty)  - Party Sub Type', count(*) from o_party_common where PartySubType is null
union all
select 'Mandatory value check(Empty)  - Party Name', count(*) from o_party_common where PartyName is null
union all
select 'Mandatory value check(Empty)  - Short Name', count(*) from o_party_common where ShortName is null
union all
select 'Mandatory value check(Empty)  - Alpha Code', count(*) from o_party_common where AlphaCode is null
union all
select 'Mandatory value check(Empty)  - Branch Code', count(*) from o_party_common where BranchCode is null
union all
select 'Mandatory value check(Empty)  - Postal Code', count(*) from o_party_common where PostalCode is null
union all
select 'Mandatory value check(Empty)  - Is Consolidate Statement', count(*) from o_party_common where IsConsolidateStatement is null;

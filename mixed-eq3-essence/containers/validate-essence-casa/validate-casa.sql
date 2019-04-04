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
INSERT INTO V_CASA 
select 'Number of CASA accounts in Legacy', count(*) from o_casa
union all
select 'Number of ZERO  Cleared balance accounts', count(*) from o_casa where ClearedBalance  = 0
union all
select 'Number of NON-ZERO Cleared balance accounts', count(*) from o_casa where ClearedBalance <> 0
union all
select 'Number of Accounts with Debit Limits', count(*) from o_casa where DebitLimit <> 0
union all
select 'Number of dormant accounts', count(*) from o_casa where AccountStatus ='Dormant'
union all
select 'Number of blocked accounts', count(*) from o_casa where AccountStatus ='Stopped'
union all
select 'Number of Closed accounts', count(*) from o_casa where AccountStatus ='Closed'
union all
select 'Number of accounts with Blocked Balance', count(*) from o_casa where BlockedBalance <>0
;

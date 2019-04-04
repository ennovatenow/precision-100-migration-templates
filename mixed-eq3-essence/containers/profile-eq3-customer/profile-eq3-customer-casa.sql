CREATE OR REPLACE VIEW PR_EQ3_VOLUME ("TABLE_NAME", "RECORD_COUNT") AS
select 'Number of Customers in Legacy', count(*) from gfpf
union all
select 'Number of Customers for migration', count(*) from map_cif
union all
select 'Number of Addresses for migration', count(*) from sx20lf
union all
select 'Number of Phone Numbers for migation', count(*) from sx20lf where sxprim='6'
union all
select 'Number of customers with blank nationality', count(*) from gfpf where trim(gfcnap) is null
union all
select 'Number of customers with blank resident country', count(*) from gfpf where trim(GFCNAL) is null
union all
select 'Number of customers with blank risk country', count(*) from gfpf where trim(GFCNAR) is null
union all
select 'Number of customers addresses having special characters', count(*) from sx20lf where
SVNA1 || SVNA2 || SVNA3 like '%~%' or  SVNA1 || SVNA2 || SVNA3 like '%|%'
union all
select 'Number of customers addresses does not have ZIP codes', count(*) from sx20lf where
SX20LF.SVPZIP is null and  SXPRIM = 'P'
union all
select 'Number of customers with Gender not mentioned', count(*) from bgpf where trim(BG0008) is null
union all
select 'Number of customers did not have any identification document', count(*) from bgpf where trim(BG0002) is null


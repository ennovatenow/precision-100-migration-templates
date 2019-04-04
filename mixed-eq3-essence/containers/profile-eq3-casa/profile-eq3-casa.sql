CREATE OR REPLACE VIEW PR_EQ3_CASA_VOLUME ("TABLE_NAME", "RECORD_COUNT") AS
select 'Number of CASA accounts in Legacy', count(*) from scpf
union all
select 'Number of ZERO balance accounts', count(*) from scpf where scbal  = 0
union all
select 'Number of NON-ZERO balance accounts', count(*) from scpf where scbal <> 0
union all
select 'Number of Accounts with Limits', count(*) from scpf where scodl <> 0
union all
select 'Number of dormant accounts', count(*) from scpf where scai20 ='Y'
union all
select 'Number of blocked accounts', count(*) from scpf where scai17 ='Y'
union all
select 'Number of Closed accounts', count(*) from scpf where scai30 ='Y'
union all
select 'Number of accounts with Lien', count(*) from scpf where scrba <>0;

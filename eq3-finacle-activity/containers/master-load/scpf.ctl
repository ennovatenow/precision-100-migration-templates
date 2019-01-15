-- File Name		: SCPF.ctl

-- File Created for	: Control file for upload the Branch details Mster DaTa

-- Created By		: Ashok Kumar.S

-- Client		: ENBD

-- Created On		: 01-11-2011
-------------------------------------------------------------------

load data
CHARACTERSET WE8ISO8859P1
INFILE *
truncate into table SCPF
fields terminated by x'09'
TRAILING NULLCOLS
(
   SCAB,
   SCAN,
   SCAS,
   SCAPP,
   SCACS,
   SCAI46,
   SCAI47,
   SCBALL,
   SCBALP,
   SCBAL,
   SCSUM0,
   SCSUM1,
   SCSUM2,
   SCSUMD,
   SCSUMC,
   SCRBA,
   SCAIE6,
   SCSUMA,
   SCSHN,
   SCCTP,
   SCACT,
   SCACD,
   SCSAC,
   SCNANC,
   SCCNAL,
   SCCCY,
   SCCNAR,
   SCCNAP,
   SCAI35,
   SCAI36,
   SCAI66,
   SCAI71,
   SCAI72,
   SCAIA0,
   SCAIA1,
   SCAIA2,
   SCAIA3,
   SCAIB0,
   SCAIB1,
   SCAIB2,
   SCAIB3,
   SCAIB4,
   SCAIC5,
   SCAIE0,
   SCAIE4,
   SCAIF0,
   SCAIH2,
   SCAIF5,
   SCAIH1,
   SCAIH3,
   SCAIH5,
   SCAIH4,
   SCAI10,
   SCAI11,
   SCAI12,
   SCAI31,
   SCAI32,
   SCAI14,
   SCAI17,
   SCAI20,
   SCAIE1,
   SCAID2,
   SCAIF2,
   SCSFC,
   SCBALS,
   SCNPE,
   SCSTML,
   SCSTNL,
   SCAI21,
   SCAID4,
   SCAID5,
   SCAI37,
   SCAI60,
   SCAI61,
   SCAI64,
   SCAI65,
   SCAID6,
   SCAID7,
   SCAID3,
   SCAI73,
   SCAIF6,
   SCAIF7,
   SCAIH6,
   SCRETP,
   SCAI80,
   SCAI81,
   SCAI82,
   SCAI83,
   SCAI84,
   SCAI85,
   SCAI86,
   SCAI87,
   SCAI90,
   SCAI91,
   SCAI92,
   SCAI93,
   SCAI94,
   SCAI95,
   SCAI96,
   SCAI97,
   SCNS3,
   SCOAD,
   SCDLE,
   SCCAD,
   SCODL,
   SCLED,
   SCDLM,
   SCP1R,
   SCP2R,
   SCP3R,
   SCP4R,
   SCP5R,
   SCC1R,
   SCC2R,
   SCC3R,
   SCC4R,
   SCC5R,
   SCACO,
   SCLNM,
   SCAI62,
   SCAI63,
   SCAI30,
   SCIDB,
   SCAI13,
   SCAI15,
   SCAI16,
   SCAI24,
   SCAI25,
   SCAI67,
   SCAI26,
   SCAIC4,
   SCII0A,
   SCAI54,
   SCAIG0,
   SCAIG1,
   SCAIG2,
   SCAIG3,
   SCAIG4,
   SCAIG5,
   SCAIG6,
   SCAIG7,
   SCSUML,
   SCAI33,
   SCCSFC,
   SCCSTL,
   SCCSTN,
   SCSHNA,
   SCSHNM,
   SCCNAI,
   SCAIC7,
   SCAIA5,
   SCYFON,
   SCDFRQ,
   SCFBLS,
   SCFSTL,
   SCFDT,
   SCAIA6,
   SCAIA7,
   SCAIB5,
   SCAIB6,
   SCSTC,
   SCAIB7,
   SCDODL,
   SCAODL,
   SCAII4,
   SCAII5,
   SCAII6,
   SCAII7,
   SCAIJ0,
   SCAIJ1,
   SCAIJ2,
   SCAIJ3,
   SCAIJ4,
   SCAIJ5,
   SCAIJ6,
   SCAIJ7,
   SCAIK0,
   SCAIK1,
   SCAIK2,
   SCAIK3,
   SCAIK4,
   SCAIK5,
   SCAIK6,
   SCAIK7,
   SCAIL0,
   SCAIL1,
   SCAIL2,
   SCAIL3,
   SCAIL4,
   SCAIL5,
   SCAIL6,
   SCAIL7,
   SCAIM0,
   SCAIM1,
   SCAIM2,
   SCAIM3,
   SCAIM4,
   SCAIM5,
   SCAIM6,
   SCAIM7,
   SCAIN0,
   SCAIN1,
   SCAIN2,
   SCAIN3,
   SCAIN4,
   SCAIN5,
   SCAIN6,
   SCAIN7,
   SCCLT,
   SCPAB,
   SCOLDA,
   SCPCHD,
   SCBALB,
   SCSMBC,
   SCSMBD,
   SCSMBA,
   SCSMB0,
   SCSMB1,
   SCSMB2,
   SCBALO,
   SCSMOC,
   SCSMOD,
   SCSMOA,
   SCSMO0,
   SCSMO1,
   SCSMO2,
   SCRBB,
   SCYIK5
)

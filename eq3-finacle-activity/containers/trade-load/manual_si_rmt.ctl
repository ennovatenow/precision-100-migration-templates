-- File Name		: manual_si_rmt.ctl

-- File Created for	: Control file for upload the Branch details Mster DaTa

-- Created By		: Kumaresan.B

-- Client			: EIB

-- Created On		: 19-01-2016
-------------------------------------------------------------------
OPTIONS (SKIP=1)
load data
truncate into table manual_si_rmt
fields terminated by x'09'
TRAILING NULLCOLS
( 
S_NO,
SI_REFERENCE,
SO_CUR_REMT_CUR,
REMITTANCE_COUNTRY_CODE,
TRANSACTION_TYPE,
CUSTOMER_FULL_NAME,
CUSTOMER_ADDR_LINE1,
CUSTOMER_ADDR_LINE2,
CUSTOMER_ADDR_LINE3,
REMITTE_COUNTRY_CODE FILLER,
BENEFICIARY_FUL_NAME,
BEN_ADDR_LINE1,
BEN_ADDR_LINE2,
BEN_ADDR_LINE3,
BEN_COUNTRY_CODE,
SWIFT_CODE_ROUTING_CODE,
BEN_BANK_NAME,
BEN_BANK_ADDRESS1,
BEN_BANK_ADDRESS2,
BEN_BANK_ADDRESS3,
BEN_COUNTRY_CODE1,
CORRES_INTERM_BANK_NAME FILLER,
CORRES_INTERM_BANK_ADDR1 FILLER,
CORRES_INTERM_BANK_ADDR2 FILLER,
CORRES_INTERM_BANK_ADDR3,
CORRES_INTERM_BANK_COUNTRY FILLER,
CORRES_INTERM_ROUTING_CODE FILLER,
CORRES_BANK_CODE FILLER,
CORRES_COLL_BANK_CODE FILLER,
CORRES_COLL_BRANCH_CODE FILLER,
CHARGE_CODE,
BENEFICIARY_ACCTORIBAN,
PAY_DETAIL_NARRATION1,
PAY_DETAIL_NARRATION2,
PAY_DETAIL_NARRATION3,
PAY_DETAIL_NARRATION4,
PAY_DETAIL_NARRATION5,
SI_EXECUTION_DAY
)


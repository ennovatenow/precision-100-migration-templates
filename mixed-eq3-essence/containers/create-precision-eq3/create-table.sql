DROP TABLE MAP_CIF;
CREATE TABLE MAP_CIF (
  LEG_CUST_ID NVARCHAR2(50),
  LEG_CUST_BRANCH NVARCHAR2(50), 
  LEG_CUST_TYPE NVARCHAR2(50), 
  LEG_ATTRIBUTE1 NVARCHAR2(50), 
  LEG_ATTRIBUTE2 NVARCHAR2(50), 
  LEG_ATTRIBUTE3 NVARCHAR2(50), 
  LEG_ATTRIBUTE4 NVARCHAR2(50), 
  LEG_ATTRIBUTE5 NVARCHAR2(50), 
  LEG_ATTRIBUTE6 NVARCHAR2(50), 
  LEG_ATTRIBUTE7 NVARCHAR2(50), 
  LEG_ATTRIBUTE8 NVARCHAR2(50),     
  LEG_ATTRIBUTE9 NVARCHAR2(50), 
  LEG_ATTRIBUTE10 NVARCHAR2(50),     
  DEST_CUST_ID NVARCHAR2(50), 
  DEST_CUST_BRANCH NVARCHAR2(50), 
  DEST_CUST_NAME NVARCHAR2(250)
);
DROP TABLE MAP_ACC;
CREATE TABLE MAP_ACC (
  LEG_BRANCH_ID NVARCHAR2(50), 
  LEG_ACC_NUM NVARCHAR2(50), 
  LEG_CUST_ID NVARCHAR2(50), 
  LEG_CUST_TYPE NVARCHAR2(50), 
  LEG_ACCT_TYPE NVARCHAR2(50), 
  LEG_PROD_TYPE NVARCHAR2(50),
  LEG_CCY NVARCHAR2(3), 
  LEG_GL_SUB_HEAD NVARCHAR2(50),
  LEG_LDG_BAL NUMBER,
  LEG_CLR_BAL NUMBER,
  LEG_ATTRIBUTE1 NVARCHAR2(50), 
  LEG_ATTRIBUTE2 NVARCHAR2(50), 
  LEG_ATTRIBUTE3 NVARCHAR2(50), 
  LEG_ATTRIBUTE4 NVARCHAR2(50), 
  LEG_ATTRIBUTE5 NVARCHAR2(50), 
  LEG_ATTRIBUTE6 NVARCHAR2(50), 
  LEG_ATTRIBUTE7 NVARCHAR2(50), 
  LEG_ATTRIBUTE8 NVARCHAR2(50),     
  LEG_ATTRIBUTE9 NVARCHAR2(50), 
  LEG_ATTRIBUTE10 NVARCHAR2(50),     
  DEST_ACC_NUM NVARCHAR2(50), 
  DEST_CUST_ID NVARCHAR2(50), 
  DEST_BRANCH_ID NVARCHAR2(50), 
  DEST_GL_SUB_HEAD NVARCHAR2(50), 
  DEST_PROD_TYPE NVARCHAR2(50), 
  DEST_PROD_CODE NVARCHAR2(50) 
);
DROP TABLE MAP_OFF_ACC;
CREATE TABLE MAP_OFF_ACC (
  LEG_ACC_NUM NVARCHAR2(50),
  LEG_ACCT_TYPE NVARCHAR2(50),
  LEG_GL_SUB_HEAD NVARCHAR2(50),
  LEG_CCY NVARCHAR2(3),
  LEG_ATTRIBUTE1 NVARCHAR2(50),
  LEG_ATTRIBUTE2 NVARCHAR2(50),
  LEG_ATTRIBUTE3 NVARCHAR2(50),
  LEG_ATTRIBUTE4 NVARCHAR2(50),
  LEG_ATTRIBUTE5 NVARCHAR2(50),
  LEG_ATTRIBUTE6 NVARCHAR2(50),
  LEG_ATTRIBUTE7 NVARCHAR2(50),
  LEG_ATTRIBUTE8 NVARCHAR2(50),
  LEG_ATTRIBUTE9 NVARCHAR2(50),
  LEG_ATTRIBUTE10 NVARCHAR2(50),
  DEST_ACC_NUM NVARCHAR2(50),
  DEST_BRANCH_ID NVARCHAR2(50),
  DEST_PROD_CODE NVARCHAR2(50),
  DEST_PROD_TYPE NVARCHAR2(50),
  DEST_GL_SUB_HEAD NVARCHAR2(50)
);

DROP TABLE MAP_PRODUCT;
CREATE TABLE MAP_PRODUCT
(
LEG_ACCT_TYPE NVARCHAR2(500),
DEST_PROD_CODE NVARCHAR2(500),
DEST_PROD_SUBCODE NVARCHAR2(500)
);

DROP TABLE PROD_SUBPROD_PARAM;
CREATE TABLE PROD_SUBPROD_PARAM
(
PRODUCTCONTEXTCODE	NVARCHAR2(500),
PRODUCTDESCRIPTION	NVARCHAR2(500),
ACC_DEFAULTDESCRIPTION	NVARCHAR2(500),
PRODUCT_NUMERICCODE	NVARCHAR2(500),
PRODUCT_ACC_PRODUCTID	NVARCHAR2(500),
ACC_ISOCURRENCYCODE	NVARCHAR2(500),
BSHEET_CRNOMINALCODE	NVARCHAR2(500),
BSHEET_DRNOMINALCODE	NVARCHAR2(500),
DRINT_FREQUENCYPERIODCODEDR	NVARCHAR2(500),
CRINT_FREQUENCYPERIODCODECR	NVARCHAR2(500),
DRINT_APPLICATIONMONTHDR	NVARCHAR2(500),
CRINT_APPLICATIONMONTHCR	NVARCHAR2(500),
DRINT_APPLICATIONDAYDR	NVARCHAR2(500),
CRINT_APPLICATIONDAYCR	NVARCHAR2(500),
HAS_STM	NVARCHAR2(500),
ACC_FEEWAIVEINDICATOR	NVARCHAR2(500),
ACC_PASSBOOKINDICATOR	NVARCHAR2(500),
ACC_MINOPENINGBALANCEAMOUNT	NVARCHAR2(500),
ACC_PEROUTERPROFILEID	NVARCHAR2(500),
HAS_ACCNOTE	NVARCHAR2(500),
HAS_PSNAME	NVARCHAR2(500),
PSNAME_PSEUDONAME	NVARCHAR2(500),
HAS_BSHEET	NVARCHAR2(500),
HAS_CHDEP	NVARCHAR2(500),
HAS_CHEQS	NVARCHAR2(500),
CHEQS_BANKCHEQUE	NVARCHAR2(500),
HAS_CCARD	NVARCHAR2(500),
CCARD_MINAMOUNTPERCENTAGE	NVARCHAR2(500),
CCARD_NUMBEROFDAYSTOPAY	NVARCHAR2(500),
CCARD_CCDESCRIPTION	NVARCHAR2(500),
HAS_CRINTEREST	NVARCHAR2(500),
CRINT_CREDITINTERESTRATE	NVARCHAR2(500),
CRINT_COSTCENTRE	NVARCHAR2(500),
CRINT_INTERESTBASEDAYSCR	NVARCHAR2(500),
CRINT_CREDITBASECODE	NVARCHAR2(500),
CRINT_CREDITINTERESTMARGIN	NVARCHAR2(500),
CRINT_FREQUENCYPERIODUNITCR	NVARCHAR2(500),
CRINT_PAYAWAYCRACCOUNT	NVARCHAR2(500),
CRINT_INTERESTMETHODCR	NVARCHAR2(500),
CRINT_NOMINALCODE	NVARCHAR2(500),
HAS_DRINTEREST	NVARCHAR2(500),
DRINT_PENALTYINTEREST	NVARCHAR2(500),
DRINT_FREQUENCYPERIODUNITDR	NVARCHAR2(500),
DRINT_NOMINALCODE	NVARCHAR2(500),
DRINT_INTERESTMETHODDR	NVARCHAR2(500),
DRINT_PAYAWAYDRACCOUNT	NVARCHAR2(500),
DRINT_COSTCENTRE	NVARCHAR2(500),
DRINT_INTERESTBASEDAYSDR	NVARCHAR2(500),
DRINT_DEBITINTERESTMARGIN	NVARCHAR2(500),
DRINT_DEBITBASECODE	NVARCHAR2(500),
DRINT_DEBITINTERESTRATE	NVARCHAR2(500),
HAS_FIX	NVARCHAR2(500),
HAS_LOAN	NVARCHAR2(500),
HAS_NOTICE	NVARCHAR2(500),
NOTICE_NOTICEPERIOD	NVARCHAR2(500),
HAS_OFFBAL	NVARCHAR2(500),
OFFBAL_OFFSETBALANCEMETHOD	NVARCHAR2(500),
HAS_OFFSET	NVARCHAR2(500),
HAS_PANDL	NVARCHAR2(500),
PANDL_RETAINEDEARNINGSACC	NVARCHAR2(500),
PANDL_COSTTYPE	NVARCHAR2(500),
PANDL_COSTCENTRECODE	NVARCHAR2(500),
PANDL_NOMINALCODE	NVARCHAR2(500),
HAS_SFRV	NVARCHAR2(500),
HAS_TAX	NVARCHAR2(500),
ACC_TAXINDICATORDR	NVARCHAR2(500),
ACC_TAXINDICATORCR	NVARCHAR2(500),
HAS_TRS	NVARCHAR2(500),
TRS_PAYAWAYTRSACCOUNT	NVARCHAR2(500),
TRS_RELIEFPERCENTAGE	NVARCHAR2(500),
TRS_PAYGROSSREPAYMENT	NVARCHAR2(500),
TRS_ANNUALCEILING	NVARCHAR2(500),
HAS_LIM	NVARCHAR2(500),
LIM_LIMITINDICATOR	NVARCHAR2(500),
LIM_LIMITEXCESSACTION	NVARCHAR2(500),
LIM_DEBITLIMIT	NVARCHAR2(500),
LIM_CREDITLIMIT	NVARCHAR2(500),
LIM_LIMITREF1	NVARCHAR2(500),
LIM_LIMITREF2	NVARCHAR2(500),
LIM_LIMITREF3	NVARCHAR2(500),
LIM_LIMITREF4	NVARCHAR2(500),
LIM_LIMITREF5	NVARCHAR2(500),
HAS_DRAWER	NVARCHAR2(500),
BSHEET_CRCOSTTYPE	NVARCHAR2(500),
BSHEET_DRCOSTTYPE	NVARCHAR2(500),
BSHEET_DRCOSTCENTRECODE	NVARCHAR2(500),
BSHEET_CRCOSTCENTRECODE	NVARCHAR2(500),
VERSIONNUM	NVARCHAR2(500),
HAS_BLOCKING	NVARCHAR2(500),
HAS_AVAILBAL	NVARCHAR2(500),
HAS_STATISTICS	NVARCHAR2(500),
HAS_MOVHIS	NVARCHAR2(500),
CRINT_INTERESTRATECAP	NVARCHAR2(500),
CRINT_INTERESTRATECOLLAR	NVARCHAR2(500),
DRINT_INTERESTRATECAP	NVARCHAR2(500),
DRINT_INTERESTRATECOLLAR	NVARCHAR2(500),
DORMANCYMETHOD	NVARCHAR2(500),
DORMANCYPERIOD	NVARCHAR2(500),
NUMBEROFPERIODS	NVARCHAR2(500),
CREDITROUNDINGMETHOD	NVARCHAR2(500),
CREDITMULTIPLEOFCONSTANT	NVARCHAR2(500),
DEBITROUNDINGMETHOD	NVARCHAR2(500),
DEBITMULTIPLEOFCONSTANT	NVARCHAR2(500),
ACCSTMTCFGID	NVARCHAR2(500),
UBDELINQUENCYPROFILEID	NVARCHAR2(500),
ISALLTRANSCODEALLOWED	NVARCHAR2(500),
UBINTSTMTPRFID	NVARCHAR2(500),
UBLASTCRINTMODDTTM	NVARCHAR2(500),
UBLASTDRINTMODDTTM	NVARCHAR2(500),
UBLIMITPERIOD	NVARCHAR2(500),
UBLIMITFREQ	NVARCHAR2(500),
UBLIMITREVIEWPERIOD	NVARCHAR2(500),
UBLIMITREVIEWFREQ	NVARCHAR2(500),
UBLASTMODIFIEDBY	NVARCHAR2(500),
UBLASTAPPROVEDBY	NVARCHAR2(500),
UBGENEXCPRPTFLAG	NVARCHAR2(500),
UBPENALTYINTPRFID	NVARCHAR2(500),
UBPENALTYINTCAP	NVARCHAR2(500),
UBPENALINTCOLLAR	NVARCHAR2(500),
UBCOMMITMENTENFORCELEVEL	NVARCHAR2(500),
UBCOMMITMENTFLAG	NVARCHAR2(500),
UBACCOUNTSTATUS	NVARCHAR2(500),
UBISSUPERVISRAPPRREQD	NVARCHAR2(500),
UBCREDITRATEBASIS	NVARCHAR2(500),
UBDEBITRATEBASIS	NVARCHAR2(500),
UBINTACCRUALMETHODCR	NVARCHAR2(500),
UBINTACCRUALMETHODDR	NVARCHAR2(500),
UBCRAMTTENORRATEID	NVARCHAR2(500),
UBMINDEBITINTERESTAMT	NVARCHAR2(500),
UBMINPENALTYINTAMT	NVARCHAR2(500),
UBMAXAMOUNTPERPRODUCT	NVARCHAR2(500),
UBINTERESTPERIODBASIS	NVARCHAR2(500),
UBINTERESTPAYOUT	NVARCHAR2(500),
UBMINTENORFREQUNIT	NVARCHAR2(500),
UBMINTENORFREQ	NVARCHAR2(500),
UBMAXTENORFREQUNIT	NVARCHAR2(500),
UBMAXTENORFREQ	NVARCHAR2(500),
UBSUBPRODUCTID	NVARCHAR2(500),
UBSEGMENTCLASSIFICATION	NVARCHAR2(500),
UBDOCCHECKLISTDEFID	NVARCHAR2(500),
UBISRECONCILABLE	NVARCHAR2(500),
UBGLTYPE	NVARCHAR2(500),
UBLIMITTYPE	NVARCHAR2(500),
UBOFFBALLIMIT_ACCORPSEUDONYM	NVARCHAR2(500),
UBOFFBALCONTRA_ACCORPSEUDONYM	NVARCHAR2(500),
UBSIGNIFICANTEXCESSAMOUNT	NVARCHAR2(500),
UBISALLOWLIMIT	NVARCHAR2(500),
UBDORMANCYTHRESHOLDAMOUNT	NVARCHAR2(500),
UBDORMANCYBASIS	NVARCHAR2(500),
UBINSTLMNTDAY	NVARCHAR2(500),
UBINSTLMNTMONTH	NVARCHAR2(500),
UBMODULEID	NVARCHAR2(500),
UBISCUSTMARGINENABLED	NVARCHAR2(500),
UBCUSTOMERTYPE	NVARCHAR2(500),
UBPRODUCTSTATUS	NVARCHAR2(500),
UBPRODUCTSTARTDT	NVARCHAR2(500),
UBPRODUCTENDDT	NVARCHAR2(500),
UBPRODUCTREVIEWDT	NVARCHAR2(500),
UBINACTIVEPERIOD	NVARCHAR2(500),
UBCATEGORY	NVARCHAR2(500),
UBVALIDATELIMITINFUSIONRISK	NVARCHAR2(500)
);

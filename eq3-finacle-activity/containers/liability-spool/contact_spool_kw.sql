-- File Name                       : Contacts.sql
-- File Created for            : Spooling
-- Created By                     : Jagadeesh M
-- Client                                    : ABK Kuwait
-- Created On                    : 30-04-2017
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 1100
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifkw/CON001.txt
select
trim(CONTACTID                    )||'|'||
trim(BANK_ID                      )||'|'||
trim(ENABLE_ALERTS                )||'|'||
trim(DEFAULTCHANNEL_ALERT         )||'|'||
trim(PREFERRED_MOBILE_ALERT_NO    )||'|'||
trim(PREFERRED_MOBILE_ALERT_TYPE  )||'|'||
trim(UNIQUEIDNUMBER               )||'|'||
trim(SENCITIZENCONVERSIONFLAG     )||'|'||
trim(SENCITIZENAPPLICABLEDATE     )||'|'||
trim(SENIORCITIZEN                )||'|'||
trim(NAME_ALT1                    )||'|'||
trim(CONTACT_LAST_NAME_ALT1       )||'|'||
trim(CONTACT_FIRST_NAME_ALT1      )||'|'||
trim(CONTACT_MIDDLE_NAME_ALT1     )||'|'||
trim(CREATEDBYSYSTEMID            )||'|'||
trim(MODIFIEDBYSYSTEMID           )||'|'||
trim(CONTACTSKEY                  )||'|'||
trim(ORGKEY                       )||'|'||
trim(ORGID                        )||'|'||
trim(PREFERREDCHANNELID           )||'|'||
trim(CONTACTTYPE                  )||'|'||
trim(IDTYPER1                     )||'|'||
trim(IDTYPER2                     )||'|'||
trim(IDTYPER3                     )||'|'||
trim(IDTYPER4                     )||'|'||
trim(IDTYPER5                     )||'|'||
trim(NAT_ID_CARD_NUM              )||'|'||
trim(SALUTATION                   )||'|'||
trim(CONTACT_LAST_NAME            )||'|'||
trim(CONTACT_FIRST_NAME           )||'|'||
trim(CONTACT_MIDDLE_NAME          )||'|'||
trim(BIRTH_DAY                    )||'|'||
trim(BIRTH_MONTH                  )||'|'||
trim(BIRTH_YEAR                   )||'|'||
trim(CONTACT_DOB                  )||'|'||
trim(GENDER                       )||'|'||
trim(PHONE_HOME1                  )||'|'||
trim(PHONE_HOME2                  )||'|'||
trim(PHONE_WORK                   )||'|'||
trim(EXTN                         )||'|'||
trim(PHONE_CELL                   )||'|'||
trim(FAX_HOME                     )||'|'||
trim(FAX_WORK                     )||'|'||
trim(EMAIL_HOME                   )||'|'||
trim(EMAIL_WORK                   )||'|'||
trim(EMAIL_PALM                   )||'|'||
trim(CITY                         )||'|'||
trim(PAN                          )||'|'||
trim(PASSPORTNO                   )||'|'||
trim(LICENCENO                    )||'|'||
trim(CIN                          )||'|'||
trim(EDUCATION                    )||'|'||
trim(CONTACT_LANGUAGE             )||'|'||
trim(CONTACT_STAFF_STATUS         )||'|'||
trim(PERSONTYPE                   )||'|'||
trim(OCCUPATION                   )||'|'||
trim(DESIGNATION                  )||'|'||
trim(ASSISTANT                    )||'|'||
trim(MANAGER                      )||'|'||
trim(ISCUSTOMER                   )||'|'||
trim(NOTES                        )||'|'||
trim(CREATEDUSERID                )||'|'||
trim(OWNEDUSERID                  )||'|'||
trim(XMLDATA                      )||'|'||
trim(EXTENSIONID                  )||'|'||
trim(CONTACTNREFLG                )||'|'||
trim(CONTACTMINOR                 )||'|'||
trim(COMBINEDSTATEMENTFLG         )||'|'||
trim(CONTACTTRADE                 )||'|'||
trim(STAFFEMPLOYEEID              )||'|'||
trim(RELATIONSHIPFIELD1           )||'|'||
trim(RELATIONSHIPFIELD2           )||'|'||
trim(RELATIONSHIPFIELD3           )||'|'||
trim(RELATIONSHIPOFFER1           )||'|'||
trim(RELATIONSHIPOFFER2           )||'|'||
trim(DELINQUENCYFLG               )||'|'||
trim(CREDITBUREAUSCOREVALIDITY    )||'|'||
trim(CREDITBUREAUSCORE            )||'|'||
trim(CREDITBUREAUREQUESTDATE      )||'|'||
trim(CREDITBUREAUDESCRIPTION      )||'|'||
trim(MAIDENNAMEOFMOTHER           )||'|'||
trim(ANNUALREVENUE                )||'|'||
trim(REVENUEUNITS                 )||'|'||
trim(TICKERSYMBOL                 )||'|'||
trim(AUTOAPPROVAL                 )||'|'||
trim(CATEGORY                     )||'|'||
trim(NUMBEROFPRODUCTS             )||'|'||
trim(RELATIONSHIPMGRID            )||'|'||
trim(RELATIONSHIPCREATEDBYID      )||'|'||
trim(FUTUREPROCESS                )||'|'||
trim(INTWFID                      )||'|'||
trim(URL                          )||'|'||
trim(STATUS                       )||'|'||
trim(INDUSTRY                     )||'|'||
trim(COMPETITOR                   )||'|'||
trim(CUSTOMERRELATIONSHIPNO       )||'|'||
trim(FREEZEPRODUCTSALE            )||'|'||
trim(INTERNALSCORE                )||'|'||
trim(RATING                       )||'|'||
trim(REGION                       )||'|'||
trim(RELATIONSHIPOPENINGDATE      )||'|'||
trim(RELATIONSHIPVALUE            )||'|'||
trim(SICCODE                      )||'|'||
trim(PLACEOFBIRTH                 )||'|'||
trim(COUNTRYOFBIRTH               )||'|'||
trim(PROOFOFAGEFLAG               )||'|'||
trim(PROOFOFAGEDOCUMENT           )||'|'||
trim(STAFFFLAG                    )||'|'||
trim(NAMESUFFIX                   )||'|'||
trim(MAIDENNAME                   )||'|'||
trim(HOUSEHOLDID                  )||'|'||
trim(CURRENTCREXPOSURE            )||'|'||
trim(TOTALCREXPOSURE              )||'|'||
trim(POTENTIALCRLINE              )||'|'||
trim(AVAILABLECRLIMIT             )||'|'||
trim(CREDITSCOREREQUESTEDFLAG     )||'|'||
trim(CREDITHISTORYREQUESTEDFLAG   )||'|'||
trim(SSN                          )||'|'||
trim(STRFIELD1                    )||'|'||
trim(STRFIELD2                    )||'|'||
trim(STRFIELD3                    )||'|'||
trim(STRFIELD4                    )||'|'||
trim(STRFIELD5                    )||'|'||
trim(STRFIELD6                    )||'|'||
trim(STRFIELD7                    )||'|'||
trim(STRFIELD8                    )||'|'||
trim(STRFIELD9                    )||'|'||
trim(STRFIELD10                   )||'|'||
trim(STRFIELD11                   )||'|'||
trim(STRFIELD12                   )||'|'||
trim(STRFIELD13                   )||'|'||
trim(STRFIELD14                   )||'|'||
trim(STRFIELD15                   )||'|'||
trim(DTDATE1                      )||'|'||
trim(DTDATE2                      )||'|'||
trim(DTDATE3                      )||'|'||
trim(DTDATE4                      )||'|'||
trim(DTDATE5                      )||'|'||
trim(DTDATE6                      )||'|'||
trim(DTDATE7                      )||'|'||
trim(DTDATE8                      )||'|'||
trim(DTDATE9                      )||'|'||
trim(AMOUNT1                      )||'|'||
trim(AMOUNT2                      )||'|'||
trim(AMOUNT3                      )||'|'||
trim(AMOUNT4                      )||'|'||
trim(AMOUNT5                      )||'|'||
trim(FLG1                         )||'|'||
trim(FLG2                         )||'|'||
trim(FLG3                         )||'|'||
trim(ALERT1                       )||'|'||
trim(ALERT2                       )||'|'||
trim(ALERT3                       )||'|'||
trim(USERFLAG1                    )||'|'||
trim(USERFLAG2                    )||'|'||
trim(USERFLAG3                    )||'|'||
trim(USERFLAG4                    )||'|'||
trim(MLUSERFIELD1                 )||'|'||
trim(MLUSERFIELD2                 )||'|'||
trim(MLUSERFIELD3                 )||'|'||
trim(MLUSERFIELD4                 )||'|'||
trim(MLUSERFIELD5                 )||'|'||
trim(MLUSERFIELD6                 )||'|'||
trim(MLUSERFIELD7                 )||'|'||
trim(MLUSERFIELD8                 )||'|'||
trim(MLUSERFIELD9                 )||'|'||
trim(MLUSERFIELD10                )||'|'||
trim(MLUSERFIELD11                )||'|'||
trim(DATEOFBECOMINGNRE            )||'|'||
trim(BODATECREATED                )||'|'||
trim(BOCREATEDBY                  )||'|'||
trim(BODATEMODIFIED               )||'|'||
trim(BOMODIFIEDBY                 )||'|'||
trim(CONCURDETECT_X               )||'|'||
trim(BOACLID                      )||'|'||
trim(GOLDMINEKEY                  )||'|'||
trim(SECURITYILHINT               )||'|'||
trim(SECURITYIUHINT               )||'|'||
trim(SECURITYGLHINT               )||'|'||
trim(SECURITYGUHINT               )||'|'||
trim(CREATED_FROM                 )||'|'||
trim(CONSTITUTION_CODE            )||'|'||
trim(STRFIELD16                   )||'|'||
trim(STRFIELD17                   )||'|'||
trim(STRFIELD18                   )||'|'||
trim(STRFIELD19                   )||'|'||
trim(STRFIELD20                   )||'|'||
trim(STRFIELD21                   )||'|'||
trim(STRFIELD22                   )||'|'||
trim(AMOUNT6                      )||'|'||
trim(AMOUNT7                      )||'|'||
trim(AMOUNT8                      )||'|'||
trim(AMOUNT9                      )||'|'||
trim(AMOUNT10                     )||'|'||
trim(AMOUNT11                     )||'|'||
trim(AMOUNT12                     )||'|'||
trim(INTFIELD1                    )||'|'||
trim(INTFIELD2                    )||'|'||
trim(INTFIELD3                    )||'|'||
trim(INTFIELD4                    )||'|'||
trim(INTFIELD5                    )||'|'||
trim(ASSIGNEDTO                   )||'|'||
trim(RECORDSTATUS                 )||'|'||
trim(PROCESSID                    )||'|'||
trim(CURRENTSTEP                  )||'|'||
trim(PROCESSSTATUS                )||'|'||
trim(BLACKLISTED                  )||'|'||
trim(NEGATED                      )||'|'||
trim(SUSPENDED                    )||'|'||
trim(PREFERREDNAME                )||'|'||
trim(BLACKLIST_NOTES              )||'|'||
trim(BLACKLIST_REASON             )||'|'||
trim(NEGATED_NOTES                )||'|'||
trim(NEGATED_REASON               )||'|'||
trim(DOCUMENT_RECEIVED            )||'|'||
trim(SEGMENTATION_CLASS           )||'|'||
trim(CURRSTEPDUEDATE              )||'|'||
trim(STARTDATE                    )||'|'||
trim(STAGENAME                    )||'|'||
trim(ASSIGNEDTOGROUP              )||'|'||
trim(ADD1_FIRST_NAME              )||'|'||
trim(ADD1_MIDDLE_NAME             )||'|'||
trim(ADD1_LAST_NAME               )||'|'||
trim(ADD2_FIRST_NAME              )||'|'||
trim(ADD2_MIDDLE_NAME             )||'|'||
trim(ADD2_LAST_NAME               )||'|'||
trim(ADD3_FIRST_NAME              )||'|'||
trim(ADD3_MIDDLE_NAME             )||'|'||
trim(ADD3_LAST_NAME               )||'|'||
trim(ADD4_FIRST_NAME              )||'|'||
trim(ADD4_MIDDLE_NAME             )||'|'||
trim(ADD4_LAST_NAME               )||'|'||
trim(ADD5_FIRST_NAME              )||'|'||
trim(ADD5_MIDDLE_NAME             )||'|'||
trim(ADD5_LAST_NAME               )||'|'||
trim(DUAL_FIRST_NAME              )||'|'||
trim(DUAL_MIDDLE_NAME             )||'|'||
trim(DUAL_LAST_NAME               )||'|'||
trim(CONVFLAG                     )||'|'||
trim(CONVDATE                     )||'|'||
trim(NEWENTITYID                  )||'|'||
trim(INCREMENTALDATE              )||'|'||
trim(PROCESSGROUPID               )||'|'||
trim(ASSIGNEDBYUSERID             )||'|'||
trim(TRANSFERREDBYUSERID          )||'|'||
trim(PREVSTEPENDDATE              )||'|'||
trim(FIRST_PRODUCT_PROCESSOR      )||'|'||
trim(INTERFACE_REFERENCE_ID       )||'|'||
trim(HOUSEHOLDNAME                )||'|'||
trim(HSHLDUFLAG                   )||'|'||
trim(CORPREPCOUNT                 )||'|'||
trim(ISCORPREP                    )||'|'||
trim(CONTACT_FIRST_NAME_NATIVE    )||'|'||
trim(CONTACT_MIDDLE_NAME_NATIVE   )||'|'||
trim(CONTACT_LAST_NAME_NATIVE     )||'|'||
trim(CONTACT_FIRST_NAME_NATIVE1   )||'|'||
trim(CONTACT_MIDDLE_NAME_NATIVE1  )||'|'||
trim(CONTACT_LAST_NAME_NATIVE1    )||'|'||
trim(SECONDARYRM_ID               )||'|'||
trim(ISEBANKINGENABLED            )||'|'||
trim(ISSMSBANKINGENABLED          )||'|'||
trim(TERTIARYRM_ID                )||'|'||
trim(SUBSEGMENT                   )||'|'||
trim(ISWAPBANKINGENABLED          )||'|'||
trim(SMSBANKINGMOBILENUMBER       )||'|'||
trim(ACCESSOWNERGROUP             )||'|'||
trim(ACCESSOWNERSEGMENT           )||'|'||
trim(ACCESSOWNERBC                )||'|'||
trim(ACCESSOWNERAGENT             )||'|'||
trim(ACCESSASSIGNEEAGENT          )||'|'||
trim(TABVALIDATOR                 )||'|'||
trim(LASTEDITEDPAGE               )||'|'||
trim(CHARGELEVELCODE              )||'|'||
trim(SEGUPDATEDATE                )||'|'||
trim(INTUSERFIELD1                )||'|'||
trim(INTUSERFIELD2                )||'|'||
trim(INTUSERFIELD3                )||'|'||
trim(INTUSERFIELD4                )||'|'||
trim(INTUSERFIELD5                )||'|'||
trim(STRUSERFIELD1                )||'|'||
trim(STRUSERFIELD2                )||'|'||
trim(STRUSERFIELD3                )||'|'||
trim(STRUSERFIELD4                )||'|'||
trim(STRUSERFIELD5                )||'|'||
trim(STRUSERFIELD6                )||'|'||
trim(STRUSERFIELD7                )||'|'||
trim(STRUSERFIELD8                )||'|'||
trim(STRUSERFIELD9                )||'|'||
trim(STRUSERFIELD10               )||'|'||
trim(STRUSERFIELD11               )||'|'||
trim(STRUSERFIELD12               )||'|'||
trim(STRUSERFIELD13               )||'|'||
trim(STRUSERFIELD14               )||'|'||
trim(STRUSERFIELD15               )||'|'||
trim(STRUSERFIELD16               )||'|'||
trim(STRUSERFIELD17               )||'|'||
trim(STRUSERFIELD18               )||'|'||
trim(STRUSERFIELD19               )||'|'||
trim(STRUSERFIELD20               )||'|'||
trim(STRUSERFIELD21               )||'|'||
trim(STRUSERFIELD22               )||'|'||
trim(STRUSERFIELD23               )||'|'||
trim(STRUSERFIELD24               )||'|'||
trim(STRUSERFIELD25               )||'|'||
trim(STRUSERFIELD26               )||'|'||
trim(STRUSERFIELD27               )||'|'||
trim(STRUSERFIELD28               )||'|'||
trim(STRUSERFIELD29               )||'|'||
trim(STRUSERFIELD30               )||'|'||
trim(DATEUSERFIELD1               )||'|'||
trim(DATEUSERFIELD2               )||'|'||
trim(DATEUSERFIELD3               )||'|'||
trim(DATEUSERFIELD4               )||'|'||
trim(DATEUSERFIELD5               )||'|'||
trim(LASTOPERPERFORMED            )||'|'||
trim(ISTAMPERED                   )||'|'||
trim(CHECKSUM                     )||'|'||
trim(ASSIGNEDLOCATIONID           )||'|'||
trim(OWNEDLOCATIONID              )||'|'||
trim(ISROUTED                     )||'|'||
trim(ESC_DUE_TIME                 )||'|'||
trim(ESC_LEVEL                    )||'|'||
trim(CREATEDLOCATIONID            )||'|'||
trim(EDITEDLOCATIONID             )||'|'||
trim(NOCURSTEPASSIGN              )||'|'||
trim(ROUTEDTIME                   )||'|'||
trim(PROCESCDUETIME               )||'|'||
trim(STOPESCALATION               )||'|'||
trim(FIRSTGRASSIGNOWNID           )||'|'||
trim(FIRSTBCASSIGNOWNID           )||'|'||
trim(FIRSTUSERASSIGNOWNID         )||'|'||
trim(CURRNUMPOSESC                )||'|'||
trim(CURRNUMNEGESC                )||'|'||
trim(NUMOFPOSESC                  )||'|'||
trim(NUMOFNEGESC                  )||'|'||
trim(PROCESCLEVEL                 )||'|'||
trim(MANUALROUTING                )||'|'||
trim(SLALEVEL                     )||'|'||
trim(ROUTERULENUM                 )||'|'||
trim(ESCRULENUM                   )||'|'||
trim(ESCALATIONATTR1              )||'|'||
trim(ESCALATIONATTR2              )||'|'||
trim(ESCALATIONATTR3              )||'|'||
trim(OWNERGROUP                   )||'|'||
trim(ROUTERULEFORGROUP            )||'|'||
trim(ROUTERULEFORBC               )||'|'||
trim(ROUTERULEFORUSER             )||'|'||
trim(TATDURATION                  )||'|'||
trim(STOPPROCESCALATION           )||'|'||
trim(DUEDATE                      )||'|'||
trim(NATIVELANGCODE               )||'|'||
trim(CONT_HLTH                    )||'|'||
trim(CONT_SWIFT_CODE_DESC         )||'|'||
trim(ENTITY_CRE_FLAG              )||'|'||
trim(LASTSUBMITTEDDATE            )||'|'||
trim(RISK_PROFILE_SCORE           )||'|'||
trim(RISK_PROFILE_EXPIRY_DATE     )||'|'||
trim(ISMCEDITED                   )||'|'||
trim(PREFERREDADDRESSTYPE         )||'|'||
trim(PREFERREDPHONETYPE           )||'|'||
trim(PREFERREDEMAILTYPE           )||'|'||
trim(PREFERREDPHONE               )||'|'||
trim(PREFERREDEMAIL               )||'|'||
trim(NAME                         )||'|'||
trim(UNIQUEID                     )||'|'||
trim(UNIQUEIDTYPE                 )||'|'||
trim(PRIMARYSOLID                 )||'|'||
trim(TMDATE                       )
from CONTACTS_O_TABLE;
exit;
 

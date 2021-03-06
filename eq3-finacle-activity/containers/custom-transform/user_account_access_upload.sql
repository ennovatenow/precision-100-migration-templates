
TRUNCATE TABLE USER_ACCOUNT_ACCESS_O_TABLE;

INSERT INTO USER_ACCOUNT_ACCESS_O_TABLE
   SELECT '1' DB_TS,
          '01' BANK_ID,
          '01' AC_BANK_ID,
          FIN_SOL_ID AC_BRANCH_ID,
          CORPORATE_ID BAY_USER_ID,
          CORPORATE_USER_ID CORP_USER,
          'N' DEL_FLG,
          FIN_ACC_NUM ACID,
          'N' AC_ACCESS_FLG,
          'Y' AC_INQ_ACCESS_FLG,
          'ACL|ACM|ACO|RCN|ASR|ACS|ASL|PCS|ADP|OOF|AFA|ADC|AHP|ODS|UAT|UND|ALL|NCA|ACA|VCL|AAD|BGI|BGA|BLI|BPE|SPP|BLP|BPR|BIL|BLR|BDC|RFA|BLK|CAR|CLO|CDM|CSR|CLW|NDP|CMS|CLM|CHK|NPA|BEN|BNF|ASB|CDD|CAC|CCP|LCR|CCL|ODL|CLN|CCR|DCR|DDR|DDC|DLC|DDB|DRR|DPC|STB|RDB|CCF|RDO|DVA|DVU|DSB|DDN|CLI|CUD|EDU|EPT|ELC|ELT|EXT|FDO|FDB|RFT|RFO|RPF|FDP|RFQ|FDR|RFR|BLL|POB|XFA|XFD|XFR|OWN|TPA|GPA|GMT|IMG|TRR|IPR|IPO|IBP|CIS|ICP|IDR|INO|OIS|PGB|PYF|LNP|PRP|IBL|SMP|INC|DCI|ICL|IOR|IRR|KTL|LCA|LCI|LCO|LCC|LBA|LDA|UAE|BNL|LQG|LPC|LPD|LPM|LSC|LSD|LSM|LMS|RLC|RLD|LAP|LDR|LOR|RLO|LRP|COL|LGR|MAP|MNB|MND|MCL|MMT|MIS|MBT|MPY|MRP|MTR|MDM|RTG|NAP|NFR|OBA|CDC|CWN|USC|DCL|GCR|MWN|NWN|RAS|ODR|DOB|ROB|PLA|PCH|PRB|PYP|PIR|PYA|PMO|PYM|PAB|PAP|PPA|PUP|FTX|BPY|PYR|PPC|PIC|PPP|LPF|CPF|OPF|WPF|PCC|PCP|QPS|QPT|QFR|URA|RDM|TFA|RSM|RDD|RMT|TDR|URL|COA|RCL|RCF|RHS|RNM|IMF|RPA|PIB|CPI|RPB|RPC|RMA|RRP|RAA|RLA|RAP|SAI|SAL|SQE|SLF|SPD|SGI|SLA|SLO|RFD|SCR|PYD|SDB|SMA|TMP|TPF|TRC|PTP|DCT|DC2|PMT|TNR|UCD|UVD|UDD|UCR|UDF|VNI|VND|VCD|AVC|WCU|FIR|YBR'
             AC_TXN_ACCESS,
          'ACL|ACM|ACO|RCN|ASR|ACS|ASL|PCS|ADP|OOF|AFA|ADC|AHP|ODS|UAT|UND|ALL|NCA|ACA|VCL|AAD|BGI|BGA|BLI|BPE|SPP|BLP|BPR|BIL|BLR|BDC|RFA|BLK|CAR|CLO|CDM|CSR|CLW|NDP|CMS|CLM|CHK|NPA|BEN|BNF|ASB|CDD|CAC|CCP|LCR|CCL|ODL|CLN|CCR|DCR|DDR|DDC|DLC|DDB|DRR|DPC|STB|RDB|CCF|RDO|DVA|DVU|DSB|DDN|CLI|CUD|EDU|EPT|ELC|ELT|EXT|FDO|FDB|RFT|RFO|RPF|FDP|RFQ|FDR|RFR|BLL|POB|XFA|XFD|XFR|OWN|TPA|GPA|GMT|IMG|TRR|IPR|IPO|IBP|CIS|ICP|IDR|INO|OIS|PGB|PYF|LNP|PRP|IBL|SMP|INC|DCI|ICL|IOR|IRR|KTL|LCA|LCI|LCO|LCC|LBA|LDA|UAE|BNL|LQG|LPC|LPD|LPM|LSC|LSD|LSM|LMS|RLC|RLD|LAP|LDR|LOR|RLO|LRP|COL|LGR|MAP|MNB|MND|MCL|MMT|MIS|MBT|MPY|MRP|MTR|MDM|RTG|NAP|NFR|OBA|CDC|CWN|USC|DCL|GCR|MWN|NWN|RAS|ODR|DOB|ROB|PLA|PCH|PRB|PYP|PIR|PYA|PMO|PYM|PAB|PAP|PPA|PUP|FTX|BPY|PYR|PPC|PIC|PPP|LPF|CPF|OPF|WPF|PCC|PCP|QPS|QPT|QFR|URA|RDM|TFA|RSM|RDD|RMT|TDR|URL|COA|RCL|RCF|RHS|RNM|IMF|RPA|PIB|CPI|RPB|RPC|RMA|RRP|RAA|RLA|RAP|SAI|SAL|SQE|SLF|SPD|SGI|SLA|SLO|RFD|SCR|PYD|SDB|SMA|TMP|TPF|TRC|PTP|DCT|DC2|PMT|TNR|UCD|UVD|UDD|UCR|UDF|VNI|VND|VCD|AVC|WCU|FIR|YBR'
             AC_AUTH_ACCESS,
          'MIGRATED' R_MOD_ID,
          '' R_MOD_TIME,
          'MIGRATED' R_CRE_ID,
          '' R_CRE_TIME
     FROM E_BANKING_USER_ACCOUNT_ACCESS
          INNER JOIN NEPF ON TRIM (NEEAN) = TRIM (ACCESS_TO_ACCOUNT_NUMBER)
          INNER JOIN MAP_ACC ON LEG_BRANCH_ID || LEG_SCAN || LEG_SCAS = NEAB || NEAN || NEAS
          --inner join tbaadm.gam on foracid = trim(fin_acc_num)
          where SCHM_TYPE in('SBA','CAA','ODA')
          ;
COMMIT;


TRUNCATE TABLE USER_ACCOUNT_ACCESS1_O_TABLE;
INSERT INTO USER_ACCOUNT_ACCESS1_O_TABLE
   SELECT '1' DB_TS,
          '01' BANK_ID,
          '01' AC_BANK_ID,
          FIN_SOL_ID AC_BRANCH_ID,
          BAY_USER_ID BAY_USER_ID,
          CORP_USER CORP_USER,
          'N' DEL_FLG,
          FIN_ACC_NUM ACID,
          'N' AC_ACCESS_FLG,
          'Y' AC_INQ_ACCESS_FLG,
          'ACL|ACM|ACO|RCN|ASR|ACS|ASL|PCS|ADP|OOF|AFA|ADC|AHP|ODS|UAT|UND|ALL|NCA|ACA|VCL|AAD|BGI|BGA|BLI|BPE|SPP|BLP|BPR|BIL|BLR|BDC|RFA|BLK|CAR|CLO|CDM|CSR|CLW|NDP|CMS|CLM|CHK|NPA|BEN|BNF|ASB|CDD|CAC|CCP|LCR|CCL|ODL|CLN|CCR|DCR|DDR|DDC|DLC|DDB|DRR|DPC|STB|RDB|CCF|RDO|DVA|DVU|DSB|DDN|CLI|CUD|EDU|EPT|ELC|ELT|EXT|FDO|FDB|RFT|RFO|RPF|FDP|RFQ|FDR|RFR|BLL|POB|XFA|XFD|XFR|OWN|TPA|GPA|GMT|IMG|TRR|IPR|IPO|IBP|CIS|ICP|IDR|INO|OIS|PGB|PYF|LNP|PRP|IBL|SMP|INC|DCI|ICL|IOR|IRR|KTL|LCA|LCI|LCO|LCC|LBA|LDA|UAE|BNL|LQG|LPC|LPD|LPM|LSC|LSD|LSM|LMS|RLC|RLD|LAP|LDR|LOR|RLO|LRP|COL|LGR|MAP|MNB|MND|MCL|MMT|MIS|MBT|MPY|MRP|MTR|MDM|RTG|NAP|NFR|OBA|CDC|CWN|USC|DCL|GCR|MWN|NWN|RAS|ODR|DOB|ROB|PLA|PCH|PRB|PYP|PIR|PYA|PMO|PYM|PAB|PAP|PPA|PUP|FTX|BPY|PYR|PPC|PIC|PPP|LPF|CPF|OPF|WPF|PCC|PCP|QPS|QPT|QFR|URA|RDM|TFA|RSM|RDD|RMT|TDR|URL|COA|RCL|RCF|RHS|RNM|IMF|RPA|PIB|CPI|RPB|RPC|RMA|RRP|RAA|RLA|RAP|SAI|SAL|SQE|SLF|SPD|SGI|SLA|SLO|RFD|SCR|PYD|SDB|SMA|TMP|TPF|TRC|PTP|DCT|DC2|PMT|TNR|UCD|UVD|UDD|UCR|UDF|VNI|VND|VCD|AVC|WCU|FIR|YBR'
             AC_TXN_ACCESS,
          'ACL|ACM|ACO|RCN|ASR|ACS|ASL|PCS|ADP|OOF|AFA|ADC|AHP|ODS|UAT|UND|ALL|NCA|ACA|VCL|AAD|BGI|BGA|BLI|BPE|SPP|BLP|BPR|BIL|BLR|BDC|RFA|BLK|CAR|CLO|CDM|CSR|CLW|NDP|CMS|CLM|CHK|NPA|BEN|BNF|ASB|CDD|CAC|CCP|LCR|CCL|ODL|CLN|CCR|DCR|DDR|DDC|DLC|DDB|DRR|DPC|STB|RDB|CCF|RDO|DVA|DVU|DSB|DDN|CLI|CUD|EDU|EPT|ELC|ELT|EXT|FDO|FDB|RFT|RFO|RPF|FDP|RFQ|FDR|RFR|BLL|POB|XFA|XFD|XFR|OWN|TPA|GPA|GMT|IMG|TRR|IPR|IPO|IBP|CIS|ICP|IDR|INO|OIS|PGB|PYF|LNP|PRP|IBL|SMP|INC|DCI|ICL|IOR|IRR|KTL|LCA|LCI|LCO|LCC|LBA|LDA|UAE|BNL|LQG|LPC|LPD|LPM|LSC|LSD|LSM|LMS|RLC|RLD|LAP|LDR|LOR|RLO|LRP|COL|LGR|MAP|MNB|MND|MCL|MMT|MIS|MBT|MPY|MRP|MTR|MDM|RTG|NAP|NFR|OBA|CDC|CWN|USC|DCL|GCR|MWN|NWN|RAS|ODR|DOB|ROB|PLA|PCH|PRB|PYP|PIR|PYA|PMO|PYM|PAB|PAP|PPA|PUP|FTX|BPY|PYR|PPC|PIC|PPP|LPF|CPF|OPF|WPF|PCC|PCP|QPS|QPT|QFR|URA|RDM|TFA|RSM|RDD|RMT|TDR|URL|COA|RCL|RCF|RHS|RNM|IMF|RPA|PIB|CPI|RPB|RPC|RMA|RRP|RAA|RLA|RAP|SAI|SAL|SQE|SLF|SPD|SGI|SLA|SLO|RFD|SCR|PYD|SDB|SMA|TMP|TPF|TRC|PTP|DCT|DC2|PMT|TNR|UCD|UVD|UDD|UCR|UDF|VNI|VND|VCD|AVC|WCU|FIR|YBR'
             AC_AUTH_ACCESS,
          'MIGRATED' R_MOD_ID,
          '' R_MOD_TIME,
          'MIGRATED' R_CRE_ID,
          '' R_CRE_TIME
     FROM CORP_E_BANKING_USER1_O_TABLE
          INNER JOIN MAP_ACC ON trim(CUST_ID) =trim(fin_cif_id)
          where SCHM_TYPE in('SBA','CAA','ODA');
          commit;

  EXIT;

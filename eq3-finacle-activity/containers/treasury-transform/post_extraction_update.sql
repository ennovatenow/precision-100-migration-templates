--UPDATE SSI_DEFAULT TO YES SSI ATTACHED IN DEALS
UPDATE TREASURY_PAY_SSI_O_TABLE SET SSI_DEFAULT='NO';
commit;
UPDATE TREASURY_REC_SSI_O_TABLE SET SSI_DEFAULT='NO';
commit;
UPDATE TREASURY_PAY_SSI_O_TABLE SET SSI_DEFAULT='YES' WHERE TRIM(SSI_ID) IN(
SELECT TRIM(SSI_ID) FROM (
SELECT SIDE_CURREC_SI_FLOW_PAY_SSI_ID SSI_ID FROM COM_LOAN_O_TABLE
UNION
SELECT SIDE_CURREC_SI_FLOW_REC_SSI_ID FROM COM_LOAN_O_TABLE
UNION
SELECT SIFLOW_INTEREST_PAY_SSI_ID FROM COM_LOAN_O_TABLE
UNION
SELECT SIFLOW_INTEREST_RECIEVE_SSI_ID FROM COM_LOAN_O_TABLE
UNION
SELECT SI_FLOW_PAY_SSI_ID FROM FX_OUTRIGHT_DEALS_O_TABLE
UNION
SELECT SI_FLOW_REC_SSI_ID FROM FX_OUTRIGHT_DEALS_O_TABLE
UNION
SELECT SI_FLOW_PAY_SSI_ID FROM FX_SPOT_DEALS_O_TABLE
UNION
SELECT SI_FLOW_REC_SSI_ID FROM FX_SPOT_DEALS_O_TABLE
UNION
SELECT SI_FLOW_PAY_SSI_ID FROM FX_SWAP_O_TABLE
UNION
SELECT SI_FLOW_REC_SSI_ID FROM FX_SWAP_O_TABLE
UNION
SELECT SI_FLOW_FAR_PAY_SSI_ID FROM FX_SWAP_O_TABLE
UNION
SELECT SI_FLOW_FAR_REC_SSI_ID FROM FX_SWAP_O_TABLE
UNION
SELECT SI_FLOW_PAY_SSI_ID FROM SWAP_O_TABLE
UNION
SELECT SI_FLOW_REC_SSI_ID FROM SWAP_O_TABLE
UNION
SELECT SI_FLOW_PAY_SSI_ID FROM SEC_BUY_SELL_O_TABLE
UNION
SELECT SI_FLOW_REC_SSI_ID FROM SEC_BUY_SELL_O_TABLE
UNION
select SI_FLOW_REC_SSI_ID from FX_SWAP_NEAR_DEALS_O_TABLE
UNION
select SI_FLOW_PAY_SSI_ID from FX_SWAP_NEAR_DEALS_O_TABLE
)
);
commit;
--UPDATE SSI_DEFAULT TO YES SSI ATTACHED IN DEALS
UPDATE TREASURY_REC_SSI_O_TABLE SET SSI_DEFAULT='YES' WHERE TRIM(SSI_ID) IN(
SELECT TRIM(SSI_ID) FROM (
SELECT SIDE_CURREC_SI_FLOW_PAY_SSI_ID SSI_ID FROM COM_LOAN_O_TABLE
UNION
SELECT SIDE_CURREC_SI_FLOW_REC_SSI_ID FROM COM_LOAN_O_TABLE
UNION
SELECT SIFLOW_INTEREST_PAY_SSI_ID FROM COM_LOAN_O_TABLE
UNION
SELECT SIFLOW_INTEREST_RECIEVE_SSI_ID FROM COM_LOAN_O_TABLE
UNION
SELECT SI_FLOW_PAY_SSI_ID FROM FX_OUTRIGHT_DEALS_O_TABLE
UNION
SELECT SI_FLOW_REC_SSI_ID FROM FX_OUTRIGHT_DEALS_O_TABLE
UNION
SELECT SI_FLOW_PAY_SSI_ID FROM FX_SPOT_DEALS_O_TABLE
UNION
SELECT SI_FLOW_REC_SSI_ID FROM FX_SPOT_DEALS_O_TABLE
UNION
SELECT SI_FLOW_PAY_SSI_ID FROM FX_SWAP_O_TABLE
UNION
SELECT SI_FLOW_REC_SSI_ID FROM FX_SWAP_O_TABLE
UNION
SELECT SI_FLOW_FAR_PAY_SSI_ID FROM FX_SWAP_O_TABLE
UNION
SELECT SI_FLOW_FAR_REC_SSI_ID FROM FX_SWAP_O_TABLE
UNION
SELECT SI_FLOW_PAY_SSI_ID FROM SWAP_O_TABLE
UNION
SELECT SI_FLOW_REC_SSI_ID FROM SWAP_O_TABLE
UNION
SELECT SI_FLOW_PAY_SSI_ID FROM SEC_BUY_SELL_O_TABLE
UNION
SELECT SI_FLOW_REC_SSI_ID FROM SEC_BUY_SELL_O_TABLE
UNION
select SI_FLOW_REC_SSI_ID from FX_SWAP_NEAR_DEALS_O_TABLE
UNION
select SI_FLOW_PAY_SSI_ID from FX_SWAP_NEAR_DEALS_O_TABLE
)
);
commit;
exit; 

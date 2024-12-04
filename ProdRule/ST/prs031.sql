SELECT        A.INTVL_STOP_DATE, A.CPY_CT,CAST(A.BANK_GIRO_ACCT_NM AS VARCHAR(14) FOR SBCS DATA) AS BANK_GIRO_ACCT_NM, A.POST_GIRO_ACCT_NM, A.SPFNRL_ID, CAST(A.SPCL_HNDL_COD_TXT AS VARCHAR(14) FOR SBCS DATA) AS SPCL_HNDL_COD_TXT, CAST(A.MDIUM_IND AS VARCHAR(14) FOR SBCS DATA) AS MDIUM_IND, CAST(A.SPCL_HNDL_INSCD AS VARCHAR(14) FOR SBCS DATA) AS SPCL_HNDL_INSCD,CAST(A.PROD_RL_OPTN_IND AS VARCHAR(14) FOR SBCS DATA) AS PROD_RL_OPTN_IND, CAST(A.PMT_MTHOD_IND AS VARCHAR(14) FOR SBCS DATA) AS  PMT_MTHOD_IND, A.PMT_DOC_TYP_IND, A.CUST_EDI_LOC_NM,CAST(A.EDI_OPTN_IND AS VARCHAR(14) FOR SBCS DATA) AS EDI_OPTN_IND, A.PROD_INFO_IND, A.MSG_INFO_IND, A.BILL_SPEC_IND, A.BILL_DET_SPEC_IND, A.EMAIL_IND, B.EFFEC_START_DATE, B.LAST_BILL_DATE, B.EFFEC_STOP_DATE, B.FINAL_BILL_DATE,CAST(B.BILL_STATUS_IND AS VARCHAR(14) FOR SBCS DATA) AS BILL_STATUS_IND FROM STHDSN6.TENGRA2.BILL_PRDRL_DATA A, STHDSN6.TENGRA2.BACCT_DATA B WHERE         A.BACCT_PARTN_ID =:BACCT_PARTN_ID AND A.BACCT_OID =:BACCT_OID AND A.BACCT_OID = B.BACCT_OID AND A.INTVL_START_DATE =:INTVL_START_DATE AND A.BILL_RUN_TYP_IND=:BILL_RUN_TYP_IND AND A.PRIM_IND=:PRIM_IND 

         
		  
		  

{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT        A.INTVL_STOP_DATE, A.CPY_CT,CAST(A.BANK_GIRO_ACCT_NM AS VARCHAR(14) FOR SBCS DATA) AS BANK_GIRO_ACCT_NM, A.POST_GIRO_ACCT_NM, A.SPFNRL_ID, CAST(A.SPCL_HNDL_COD_TXT AS VARCHAR(14) FOR SBCS DATA) AS SPCL_HNDL_COD_TXT, CAST(A.MDIUM_IND AS VARCHAR(14) FOR SBCS DATA) AS MDIUM_IND, CAST(A.SPCL_HNDL_INSCD AS VARCHAR(14) FOR SBCS DATA) AS SPCL_HNDL_INSCD,CAST(A.PROD_RL_OPTN_IND AS VARCHAR(14) FOR SBCS DATA) AS PROD_RL_OPTN_IND, CAST(A.PMT_MTHOD_IND AS VARCHAR(14) FOR SBCS DATA) AS  PMT_MTHOD_IND, A.PMT_DOC_TYP_IND, A.CUST_EDI_LOC_NM,CAST(A.EDI_OPTN_IND AS VARCHAR(14) FOR SBCS DATA) AS EDI_OPTN_IND, A.PROD_INFO_IND, A.MSG_INFO_IND, A.BILL_SPEC_IND, A.BILL_DET_SPEC_IND, A.EMAIL_IND, B.EFFEC_START_DATE, B.LAST_BILL_DATE, B.EFFEC_STOP_DATE, B.FINAL_BILL_DATE,CAST(B.BILL_STATUS_IND AS VARCHAR(14) FOR SBCS DATA) AS BILL_STATUS_IND FROM STHDSN6.TENGRA2.BILL_PRDRL_DATA A, STHDSN6.TENGRA2.BACCT_DATA B WHERE         A.BACCT_PARTN_ID =:BACCT_PARTN_ID AND A.BACCT_OID =:BACCT_OID AND A.BACCT_OID = B.BACCT_OID AND A.INTVL_START_DATE =:INTVL_START_DATE AND A.BILL_RUN_TYP_IND=:BILL_RUN_TYP_IND AND A.PRIM_IND=:PRIM_IND ",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "prs031",
  "owner": "COMINAT5",
   "validate": "BIND",
  "description": "prs031 based on  BILL_RUN_TYP_IND,PRIM_IND,BACCT_OID and INTVL_START_DATE  ",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}



curl -X GET http://131.116.44.144:1316/services/SYSIBMSERVICE/prs031/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq




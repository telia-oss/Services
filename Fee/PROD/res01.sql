SELECT     CAST(INV_ID AS VARCHAR(14) FOR SBCS DATA) AS INV_ID, QTY_NM,CAST(FEE_TYPCD AS VARCHAR(14) FOR SBCS DATA) AS FEE_TYPCD, INT_RATE,CAST(FEE_RSN_COD AS VARCHAR(14) FOR SBCS DATA) AS  FEE_RSN_COD, OOCYC_TYP_IND, OOCYC_DATE, NON_RECUR_ITM_AMT, LATPMT_FEE_STRTDT, LATPMT_FEE_STOPDT,CAST(DB_CRED_IND AS VARCHAR(14) FOR SBCS DATA) AS DB_CRED_IND, ASOC_ID,CAST(TCOMITM_CAT_COD AS VARCHAR(14) FOR SBCS DATA) AS TCOMITM_CAT_COD FROM    STHDSN1.TICGRP1.MISC_BLLITM_DATA A WHERE   A.RLTD_CUST_OID =:RLTD_CUST_OID AND      A.BLLITM_TYP_IND =  'F' AND      A.BLLITM_OID =:BLLITM_OID


{
  "dburl": "http://131.116.44.152:1317/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "requestType": "createService",
  "sqlStmt":"SELECT     CAST(INV_ID AS VARCHAR(14) FOR SBCS DATA) AS INV_ID, QTY_NM,CAST(FEE_TYPCD AS VARCHAR(14) FOR SBCS DATA) AS FEE_TYPCD, INT_RATE,CAST(FEE_RSN_COD AS VARCHAR(14) FOR SBCS DATA) AS  FEE_RSN_COD, OOCYC_TYP_IND, OOCYC_DATE, NON_RECUR_ITM_AMT, LATPMT_FEE_STRTDT, LATPMT_FEE_STOPDT,CAST(DB_CRED_IND AS VARCHAR(14) FOR SBCS DATA) AS DB_CRED_IND, ASOC_ID,CAST(TCOMITM_CAT_COD AS VARCHAR(14) FOR SBCS DATA) AS TCOMITM_CAT_COD FROM    STHDSN1.TICGRP1.MISC_BLLITM_DATA A WHERE   A.RLTD_CUST_OID =:RLTD_CUST_OID AND      A.BLLITM_TYP_IND =  'F' AND      A.BLLITM_OID =:BLLITM_OID",
  "serviceName": "res01",
  "description": "res01 based on RLTD_CUST_OID,BLLITM_OID",
  "collectionID": "SYSIBMSERVICE",
  "owner": "COMINAT5",
  "validate": "BIND",
  "version": "V1",
  "response": ""
}


curl -X GET http://131.116.44.152:1317/services/SYSIBMSERVICE/res01/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq
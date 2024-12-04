SELECT     INV_ID, QTY_NM, FEE_TYPCD, INT_RATE, FEE_RSN_COD, OOCYC_TYP_IND, OOCYC_DATE, NON_RECUR_ITM_AMT, LATPMT_FEE_STRTDT, LATPMT_FEE_STOPDT, DB_CRED_IND, ASOC_ID, TCOMITM_CAT_COD FROM    STHDSN6.TENGRA2.MISC_BLLITM_DATA A WHERE   A.RLTD_CUST_OID =:RLTD_CUST_OID AND      A.BLLITM_TYP_IND =  'F' AND      A.BLLITM_OID =:BLLITM_OID


{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "requestType": "createService",
  "sqlStmt":"SELECT     INV_ID, QTY_NM, FEE_TYPCD, INT_RATE, FEE_RSN_COD, OOCYC_TYP_IND, OOCYC_DATE, NON_RECUR_ITM_AMT, LATPMT_FEE_STRTDT, LATPMT_FEE_STOPDT, DB_CRED_IND, ASOC_ID, TCOMITM_CAT_COD FROM    STHDSN6.TENGRA2.MISC_BLLITM_DATA A WHERE   A.RLTD_CUST_OID =:RLTD_CUST_OID AND      A.BLLITM_TYP_IND =  'F' AND      A.BLLITM_OID =:BLLITM_OID",
  "serviceName": "res01",
  "description": "res01 based on RLTD_CUST_OID,BLLITM_OID",
  "collectionID": "SYSIBMSERVICE",
  "owner": "COMINAT5",
  "validate": "BIND",
  "version": "V1",
  "response": ""
}


curl -X GET http://131.116.44.144:1316/services/SYSIBMSERVICE/res01/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq
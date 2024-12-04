{
  "dburl": "http://131.116.44.152:1317/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "requestType": "createService",
  "sqlStmt":"SELECT A.INTVL_START_DATE, B.CURR_CUST_ID FROM  STHDSN1.TICGRP1.RECUR_ITM_HST_DATA A, STHDSN1.TICGRP1.CUSTOMER_DATA B WHERE A.BLLITM_OID=:BLLITM_OID AND  A.BACCT_PARTN_ID=:BACCT_PARTN_ID AND  B.CUST_PARTN_ID=A.RLTD_CUST_PARTN_ID AND  B.CUST_OID=A.RLTD_CUST_OID ORDER BY A.INTVL_START_DATE DESC",
  "serviceName": "per_reit01",
  "description": "per_reit01 BLLITM_OID,BACCT_PARTN_ID",
  "collectionID": "SYSIBMSERVICE",
  "owner": "COMINAT5",
  "validate": "BIND",
  "version": "V1",
  "response": ""
}

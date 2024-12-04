{
  "dburl": "http://131.116.44.152:1317/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "requestType": "createService",
  "sqlStmt":"SELECT A.INTVL_START_DATE, B.CURR_BACCT_ID FROM STHDSN1.TICGRP1.RCUR_ITM_AHST_DATA A , STHDSN1.TICGRP1.BACCT_DATA B WHERE   A.BLLITM_OID=:BLLITM_OID AND  B.BACCT_PARTN_ID=A.BACCT_PARTN_ID AND  B.BACCT_OID=A.BACCT_OID ORDER BY A.INTVL_START_DATE DESC",
  "serviceName": "per_reit04",
  "description": "per_reit04 BLLITM_OID",
  "collectionID": "SYSIBMSERVICE",
  "owner": "COMINAT5",
  "validate": "BIND",
  "version": "V1",
  "response": ""
}

 {
  "dburl": "http://131.116.44.150:1317/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "per_reit04",
  "requestType": "dropService",
  "version": "V1",
  "response": ""
}

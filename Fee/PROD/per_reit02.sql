{
  "dburl": "http://131.116.44.152:1317/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "requestType": "createService",
  "sqlStmt":"SELECT  QTY_NM, RLTD_SBSCT_ID, BLLITM_STRTDT, BLLITM_STOPDT, ASOC_ID, CAST(TCOMITM_CAT_COD AS VARCHAR(10) FOR SBCS DATA) AS TCOMITM_CAT_COD FROM  STHDSN1.TICGRP1.RECUR_ITEM_DATA WHERE BLLITM_OID=:BLLITM_OID AND BACCT_PARTN_ID=:BACCT_PARTN_ID",
  "serviceName": "per_reit02",
  "description": "per_reit02 BLLITM_OID,BACCT_PARTN_ID",
  "collectionID": "SYSIBMSERVICE",
  "owner": "COMINAT5",
  "validate": "BIND",
  "version": "V1",
  "response": ""
}

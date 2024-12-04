{
  "dburl": "http://131.116.44.152:1317/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "requestType": "createService",
  "sqlStmt":"SELECT AGREE_NUM_INT, AGREE_NUM_EXT, PROJ_NUM, SUM_ITEM_GRP_ID FROM STHDSN1.TICGRP1.RECUR_ITM_HST_DATA WHERE BLLITM_OID=:BLLITM_OID AND BACCT_PARTN_ID=:BACCT_PARTN_ID AND INTVL_START_DATE= (SELECT MAX(INTVL_START_DATE) FROM STHDSN1.TICGRP1.RECUR_ITM_HST_DATA WHERE BACCT_PARTN_ID=:BACCT_PARTN_ID AND BLLITM_OID=:BLLITM_OID)",
  "serviceName": "per_reit05",
  "description": "per_reit05 BLLITM_OID,BACCT_PARTN_ID",
  "collectionID": "SYSIBMSERVICE",
  "owner": "COMINAT5",
  "validate": "BIND",
  "version": "V1",
  "response": ""
}

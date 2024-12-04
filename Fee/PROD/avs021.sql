{
  "dburl": "http://131.116.44.152:1317/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "requestType": "createService",
  "sqlStmt":"SELECT DISTINCT SUBSTR(A.MSG_LINE_TXT,1,250) FROM STHDSN1.TICGRP1.RECUR_ITM_HST_DATA A WHERE A.BACCT_PARTN_ID=:BACCT_PARTN_ID AND A.BLLITM_OID=:BLLITM_OID AND A.INTVL_START_DATE=:INTVL_START_DATE",
  "serviceName": "avs021",
  "description": "avs021 BACCT_PARTN_ID,BLLITM_OID,INTVL_START_DATE",
  "collectionID": "SYSIBMSERVICE",
  "owner": "COMINAT5",
  "validate": "BIND",
  "version": "V1",
  "response": ""
}



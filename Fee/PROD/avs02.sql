{
  "dburl": "http://131.116.44.152:1317/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "requestType": "createService",
  "sqlStmt":"SELECT SUBSTR(A.MSG_LINE_TXT,1,250) FROM STHDSN1.TICGRP1.MISC_BLLITM_DATA A WHERE  A.BACCT_PARTN_ID=:BACCT_PARTN_ID AND A.BLLITM_OID=:BLLITM_OID",
  "serviceName": "avs02",
  "description": "avs02 BACCT_PARTN_ID,BLLITM_OID",
  "collectionID": "SYSIBMSERVICE",
  "owner": "COMINAT5",
  "validate": "BIND",
  "version": "V1",
  "response": ""
}

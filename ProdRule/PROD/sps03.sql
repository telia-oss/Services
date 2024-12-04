--sps03
SELECT   A.CURR_CNUM_ID, A.INTVL_STOPDT FROM    STHDSN1.TICGRP1.CNUM_DATA A WHERE   A.CNUM_OID=:CNUM_OID

{
  "dburl": "http://131.116.44.150:1317/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT   A.CURR_CNUM_ID, A.INTVL_STOPDT FROM    STHDSN1.TICGRP1.CNUM_DATA A WHERE   A.CNUM_OID=:CNUM_OID",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "sps03",
  "owner": "COMINAT5",
   "validate": "BIND",
  "description": "sps03 based on CNUM_OID  ",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}
curl -X GET http://131.116.44.152:1317/services/SYSIBMSERVICE/sps03/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq
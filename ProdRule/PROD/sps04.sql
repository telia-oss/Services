--sps04
SELECT    DISTINCT A.CNUM_GRP_NAME    STHDSN1.TICGRP1.CNUM_HIST_DATA A WHERE     A.CNUM_GRP_OID=:CNUM_GRP_OID AND NOT   EXISTS ( SELECT CNUM_GRP_OID FROM STHDSN1.TICGRP1.CNUM_HIST_DATA AA WHERE AA.CNUM_GRP_OID = A.CNUM_GRP_OID AND AA.INTVL_START_DATE > A.INTVL_START_DATE )




{
  "dburl": "http://131.116.44.150:1317/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT    DISTINCT A.CNUM_GRP_NAME  FROM      STHDSN1.TICGRP1.CNUM_HIST_DATA A WHERE     A.CNUM_GRP_OID=:CNUM_GRP_OID AND NOT   EXISTS ( SELECT CNUM_GRP_OID FROM STHDSN1.TICGRP1.CNUM_HIST_DATA AA WHERE AA.CNUM_GRP_OID = A.CNUM_GRP_OID AND AA.INTVL_START_DATE > A.INTVL_START_DATE )",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "sps04",
  "owner": "COMINAT5",
   "validate": "BIND",
  "description": "sps04 based on CNUM_GRP_OID  ",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}
curl -X GET http://131.116.44.152:1317/services/SYSIBMSERVICE/sps04/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq



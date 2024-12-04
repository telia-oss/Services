--sps04
SELECT    DISTINCT A.CNUM_GRP_NAME    STHDSN6.TENGRA2.CNUM_HIST_DATA A WHERE     A.CNUM_GRP_OID=:CNUM_GRP_OID AND NOT   EXISTS ( SELECT CNUM_GRP_OID FROM STHDSN6.TENGRA2.CNUM_HIST_DATA AA WHERE AA.CNUM_GRP_OID = A.CNUM_GRP_OID AND AA.INTVL_START_DATE > A.INTVL_START_DATE )




{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT    DISTINCT A.CNUM_GRP_NAME  FROM      STHDSN6.TENGRA2.CNUM_HIST_DATA A WHERE     A.CNUM_GRP_OID=:CNUM_GRP_OID AND NOT   EXISTS ( SELECT CNUM_GRP_OID FROM STHDSN6.TENGRA2.CNUM_HIST_DATA AA WHERE AA.CNUM_GRP_OID = A.CNUM_GRP_OID AND AA.INTVL_START_DATE > A.INTVL_START_DATE )",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "sps04",
  "owner": "COMINAT5",
   "validate": "BIND",
  "description": "sps04 based on CNUM_GRP_OID  ",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}
curl -X GET http://131.116.44.144:1316/services/SYSIBMSERVICE/sps04/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq



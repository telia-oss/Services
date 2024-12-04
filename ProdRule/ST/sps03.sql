--sps03
SELECT   A.CURR_CNUM_ID, A.INTVL_STOPDT FROM    STHDSN6.TENGRA2.CNUM_DATA A WHERE   A.CNUM_OID=:CNUM_OID

{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT   A.CURR_CNUM_ID, A.INTVL_STOPDT FROM    STHDSN6.TENGRA2.CNUM_DATA A WHERE   A.CNUM_OID=:CNUM_OID",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "sps03",
  "owner": "COMINAT5",
   "validate": "BIND",
  "description": "sps03 based on CNUM_OID  ",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}
curl -X GET http://131.116.44.144:1316/services/SYSIBMSERVICE/sps03/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq
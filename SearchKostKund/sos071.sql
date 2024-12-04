{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "requestType": "createService",
  "sqlStmt": "SELECT DFACTN_OBJ_OID FROM STHDSN6.TENGRA2.DEFER_ACTN_DATA WHERE  DFACTN_OBJ_TYP_IND ='C' AND  DFACTN_OBJ_OID =:DFACTN_OBJ_ID",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "sos071",
  "description": "sos071 with DFACTN_OBJ_ID",
  "owner": "COMINAT5",
  "validate": "BIND",
  "version": "V1",
  "response": ""
}


 {
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "sos071",
  "requestType": "dropService",
  "version": "V1",
  "response": ""
}


curl -X POST \
http://131.116.44.144:1316/services/SYSIBMSERVICE/sos071/V1 \
-H 'accept: application/json'   \
-H 'Content-Type: application/json' \
-u a472inb:INblatS2 \
-d '{
 "DFACTN_OBJ_OID": "5957132"
}'
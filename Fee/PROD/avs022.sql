{
  "dburl": "http://131.116.44.152:1317/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "requestType": "createService",
  "sqlStmt":"SELECT F.BEORDRIN FROM STHDSN1.A002DB2.FPT8200 F WHERE F.PROMIS_ID=:PROMIS_ID AND LEFT(F.BEORDRIN,2)!=:xy AND LEFT(F.BEORDRIN,2)!=:Xy AND LEFT(F.BEORDRIN,2)!=:xY AND LEFT(F.BEORDRIN,2)!=:XY",
  "serviceName": "avs022",
  "description": "avs022 PROMIS_ID",
  "collectionID": "SYSIBMSERVICE",
  "owner": "COMINAT5",
  "validate": "BIND",
  "version": "V1",
  "response": ""
}


curl -X 'POST'  \
'http://131.116.44.152:1317/services/DB2ServiceManager'  \
-H 'accept: application/json'   \
-H 'Content-Type: application/json' \
-u a472inb:INblatS2 \
-d '{
"requestType": "createService",
"sqlStmt": "SELECT F.BEORDRIN FROM STHDSN1.A002DB2.FPT8200 F WHERE F.PROMIS_ID=:PROMIS_ID AND LEFT(F.BEORDRIN,2)!=:xy AND LEFT(F.BEORDRIN,2)!=:Xy AND LEFT(F.BEORDRIN,2)!=:xY AND LEFT(F.BEORDRIN,2)!=:XY",
"serviceName": "avs022",
  "OWNER": "COMINAT5",
    "collectionID": "SYSIBMSERVICE",
  "VALIDATE": "BIND",
"description": "avs022 based on PROMIS_ID"
}'

----------------------------------
SWAGGER
----------------------------------
Swagger link for AT /DEV-http://ib009inblicwwwt.ddc.teliasonera.net:9001/swagger-ui/index.html#/inblic-db-2-controller/createRestServiceWithOwner
Swagger link for prod
http://ib009inblicwwwp.ddc.teliasonera.net:9001/swagger-ui/index.html#/

----------------------------------
DBURL
----------------------------------
 DEV- "http://131.116.44.144:1316/services/DB2ServiceManager",
 AT- "http://131.116.44.144:1315/services/DB2ServiceManager",
 PROD-"http://131.116.44.152:1317/services/DB2ServiceManager",

----------------------------------
SAMPLE REQUEST OBJECT TO CREATE A SERVICE
----------------------------------
{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT     A.LINE_1_ADDR, A.LINE_2_ADDR A.LINE_3_ADDR, A.LINE_4_ADDR, A.ADDR_ID FROM       STHDSN6.TENGRA2.INSTN_LOC_DATA A WHERE      CAST( A.INSLC_ID  AS VARCHAR(14) FOR SBCS DATA)=:INSLC_ID",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "testservice",
  "owner": "COMINAT5",
  "validate": "BIND",
  "description": "ans12 based on INSLC_ID",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}

----------------------------------
TO TEST IF THE SERVICE IS CREATED
----------------------------------
curl -X GET http://131.116.44.144:1316/services/SYSIBMSERVICE/testservice/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq

----------------------------------
TO CREATE A SERVICE USING CURL ON THE BOX(TO CHECK IF THE SERVICE CREATION FAILS VIA SWAGGER)
----------------------------------
curl -X 'POST'  \
'http://131.116.44.144:1315/services/DB2ServiceManager'  \
-H 'accept: application/json'   \
-H 'Content-Type: application/json' \
-u a472inb:INblatS2 \
-d '{
"requestType": "createService",
"sqlStmt": "SELECT     A.LINE_1_ADDR, A.LINE_2_ADDR A.LINE_3_ADDR, A.LINE_4_ADDR, A.ADDR_ID FROM       STHDSN6.TENGRA2.INSTN_LOC_DATA A WHERE      CAST( A.INSLC_ID  AS VARCHAR(14) FOR SBCS DATA)=:INSLC_ID",
"serviceName": "testservice",
  "OWNER": "COMINAT5",
    "collectionID": "SYSIBMSERVICE",
  "VALIDATE": "BIND",
"description": "testservice based on  INSLC_ID"
}'
----------------------------------
TEST THE SERVICE/QUERY RESPONSE -VIA SWAGGER
-------------------------------

{
  "dburl": "http://131.116.44.144:1316/services/SYSIBMSERVICE/test01/V1",
  "username": "a472inb",
  "password": "INblatS2",
  "params": {
   "ANSLUTNINGSID": "000000000001558030"
  },
  "response": ""
}

----------------------------------
TEST THE SERVICE/QUERY RESPONSE -VIA BOX
-------------------------------
curl -X POST \
http://131.116.44.144:1316/services/SYSIBMSERVICE/test01/V1 \
-H 'accept: application/json'   \
-H 'Content-Type: application/json' \
-u a472inb:INblatS2 \
-d '{
 "ANSLUTNINGSID": "000000000001558030"
}'

----------------------------------
DROP SERVICE -VIA SWAGGER
-------------------------------

 {
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "ans11",
  "requestType": "dropService",
  "version": "V1",
  "response": ""
}
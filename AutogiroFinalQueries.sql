--auto04
SELECT A.GIROTYP, A.ANSLUTNINGSID, B.FAKTKTO, A.ANSLUT_DATUM, A.AVSLUT_DATUM, A.STATUSKOD, A.BEVAK_MARKERING, A.MEDDELANDE_MARK, A.LEV_SYSTEM FROM  STHDSN6.TENA2.FGT0100 A LEFT JOIN STHDSN6.TENA2.FGT0200  B ON B.ANSLUTNINGSID = A.ANSLUTNINGSID WHERE      A.ANSLUTNINGSID =:ANSLUTNINGSID ORDER BY B.FAKTKTO, A.ANSLUT_DATUM DESC

{
"dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
"username": "a472inb",
"password": "INblatS2",
"sqlStmt": "SELECT A.GIROTYP, A.ANSLUTNINGSID, B.FAKTKTO, A.ANSLUT_DATUM, A.AVSLUT_DATUM, A.STATUSKOD, A.BEVAK_MARKERING, A.MEDDELANDE_MARK, A.LEV_SYSTEM FROM  STHDSN6.TENA2.FGT0100 A LEFT JOIN STHDSN6.TENA2.FGT0200  B ON B.ANSLUTNINGSID = A.ANSLUTNINGSID WHERE      A.ANSLUTNINGSID =:ANSLUTNINGSID ORDER BY B.FAKTKTO, A.ANSLUT_DATUM DESC",
"collectionID": "SYSIBMSERVICE",
"owner": "COMINAT5",
"validate": "BIND",
"serviceName": "auto04",
"description": "auto04 based on ANSLUTNINGSID",
"requestType": "createService",
"version": "V1",
"response": ""
}
curl -X GET http://131.116.44.144:1316/services/SYSIBMSERVICE/auto04/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq

--auto03
SELECT ANSLUTNINGSID FROM  STHDSN6.TENA2.FGT0200 WHERE  FAKTKTO =:FAKTKTO

--auto03--not getting created
{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT ANSLUTNINGSID FROM  STHDSN6.TENA2.FGT0200 WHERE  FAKTKTO =:FAKTKTO",
  "collectionID": "SYSIBMSERVICE",
  "OWNER": "COMINAT5",
  "VALIDATE": "BIND",
  "serviceName": "auto03",
  "description": "auto03 with FAKTKTO",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}
curl -X 'POST'  \
'http://131.116.44.144:1316/services/DB2ServiceManager'  \
-H 'accept: application/json'   \
-H 'Content-Type: application/json' \
-u a472inb:INblatS2 \
-d '{
"requestType": "createService",
"sqlStmt": "SELECT ANSLUTNINGSID FROM  STHDSN6.TENA2.FGT0200 WHERE  FAKTKTO =:FAKTKTO",
"serviceName": "auto03",
  "collectionID": "SYSIBMSERVICE",
  "OWNER": "COMINAT5",
  "VALIDATE": "BIND",
"description": "auto03 based on  FAKTKTO"
}'
curl -X GET http://131.116.44.144:1316/services/SYSIBMSERVICE/auto03/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq
--auto 06
SELECT A.GIROTYP, A.ANSLUTNINGSID, B.FAKTKTO, A.ANSLUT_DATUM, A.AVSLUT_DATUM, A.STATUSKOD, A.BEVAK_MARKERING, A.MEDDELANDE_MARK, A.LEV_SYSTEM FROM  STHDSN6.TENA2.FGT0200  B, STHDSN6.TENA2.FGT0100 A WHERE A.ANSLUTNINGSID = B.ANSLUTNINGSID AND B.FAKTKTO =:FAKTKTO AND B.ANSLUTNINGSID =:ANSLUTNINGSID ORDER BY A.ANSLUTNINGSID, A.ANSLUT_DATUM DESC


{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT A.GIROTYP, A.ANSLUTNINGSID, B.FAKTKTO, A.ANSLUT_DATUM, A.AVSLUT_DATUM, A.STATUSKOD, A.BEVAK_MARKERING, A.MEDDELANDE_MARK, A.LEV_SYSTEM FROM  STHDSN6.TENA2.FGT0200  B, STHDSN6.TENA2.FGT0100 A WHERE A.ANSLUTNINGSID = B.ANSLUTNINGSID AND B.FAKTKTO =:FAKTKTO AND B.ANSLUTNINGSID =:ANSLUTNINGSID ORDER BY A.ANSLUTNINGSID, A.ANSLUT_DATUM DESC",
  "collectionID": "SYSIBMSERVICE",
  "owner": "COMINAT5",
  "validate": "BIND",
  "serviceName": "auto06",
  "description": "auto06 with ANSLUTNINGSID and FAKTKTO",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}

curl -X GET http://131.116.44.144:1316/services/SYSIBMSERVICE/auto06/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq
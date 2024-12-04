--fks06
SELECT CAST(A.PAID_IND AS VARCHAR(14) FOR SBCS DATA) AS PAID_IND, A.INV_DATE, A.INV_PAID_DATE,CAST( A.INV_ID  AS VARCHAR(14) FOR SBCS DATA) AS INV_ID FROM  STHDSN5.ITSACC.INV_DATA A WHERE  CAST( A.INV_ID  AS VARCHAR(14) FOR SBCS DATA) =:INV_ID ORDER BY A.INV_ID DESC








{
  "dburl": "http://131.116.44.144:1315/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT CAST(A.PAID_IND AS VARCHAR(14) FOR SBCS DATA) AS PAID_IND, A.INV_DATE, A.INV_PAID_DATE,CAST( A.INV_ID  AS VARCHAR(14) FOR SBCS DATA) AS INV_ID FROM  STHDSN5.ITSACC.INV_DATA A WHERE  CAST( A.INV_ID  AS VARCHAR(14) FOR SBCS DATA) =:INV_ID ORDER BY A.INV_ID DESC",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "fks06",
  "owner": "COMINAT5",
   "validate": "BIND",
  "description": "fks06 based on  INV_ID ",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}



curl -X GET http://131.116.44.144:1315/services/SYSIBMSERVICE/fks06/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq


--fks05
SELECT CAST(A.INV_ID AS VARCHAR(14) FOR SBCS DATA) AS  INV_ID,CAST(A.PAID_IND AS VARCHAR(14) FOR SBCS DATA) AS PAID_IND, A.INV_DATE, A.INV_PAID_DATE FROM  STHDSN6.TENGRA2.INV_DATA A WHERE  A.BACCT_PARTN_ID =:BACCT_PARTN_ID AND    A.BACCT_OID =:BACCT_OID ORDER BY A.INV_ID DESC







{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT CAST(A.INV_ID AS VARCHAR(14) FOR SBCS DATA) AS  INV_ID,CAST(A.PAID_IND AS VARCHAR(14) FOR SBCS DATA) AS PAID_IND, A.INV_DATE, A.INV_PAID_DATE FROM  STHDSN6.TENGRA2.INV_DATA A WHERE  A.BACCT_PARTN_ID =:BACCT_PARTN_ID AND    A.BACCT_OID =:BACCT_OID ORDER BY A.INV_ID DESC",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "fks05",
  "owner": "COMINAT5",
    "validate": "BIND",
  "description": "fks05 based on  BACCT_OID and BACCT_PARTN_ID ",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}



curl -X GET http://131.116.44.144:1316/services/SYSIBMSERVICE/fks05/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq


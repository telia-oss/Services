 --des03 to get category details.
SELECT     A.INTVL_START_DATE, A.INTVL_STOP_DATE, CAST(A.SEL_CAT_COD AS VARCHAR(14) FOR SBCS DATA) AS SEL_CAT_COD FROM STHDSN6.TENGRA2.SLCT_CAT_DATA A, STHDSN6.TENGRA2.CUST_ID_HIST_DATA B WHERE CAST( B.CUST_ID  AS VARCHAR(14) FOR SBCS DATA) =:CUST_ID AND A.CUST_PARTN_ID = B.CUST_PARTN_ID AND A.SBSCT_CUST_OID = B.CUST_OID AND A.SBSCT_ID =:SBSCT_ID ORDER BY INTVL_START_DATE DESC

 
 
{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT     A.INTVL_START_DATE, A.INTVL_STOP_DATE, CAST(A.SEL_CAT_COD AS VARCHAR(14) FOR SBCS DATA) AS SEL_CAT_COD FROM STHDSN6.TENGRA2.SLCT_CAT_DATA A, STHDSN6.TENGRA2.CUST_ID_HIST_DATA B WHERE CAST( B.CUST_ID  AS VARCHAR(14) FOR SBCS DATA) =:CUST_ID AND A.CUST_PARTN_ID = B.CUST_PARTN_ID AND A.SBSCT_CUST_OID = B.CUST_OID AND A.SBSCT_ID =:SBSCT_ID ORDER BY INTVL_START_DATE DESC",
  "collectionID": "SYSIBMSERVICE",
   "owner": "COMINAT5",
  "validate": "BIND",
  "serviceName": "des03",
  "description": "des03 based on CUST_ID AND SBSCT_ID",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}
--
curl -X GET http://131.116.44.144:1316/services/SYSIBMSERVICE/des03/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq
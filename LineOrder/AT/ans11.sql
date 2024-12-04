--ans11
SELECT  CAST(A.INSLC_ID AS VARCHAR(30) FOR SBCS DATA)  AS INSLC_ID,  A.LINE_1_ADDR, A.LINE_2_ADDR, A.LINE_3_ADDR, A.LINE_4_ADDR, A.ADDR_ID FROM     STHDSN5.ITSACC.INSTN_LOC_DATA A WHERE    A.CURR_CUST_PARTN_ID=:CURR_CUST_PARTN_ID AND      A.INSLC_OID =:INSLC_OID ORDER BY INSLC_ID ASC







{
  "dburl": "http://131.116.44.144:1315/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT  CAST(A.INSLC_ID AS VARCHAR(30) FOR SBCS DATA)  AS INSLC_ID,  A.LINE_1_ADDR, A.LINE_2_ADDR, A.LINE_3_ADDR, A.LINE_4_ADDR, A.ADDR_ID FROM     STHDSN5.ITSACC.INSTN_LOC_DATA A WHERE    A.CURR_CUST_PARTN_ID=:CURR_CUST_PARTN_ID AND      A.INSLC_OID =:INSLC_OID ORDER BY INSLC_ID ASC",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "ans11",
  "owner": "COMINAT5",
  "validate": "BIND",
  "description": "ans11 based on CURR_CUST_PARTN_ID and INSLC_OID",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}



curl -X GET http://131.116.44.144:1315/services/SYSIBMSERVICE/ans11/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq



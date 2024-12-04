--mes01:


SELECT   CAST(A.BACCT_MSG_ID AS VARCHAR(14) FOR SBCS DATA) AS BACCT_MSG_ID,MSG_LINE_TXT, EFFEC_START_DATE, EFFEC_STOP_DATE FROM STHDSN6.TENGRA2.BACCT_MSG_DATA A WHERE A.CURR_CUST_OID =:CURR_CUST_OID AND  A.BACCT_PARTN_ID=:BACCT_PARTN_ID AND  A.BACCT_OID =:BACCT_OID ORDER BY    A.BACCT_MSG_ID  DESC





{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT   CAST(A.BACCT_MSG_ID AS VARCHAR(14) FOR SBCS DATA) AS BACCT_MSG_ID,MSG_LINE_TXT, EFFEC_START_DATE, EFFEC_STOP_DATE FROM STHDSN6.TENGRA2.BACCT_MSG_DATA A WHERE A.CURR_CUST_OID =:CURR_CUST_OID AND  A.BACCT_PARTN_ID=:BACCT_PARTN_ID AND  A.BACCT_OID =:BACCT_OID ORDER BY    A.BACCT_MSG_ID  DESC",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "mes01",
  "owner": "COMINAT5",
   "validate": "BIND",
  "description": "mes01 based on  BACCT_OID,BACCT_PARTN_ID and CURR_CUST_OID ",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}



curl -X GET http://131.116.44.144:1316/services/SYSIBMSERVICE/mes01/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq


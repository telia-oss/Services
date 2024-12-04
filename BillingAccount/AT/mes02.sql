SELECT MSG_LINE_TXT, EFFEC_START_DATE, EFFEC_STOP_DATE FROM STHDSN5.ITSACC.BACCT_MSG_DATA A WHERE A.BACCT_OID =:BACCT_OID AND A.BACCT_PARTN_ID =:BACCT_PARTN_ID AND A.CURR_CUST_OID =:CURR_CUST_OID AND CAST( A.BACCT_MSG_ID  AS VARCHAR(14) FOR SBCS DATA)  =:BACCT_MSG_ID


{
  "dburl": "http://131.116.44.144:1315/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT MSG_LINE_TXT, EFFEC_START_DATE, EFFEC_STOP_DATE FROM STHDSN5.ITSACC.BACCT_MSG_DATA A WHERE A.BACCT_OID =:BACCT_OID AND A.BACCT_PARTN_ID =:BACCT_PARTN_ID AND A.CURR_CUST_OID =:CURR_CUST_OID AND CAST( A.BACCT_MSG_ID  AS VARCHAR(14) FOR SBCS DATA)  =:BACCT_MSG_ID",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "mes02",
  "owner": "COMINAT5",
   "validate": "BIND",
  "description": "mes02 based on  BACCT_OID,BACCT_PARTN_ID and CURR_CUST_OID ",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}

curl -X GET http://131.116.44.144:1315/services/SYSIBMSERVICE/mes02/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq


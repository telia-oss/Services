SELECT   A.EFFEC_START_DATE, A.EFFEC_STOP_DATE, A.CURR_INSTN_ID, B.LOBAS_DB  FROM    STHDSN5.ITSACC.INSTN_DATA A, STHDSN5.ITSACC.CUST_HIST_DATA B WHERE   A.CURR_CUST_PARTN_ID=:CURR_CUST_PARTN_ID AND     A.INSTN_OID =:INSTN_OID AND     B.CUST_PARTN_ID = A.CURR_CUST_PARTN_ID AND     B.CUST_OID = A.CURR_CUST_OID AND     B.INTVL_START_DATE = (SELECT MAX(INTVL_START_DATE) FROM STHDSN5.ITSACC.CUST_HIST_DATA WHERE CUST_PARTN_ID = B.CUST_PARTN_ID AND CUST_OID = B.CUST_OID )









{
  "dburl": "http://131.116.44.144:1315/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": " SELECT   A.EFFEC_START_DATE, A.EFFEC_STOP_DATE, A.CURR_INSTN_ID, B.LOBAS_DB  FROM    STHDSN5.ITSACC.INSTN_DATA A, STHDSN5.ITSACC.CUST_HIST_DATA B WHERE   A.CURR_CUST_PARTN_ID=:CURR_CUST_PARTN_ID AND    CAST(ROUND(TRIM(A.INSTN_OID),3) AS DECIMAL(31,3))=:INSTN_OID AND     B.CUST_PARTN_ID = A.CURR_CUST_PARTN_ID AND     B.CUST_OID = A.CURR_CUST_OID AND     B.INTVL_START_DATE = (SELECT MAX(INTVL_START_DATE) FROM STHDSN5.ITSACC.CUST_HIST_DATA WHERE CUST_PARTN_ID = B.CUST_PARTN_ID AND CUST_OID = B.CUST_OID )",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "ans06",
  "owner": "COMINAT5",
  "validate": "BIND",
  "description": "ans06 based on CURR_CUST_PARTN_ID and INSTN_OID",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}



curl -X GET http://131.116.44.144:1315/services/SYSIBMSERVICE/ans06/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq



--ans13
SELECT   PERSN_REF, ORDER_NM_TXT FROM     STHDSN5.ITSACC.CNUM_HIST_DATA WHERE    CURR_CUST_PARTN_ID=:CURR_CUST_PARTN_ID AND      CNUM_OID =:CNUM_OID AND      INTVL_START_DATE = (SELECT MAX(INTVL_START_DATE) FROM STHDSN5.ITSACC.CNUM_HIST_DATA WHERE CURR_CUST_PARTN_ID =:CURR_CUST_PARTN_ID AND CNUM_OID =:CNUM_OID)






{
  "dburl": "http://131.116.44.144:1315/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT   PERSN_REF, ORDER_NM_TXT FROM     STHDSN5.ITSACC.CNUM_HIST_DATA WHERE    CURR_CUST_PARTN_ID=:CURR_CUST_PARTN_ID AND      CNUM_OID =:CNUM_OID AND      INTVL_START_DATE = (SELECT MAX(INTVL_START_DATE) FROM STHDSN5.ITSACC.CNUM_HIST_DATA WHERE CURR_CUST_PARTN_ID =:CURR_CUST_PARTN_ID AND CNUM_OID =:CNUM_OID)",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "ans13",
  "owner": "COMINAT5",
  "validate": "BIND",
  "description": "ans13 based on CNUM_OID and CURR_CUST_PARTN_ID",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}



curl -X GET http://131.116.44.144:1315/services/SYSIBMSERVICE/ans13/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq



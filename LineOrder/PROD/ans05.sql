SELECT   A.INTVL_STRTDT, A.INTVL_STOPDT, B.LOBAS_DB  FROM     STHDSN1.TICGRP1.CNUM_DATA A, STHDSN1.TICGRP1.CUST_HIST_DATA B WHERE    CURR_CUST_PARTN_ID=:CURR_CUST_PARTN_ID AND      CNUM_OID =:CNUM_OID AND      B.CUST_PARTN_ID = A.CURR_CUST_PARTN_ID AND      B.CUST_OID = A.CURR_CUST_OID AND      B.INTVL_START_DATE = (SELECT MAX(INTVL_START_DATE) FROM STHDSN1.TICGRP1.CUST_HIST_DATA WHERE CUST_PARTN_ID = B.CUST_PARTN_ID AND CUST_OID = B.CUST_OID )






{
  "dburl": "http://131.116.44.152:1317/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT   A.INTVL_STRTDT, A.INTVL_STOPDT, B.LOBAS_DB  FROM     STHDSN1.TICGRP1.CNUM_DATA A, STHDSN1.TICGRP1.CUST_HIST_DATA B WHERE    CURR_CUST_PARTN_ID=:CURR_CUST_PARTN_ID AND      CNUM_OID =:CNUM_OID AND      B.CUST_PARTN_ID = A.CURR_CUST_PARTN_ID AND      B.CUST_OID = A.CURR_CUST_OID AND      B.INTVL_START_DATE = (SELECT MAX(INTVL_START_DATE) FROM STHDSN1.TICGRP1.CUST_HIST_DATA WHERE CUST_PARTN_ID = B.CUST_PARTN_ID AND CUST_OID = B.CUST_OID )",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "ans05",
  "owner": "COMINAT5",
  "validate": "BIND",
  "description": "ans05 based on CURR_CUST_PARTN_ID and CNUM_OID",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}



curl -X GET http://131.116.44.152:1317/services/SYSIBMSERVICE/ans05/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq



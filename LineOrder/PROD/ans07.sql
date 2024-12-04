SELECT   INTVL_START_DATE FROM     STHDSN1.TICGRP1.CNUM_HIST_DATA A WHERE    A.CURR_CUST_PARTN_ID=:CURR_CUST_PARTN_ID AND      A.CNUM_OID =:CNUM_OID ORDER BY INTVL_START_DATE DESC









{
  "dburl": "http://131.116.44.152:1317/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT   INTVL_START_DATE FROM     STHDSN1.TICGRP1.CNUM_HIST_DATA A WHERE    A.CURR_CUST_PARTN_ID=:CURR_CUST_PARTN_ID AND      A.CNUM_OID =:CNUM_OID ORDER BY INTVL_START_DATE DESC",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "ans07",
  "owner": "COMINAT5",
  "validate": "BIND",
  "description": "ans07 based on CURR_CUST_PARTN_ID and CNUM_OID",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}



curl -X GET http://131.116.44.152:1317/services/SYSIBMSERVICE/ans07/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq



--ans08
SELECT     INTVL_START_DATE FROM     STHDSN1.TICGRP1.INSTN_HIST_DATA A WHERE    A.CURR_CUST_PARTN_ID=:CURR_CUST_PARTN_ID AND      A.INSTN_OID =:INSTN_OID ORDER BY INTVL_START_DATE DESC




{
  "dburl": "http://131.116.44.152:1317/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT     INTVL_START_DATE FROM     STHDSN1.TICGRP1.INSTN_HIST_DATA A WHERE    A.CURR_CUST_PARTN_ID=:CURR_CUST_PARTN_ID AND      A.INSTN_OID =:INSTN_OID ORDER BY INTVL_START_DATE DESC",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "ans08",
  "owner": "COMINAT5",
  "validate": "BIND",
  "description": "ans08 based on CURR_CUST_PARTN_ID and INSTN_OID",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}



curl -X GET http://131.116.44.152:1317/services/SYSIBMSERVICE/ans08/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq



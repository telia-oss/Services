SELECT   CAST(A.INSLC_ID AS VARCHAR(30) FOR SBCS DATA )  AS INSLC_ID, B.INTVL_STOPDT FROM     STHDSN1.TICGRP1.INSTN_LOC_DATA A, STHDSN1.TICGRP1.INSTN_DATA B WHERE    A.CURR_CUST_PARTN_ID=:CURR_CUST_PARTN_ID AND      B.CURR_CUST_PARTN_ID = A.CURR_CUST_PARTN_ID AND      A.INSLC_OID=:INSLC_OID AND      B.INSTN_OID = A.INSTN_OID 


{
  "dburl": "http://131.116.44.150:1317/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT   CAST(A.INSLC_ID AS VARCHAR(30) FOR SBCS DATA )  AS INSLC_ID, B.INTVL_STOPDT FROM     STHDSN1.TICGRP1.INSTN_LOC_DATA A, STHDSN1.TICGRP1.INSTN_DATA B WHERE    A.CURR_CUST_PARTN_ID=:CURR_CUST_PARTN_ID AND      B.CURR_CUST_PARTN_ID = A.CURR_CUST_PARTN_ID AND      A.INSLC_OID=:INSLC_OID AND      B.INSTN_OID = A.INSTN_OID ",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "sps05",
  "owner": "COMINAT5",
   "validate": "BIND",
  "description": "sps05 based on CURR_CUST_PARTN_ID,INSLC_OID  ",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}
curl -X GET http://131.116.44.152:1317/services/SYSIBMSERVICE/sps05/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq



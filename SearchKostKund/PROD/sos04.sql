{
  "dburl": "http://131.116.44.150:1317/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT  DISTINCT CAST(BACCT_ID AS VARCHAR(15) FOR SBCS DATA) AS BACCT_ID,CURR_CUST_OID,CURR_CUST_PARTN_ID FROM  STHDSN1.TICGRP1.BACCT_ID_HIST_DATA WHERE CAST(BACCT_ID  AS VARCHAR(15) FOR SBCS DATA) =:BACCT_ID",
  "collectionID": "SYSIBMSERVICE",
"owner": "COMINAT5",
  "validate": "BIND",
  "serviceName": "sos04",
  "description": "sos04 with BACCT_ID",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}



 {
  "dburl": "http://131.116.44.150:1317/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "sos04",
  "requestType": "dropService",
  "version": "V1",
  "response": ""
}


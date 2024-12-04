SELECT       C.CURR_BACCT_ID, CASE WHEN EFFEC_STOP_DATE<'9999-12-31' THEN 'AVSLUTAD' END AS C2, C.EFFEC_STOP_DATE, C.CURR_CUST_OID, C.CURR_CUST_OID FROM        TENGRA2.CUST_ID_HIST_DATA B, TENGRA2.BACCT_DATA C, TENGRA2.BACCT_HIST_DATA A WHERE        B.CUST_ID =:CUST_ID AND          A.CUST_OID = B.CUST_OID AND          C.BACCT_PARTN_ID  = A.BACCT_PARTN_ID AND          C.BACCT_OID = A.BACCT_OID ORDER BY 2, 3 DESC, 1


{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT   DISTINCT    C.CURR_BACCT_ID, CASE WHEN CHAR(C.EFFEC_STOP_DATE,ISO)<'9999-12-31' THEN 'AVSLUTAD' END AS C2,  CHAR(C.EFFEC_STOP_DATE,ISO), C.CURR_CUST_OID, C.CURR_CUST_OID FROM        STHDSN6.TENGRA2.CUST_ID_HIST_DATA B, STHDSN6.TENGRA2.BACCT_DATA C, STHDSN6.TENGRA2.BACCT_HIST_DATA A WHERE      CAST(B.CUST_ID AS VARCHAR(15) FOR SBCS DATA)    =:CUST_ID AND          A.CUST_OID = B.CUST_OID AND          C.BACCT_PARTN_ID  = A.BACCT_PARTN_ID AND          C.BACCT_OID = A.BACCT_OID ORDER BY 2 DESC, 3 DESC, 1 ",
  "serviceName": "sos13",
  "description": "sos13 scustomerid",
  "collectionID": "SYSIBMSERVICE",
  "owner": "COMINAT5",
  "validate": "BIND",
  "version": "V1",
  "response": ""
}  

{
  "dburl": "http://131.116.44.150:1317/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT  DISTINCT     C.CURR_BACCT_ID, CASE WHEN CHAR(C.EFFEC_STOP_DATE,ISO)<'9999-12-31' THEN 'AVSLUTAD' END AS C2,  CHAR(C.EFFEC_STOP_DATE,ISO), C.CURR_CUST_OID, C.CURR_CUST_OID FROM       STHDSN1.TICGRP1.CUST_ID_HIST_DATA B, STHDSN1.TICGRP1.BACCT_DATA C, STHDSN1.TICGRP1.BACCT_HIST_DATA A WHERE      CAST(B.CUST_ID AS VARCHAR(15) FOR SBCS DATA)    =:CUST_ID AND          A.CUST_OID = B.CUST_OID AND          C.BACCT_PARTN_ID  = A.BACCT_PARTN_ID AND          C.BACCT_OID = A.BACCT_OID ORDER BY 2 DESC, 3 DESC, 1 ",
  "serviceName": "sos13",
  "description": "sos13 scustomerid",
  "collectionID": "SYSIBMSERVICE",
  "owner": "COMINAT5",
  "validate": "BIND",
  "version": "V1",
  "response": ""
}  

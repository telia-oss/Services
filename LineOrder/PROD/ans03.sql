SELECT  A.CURR_CNUM_ID, A.CURR_INSTN_OID, A.CURR_INSLC_OID, A.CNUM_OID,CAST(A.INST_NUM_IND AS VARCHAR(14) FOR SBCS DATA) AS INST_NUM_IND, B.LINE_CT  FROM    STHDSN1.TICGRP1.CNUM_DATA A, STHDSN1.TICGRP1.CNUM_HIST_DATA  B WHERE  B.CURR_CUST_OID =:CURR_CUST_OID AND    B.INTVL_START_DATE = (SELECT MAX(INTVL_START_DATE) FROM STHDSN1.TICGRP1.CNUM_HIST_DATA WHERE CURR_CUST_PARTN_ID = A.CURR_CUST_PARTN_ID AND CNUM_OID = A.CNUM_OID) AND   (B.CNUM_OID=B.OWN_CNUM_OID OR B.OWN_CNUM_OID=0) AND A.CURR_CUST_PARTN_ID = B.CURR_CUST_PARTN_ID AND A.CNUM_OID = B.CNUM_OID ORDER BY A.CURR_CNUM_ID ASC, A.INTVL_STRTDT DESC 



{
  "dburl": "http://131.116.44.152:1317/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT  A.CURR_CNUM_ID, A.CURR_INSTN_OID, A.CURR_INSLC_OID, A.CNUM_OID,CAST(A.INST_NUM_IND AS VARCHAR(14) FOR SBCS DATA) AS INST_NUM_IND, B.LINE_CT  FROM    STHDSN1.TICGRP1.CNUM_DATA A, STHDSN1.TICGRP1.CNUM_HIST_DATA  B WHERE  B.CURR_CUST_OID =:CURR_CUST_OID AND    B.INTVL_START_DATE = (SELECT MAX(INTVL_START_DATE) FROM STHDSN1.TICGRP1.CNUM_HIST_DATA WHERE CURR_CUST_PARTN_ID = A.CURR_CUST_PARTN_ID AND CNUM_OID = A.CNUM_OID) AND   (B.CNUM_OID=B.OWN_CNUM_OID OR B.OWN_CNUM_OID=0) AND A.CURR_CUST_PARTN_ID = B.CURR_CUST_PARTN_ID AND A.CNUM_OID = B.CNUM_OID ORDER BY A.CURR_CNUM_ID ASC, A.INTVL_STRTDT DESC ",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "ans03",
  "owner": "COMINAT5",
  "validate": "BIND",
  "description": "ans03 based on CURR_CUST_OID",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}



curl -X GET http://131.116.44.152:1317/services/SYSIBMSERVICE/ans03/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq



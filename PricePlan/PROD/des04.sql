SELECT A. INTVL_START_DATE, A.INTVL_STOP_DATE, A.OPTN_TRM_VL FROM STHDSN1.TICGRP1.SLCT_PLAN_OPT_DATA A, STHDSN1.TICGRP1.CUST_ID_HIST_DATA B WHERE B.CUST_ID =:CUST_ID AND A.CUST_PARTN_ID = B.CUST_PARTN_ID AND A.SBSCT_CUST_OID = B.CUST_OID AND A.SBSCT_ID =:SBSCT_ID ORDER BY 1 DESC ,2 DESC, 3 ASC


{
  "dburl": "http://131.116.44.152:1317/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT A. INTVL_START_DATE, A.INTVL_STOP_DATE, A.OPTN_TRM_VL FROM STHDSN1.TICGRP1.SLCT_PLAN_OPT_DATA A, STHDSN1.TICGRP1.CUST_ID_HIST_DATA B WHERE B.CUST_ID =:CUST_ID AND A.CUST_PARTN_ID = B.CUST_PARTN_ID AND A.SBSCT_CUST_OID = B.CUST_OID AND A.SBSCT_ID =:SBSCT_ID ORDER BY 1 DESC ,2 DESC, 3 ASC",
  "collectionID": "SYSIBMSERVICE",
   "owner": "COMINAT5",
  "validate": "BIND",
  "serviceName": "des04",
  "description": "des04 based on CUST_ID AND SBSCT_ID",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}
--
curl -X GET http://131.116.44.152:1317/services/SYSIBMSERVICE/des04/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq

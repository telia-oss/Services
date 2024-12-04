
--dest002:
SELECT   A.INTVL_START_DATE, A.INTVL_STOP_DATE,CAST(A.BEGIN_POINT_VL AS VARCHAR(14) FOR SBCS DATA) AS BEGIN_POINT_VL,CAST(A.END_POINT_VL AS VARCHAR(14) FOR SBCS DATA) AS END_POINT_VL, A.POINT_VL_LEN FROM STHDSN1.TICGRP1.SLCT_DEST_DATA A, STHDSN1.TICGRP1.CUST_ID_HIST_DATA B WHERE CAST( B.CUST_ID  AS VARCHAR(14) FOR SBCS DATA)=:CUST_ID AND A.CUST_PARTN_ID = B.CUST_PARTN_ID AND A.SBSCT_CUST_OID = B.CUST_OID AND A.SBSCT_ID =:SBSCT_ID ORDER BY INTVL_START_DATE DESC




{
  "dburl": "http://131.116.44.152:1317/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT   A.INTVL_START_DATE, A.INTVL_STOP_DATE,CAST(A.BEGIN_POINT_VL AS VARCHAR(14) FOR SBCS DATA) AS BEGIN_POINT_VL,CAST(A.END_POINT_VL AS VARCHAR(14) FOR SBCS DATA) AS END_POINT_VL, A.POINT_VL_LEN FROM STHDSN1.TICGRP1.SLCT_DEST_DATA A, STHDSN1.TICGRP1.CUST_ID_HIST_DATA B WHERE CAST( B.CUST_ID  AS VARCHAR(14) FOR SBCS DATA)=:CUST_ID AND A.CUST_PARTN_ID = B.CUST_PARTN_ID AND A.SBSCT_CUST_OID = B.CUST_OID AND A.SBSCT_ID =:SBSCT_ID ORDER BY INTVL_START_DATE DESC",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "dest002",
  "owner": "COMINAT5",
  "validate": "BIND",
  "description": "dest002 based on SBSCT_ID and CUST_ID",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}
--55WVYY4309


curl -X GET http://131.116.44.152:1317/services/SYSIBMSERVICE/dest002/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq



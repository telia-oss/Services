--plano001: 
SELECT   A.INTVL_START_DATE, A.INTVL_STOP_DATE,CAST(A.OPTN_TRM_VL AS VARCHAR(14) FOR SBCS DATA) AS OPTN_TRM_VL FROM     STHDSN5.ITSACC.SLCT_PLAN_OPT_DATA A, STHDSN5.ITSACC.CUST_ID_HIST_DATA B WHERE   CAST( B.CUST_ID  AS VARCHAR(14) FOR SBCS DATA)=:CUST_ID AND      A.CUST_PARTN_ID=B.CUST_PARTN_ID AND      A.SBSCT_CUST_OID= B.CUST_OID ORDER BY A.INTVL_START_DATE DESC ,A.INTVL_STOP_DATE DESC, A.OPTN_TRM_VL ASC



{
  "dburl": "http://131.116.44.144:1315/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT   A.INTVL_START_DATE, A.INTVL_STOP_DATE,CAST(A.OPTN_TRM_VL AS VARCHAR(14) FOR SBCS DATA) AS OPTN_TRM_VL FROM     STHDSN5.ITSACC.SLCT_PLAN_OPT_DATA A, STHDSN5.ITSACC.CUST_ID_HIST_DATA B WHERE   CAST( B.CUST_ID  AS VARCHAR(14) FOR SBCS DATA)=:CUST_ID AND      A.CUST_PARTN_ID=B.CUST_PARTN_ID AND      A.SBSCT_CUST_OID= B.CUST_OID ORDER BY A.INTVL_START_DATE DESC ,A.INTVL_STOP_DATE DESC, A.OPTN_TRM_VL ASC",
  "collectionID": "SYSIBMSERVICE",
   "owner": "COMINAT5",
  "validate": "BIND",
  "serviceName": "plano001",
  "description": "plano001 based on CUST_ID",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}
--
curl -X GET http://131.116.44.144:1315/services/SYSIBMSERVICE/plano001/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq

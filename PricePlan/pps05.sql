---pps05 service created 
SELECT    A.INTVL_START_DATE, A.INTVL_STOP_DATE, CAST(B.CNUM_ID AS VARCHAR(14) FOR SBCS DATA) AS CNUM_ID,CAST(A.CNTRB_ELIG_IND AS VARCHAR(14) FOR SBCS DATA) AS CNTRB_ELIG_IND, CAST(A.MAIN_CNTX_VL AS VARCHAR(14) FOR SBCS DATA) AS  MAIN_CNTX_VL,CAST(A.OPER_IND AS VARCHAR(14) FOR SBCS DATA) AS  OPER_IND FROM      STHDSN6.TENGRA2.CNUM_UPPS_DATA A, STHDSN6.TENGRA2.CNUM_ID_HIST_DATA B, STHDSN6.TENGRA2.CUST_ID_HIST_DATA C WHERE CAST( C.CUST_ID  AS VARCHAR(14) FOR SBCS DATA) =:CUST_ID AND        A.SBSCT_CUST_OID=C.CUST_OID AND A.SBSCT_ID=:SBSCT_ID AND B.CURR_CUST_PARTN_ID=A.CNUM_CUST_PARTN_ID AND A.CNUM_OID=B.CNUM_OID AND B.CNUM_OID =:CNUM_OID AND B.INTVL_START_DATE=(SELECT MAX(INTVL_START_DATE) FROM STHDSN6.TENGRA2.CNUM_ID_HIST_DATA WHERE CURR_CUST_PARTN_ID=B.CURR_CUST_PARTN_ID AND CNUM_OID=B.CNUM_OID) ORDER BY B.CNUM_ID ASC   



{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT    A.INTVL_START_DATE, A.INTVL_STOP_DATE, CAST(B.CNUM_ID AS VARCHAR(14) FOR SBCS DATA) AS CNUM_ID,CAST(A.CNTRB_ELIG_IND AS VARCHAR(14) FOR SBCS DATA) AS CNTRB_ELIG_IND, CAST(A.MAIN_CNTX_VL AS VARCHAR(14) FOR SBCS DATA) AS  MAIN_CNTX_VL,CAST(A.OPER_IND AS VARCHAR(14) FOR SBCS DATA) AS  OPER_IND FROM      STHDSN6.TENGRA2.CNUM_UPPS_DATA A, STHDSN6.TENGRA2.CNUM_ID_HIST_DATA B, STHDSN6.TENGRA2.CUST_ID_HIST_DATA C WHERE CAST( C.CUST_ID  AS VARCHAR(14) FOR SBCS DATA) =:CUST_ID AND        A.SBSCT_CUST_OID=C.CUST_OID AND A.SBSCT_ID=:SBSCT_ID AND B.CURR_CUST_PARTN_ID=A.CNUM_CUST_PARTN_ID AND A.CNUM_OID=B.CNUM_OID AND B.CNUM_OID =:CNUM_OID AND B.INTVL_START_DATE=(SELECT MAX(INTVL_START_DATE) FROM STHDSN6.TENGRA2.CNUM_ID_HIST_DATA WHERE CURR_CUST_PARTN_ID=B.CURR_CUST_PARTN_ID AND CNUM_OID=B.CNUM_OID) ORDER BY B.CNUM_ID ASC",
  "collectionID": "SYSIBMSERVICE",
  "owner": "COMINAT5",
  "validate": "BIND",
  "serviceName": "pps05",
  "description": "pps05 based on CUST_ID,CNUM_OID AND SBSCT_ID",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}
curl -X GET http://131.116.44.144:1316/services/SYSIBMSERVICE/pps05/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq

-----
                 "

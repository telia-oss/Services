SELECT   A.CURR_CNUM_ID, A.CURR_INSTN_OID, A.CURR_INSLC_OID, A.CNUM_OID,CAST(A.INST_NUM_IND AS VARCHAR(14) FOR SBCS DATA) AS INST_NUM_IND, B.LINE_CT FROM    STHDSN6.TENGRA2.CNUM_DATA A, STHDSN6.TENGRA2.CNUM_HIST_DATA  B, STHDSN6.TENGRA2.CNUM_ID_HIST_DATA  C WHERE CAST(  C.CNUM_ID  AS VARCHAR(14) FOR SBCS DATA)  =:CNUM_ID AND     C.INTVL_START_DATE = (SELECT MAX(INTVL_START_DATE) FROM STHDSN6.TENGRA2.CNUM_ID_HIST_DATA WHERE CURR_CUST_PARTN_ID = C.CURR_CUST_PARTN_ID AND CNUM_OID = C.CNUM_OID) AND     B.CURR_CUST_OID =:CURR_CUST_OID AND     B.CNUM_OID = C.CNUM_OID AND     B.INTVL_START_DATE = (SELECT MAX(INTVL_START_DATE) FROM STHDSN6.TENGRA2.CNUM_HIST_DATA WHERE CURR_CUST_PARTN_ID = A.CURR_CUST_PARTN_ID AND CNUM_OID = A.CNUM_OID) AND     (B.CNUM_OID=B.OWN_CNUM_OID OR B.OWN_CNUM_OID=0) AND     A.CURR_CUST_PARTN_ID = B.CURR_CUST_PARTN_ID AND     A.CNUM_OID = B.CNUM_OID ORDER BY A.CURR_CNUM_ID ASC, A.INTVL_STRTDT DESC




{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT   A.CURR_CNUM_ID, A.CURR_INSTN_OID, A.CURR_INSLC_OID, A.CNUM_OID,CAST(A.INST_NUM_IND AS VARCHAR(14) FOR SBCS DATA) AS INST_NUM_IND, B.LINE_CT FROM    STHDSN6.TENGRA2.CNUM_DATA A, STHDSN6.TENGRA2.CNUM_HIST_DATA  B, STHDSN6.TENGRA2.CNUM_ID_HIST_DATA  C WHERE CAST(  C.CNUM_ID  AS VARCHAR(14) FOR SBCS DATA)  =:CNUM_ID AND     C.INTVL_START_DATE = (SELECT MAX(INTVL_START_DATE) FROM STHDSN6.TENGRA2.CNUM_ID_HIST_DATA WHERE CURR_CUST_PARTN_ID = C.CURR_CUST_PARTN_ID AND CNUM_OID = C.CNUM_OID) AND     B.CURR_CUST_OID =:CURR_CUST_OID AND     B.CNUM_OID = C.CNUM_OID AND     B.INTVL_START_DATE = (SELECT MAX(INTVL_START_DATE) FROM STHDSN6.TENGRA2.CNUM_HIST_DATA WHERE CURR_CUST_PARTN_ID = A.CURR_CUST_PARTN_ID AND CNUM_OID = A.CNUM_OID) AND     (B.CNUM_OID=B.OWN_CNUM_OID OR B.OWN_CNUM_OID=0) AND     A.CURR_CUST_PARTN_ID = B.CURR_CUST_PARTN_ID AND     A.CNUM_OID = B.CNUM_OID ORDER BY A.CURR_CNUM_ID ASC, A.INTVL_STRTDT DESC",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "ans04",
  "owner": "COMINAT5",
  "validate": "BIND",
  "description": "ans04 based on CNUM_ID and CURR_CUST_OID",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}

60597476--cnumoid
6658509--currcustoid

curl -X GET http://131.116.44.144:1316/services/SYSIBMSERVICE/ans04/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq



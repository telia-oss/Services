--fks032


SELECT A.CURR_BACCT_ID, A.BACCT_OID, A.BACCT_PARTN_ID FROM  STHDSN6.TENGRA2.BACCT_DATA A , STHDSN6.TENGRA2.BACCT_HIST_DATA B WHERE  B.CUST_OID =:CUST_OID AND    B.INTVL_START_DATE = (SELECT MAX(INTVL_START_DATE) FROM  STHDSN6.TENGRA2.BACCT_HIST_DATA WHERE  BACCT_PARTN_ID = B.BACCT_PARTN_ID AND    BACCT_OID = B.BACCT_OID) AND    A.BACCT_PARTN_ID = B.BACCT_PARTN_ID AND    A.BACCT_OID = B.BACCT_OID AND     A.EFFEC_STOP_DATE > CURRENT_DATE ORDER BY A.CURR_BACCT_ID ASC





{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT A.CURR_BACCT_ID, A.BACCT_OID, A.BACCT_PARTN_ID FROM  STHDSN6.TENGRA2.BACCT_DATA A , STHDSN6.TENGRA2.BACCT_HIST_DATA B WHERE  B.CUST_OID =:CUST_OID AND    B.INTVL_START_DATE = (SELECT MAX(INTVL_START_DATE) FROM  STHDSN6.TENGRA2.BACCT_HIST_DATA WHERE  BACCT_PARTN_ID = B.BACCT_PARTN_ID AND    BACCT_OID = B.BACCT_OID) AND    A.BACCT_PARTN_ID = B.BACCT_PARTN_ID AND    A.BACCT_OID = B.BACCT_OID AND A.EFFEC_STOP_DATE > CURRENT_DATE ORDER BY A.CURR_BACCT_ID ASC",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "fks032",
  "owner": "COMINAT5",
  "validate": "BIND",
  "description": "fks032 based on CURRENT_DATE And CUST_OID ",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}

60597476--cnumoid
6658509--currcustoid

curl -X GET http://131.116.44.144:1316/services/SYSIBMSERVICE/fks032/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq


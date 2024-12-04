--lns02
SELECT    A.CNUM_OID, A.CURR_CNUM_ID, A.INTVL_STRTDT, A.INTVL_STOPDT, CASE WHEN A.INTVL_STOPDT = '9999-12-31' THEN 'A' ELSE 'I' END  AS AKTIV FROM     STHDSN6.TENGRA2.CNUM_DATA A, STHDSN6.TENGRA2.CNUM_HIST_DATA B WHERE    ((B.CURR_CUST_PARTN_ID =:CURR_CUST_PARTN_ID AND      B.CNUM_OID =:CNUM_OID) OR       B.OWN_CNUM_OID =:OWN_CNUM_OID) AND      B.INTVL_START_DATE = (SELECT MAX(INTVL_START_DATE) FROM STHDSN6.TENGRA2.CNUM_HIST_DATA WHERE CURR_CUST_PARTN_ID = B.CURR_CUST_PARTN_ID AND CNUM_OID = B.CNUM_OID ) AND A.CURR_CUST_PARTN_ID = B.CURR_CUST_PARTN_ID AND A.CNUM_OID = B.CNUM_OID ORDER BY 5, 2



{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT    A.CNUM_OID, A.CURR_CNUM_ID, A.INTVL_STRTDT, A.INTVL_STOPDT, CASE WHEN A.INTVL_STOPDT = '9999-12-31' THEN 'A' ELSE 'I' END  AS AKTIV FROM     STHDSN6.TENGRA2.CNUM_DATA A, STHDSN6.TENGRA2.CNUM_HIST_DATA B WHERE    ((B.CURR_CUST_PARTN_ID =:CURR_CUST_PARTN_ID AND      B.CNUM_OID =:CNUM_OID) OR       B.OWN_CNUM_OID =:OWN_CNUM_OID) AND      B.INTVL_START_DATE = (SELECT MAX(INTVL_START_DATE) FROM STHDSN6.TENGRA2.CNUM_HIST_DATA WHERE CURR_CUST_PARTN_ID = B.CURR_CUST_PARTN_ID AND CNUM_OID = B.CNUM_OID ) AND A.CURR_CUST_PARTN_ID = B.CURR_CUST_PARTN_ID AND A.CNUM_OID = B.CNUM_OID ORDER BY 5, 2",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "lns02",
  "owner": "COMINAT5",
  "validate": "BIND",
  "description": "lns02 based on CURR_CUST_PARTN_ID ,CNUM_OID and OWN_CNUM_OID",
  "requestType": "createService",
  "version": "V1",
  "response": ""9
}

60597476--cnumoid
6658509--currcustoid

curl -X GET http://131.116.44.144:1316/services/SYSIBMSERVICE/lns02/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq


--ans09
SELECT    CAST(A.TCOMM_ORG_ID AS VARCHAR(14) FOR SBCS DATA) AS  TCOMM_ORG_ID, B.DESC_TXT, A.CUST_EDI_LOC_NM, CAST(A.CNUM_TYPCD AS VARCHAR(14) FOR SBCS DATA) AS CNUM_TYPCD FROM        STHDSN5.ITSACC.CNUM_HIST_DATA A, STHDSN5.ITSACC.ENT_TYP_TABL B WHERE      A.CURR_CUST_PARTN_ID=:CURR_CUST_PARTN_ID AND A.CNUM_OID =:CNUM_OID AND        A.INTVL_START_DATE =:INTVL_START_DATE AND B.ENT_TYP_COD = A.CNUM_TYPCD





{
  "dburl": "http://131.116.44.144:1315/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT    CAST(A.TCOMM_ORG_ID AS VARCHAR(14) FOR SBCS DATA) AS  TCOMM_ORG_ID, B.DESC_TXT, A.CUST_EDI_LOC_NM, CAST(A.CNUM_TYPCD AS VARCHAR(14) FOR SBCS DATA) AS CNUM_TYPCD FROM        STHDSN5.ITSACC.CNUM_HIST_DATA A, STHDSN5.ITSACC.ENT_TYP_TABL B WHERE      A.CURR_CUST_PARTN_ID=:CURR_CUST_PARTN_ID AND A.CNUM_OID =:CNUM_OID AND        A.INTVL_START_DATE =:INTVL_START_DATE AND B.ENT_TYP_COD = A.CNUM_TYPCD",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "ans09",
  "owner": "COMINAT5",
  "validate": "BIND",
  "description": "ans09 based on CNUM_OID and INTVL_START_DATE",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}



curl -X GET http://131.116.44.144:1315/services/SYSIBMSERVICE/ans09/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq


--ans10
SELECT   CAST(A.TCOMM_ORG_ID AS VARCHAR(14) FOR SBCS DATA) AS TCOMM_ORG_ID, CAST(A.INSTN_DSCR_TXT AS VARCHAR(35) FOR SBCS DATA) AS INSTN_DSCR_TXT, A.CUST_EDI_LOC_NM, CAST(A.SLPRSN_NM AS VARCHAR(14) FOR SBCS DATA) AS SLPRSN_NM, CAST(A.SNI_COD AS VARCHAR(14) FOR SBCS DATA) AS SNI_COD,CAST(A.INSTN_TYPCD AS VARCHAR(14) FOR SBCS DATA) AS  INSTN_TYPCD FROM     STHDSN6.TENGRA2.INSTN_HIST_DATA A WHERE    A.CURR_CUST_PARTN_ID=:CURR_CUST_PARTN_ID AND      A.INSTN_OID =:INSTN_OID AND      A.INTVL_START_DATE =:INTVL_START_DATE






{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT   CAST(A.TCOMM_ORG_ID AS VARCHAR(14) FOR SBCS DATA) AS TCOMM_ORG_ID, CAST(A.INSTN_DSCR_TXT AS VARCHAR(35) FOR SBCS DATA) AS INSTN_DSCR_TXT, A.CUST_EDI_LOC_NM, CAST(A.SLPRSN_NM AS VARCHAR(14) FOR SBCS DATA) AS SLPRSN_NM, CAST(A.SNI_COD AS VARCHAR(14) FOR SBCS DATA) AS SNI_COD,CAST(A.INSTN_TYPCD AS VARCHAR(14) FOR SBCS DATA) AS  INSTN_TYPCD FROM     STHDSN6.TENGRA2.INSTN_HIST_DATA A WHERE    A.CURR_CUST_PARTN_ID=:CURR_CUST_PARTN_ID AND      A.INSTN_OID =:INSTN_OID AND      A.INTVL_START_DATE =:INTVL_START_DATE",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "ans10",
  "owner": "COMINAT5",
  "validate": "BIND",
  "description": "ans10 based on CURR_CUST_PARTN_ID and INSTN_OID",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}



curl -X GET http://131.116.44.144:1316/services/SYSIBMSERVICE/ans10/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq



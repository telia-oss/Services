SELECT A.BACCT_OID,A.INTVL_START_DATE AS INTVLSTARTDATE ,A.BACCT_PARTN_ID,A.PREF_PMT_DY, CAST(A.CALDR_BASE_IND AS VARCHAR(14) FOR SBCS DATA) AS  CALDR_BASE_IND, A.TAX_JURIS_ID,CAST(A.TCOMM_ORG_ID AS VARCHAR(14) FOR SBCS DATA) AS  TCOMM_ORG_ID, A.BNUM_BLK_DIGT_CT, A.BONUS_ACCT_NM, CAST(A.BONUS_ACCT_GRP_NAM AS VARCHAR(14) FOR SBCS DATA) AS BONUS_ACCT_GRP_NAM, CAST(A.ADV_ARRS_IND AS VARCHAR(14) FOR SBCS DATA) AS ADV_ARRS_IND, CAST(A.BACCT_TYPCD AS VARCHAR(14) FOR SBCS DATA) AS BACCT_TYPCD, CAST(A.PROFT_CENTR_ID AS VARCHAR(14) FOR SBCS DATA) AS PROFT_CENTR_ID,CAST(A.BACT_EDI_LOC_NM AS VARCHAR(14) FOR SBCS DATA) AS BACT_EDI_LOC_NM, CAST(A.BCYCL_ID AS VARCHAR(14) FOR SBCS DATA) AS BCYCL_ID, A.LEGAL_VAT_ID, A.PREF_PMT_OFFST_NM FROM STHDSN6.TENGRA2.BACCT_HIST_DATA A WHERE A.BACCT_OID =:BACCT_OID AND   A.INTVL_START_DATE =:INTVL_START_DATE AND   A.BACCT_PARTN_ID =:BACCT_PARTN_ID


{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT A.BACCT_OID,A.INTVL_START_DATE,A.BACCT_PARTN_ID,A.PREF_PMT_DY, CAST(A.CALDR_BASE_IND AS VARCHAR(14) FOR SBCS DATA) AS  CALDR_BASE_IND, A.TAX_JURIS_ID,CAST(A.TCOMM_ORG_ID AS VARCHAR(14) FOR SBCS DATA) AS  TCOMM_ORG_ID, A.BNUM_BLK_DIGT_CT, A.BONUS_ACCT_NM, CAST(A.BONUS_ACCT_GRP_NAM AS VARCHAR(14) FOR SBCS DATA) AS BONUS_ACCT_GRP_NAM, CAST(A.ADV_ARRS_IND AS VARCHAR(14) FOR SBCS DATA) AS ADV_ARRS_IND, CAST(A.BACCT_TYPCD AS VARCHAR(14) FOR SBCS DATA) AS BACCT_TYPCD, CAST(A.PROFT_CENTR_ID AS VARCHAR(14) FOR SBCS DATA) AS PROFT_CENTR_ID,CAST(A.BACT_EDI_LOC_NM AS VARCHAR(14) FOR SBCS DATA) AS BACT_EDI_LOC_NM, CAST(A.BCYCL_ID AS VARCHAR(14) FOR SBCS DATA) AS BCYCL_ID, A.LEGAL_VAT_ID, A.PREF_PMT_OFFST_NM FROM STHDSN6.TENGRA2.BACCT_HIST_DATA A WHERE A.BACCT_OID =:BACCT_OID AND   A.INTVL_START_DATE =:INTVL_START_DATE AND   A.BACCT_PARTN_ID =:BACCT_PARTN_ID",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "fks08",
  "owner": "COMINAT5",
   "validate": "BIND",
  "description": "fks08 based on  BACCT_OID,BACCT_PARTN_ID and CURR_CUST_OID ",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}

curl -X GET http://131.116.44.144:1316/services/SYSIBMSERVICE/fks08/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq


{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "requestType": "createService",
  "sqlStmt":"SELECT RLTD_SBSCT_ID,OOCYC_TYP_IND,OOCYC_DATE,EXTRT_DET_DATE, CAST(DB_CRED_IND AS VARCHAR(14) FOR SBCS DATA) AS DB_CRED_IND,CHRG_TYP_IND,NON_RECUR_ITM_RAT,QTY_NM,ASOC_ID,CAST(TCOMITM_CAT_COD AS VARCHAR(14) FOR SBCS DATA) AS  TCOMITM_CAT_COD, CNUM_REF_ID, SERV_RPT_NM,DELIV_DATE,ADDR_ID,AGREE_NUM_INT,AGREE_NUM_EXT,PROJ_NUM,SUM_ITEM_GRP_ID, BLLITM_OID  FROM STHDSN6.TENGRA2.MISC_BLLITM_DATA WHERE BACCT_PARTN_ID=:BACCT_PARTN_ID AND BLLITM_OID =:BLLITM_OID",
  "serviceName": "ovr_ens01",
  "description": "ovr_ens01 ",
  "collectionID": "SYSIBMSERVICE",
  "owner": "COMINAT5",
  "validate": "BIND",
  "version": "V1",
  "response": ""
}


curl -X GET http://131.116.44.144:1316/services/SYSIBMSERVICE/ovr_ens01/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq
SELECT DISTINCT INTVL_START_DATE, INTVL_STOP_DATE FROM   STHDSN6.TENGRA2.BILL_PRDRL_DATA WHERE  BACCT_PARTN_ID =:BACCT_PARTN_ID AND    BACCT_OID =:BACCT_OID AND CAST(PRIM_IND AS VARCHAR(14) FOR SBCS DATA )    =:PRIM_IND AND  CAST(BILL_RUN_TYP_IND AS VARCHAR(14) FOR SBCS DATA ) =:BILL_RUN_TYP_IND AND    CAST(BILL_PROD_RULE_ID AS VARCHAR(14) FOR SBCS DATA )   =:BILL_PROD_RULE_ID ORDER BY 1 DESC


		
{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT DISTINCT INTVL_START_DATE, INTVL_STOP_DATE FROM   STHDSN6.TENGRA2.BILL_PRDRL_DATA WHERE  BACCT_PARTN_ID =:BACCT_PARTN_ID AND    BACCT_OID =:BACCT_OID AND CAST(PRIM_IND AS VARCHAR(14) FOR SBCS DATA )    =:PRIM_IND AND  CAST(BILL_RUN_TYP_IND AS VARCHAR(14) FOR SBCS DATA ) =:BILL_RUN_TYP_IND AND    CAST(BILL_PROD_RULE_ID AS VARCHAR(14) FOR SBCS DATA )   =:BILL_PROD_RULE_ID ORDER BY 1 DESC",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "prrads01",
  "owner": "COMINAT5",
   "validate": "BIND",
  "description": "prrads01 based on BACCT_PARTN_ID,BACCT_OID,PRIM_IND,BILL_PROD_RULE_ID and BILL_RUN_TYP_IND ",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}
curl -X GET http://131.116.44.144:1316/services/SYSIBMSERVICE/prrads01/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq



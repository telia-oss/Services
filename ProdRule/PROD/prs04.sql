SELECT       INTVL_START_DATE, CAST(BILL_RUN_TYP_IND AS VARCHAR(14) FOR SBCS DATA) AS BILL_RUN_TYP_IND, CAST(PRIM_IND AS VARCHAR(14) FOR SBCS DATA) AS PRIM_IND, CAST(BILL_PROD_RULE_ID AS VARCHAR(14) FOR SBCS DATA)  AS BILL_PROD_RULE_ID,      SPFNRL_ID, RLTD_CNUM_OID FROM        STHDSN1.TICGRP1.BILL_PRDRL_DATA WHERE       BACCT_PARTN_ID =:BACCT_PARTN_ID AND         BACCT_OID =:BACCT_OID ORDER BY    BILL_PROD_RULE_ID, INTVL_START_DATE DESC


{
  "dburl": "http://131.116.44.150:1317/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT       INTVL_START_DATE, CAST(BILL_RUN_TYP_IND AS VARCHAR(14) FOR SBCS DATA) AS BILL_RUN_TYP_IND, CAST(PRIM_IND AS VARCHAR(14) FOR SBCS DATA) AS PRIM_IND, CAST(BILL_PROD_RULE_ID AS VARCHAR(14) FOR SBCS DATA)  AS BILL_PROD_RULE_ID,SPFNRL_ID, RLTD_CNUM_OID FROM        STHDSN1.TICGRP1.BILL_PRDRL_DATA WHERE       BACCT_PARTN_ID =:BACCT_PARTN_ID AND         BACCT_OID =:BACCT_OID ORDER BY    BILL_PROD_RULE_ID, INTVL_START_DATE DESC",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "prs04",
  "owner": "COMINAT5",
   "validate": "BIND",
  "description": "prs04 based on  BACCT_PARTN_ID,PRIM_IND,BACCT_OID and INTVL_START_DATE and BILL_PROD_RULE_ID ",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}



curl -X GET http://131.116.44.152:1317/services/SYSIBMSERVICE/prs04/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq
--fks07

SELECT B.HANDL_OFFCR, B.PERSN_REF, B.ORDER_NUM_TXT FROM   STHDSN6.TENGRA2.BACCT_HIST_DATA B WHERE  B.BACCT_PARTN_ID =:BACCT_PARTN_ID AND    B.BACCT_OID =:BACCT_OID AND    B.INTVL_START_DATE = (SELECT   MAX(INTVL_START_DATE) FROM    STHDSN6.TENGRA2.BACCT_HIST_DATA WHERE  BACCT_PARTN_ID= B.BACCT_PARTN_ID AND    BACCT_OID= B.BACCT_OID)




{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT B.HANDL_OFFCR, B.PERSN_REF, B.ORDER_NUM_TXT FROM   STHDSN6.TENGRA2.BACCT_HIST_DATA B WHERE  B.BACCT_PARTN_ID =:BACCT_PARTN_ID AND    B.BACCT_OID =:BACCT_OID AND    B.INTVL_START_DATE = (SELECT   MAX(INTVL_START_DATE) FROM    STHDSN6.TENGRA2.BACCT_HIST_DATA WHERE  BACCT_PARTN_ID= B.BACCT_PARTN_ID AND    BACCT_OID= B.BACCT_OID)",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "fks07",
  "owner": "COMINAT5",
  "validate": "BIND",
  "description": "fks07 based on  BACCT_OID and BACCT_PARTN_ID ",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}



curl -X GET http://131.116.44.144:1316/services/SYSIBMSERVICE/fks07/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq


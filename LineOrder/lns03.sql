--lns03
SELECT     A.INTVL_START_DATE, SUBSTR(A.OPER_MODUL_DATA,33,35) AS OPER_MODUL_DATA_FIRST , SUBSTR(A.OPER_MODUL_DATA,1,32) AS OPER_MODUL_DATA_SEC , A.CNUM_GRP_ID, A.CNUM_GRP_NAME, A.CUST_EDI_LOC_NM,CAST(A.CNUM_TYPCD AS VARCHAR(14) FOR SBCS DATA) AS CNUM_TYPCD, CAST(A.SECRET_A_NM_IND AS VARCHAR(14) FOR SBCS DATA) AS SECRET_A_NM_IND, A.OCC_ASSOC_IND FROM        STHDSN6.TENGRA2.CNUM_HIST_DATA A WHERE       A.CURR_CUST_PARTN_ID=:CURR_CUST_PARTN_ID AND         A.CNUM_OID =:CNUM_OID ORDER BY 1




{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT     A.INTVL_START_DATE, SUBSTR(A.OPER_MODUL_DATA,33,35) AS OPER_MODUL_DATA_FIRST , SUBSTR(A.OPER_MODUL_DATA,1,32) AS OPER_MODUL_DATA_SEC , A.CNUM_GRP_ID, A.CNUM_GRP_NAME, A.CUST_EDI_LOC_NM,CAST(A.CNUM_TYPCD AS VARCHAR(14) FOR SBCS DATA) AS CNUM_TYPCD, CAST(A.SECRET_A_NM_IND AS VARCHAR(14) FOR SBCS DATA) AS SECRET_A_NM_IND, A.OCC_ASSOC_IND FROM        STHDSN6.TENGRA2.CNUM_HIST_DATA A WHERE       A.CURR_CUST_PARTN_ID=:CURR_CUST_PARTN_ID AND         A.CNUM_OID =:CNUM_OID ORDER BY 1",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "lns03",
  "owner": "COMINAT5",
  "validate": "BIND",
  "description": "lns03 based on CURR_CUST_PARTN_ID ,CNUM_OID ",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}

60597476--cnumoid
6658509--currcustoid

curl -X GET http://131.116.44.144:1316/services/SYSIBMSERVICE/lns03/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq

--des02--to get area details.

SELECT DISTINCT A.INTVL_START_DATE, A.INTVL_STOP_DATE, CAST(SUBSTR(A.SEL_AREA_VL,1,6)AS VARCHAR(14) FOR SBCS DATA) CONCAT C.DSCR_TXT AS COUNTRY, CAST(A.AREA_TYPIND AS VARCHAR(14) FOR SBCS DATA) AS AREA_TYPIND FROM STHDSN6.TENGRA2.SLCT_AREA_DATA A, STHDSN6.TENGRA2.CUST_ID_HIST_DATA B, STHDSN6.TENGRA2.CTRY_GP_TRM_TABL C WHERE CAST( B.CUST_ID  AS VARCHAR(14) FOR SBCS DATA) =:CUST_ID AND A.CUST_PARTN_ID = B.CUST_PARTN_ID AND A.SBSCT_CUST_OID = B.CUST_OID AND A.SBSCT_ID =:SBSCT_ID AND A.AREA_TYPIND = 'L' AND C.LAND_ID = DECIMAL(A.SEL_AREA_VL) UNION SELECT A.INTVL_START_DATE, A.INTVL_STOP_DATE, CAST( A.SEL_AREA_VL AS VARCHAR(14) FOR SBCS DATA)   AS COUNTRY, CAST( A.AREA_TYPIND AS VARCHAR(14) FOR SBCS DATA) AS AREA_TYPIND FROM STHDSN6.TENGRA2.SLCT_AREA_DATA A, STHDSN6.TENGRA2 .CUST_ID_HIST_DATA B WHERE CAST( B.CUST_ID  AS VARCHAR(14) FOR SBCS DATA)=:CUST_ID AND A.CUST_PARTN_ID = B.CUST_PARTN_ID AND A.SBSCT_CUST_OID= B.CUST_OID AND A.SBSCT_ID =:SBSCT_ID AND A.AREA_TYPIND != 'L' ORDER BY INTVL_START_DATE DESC,COUNTRY



{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT DISTINCT A.INTVL_START_DATE, A.INTVL_STOP_DATE, CAST(SUBSTR(A.SEL_AREA_VL,1,6)AS VARCHAR(14) FOR SBCS DATA) CONCAT C.DSCR_TXT AS COUNTRY, CAST(A.AREA_TYPIND AS VARCHAR(14) FOR SBCS DATA) AS AREA_TYPIND FROM STHDSN6.TENGRA2.SLCT_AREA_DATA A, STHDSN6.TENGRA2.CUST_ID_HIST_DATA B, STHDSN6.TENGRA2.CTRY_GP_TRM_TABL C WHERE CAST( B.CUST_ID  AS VARCHAR(14) FOR SBCS DATA) =:CUST_ID AND A.CUST_PARTN_ID = B.CUST_PARTN_ID AND A.SBSCT_CUST_OID = B.CUST_OID AND A.SBSCT_ID =:SBSCT_ID AND A.AREA_TYPIND = 'L' AND C.LAND_ID = DECIMAL(A.SEL_AREA_VL) UNION SELECT A.INTVL_START_DATE, A.INTVL_STOP_DATE, CAST( A.SEL_AREA_VL AS VARCHAR(14) FOR SBCS DATA)   AS COUNTRY, CAST( A.AREA_TYPIND AS VARCHAR(14) FOR SBCS DATA) AS AREA_TYPIND FROM STHDSN6.TENGRA2.SLCT_AREA_DATA A, STHDSN6.TENGRA2 .CUST_ID_HIST_DATA B WHERE CAST( B.CUST_ID  AS VARCHAR(14) FOR SBCS DATA)=:CUST_ID AND A.CUST_PARTN_ID = B.CUST_PARTN_ID AND A.SBSCT_CUST_OID= B.CUST_OID AND A.SBSCT_ID =:SBSCT_ID AND A.AREA_TYPIND != 'L' ORDER BY INTVL_START_DATE DESC,COUNTRY",
  "collectionID": "SYSIBMSERVICE",
  "owner": "COMINAT5",
  "validate": "BIND",
  "serviceName": "des02",
  "description": "des02 based on CUST_ID AND SBSCT_ID",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}
--
curl -X GET http://131.116.44.144:1316/services/SYSIBMSERVICE/des02/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq
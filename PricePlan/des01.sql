
"SELECT         A.INTVL_START_DATE,              
               A.INTVL_STOP_DATE,               
               A.BEGIN_POINT_VL,                
               A.END_POINT_VL,                  
               A.POINT_VL_LEN                   
FROM          """"!!tbowner!!"""".SLCT_DEST_DATA A,   
              """"!!tbowner!!"""".CUST_ID_HIST_DATA B 
WHERE          B.CUST_ID = '""""!!sagreecustid!!""""' 
AND            A.CUST_PARTN_ID = B.CUST_PARTN_ID
AND            A.SBSCT_CUST_OID = B.CUST_OID    
AND            A.SBSCT_ID = """"!!ssbsctid!!""""        
ORDER BY INTVL_START_DATE DESC                  "
--CREATED  SUCCESSFULLY
--des01--to get destination details.
SELECT A.INTVL_START_DATE, A.INTVL_STOP_DATE,CAST(A.BEGIN_POINT_VL AS VARCHAR(14) FOR SBCS DATA) AS BEGIN_POINT_VL,CAST(A.END_POINT_VL AS VARCHAR(14) FOR SBCS DATA) AS  END_POINT_VL, A.POINT_VL_LEN FROM STHDSN6.TENGRA2.SLCT_DEST_DATA A, STHDSN6.TENGRA2.CUST_ID_HIST_DATA B WHERE  CAST( B.CUST_ID  AS VARCHAR(14) FOR SBCS DATA) =:CUST_ID AND A.CUST_PARTN_ID = B.CUST_PARTN_ID AND A.SBSCT_CUST_OID = B.CUST_OID AND A.SBSCT_ID =:SBSCT_ID ORDER BY A.INTVL_START_DATE DESC


{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT A.INTVL_START_DATE, A.INTVL_STOP_DATE,CAST(A.BEGIN_POINT_VL AS VARCHAR(14) FOR SBCS DATA) AS BEGIN_POINT_VL,CAST(A.END_POINT_VL AS VARCHAR(14) FOR SBCS DATA) AS  END_POINT_VL, A.POINT_VL_LEN FROM STHDSN6.TENGRA2.SLCT_DEST_DATA A, STHDSN6.TENGRA2.CUST_ID_HIST_DATA B WHERE  CAST( B.CUST_ID  AS VARCHAR(14) FOR SBCS DATA) =:CUST_ID AND A.CUST_PARTN_ID = B.CUST_PARTN_ID AND A.SBSCT_CUST_OID = B.CUST_OID AND A.SBSCT_ID =:SBSCT_ID ORDER BY A.INTVL_START_DATE DESC",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "des01",
  "owner": "COMINAT5",
  "validate": "BIND",
  "description": "des01 based on CUST_ID and SBSCT_ID ",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}


{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT A.INTVL_START_DATE, A.INTVL_STOP_DATE, A.BEGIN_POINT_VL, A.END_POINT_VL, A.POINT_VL_LEN FROM STHDSN6.TENGRA2.SLCT_DEST_DATA A, STHDSN6.TENGRA2.CUST_ID_HIST_DATA B WHERE CAST(B.CUST_ID AS BIT FOR VARCHAR(14))=:CUST_ID AND A.CUST_PARTN_ID = B.CUST_PARTN_ID AND A.SBSCT_CUST_OID = B.CUST_OID AND A.SBSCT_ID =:SBSCT_ID ORDER BY INTVL_START_DATE DESC",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "des01",
  "owner": "COMINAT5",
  "validate": "BIND",
  "description": "des01 based on CUST_ID and SBSCT_ID ",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}
--55WVYY4309

curl -X POST \
http://131.116.44.144:1316/services/SYSIBMSERVICE/des01/V1 \
-H 'accept: application/json'   \
-H 'Content-Type: application/json' \
-u a472inb:INblatS2 \
-d '{
    "SBSCT_ID": "2",
    "CUST_ID": "E0XXYY80680"
}' | jq

curl -X POST \
http://131.116.44.144:1316/services/SYSIBMSERVICE/pp0001/V1 \
-H 'accept: application/json'   \
-H 'Content-Type: application/json' \
-u a472inb:INblatS2 \
-d '{
    "CUST_PARTN_ID": "3",
    "SBSCT_CUST_OID": "+5889231"
}' | jq

curl -X GET http://131.116.44.144:1316/services/SYSIBMSERVICE/des01/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq



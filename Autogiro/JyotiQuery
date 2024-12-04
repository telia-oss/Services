
SELECT    1                                              ",                 
"   FROM      "!!tbowner!!".CUSTOMER_DATA A,                 ",                 
"             "!!tbowner!!".CUST_HIST_DATA B                 ",                 
"   WHERE     A.PRSON_ORG_NM = '"!!sprsonorgnumber!!"'       ",                 
"   AND       B.CUST_PARTN_ID = A.CUST_PARTN_ID              ",                 
"   AND       B.CUST_OID = A.CUST_OID                        ",                 
"   AND       B.INTVL_START_DATE =                           ",                 
"             (SELECT MAX(INTVL_START_DATE)                  ",                 
"   FROM      "!!tbowner!!".CUST_HIST_DATA                   ",                 
"   WHERE     CUST_PARTN_ID = B.CUST_PARTN_ID                ",                 
"   AND       CUST_OID = B.CUST_OID)                         ",                 
"   AND       B.CUST_CATLG_COD = 'D'                         ",                 
"   FOR FETCH ONLY; 
SELECT 1 FROM STHDSN6.TENGRA2.CUSTOMER_DATA A,STHDSN6.TENGRA2.CUST_HIST_DATA B WHERE CAST(A.PRSON_ORG_NM AS VARCHAR(10) FOR SBCS DATA) =: PRSON_ORG_NM AND B.CUST_PARTN_ID = A.CUST_PARTN_ID AND B.CUST_OID = A.CUST_OID AND B.INTVL_START_DATE = (SELECT MAX(INTVL_START_DATE) FROM STHDSN6.TENGRA2.CUST_HIST_DATA WHERE CUST_PARTN_ID = B.CUST_PARTN_ID AND CUST_OID =B.CUST_OID) AND B.CUST_CATLG_COD = 'D'


--this is pending because of like keyword
SELECT ANSLUTNINGSID FROM  STHDSN6.TENGRA2.FGT0100 WHERE ANSLUTNINGSID=:ANSLUTNINGSID UNION SELECT 1 FROM  STHDSN6.TENGRA2.FGT0900 WHERE ANSLUTNINGSID=: ANSLUTNINGSID
--In case we above query don’t return anything run below validation query:

SELECT ANSLUTNINGSID FROM  STHDSN6.TENGRA2.FGT0100 WHERE ANSLUTNINGSID LIKE '%ANSLUTNINGSID%' UNION SELECT 1 FROM  STHDSN6.TENGRA2.FGT0900 WHERE ANSLUTNINGSID LIKE '%ANSLUTNINGSID%'
--validationg of connection id
{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT ANSLUTNINGSID FROM STHDSN6.TENA2.FGT0100 WHERE ANSLUTNINGSID =:ANSLUTNINGSID UNION SELECT ANSLUTNINGSID FROM  STHDSN6.TENA2.FGT0900 WHERE ANSLUTNINGSID =:ANSLUTNINGSID",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "auto01",
  "description": "auto01 with ANSLUTNINGSID",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}
----failed with like
{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT ANSLUTNINGSID FROM  STHDSN6.TENGRA2.FGT0100 WHERE ANSLUTNINGSID LIKE '%ANSLUTNINGSID%' UNION SELECT ANSLUTNINGSID FROM  STHDSN6.TENGRA2.FGT0900 WHERE ANSLUTNINGSID LIKE '%ANSLUTNINGSID%'",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "auto02",
  "description": "auto02 with ANSLUTNINGSID",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}



--Billing account validation:
SELECT ANSLUTNINGSID
FROM  "!!tbowner!!".FGT0200
WHERE  FAKTKTO = '"!!sfaktkto_t!!"'
UNION
SELECT ANSLUTNINGSID
FROM  "!!tbowner!!".FGT1000        
WHERE  FAKTKTO = '"!!sfaktkto_t!!"'
--
SELECT ANSLUTNINGSID FROM  STHDSN6.TENGRA2.FGT0200 WHERE  FAKTKTO = : FAKTKTO UNION SELECT ANSLUTNINGSIDFROM  STHDSN6.TENGRA2.FGT1000 WHERE  FAKTKTO = : FAKTKTO
--auto03
{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT ANSLUTNINGSID , (select 1 from sysibm.sysdummy1) AS STATUS FROM  STHDSN6.TENA2.FGT0200 WHERE  FAKTKTO =:FAKTKTO UNION SELECT ANSLUTNINGSID, (select 0 from sysibm.sysdummy1) AS STATUS FROM  STHDSN6.TENA2.FGT1000 WHERE  FAKTKTO =:FAKTKTO",
  "collectionID": "SYSIBMSERVICE",
  "OWNER": "COMINAT5",
  "VALIDATE": "BIND",
  "serviceName": "auto03",
  "description": "auto03 with FAKTKTO",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}
curl -X 'POST'  \
'http://131.116.44.144:1316/services/DB2ServiceManager'  \
-H 'accept: application/json'   \
-H 'Content-Type: application/json' \
-u a472inb:INblatS2 \
-d '{
"requestType": "createService",
"sqlStmt": "SELECT ANSLUTNINGSID , (select 1 from sysibm.sysdummy1) AS STATUS FROM  STHDSN6.TENA2.FGT0200 WHERE  FAKTKTO =:FAKTKTO UNION SELECT ANSLUTNINGSID, (select 0 from sysibm.sysdummy1) AS STATUS FROM  STHDSN6.TENA2.FGT1000 WHERE  FAKTKTO =:FAKTKTO",
"serviceName": "auto03",
  "OWNER": "COMINAT5",
  "VALIDATE": "BIND",
"description": "auto03 based on  FAKTKTO"
}'
curl -X GET http://131.116.44.144:1316/services/SYSIBMSERVICE/auto03/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq

---Search on connection id


--auto04//fetch billing account details
SELECT A.GIROTYP, A.ANSLUTNINGSID, A.ANSLUT_DATUM, A.AVSLUT_DATUM, A.PERSONNR, A.STATUSKOD, A.BEVAK_MARKERING, A.MEDDELANDE_MARK, A.LEV_SYSTEM, DATE('9999-12-31') AS CONN_HIST_DATE, B.FAKTKTO, DATE('9999-12-31') AS BACT_STOP_DATE FROM  TENA2.FGT0100 A LEFT JOIN TENA2.FGT0200  B ON B.ANSLUTNINGSID = A.ANSLUTNINGSID WHERE  A.ANSLUTNINGSID =:ANSLUTNINGSID 

UNION 

SELECT C.GIROTYP, C.ANSLUTNINGSID, C.ANSLUT_DATUM, C.AVSLUT_DATUM, C.PERSONNR, C.STATUSKOD, C.BEVAK_MARKERING, C.MEDDELANDE_MARK, C.LEV_SYSTEM, DATE(C.HIST_DATUM) AS CONN_HIST_DATE, D.FAKTKTO, DATE(D.UPPLDAT) AS BACT_STOP_DATE 
FROM  TENA2.FGT0900 C LEFT JOIN TENA2.FGT1000 D ON D.ANSLUTNINGSID = C.ANSLUTNINGSID
 WHERE  C.ANSLUTNINGSID =:ANSLUTNINGSID
 

 

curl -X 'POST'  \
'http://131.116.44.144:1316/services/DB2ServiceManager'  \
-H 'accept: application/json'   \
-H 'Content-Type: application/json' \
-u a472inb:INblatS2 \
-d '{
"requestType": "createService",
"sqlStmt": "SELECT A.GIROTYP, A.ANSLUTNINGSID, A.ANSLUT_DATUM, A.AVSLUT_DATUM, A.PERSONNR, A.STATUSKOD, A.BEVAK_MARKERING, A.MEDDELANDE_MARK, A.LEV_SYSTEM, DATE('9999-12-31') AS CONN_HIST_DATE, B.FAKTKTO, DATE('9999-12-31') AS BACT_HIST_DATE FROM  TENA2.FGT0100 A LEFT JOIN TENA2.FGT0200  B ON B.ANSLUTNINGSID = A.ANSLUTNINGSID WHERE  A.ANSLUTNINGSID =:ANSLUTNINGSID UNION SELECT C.GIROTYP, C.ANSLUTNINGSID, C.ANSLUT_DATUM, C.AVSLUT_DATUM, C.PERSONNR, C.STATUSKOD, C.BEVAK_MARKERING, C.MEDDELANDE_MARK, C.LEV_SYSTEM, DATE(C.HIST_DATUM) AS CONN_HIST_DATE, D.FAKTKTO, DATE(D.UPPLDAT) AS BACT_HIST_DATE FROM  TENA2.FGT0900 C LEFT JOIN TENA2.FGT1000 D ON D.ANSLUTNINGSID = C.ANSLUTNINGSID WHERE  C.ANSLUTNINGSID =:ANSLUTNINGSID",
"serviceName": "auto04",
  "OWNER": "COMINAT5",
  "VALIDATE": "BIND",
"description": "auto04 based on  ANSLUTNINGSID"
}'
{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT A.GIROTYP, A.ANSLUTNINGSID, A.ANSLUT_DATUM, A.AVSLUT_DATUM, A.PERSONNR, A.STATUSKOD, A.BEVAK_MARKERING, A.MEDDELANDE_MARK, A.LEV_SYSTEM, DATE('9999-12-31') AS CONN_HIST_DATE, B.FAKTKTO, DATE('9999-12-31') AS BACT_HIST_DATE FROM  TENA2.FGT0100 A LEFT JOIN TENA2.FGT0200  B ON B.ANSLUTNINGSID = A.ANSLUTNINGSID WHERE  A.ANSLUTNINGSID =:ANSLUTNINGSID UNION SELECT C.GIROTYP, C.ANSLUTNINGSID, C.ANSLUT_DATUM, C.AVSLUT_DATUM, C.PERSONNR, C.STATUSKOD, C.BEVAK_MARKERING, C.MEDDELANDE_MARK, C.LEV_SYSTEM, DATE(C.HIST_DATUM) AS CONN_HIST_DATE, D.FAKTKTO, DATE(D.UPPLDAT) AS BACT_HIST_DATE FROM  TENA2.FGT0900 C LEFT JOIN TENA2.FGT1000 D ON D.ANSLUTNINGSID = C.ANSLUTNINGSID WHERE  C.ANSLUTNINGSID =:ANSLUTNINGSID",
  "collectionID": "SYSIBMSERVICE",
   "owner": "COMINAT5",
  "validate": "BIND",
  "serviceName": "auto04",
  "description": "auto04 based on ANSLUTNINGSID",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}
----

---Invoice details

SELECT FAKTURANR,                      		Invoice number on screen
       FFDATUM,                        			Invoice sent date on screen
       STATUSKOD                       			Invoice status on screen
FROM  "!!tbowner!!".FGT0400           
 WHERE  FAKTURAKTO = '"!!sfaktkto_t!!"'
        FOR FETCH ONLY;                

SELECT FAKTURANR,FFDATUM,STATUSKOD FROM  STHDSN6.TENGRA2.FGT0400 WHERE  FAKTURAKTO =:FAKTURAKTO
  --auto05                  
{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT FAKTURANR,FFDATUM,STATUSKOD FROM  STHDSN6.TENA2.FGT0400 WHERE  FAKTURAKTO =:FAKTURAKTO",
  "collectionID": "SYSIBMSERVICE",
  "owner": "COMINAT5",
  "validate": "BIND",
  "serviceName": "auto05",
  "description": "auto05 with FAKTURAKTO",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}


-Queries --auto06
--does user inputs billing account or its only popoulated based on connection id -Reason the query provided has only connection id
--does other fields same for all the billing account against connection id other than invoice details

SELECT A.GIROTYP, A.ANSLUTNINGSID, B.FAKTKTO, A.ANSLUT_DATUM, A.AVSLUT_DATUM, A.PERSONNR, A.STATUSKOD, A.BEVAK_MARKERING, A.MEDDELANDE_MARK, A.LEV_SYSTEM, DATE('9999-12-31') AS CONN_HIST_DATE, DATE('9999-12-31') AS BACT_HIST_DATE FROM  STHDSN6.TENA2.FGT0200  B, STHDSN6.TENA2.FGT0100 A WHERE A.ANSLUTNINGSID = B.ANSLUTNINGSID AND B. FAKTKTO = :FAKTKTO AND      B.ANSLUTNINGSID =:ANSLUTNINGSID UNION SELECT C.GIROTYP, C.ANSLUTNINGSID, D.FAKTKTO, C.ANSLUT_DATUM, C.AVSLUT_DATUM, C.PERSONNR, C.STATUSKOD, C.BEVAK_MARKERING, C.MEDDELANDE_MARK, C.LEV_SYSTEM, DATE(C.HIST_DATUM) AS CONN_HIST_DATE , DATE(D.UPPLDAT) AS BACT_HIST_DATE FROM  STHDSN6.TENA2.FGT1000 D, STHDSN6.TENA2.FGT0900 C WHERE C.ANSLUTNINGSID = D.ANSLUTNINGSID AND D.FAKTKTO =:FAKTKTO AND D.ANSLUTNINGSID =:ANSLUTNINGSID

{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT A.GIROTYP, A.ANSLUTNINGSID, B.FAKTKTO, A.ANSLUT_DATUM, A.AVSLUT_DATUM, A.PERSONNR, A.STATUSKOD, A.BEVAK_MARKERING, A.MEDDELANDE_MARK, A.LEV_SYSTEM, DATE('9999-12-31') AS CONN_HIST_DATE, DATE('9999-12-31') AS BACT_HIST_DATE FROM  STHDSN6.TENA2.FGT0200  B, STHDSN6.TENA2.FGT0100 A WHERE A.ANSLUTNINGSID = B.ANSLUTNINGSID AND B. FAKTKTO = :FAKTKTO AND      B.ANSLUTNINGSID =:ANSLUTNINGSID UNION SELECT C.GIROTYP, C.ANSLUTNINGSID, D.FAKTKTO, C.ANSLUT_DATUM, C.AVSLUT_DATUM, C.PERSONNR, C.STATUSKOD, C.BEVAK_MARKERING, C.MEDDELANDE_MARK, C.LEV_SYSTEM, DATE(C.HIST_DATUM) AS CONN_HIST_DATE , DATE(D.UPPLDAT) AS BACT_HIST_DATE FROM  STHDSN6.TENA2.FGT1000 D, STHDSN6.TENA2.FGT0900 C WHERE C.ANSLUTNINGSID = D.ANSLUTNINGSID AND D.FAKTKTO =:FAKTKTO AND D.ANSLUTNINGSID =:ANSLUTNINGSID",
  "collectionID": "SYSIBMSERVICE",
  "owner": "COMINAT5",
  "validate": "BIND",
  "serviceName": "auto06",
  "description": "auto06 with ANSLUTNINGSID and FAKTKTO",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}
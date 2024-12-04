SELECT   DISTINCT LEFT(A.TRT_VL,30), A.EFFEC_DATE FROM             STHDSN6.TENGRA2.ASGND_TRT_TABL A WHERE             A.ASOC_ID =:ASOC_ID AND               A.TRT_ID = 32120 AND               A.EFFEC_DATE <> 9999999 AND               A.EFFEC_DATE = (SELECT MAX(AA.EFFEC_DATE) FROM  STHDSN6.TENGRA2.ASGND_TRT_TABL AA WHERE AA.ASOC_ID = A.ASOC_ID AND AA.EFFEC_DATE <> 9999999) AND    LEFT(A.TRT_VL,2) NOT IN ('xy','XY','Xy','xY') ORDER BY A.EFFEC_DATE DESC

//currently on server

{
  "dburl": "http://131.116.44.144:1316/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "requestType": "createService",
  "sqlStmt":"SELECT   DISTINCT LEFT(A.TRT_VL,30), A.EFFEC_DATE FROM             STHDSN6.TENGRA2.ASGND_TRT_TABL A WHERE             A.ASOC_ID =:ASOC_ID AND               A.TRT_ID = 32120 AND               A.EFFEC_DATE <> 9999999 AND               A.EFFEC_DATE = (SELECT MAX(AA.EFFEC_DATE) FROM  STHDSN6.TENGRA2.ASGND_TRT_TABL AA WHERE AA.ASOC_ID = A.ASOC_ID AND AA.EFFEC_DATE <> 9999999) AND      LEFT(A.TRT_VL,2) !=:xy AND    LEFT(A.TRT_VL,2) !=:XY AND    LEFT(A.TRT_VL,2) !=:Xy AND    LEFT(A.TRT_VL,2) !=:xY ORDER BY A.EFFEC_DATE DESC",
  "serviceName": "avs023",
  "description": "avs023 ASOC_ID",
  "collectionID": "SYSIBMSERVICE",
  "owner": "COMINAT5",
  "validate": "BIND",
  "version": "V1",
  "response": ""
}
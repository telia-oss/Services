SELECT   DISTINCT LEFT(A.TRT_VL,30), A.EFFEC_DATE FROM             STHDSN1.TICGRP1.ASGND_TRT_TABL A WHERE             A.ASOC_ID =:ASOC_ID AND               A.TRT_ID = 32120 AND               A.EFFEC_DATE <> 9999999 AND               A.EFFEC_DATE = (SELECT MAX(AA.EFFEC_DATE) FROM  STHDSN1.TICGRP1.ASGND_TRT_TABL AA WHERE AA.ASOC_ID = A.ASOC_ID AND AA.EFFEC_DATE <> 9999999) AND    LEFT(A.TRT_VL,2) NOT IN ('xy','XY','Xy','xY') ORDER BY A.EFFEC_DATE DESC

SELECT   DISTINCT LEFT(A.TRT_VL,30), A.EFFEC_DATE FROM             STHDSN1.TICGRP1.ASGND_TRT_TABL A WHERE             A.ASOC_ID =:ASOC_ID AND               A.TRT_ID = 32120 AND               A.EFFEC_DATE <> 9999999 AND               A.EFFEC_DATE = (SELECT MAX(AA.EFFEC_DATE) FROM  STHDSN1.TICGRP1.ASGND_TRT_TABL AA WHERE AA.ASOC_ID = A.ASOC_ID AND AA.EFFEC_DATE <> 9999999) AND    LEFT(A.TRT_VL,2) !=:xy AND    LEFT(A.TRT_VL,2) !=:XY AND    LEFT(A.TRT_VL,2) !=:Xy AND    LEFT(A.TRT_VL,2) !=:xY ORDER BY A.EFFEC_DATE DESC --NOT IN ('xy','XY','Xy','xY') 

//currently on server

{
  "dburl": "http://131.116.44.152:1317/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "requestType": "createService",
  "sqlStmt":"SELECT   DISTINCT LEFT(A.TRT_VL,30), A.EFFEC_DATE FROM             STHDSN1.TICGRP1.ASGND_TRT_TABL A WHERE             A.ASOC_ID =:ASOC_ID AND               A.TRT_ID = 32120 AND               A.EFFEC_DATE <> 9999999 AND               A.EFFEC_DATE = (SELECT MAX(AA.EFFEC_DATE) FROM  STHDSN1.TICGRP1.ASGND_TRT_TABL AA WHERE AA.ASOC_ID = A.ASOC_ID AND AA.EFFEC_DATE <> 9999999) AND    LEFT(A.TRT_VL,2) !=:xy AND    LEFT(A.TRT_VL,2) !=:XY AND    LEFT(A.TRT_VL,2) !=:Xy AND    LEFT(A.TRT_VL,2) !=:xY ORDER BY A.EFFEC_DATE DESC ",
  "serviceName": "avs023",
  "description": "avs023 ASOC_ID",
  "collectionID": "SYSIBMSERVICE",
  "owner": "COMINAT5",
  "validate": "BIND",
  "version": "V1",
  "response": ""
}

curl -X GET http://131.116.44.152:1317/services/SYSIBMSERVICE/ans023/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq
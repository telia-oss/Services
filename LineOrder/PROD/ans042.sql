--ans042:
SELECT   A.CURR_CNUM_ID, A.CURR_INSTN_OID, A.CURR_INSLC_OID, A.CNUM_OID,CAST(A.INST_NUM_IND AS VARCHAR(14) FOR SBCS DATA) AS  INST_NUM_IND, B.LINE_CT FROM    STHDSN1.TICGRP1.CNUM_DATA A, STHDSN1.TICGRP1.CNUM_HIST_DATA  B, STHDSN1.TICGRP1.CNUM_ID_HIST_DATA  C WHERE   CAST(  C.CNUM_ID  AS VARCHAR(14) FOR SBCS DATA) =:CNUM_ID AND     C.INTVL_START_DATE = (SELECT MAX(INTVL_START_DATE) FROM STHDSN1.TICGRP1.CNUM_ID_HIST_DATA WHERE CURR_CUST_PARTN_ID = C.CURR_CUST_PARTN_ID AND CNUM_OID = C.CNUM_OID) AND     B.CURR_CUST_OID =:CURR_CUST_OID AND     B.CNUM_OID = C.CNUM_OID AND     B.INTVL_START_DATE = (SELECT MAX(INTVL_START_DATE) FROM STHDSN1.TICGRP1.CNUM_HIST_DATA WHERE CURR_CUST_PARTN_ID = B.CURR_CUST_PARTN_ID AND CNUM_OID = B.CNUM_OID) AND     (B.CNUM_OID=B.OWN_CNUM_OID OR B.OWN_CNUM_OID=0) AND     A.CURR_CUST_PARTN_ID = B.CURR_CUST_PARTN_ID AND     A.CNUM_OID = B.CNUM_OID AND ( EXISTS ( SELECT 1 FROM STHDSN1.TICGRP1.GUIDE_RULE_DATA BB WHERE BB.GDRL_LVL_USE_IND = 'H' AND BB.GDRL_ENT_OID = A.CNUM_OID AND BB.BACCT_PARTN_ID =:BACCT_PARTN_ID AND BB.BACCT_OID =:BACCT_OID ) OR EXISTS ( SELECT 1 FROM STHDSN1.TICGRP1.RECUR_ITEM_DATA CC, STHDSN1.TICGRP1.RCUR_ITM_AHST_DATA CCC WHERE CC.RLTD_ENT_IND = 'H' AND CC.RLTD_CUST_OID = A.CURR_CUST_OID AND CC.RLTD_INSTN_OID = A.CURR_INSTN_OID AND CC.RLTD_INSLC_OID = A.CURR_INSLC_OID AND CC.RLTD_CNUM_OID = A.CNUM_OID AND CCC.BLLITM_OID = CC.BLLITM_OID AND CCC.BACCT_OID =:BACCT_OID ) OR EXISTS ( SELECT 1 FROM STHDSN1.TICGRP1.MISC_BLLITM_DATA DD WHERE DD.RLTD_ENT_IND = 'H' AND DD.RLTD_CUST_OID = A.CURR_CUST_OID AND DD.RLTD_INSTN_OID = A.CURR_INSTN_OID AND DD.RLTD_INSLC_OID = A.CURR_INSLC_OID AND DD.RLTD_CNUM_OID = A.CNUM_OID AND DD.BACCT_PARTN_ID =:BACCT_PARTN_ID AND DD.BACCT_OID =:BACCT_OID ) ) ORDER BY A.CURR_CNUM_ID ASC, A.INTVL_STRTDT DESC






{
  "dburl": "http://131.116.44.152:1317/services/DB2ServiceManager",
  "username": "a472inb",
  "password": "INblatS2",
  "sqlStmt": "SELECT   A.CURR_CNUM_ID, A.CURR_INSTN_OID, A.CURR_INSLC_OID, A.CNUM_OID,CAST(A.INST_NUM_IND AS VARCHAR(14) FOR SBCS DATA) AS  INST_NUM_IND, B.LINE_CT FROM    STHDSN1.TICGRP1.CNUM_DATA A, STHDSN1.TICGRP1.CNUM_HIST_DATA  B, STHDSN1.TICGRP1.CNUM_ID_HIST_DATA  C WHERE   CAST(  C.CNUM_ID  AS VARCHAR(14) FOR SBCS DATA) =:CNUM_ID AND     C.INTVL_START_DATE = (SELECT MAX(INTVL_START_DATE) FROM STHDSN1.TICGRP1.CNUM_ID_HIST_DATA WHERE CURR_CUST_PARTN_ID = C.CURR_CUST_PARTN_ID AND CNUM_OID = C.CNUM_OID) AND     B.CURR_CUST_OID =:CURR_CUST_OID AND     B.CNUM_OID = C.CNUM_OID AND     B.INTVL_START_DATE = (SELECT MAX(INTVL_START_DATE) FROM STHDSN1.TICGRP1.CNUM_HIST_DATA WHERE CURR_CUST_PARTN_ID = B.CURR_CUST_PARTN_ID AND CNUM_OID = B.CNUM_OID) AND     (B.CNUM_OID=B.OWN_CNUM_OID OR B.OWN_CNUM_OID=0) AND     A.CURR_CUST_PARTN_ID = B.CURR_CUST_PARTN_ID AND     A.CNUM_OID = B.CNUM_OID AND ( EXISTS ( SELECT 1 FROM STHDSN1.TICGRP1.GUIDE_RULE_DATA BB WHERE BB.GDRL_LVL_USE_IND = 'H' AND BB.GDRL_ENT_OID = A.CNUM_OID AND BB.BACCT_PARTN_ID =:BACCT_PARTN_ID AND BB.BACCT_OID =:BACCT_OID ) OR EXISTS ( SELECT 1 FROM STHDSN1.TICGRP1.RECUR_ITEM_DATA CC, STHDSN1.TICGRP1.RCUR_ITM_AHST_DATA CCC WHERE CC.RLTD_ENT_IND = 'H' AND CC.RLTD_CUST_OID = A.CURR_CUST_OID AND CC.RLTD_INSTN_OID = A.CURR_INSTN_OID AND CC.RLTD_INSLC_OID = A.CURR_INSLC_OID AND CC.RLTD_CNUM_OID = A.CNUM_OID AND CCC.BLLITM_OID = CC.BLLITM_OID AND CCC.BACCT_OID =:BACCT_OID ) OR EXISTS ( SELECT 1 FROM STHDSN1.TICGRP1.MISC_BLLITM_DATA DD WHERE DD.RLTD_ENT_IND = 'H' AND DD.RLTD_CUST_OID = A.CURR_CUST_OID AND DD.RLTD_INSTN_OID = A.CURR_INSTN_OID AND DD.RLTD_INSLC_OID = A.CURR_INSLC_OID AND DD.RLTD_CNUM_OID = A.CNUM_OID AND DD.BACCT_PARTN_ID =:BACCT_PARTN_ID AND DD.BACCT_OID =:BACCT_OID ) ) ORDER BY A.CURR_CNUM_ID ASC, A.INTVL_STRTDT DESC",
  "collectionID": "SYSIBMSERVICE",
  "serviceName": "ans042",
  "owner": "COMINAT5",
  "validate": "BIND",
  "description": "ans042 based on CNUM_ID and CURR_CUST_OID",
  "requestType": "createService",
  "version": "V1",
  "response": ""
}

60597476--cnumoid
6658509--currcustoid

curl -X GET http://131.116.44.152:1317/services/SYSIBMSERVICE/ans042/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq



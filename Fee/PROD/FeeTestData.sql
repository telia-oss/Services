04GQGS156 - CNUM Or E0APGS50300 - Bact
08GCCE000 - CNUM or E0APCE06035 - Bact
Anlagging

BLLITM_OID:
101452747
Fees is deployed on ST-(defect fixed for -E0APCA03804,P0AAQG42759)
The billing account E0APCE70725 has more than 100 cumulative count..
E0APCA03804-Asoc msglinetext -fritext incorrect-defect-DONE

fks05ResultSet

E0AATI76831
E0APAC30342
e0aasQ68978
Beo.kod/Prod.besk -Resk-DONE
Per flow-DONE
Promisbeskr-Övr.Per-DONE
Fritext:field-Övr-DONE
Reports-Ovr ens02-DONE
 this.callfks05(bactoid, bactpartid);
sorting to be verified-Per-second table-E0AASQ68978 or E0APCE70725-testing pending
Anlagging on all report-DONE
All fild populate-Testing pending
---------------------------------------------------------
check the sorting-as per the service it is order on stopdate descending, then by startdate in ascending, then by billitem_oid ascending
per_avs08-E0AATA27155    tested-DONE
free text missing for the second last record -DONE
on select some of the queries arent returning result.-DONE
Fritext-in the first table shown incorrectly E0AATR44332-Overovr_avs0831-DONE(need to verfiy if it broke anything else)
E0AATS78039    -count for övr shown incorrectly showing 2 instead of 1-DONE
by default first row to be considerd for fetching the tables for second table-DONE
3 print button functionality-DONE -

----------------------------------------------------------------------------------------------
Hide tables if Ovr and fields on the right-OverAll to be fixed-DONE
Resk
P0AAQG42759-test data
Beo.kod/Prod.besk -need to fix-Clarify?-DONE
1 print button functionality-DONE
---------------------------------------------------------------------------------------------
Övr TODOs-
default selected to be displayed to the right-DONE
Promisbeskr:	field value incoorect
Fritext:field value incoorect
test data for more than 1 count required-Test
avs0842-never tested-TEST-DONE
Annullerade /Aktuella not set-DONE
1 print button functionality-existing doesnt work-DONE
--------------------------------------------------------------------------------------------
https://teams.microsoft.com/l/message/19:0f072403-8f1b-4f09-917b-ba425cd19ed1_cf79e738-51f2-4de5-b4a1-3ae262da539b@unq.gbl.spaces/1729076675835?context=%7B%22contextType%22%3A%22chat%22%7D
Multiple-Per,Övr
E0AATC01096
Över
E0AATR44332-Overovr_avs0831
P0AACG52881-Overovr_avs0831
E0AATA27155-Overovr_avs0841-Overovr_avs0831
P0AAAS63082-Overovr_avs0841-Overovr_avs0831
E0AATS78039-Problem in the first table shpwing 7 instead of 8 (adding to existing so the count is 2)
P0AAQG42759-Overovr_avs0841-Overovr_avs0831
E0APIC43035-Overovr_avs0832
E0APIQ20305-Overovr_avs0832
E0APIQ33690-:Overovr_avs0831 -Nej
--------------------------------------------------------------------------------------
Per bugs-avs081_1’  avs083_1’ ’  avs083’-Untested-avs08 avs082_1
per_avs082-E0AATR44332                     -tested
per_avs081-gives empty result--E0AATS78039     ..second record -Fixed
{
  "dburl": "http://131.116.44.144:1316/services/SYSIBMSERVICE/per_avs081/V1",
  "username": "a472inb",
  "password": "INblatS2",
  "params": {
   "CURR_BACCT_OID": "4675438",
"CURR_CNUM_ID":"11912254",
"RLTD_INSTN_OID":"82091815",
"TCOMITM_CAT_COD":"00021112"
  },
  "response": ""
}

E0AATS78039--bit data fix
<button id="printtax" mat-raised-button class="button" color="primary" (click)="openKontoDialog()">Utskrift Konto </button>
         
---------------------------------------------------------------
per_avs08
per_avs081
per_avs081
AVS081 is giving me 1 row:
Billing account ID - 4675438
TCOMITM_CAT_COD - '00021112'
RLTD_INSTN_OID - 82091815
CURR_CNUM_ID - '08SAEC263'



------------------------------------------------------------------------------------

P0AAQC26994 search for avs0842 -Needs to be tested

-------------------------------------------------------------------------------

avs081_1
CURR_BACCT_OID - 15839661
TCOMITM_CAT_COD - '00004847'
RLTD_INSTN_OID - 83007338
CURR_CNUM_ID - '05PPCA111'
MSG_LINE_TXT - 'Fusion enligt bolagsverket - avslutad 2013-12-11'


{
  "dburl": "http://131.116.44.144:1316/services/SYSIBMSERVICE/per_avs081_1/V1",
  "username": "a472inb",
  "password": "INblatS2",
  "params": {
  "CURR_BACCT_OID": "15839661",
"CURR_CNUM_ID":"05PPCA111",
"RLTD_INSTN_OID":"83007338",
"TCOMITM_CAT_COD":"00004847",
"MSG_LINE_TXT":"Fusion enligt bolagsverket "
  },
  "response": ""
}

O/P

it doesnt call  avs081_1 but per_avs08
{
  "dburl": "http://131.116.44.144:1316/services/SYSIBMSERVICE/per_avs08/V1",
  "username": "a472inb",
  "password": "INblatS2",
  "params": {
   "CURR_BACCT_OID": "15839661",
"RLTD_CNUM_OID":"83007339",
"RLTD_INSTN_OID":"83007338",
"TCOMITM_CAT_COD":"00004847"

  },
  "response": ""
}


------------------------------------------------------------------



---
over_avs0842
{
  "dburl": "http://131.116.44.144:1316/services/SYSIBMSERVICE/ovr_avs0842/V1",
  "username": "a472inb",
  "password": "INblatS2",
  "params": {
  "BACCT_OID": "2595284",
"RLTD_CNUM_OID":"6345141",
"TCOMITM_CAT_COD":"00206525",
"BACCT_PARTN_ID" :"10",
"MSG_LINE_TXT" : "Nummerabonnemang 990923-990930"
  },
  "response": ""
}
------------------------------------------------------------------
avs083:--Query:::::per_avs082 is called(which works fine)
CURR_BACCT_OID - 17124871
TCOMITM_CAT_COD - '00025106'
RLTD_INSTN_OID - 86728191
CURR_CNUM_ID - '08RPAR0179'
{
  "dburl": "http://131.116.44.144:1316/services/SYSIBMSERVICE/per_avs083/V1",
  "username": "a472inb",
  "password": "INblatS2",
  "params": {
  "CURR_BACCT_OID": "17124871",
"CURR_CNUM_ID":"08RPAR0179",
"RLTD_INSTN_OID":"86728191",
"TCOMITM_CAT_COD":"00025106"
  },
  "response": ""
}--returns result


{
  "dburl": "http://131.116.44.144:1316/services/SYSIBMSERVICE/per_avs082/V1",
  "username": "a472inb",
  "password": "INblatS2",
  "params": {
   "CURR_BACCT_OID": "17124871",
"RLTD_CNUM_OID":"86728192",
"RLTD_INSTN_OID":"86728191",
"TCOMITM_CAT_COD":"00025106"

  },
  "response": ""
}

-----------------------------------------------

avs083_1 -Query:::::per_avs082_1 is called(gives empty resultset)
CURR_BACCT_OID - 15265433
TCOMITM_CAT_COD - '00630780'
RLTD_INSTN_OID	- 71443395
CURR_CNUM_ID - 'TS5PPE1132'
MSG_LINE_TXT - 'Telia Smart Företag'
curl -X GET http://131.116.44.144:1316/services/SYSIBMSERVICE/per_avs083_1/V1 -H "Content-Type: application/json" -u a472inb:INblatS2 | jq

{
  "dburl": "http://131.116.44.144:1316/services/SYSIBMSERVICE/per_avs083_1/V1",
  "username": "a472inb",
  "password": "INblatS2",
  "params": {
  "CURR_BACCT_OID": "15265433",
"CURR_CNUM_ID":"TS5PPE1132",
"RLTD_INSTN_OID":"71443395",
"TCOMITM_CAT_COD":"00630780",
"MSG_LINE_TXT" : "Telia Smart Företag"
  },
  "response": ""
}

--gives empty result



{
  "dburl": "http://131.116.44.144:1316/services/SYSIBMSERVICE/per_avs083_1/V1",
  "username": "a472inb",
  "password": "INblatS2",
  "params": {
  "CURR_BACCT_OID": "15265433",
"CURR_CNUM_ID":"TS5PPE1132",
"RLTD_INSTN_OID":"71443395",
"TCOMITM_CAT_COD":"00630780",
"MSG_LINE_TXT" : "Telia Smart Företag                               Bredband Företag: INT-50240174"
  },
  "response": ""
}
------------------------------------

{
  "dburl": "http://131.116.44.144:1316/services/SYSIBMSERVICE/per_avs082_1/V1",
  "username": "a472inb",
  "password": "INblatS2",
  "params": {
   "CURR_BACCT_OID": "12901740",
"RLTD_CNUM_OID":"71443396",
"RLTD_INSTN_OID":"71443395",
"TCOMITM_CAT_COD":"00630783",
"MSG_LINE_TXT":"PAKETAVGIFT         Telia Smart Företag"

  },
  "response": ""
}

CURR_BACCT_OID =
12901740
MSG_LINE_TXT =
'PAKETAVGIFT         Telia Smart Företag'
RLTD_CNUM_OID =
71443396
RLTD_INSTN_OID =
71443395
TCOMITM_CAT_COD =
'00630783'

---
What should be the search param
(Missing 5th param)Missing message text
avs082_1
CURR_BACCT_OID - 15504814
TCOMITM_CAT_COD - '00004847'
RLTD_INSTN_OID - 81125422
RLTD_CNUM_OID - 81125423
Swedavias fastighetsnät ingår

{
  "dburl": "http://131.116.44.144:1316/services/SYSIBMSERVICE/per_avs082_1/V1",
  "username": "a472inb",
  "password": "INblatS2",
  "params": {
   "CURR_BACCT_OID": "15504814",
"RLTD_CNUM_OID":"81125423",
"RLTD_INSTN_OID":"81125422",
"TCOMITM_CAT_COD":"00004847",
"MSG_LINE_TXT":"Swedavias fastighetsnät ingår"

  },
  "response": ""
}




--E0AATR44332--ovr_avs0841-ovr_avs0831 or E0APPE49984 -ovr_avs0841--doesnt not call  - avs0842-

-----------------------------Line order data-----------------------------
INPUT CUSTOMRER ID(Kund-id)
	E0XXXY29676,E0XXYX41868	--	ANS03 -ANS032(if billing account selected)
	E0XXYX41868	   Multiple Anläggning --ANS03 -ANS032(if billing account selected)

INPUT CHARGEABLE NUMBER(Anläggning/Ledning/Order/Serviceärende)
	02ZX17099	--	ANS042
	04ZX10000	Multiple Anläggningshistorik  --Data issue -adress not displayed--ans042(as we get two records against one address id)-Not the prod data
	04ZX95147	Single Anläggning--ans042

INPUT INSTALLATION ID(Anläggnings-id)
	L3XXXX2782	-   Anläggningshistorik is multiple --calls ans022 
	E0XXXY27699	--	calls  ans22

03ZX700000-for pop up
04ZX41717
 -------------------------------------------------------------------------
 Task-OrderService
--ANS01 not yet created-Query not provided yet-DONE
--test empty fields to be verified-Need data
--test when we have multiple Anläggning/Order/Serviceärende
--test with multiple-Need data -DONE for  Anläggning/Order/Serviceärende-DONE
--test with multiple-Need data - for  Anläggningshistorik-DONE
--test with multiple-Need data - for  Anläggningsadress-Not the ideal case-DONE
--Need data to test ans05 ans07 ans09 -Need data-Verify
--Onselection -coding and tested with multiple DONE
--ans02-ans06-ans13-ans08-ans10-ans11-ans12 -tested-FOR DEFUALT-DONE
--ans03-ans06-ans13-ans08-ans10-ans11-ans12 -tested-FOR DEFUALT-DONE
--Screen to be created --DONE
--screen data populate-Coding pending-DONE
--ans022,ans032,ans042 testing pending-once we have bill acc partnerid in session-DONE
----ans022,ans032,ans042 service creation -DONE
--Print button functionality-Check print hist -DONE
--Print DONE
--Anläggningsadress-id shown on current inblic (E2YXYX9948847363)is diff from the one fetched in new inblinc(E2YXYX99488473)-Fixed-DONE

Queries


Test-03ZX700000 chargeble number when the session object(which currecnlt has billing account details-calls ans042) is set properly for now called callans04 from the code.
Highlight selected row for same custid fails
REMOVE COMMENTED CODE AFTER TESTING-tested 
03ZX700000
04ZX95118
04ZX41717-billingaccount shouldnt be set and henceforth bactoid and invoicepartid(for priceplan) and for lineorder (should get CURR_CUST_OID for all active inactive)
OFZX53432-freetext is the column value shown as it is 
--------------------------------------------------------------


----------------------------------------------------------------------------------
TASK AUTOGIRO

--Fakturerat konto-Fakturakonto	-DONE
--Remove search HEADER-DONE
--format table data -DONE
--validation on more than n number -DONE
--remove general info-DONE
--replace all the constants with DESC-DONE
--swedish desc-DONE
STATUSKOD       	Statuscode, A=finish, AS=finish deliver, N=new, NS=new deliver, GL=OK deliver,
 	GM=OK receive, EL=not OK deliver, EM=not OK, receive 
GIROTYP         	P = Postal giro, B =  Bank giro, F = Company giro 
 
LEV_SYSTEM       	L = Lokus, B = Apollo, P = Kundbild, E = Alpha 
BEVAK_MARKERING	Coverage mark, blank= normal, 1=first barrier, 0=barrier
 
MEDDELANDE_MARK	Message mark, blank=normal, 4=customer has destroied the connection, 5=connection destroied
 
------------------------------------------------------------------------

TASK PRICEPLAN
--add pagination on all the other tables-DONE
--cosmetic changes-button to shift to right-DONE
--on selection keep highlighted-DONE
--if pps01 then pps04--tested--DONE
--if pps02-pps05--04ZX95118-DONE


Issue with 03ZX700000
default-inactive
lineorderservice-home.component.ts:517 this.customerObj.installationIdundefined
lineorderservice-home.component.ts:519 this.schargeablenumber03ZX700000
lineorderservice-home.component.ts:522 this.scolsinstoid12606137
lineorderservice-home.component.ts:524 this.currcustoid3800389
lineorderservice-home.component.ts:526 this.custoid3800389
lineorderservice-home.component.ts:529 this.cnumoid12606137
lineorderservice-home.component.ts:532 installationOid---->>>>>>>>>>undefined
lineorderservice-home.component.ts:533  this.currcustoid3800389
lineorderservice-home.component.ts:534 this.customerObj.bacctoid---->>>>>>>>>>4819826
lineorderservice-home.component.ts:535 this.customerObj.invoiceAccountPartnerId---->>>>>>>>>>10
lineorderservice-home.component.ts:536 this.schargeablenumber03ZX700000


active 
lineorderservice-home.component.ts:517 this.customerObj.installationIdundefined
lineorderservice-home.component.ts:519 this.schargeablenumber03ZX700000
lineorderservice-home.component.ts:522 this.scolsinstoid80112796
lineorderservice-home.component.ts:524 this.currcustoid3800389
lineorderservice-home.component.ts:526 this.custoid3800389
lineorderservice-home.component.ts:529 this.cnumoid80112796
lineorderservice-home.component.ts:532 installationOid---->>>>>>>>>>undefined
lineorderservice-home.component.ts:533  this.currcustoid3800389
lineorderservice-home.component.ts:534 this.customerObj.bacctoid---->>>>>>>>>>7443516
lineorderservice-home.component.ts:535 this.customerObj.invoiceAccountPartnerId---->>>>>>>>>>5
lineorderservice-home.component.ts:536 this.schargeablenumber03ZX700000
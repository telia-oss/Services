--kat00
SELECT  A. INTVL_START_DATE,A.INTVL_STOP_DATE,A.SEL_CAT_COD
FROM    STHDSN6.TENGRA2.SLCT_CAT_DATA A,                     
        STHDSN6.TENGRA2.CUST_ID_HIST_DATA B                  
WHERE   B.CUST_ID  =:CUST_ID                  
AND     A.CUST_PARTN_ID=B.CUST_PARTN_ID                    
AND     A.SBSCT_CUST_OID= B.CUST_OID                       
        """"!!sokbegrepp!!""""                                   
ORDER BY INTVL_START_DATE DESC FOR FETCH ONLY;             "

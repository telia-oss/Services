SELECT   A. INTVL_START_DATE,                   
         A.INTVL_STOP_DATE,                     
         A.OPTN_TRM_VL                          
FROM     STHDSN6.TENGRA2.SLCT_PLAN_OPT_DATA A,    
         STHDSN6.TENGRA2.CUST_ID_HIST_DATA B      
WHERE    B.CUST_ID  =:CUST_ID       
AND      A.CUST_PARTN_ID=B.CUST_PARTN_ID        
AND      A.SBSCT_CUST_OID= B.CUST_OID           
         """"!!sokbegrepp!!""""                       
ORDER BY 1 DESC ,2 DESC, 3 ASC;


--dest00
SELECT   A.INTVL_START_DATE,                  
         A.INTVL_STOP_DATE,                   
         A.BEGIN_POINT_VL,                    
         A.END_POINT_VL,                      
         A.POINT_VL_LEN                       
FROM     STHDSN6.TENGRA2.SLCT_DEST_DATA A,      
         STHDSN6.TENGRA2.CUST_ID_HIST_DATA B    
WHERE    B.CUST_ID =:CUST_ID     
AND      A.CUST_PARTN_ID = B.CUST_PARTN_ID    
AND      A.SBSCT_CUST_OID = B.CUST_OID        
         """"!!sokbegrepp!!""""                     
ORDER BY INTVL_START_DATE DESC ;

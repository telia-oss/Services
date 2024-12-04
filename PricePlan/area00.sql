SELECT  DISTINCT A.INTVL_START_DATE,                           
        A.INTVL_STOP_DATE,                                     
        SUBSTR(A.SEL_AREA_VL,1,6) CONCAT C.DSCR_TXT AS COUNTRY,
        A.AREA_TYPIND                                          
 FROM    STHDSN6.TENGRA2.SLCT_AREA_DATA A,    
         STHDSN6.TENGRA2.CUST_ID_HIST_DATA B, 
         STHDSN6.TENGRA2.CTRY_GP_TRM_TABL C   
 WHERE   B.CUST_ID  =:CUST_ID 
 AND     A.CUST_PARTN_ID = B.CUST_PARTN_ID  
 AND     A.SBSCT_CUST_OID= B.CUST_OID       
        """"!!sokbegrepp!!""""                    
 AND    A.AREA_TYPIND = 'L'                 
 AND    C.LAND_ID = DECIMAL(A.SEL_AREA_VL)  
 UNION                                      
 SELECT A.INTVL_START_DATE,                 
        A.INTVL_STOP_DATE,                  
        A.SEL_AREA_VL AS COUNTRY,           
        A.AREA_TYPIND                       
 FROM   STHDSN6.TENGRA2.SLCT_AREA_DATA A,     
        STHDSN6.TENGRA2.CUST_ID_HIST_DATA B   
 WHERE  B.CUST_ID  =:CUST_ID   
 AND    A.CUST_PARTN_ID = B.CUST_PARTN_ID   
 AND    A.SBSCT_CUST_OID = B.CUST_OID       
        """"!!sokbegrepp!!""""                    
 AND    A.AREA_TYPIND != 'L'                
ORDER BY INTVL_START_DATE DESC,COUNTRY    

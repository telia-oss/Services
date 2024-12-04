SELECT   A.SBSCT_ID,                         
         A.SBSCT_STRTDT,                     
         A.SBSCT_STOPDT,                     
         A.TCOMITM_CAT_COD AS PROMIS,        
         E.BEORDRIN,                         
         A.GRP_TYPIND,                       
         A.UPP_PLAN_TYP_IND,                 
         A.RPROC_IND,                        
         A.BOUTPT_LOC_IND,                   
         A.INSTN_OID,                        
         B.AGREE_ID,                         
         D.PRSON_ORG_NM,                     
         D.CURR_CUST_ID                      
 FROM    STHDSN6.TENGRA2.USAG_PPSCPTN_DATA A,  
         STHDSN6.TENGRA2.AGREEMENT_DATA B,     
         STHDSN6.TENGRA2.CUSTOMER_DATA D,      
         STHDSN6.TENA2.FPT8200 E            
 WHERE   A.CUST_PARTN_ID=:CUST_PARTN_ID
 AND     A.SBSCT_CUST_OID=:SBSCT_CUST_OID   
 AND     LENGTH(TRIM(A.TCOMITM_CAT_COD)) > 0            
 AND     B.CUST_PARTN_ID=A.CUST_PARTN_ID     
 AND     B.AGREE_OID=A.AGREE_OID             
 AND     D.CUST_PARTN_ID = A.CUST_PARTN_ID   
 AND     D.CUST_OID = A.SBSCT_CUST_OID       
 AND     E.PROMIS_ID = DECIMAL(A.TCOMITM_CAT_COD)
UNION                                                     
SELECT   A.SBSCT_ID,                                      
         A.SBSCT_STRTDT,                                  
         A.SBSCT_STOPDT,                                  
         A.TCOMITM_CAT_COD AS PROMIS,                     
         CAST(NULL AS VARCHAR(14)),                              
         A.GRP_TYPIND,                                    
         A.UPP_PLAN_TYP_IND,                              
         A.RPROC_IND,                                     
         A.BOUTPT_LOC_IND,                                
         A.INSTN_OID,                                     
         B.AGREE_ID,                                      
         D.PRSON_ORG_NM,                                  
         D.CURR_CUST_ID                                   
 FROM    STHDSN6.TENGRA2.USAG_PPSCPTN_DATA A,               
         STHDSN6.TENGRA2.AGREEMENT_DATA B,                  
         STHDSN6.TENGRA2.CUSTOMER_DATA D                    
 WHERE   A.CUST_PARTN_ID=:CUST_PARTN_ID             
 AND     A.SBSCT_CUST_OID=:SBSCT_CUST_OID                
 AND     LENGTH(TRIM(A.TCOMITM_CAT_COD)) > 0                          
 AND     B.CUST_PARTN_ID=A.CUST_PARTN_ID                  
 AND     B.AGREE_OID=A.AGREE_OID                          
 AND     D.CUST_PARTN_ID = A.CUST_PARTN_ID                
 AND     D.CUST_OID = A.SBSCT_CUST_OID                    
 AND     NOT EXISTS                                       
          (SELECT E.PROMIS_ID FROM STHDSN6.TENA2.FPT8200 E         
           WHERE  E.PROMIS_ID = DECIMAL(A.TCOMITM_CAT_COD))
UNION                                        
 SELECT  A.SBSCT_ID,                         
         A.SBSCT_STRTDT,                     
         A.SBSCT_STOPDT,                     
         A.ASOC_ID AS PROMIS,                
         E.BEORDRIN,                         
         A.GRP_TYPIND,                       
         A.UPP_PLAN_TYP_IND,                 
         A.RPROC_IND,                        
         A.BOUTPT_LOC_IND,                   
         A.INSTN_OID,                        
         B.AGREE_ID,                         
         D.PRSON_ORG_NM,                     
         D.CURR_CUST_ID                      
 FROM    STHDSN6.TENGRA2.USAG_PPSCPTN_DATA A,  
         STHDSN6.TENGRA2.AGREEMENT_DATA B,     
         STHDSN6.TENGRA2.CUSTOMER_DATA D,      
         STHDSN6.TENA2.FPT8200 E            
 WHERE    A.CUST_PARTN_ID=:CUST_PARTN_ID
 AND      A.SBSCT_CUST_OID=:SBSCT_CUST_OID  
 AND      LENGTH(TRIM(A.TCOMITM_CAT_COD)) > 0             
 AND      B.CUST_PARTN_ID=A.CUST_PARTN_ID    
 AND      B.AGREE_OID=A.AGREE_OID            
 AND      D.CUST_PARTN_ID = A.CUST_PARTN_ID  
 AND      D.CUST_OID = A.SBSCT_CUST_OID      
 AND      E.PROMIS_ID = DECIMAL(A.ASOC_ID)     
UNION                                        
 SELECT   A.SBSCT_ID,                        
          A.SBSCT_STRTDT,                    
          A.SBSCT_STOPDT,                    
          A.ASOC_ID AS PROMIS,               
          E.TRT_VL,                          
          A.GRP_TYPIND,                      
          A.UPP_PLAN_TYP_IND,                
          A.RPROC_IND,                       
          A.BOUTPT_LOC_IND,                  
          A.INSTN_OID,                       
          B.AGREE_ID,                        
          D.PRSON_ORG_NM,                    
          D.CURR_CUST_ID                     
 FROM     STHDSN6.TENGRA2.USAG_PPSCPTN_DATA A, 
          STHDSN6.TENGRA2.AGREEMENT_DATA B,    
          STHDSN6.TENGRA2.CUSTOMER_DATA D,     
          STHDSN6.TENGRA2.ASGND_TRT_TABL E     
 WHERE    A.CUST_PARTN_ID=:CUST_PARTN_ID
 AND      A.SBSCT_CUST_OID=:SBSCT_CUST_OID 
 AND      LENGTH(TRIM(A.TCOMITM_CAT_COD)) > 0             
 AND      B.CUST_PARTN_ID=A.CUST_PARTN_ID    
 AND      B.AGREE_OID=A.AGREE_OID            
 AND      D.CUST_PARTN_ID = A.CUST_PARTN_ID  
 AND      D.CUST_OID = A.SBSCT_CUST_OID      
 AND      E.ASOC_ID = A.ASOC_ID              
UNION                                                  
 SELECT   A.SBSCT_ID,                                  
          A.SBSCT_STRTDT,                              
          A.SBSCT_STOPDT,                              
          A.ASOC_ID AS PROMIS,                         
          CAST(NULL AS VARCHAR(14)),                          
          A.GRP_TYPIND,                                
          A.UPP_PLAN_TYP_IND,                          
          A.RPROC_IND,                                 
          A.BOUTPT_LOC_IND,                            
          A.INSTN_OID,                                 
          B.AGREE_ID,                                  
          D.PRSON_ORG_NM,                              
          D.CURR_CUST_ID                               
 FROM     STHDSN6.TENGRA2.USAG_PPSCPTN_DATA A,           
          STHDSN6.TENGRA2.AGREEMENT_DATA B,              
          STHDSN6.TENGRA2.CUSTOMER_DATA D                
 WHERE    A.CUST_PARTN_ID=:CUST_PARTN_ID         
 AND      A.SBSCT_CUST_OID=:SBSCT_CUST_OID           
 AND      LENGTH(TRIM(A.TCOMITM_CAT_COD)) > 0                       
 AND      B.CUST_PARTN_ID=A.CUST_PARTN_ID              
 AND      B.AGREE_OID=A.AGREE_OID                      
 AND      D.CUST_PARTN_ID = A.CUST_PARTN_ID            
 AND      D.CUST_OID = A.SBSCT_CUST_OID                
 AND      NOT EXISTS                                   
          (SELECT E.PROMIS_ID FROM STHDSN6.TENA2.FPT8200 E      
           WHERE  E.PROMIS_ID = DECIMAL(A.ASOC_ID))     
 AND      NOT EXISTS                                   
          (SELECT F.ASOC_ID FROM STHDSN6.TENGRA2.ASGND_TRT_TABL F
           WHERE A.ASOC_ID = A.ASOC_ID)                
 ORDER BY  1 

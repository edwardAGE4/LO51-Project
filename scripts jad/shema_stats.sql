begin                                                                           
DBMS_STATS.GATHER_SCHEMA_STATS                                                  
 ('SCOTT', dbms_stats.auto_sample_size) ;                                       
end ;                                                                           
/                                                                               
begin                                                                           
DBMS_STATS.GATHER_SCHEMA_STATS                                                  
 ('AIR', dbms_stats.auto_sample_size) ;                                         
end ;                                                                           
/                                                                               
begin                                                                           
DBMS_STATS.GATHER_SCHEMA_STATS                                                  
 ('GESCOM', dbms_stats.auto_sample_size) ;                                      
end ;                                                                           
/                                                                               

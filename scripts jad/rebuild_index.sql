select 'alter index '  || index_name || ' rebuild online; '                     
from user_indexes                                                               
where index_type <> 'LOB';                                                      
exit;                                                                           

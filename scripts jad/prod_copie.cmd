select 'cd F:\backup\backup_froid' from dual
*
ERREUR à la ligne 1 :
ORA-01012: not logged on 
ID de processus : 0 
ID de session : 0,  Numéro de série : 0 


select 'copy ' || file_name || ' F:\backup\backup_froid'
*
ERREUR à la ligne 1 :
ORA-01012: not logged on 
ID de processus : 0 
ID de session : 0,  Numéro de série : 0 


select 'exit;' from dual
*
ERREUR à la ligne 1 :
ORA-01012: not logged on 
ID de processus : 0 
ID de session : 0,  Numéro de série : 0 



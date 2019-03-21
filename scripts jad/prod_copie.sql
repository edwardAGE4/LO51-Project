set echo off
set pagesize 0 
set linesize 255
set heading off 
set feedback off
col file_name format a50 
spool F:\scripts\prod_copie.cmd 
select 'cd F:\backup\backup_froid' from dual;
select 'copy ' || file_name || ' F:\backup\backup_froid'
from dba_data_files 
union
select 'copy ' || member || ' F:\backup\backup_froid'
from v$logfile 
union
select 'copy ' || name || ' F:\backup\backup_froid'
from v$controlfile ; 
select 'exit;' from dual;
spool off
set pagesize 24 
set linesize 80
set heading on
set feedback on 
set echo on
exit 
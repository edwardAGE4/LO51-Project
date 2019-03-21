set echo off
set pagesize 0 
set linesize 255
set heading off 
set feedback off
col file_name format a50 
spool F:\archive\prod\exec_prod_hot_db.sql
select 'alter system switch logfile;' from dual;
select 'alter database begin backup;' from dual;
select 'HOST copy ' || file_name || ' F:\backup\backup_hot_db'
from dba_data_files;
select 'alter database end backup;' from dual;
select 'alter system switch logfile;' from dual;
select 'alter database backup controlfile to  ''F:\backup\backup_hot_db\control01_backup.ctl '' ' from dual;
select 'REUSE; ' from dual;
select 'exit;' from dual;
spool off
set pagesize 24 
set linesize 80
set heading on
set feedback on 
set echo on
exit 
set echo off
set pagesize 0 
set linesize 255
set heading off 
set feedback off
col file_name format a50 
spool F:\scripts\prod_xfert_secours.cmd 
select 'copy "F:\backup\backup_froid\*.*" "S:\backup_secours" ' from dual;
select 'exit;' from dual;
spool off
set pagesize 24 
set linesize 80
set heading on
set feedback on 
set echo on
exit 
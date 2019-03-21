set heading off 
set feedback off
set echo off
set pagesize 0
spool F:\scripts\rebuild_index.sql
select 'select ''alter index ''  || index_name || '' rebuild online; '' ' from dual;
select 'from user_indexes' from dual;
select 'where index_type <> ''LOB''; ' from dual;
select 'exit; ' from dual;
spool off;
set heading on
set feedback on
set echo on
set pagesize 60
@F:\scripts\rebuild_index.sql





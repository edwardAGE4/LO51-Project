set heading off 
set feedback off
set echo off
set pagesize 0
spool F:\scripts\shema_stats.sql
select 'begin' from dual;
select  'DBMS_STATS.GATHER_SCHEMA_STATS' from dual;
select ' (''SCOTT'', dbms_stats.auto_sample_size) ;' from dual;
select 'end ;' from dual;
select '/' from dual;
select 'begin' from dual;
select  'DBMS_STATS.GATHER_SCHEMA_STATS' from dual;
select ' (''AIR'', dbms_stats.auto_sample_size) ;' from dual;
select 'end ;' from dual;
select '/' from dual;
select 'begin' from dual;
select  'DBMS_STATS.GATHER_SCHEMA_STATS' from dual;
select ' (''GESCOM'', dbms_stats.auto_sample_size) ;' from dual;
select 'end ;' from dual;
select '/' from dual;
spool off;
set heading on
set feedback on
set echo on
set pagesize 60
@F:\scripts\shema_stats.sql
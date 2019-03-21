set echo off
set pagesize 0 
set linesize 255
set heading off 
set feedback off
col file_name format a50 
spool F:\archive\prod\exec_prod_hot_ts.sql
select 'alter system switch logfile;' from dual;
SET SERVEROUTPUT ON 
DECLARE
 CURSOR cur_tablespace IS
  SELECT tablespace_name
    FROM dba_tablespaces
    WHERE contents = 'PERMANENT' ;
-- pas de sauvegarde des fichiers temporaires
 CURSOR cur_datafile (tn VARCHAR) IS
  SELECT file_name
    FROM dba_data_files
   WHERE tablespace_name = tn;
BEGIN
  FOR ct IN cur_tablespace LOOP    
    dbms_output.put_line ('alter tablespace ' || ct.tablespace_name || ' begin backup;');
    FOR cd IN cur_datafile (ct.tablespace_name) LOOP
   dbms_output.put_line ('host copy ' || cd.file_name || ' F:\backup\backup_hot_ts ');
    END LOOP;
    dbms_output.put_line ('alter tablespace ' || ct.tablespace_name || ' end backup;');
  END LOOP;
END;
/
select 'alter system switch logfile;' from dual;
select 'alter database backup controlfile to ''F:\backup\backup_hot_ts\control.ctl'' ' from dual;
select 'REUSE;' from dual;
select 'exit;' from dual;
spool off
set pagesize 24 
set linesize 80
set heading on
set feedback on 
set echo on
exit 
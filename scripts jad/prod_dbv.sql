set echo off
set pagesize 0 
set linesize 255
set heading off 
set feedback off
col file_name format a50 
spool F:\scripts\exec_prod_dbv.sql
SET SERVEROUTPUT ON 
DECLARE
	CURSOR cur_datafile IS
		SELECT 	FILE_ID,
				TABLESPACE_NAME,
				SUBSTR(file_name,
                   28,
                 INSTR(file_name,
                       '.',
                        1
                       ) -1 
                ) as sub
		FROM   dba_data_files;

BEGIN
  FOR cd IN cur_datafile loop
		dbms_output.put_line ('dbv file=F:\backup\backup_froid\' || cd.sub ||' LOGFILE='|| cd.TABLESPACE_NAME ||'_'|| cd.FILE_ID ||'.log' );
  END LOOP;
END;
/
spool off
set pagesize 24 
set linesize 80
set heading on
set feedback on 
set echo on
exit 

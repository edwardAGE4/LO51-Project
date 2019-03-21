set echo off
set pagesize 0
set linesize 255
set heading off
set feedback off
col file_name format a50
spool F:\scripts\prod_restore.cmd 
SET SERVEROUTPUT ON 
DECLARE
	CURSOR cur_datafile IS
		SELECT 	SUBSTR(file_name,28,INSTR(file_name,'.',1) -1) as subdatafile  -- pour extraire le nom du fichier seulement
		FROM   dba_data_files;
	CURSOR cur_datacontrol IS
		SELECT 	SUBSTR(name,28,INSTR(name,'.',1) -1) as subControlfile
		FROM   v$controlfile;
	CURSOR cur_datalogfile IS
		SELECT 	SUBSTR(member,28,INSTR(member,'.',1) -1) as subRedofile
		FROM   v$logfile;
BEGIN
  FOR cd IN cur_datafile loop
		dbms_output.put_line('If not exist "E:\app\oracle\oradata\PROD\'|| cd.subdatafile || '"  (copy "F:\backup\backup_froid\' || cd.subdatafile || '" "E:\app\oracle\oradata\PROD") ELSE echo ce fichier existe ');
  END LOOP;
  FOR cd IN cur_datacontrol loop
		dbms_output.put_line('If not exist "E:\app\oracle\oradata\PROD\'|| cd.subControlfile || '"  (copy "F:\backup\backup_froid\' || cd.subControlfile || '" "E:\app\oracle\oradata\PROD") ELSE echo ce fichier existe ' );
  END LOOP;
  FOR cd IN cur_datalogfile loop
		dbms_output.put_line('If not exist "E:\app\oracle\oradata\PROD\'|| cd.subRedofile || '"  (copy "F:\backup\backup_froid\' || cd.subRedofile || '" "E:\app\oracle\oradata\PROD") ELSE echo ce fichier existe ');
  END LOOP;	
END;
/
select 'exit;' from dual;
spool off
set pagesize 24 
set linesize 80
set heading on
set feedback on 
set echo on
exit 

sqlplus " / as sysdba " @F:\scripts\prod_copie.sql 
start /w F:\scripts\prod_stop.cmd
start /w F:\scripts\prod_restore.cmd
start /w F:\scripts\prod_copie.cmd
start /w F:\scripts\prod_start.cmd 
pause


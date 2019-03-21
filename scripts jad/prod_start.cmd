rem définition
set ORACLE_SID=PROD
set ORACLE_HOME=E:\app\oracle\product\11.2.0\serveur
set TNS_ADMIN=E:\app\oracle\product\11.2.0\serveur\NETWORK\ADMIN
rem démarage des services
net start | find "OracleOraDb11g_home1TNSListener" || net start OracleOraDb11g_home1TNSListener
net start | find "OracleServicePROD" || net start OracleServicePROD
echo connect / as sysdba > prod_start.sql
echo startup >> prod_start.sql
echo exit; >> prod_start.sql
E:\app\oracle\product\11.2.0\serveur\BIN\sqlplus.exe /nolog @prod_start.sql
if exist prod_start.sql del prod_start.sql
exit
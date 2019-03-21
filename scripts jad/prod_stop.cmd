rem définition
set ORACLE_SID=PROD
set ORACLE_HOME=E:\app\oracle\product\11.2.0\serveur
rem démarage des services
echo connect / as sysdba > prod_stop.sql
echo shutdown immediate >> prod_stop.sql
echo exit; >> prod_stop.sql
E:\app\oracle\product\11.2.0\serveur\BIN\sqlplus.exe /nolog @prod_stop.sql
if exist prod_stop.sql del prod_stop.sql
exit
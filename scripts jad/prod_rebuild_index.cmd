set ORACLE_SID=prod
set ORACLE_HOME=E:\app\oracle\product\11.2.0\serveur
sqlplus air/air @f:\scripts\gen_rebuild_index.sql
sqlplus scott/TIGER @f:\scripts\gen_rebuild_index.sql
sqlplus util/util @f:\scripts\gen_rebuild_index.sql
sqlplus devel/devel @f:\scripts\gen_rebuild_index.sql
sqlplus admin/admin @f:\scripts\gen_rebuild_index.sql
sqlplus gescom/gescom @f:\scripts\gen_rebuild_index.sql
pause

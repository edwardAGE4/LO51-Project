rem environnement
set ORACLE_SID=prod
oradim -shutdown -sid prod
oradim -startup -sid prod
pause
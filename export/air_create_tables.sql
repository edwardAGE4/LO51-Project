 CREATE TABLE "AIR"."AVION" ("NUMAVION" NUMBER(6, 0) NOT NULL ENABLE, 
 "NOMAVION" VARCHAR2(20) NOT NULL ENABLE, "CAPACITE" NUMBER(3, 0) NOT 
 NULL ENABLE, "LOCALISATION" VARCHAR2(45), "DATEMISESERVICE" DATE) 
 PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL 1048576 
 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL 
 DEFAULT) TABLESPACE "AIR_DATA" LOGGING NOCOMPRESS ;

 CREATE TABLE "AIR"."PILOTE" ("NUMPILOTE" NUMBER(4, 0) NOT NULL 
 ENABLE, "NOMPILOTE" VARCHAR2(20) NOT NULL ENABLE, "ADRESSE" 
 VARCHAR2(50), "DATECREATION" DATE NOT NULL ENABLE, "DATEDERMAJ" 
 TIMESTAMP (6) NOT NULL ENABLE, "CV" CLOB) PCTFREE 10 PCTUSED 40 
 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL 1048576 NEXT 1048576 
 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT) 
 TABLESPACE "AIR_DATA" LOGGING NOCOMPRESS LOB ("CV") STORE AS 
 BASICFILE (TABLESPACE "AIR_DATA" ENABLE STORAGE IN ROW CHUNK 8192 
 RETENTION NOCACHE LOGGING STORAGE(INITIAL 1048576 NEXT 1048576 
 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)) ;

 CREATE TABLE "AIR"."VOL" ("NUMVOL" CHAR(6) NOT NULL ENABLE, 
 "NUMAVION" NUMBER(6, 0) NOT NULL ENABLE, "NUMPILOTE" NUMBER(4, 0), 
 "VILLEDEP" VARCHAR2(35) NOT NULL ENABLE, "VILLEARR" VARCHAR2(35) NOT 
 NULL ENABLE, "HEUREDEP" CHAR(5), "HEUREARR" CHAR(5)) PCTFREE 10 
 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL 1048576 NEXT 
 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL 
 DEFAULT) TABLESPACE "AIR_DATA" LOGGING NOCOMPRESS ;
 ALTER TABLE "AIR"."VOL" MODIFY ("NUMPILOTE" DEFAULT NULL ) ;
--------------------------------------------------------
-- Archivo creado  - miércoles-diciembre-11-2019   
--------------------------------------------------------
CREATE USER PORTAFOLIO IDENTIFIED BY PORTAFOLIO;
GRANT CONNECT TO PORTAFOLIO;
GRANT CREATE SESSION TO PORTAFOLIO;
GRANT ALL PRIVILEGES TO PORTAFOLIO;



DROP SEQUENCE "PORTAFOLIO"."DEPARTMENTS_SEQ";
DROP SEQUENCE "PORTAFOLIO"."EMPLOYEES_SEQ";
DROP SEQUENCE "PORTAFOLIO"."INCREMENTO_ID_ESTADO";
DROP SEQUENCE "PORTAFOLIO"."INCREMENTO_ID_FLUJO";
DROP SEQUENCE "PORTAFOLIO"."INCREMENTO_ID_HISTORIAL";
DROP SEQUENCE "PORTAFOLIO"."INCREMENTO_ID_TAREA";
DROP SEQUENCE "PORTAFOLIO"."INCREMENTO_ID_TAREA_SUB";
DROP SEQUENCE "PORTAFOLIO"."INCREMENTO_ID_TIPOUSUARIO";
DROP SEQUENCE "PORTAFOLIO"."INCREMENTO_ID_USUARIO";
DROP SEQUENCE "PORTAFOLIO"."LOCATIONS_SEQ";
DROP TABLE "PORTAFOLIO"."ESTADO" cascade constraints;
DROP TABLE "PORTAFOLIO"."FLUJO" cascade constraints;
DROP TABLE "PORTAFOLIO"."TAREA" cascade constraints;
DROP TABLE "PORTAFOLIO"."TAREA_SUBORDINADA" cascade constraints;
DROP TABLE "PORTAFOLIO"."TIPO_USUARIO" cascade constraints;
DROP TABLE "PORTAFOLIO"."USUARIOS" cascade constraints;
DROP VIEW "PORTAFOLIO"."EMP_DETAILS_VIEW";
DROP PROCEDURE "PORTAFOLIO"."BORRAR_USUARIOS";
DROP PROCEDURE "PORTAFOLIO"."INICIAR_SESION";
DROP PROCEDURE "PORTAFOLIO"."INICIAR_SESION_ADMIN";
DROP PROCEDURE "PORTAFOLIO"."INICIAR_SESION_USUARIO";
DROP PROCEDURE "PORTAFOLIO"."INSERT_FLUJO";
DROP PROCEDURE "PORTAFOLIO"."INSERT_TAREA";
DROP PROCEDURE "PORTAFOLIO"."INSERT_TAREA_SUB";
DROP PROCEDURE "PORTAFOLIO"."INSERT_TIPO_USUARIO";
DROP PROCEDURE "PORTAFOLIO"."INSERT_USUARIO";
DROP PROCEDURE "PORTAFOLIO"."LISTAR_FLUJO";
DROP PROCEDURE "PORTAFOLIO"."LISTAR_FLUJO_APROBADO";
DROP PROCEDURE "PORTAFOLIO"."LISTAR_FLUJO_CAMBIAR_ESTADO";
DROP PROCEDURE "PORTAFOLIO"."LISTAR_TAREAS";
DROP PROCEDURE "PORTAFOLIO"."LISTAR_TAREAS_ASIGNANDOSE";
DROP PROCEDURE "PORTAFOLIO"."LISTAR_TAREAS_DEVUELTAS";
DROP PROCEDURE "PORTAFOLIO"."LISTAR_TAREAS_DEVUELTAS2";
DROP PROCEDURE "PORTAFOLIO"."LISTAR_TAREAS_SUB_ASIGNANDOSE";
DROP PROCEDURE "PORTAFOLIO"."LISTAR_TAREAS_SUB_Y_FLUJO";
DROP PROCEDURE "PORTAFOLIO"."LISTAR_TAREAS_Y_FLUJO";
DROP PROCEDURE "PORTAFOLIO"."LISTAR_TIPO_USUARIOS";
DROP PROCEDURE "PORTAFOLIO"."LISTAR_USUARIOS";
DROP PROCEDURE "PORTAFOLIO"."LOGIN";
DROP PROCEDURE "PORTAFOLIO"."SECURE_DML";
DROP PROCEDURE "PORTAFOLIO"."SELECCIONAR_USUARIOS";
DROP PROCEDURE "PORTAFOLIO"."TEST";
DROP PROCEDURE "PORTAFOLIO"."UPDATE_FLUJO";
DROP PROCEDURE "PORTAFOLIO"."UPDATE_FLUJO_ESTADO";
DROP PROCEDURE "PORTAFOLIO"."UPDATE_TAREA_ESTADO";
DROP PROCEDURE "PORTAFOLIO"."UPDATE_TAREA_REASIGNAR";
DROP PROCEDURE "PORTAFOLIO"."UPDATE_TAREA_REASIGNAR2";
DROP PROCEDURE "PORTAFOLIO"."UPDATE_TAREA_REASIGNAR3";
DROP PROCEDURE "PORTAFOLIO"."UPDATE_TAREA_REASIGNAR4";
DROP PROCEDURE "PORTAFOLIO"."UPDATE_TAREA_REASIGNAR5";
DROP PROCEDURE "PORTAFOLIO"."UPDATE_TAREA_SUB_ESTADO";
DROP PROCEDURE "PORTAFOLIO"."UPDATE_TAREA_SUB_REASIGNAR";
DROP PROCEDURE "PORTAFOLIO"."UPDATE_USUARIO";
--------------------------------------------------------
--  DDL for Sequence DEPARTMENTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PORTAFOLIO"."DEPARTMENTS_SEQ"  MINVALUE 1 MAXVALUE 9990 INCREMENT BY 10 START WITH 280 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EMPLOYEES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PORTAFOLIO"."EMPLOYEES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 207 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence INCREMENTO_ID_ESTADO
--------------------------------------------------------

   CREATE SEQUENCE  "PORTAFOLIO"."INCREMENTO_ID_ESTADO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 5 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence INCREMENTO_ID_FLUJO
--------------------------------------------------------

   CREATE SEQUENCE  "PORTAFOLIO"."INCREMENTO_ID_FLUJO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence INCREMENTO_ID_HISTORIAL
--------------------------------------------------------

   CREATE SEQUENCE  "PORTAFOLIO"."INCREMENTO_ID_HISTORIAL"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence INCREMENTO_ID_TAREA
--------------------------------------------------------

   CREATE SEQUENCE  "PORTAFOLIO"."INCREMENTO_ID_TAREA"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence INCREMENTO_ID_TAREA_SUB
--------------------------------------------------------

   CREATE SEQUENCE  "PORTAFOLIO"."INCREMENTO_ID_TAREA_SUB"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence INCREMENTO_ID_TIPOUSUARIO
--------------------------------------------------------

   CREATE SEQUENCE  "PORTAFOLIO"."INCREMENTO_ID_TIPOUSUARIO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 7 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence INCREMENTO_ID_USUARIO
--------------------------------------------------------

   CREATE SEQUENCE  "PORTAFOLIO"."INCREMENTO_ID_USUARIO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 24 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LOCATIONS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PORTAFOLIO"."LOCATIONS_SEQ"  MINVALUE 1 MAXVALUE 9900 INCREMENT BY 100 START WITH 3300 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ESTADO
--------------------------------------------------------

  CREATE TABLE "PORTAFOLIO"."ESTADO" 
   (	"IDESTADO" NUMBER(*,0), 
	"DESCRIPCION_ESTADO" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON TABLE "PORTAFOLIO"."ESTADO"  IS 'Tabla que indica el estado de las tareas y tareas subordinadas';
--------------------------------------------------------
--  DDL for Table FLUJO
--------------------------------------------------------

  CREATE TABLE "PORTAFOLIO"."FLUJO" 
   (	"IDFLUJO" NUMBER(*,0), 
	"DESCRIPCION_FLUJO" VARCHAR2(100 BYTE), 
	"ESTADO" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TAREA
--------------------------------------------------------

  CREATE TABLE "PORTAFOLIO"."TAREA" 
   (	"IDTAREA" NUMBER(*,0), 
	"NOMBRE_TAREA" VARCHAR2(100 BYTE), 
	"DESCRIPCION_TAREA" VARCHAR2(100 BYTE), 
	"IDUSUARIO" NUMBER(*,0), 
	"IDESTADO" NUMBER(*,0), 
	"TIPO_TAREA" VARCHAR2(10 BYTE), 
	"IDFLUJO" NUMBER(*,0), 
	"FECHA_TAREA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TAREA_SUBORDINADA
--------------------------------------------------------

  CREATE TABLE "PORTAFOLIO"."TAREA_SUBORDINADA" 
   (	"IDTAREA_SUB" NUMBER(*,0), 
	"IDTAREA" NUMBER(*,0), 
	"NOMBRE_TAREA" VARCHAR2(100 BYTE), 
	"DESCRIPCION_TAREA" VARCHAR2(100 BYTE), 
	"IDUSUARIO" NUMBER(*,0), 
	"IDESTADO" NUMBER(*,0), 
	"TIPO_TAREA" VARCHAR2(10 BYTE), 
	"FECHA_TAREA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TIPO_USUARIO
--------------------------------------------------------

  CREATE TABLE "PORTAFOLIO"."TIPO_USUARIO" 
   (	"IDTIPOUSUARIO" NUMBER(*,0), 
	"DESCRIPCION" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USUARIOS
--------------------------------------------------------

  CREATE TABLE "PORTAFOLIO"."USUARIOS" 
   (	"IDUSUARIO" NUMBER(*,0), 
	"CORREO" VARCHAR2(30 BYTE), 
	"CONTRASENA" VARCHAR2(100 BYTE), 
	"RUT" VARCHAR2(12 BYTE), 
	"NOMBRE" VARCHAR2(30 BYTE), 
	"APPATERNO" VARCHAR2(30 BYTE), 
	"APMATERNO" VARCHAR2(30 BYTE), 
	"FEC_CREACION" TIMESTAMP (6), 
	"IDTIPOUSUARIO" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View EMP_DETAILS_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "PORTAFOLIO"."EMP_DETAILS_VIEW" ("EMPLOYEE_ID", "JOB_ID", "MANAGER_ID", "DEPARTMENT_ID", "LOCATION_ID", "COUNTRY_ID", "FIRST_NAME", "LAST_NAME", "SALARY", "COMMISSION_PCT", "DEPARTMENT_NAME", "JOB_TITLE", "CITY", "STATE_PROVINCE", "COUNTRY_NAME", "REGION_NAME") AS 
  SELECT
  e.employee_id,
  e.job_id,
  e.manager_id,
  e.department_id,
  d.location_id,
  l.country_id,
  e.first_name,
  e.last_name,
  e.salary,
  e.commission_pct,
  d.department_name,
  j.job_title,
  l.city,
  l.state_province,
  c.country_name,
  r.region_name
FROM
  employees e,
  departments d,
  jobs j,
  locations l,
  countries c,
  regions r
WHERE e.department_id = d.department_id
  AND d.location_id = l.location_id
  AND l.country_id = c.country_id
  AND c.region_id = r.region_id
  AND j.job_id = e.job_id
WITH READ ONLY
;
REM INSERTING into PORTAFOLIO.ESTADO
SET DEFINE OFF;
Insert into PORTAFOLIO.ESTADO (IDESTADO,DESCRIPCION_ESTADO) values ('1','PENDIENTE');
Insert into PORTAFOLIO.ESTADO (IDESTADO,DESCRIPCION_ESTADO) values ('2','REALIZANDOSE');
Insert into PORTAFOLIO.ESTADO (IDESTADO,DESCRIPCION_ESTADO) values ('3','TERMINADA');
Insert into PORTAFOLIO.ESTADO (IDESTADO,DESCRIPCION_ESTADO) values ('4','ASIGNACIÓN PENDIENTE');
Insert into PORTAFOLIO.ESTADO (IDESTADO,DESCRIPCION_ESTADO) values ('5','TAREA DEVUELTA');
REM INSERTING into PORTAFOLIO.FLUJO
SET DEFINE OFF;
Insert into PORTAFOLIO.FLUJO (IDFLUJO,DESCRIPCION_FLUJO,ESTADO) values ('1','Flujo 1','Aprobado');
REM INSERTING into PORTAFOLIO.TAREA
SET DEFINE OFF;
Insert into PORTAFOLIO.TAREA (IDTAREA,NOMBRE_TAREA,DESCRIPCION_TAREA,IDUSUARIO,IDESTADO,TIPO_TAREA,IDFLUJO,FECHA_TAREA) values ('2','Terminar Plan de Pruebas','Pendiente realizar pruebas al ingresar usuarios con la plataforma de escritorio','2','1','Diseñador','1',to_date('11/12/19','DD/MM/RR'));
REM INSERTING into PORTAFOLIO.TAREA_SUBORDINADA
SET DEFINE OFF;
Insert into PORTAFOLIO.TAREA_SUBORDINADA (IDTAREA_SUB,IDTAREA,NOMBRE_TAREA,DESCRIPCION_TAREA,IDUSUARIO,IDESTADO,TIPO_TAREA,FECHA_TAREA) values ('1','2','Plan de Pruebas','Ingresar con usuario no administrador','2','1','Diseñador',to_date('11/12/19','DD/MM/RR'));
REM INSERTING into PORTAFOLIO.TIPO_USUARIO
SET DEFINE OFF;
Insert into PORTAFOLIO.TIPO_USUARIO (IDTIPOUSUARIO,DESCRIPCION) values ('1','Administrador');
Insert into PORTAFOLIO.TIPO_USUARIO (IDTIPOUSUARIO,DESCRIPCION) values ('2','Funcionario');
Insert into PORTAFOLIO.TIPO_USUARIO (IDTIPOUSUARIO,DESCRIPCION) values ('3','Diseñador');
REM INSERTING into PORTAFOLIO.USUARIOS
SET DEFINE OFF;
Insert into PORTAFOLIO.USUARIOS (IDUSUARIO,CORREO,CONTRASENA,RUT,NOMBRE,APPATERNO,APMATERNO,FEC_CREACION,IDTIPOUSUARIO) values ('1','ADMINISTRADOR@ADMIN.CL','admin','19.413.056-2','Diego','González','Román',null,'1');
Insert into PORTAFOLIO.USUARIOS (IDUSUARIO,CORREO,CONTRASENA,RUT,NOMBRE,APPATERNO,APMATERNO,FEC_CREACION,IDTIPOUSUARIO) values ('2','DGONZALEZ@USUARIOS.CL','usuario','19.413.056-2','Diego','González','Román',null,'3');
Insert into PORTAFOLIO.USUARIOS (IDUSUARIO,CORREO,CONTRASENA,RUT,NOMBRE,APPATERNO,APMATERNO,FEC_CREACION,IDTIPOUSUARIO) values ('3','DGONZALEZ2@USUARIOS.CL','usuario','19.413.056-2','Diego','González','Román',null,'2');
Insert into PORTAFOLIO.USUARIOS (IDUSUARIO,CORREO,CONTRASENA,RUT,NOMBRE,APPATERNO,APMATERNO,FEC_CREACION,IDTIPOUSUARIO) values ('4','USUARIOPRUEBA','usuario','19.413.056-2','usuario','de','Prueba',to_timestamp('11/12/19 21:01:09,120000000','DD/MM/RR HH24:MI:SSXFF'),'2');
--------------------------------------------------------
--  DDL for Index IDESTADO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PORTAFOLIO"."IDESTADO_PK" ON "PORTAFOLIO"."ESTADO" ("IDESTADO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDFLUJO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PORTAFOLIO"."IDFLUJO_PK" ON "PORTAFOLIO"."FLUJO" ("IDFLUJO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDTAREA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PORTAFOLIO"."IDTAREA_PK" ON "PORTAFOLIO"."TAREA" ("IDTAREA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDUSUARIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PORTAFOLIO"."IDUSUARIO_PK" ON "PORTAFOLIO"."USUARIOS" ("IDUSUARIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDTAREA_SUB_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PORTAFOLIO"."IDTAREA_SUB_PK" ON "PORTAFOLIO"."TAREA_SUBORDINADA" ("IDTAREA_SUB") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDTIPOUSUARIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PORTAFOLIO"."IDTIPOUSUARIO_PK" ON "PORTAFOLIO"."TIPO_USUARIO" ("IDTIPOUSUARIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Procedure BORRAR_USUARIOS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."BORRAR_USUARIOS" (p_correo usuarios.correo%TYPE) AS
   BEGIN
      DELETE FROM usuarios
      WHERE correo = p_correo;
   END borrar_usuarios;


/
--------------------------------------------------------
--  DDL for Procedure INICIAR_SESION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."INICIAR_SESION" (p_correo IN  USUARIOS.CORREO%TYPE,p_pass in usuarios.contrasena%type,p_recordset OUT SYS_REFCURSOR)
AS 
BEGIN 
OPEN p_recordset FOR
    SELECT *
    FROM usuarios WHERE  correo = p_correo and contrasena = p_pass;
END;


/
--------------------------------------------------------
--  DDL for Procedure INICIAR_SESION_ADMIN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."INICIAR_SESION_ADMIN" (p_correo IN  USUARIOS.CORREO%TYPE,p_pass in usuarios.contrasena%type,p_recordset OUT SYS_REFCURSOR)
AS 
BEGIN 
OPEN p_recordset FOR
    SELECT *
    FROM usuarios WHERE correo = p_correo and contrasena = p_pass;
END;


/
--------------------------------------------------------
--  DDL for Procedure INICIAR_SESION_USUARIO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."INICIAR_SESION_USUARIO" (p_correo IN USUARIOS.CORREO%TYPE, p_contrasena IN USUARIOS.CONTRASENA%TYPE, o_correo OUT Varchar2,o_contrasena out varchar2,o_credencial out int)
IS
BEGIN
    SELECT correo,contrasena,idtipousuario
    INTO o_correo,o_contrasena,o_credencial
    FROM usuarios where correo like p_correo and contrasena like p_contrasena;
END;


/
--------------------------------------------------------
--  DDL for Procedure INSERT_FLUJO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."INSERT_FLUJO" (p_descripcion in flujo.descripcion_flujo%type, p_estado in flujo.estado%type)
IS
BEGIN
  INSERT INTO Flujo ("IDFLUJO","DESCRIPCION_FLUJO","ESTADO") 
  VALUES (incremento_id_flujo.nextval,p_descripcion,p_estado);
  COMMIT;
END;


/
--------------------------------------------------------
--  DDL for Procedure INSERT_TAREA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."INSERT_TAREA" (p_nombre in tarea.nombre_tarea%type,p_descripcion in tarea.descripcion_tarea%type,p_idusuario in tarea.idusuario%type ,P_ESTADO IN INT,p_tipotarea in tarea.tipo_tarea%type,p_flujo flujo.idflujo%type,P_FECHA in tarea.fecha_tarea%type)
IS
BEGIN  
  INSERT INTO TAREA (idtarea,nombre_tarea,DESCRIPCION_TAREA,IDUSUARIO,IDESTADO,TIPO_TAREA,idflujo,fecha_tarea) 
  VALUES (incremento_id_tarea.nextval,p_nombre,P_DESCRIPCION,P_IDUSUARIO,P_ESTADO,P_TIPOTAREA,P_FLUJO,P_FECHA); 
  COMMIT;
END;


/
--------------------------------------------------------
--  DDL for Procedure INSERT_TAREA_SUB
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."INSERT_TAREA_SUB" 
(p_nombre in tarea_subordinada.nombre_tarea%type,p_descripcion in tarea_subordinada.descripcion_tarea%type,p_idusuario in tarea_subordinada.idusuario%type 
,P_ESTADO IN INT,p_tipotarea in tarea_subordinada.tipo_tarea%type,p_idtarea tarea.idtarea%type,P_FECHA in tarea_subordinada.fecha_tarea%type)
IS
BEGIN  
  INSERT INTO TAREA_SUBORDINADA (IDTAREA_SUB,IDTAREA,nombre_tarea,DESCRIPCION_TAREA,IDUSUARIO,IDESTADO,TIPO_TAREA,fecha_tarea) 
  VALUES (incremento_id_tarea_SUB.nextval,P_IDTAREA,p_nombre,P_DESCRIPCION,P_IDUSUARIO,P_ESTADO,P_TIPOTAREA,P_FECHA); 
  COMMIT;
END;


/
--------------------------------------------------------
--  DDL for Procedure INSERT_TIPO_USUARIO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."INSERT_TIPO_USUARIO" (p_descripcion IN tipo_usuario.descripcion%TYPE)
IS
BEGIN
  INSERT INTO TIPO_USUARIO ("IDTIPOUSUARIO","DESCRIPCION") 
  VALUES (incremento_id_tipousuario.nextval,p_descripcion);
  COMMIT;
END;


/
--------------------------------------------------------
--  DDL for Procedure INSERT_USUARIO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."INSERT_USUARIO" (p_correo IN usuarios.correo%TYPE,p_pass in usuarios.contrasena%type ,p_rut in usuarios.rut%type,p_nombre in usuarios.nombre%type, p_paterno in usuarios.appaterno%type,p_materno in usuarios.apmaterno%type,p_tipoUsuario in usuarios.idtipousuario%type)
IS
BEGIN
  INSERT INTO USUARIOS (IDUSUARIO,CORREO,CONTRASENA,RUT,NOMBRE,APPATERNO,APMATERNO,fec_creacion,IDTIPOUSUARIO) 
  VALUES (incremento_id_usuario.nextval,p_correo,p_pass,p_rut,p_nombre,p_paterno,p_materno,CURRENT_TIMESTAMP,p_tipoUsuario); 
  COMMIT;
END;


/
--------------------------------------------------------
--  DDL for Procedure LISTAR_FLUJO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."LISTAR_FLUJO" (p_recordset OUT SYS_REFCURSOR)
IS
BEGIN
  OPEN p_recordset FOR
SELECT f.IDFLUJO AS "ID DE FLUJO",DESCRIPCION_FLUJO AS "DESCRIPCIÓN DE FLUJO",
count(t.idtarea) AS "CANTIDAD DE TAREAS",
CONCAT(ROUND((COUNT(T.IDTAREA)*100 / count(t.idtarea))),'%') AS "PORCENTAJE COMPLETADO"
FROM FLUJO F JOIN TAREA T ON F.IDFLUJO = T.IDFLUJO
WHERE T.IDESTADO = 3
group by f.IDFLUJO, DESCRIPCION_FLUJO;
END;


/
--------------------------------------------------------
--  DDL for Procedure LISTAR_FLUJO_APROBADO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."LISTAR_FLUJO_APROBADO" (p_recordset OUT SYS_REFCURSOR)
AS 
BEGIN 
  OPEN p_recordset FOR
      SELECT DESCRIPCION_FLUJO as "Nombre de Flujo" from flujo where estado='Aprobado' 
      ORDER BY IDFLUJO ASC;
END;


/
--------------------------------------------------------
--  DDL for Procedure LISTAR_FLUJO_CAMBIAR_ESTADO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."LISTAR_FLUJO_CAMBIAR_ESTADO" (p_recordset OUT SYS_REFCURSOR)
IS
BEGIN
  OPEN p_recordset FOR
SELECT IDFLUJO AS "ID DE FLUJO",DESCRIPCION_FLUJO AS "DESCRIPCIÓN DE FLUJO",
ESTADO AS "Estado"
FROM FLUJO;
END;


/
--------------------------------------------------------
--  DDL for Procedure LISTAR_TAREAS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."LISTAR_TAREAS" (p_correo in usuarios.correo%type,p_recordset OUT SYS_REFCURSOR)
AS 
BEGIN 
  OPEN p_recordset FOR
    SELECT t.idtarea as "N° de Tarea",t.nombre_tarea as "Nombre de Tarea",t.descripcion_tarea as "Descripción",e.descripcion_estado as "Estado",t.fecha_tarea as "Fecha límite de Tarea" FROM tarea t join estado e on t.idestado = e.idestado
    join usuarios u on u.idusuario = t.idusuario
    where u.correo=p_correo and t.idestado not like 4;
END;


/
--------------------------------------------------------
--  DDL for Procedure LISTAR_TAREAS_ASIGNANDOSE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."LISTAR_TAREAS_ASIGNANDOSE" (p_correo in usuarios.correo%type,p_recordset OUT SYS_REFCURSOR)
AS 
BEGIN 
  OPEN p_recordset FOR
    SELECT t.idtarea as "N° de Tarea",t.nombre_tarea as "Nombre de Tarea",t.descripcion_tarea as "Descripción",e.descripcion_estado as "Estado",t.fecha_tarea as "Fecha límite de Tarea"  FROM tarea t join estado e on t.idestado = e.idestado
    join usuarios u on u.idusuario = t.idusuario
    where u.correo=p_correo and t.idestado=4;
END;


/
--------------------------------------------------------
--  DDL for Procedure LISTAR_TAREAS_DEVUELTAS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."LISTAR_TAREAS_DEVUELTAS" (p_recordset OUT SYS_REFCURSOR)
AS 
BEGIN 
  OPEN p_recordset FOR
    SELECT t.idtarea as "N° de Tarea",t.nombre_tarea as "Nombre de Tarea",t.descripcion_tarea as "Descripción",e.descripcion_estado as "Estado",t.fecha_tarea as "Fecha límite de Tarea"  FROM tarea t join estado e on t.idestado = e.idestado
    join usuarios u on u.idusuario = t.idusuario
    where t.idestado=5;
END;

/
--------------------------------------------------------
--  DDL for Procedure LISTAR_TAREAS_DEVUELTAS2
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."LISTAR_TAREAS_DEVUELTAS2" (p_recordset OUT SYS_REFCURSOR)
AS 
BEGIN 
  OPEN p_recordset FOR
    SELECT t.idtarea_sub "N° de Tarea Subordinada",ta.nombre_tarea as "Tarea Padre",t.descripcion_tarea as "Descripción",
    e.descripcion_estado as "Estado",t.fecha_Tarea as "Fecha límite de tarea" FROM tarea_subordinada t join estado e on t.idestado = e.idestado
    join usuarios u on u.idusuario=t.idusuario
    JOIN tarea ta on ta.idTarea = t.idTarea
    where t.idestado=5;
END;

/
--------------------------------------------------------
--  DDL for Procedure LISTAR_TAREAS_SUB_ASIGNANDOSE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."LISTAR_TAREAS_SUB_ASIGNANDOSE" (p_correo in usuarios.correo%type,p_recordset OUT SYS_REFCURSOR)
AS 
BEGIN 
  OPEN p_recordset FOR
    SELECT t.idtarea_sub "N° de Tarea Subordinada",ta.nombre_tarea as "Tarea Padre",t.descripcion_tarea as "Descripción",
    e.descripcion_estado as "Estado",t.fecha_Tarea as "Fecha límite de tarea" FROM tarea_subordinada t join estado e on t.idestado = e.idestado
    join usuarios u on u.idusuario=t.idusuario
    JOIN tarea ta on ta.idTarea = t.idTarea
    where u.correo=p_correo and t.idestado = 4
    ORDER BY t.IDTAREA ASC;
END;


/
--------------------------------------------------------
--  DDL for Procedure LISTAR_TAREAS_SUB_Y_FLUJO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."LISTAR_TAREAS_SUB_Y_FLUJO" (p_correo in usuarios.correo%type,p_recordset OUT SYS_REFCURSOR)
AS 
BEGIN 
  OPEN p_recordset FOR
    SELECT t.idtarea_sub "N° de Tarea Subordinada",ta.nombre_tarea as "Tarea Padre",t.descripcion_tarea as "Descripción",
    e.descripcion_estado as "Estado", t.fecha_tarea as "Fecha límite de Tarea" FROM tarea_subordinada t join estado e on t.idestado = e.idestado
    join usuarios u on u.idusuario=t.idusuario
    JOIN tarea ta on ta.idTarea = t.idTarea
    where  t.idestado BETWEEN 1 AND 3 AND u.correo=p_correo 
    ORDER BY t.IDTAREA ASC;
END;

/
--------------------------------------------------------
--  DDL for Procedure LISTAR_TAREAS_Y_FLUJO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."LISTAR_TAREAS_Y_FLUJO" (p_correo in usuarios.correo%type,p_recordset OUT SYS_REFCURSOR)
AS 
BEGIN 
  OPEN p_recordset FOR
    SELECT t.idtarea as "N° de Tarea",t.nombre_tarea as "Nombre de Tarea",t.descripcion_tarea as "Descripción",e.descripcion_estado as "Estado",f.descripcion_flujo as "Flujo", T.FECHA_TAREA AS "Fecha límite de tarea" FROM tarea t join estado e on t.idestado = e.idestado
    join flujo f on t.idflujo = f.idflujo
    join usuarios u on u.idusuario=t.idusuario
    where u.correo=p_correo AND T.IDESTADO NOT LIKE 4 and T.IDESTADO NOT LIKE 5
    ORDER BY t.IDTAREA ASC;
END;

/
--------------------------------------------------------
--  DDL for Procedure LISTAR_TIPO_USUARIOS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."LISTAR_TIPO_USUARIOS" (p_recordset OUT SYS_REFCURSOR)
AS 
BEGIN 
  OPEN p_recordset FOR
    SELECT descripcion FROM  tipo_usuario;
END;


/
--------------------------------------------------------
--  DDL for Procedure LISTAR_USUARIOS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."LISTAR_USUARIOS" (p_recordset OUT SYS_REFCURSOR)
AS 
BEGIN 
  OPEN p_recordset FOR
    SELECT u.idusuario as "ID de Usuario",u.correo as "Correo de Usuario",u.contrasena as "Contraseña",u.rut as "Rut",u.nombre as "Nombre",u.appaterno as "Apellido Paterno",u.apmaterno as "Apellido Materno",
    u.fec_creacion as "Fecha de Creación",tu.descripcion as "Tipo de Usuario" FROM usuarios u join tipo_usuario tu on u.idtipousuario=tu.idtipousuario;
END;

/
--------------------------------------------------------
--  DDL for Procedure LOGIN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."LOGIN" (p_correo IN USUARIOS.CORREO%TYPE, p_contrasena IN USUARIOS.CONTRASENA%TYPE, o_correo OUT Varchar2,o_contrasena out varchar2 )
IS
BEGIN
    SELECT correo,contrasena
    INTO o_correo,o_contrasena
    FROM usuarios where correo like p_correo and contrasena like p_contrasena;
END;


/
--------------------------------------------------------
--  DDL for Procedure SECURE_DML
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."SECURE_DML" 
IS
BEGIN
  IF TO_CHAR (SYSDATE, 'HH24:MI') NOT BETWEEN '08:00' AND '18:00'
        OR TO_CHAR (SYSDATE, 'DY') IN ('SAT', 'SUN') THEN
	RAISE_APPLICATION_ERROR (-20205,
		'You may only make changes during normal office hours');
  END IF;
END secure_dml;


/
--------------------------------------------------------
--  DDL for Procedure SELECCIONAR_USUARIOS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."SELECCIONAR_USUARIOS" (p_correo IN  USUARIOS.CORREO%TYPE,o_id OUT INT)
AS 
BEGIN 
    SELECT idusuario
    INTO O_ID
    FROM usuarios WHERE  correo = p_correo;
END;


/
--------------------------------------------------------
--  DDL for Procedure TEST
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."TEST" (x in number, y out number)as
begin
y:=x*x;
end;


/
--------------------------------------------------------
--  DDL for Procedure UPDATE_FLUJO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."UPDATE_FLUJO" (p_idflujo IN flujo.idflujo%TYPE,p_estado in flujo.estado%type)
IS
BEGIN
  UPDATE FLUJO SET ESTADO = P_ESTADO
  WHERE IDFLUJO = P_IDFLUJO;
  COMMIT;
END;


/
--------------------------------------------------------
--  DDL for Procedure UPDATE_FLUJO_ESTADO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."UPDATE_FLUJO_ESTADO" (p_idflujo IN flujo.idflujo%TYPE,p_estado in flujo.estado%type)
IS
BEGIN
  UPDATE FLUJO SET ESTADO = P_ESTADO
  WHERE IDFLUJO = P_IDFLUJO;
  COMMIT;
END;


/
--------------------------------------------------------
--  DDL for Procedure UPDATE_TAREA_ESTADO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."UPDATE_TAREA_ESTADO" (P_ESTADO IN tarea.idestado%TYPE,P_IDTAREA IN tarea.idtarea%TYPE)
IS
BEGIN
  UPDATE TAREA SET IDESTADO = P_ESTADO
  WHERE IDTAREA = P_IDTAREA;
  COMMIT;
END;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_TAREA_REASIGNAR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."UPDATE_TAREA_REASIGNAR" (p_correo IN usuarios.correo%TYPE,P_IDTAREA IN tarea.idtarea%TYPE)
IS
BEGIN
  UPDATE TAREA SET IDUSUARIO = (SELECT IDUSUARIO FROM USUARIOS WHERE CORREO=P_CORREO), IDESTADO = 1
  WHERE IDTAREA = P_IDTAREA;
  COMMIT;
END;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_TAREA_REASIGNAR2
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."UPDATE_TAREA_REASIGNAR2" (p_correo IN usuarios.correo%TYPE,P_IDTAREA IN tarea.idtarea%TYPE)
IS
BEGIN
  UPDATE TAREA SET IDUSUARIO = (SELECT IDUSUARIO FROM USUARIOS WHERE CORREO=P_CORREO), IDESTADO = 4
  WHERE IDTAREA = P_IDTAREA;
  COMMIT;
END;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_TAREA_REASIGNAR3
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."UPDATE_TAREA_REASIGNAR3" (P_IDTAREA IN tarea_subordinada.idtarea_sub%TYPE)
IS
BEGIN
   UPDATE TAREA_SUBORDINADA SET 
   IDESTADO = 5
  WHERE IDTAREA_SUB = P_IDTAREA;
  COMMIT;
END;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_TAREA_REASIGNAR4
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."UPDATE_TAREA_REASIGNAR4" (p_correo IN usuarios.correo%TYPE,P_IDTAREA IN TAREA_SUBORDINADA.idtarea_SUB%TYPE)
IS
BEGIN
  UPDATE TAREA_SUBORDINADA SET IDUSUARIO = (SELECT IDUSUARIO FROM USUARIOS WHERE CORREO=P_CORREO), IDESTADO = 4
  WHERE IDTAREA_SUB = P_IDTAREA;
  COMMIT;
END;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_TAREA_REASIGNAR5
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."UPDATE_TAREA_REASIGNAR5" (P_IDTAREA IN tarea.idtarea%TYPE)
IS
BEGIN
  UPDATE TAREA SET IDESTADO = 5
  WHERE IDTAREA = P_IDTAREA;
  COMMIT;
END;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_TAREA_SUB_ESTADO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."UPDATE_TAREA_SUB_ESTADO" (P_ESTADO IN tarea_subordinada.idestado%TYPE,P_IDTAREA IN tarea_subordinada.idtarea_sub%TYPE)
IS
BEGIN
  UPDATE TAREA_subordinada  SET IDESTADO = P_ESTADO
  WHERE IDTAREA_sub = P_IDTAREA;
  COMMIT;
END;


/
--------------------------------------------------------
--  DDL for Procedure UPDATE_TAREA_SUB_REASIGNAR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."UPDATE_TAREA_SUB_REASIGNAR" (p_correo IN usuarios.correo%TYPE,P_ESTADO IN tarea_subordinada.idestado%TYPE,P_IDTAREA IN tarea_subordinada.idtarea_sub%TYPE)
IS
BEGIN
  UPDATE TAREA_subordinada SET IDUSUARIO = (SELECT IDUSUARIO FROM USUARIOS WHERE CORREO=P_CORREO), IDESTADO = P_ESTADO
  WHERE IDTAREA_sub = P_IDTAREA;
  COMMIT;
END;


/
--------------------------------------------------------
--  DDL for Procedure UPDATE_USUARIO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PORTAFOLIO"."UPDATE_USUARIO" (p_RUT IN USUARIOS.RUT%TYPE,P_CORREO IN usuarios.correo%TYPE,P_CONTRASENA in usuarios.contrasena%type ,p_nombre in usuarios.nombre%type, p_paterno in usuarios.appaterno%type,p_materno in usuarios.apmaterno%type)
IS
BEGIN
  UPDATE USUARIOS SET CORREO=P_CORREO,CONTRASENA=P_CONTRASENA,NOMBRE=P_NOMBRE,APPATERNO=P_PATERNO,APMATERNO=P_MATERNO WHERE RUT=P_RUT; 
  COMMIT;
END;


/
--------------------------------------------------------
--  Constraints for Table FLUJO
--------------------------------------------------------

  ALTER TABLE "PORTAFOLIO"."FLUJO" MODIFY ("IDFLUJO" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."FLUJO" MODIFY ("DESCRIPCION_FLUJO" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."FLUJO" MODIFY ("ESTADO" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."FLUJO" ADD CONSTRAINT "IDFLUJO_PK" PRIMARY KEY ("IDFLUJO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USUARIOS
--------------------------------------------------------

  ALTER TABLE "PORTAFOLIO"."USUARIOS" MODIFY ("IDUSUARIO" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."USUARIOS" MODIFY ("CORREO" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."USUARIOS" MODIFY ("CONTRASENA" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."USUARIOS" MODIFY ("RUT" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."USUARIOS" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."USUARIOS" MODIFY ("APPATERNO" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."USUARIOS" MODIFY ("APMATERNO" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."USUARIOS" MODIFY ("IDTIPOUSUARIO" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."USUARIOS" ADD CONSTRAINT "IDUSUARIO_PK" PRIMARY KEY ("IDUSUARIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ESTADO
--------------------------------------------------------

  ALTER TABLE "PORTAFOLIO"."ESTADO" MODIFY ("IDESTADO" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."ESTADO" MODIFY ("DESCRIPCION_ESTADO" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."ESTADO" ADD CONSTRAINT "IDESTADO_PK" PRIMARY KEY ("IDESTADO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TAREA_SUBORDINADA
--------------------------------------------------------

  ALTER TABLE "PORTAFOLIO"."TAREA_SUBORDINADA" MODIFY ("IDTAREA_SUB" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."TAREA_SUBORDINADA" MODIFY ("IDTAREA" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."TAREA_SUBORDINADA" MODIFY ("DESCRIPCION_TAREA" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."TAREA_SUBORDINADA" MODIFY ("IDUSUARIO" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."TAREA_SUBORDINADA" MODIFY ("IDESTADO" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."TAREA_SUBORDINADA" MODIFY ("TIPO_TAREA" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."TAREA_SUBORDINADA" MODIFY ("FECHA_TAREA" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."TAREA_SUBORDINADA" ADD CONSTRAINT "IDTAREA_SUB_PK" PRIMARY KEY ("IDTAREA_SUB")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TIPO_USUARIO
--------------------------------------------------------

  ALTER TABLE "PORTAFOLIO"."TIPO_USUARIO" MODIFY ("IDTIPOUSUARIO" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."TIPO_USUARIO" ADD CONSTRAINT "IDTIPOUSUARIO_PK" PRIMARY KEY ("IDTIPOUSUARIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TAREA
--------------------------------------------------------

  ALTER TABLE "PORTAFOLIO"."TAREA" MODIFY ("IDTAREA" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."TAREA" MODIFY ("NOMBRE_TAREA" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."TAREA" MODIFY ("DESCRIPCION_TAREA" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."TAREA" MODIFY ("IDUSUARIO" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."TAREA" MODIFY ("IDESTADO" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."TAREA" MODIFY ("TIPO_TAREA" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."TAREA" MODIFY ("IDFLUJO" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."TAREA" MODIFY ("FECHA_TAREA" NOT NULL ENABLE);
  ALTER TABLE "PORTAFOLIO"."TAREA" ADD CONSTRAINT "IDTAREA_PK" PRIMARY KEY ("IDTAREA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TAREA
--------------------------------------------------------

  ALTER TABLE "PORTAFOLIO"."TAREA" ADD CONSTRAINT "FK_TAREA" FOREIGN KEY ("IDTAREA")
	  REFERENCES "PORTAFOLIO"."TAREA" ("IDTAREA") ENABLE;
  ALTER TABLE "PORTAFOLIO"."TAREA" ADD FOREIGN KEY ("IDUSUARIO")
	  REFERENCES "PORTAFOLIO"."USUARIOS" ("IDUSUARIO") ENABLE;
  ALTER TABLE "PORTAFOLIO"."TAREA" ADD FOREIGN KEY ("IDESTADO")
	  REFERENCES "PORTAFOLIO"."ESTADO" ("IDESTADO") ENABLE;
  ALTER TABLE "PORTAFOLIO"."TAREA" ADD FOREIGN KEY ("IDFLUJO")
	  REFERENCES "PORTAFOLIO"."FLUJO" ("IDFLUJO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TAREA_SUBORDINADA
--------------------------------------------------------

  ALTER TABLE "PORTAFOLIO"."TAREA_SUBORDINADA" ADD CONSTRAINT "FK_TAREA_SUB" FOREIGN KEY ("IDTAREA_SUB")
	  REFERENCES "PORTAFOLIO"."TAREA_SUBORDINADA" ("IDTAREA_SUB") ENABLE;
  ALTER TABLE "PORTAFOLIO"."TAREA_SUBORDINADA" ADD FOREIGN KEY ("IDUSUARIO")
	  REFERENCES "PORTAFOLIO"."USUARIOS" ("IDUSUARIO") ENABLE;
  ALTER TABLE "PORTAFOLIO"."TAREA_SUBORDINADA" ADD FOREIGN KEY ("IDESTADO")
	  REFERENCES "PORTAFOLIO"."ESTADO" ("IDESTADO") ENABLE;
  ALTER TABLE "PORTAFOLIO"."TAREA_SUBORDINADA" ADD FOREIGN KEY ("IDTAREA")
	  REFERENCES "PORTAFOLIO"."TAREA" ("IDTAREA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USUARIOS
--------------------------------------------------------

  ALTER TABLE "PORTAFOLIO"."USUARIOS" ADD CONSTRAINT "FK_JEFE" FOREIGN KEY ("IDUSUARIO")
	  REFERENCES "PORTAFOLIO"."USUARIOS" ("IDUSUARIO") ENABLE;
  ALTER TABLE "PORTAFOLIO"."USUARIOS" ADD CONSTRAINT "FK_TIPOUSUARIO" FOREIGN KEY ("IDTIPOUSUARIO")
	  REFERENCES "PORTAFOLIO"."TIPO_USUARIO" ("IDTIPOUSUARIO") ENABLE;

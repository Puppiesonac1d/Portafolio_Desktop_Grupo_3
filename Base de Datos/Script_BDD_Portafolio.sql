--Creación de Secuencias para AutoIncrements
drop sequence incremento_id_tipousuario;
CREATE SEQUENCE incremento_id_tipousuario
INCREMENT BY 1
START WITH 1;

drop sequence incremento_id_usuario;
CREATE SEQUENCE incremento_id_usuario
INCREMENT BY 1
START WITH 1;

drop sequence incremento_id_flujo;
CREATE SEQUENCE incremento_id_flujo
INCREMENT BY 1
START WITH 1;

drop sequence incremento_id_estado;
CREATE SEQUENCE incremento_id_estado
INCREMENT BY 1
START WITH 1;

drop sequence incremento_id_tarea;
CREATE SEQUENCE incremento_id_tarea
INCREMENT BY 1
START WITH 1;

drop sequence incremento_id_historial;
CREATE SEQUENCE incremento_id_historial
INCREMENT BY 1
START WITH 1;

--Creación de Tablas
DROP TABLE ESTADO CASCADE CONSTRAINTS;
DROP TABLE FLUJO CASCADE CONSTRAINTS;
DROP TABLE HISTORIAL_TAREAS;
DROP TABLE TIPO_TAREA CASCADE CONSTRAINTS;
DROP TABLE TAREA CASCADE CONSTRAINTS;
DROP TABLE TIPO_USUARIO CASCADE CONSTRAINTS;
DROP TABLE USUARIOS CASCADE CONSTRAINTS;



CREATE TABLE TIPO_USUARIO(
IDTIPOUSUARIO INT NOT NULL,
DESCRIPCION VARCHAR2(40),
CONSTRAINT idtipousuario_pk PRIMARY KEY (IDTIPOUSUARIO)
);

CREATE TABLE Usuarios(
IDUSUARIO INT NOT NULL,
CORREO VARCHAR2(30) NOT NULL,
CONTRASENA VARCHAR(100) NOT NULL,
RUT VARCHAR2(12) NOT NULL,
NOMBRE VARCHAR2(30) NOT NULL,
APPATERNO VARCHAR2(30) NOT NULL,
APMATERNO VARCHAR2(30) NOT NULL,
FEC_CREACION TIMESTAMP,
IDTIPOUSUARIO INT NOT NULL,
CONSTRAINT idUSUARIO_pk PRIMARY KEY (IDUSUARIO),
CONSTRAINT fk_tipousuario FOREIGN KEY (idtipousuario) REFERENCES tipo_usuario(idtipousuario),
CONSTRAINT fk_JEFE FOREIGN KEY(IDUSUARIO) REFERENCES USUARIOS(IDUSUARIO)
);

CREATE TABLE ESTADO(
IDESTADO INT NOT NULL,
DESCRIPCION_ESTADO VARCHAR(20) NOT NULL,
CONSTRAINT IDESTADO_pk PRIMARY KEY (IDESTADO)
);

CREATE TABLE FLUJO(
IDFLUJO INT NOT NULL,
DESCRIPCION_FLUJO VARCHAR2(100) NOT NULL,
ESTADO VARCHAR2(30) NOT NULL,
CANTIDAD_TAREA INT NOT NULL,
PORCENTAJE_COMPLETADO FLOAT(3),
CONSTRAINT IDFLUJO_pk PRIMARY KEY (IDFLUJO)
);


INSERT INTO FLUJO (IDFLUJO,DESCRIPCION_FLUJO,ESTADO,CANTIDAD_TAREA,PORCENTAJE_COMPLETADO) VALUES(incremento_id_flujo.nextval,'FLUJO 1','APROBADO',0,0);


CREATE TABLE TAREA(
IDTAREA INT NOT NULL,
DESCRIPCION_TAREA VARCHAR2(100) NOT NULL,
IDUSUARIO INT NOT NULL,
IDESTADO INT NOT NULL,
Tipo_Tarea varchar2(10) not null,
IDFLUJO INT NOT NULL,
CONSTRAINT IDTAREA_pk PRIMARY KEY (IDTAREA),
FOREIGN KEY (IDUSUARIO) REFERENCES USUARIOS(IDUSUARIO),
FOREIGN KEY (IDESTADO) REFERENCES ESTADO(IDESTADO),
FOREIGN KEY (IDFLUJO) REFERENCES FLUJO(IDFLUJO),
CONSTRAINT fk_tarea FOREIGN KEY(IDTAREA) REFERENCES TAREA(IDTAREA)
);

CREATE TABLE Historial_tareas(
IDHISTORIAL_tarea INT NOT NULL,
IDTAREA INT NOT NULL,
IDUSUARIO INT NOT NULL,
DESCRIPCION_TAREA VARCHAR2(100) NOT NULL,
FECHA_TAREA timestamp,
CONSTRAINT IDHISTORIAL_pk PRIMARY KEY (IDHISTORIAL_tarea)
);

CREATE TABLE Historial_flujo(
IDHISTORIAL_flujo INT NOT NULL,
IDFLUJO INT NOT NULL,
IDTAREA INT NOT NULL,
IDUSUARIO INT NOT NULL,
DESCRIPCION_TAREA VARCHAR2(100) NOT NULL,
FECHA_TAREA timestamp,
CONSTRAINT IDHISTORIAL_FLUJO_pk PRIMARY KEY (IDHISTORIAL_flujo)
);


--Poblado de Tablas

INSERT INTO TIPO_USUARIO (idtipousuario,descripcion) values (incremento_id_tipousuario.nextval,'Administrador');
INSERT INTO TIPO_USUARIO (idtipousuario,descripcion) values (incremento_id_tipousuario.nextval,'Funcionario');
INSERT INTO TIPO_USUARIO (idtipousuario,descripcion) values (incremento_id_tipousuario.nextval,'Diseñador');

INSERT INTO ESTADO(idestado,descripcion_estado) values (incremento_id_estado.nextval,'PENDIENTE');
INSERT INTO ESTADO(idestado,descripcion_estado) values (incremento_id_estado.nextval,'REALIZANDOSE');
INSERT INTO ESTADO(idestado,descripcion_estado) values (incremento_id_estado.nextval,'TERMINADA');
INSERT INTO ESTADO(idestado,descripcion_estado) values (incremento_id_estado.nextval,'REASIGNADA');


--Procedimientos almacenados


CREATE OR REPLACE PROCEDURE iniciar_sesion_usuario (p_correo IN USUARIOS.CORREO%TYPE, p_contrasena IN USUARIOS.CONTRASENA%TYPE, o_correo OUT Varchar2,o_contrasena out varchar2,o_credencial out int)
IS
BEGIN
    SELECT correo,contrasena,idtipousuario
    INTO o_correo,o_contrasena,o_credencial
    FROM usuarios where correo like p_correo and contrasena like p_contrasena;
END;
/

--Usuarios

CREATE OR REPLACE PROCEDURE seleccionar_usuarios (p_correo IN  USUARIOS.CORREO%TYPE,o_id OUT INT)
AS 
BEGIN 
    SELECT idusuario
    INTO O_ID
    FROM usuarios WHERE  correo = p_correo;
END;
/

create or replace PROCEDURE iniciar_sesion_admin (p_correo IN  USUARIOS.CORREO%TYPE,p_pass in usuarios.contrasena%type,p_recordset OUT SYS_REFCURSOR)
AS 
BEGIN 
OPEN p_recordset FOR
    SELECT *
    FROM usuarios WHERE correo = p_correo and contrasena = p_pass;
END;
/

CREATE OR REPLACE PROCEDURE listar_usuarios (p_recordset OUT SYS_REFCURSOR)
AS 
BEGIN 
  OPEN p_recordset FOR
    SELECT u.idusuario,u.correo,u.contrasena,u.rut,u.nombre,u.appaterno,u.apmaterno,u.fec_creacion,tu.descripcion FROM usuarios u join tipo_usuario tu on u.idtipousuario=tu.idtipousuario;
END;
/

CREATE OR REPLACE PROCEDURE insert_usuario(p_correo IN usuarios.correo%TYPE,p_pass in usuarios.contrasena%type ,p_rut in usuarios.rut%type,p_nombre in usuarios.nombre%type, p_paterno in usuarios.appaterno%type,p_materno in usuarios.apmaterno%type,p_tipoUsuario in usuarios.idtipousuario%type)
IS
BEGIN
  INSERT INTO USUARIOS (IDUSUARIO,CORREO,CONTRASENA,RUT,NOMBRE,APPATERNO,APMATERNO,fec_creacion,IDTIPOUSUARIO) 
  VALUES (incremento_id_usuario.nextval,p_correo,p_pass,p_rut,p_nombre,p_paterno,p_materno,CURRENT_TIMESTAMP,p_tipoUsuario); 
  COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE update_usuario(p_RUT IN USUARIOS.RUT%TYPE,P_CORREO IN usuarios.correo%TYPE,P_CONTRASENA in usuarios.contrasena%type ,p_nombre in usuarios.nombre%type, p_paterno in usuarios.appaterno%type,p_materno in usuarios.apmaterno%type)
IS
BEGIN
  UPDATE USUARIOS SET CORREO=P_CORREO,CONTRASENA=P_CONTRASENA,NOMBRE=P_NOMBRE,APPATERNO=P_PATERNO,APMATERNO=P_MATERNO WHERE RUT=P_RUT; 
  COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE borrar_usuarios(p_correo usuarios.correo%TYPE) AS
   BEGIN
      DELETE FROM usuarios
      WHERE correo = p_correo;
   END borrar_usuarios;
/

--Tipo de Usuarios

CREATE OR REPLACE PROCEDURE listar_tipo_usuarios (p_recordset OUT SYS_REFCURSOR)
AS 
BEGIN 
  OPEN p_recordset FOR
    SELECT descripcion FROM  tipo_usuario;
END;
/

CREATE OR REPLACE PROCEDURE insert_tipo_usuario(p_descripcion IN tipo_usuario.descripcion%TYPE)
IS
BEGIN
  INSERT INTO TIPO_USUARIO ("IDTIPOUSUARIO","DESCRIPCION") 
  VALUES (incremento_id_tipousuario.nextval,p_descripcion);
  COMMIT;
END;
/

--Tarea / flujo
drop trigger tr_tarea;

CREATE OR REPLACE PROCEDURE INSERT_TAREA(p_descripcion in tarea.descripcion_tarea%type,p_idusuario in tarea.idusuario%type ,P_ESTADO IN INT,p_tipotarea in tarea.tipo_tarea%type,p_flujo flujo.idflujo%type)
IS
BEGIN  
  INSERT INTO TAREA (idtarea,DESCRIPCION_TAREA,IDUSUARIO,IDESTADO,TIPO_TAREA,idflujo) 
  VALUES (incremento_id_tarea.nextval,P_DESCRIPCION,P_IDUSUARIO,P_ESTADO,P_TIPOTAREA,P_FLUJO); 
  COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE listar_tareas (p_correo in usuarios.correo%type,p_recordset OUT SYS_REFCURSOR)
AS 
BEGIN 
  OPEN p_recordset FOR
    SELECT t.idtarea,t.descripcion_tarea,t.idusuario,e.descripcion_estado FROM tarea t join estado e on t.idestado = e.idestado
    join usuarios u on u.idusuario = t.idusuario
    where u.correo=p_correo;
END;
/

CREATE OR REPLACE PROCEDURE listar_tareas_asignandose (p_correo in usuarios.correo%type,p_recordset OUT SYS_REFCURSOR)
AS 
BEGIN 
  OPEN p_recordset FOR
    SELECT t.idtarea,t.descripcion_tarea,t.idusuario,e.descripcion_estado FROM tarea t join estado e on t.idestado = e.idestado
    join usuarios u on u.idusuario = t.idusuario
    where u.correo=p_correo and t.idestado=4;
END;
/


CREATE OR REPLACE PROCEDURE listar_tareas_y_flujo (p_correo in usuarios.correo%type,p_recordset OUT SYS_REFCURSOR)
AS 
BEGIN 
  OPEN p_recordset FOR
    SELECT t.idtarea,t.descripcion_tarea,t.idusuario,e.descripcion_estado,f.descripcion_flujo FROM tarea t join estado e on t.idestado = e.idestado
    join flujo f on t.idflujo = f.idflujo
    join usuarios u on u.idusuario=t.idusuario
    where u.correo=p_correo;
END;
/


CREATE OR REPLACE PROCEDURE update_tarea_reasignar(p_correo IN usuarios.correo%TYPE,P_ESTADO IN tarea.idestado%TYPE,P_IDTAREA IN tarea.idtarea%TYPE)
IS
BEGIN
  UPDATE TAREA SET IDUSUARIO = (SELECT IDUSUARIO FROM USUARIOS WHERE CORREO=P_CORREO), IDESTADO = P_ESTADO
  WHERE IDTAREA = P_IDTAREA;
  COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE update_tarea_estado(P_ESTADO IN tarea.idestado%TYPE,P_IDTAREA IN tarea.idtarea%TYPE)
IS
BEGIN
  UPDATE TAREA SET IDESTADO = P_ESTADO
  WHERE IDTAREA = P_IDTAREA;
  COMMIT;
END;
/

--FLUJOS DE TAREA
CREATE OR REPLACE PROCEDURE insert_flujo(p_descripcion in flujo.descripcion_flujo%type, p_estado in flujo.estado%type)
IS
BEGIN
  INSERT INTO Flujo ("IDFLUJO","DESCRIPCION_FLUJO","ESTADO") 
  VALUES (incremento_id_flujo.nextval,p_descripcion,p_estado);
  COMMIT;
END;
/

create or replace PROCEDURE update_flujo_estado(p_idflujo IN flujo.idflujo%TYPE,p_estado in flujo.estado%type)
IS
BEGIN
  UPDATE FLUJO SET ESTADO = P_ESTADO
  WHERE IDFLUJO = P_IDFLUJO;
  COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE update_flujo_porcentaje
is
BEGIN
 for o in (select idflujo from flujo)
  loop
UPDATE FLUJO SET CANTIDAD_TAREA = (select count(idtarea) from tarea where idflujo=1) WHERE IDFLUJO=1;
  end loop;
END;
/

CREATE OR REPLACE PROCEDURE listar_flujo (p_recordset OUT SYS_REFCURSOR)
AS 
BEGIN 
  OPEN p_recordset FOR
  SELECT IDFLUJO AS "ID DE FLUJO",DESCRIPCION_FLUJO AS "DESCRIPCIÓN DE FLUJO",CANTIDAD_TAREA AS "CANTIDAD DE TAREAS",
  CONCAT(ROUND(((SELECT COUNT(IDTAREA) FROM TAREA WHERE IDESTADO=3)*100 / CANTIDAD_TAREA)),'%') AS "PORCENTAJE COMPLETADO" 
  FROM FLUJO group by IDFLUJO, DESCRIPCION_FLUJO, CANTIDAD_TAREA;
END;
/

CREATE OR REPLACE PROCEDURE listar_flujo_aprobado (p_recordset OUT SYS_REFCURSOR)
AS 
BEGIN 
  OPEN p_recordset FOR
    SELECT descripcion_flujo,ESTADO from flujo where estado='Aprobado';
END;
/

--Historiales

CREATE OR REPLACE PROCEDURE insert_historial(p_idtarea IN tarea.idtarea%TYPE,p_idusuario in usuarios.idusuario%type,p_descripcion in tarea.descripcion_tarea%type)
IS
BEGIN
  INSERT INTO historial_tareas ("IDHISTORIAL","IDTAREA","IDUSUARIO","DESCRIPCION_TAREA","FECHA_TAREA") 
  VALUES (incremento_id_historial.nextval,p_idtarea,p_idusuario,p_descripcion,CURRENT_TIMESTAMP);
  COMMIT;
END;
/



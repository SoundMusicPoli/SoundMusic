--SECUENCIAS PARA QUE LOS IDS DE LAS TABLAS SE INCREMENTEN AUTOMATICAMENTE
CREATE SEQUENCE PAIS_SEQ START WITH 1;
CREATE SEQUENCE CIUDAD_SEQ START WITH 1;
CREATE SEQUENCE PERMISO_SEQ START WITH 1;
CREATE SEQUENCE TIPO_ACTIVIDAD_SEQ START WITH 1;
CREATE SEQUENCE COSTO_ACTIVITIDAD_SEQ START WITH 1;
CREATE SEQUENCE PERFIL_SEQ START WITH 1;
CREATE SEQUENCE PERFIL_PERMISO_SEQ START WITH 1;
CREATE SEQUENCE USUARIO_LOGIN_SEQ START WITH 1;
CREATE SEQUENCE LOGRO_SEQ START WITH 1;
CREATE SEQUENCE CONTACTO_SEQ START WITH 1;
CREATE SEQUENCE ARTISTA_SEQ START WITH 1;
CREATE SEQUENCE ALBUM_SEQ START WITH 1;
CREATE SEQUENCE LOGRO_ARTISTA_SEQ START WITH 1;
CREATE SEQUENCE EMPRESA_DIFUSORA_SEQ START WITH 1;
CREATE SEQUENCE ARTISTA_EMPRESA_SEQ START WITH 1;
CREATE SEQUENCE USUARIO_SEQ START WITH 1;
CREATE SEQUENCE LOG_AUDITORIA_SEQ START WITH 1;
CREATE SEQUENCE REGALIA_SEQ START WITH 1;

--TRIGGER PARA QUE LOS IDS DE LAS TABLAS SE INCREMENTEN AUTOMATICAMENTE
CREATE OR REPLACE TRIGGER INC_PAIS
BEFORE INSERT ON PAIS 
REFERENCING NEW AS NEW OLD AS OLD 
FOR EACH ROW

BEGIN
  SELECT PAIS_SEQ.NEXTVAL
  INTO   :new.ID_PAIS
  FROM   dual;
END INC_PAIS;

CREATE OR REPLACE TRIGGER INC_CIUDAD
BEFORE INSERT ON CIUDAD 
REFERENCING NEW AS NEW OLD AS OLD 
FOR EACH ROW

BEGIN
  SELECT CIUDAD_SEQ.NEXTVAL
  INTO   :new.ID_CIUDAD
  FROM   dual;
END INC_CIUDAD;

CREATE OR REPLACE TRIGGER INC_PERMISO
BEFORE INSERT ON PERMISO 
REFERENCING NEW AS NEW OLD AS OLD 
FOR EACH ROW

BEGIN
  SELECT PERMISO_SEQ.NEXTVAL
  INTO   :new.ID_PERMISO
  FROM   dual;
END INC_PERMISO;

CREATE OR REPLACE TRIGGER INC_TIPO_ACTIVIDAD
BEFORE INSERT ON TIPO_ACTIVIDAD 
REFERENCING NEW AS NEW OLD AS OLD 
FOR EACH ROW

BEGIN
  SELECT TIPO_ACTIVIDAD_SEQ.NEXTVAL
  INTO   :new.ID_TIPO_ACTIVIDAD
  FROM   dual;
END INC_TIPO_ACTIVIDAD;

CREATE OR REPLACE TRIGGER INC_COSTO_ACTIVITIDAD
BEFORE INSERT ON COSTO_ACTIVITIDAD 
REFERENCING NEW AS NEW OLD AS OLD 
FOR EACH ROW

BEGIN
  SELECT COSTO_ACTIVITIDAD_SEQ.NEXTVAL
  INTO   :new.ID_COSTO_ACTIVIDAD
  FROM   dual;
END INC_COSTO_ACTIVITIDAD;

CREATE OR REPLACE TRIGGER INC_PERFIL
BEFORE INSERT ON PERFIL 
REFERENCING NEW AS NEW OLD AS OLD 
FOR EACH ROW

BEGIN
  SELECT PERFIL_SEQ.NEXTVAL
  INTO   :new.ID_PERFIL
  FROM   dual;
END INC_PERFIL;

CREATE OR REPLACE TRIGGER INC_PERFIL_PERMISO
BEFORE INSERT ON PERFIL_PERMISO 
REFERENCING NEW AS NEW OLD AS OLD 
FOR EACH ROW

BEGIN
  SELECT PERFIL_PERMISO_SEQ.NEXTVAL
  INTO   :new.ID_PERFIL_PERMISO
  FROM   dual;
END INC_PERFIL_PERMISO;

CREATE OR REPLACE TRIGGER INC_USUARIO_LOGIN
BEFORE INSERT ON USUARIO_LOGIN 
REFERENCING NEW AS NEW OLD AS OLD 
FOR EACH ROW

BEGIN
  SELECT USUARIO_LOGIN_SEQ.NEXTVAL
  INTO   :new.ID_USUARIO_LOGIN
  FROM   dual;
END INC_USUARIO_LOGIN;

CREATE OR REPLACE TRIGGER INC_LOGRO
BEFORE INSERT ON LOGRO 
REFERENCING NEW AS NEW OLD AS OLD 
FOR EACH ROW

BEGIN
  SELECT LOGRO_SEQ.NEXTVAL
  INTO   :new.ID_LOGRO
  FROM   dual;
END INC_LOGRO;

CREATE OR REPLACE TRIGGER INC_CONTACTO
BEFORE INSERT ON CONTACTO 
REFERENCING NEW AS NEW OLD AS OLD 
FOR EACH ROW

BEGIN
  SELECT CONTACTO_SEQ.NEXTVAL
  INTO   :new.ID_CONTACTO
  FROM   dual;
END INC_CONTACTO;

CREATE OR REPLACE TRIGGER INC_ARTISTA
BEFORE INSERT ON ARTISTA 
REFERENCING NEW AS NEW OLD AS OLD 
FOR EACH ROW

BEGIN
  SELECT ARTISTA_SEQ.NEXTVAL
  INTO   :new.ID_ARTISTA
  FROM   dual;
END INC_ARTISTA;

CREATE OR REPLACE TRIGGER INC_ALBUM
BEFORE INSERT ON ALBUM 
REFERENCING NEW AS NEW OLD AS OLD 
FOR EACH ROW

BEGIN
  SELECT ALBUM_SEQ.NEXTVAL
  INTO   :new.ID_ALBUM
  FROM   dual;
END INC_ALBUM;

CREATE OR REPLACE TRIGGER INC_LOGRO_ARTISTA
BEFORE INSERT ON LOGRO_ARTISTA 
REFERENCING NEW AS NEW OLD AS OLD 
FOR EACH ROW

BEGIN
  SELECT LOGRO_ARTISTA_SEQ.NEXTVAL
  INTO   :new.ID_LOGRO_ARTISTA
  FROM   dual;
END INC_LOGRO_ARTISTA;

CREATE OR REPLACE TRIGGER INC_EMPRESA_DIFUSORA
BEFORE INSERT ON EMPRESA_DIFUSORA 
REFERENCING NEW AS NEW OLD AS OLD 
FOR EACH ROW

BEGIN
  SELECT EMPRESA_DIFUSORA_SEQ.NEXTVAL
  INTO   :new.ID_EMPRESA_DIFUSORA
  FROM   dual;
END INC_EMPRESA_DIFUSORA;

CREATE OR REPLACE TRIGGER INC_ARTISTA_EMPRESA
BEFORE INSERT ON ARTISTA_EMPRESA 
REFERENCING NEW AS NEW OLD AS OLD 
FOR EACH ROW

BEGIN
  SELECT ARTISTA_EMPRESA_SEQ.NEXTVAL
  INTO   :new.ID_ARTISTA_EMPRESA
  FROM   dual;
END INC_ARTISTA_EMPRESA;

CREATE OR REPLACE TRIGGER INC_USUARIO
BEFORE INSERT ON USUARIO 
REFERENCING NEW AS NEW OLD AS OLD 
FOR EACH ROW

BEGIN
  SELECT USUARIO_SEQ.NEXTVAL
  INTO   :new.ID_USUARIO
  FROM   dual;
END INC_USUARIO;

CREATE OR REPLACE TRIGGER INC_LOG_AUDITORIA
BEFORE INSERT ON LOG_AUDITORIA 
REFERENCING NEW AS NEW OLD AS OLD 
FOR EACH ROW

BEGIN
  SELECT LOG_AUDITORIA_SEQ.NEXTVAL
  INTO   :new.ID_LOG_AUDITORIA
  FROM   dual;
END INC_LOG_AUDITORIA;

CREATE OR REPLACE TRIGGER INC_REGALIA
BEFORE INSERT ON REGALIA 
REFERENCING NEW AS NEW OLD AS OLD 
FOR EACH ROW

BEGIN
  SELECT REGALIA_SEQ.NEXTVAL
  INTO   :new.ID_REGALIA
  FROM   dual;
END INC_REGALIA;
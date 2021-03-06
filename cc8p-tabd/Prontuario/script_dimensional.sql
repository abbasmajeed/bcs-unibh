-- Generated by Oracle SQL Developer Data Modeler 3.3.0.747
--   at:        2013-11-03 20:33:18 BRST
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g




CREATE TABLE CONSULTA
  (
    COD_CONSULTA INTEGER NOT NULL ,
    ANO_MES      INTEGER NOT NULL ,
    COD_PACIENTE INTEGER NOT NULL ,
    CRM          INTEGER NOT NULL ,
    COD_ESP      INTEGER NOT NULL ,
    COD_PLANO    INTEGER NOT NULL ,
    VLR_CONSULTA FLOAT ,
    COD_PROC INTEGER ,
    VLR_PROC FLOAT ,
    COD_EXAME INTEGER ,
    VLR_EXAME FLOAT ,
    COD_MED INTEGER ,
    VLR_MED FLOAT
  ) ;
ALTER TABLE CONSULTA ADD CONSTRAINT CONSULTA_PK PRIMARY KEY
(
  COD_CONSULTA
)
;

CREATE TABLE EXAME
  (
    COD_EXAME  INTEGER NOT NULL ,
    DESC_EXAME VARCHAR2 (70 CHAR) ,
    VLR_EXAME FLOAT
  ) ;
ALTER TABLE EXAME ADD CONSTRAINT EXAME_PK PRIMARY KEY
(
  COD_EXAME
)
;

CREATE TABLE MEDICAMENTO
  (
    COD_MED  INTEGER NOT NULL ,
    DESC_MED VARCHAR2 (70 CHAR) ,
    VLR_MEDICAMENTO FLOAT
  ) ;
ALTER TABLE MEDICAMENTO ADD CONSTRAINT MEDICAMENTO_PK PRIMARY KEY
(
  COD_MED
)
;

CREATE TABLE MEDICO
  (
    CRM         INTEGER NOT NULL ,
    NOME_MEDICO VARCHAR2 (70) ,
    COD_ESP     INTEGER NOT NULL ,
    NOME_ESP    VARCHAR2 (50 CHAR)
  ) ;
ALTER TABLE MEDICO ADD CONSTRAINT MEDICO_PK PRIMARY KEY
(
  CRM, COD_ESP
)
;

CREATE TABLE PACIENTE
  (
    COD_PACIENTE  INTEGER NOT NULL ,
    NOME_PACIENTE VARCHAR2 (70 CHAR)
  ) ;
ALTER TABLE PACIENTE ADD CONSTRAINT PACIENTE_PK PRIMARY KEY
(
  COD_PACIENTE
)
;

CREATE TABLE PERIODO
  ( ANO_MES INTEGER NOT NULL
  ) ;
ALTER TABLE PERIODO ADD CONSTRAINT PERIODO_PK PRIMARY KEY
(
  ANO_MES
)
;

CREATE TABLE PLANO_SAUDE
  (
    COD_PLANO       INTEGER NOT NULL ,
    NOME_PLANO      VARCHAR2 (70 CHAR) ,
    NOME_TIPO_PLANO VARCHAR2 (50 CHAR)
  ) ;
ALTER TABLE PLANO_SAUDE ADD CONSTRAINT PLANO_SAUDE_PK PRIMARY KEY
(
  COD_PLANO
)
;

CREATE TABLE PROC
  (
    COD_PROC  INTEGER NOT NULL ,
    DESC_PROC VARCHAR2 (50 CHAR) NOT NULL ,
    VLR_PROC FLOAT
  ) ;
ALTER TABLE PROC ADD CONSTRAINT PROC_PK PRIMARY KEY
(
  COD_PROC
)
;

-- Error - Foreign Key CONSULTA_EXAME_FK has no columns

ALTER TABLE CONSULTA ADD CONSTRAINT CONSULTA_EXAME_FK FOREIGN KEY ( COD_EXAME ) REFERENCES EXAME ( COD_EXAME ) ON
DELETE SET NULL ;

ALTER TABLE CONSULTA ADD CONSTRAINT CONSULTA_MEDICAMENTO_FK FOREIGN KEY ( COD_MED ) REFERENCES MEDICAMENTO ( COD_MED ) ON
DELETE SET NULL ;

-- Error - Foreign Key CONSULTA_MEDICAMENTO_FK has no columns

ALTER TABLE CONSULTA ADD CONSTRAINT CONSULTA_MEDICO_FK FOREIGN KEY ( CRM, COD_ESP ) REFERENCES MEDICO ( CRM, COD_ESP ) ;

ALTER TABLE CONSULTA ADD CONSTRAINT CONSULTA_PACIENTE_FK FOREIGN KEY ( COD_PACIENTE ) REFERENCES PACIENTE ( COD_PACIENTE ) ;

ALTER TABLE CONSULTA ADD CONSTRAINT CONSULTA_PERIODO_FK FOREIGN KEY ( ANO_MES ) REFERENCES PERIODO ( ANO_MES ) ;

ALTER TABLE CONSULTA ADD CONSTRAINT CONSULTA_PLANO_SAUDE_FK FOREIGN KEY ( COD_PLANO ) REFERENCES PLANO_SAUDE ( COD_PLANO ) ;

-- Error - Foreign Key CONSULTA_PROC_FK has no columns

ALTER TABLE CONSULTA ADD CONSTRAINT CONSULTA_PROC_FK FOREIGN KEY ( COD_PROC ) REFERENCES PROC ( COD_PROC ) ON
DELETE SET NULL ;


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             8
-- CREATE INDEX                             0
-- ALTER TABLE                             15
-- CREATE VIEW                              0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- ERRORS                                   3
-- WARNINGS                                 0

-- Generated by Oracle SQL Developer Data Modeler 3.3.0.747
--   at:        2013-11-03 22:17:12 BRST
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g




CREATE TABLE FABRICANTE
  (
    COD_FABRICA  INTEGER NOT NULL ,
    NOME_FABRICA VARCHAR2 (70)
  ) ;
ALTER TABLE FABRICANTE ADD CONSTRAINT FABRICANTE_PK PRIMARY KEY
(
  COD_FABRICA
)
;

CREATE TABLE FATURAMENTO
  (
    NF   INTEGER NOT NULL ,
    DATA DATE ,
    VLR_TOTAL FLOAT ,
    IMPOSTO FLOAT ,
    TX_IMP FLOAT ,
    COD_MATRIZ INTEGER NOT NULL
  ) ;
ALTER TABLE FATURAMENTO ADD CONSTRAINT FATURAMENTO_PK PRIMARY KEY
(
  NF
)
;

CREATE TABLE FILIAL
  (
    COD_FILIAL  INTEGER NOT NULL ,
    NOME_FILIAL VARCHAR2 (70) ,
    COD_MATRIZ  INTEGER NOT NULL
  ) ;
ALTER TABLE FILIAL ADD CONSTRAINT FILIAL_PK PRIMARY KEY
(
  COD_FILIAL
)
;

CREATE TABLE MATRIZ
  (
    COD_MATRIZ  INTEGER NOT NULL ,
    NOME_MATRIZ VARCHAR2 (70)
  ) ;
ALTER TABLE MATRIZ ADD CONSTRAINT MATRIZ_PK PRIMARY KEY
(
  COD_MATRIZ
)
;

CREATE TABLE PEDIDO
  (
    COD_PEDIDO   INTEGER NOT NULL ,
    COD_MATRIZ   INTEGER NOT NULL ,
    COD_FILIAL   INTEGER NOT NULL ,
    COD_SOFTWARE INTEGER NOT NULL ,
    QTDE         INTEGER ,
    NF           INTEGER NOT NULL ,
    VLR_UNITARIO FLOAT
  ) ;
ALTER TABLE PEDIDO ADD CONSTRAINT PEDIDO_PK PRIMARY KEY
(
  COD_PEDIDO
)
;

CREATE TABLE SOFTWARE
  (
    COD_SOFTWARE  INTEGER NOT NULL ,
    COD_FABRICA   INTEGER NOT NULL ,
    NOME_SOFTWARE VARCHAR2 (70) ,
    VALOR FLOAT
  ) ;
ALTER TABLE SOFTWARE ADD CONSTRAINT SOFTWARE_PK PRIMARY KEY
(
  COD_SOFTWARE
)
;

ALTER TABLE FATURAMENTO ADD CONSTRAINT FATURAMENTO_MATRIZ_FK FOREIGN KEY ( COD_MATRIZ ) REFERENCES MATRIZ ( COD_MATRIZ ) ;

ALTER TABLE FILIAL ADD CONSTRAINT FILIAL_MATRIZ_FK FOREIGN KEY ( COD_MATRIZ ) REFERENCES MATRIZ ( COD_MATRIZ ) ;

-- Error - Foreign Key MATRIZ_FILIAL_FK has no columns

ALTER TABLE PEDIDO ADD CONSTRAINT PEDIDO_FATURAMENTO_FK FOREIGN KEY ( NF ) REFERENCES FATURAMENTO ( NF ) ;

ALTER TABLE PEDIDO ADD CONSTRAINT PEDIDO_FILIAL_FK FOREIGN KEY ( COD_FILIAL ) REFERENCES FILIAL ( COD_FILIAL ) ;

ALTER TABLE PEDIDO ADD CONSTRAINT PEDIDO_MATRIZ_FK FOREIGN KEY ( COD_MATRIZ ) REFERENCES MATRIZ ( COD_MATRIZ ) ;

ALTER TABLE PEDIDO ADD CONSTRAINT PEDIDO_SOFTWARE_FK FOREIGN KEY ( COD_SOFTWARE ) REFERENCES SOFTWARE ( COD_SOFTWARE ) ;

ALTER TABLE SOFTWARE ADD CONSTRAINT SOFTWARE_FABRICANTE_FK FOREIGN KEY ( COD_FABRICA ) REFERENCES FABRICANTE ( COD_FABRICA ) ;


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             6
-- CREATE INDEX                             0
-- ALTER TABLE                             13
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
-- ERRORS                                   1
-- WARNINGS                                 0

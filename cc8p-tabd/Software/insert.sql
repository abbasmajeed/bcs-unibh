Insert into FABRICANTE (COD_FABRICA,NOME_FABRICA) values (1,'MICROSOFT');
Insert into FABRICANTE (COD_FABRICA,NOME_FABRICA) values (2,'APPLE');
INSERT INTO FABRICANTE (COD_FABRICA,NOME_FABRICA) VALUES (3,'ADOBE');
Insert into FABRICANTE (COD_FABRICA,NOME_FABRICA) values (4,'ORACLE');

Insert into SOFTWARE (COD_SOFTWARE,COD_FABRICA,NOME_SOFTWARE,VALOR) values (1,1,'OFFICE',80);
Insert into SOFTWARE (COD_SOFTWARE,COD_FABRICA,NOME_SOFTWARE,VALOR) values (2,2,'ITUNES',150);
Insert into SOFTWARE (COD_SOFTWARE,COD_FABRICA,NOME_SOFTWARE,VALOR) values (3,3,'ADOBE READER',10);
Insert into SOFTWARE (COD_SOFTWARE,COD_FABRICA,NOME_SOFTWARE,VALOR) values (4,4,'SQL DEVELOPER',30);
Insert into SOFTWARE (COD_SOFTWARE,COD_FABRICA,NOME_SOFTWARE,VALOR) values (5,1,'SKY DRIVE',80);
INSERT INTO SOFTWARE (COD_SOFTWARE,COD_FABRICA,NOME_SOFTWARE,VALOR) VALUES (6,2,'QUICKTIME',30);
Insert into SOFTWARE (COD_SOFTWARE,COD_FABRICA,NOME_SOFTWARE,VALOR) values (7,3,'PHOTOSHOP',200);

Insert into MATRIZ (COD_MATRIZ,NOME_MATRIZ) values (1,'MATRIZ 1');
INSERT INTO MATRIZ (COD_MATRIZ,NOME_MATRIZ) VALUES (2,'MATRIZ 2');
Insert into MATRIZ (COD_MATRIZ,NOME_MATRIZ) values (3,'MATRIZ 3');

Insert into FILIAL (COD_FILIAL,NOME_FILIAL,COD_MATRIZ) values (1,'FILIAL VENDA NOVA',1);
Insert into FILIAL (COD_FILIAL,NOME_FILIAL,COD_MATRIZ) values (2,'FILIAL BARREIRO',2);
Insert into FILIAL (COD_FILIAL,NOME_FILIAL,COD_MATRIZ) values (3,'FILIAL CENTRO',3);
INSERT INTO FILIAL (COD_FILIAL,NOME_FILIAL,COD_MATRIZ) VALUES (4,'FILIAL LESTE',1);
INSERT INTO FILIAL (COD_FILIAL,NOME_FILIAL,COD_MATRIZ) VALUES (5,'FILIAL SUL',2);

Insert into FATURAMENTO (NF,DATA,VLR_TOTAL,IMPOSTO,TX_IMP,COD_MATRIZ) values (1,to_date('01/11/2013','DD/MM/YYYY'),230,10,5,1);
Insert into FATURAMENTO (NF,DATA,VLR_TOTAL,IMPOSTO,TX_IMP,COD_MATRIZ) values (2,to_date('02/11/2013','DD/MM/YYYY'),40,15,4,2);
Insert into FATURAMENTO (NF,DATA,VLR_TOTAL,IMPOSTO,TX_IMP,COD_MATRIZ) values (3,to_date('03/11/2013','DD/MM/YYYY'),110,12,5,3);
Insert into FATURAMENTO (NF,DATA,VLR_TOTAL,IMPOSTO,TX_IMP,COD_MATRIZ) values (4,to_date('31/10/2013','DD/MM/YYYY'),200,8,3,1);
INSERT INTO FATURAMENTO (NF,DATA,VLR_TOTAL,IMPOSTO,TX_IMP,COD_MATRIZ) VALUES (5,TO_DATE('28/10/2013','DD/MM/YYYY'),80,7,5,2);
Insert into FATURAMENTO (NF,DATA,VLR_TOTAL,IMPOSTO,TX_IMP,COD_MATRIZ) values (6,to_date('30/10/2013','DD/MM/YYYY'),10,6,4,3);

Insert into PEDIDO (COD_PEDIDO,COD_MATRIZ,COD_FILIAL,COD_SOFTWARE,QTDE,NF,VLR_UNITARIO) values (1,1,1,1,1,1,230);
Insert into PEDIDO (COD_PEDIDO,COD_MATRIZ,COD_FILIAL,COD_SOFTWARE,QTDE,NF,VLR_UNITARIO) values (2,2,2,2,1,2,40);
Insert into PEDIDO (COD_PEDIDO,COD_MATRIZ,COD_FILIAL,COD_SOFTWARE,QTDE,NF,VLR_UNITARIO) values (3,3,3,3,1,3,110);
Insert into PEDIDO (COD_PEDIDO,COD_MATRIZ,COD_FILIAL,COD_SOFTWARE,QTDE,NF,VLR_UNITARIO) values (4,1,1,4,1,4,200);
INSERT INTO PEDIDO (COD_PEDIDO,COD_MATRIZ,COD_FILIAL,COD_SOFTWARE,QTDE,NF,VLR_UNITARIO) VALUES (5,2,2,5,1,5,80);
Insert into PEDIDO (COD_PEDIDO,COD_MATRIZ,COD_FILIAL,COD_SOFTWARE,QTDE,NF,VLR_UNITARIO) values (6,3,3,6,1,6,10);
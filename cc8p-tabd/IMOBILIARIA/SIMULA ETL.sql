INSERT INTO COMPRADOR
(CPF_CNPJ_COMP, NOME_COMP)
(SELECT CPF_CNPJ_COMP, NOME_COMP 
   FROM IMOB.COMPRADOR );
/

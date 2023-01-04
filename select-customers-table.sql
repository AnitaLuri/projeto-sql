-- SQLite
-- Consultas na tabela CUSTOMERS
SELECT * FROM CUSTOMERS;

-- 14 - consulta capaz de exibir somente o name, lastname e email dos clientes que moram no estado de SP
SELECT NAME AS 'Nome', 
       LASTNAME AS 'Sobrenome', 
       EMAIL FROM CUSTOMERS WHERE STATE = 'SP';

-- 19 -consulta capaz de exibir somente os clientes que realizaram mais ou igual a 2 locações.
SELECT C.NAME,
       C.LASTNAME,
       C.EMAIL,
       COUNT(L.ID) FROM LOCATIONS AS L
    INNER JOIN CUSTOMERS AS C ON (L.CUSTOMER_ID = C.ID)
    GROUP BY CUSTOMER_ID
    HAVING COUNT(L.ID)>=2;
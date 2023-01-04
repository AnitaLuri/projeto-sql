-- SQLite
-- Consultas na tabela LOCATIONS
SELECT * FROM LOCATIONS;
SELECT * FROM CUSTOMERS;
SELECT * FROM EMPLOYEES;

-- 20 - consulta capaz de exibir todas as locações realizadas, assim como também o nome do cliente, do automóvel e do funcionário vinculados em cada locação
SELECT L.ID AS 'Código',
       L.START_DATE AS 'Data de inicio',
       L.END_DATE AS 'Data de fim',
       CUSTOMERS.NAME AS 'Cliente',
       CARS.NAME AS 'Carro',
       EMPLOYEES.NAME AS 'Funcionário',
       L.TOTAL AS 'Total' FROM LOCATIONS AS L
  INNER JOIN CUSTOMERS ON (L.CUSTOMER_ID = CUSTOMERS.ID)
  INNER JOIN CARS ON (L.CAR_ID = CARS.ID)
  INNER JOIN EMPLOYEES ON (L.EMPLOYEE_ID = EMPLOYEES.ID);

-- 21 - consulta capaz de exibir quantas locações existem na tabela de LOCATIONS
SELECT COUNT(ID) AS 'QUANTIDADE' FROM LOCATIONS;

-- 22 - consulta capaz de exibir qual foi a locação com o TOTAL com maior valor.
SELECT L.ID AS 'Código',
       L.START_DATE AS 'Data de inicio',
       L.END_DATE AS 'Data de fim',
       MAX(TOTAL) AS 'Maior Total',
       CUSTOMERS.NAME AS 'Cliente',
       CARS.NAME AS 'Carro',
       EMPLOYEES.NAME AS 'Funcionário' FROM LOCATIONS AS L
  INNER JOIN CUSTOMERS ON (L.CUSTOMER_ID = CUSTOMERS.ID)
  INNER JOIN CARS ON (L.CAR_ID = CARS.ID)
  INNER JOIN EMPLOYEES ON (L.EMPLOYEE_ID = EMPLOYEES.ID);

-- 23 consulta das locações realizadas, entre as datas “2022-05-20” a “2022-12-25”
SELECT L.ID AS 'Código',
       L.START_DATE AS 'Data de inicio',
       L.END_DATE AS 'Data de fim',
       CUSTOMERS.NAME AS 'Cliente',
       CARS.NAME AS 'Carro',
       EMPLOYEES.NAME AS 'Funcionário',
       L.TOTAL AS 'Total' FROM LOCATIONS AS L
  INNER JOIN CUSTOMERS ON (L.CUSTOMER_ID = CUSTOMERS.ID)
  INNER JOIN CARS ON (L.CAR_ID = CARS.ID)
  INNER JOIN EMPLOYEES ON (L.EMPLOYEE_ID = EMPLOYEES.ID)
  WHERE L.START_DATE BETWEEN '2022-05-20' AND '2022-12-25';
-- SQLite
-- registrando LOCAÇÕES

INSERT INTO LOCATIONS (START_DATE, END_DATE, TOTAL, CUSTOMER_ID, CAR_ID, EMPLOYEE_ID)
  VALUES ('2021-04-01', '2021-04-07', 1500, 11, 1, 8),
         ('2022-05-20', '2022-05-30', 1800, 12, 1, 11),
         ('2021-03-10', '2021-03-21', 2500, 15, 6, 11),
         ('2018-02-20', '2018-03-05', 1250, 16, 4, 12),
         ('2022-11-20', '2022-11-29', 900, 11, 3, 8),
         ('2019-10-01', '2019-10-29', 2800, 13, 1, 12)

SELECT * FROM LOCATIONS;
DELETE FROM LOCATIONS;
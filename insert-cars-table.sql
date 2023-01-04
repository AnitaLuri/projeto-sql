-- SQLite
-- registrando carros

INSERT INTO CARS (NAME, YEAR, COLOR, KM, STATUS, CAR_BRAND_ID, CAR_MODEL_ID)
  VALUES ('Chevrolet Onix LT', 2016, 'PRETO', 8000, 'LIBERADO', 1, 3),
         ('Hyundai HB20 1.6', 2022, 'PRATA', 3000, 'EM MANUTENÇÃO', 3, 3),
         ('Toyota Yaris', 2021, 'BRANCO', 10000, 'LIBERADO', 2, 3),
         ('Fiat Cronos', 2022, 'PRETO', 2500, 'LIBERADO', 8, 2),
         ('Honda HR-V', 2018, 'PRATA', 40000, 'EM MANUTENÇÃO', 7, 6),
         ('VW Amarok', 2019, 'PRATA', 25000, 'LIBERADO', 4, 6)


SELECT * FROM CARS;
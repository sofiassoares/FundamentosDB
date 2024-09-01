-- Importar um BD desde um arquivo
SOURCE ~/UFC/dbFundamentals/elmasri/db_create.sql

-- Nome dos departamentos da empresa
SELECT * FROM DEPARTMENT;

-- Quantos empregados tem o departamento de pesquisa ("research")
SELECT COUNT(Fname) FROM EMPLOYEE WHERE Dno = 5;

-- Incluir um novo departamento denominado "datascience"
INSERT INTO DEPARTMENT (Dname, Dnumber, Mgr_ssn, Mgr_start_date)VALUES ('Datascience', 7, '888665555', '2024-04-09');

-- Incluir pelo menos dois cientistas de dados no novo departamento com os atributos básicos
INSERT INTO EMPLOYEE (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno)VALUES ('Cientista de dados1', '', 'Cientista1', '112233445', '1990-01-01', '', 'M', 9999, '333445555', 7);
INSERT INTO EMPLOYEE (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno)VALUES ('Cientista de dados2', '', 'Cientista2', '112233455', '1990-01-01', '', 'M', 9999, '333445555', 7);

-- Alterar o Super_ssn dos empregados do setor de datascience para ser o mesmo do Mgr_ssn do setor  
UPDATE DEPARTMENT SET Dname = 'Datascience', Dnumber = 7, Mgr_ssn = '112233445', Mgr_start_date = '2024-04-09' WHERE Dname = 'Datascience' AND Dnumber = 7;
UPDATE EMPLOYEE SET Super_ssn = '112233445' WHERE Ssn IN ('112233445', '112233455');

-- Aumentar o salário de todos os empregados em 13.5% do valor atual
UPDATE EMPLOYEE SET Salary = Salary * 1.135;

-- Mudar a endereço de residência ("Address") do departamento 4 ("Administration") para Itapajé, CE
UPDATE DEPT_LOCATIONS SET Dlocation = 'Itapajé, CE' WHERE Dnumber = 4;
UPDATE EMPLOYEE SET Address = 'Itapajé, CE' WHERE Dno = 4;

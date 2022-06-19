CREATE DATABASE employ_PayRoll;
use employ_PayRoll;
CREATE TABLE employ_PayRoll
(ID INT  IDENTITY(1,1) PRIMARY KEY (ID),
NAME VARCHAR(150) ,
SALARY FLOAT,
START DATE );
INSERT INTO employ_PayRoll( NAME, SALARY, START ) VALUES
( 'PRASANNA', 6000000.00, '2021-05-16' ),
( 'ARJUN', 7000000.00, '2021-06-17' ),
( 'PRASU', 400000.00, '2021-07-18' ),
( 'MALLI', 900000.00, '2021-07-15' );
SELECT * FROM employ_PayRoll;
SELECT SALARY FROM employ_PayRoll WHERE NAME = 'PRASANNA';

ALTER TABLE employ_PayRoll ADD gender CHAR(1) CHECK (Gender IN ('M','F'));

UPDATE employ_PayRoll set gender = 'F' where name = 'PRASANNA' or name = 'PRASU';

SELECT SUM(salary) FROM employ_PayRoll WHERE gender = 'F' GROUP BY gender;
SELECT AVG(salary) FROM employ_PayRoll WHERE gender = 'F' GROUP BY gender;
SELECT MIN(salary) FROM employ_PayRoll WHERE gender = 'F' GROUP BY gender;
SELECT MAX(salary) FROM employ_PayRoll WHERE gender = 'F' GROUP BY gender;
SELECT COUNT(salary) FROM employ_PayRoll WHERE gender = 'F' GROUP BY gender;




CREATE TABLE EMPLOYEE(
    EId INT,
    EName VARCHAR(50),
    EAddress VARCHAR,
    EPhone INT
);

SHOW TABLES;

DESC TABLE EMPLOYEE;

CREATE OR REPLACE TABLE EMPLOYEE(
    EId INT PRIMARY KEY,
    EName VARCHAR(50) NOT NULL,
    EAddress VARCHAR,
    EPhone INT DEFAULT 777
);

INSERT INTO EMPLOYEE 
VALUES(111,'KISHAN','NYC',2421);

SELECT * FROM EMPLOYEE;

CREATE FILE FORMAT EMPLOYEE_DETAILS_CSV
TYPE=CSV,
SKIP_HEADER=1;

DESC FILE FORMAT EMPLOYEE_DETAILS_CSV;

ALTER FILE FORMAT EMPLOYEE_DETAILS_CSV
SET FIELD_OPTIONALLY_ENCLOSED_BY = '"';

ALTER TABLE EMPLOYEE
ADD JOINING_DATE DATE;

TRUNCATE TABLE EMPLOYEE;

ALTER FILE FORMAT EMPLOYEE_DETAILS_CSV
SET DATE_FORMAT='dd-MM-yyyy';

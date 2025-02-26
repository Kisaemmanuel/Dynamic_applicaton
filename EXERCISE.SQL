create DATABASE emma_k1;
use emma_k1;

CREATE TABLE EMPY (
    EID CHAR(4) NOT NULL CHECK (EID LIKE 'E%') CONSTRAINT empx_eid CHECK (EID LIKE 'E%'),
    FNAME VARCHAR(255) NOT NULL,
    LNAME VARCHAR(255) NOT NULL CHECK (LNAME = UPPER(LNAME)) CONSTRAINT empx_lname CHECK (LNAME = UPPER(LNAME)),
    AGE INT NOT NULL CHECK (AGE BETWEEN 18 AND 60) CONSTRAINT empx_age CHECK (AGE BETWEEN 18 AND 60),
    SALARY DECIMAL(10, 2) NOT NULL CHECK (SALARY BETWEEN 40000 AND 100000) CONSTRAINT empx_salary CHECK (SALARY BETWEEN 40000 AND 100000),
    PHONE VARCHAR(20) NOT NULL  UNIQUE ,
    EMAIL VARCHAR(255) NOT NULL CHECK (EMAIL LIKE '%@%') CONSTRAINT empx_email CHECK (EMAIL LIKE '%@%'),
    GENDER VARCHAR(10) NOT NULL CHECK (GENDER IN ('MALE', 'FEMALE')) CONSTRAINT empx_gender CHECK (GENDER IN ('MALE', 'FEMALE'))
);
desc empy;

create DATABASE Class;
use Class;

CREATE table employee( 
employeeID INT PRIMARY KEY AUTO_INCREMENT,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL,
Age INT CHECK (Age>=18),
Email VARCHAR(100) UNIQUE
);



INSERT into employee(FirstName,LastName,Age,Email) 
VALUES 
('John','Doe',30,'john.doe@yahoo.com'),('Jane','smith',25,'jane.smith@yahoo.com'),
('Daniel','Wilson',35,'daniel.wilson@yahoo.com');

SELECT*FROM employee;
alter table employee drop column age;

SELECT*FROM employee;

alter table employee add COLUMN Age int check(Age>=18);
SELECT*FROM employee;
 insert into employee (age) values (30,25,35);
update employee set Age = 32 WHERE employeeID=2;
DESC EMPLOYEE;


alter table employee add column DateofJoining DATE DEFAULT '2025-02-26';

SELECT*FROM EMPLOYEE;

alter table employee ALTER column DateofJoining DROP DEFAULT;
SELECT*FROM EMPLOYEE;

alter table employee add COLUMN PhoneContact VARCHAR(20) UNIQUE AFTER Email;
SELECT*FROM EMPLOYEE;
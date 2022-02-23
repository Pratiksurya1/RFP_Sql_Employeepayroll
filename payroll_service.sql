-- Uc1

create database payroll_service

use payroll_service

-- Uc2

CREATE TABLE employee_payroll (
id int IDENTITY(100,1),
name varchar(20),
salary int,
start_date date
)

--Uc 3

INSERT INTO employee_payroll(name,salary,start_date)VALUES('virat',30000,'2021-11-25')

-- Uc 4
SELECT * FROM employee_payroll

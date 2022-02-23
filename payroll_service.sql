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

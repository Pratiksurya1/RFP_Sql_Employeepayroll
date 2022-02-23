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

-- Uc5

SELECT * FROM employee_payroll WHERE name='rohit'

SELECT * FROM employee_payroll WHERE start_date BETWEEN '2022-01-01' AND '2022-02-08'

SELECT * FROM employee_payroll WHERE start_date BETWEEN CAST('2018-01-01'AS date) AND GETDATE();

-- Uc6
ALTER TABLE employee_payroll ADD gender char(1)

UPDATE employee_payroll SET gender='F' WHERE name='riya'

SELECT * FROM employee_payroll

SELECT gender,COUNT(*) FROM employee_payroll GROUP BY gender

SELECT gender,(*) FROM employee_payroll WHERE gender IN('F','M') GROUP BY gender

-----UC7
SELECT gender, SUM(salary) AS sum, AVG(salary) AS avg, MAX(salary) AS max,MIN(salary) AS min,COUNT(salary) AS count FROM employee_payroll GROUP BY gender


-----UC8
ALTER TABLE employee_payroll ADD PRIMARY KEY(id) 

ALTER TABLE employee_payroll ADD phone varchar(15),address varchar(50),dept varchar(20)default 'other' NOT NULL

-----UC9
SELECT * FROM employee_payroll

ALTER TABLE employee_payroll ADD basic_pay money(7),deductions money(7),taxable_pay money(7),incometax money(7),net_pay money(7)

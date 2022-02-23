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

-----UC10
INSERT INTO employee_payroll VALUES(
'sonam',
'2021-08-25',
'F',
30000,
2000,
1000,
200,
18000,
'7892564315',
'C-546',
'Sales'
)

INSERT INTO employee_payroll VALUES(
'sonam',
'2021-08-25',
'F',
30000,
2000,
1000,
200,
18000,
'7892564315',
'C-546',
'Marketing'
)

-----Uc11

CREATE TABLE employee_info(
emp_id int identity(1,1)PRIMARY KEY,
emp_name varchar(50),
start_date date,
gender char(1),
phone varchar(13),
address nvarchar(40)
)

CREATE TABLE payroll_info(
empid int FOREIGN KEY REFERENCES employee_info(emp_id) UNIQUE NOT NULL,
basic_pay float(7),
deductions float(7),
taxable_pay float(7),
incometax float(7),
net_pay float(7)
)

CREATE TABLE dept_info(
emp_id int FOREIGN KEY REFERENCES employee_info(emp_id),
dept varchar(20)
)

INSERT INTO employee_info VALUES(
'rohit sharma',
'2021-08-25',
'M',
'8745632952',
'P-452'
)

INSERT INTO payroll_info VALUES(
1,
30000,
2000,
1000,
200,
18000
)

INSERT INTO dept_info VALUES(
1,
'Sales'
)



create database payroll_service

use payroll_service

Create Table employee_payroll (
Id int identity (1,1) primary key,
Name varchar(20),
Salary varchar(20),
Startdate varchar(20)
)

insert into employee_payroll (Name, Salary, Startdate) values ('Bharath', '50000', '26-5-2021')
insert into employee_payroll (Name, Salary, Startdate) values ('Susmitha', '45000', '26-6-2021')
insert into employee_payroll (Name, Salary, Startdate) values ('Sriram', '40000', '26-7-2021')
insert into employee_payroll (Name, Salary, Startdate) values ('Nagoor', '35000', '26-8-2021')
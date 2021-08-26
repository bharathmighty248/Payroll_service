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

Select * from employee_payroll

Select Salary from employee_payroll where Name='Bharath'

Select Salary from employee_payroll where Startdate between ('26-5-2021') and ('26-6-2021')

Alter Table employee_payroll
Add Gender varchar(1)

Update employee_payroll 
set Gender ='M' where Name='Bharath' or Name='Sriram' or Name='Nagoor'
Update employee_payroll 
set Gender='F' where name='Susmitha'

Select * from employee_payroll


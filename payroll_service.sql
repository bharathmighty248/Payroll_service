create database payroll_service

use payroll_service

Create Table employee_payroll (
Id int identity (1,1) primary key,
Name varchar(20),
Salary varchar(20),
Startdate varchar(20)
)
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
insert into employee_payroll (Name, Salary, Startdate) values ('Anusha', '30000', '26-8-2021')

Select * from employee_payroll

Select Salary from employee_payroll where Name='Bharath'

Select Salary from employee_payroll where Startdate between ('26-5-2021') and ('26-6-2021')

Alter Table employee_payroll
Add Gender varchar(1)

Update employee_payroll 
set Gender ='M' where Name='Bharath' or Name='Sriram' or Name='Nagoor'
Update employee_payroll 
set Gender='F' where name='Susmitha' or Name='Anusha'

Select * from employee_payroll

Alter Table employee_payroll
Alter Column Salary int

Select SUM(Salary) From employee_payroll Where Gender='M' Group by Gender

Select SUM(Salary) From employee_payroll Where Gender='F' Group by Gender

Select AVG(Salary) From employee_payroll Where Gender='M' Group by Gender

Select AVG(Salary) From employee_payroll Where Gender='F' Group by Gender

Select MIN(Salary) From employee_payroll Where Gender='M' Group by Gender

Select MIN(Salary) From employee_payroll Where Gender='F' Group by Gender

Select MAX(Salary) From employee_payroll Where Gender='M' Group by Gender

Select MAX(Salary) From employee_payroll Where Gender='F' Group by Gender

Select COUNT(Salary) From employee_payroll Where Gender='M' Group by Gender

Select COUNT(Salary) From employee_payroll Where Gender='F' Group by Gender

Alter Table employee_payroll
Add Phone varchar(13), Address varchar(20) null Default ('Hyderabad') With Values, Department varchar(20) Not null Default ('HR')

Update employee_payroll Set Phone='1111111111' Where Name='Bharath'
Update employee_payroll Set Phone='2222222222' Where Name='Susmitha'
Update employee_payroll Set Phone='3333333333' Where Name='Sriram'
Update employee_payroll Set Phone='4444444444' Where Name='Nagoor'
Update employee_payroll Set Phone='5555555555' Where Name='Anusha'

Update employee_payroll Set Department='HR' Where Name='Bharath'
Update employee_payroll Set Department='Admin' Where Name='Susmitha'
Update employee_payroll Set Department='Accounts' Where Name='Sriram'
Update employee_payroll Set Department='Operations' Where Name='Nagoor'
Update employee_payroll Set Department='Production' Where Name='Anusha'

Select * From employee_payroll

Exec Sp_Rename 'employee_payroll.Salary', 'Basic_pay', 'Column'

Alter Table employee_payroll 
Add Deductions Float, Taxable_Pay Float, Income_Tax Float, Net_Pay Float

Update Employee_Payroll 
set Basic_pay=40000 ,Deductions=0, Taxable_Pay=0,Income_Tax=0,Net_Pay=0 where name='Bharath'

Update Employee_Payroll 
set Basic_pay=35000 ,Deductions=0, Taxable_Pay=0,Income_Tax=0,Net_Pay=0 where name='Susmitha'

Update Employee_Payroll 
set Basic_pay=30000,Deductions=0, Taxable_Pay=0,Income_Tax=0,Net_Pay=0 where name='Sriram'

Update Employee_Payroll 
set Basic_pay=45000,Deductions=0, Taxable_Pay=0,Income_Tax=0,Net_Pay=0 where name='Nagoor'

Update Employee_Payroll 
set Basic_pay=30000 ,Deductions=0, Taxable_Pay=0,Income_Tax=0,Net_Pay=0 where name='Anusha'

Select * from employee_payroll

insert into employee_payroll (Name, Basic_pay, Startdate, Gender, Phone, Department, Deductions, Taxable_Pay, Income_Tax, Net_Pay) values ('Terisa', '50000', '26-5-2021', 'F', '6666666666', 'Sales', '0', '0', '0', '0')

insert into employee_payroll (Name, Basic_pay, Startdate, Gender, Phone, Department, Deductions, Taxable_Pay, Income_Tax, Net_Pay) values ('Terisa', '60000', '26-6-2021', 'F', '7777777777', 'Marketting', '0', '0', '0', '0')


Select * from employee_payroll

Select * from employee_payroll Where Name='Terisa'

Update Employee_Payroll 
set Basic_pay=30000 ,Deductions=3000, Taxable_Pay=27000, Income_Tax=2000, Net_Pay=25000 where name='Terisa'

Create Table Employee(
EmpId int identity(1,1) Primary key,
Name varchar(20) not null,
Gender varchar(1) not null,
Phone varchar(13) not null,
Address varchar(20) null Default ('Hyderabad'),
StartDate date not null,
DeptId int not null
)

Select * from Employee

Create Table Payroll(
SalaryId int identity(1,1) Primary key,
EmpId int,
Basic_pay money not null,
Deductions money not null,
Taxable_pay money not null,
Income_tax money not null,
Net_pay money not null
)

Select * from Payroll

Create Table Department(
DeptId int identity(1,1) Primary key,
DeptName varchar(20) not null
)

Select * from Department

Alter Table Employee
Add Foreign key (DeptId)
References Department(DeptId)

Alter Table Payroll
Add Foreign key (EmpId)
References Employee(EmpId)

Insert into Department(DeptName) values ('Hr'), ('Admin'), ('Accounts'), ('Operations'), ('Production'), ('Sales'), ('Marketting')

Insert into Employee(Name, Gender, Phone, StartDate, DeptId) 
values 
('Bharath', 'M', '1111111111', '2021-05-26', '1'),
('Susmitha', 'F', '2222222222', '2021-07-25', '2'),
('Sriram', 'M', '3333333333', '2021-03-11', '3'),
('Nagoor', 'M', '4444444444', '2021-04-02', '4'),
('Anusha', 'F', '5555555555', '2021-01-11', '5'),
('Terisa', 'F', '6666666666', '2021-06-26', '6'),
('Terisa', 'F', '7777777777', '2021-08-26', '7')

Select * from Employee

Insert into Payroll(EmpId, Basic_pay, Deductions, Taxable_pay, Income_tax, Net_pay)
values
('1', '50000', '3000', '47000', '2000', '45000'),
('2', '45000', '3000', '42000', '2000', '40000'),
('3', '40000', '3000', '37000', '2000', '35000'),
('4', '35000', '3000', '32000', '2000', '30000'),
('5', '30000', '3000', '27000', '2000', '25000'),
('6', '25000', '3000', '22000', '2000', '20000'),
('7', '20000', '3000', '17000', '2000', '15000')

Select * from Payroll

Select Sum(Payroll.Basic_pay) 
From Payroll 
Join Employee 
on Employee.EmpId=Payroll.EmpId 
Where Gender='M' 
Group by Employee.Gender

Select Sum(Payroll.Basic_pay) 
From Payroll 
Join Employee 
on Employee.EmpId=Payroll.EmpId 
Where Gender='F' 
Group by Employee.Gender

Select Avg(Payroll.Basic_pay) 
From Payroll 
Join Employee 
on Employee.EmpId=Payroll.EmpId 
Where Gender='M' 
Group by Employee.Gender

Select Avg(Payroll.Basic_pay) 
From Payroll 
Join Employee 
on Employee.EmpId=Payroll.EmpId 
Where Gender='F' 
Group by Employee.Gender

Select Min(Payroll.Basic_pay) 
From Payroll 
Join Employee 
on Employee.EmpId=Payroll.EmpId 
Where Gender='M' 
Group by Employee.Gender

Select Min(Payroll.Basic_pay) 
From Payroll 
Join Employee 
on Employee.EmpId=Payroll.EmpId 
Where Gender='F' 
Group by Employee.Gender

Select Max(Payroll.Basic_pay) 
From Payroll 
Join Employee 
on Employee.EmpId=Payroll.EmpId 
Where Gender='M' 
Group by Employee.Gender

Select Max(Payroll.Basic_pay) 
From Payroll 
Join Employee 
on Employee.EmpId=Payroll.EmpId 
Where Gender='F' 
Group by Employee.Gender

Select Count(Payroll.Basic_pay) 
From Payroll 
Join Employee 
on Employee.EmpId=Payroll.EmpId 
Where Gender='M' 
Group by Employee.Gender

Select Count(Payroll.Basic_pay) 
From Payroll 
Join Employee 
on Employee.EmpId=Payroll.EmpId 
Where Gender='F' 
Group by Employee.Gender
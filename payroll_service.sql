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
Update employee_payroll Set Department='Sales' Where Name='Nagoor'
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



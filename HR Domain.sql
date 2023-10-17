-- HR Domain Project --
/* HR Domain Project
create a table "EmployeeDemographic"(Details of employees)
create a table "EmployeeSalary"(Employee Salary Details)
create a table "ITEmployeeDemographic"(Details of employees of IT Department)*/

#1. create a table "EmployeeDemographic"(Details of employees)
create table EmployeeDemographic
(EmployeeID int,
Firstname varchar(25),
Lastname varchar(25),
Age int,
Gender varchar(10)
);



#2. create a table "EmployeeSalary"(Employee Salary Details)
create table Employeesalary
(EmployeeID int, JobTitle Varchar(50), Salary int);

#3. create a table "ITEmployeeDemographic"(Details of employees of IT Department)
create table ITEmployeeDemographic
(EmployeeID int,
Firstname varchar(25),
Lastname varchar(25),
Age int,
Gender varchar(10)
);

 # 1. insert table into employeedemographic Table
 select* from employeedemographic;
 Insert into employeedemographic VALUES
(1001, 'Jim', 'Halpert', 30, 'Male'),
(1002, 'Pam', 'Beasley', 30, 'Female'),
(1003, 'Dwight', 'Schrute', 29, 'Male'),
(1004, 'Angela', 'Martin', 31, 'Female'),
(1005, 'Toby', 'Flenderson', 32, 'Male'),
(1006, 'Michael', 'Scott', 35, 'Male'),
(1007, 'Meredith', 'Palmer', 32, 'Female'),
(1008, 'Stanley', 'Hudson', 38, 'Male'),
(1009, 'Kevin', 'Malone', 31, 'Male');

#2. create a table "EmployeeSalary"(Employee Salary Details)
# Select*from employeesalary
insert into employeesalary VALUES
(1001, 'Salesman', 45000),
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000);


#3. create a table "ITEmployeeDemographic"(Details of employees of IT Department)
select* from itemployeedemographic;
insert into itemployeedemographic VALUES
(1013, 'Darryl', 'Philbin', 40, 'Male'),
(1050, 'Roy', 'Anderson', 31, 'Male'),
(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
(1052, 'Val', 'Johnson', 31, 'Female');

insert into employeedemographic values
(1011, 'Ryan', 'Howard', 26, 'Male'),
(NULL, 'Holly', 'Flax', NULL, NULL),
(1013, 'Darryl', 'Philbin', NULL, 'Male');

# having clause
select jobtitle,AVG(salary)
from employeesalary
group by jobtitle
having avg(salary)>45000
order by AVG(salary);

# Update or Delete DATA
UPDATE employeedemographic SET EmployeeID=1012 WHERE firstName='Holly' and lastname='Flax';

update employeedemographic
SET Age=31, Gender='Female'
Where firstname='Holly' and lastname='flax';

#delete
delete from employeedemographic
where EmployeeID=1005;
select* from employeedemographic;

select*from employeedemographic;
select*from employeesalary;

select*from employeedemographic
inner join employeesalary
on employeedemographic.EmployeeID=employeesalary.EmployeeID;

select*from customers;
select*from orders;

select*from customers
right join orders
on customers.CustomerID=orders.CustomerID;

select OrderID, EmployeeID from orders
union all
select OrderID, ProductID from orderdetails;

-- END --
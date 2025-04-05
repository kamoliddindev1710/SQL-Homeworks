--create database lessonhom15

--use lessonhom15

-- CREATE TABLE Employees (
--    EmployeeID INT PRIMARY KEY,
--    DepartmentID INT,
--    FirstName VARCHAR(50),
--    LastName VARCHAR(50),
--    Salary DECIMAL(10, 2)
--);

--INSERT INTO Employees (EmployeeID, DepartmentID, FirstName, LastName, Salary) VALUES
--(1, 1, 'John', 'Doe', 60000.00),
--(2, 1, 'Jane', 'Smith', 65000.00),
--(3, 2, 'James', 'Brown', 70000.00),
--(4, 3, 'Mary', 'Johnson', 75000.00),
--(5, 4, 'Linda', 'Williams', 80000.00),
--(6, 2, 'Michael', 'Jones', 85000.00),
--(7, 1, 'Robert', 'Miller', 55000.00),
--(8, 3, 'Patricia', 'Davis', 72000.00),
--(9, 4, 'Jennifer', 'Garc?a', 77000.00),
--(10, 1, 'William', 'Mart?nez', 69000.00);

--CREATE TABLE Departments (
--    DepartmentID INT PRIMARY KEY,
--    DepartmentName VARCHAR(50)
--);

--INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
--(1, 'HR'),
--(2, 'Sales'),
--(3, 'Marketing'),
--(4, 'Finance'),
--(5, 'IT'),
--(6, 'Operations'),
--(7, 'Customer Service'),
--(8, 'R&D'),
--(9, 'Legal'),
--(10, 'Logistics');

-- CREATE TABLE Sales (
--    SalesID INT PRIMARY KEY,
--    EmployeeID INT,
--    ProductID INT,
--    SalesAmount DECIMAL(10, 2),
--    SaleDate DATE
--);

--INSERT INTO Sales (SalesID, EmployeeID, ProductID, SalesAmount, SaleDate) VALUES
--(1, 1, 1, 1500.00, '2025-01-01'),
--(2, 2, 2, 2000.00, '2025-01-02'),
--(3, 3, 3, 1200.00, '2025-01-03'),
--(4, 4, 4, 1800.00, '2025-01-04'),
--(5, 5, 5, 2200.00, '2025-01-05'),
--(6, 6, 6, 1400.00, '2025-01-06'),
--(7, 7, 1, 2500.00, '2025-01-07'),
--(8, 8, 2, 1700.00, '2025-01-08'),
--(9, 9, 3, 1600.00, '2025-01-09'),
--(10, 10, 4, 1900.00, '2025-01-10'),
--(11, 1, 5, 2100.00, '2025-01-11'),
--(12, 2, 6, 1300.00, '2025-01-12'),
--(13, 3, 1, 2000.00, '2025-01-13'),
--(14, 4, 2, 1800.00, '2025-01-14'),
--(15, 5, 3, 1500.00, '2025-01-15'),
--(16, 6, 4, 2200.00, '2025-01-16'),
--(17, 7, 5, 1700.00, '2025-01-17'),
--(18, 8, 6, 1600.00, '2025-01-18'),
--(19, 9, 1, 2500.00, '2025-01-19'),
--(20, 10, 2, 1800.00, '2025-01-20'),
--(21, 1, 3, 1400.00, '2025-01-21'),
--(22, 2, 4, 1900.00, '2025-01-22'),
--(23, 3, 5, 2100.00, '2025-01-23'),
--(24, 4, 6, 1600.00, '2025-01-24'),
--(25, 5, 1, 1500.00, '2025-01-25'),
--(26, 6, 2, 2000.00, '2025-01-26'),
--(27, 7, 3, 2200.00, '2025-01-27'),
--(28, 8, 4, 1300.00, '2025-01-28'),
--(29, 9, 5, 2500.00, '2025-01-29'),
--(30, 10, 6, 1800.00, '2025-01-30'),
--(31, 1, 1, 2100.00, '2025-02-01'),
--(32, 2, 2, 1700.00, '2025-02-02'),
--(33, 3, 3, 1600.00, '2025-02-03'),
--(34, 4, 4, 1900.00, '2025-02-04'),
--(35, 5, 5, 2000.00, '2025-02-05'),
--(36, 6, 6, 2200.00, '2025-02-06'),
--(37, 7, 1, 2300.00, '2025-02-07'),
--(38, 8, 2, 1750.00, '2025-02-08'),
--(39, 9, 3, 1650.00, '2025-02-09'),
--(40, 10, 4, 1950.00, '2025-02-10');

--CREATE TABLE Products (
--    ProductID INT PRIMARY KEY,
--    CategoryID INT,
--    ProductName VARCHAR(100),
--    Price DECIMAL(10, 2)
--);

--INSERT INTO Products (ProductID, CategoryID, ProductName, Price) VALUES
--(1, 1, 'Laptop', 1000.00),
--(2, 1, 'Smartphone', 800.00),
--(3, 2, 'Tablet', 500.00),
--(4, 2, 'Monitor', 300.00),
--(5, 3, 'Headphones', 150.00),
--(6, 3, 'Mouse', 25.00),
--(7, 4, 'Keyboard', 50.00),
--(8, 4, 'Speaker', 200.00),
--(9, 5, 'Smartwatch', 250.00),
--(10, 5, 'Camera', 700.00);


select  * from Employees;



----task 1
--select * from (select avg(salary) avgsalary from employees) avgs
--left join employees e on e.salary >avgs.avgsalary

--task 2
--WITH cte AS (
--    SELECT employeeid, salary FROM employees
--)
--SELECT DISTINCT e.*
--FROM cte 
--JOIN employees e 
--ON cte.salary = e.salary AND cte.employeeid <> e.employeeid;

--task 3
--with cte as (select departmentid,employeeid from employees  )
--select departmentid,count(employeeid) from cte group by departmentid

--task 4
--select * from (select avg(salary) avgs from employees) dt
--left join employees  e on e.salary<dt.avgs

--task 5
--with cte as (select employeeid,productid from sales)
--select employeeid,count(productid) quantitysale from cte group by employeeid having count(productid)>2

--task 6
--select distinct employeeid from (select  employeeid,salesamount from sales) dt
--where dt.salesamount>2000

--task 7
--select * from (select Productname,price from Products) dt
--where dt.price =(select max(price) from Products)

--task 8
--with cte as (select employeeid,salesamount from sales)
--select employeeid,sum(salesamount) from cte group by employeeid

--task 9
--with cte as (select employeeid,productid from sales)
--select  distinct cte.employeeid,p.productname from cte left join products p on cte.productid=p.productid where p.productname='Laptop'

--task 10
--select dt.*,e.employeeid from (select departmentid,max(salary) maxx from employees group by departmentid ) dt
--join employees e on dt.departmentid=e.departmentid and  e.salary = dt.maxx;

--task 11
--with cte as (select department,count(*) quantityemp from employees group by department ) 
--select * from cte where quantityemp=0

--task 12
--with cte as (select EmployeeID,sum(Salesamount) Total from Sales group by EmployeeID),
--cte2 as (select EmployeeID,sum(Salesamount) Total2 from Sales group by EmployeeID)
--select * from cte join cte2  on cte.employeeid<>cte2.EmployeeID and  cte.Total=cte2.Total2

--task 13
--with cte as (select productid,categoryid from Products),
--cte2 as (select productid,salesamount from Sales )
--select cte.CategoryID,sum(cte2.salesamount) total  from cte left  join cte2 on cte.ProductID =cte2.ProductID group by cte.CategoryID

--task 14
--not found

--task 15
--select * from (select   employeeid,count(employeeid) as totalquant from sales  group by  employeeid ) dt
--where totalquant=  (select max(countsale) from (select count(*) countsale from sales group by employeeid) countsales)

--task 16
--with cte as (select employeeid,count( distinct  productid) quantity from sales group by EmployeeID)
--select EmployeeID from cte where quantity>3

--task 17
--select * from (select departmentid,sum(salary) total  from Employees group by DepartmentID) dt  
--where total = (select max(totalamount) from (select sum(salary) totalamount from employees group by DepartmentID ) totalamounts)

--task 18
--select e.DepartmentID,e.EmployeeID,e.Salary,dt.avgsalary from (select departmentid,avg(salary) avgsalary from  employees group by departmentid ) dt
--join employees e on dt.DepartmentID=e.DepartmentID and e.Salary>dt.avgsalary

--task 19
--select * from (select employeeid,sum(salesamount) total from sales group by EmployeeID ) dt
--join employees e on dt.EmployeeID=e.EmployeeID and dt.EmployeeID>e.Salary
--task 20
--select ds.DepartmentID, ds.TotalTransactions
--from (
--    select e.DepartmentID, count(s.SalesID) as TotalTransactions
--    from Sales s
--    join Employees e on s.EmployeeID = e.EmployeeID
--    group by e.DepartmentID
--) as ds
--where ds.TotalTransactions = (
--    select max(TotalTransactions)
--    from (
--        select e.DepartmentID, count(s.SalesID) as TotalTransactions
--        from Sales s
--        join Employees e on s.EmployeeID = e.EmployeeID
--        group by e.DepartmentID
--    ) as DepartmentSales
--);

--task 21
--not  answered

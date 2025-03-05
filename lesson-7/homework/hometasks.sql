--Create database homework_class7

--use homework_class7


--task 1
--Select Min(price) from Products

--task 2
--Select MAx(salary) from Employee

--task 3
--Select Count(*) from Customers

--task 4
--Select (COUNT(DISTINCT Category)) from Products

--task 5
--Select Sum(sales) from Sales
--where Productname='Computer'

--task 6
--Select Avg(age) from Employees

--task 7
--Select department,count(*) from Employees
--group by department

--task 8
--Select Category,max(price),min(price) from Products
--group by Category

--task 9
--Select Region,sum(sales) from Sales
--group by Region

--task 10
--Select department,count(*) as Quantity from Employees
--group by department
--having  count(*)>5

--task 11
--Select Category,sum(sales),avg(sales) from Sales
--group by Category

--task 12
--SELECT COUNT(JobTitle) AS EmployeeCount 
--FROM Employees 
--WHERE JobTitle = 'Software Engineer'

--task 13
--Select department,Max(salary)As MaxSalary,min(salary) as MinSalary from Employee
--group by department

--task 14
--Select department,avg(salary) as AverageSalary from Employee
--group  by department

--task 15
--Select department,avg(salary) as AverageSalary,count(*) from Employee
--group by department

--task 16
--SELECT Category, 
--       AVG(Price) AS AveragePrice 
--FROM Products 
--GROUP BY Category 
--HAVING AVG(Price) > 100

--task 17
 --Select COUNT(DISTINCT ProductID) from Products
 --where sale > 100

 --task 18
 --Select Saleyear,sum(sales) from Sales
 --group by Salesyear

 --task 19
--SELECT Region, COUNT(DISTINCT CustomerID) AS NumberOfCustomers 
--FROM Orders 
--GROUP BY Region

--task 20
--Select department,sum(salary) As TotalSalary from Employee
--group by department
--having sum(salary) > 100000

--task 21
--Select category,avg(sales) as AverageSales from Products
--order by category
--having avg(sales) > 200

--task 22
--SELECT EmployeeID, EmployeeName, SUM(sales) AS TotalSales 
--FROM Employee 
--GROUP BY EmployeeID, EmployeeName
--HAVING SUM(sales) > 200

--task 23
--Select department,sum(salary) as TotalSalary,avg(salary) as AverageSalary,
--group by department
--having avg(salary) >6000

--task 24
--SELECT CustomerID, CustomerName, MAX(OrderAmount) AS MaxOrder, MIN(OrderAmount) AS MinOrder
--FROM Orders
--GROUP BY CustomerID, CustomerName
--HAVING MIN(OrderAmount) >= 50

--task 25
--SELECT Region, SUM(Sales) AS TotalSales, COUNT(DISTINCT ProductID) AS UniqueProducts
--FROM Products
--GROUP BY Region
--HAVING SUM(Sales) > 10

--task 26
--SELECT ProductCategory, 
--       MAX(OrderQuantity) AS MaxOrderQuantity, 
--       MIN(OrderQuantity) AS MinOrderQuantity
--FROM Orders
--GROUP BY ProductCategory

--task 27
--SELECT 
--    Region,
--    SUM(CASE WHEN YEAR(SaleDate) = 2022 THEN SalesAmount ELSE 0 END) AS Sales_2022,
--    SUM(CASE WHEN YEAR(SaleDate) = 2023 THEN SalesAmount ELSE 0 END) AS Sales_2023,
--    SUM(CASE WHEN YEAR(SaleDate) = 2024 THEN SalesAmount ELSE 0 END) AS Sales_2024
--FROM Sales
--GROUP BY Region

--task 28
--SELECT Region, Quarter, SalesAmount
--FROM Sales
--UNPIVOT (
--    SalesAmount FOR Quarter IN (Q1, Q2, Q3, Q4)
--) AS Unpvt

--task 29 
--SELECT ProductCategory, COUNT(OrderID) AS TotalOrders
--FROM Orders
--GROUP BY ProductCategory
--HAVING COUNT(OrderID) > 50


--task 30
--SELECT Employee, Q1, Q2, Q3, Q4
--FROM (
--    SELECT Employee, Quarter, SalesAmount
--    FROM EmployeeSales
--) AS SourceTable
--PIVOT (
--    SUM(SalesAmount) 
--    FOR Quarter IN (Q1, Q2, Q3, Q4)
--) AS PivotTable









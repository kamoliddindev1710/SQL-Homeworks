--create database homework_class10
--use homework_class10

--CREATE TABLE Orders (
--    OrderID INT PRIMARY KEY,
--    CustomerID INT,
--    OrderDate DATE
--);

--CREATE TABLE Customers (
--    CustomerID INT PRIMARY KEY,
--    CustomerName VARCHAR(50)
--);

--INSERT INTO Orders VALUES 
--(1, 301, '2024-11-01'), 
--(2, 302, '2024-11-05');

--INSERT INTO Customers VALUES 
--(301, 'Alice'), 
--(302, 'Bob'), 
--(303, 'Charlie');

--task 1
--select C.CustomerName, O.orderid from Orders as O inner join Customers as C on O.CustomerID=C.CustomerID and year(O.OrderDate)>2022

--task 2
--CREATE TABLE Employees (
--    EmployeeID INT PRIMARY KEY,
--    Name VARCHAR(50),
--    DepartmentID INT
--);

--CREATE TABLE Departments (
--    DepartmentID INT PRIMARY KEY,
--    DepartmentName VARCHAR(50)
--);

--INSERT INTO Employees VALUES 
--(1, 'Alice', 101), 
--(2, 'Bob', 102), 
--(3, 'Charlie', NULL);

--INSERT INTO Departments VALUES 
--(101, 'HR'), 
--(102, 'IT'), 
--(103, 'Finance');
--SELECT E.Name
--FROM Employees AS E
--INNER JOIN Departments AS D 
--ON E.DepartmentId = D.DepartmentId
--and ( D.DepartmentName = 'Hr' OR D.DepartmentName = 'It')

--task 3
--CREATE TABLE Products (
--    ProductID INT PRIMARY KEY,
--    ProductName VARCHAR(50)
--);


--INSERT INTO Products VALUES 
--(1, 'Laptop'), 
--(2, 'Tablet'), 
--(3, 'Phone');

--SELECT Drp.productname, SUM(O.amount) AS Total  
--FROM Orders AS O  
--INNER JOIN (SELECT * FROM Products WHERE price > 1000 AND price IS NOT NULL) AS Drp  
--ON O.product_id = Drp.product_id  
--GROUP BY Drp.productname

--task 4
--create table #temp_orders(OrderID INT PRIMARY KEY,
--    CustomerID INT,
--    OrderDate DATE)

--insert into #temp_orders values(3, 301, '2024-11-09'), 
--(4, 302, '2024-11-07')

--select * from #temp_orders as t inner join Orders as O on t.Customerid=O.CustomerID

--task 5


--task 6
--Select C.name from Customers as C inner join Orders as O on C.customer_id=O.customer_id and year(O.OrderDate) =2023 and C.status is 'Loyal'

--task 7
 --Select C.Customername,DrC.Total  from Customers as c inner join (SELECT CustomerID, COUNT(orderid) as Total  FROM Orders GROUP BY CustomerID) as DrC on C.customerId=DrC.CustomerID 

 --task 8
 --Select P.productname from Products as P inner join Suppliers as S on P.supplierid=S.supplierid or S.suppliername ='Supplier A' or S.suppliername='Supplier B'

 --task 9
 ---SELECT E.Name, O.OrderID 
--FROM Employees E  
--OUTER APPLY (
--    SELECT TOP 1 O.OrderID  
--    FROM Orders O  
--    WHERE E.OrderID = O.OrderID  
--    ORDER BY O.OrderID DESC
--) O


 --task 11SELECT C.CustomerName, SUM(O.Amount) AS TotalAmount
--Select C.CustomerName, SUM(O.Amount) AS TotalAmount FROM Customers AS C
--INNER JOIN Orders AS O 
--ON C.CustomerID = O.CustomerID  
--AND O.OrderDate >= '2024-01-01'  -- Masalan, 2024-yildan keyingi buyurtmalar
--GROUP BY C.CustomerName  
--HAVING SUM(O.Amount) > 5000;

 --task 12
 --Select P.productname from Products as P left join Sales as on  P.productid=S.productid or year(S.saledate)=2022 or S.discount =20

 --task 13
--Select P.productname,Drp.Toatal from Products as P left join  (SELECT ProductID, SUM(Amount) as Total FROM Sales GROUP BY ProductID) as Drp on P.productId=Drp.Productid 

--task 14
--Select Tp.productname from #Temp_Products as Tp left join Products as P on Tp.productid=P.productid where Tp.discount is not null

--task 15


--task 16
--Select E.name from Employees as E left join Departments as D on E.departmentid=D.departmentid and D.departmentname ='HR' and E.salary>5000

--task 17
--Select O.orderid from Orders as O left join Payments as P on O.orderid=P.orderid and P.paymentid is not null

--task 18
--SELECT 
--    c.CustomerID, 
--    c.CustomerName, 
--    o.OrderID, 
--    o.OrderDate, 
--    o.TotalAmount
--FROM Customers c
--OUTER APPLY (
--    SELECT TOP 1 o.OrderID, o.OrderDate, o.TotalAmount
--    FROM Orders o
--    WHERE o.CustomerID = c.CustomerID
--    ORDER BY o.OrderDate DESC
--) o
--ORDER BY c.CustomerName


--task 19
--Select P.productname from Products as P left inner join Sales as S on P.productid=S.productid and year(S.saledate)=2023 and P.rating>4

--task 20
--Select E.name from Employees as E inner join Departmens as D on E.departmentid=D.departmentid or D.departmentname ='Sales' or E.position='Manager'

--task 21
--Select C.customername from Orders as O inner join Customers as C on O.customer_id=C.customer_id  and C.address ='New York' group C.customername having  count(O.order_id)>10 

--task 22
--Select P.productname from Products as P inner join Sales as S on P.productid=S.productid or P.category ='Electronics' or S.discount>15

--task 23
--SELECT 
--    C.CategoryName, 
--    P.ProductCount 
--FROM 
--    (SELECT CategoryID, COUNT(*) AS ProductCount 
--     FROM Products 
--     GROUP BY CategoryID) AS P
--INNER JOIN Categories AS C ON C.CategoryID = P.CategoryID
--ORDER BY C.CategoryName

--task 24
--SELECT 
--    E.EmployeeID, 
--    E.Name AS EmployeeName, 
--    E.Salary, 
--    E.Department,
--    T.TempEmployeeID, 
--    T.Name AS TempEmployeeName, 
--    T.Salary AS TempSalary
--FROM Employees E
--INNER JOIN #Temp_Employees T 
--ON E.Department = T.Department 
--AND E.Salary > 4000 
--AND T.Salary > 4000 
--AND E.Department = 'IT'
--ORDER BY E.EmployeeID

--task 25

--task 26
--SELECT O.OrderID, O.Amount, C.CustomerID, C.Name, C.Address
--FROM Orders AS O
--INNER JOIN Customers AS C  
--ON O.CustomerID = C.CustomerID  
--AND C.Address = 'California'  
--AND O.Amount > 1000

--task 27
--SELECT 
--    E.EmployeeID, 
--    E.Name AS EmployeeName, 
--    E.JobTitle, 
--    D.DepartmentName
--FROM Employees AS E
--INNER JOIN Departments AS D  
--ON E.DepartmentID = D.DepartmentID  
--AND (D.DepartmentName = 'HR'  
--     OR D.DepartmentName = 'Finance'  
--     OR E.JobTitle = 'Executive')

--tasl 28

--task 29
--SELECT 
--    E.EmployeeID, 
--    E.Name AS EmployeeName, 
--    E.Salary, 
--    D.DepartmentName
--FROM Employees AS E
--INNER JOIN Departments AS D  
--ON E.DepartmentID = D.DepartmentID  
--OR D.DepartmentName IN ('Sales', 'Marketing')  
--OR E.Salary > 6000;

--task 30 
--SELECT 
--    E.EmployeeID, 
--    E.Name AS EmployeeName, 
--    E.Salary, 
--    D.DepartmentName
--FROM Employees AS E
--INNER JOIN Departments AS D  
--ON E.DepartmentID = D.DepartmentID  
--WHERE D.DepartmentName IN ('Sales', 'Marketing')  
--   OR E.Salary > 6000;





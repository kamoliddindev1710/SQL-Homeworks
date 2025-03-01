--Create DATABASE homework_class4
--USE homework_class4

--Task 1
SELECT TOP  5 * FROM  Employees

--Task 2
SELECT Distinct ProductName FROM Products

--Task 3
Select * from Products
where Price > 100

--Task 4
Select * from Customer
where Customername like 'A%'

--Task 5
Select * from Products
order by price asc

--Task 6
Select * from Employees
where Salary >= 5000 and Department = 'HR'

--Task 7
Select isnull(Email,'noemail@example.com') AS UpdatedEmail from Employees

--Task 8
Select * from Products
where price between 50 and 100

--Task 9
Select Distinct Category,ProductName from Products

--Task 10
Select * from Products 
order by ProductName desc

--Task 11
Select TOP 10 * from Products
order by Price desc

--Task 12
Select coalesce(Firstname,Secondname,'Not available') from Employees

--Task 13
Select distinct Category,Price from Products

--Task 14
Select * from Employees 
where age Between 30 and 40 
or Department ='Marketing'

--Task 15
SELECT *  FROM Employees  
ORDER BY Salary DESC  
OFFSET 10 ROWS  
FETCH NEXT 10 ROWS ONLY

--Task 16
Select * from Products
where Price  <=1000 and Stock > 50
order by Stock asc

--Task 17
Select * from Products
where ProductName like '%e%'

--Task 18
Select * from Employees
where Department in('HR','IT','Finance') 

--Task 19
Select * from Employees where salary >  any (select avg(salary) from Employees group by department)

--Task 20
Select * from Customers
order by City asc,Postalcode desc

--Task 21
Select top 10 * from Products
Order by SalesAmount Desc

--Task 22
SELECT COALESCE(FirstName, 'Not available') + ' ' + COALESCE(LastName, 'Not available') AS FullName
FROM Employees

--Task 23
Select distinct Category, ProductName,Price from Products
where price >50 

--Task 24
SELECT * FROM Products
WHERE Price > (SELECT AVG(Price) * 1.1 FROM Products)

--Task 25
Select * from Employees
where age < 30 and department in('HR','IT')

--Task 26
Select * from Customers
where email like '%gmail.com'

--Task 27
Select * from Employees
where salary > all(Select salary from Employees where department ='Sales')

--Task 28
Select * from Employees
Order by Salary
offset 0 rows
fetch next  10 rows only

--Task 29
Select * from Orders
where orders BETWEEN DATEADD(DAY, -30, GETDATE()) AND GETDATE()

--Task 30
Select * from Employees as E1
where salary >(Select avg(salary) from Employees as E2 where E1.Department=E2.Department)



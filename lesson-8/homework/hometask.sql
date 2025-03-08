--CREATE DATABASE homework_class8
--use homework_class8
--task 1
--SELECT C.CustomerName, O.OrderDate 
--FROM Customers AS C
--INNER JOIN Orders AS O ON C.CustomerID = O.CustomerID

--task 2
--Select * from  EmployeeDetails as ED
--inner join Employees as E on ED.EmployeeID =E.EmployeeID

--task 3
--Select ProductName  from Products as P 
--inner join CategoryName as C on P.category_id=C.category_id


--task 4
--Select * from Customers as C 
--left join Orders as O onC.orderdate=O.orderdate

--task 5
--SELECT 
--    O.OrderID, 
--    O.OrderDate, 
--    P.ProductID, 
--    P.ProductName, 
--    OD.Quantity
--FROM Orders AS O
--JOIN OrderDetails AS OD ON O.OrderID = OD.OrderID
--JOIN Products AS P ON OD.ProductID = P.ProductID

--task 6
--Select * from Products cross join Categories

--task 7
--Select * from Customers as C inner join Orders as  O On C.customerid=O.customerid

--task 8 
--Select * from Products cross join Orders where Orders.OrderAmount>500

--task 9
--Select E.Employee_name,Department_name from Employees as E
--inner join Departments as D on E.Departmentid=D.DepartmentId

--task 10
--Select * from Employees as E 
--inner join Department as D on E.DepartmentId != D.DepartmentId

--task 11
--Select C.customerName,sum(O.num_orders) as Total_Orders from Customers as C 
--inner join Orders as O on C.customerid=O.customerid group by customerName

--task 12
--Select * from Students as S inner join Courses as C on S.StudentCourses=C.Courses

--task 13
--Select * from Employees as E cross join Departments where E.salary > 5000

--task 14
--Select E.Employee_name,Ed.* from Employee as E inner join EmployeeDetails as ED on E.Empid=ED.Empid

--task 15
--SELECT * 
--FROM Products AS P 
--INNER JOIN Suppliers AS S ON P.SupplierID = S.SupplierID 
--WHERE S.SupplierName = 'Supplier A'

--task 16
--SELECT P.productid, P.productname, Coalesce(SUM(S.sales_quantity),0) AS Total_Sales
--FROM Products AS P 
--LEFT JOIN Sales AS S ON P.productid = S.productid 
--GROUP BY P.productid, P.productname

--task 17
--SELECT * FROM Employees AS E 
--INNER JOIN Departments AS D ON E.departmentid = D.departmentid 
--WHERE E.salary > 4000 AND D.departmentname = 'HR'

--task 18
--Select * from chips as ch inner join burgers as b on ch.price >=b.price

----task 19
--Select *,S.Suppliername  from Products as P inner join Suppliers as S on P.Supplierid=S.Supplierid where P.price >=50

--task 20
--Select * from Sales cross join Regions where Regions.sales>1000

--task 21
--SELECT A.AuthorName, B.BookTitle
--FROM AuthorBooks AB
--JOIN Authors A ON AB.AuthorID = A.AuthorID
--JOIN Books B ON AB.BookID = B.BookID

--task 22
--SELECT P.productname, C.categoryname 
--FROM Product AS P 
--INNER JOIN Categories AS C 
--ON P.category_id = C.category_id 
--WHERE C.categoryname <> 'Electronics'

--task 23
--Select * from Products cross join Orders where O.quantity>1

--task 24
--Select E.name,D.department_name from Employees as E inner join Department as D on E.department_id=D.department_id and E.seniority>5

--task 25
--Select E.name,D.departmentname from Employees as E inner join Departments as D on E.department_id=D.department_id
--Select E.name,D.departmentname from Employees as E left join  Departments as D on E.department_id=D.department_id

--task 26
--Select * from Products cross join Suppliers where SuppliersCategory ='Category A'

--task 27
--Select C.name,sum(O.amountorders) as TotalOrders from Orders as O inner join Customers as C on O.orderid=C.orderid having  sum(Orders.amountorders)>10 group by C.id

--task 28
--Select C.name,count(student_id) as Enrolled_students from Students as S inner join Courses as c on S.course_id =C.course_id group by c.name

--task 29
--Select E.name,D.departmentname from Employee inner join Departments as D on E.department_id=D.department_id where D.departmentname ='Marketing'

--task 30
--SELECT S.student_id, S.name, E.exam_id, E.exam_date
--FROM Students AS S
--INNER JOIN Exams AS E
--ON S.registration_date <= E.exam_date

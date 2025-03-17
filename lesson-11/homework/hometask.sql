--task 1
--select  E.Name from Employees as E inner join Departments as D on E.

--task 2
--select  E.Name,D.DepartmentName from Employeess as E inner join Departmentss as D on E.DepartmentId=D.DepartmentId

--task 3
--Select S.StudentName,C.ClassName from Students as S left join Classes as C on S.ClassID=C.Classid

--task 4
--select C.CustomerID ,O.OrderID from customers as C left join Orders as O on C.CustomerId=O.CustomerId

--task 5
--Select P.ProductName,S.quantity from Products as P full outer join Sales as S on P.ProductId=S.ProductId

--task 6
--select M.ENAME as Man,E.Ename from Employee as E left join Employee as M on E.id=M.managerId

--task 7
--select M.Movieid,A.ActorId from Movies as M left join Actors as A on M.MovieId=A.MovieID where M.ReleaseYear>2015

--task 8
--select O.OrderDate,C.CustomerName,Od.ProductId,Od.Orderid from Orders as O  inner join Customers  as C on O.CustomerID=C.Customerid
-- inner join OrderDetails as Od on O.Orderid=Od.Orderid


--task 9
--SELECT 
--    P.ProductId, 
--    SUM(S.quantity * P.price) AS Total 
--FROM Sales S 
--INNER JOIN Productss P ON S.ProductId = P.ProductId 
--GROUP BY P.ProductId

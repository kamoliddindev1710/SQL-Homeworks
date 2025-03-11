--create database homework_class9

--use homework_class9


--task 1
--Select E.name,E.salary  from Employees as E inner join Departments as D on E.department_id=D.department_id  where E.salary > 5000

--task 2
--Select C.name,O.* from Customers as C inner join Orders as O on C.order_id=O.order_id where year(O.time) =2023

----task 3
--Select  E.name,D.department_name from Employees as E left outer join Departments as D on E.department_id=D.department_id

--task 4
--Select S.supplier_name,P.product_name  from Products as P right outer join Suppliers as S on P.supplier_id=S.supplier_id 

--task 5
--Select O.name,P.price  from Orders as O full outer join Payments as P on O.order_id=P.order_id

--task 6
--Select Employees.name as Manager ,Manager.name as Employee from Employees as Employeer inner join Employees as Manager on Employees.id=Manager.Managerid 

--task 7
--Select P.name from Products as P inner join Sales as S on P.product_id=S.product_id where S.quantity>100

----task 8
--Select S.name from Students as S inner join Courses as C on S.course_id=C.course_id where C.course_name ='Math 101' 

--task 9
--SELECT C.name 
--FROM Customer AS C 
--INNER JOIN Orders AS O ON C.customer_id = O.customer_id 
--GROUP BY C.name 
--HAVING COUNT(O.order_id) > 3

--task 10
--Select  E.name,D.department_name from Employees as E left outer join Departments as D on E.department_id=D.department_id where D.departmenmt_name ='HR'

--task 11

--CREATE TABLE Departments (
--    department_id INT PRIMARY KEY,
--    department_name VARCHAR(100) NOT NULL
--);

--CREATE TABLE Employees (
--    employee_id INT PRIMARY KEY,
--    name VARCHAR(100) NOT NULL,
--    department_id INT,
--    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
----);
--ALTER TABLE Employees  
--ALTER COLUMN Salary INT NOT NULL;

--Select * from Employees
--UPDATE Employees SET Salary = 500 WHERE employee_id = 1;  
--UPDATE Employees SET Salary = 600 WHERE employee_id = 2;  
--UPDATE Employees SET Salary = 700 WHERE employee_id = 3;  
--UPDATE Employees SET Salary = 800 WHERE employee_id = 4;  
--UPDATE Employees SET Salary = 900 WHERE employee_id = 5;  
--UPDATE Employees SET Salary = 1000 WHERE employee_id = 6;  
--UPDATE Employees SET Salary = 1100 WHERE employee_id = 7;  
--UPDATE Employees SET Salary = 1200 WHERE employee_id = 8;  
--UPDATE Employees SET Salary = 1300 WHERE employee_id = 9;  
--UPDATE Employees SET Salary = 1400 WHERE employee_id = 10;  
--UPDATE Employees SET Salary = 1500 WHERE employee_id = 11;  
--UPDATE Employees SET Salary = 1600 WHERE employee_id = 12;  
--UPDATE Employees SET Salary = 1700 WHERE employee_id = 13;  
--UPDATE Employees SET Salary = 1800 WHERE employee_id = 14;  
--UPDATE Employees SET Salary = 1900 WHERE employee_id = 15;  



--INSERT INTO Departments (department_id, department_name) VALUES
--(101, 'IT'),
--(102, 'HR'),
--(103, 'Marketing');

--INSERT INTO Employees (employee_id, name, department_id) VALUES
--(1, 'Ali', 101),
--(2, 'Hasan', 102),
--(3, 'G‘iyos', 101),
--(4, 'Bobur', 101),
--(5, 'Shahzod', 101),
--(6, 'Kamola', 101),
--(7, 'Aziz', 101),
--(8, 'Dilshod', 101),
--(9, 'Sanjar', 101),
--(10, 'Zuhra', 101),
--(11, 'Olim', 101),
--(12, 'Madina', 101),
--(13, 'Xurshid', 102),
--(14, 'Nigora', 103),
--(15, 'Javohir', 103)

--SELECT  E.name
--FROM Employees AS E
--INNER JOIN Departments AS D ON E.department_id = D.department_id
--WHERE E.department_id IN (
--    SELECT department_id 
--    FROM Employees 
--    GROUP BY department_id 
--    HAVING COUNT(employee_id) > 10
--)


--task 12
--CREATE TABLE Products (
--    product_id INT PRIMARY KEY,
--    product_name VARCHAR(100) NOT NULL,
--    price DECIMAL(10,2) NOT NULL
--);

--CREATE TABLE Sales (
--    sale_id INT PRIMARY KEY,
--    product_id INT,
--    quantity INT NOT NULL,
--    sale_date DATE NOT NULL,
--    FOREIGN KEY (product_id) REFERENCES Products(product_id)
--);

--INSERT INTO Products (product_id, product_name, price) VALUES
--(1, 'Laptop', 1200.00),
--(2, 'Smartphone', 800.00),
--(3, 'Tablet', 500.00),
--(4, 'Smartwatch', 250.00),
--(5, 'Headphones', 150.00);

--INSERT INTO Sales (sale_id, product_id, quantity, sale_date) VALUES
--(1, 1, 2, '2024-03-01'),
--(2, 2, 3, '2024-03-02'),
--(3, 3, 1, '2024-03-03');

--Select P.product_name from Products as P left outer join Sales as S on P.product_id=S.product_id where S.quantity is null or S.quantity=0

----task 13
--CREATE TABLE Customers (
--    customer_id INT PRIMARY KEY,
--    customer_name VARCHAR(100) NOT NULL
--);

--CREATE TABLE Orders (
--    order_id INT PRIMARY KEY,
--    customer_id INT,
--    order_date DATE NOT NULL,
--    amount DECIMAL(10,2) NOT NULL,
--    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
--);

--INSERT INTO Customers (customer_id, customer_name) VALUES
--(1, 'Ali'),
--(2, 'Hasan'),
--(3, 'G‘iyos'),
--(4, 'Bobur'),
--(5, 'Madina');  -- Bu mijoz hali hech narsa buyurtma qilmagan

--INSERT INTO Orders (order_id, customer_id, order_date, amount) VALUES
--(101, 1, '2024-03-01', 150.00),
--(102, 2, '2024-03-02', 200.00),
--(103, 3, '2024-03-03', 300.00),
--(104, 1, '2024-03-05', 100.00),
--(105, 2, '2024-03-06', 250.00);
--SELECT C.customer_name 
--FROM Customers AS C 
--RIGHT OUTER JOIN Orders AS O ON C.customer_id = O.customer_id 
--WHERE O.customer_id IN (
--    SELECT customer_id 
--    FROM Orders 
--    GROUP BY customer_id 
--    HAVING COUNT(customer_id) >= 1
--);


--Select C.customer_name from Orders  as O right outer join Customers as C on O.customer_id=C.customer_id where O.customer_id is 

--task 14
--Select E.* from Employees as E full outer join Departments as D on E.department_id=D.department_id where D.department_id is null

--task 15
--Select E.name from Employees as E  inner join Employees as M on E.id=M.Manager_id order by E.name 


--task 16
--Select O.* from Orders as O left outer join Customers as C on O.customer_id=C.customer_id where year(O.order_date) =2022

--task 17
--Select E.name from Employees as E inner join Departments as D on E.department_id=D.department_id and department_name='Sales' where E.salary>5000

--task 18
-- Select E.name,D.department_name from Employees as E inner join Departments as D on E.department_id=D.department_id where D.department_name ='IT'

--task 19
--SELECT 
--    O.order_id, 
--    O.customer_id, 
--    O.order_date, 
--    P.payment_id, 
--    P.payment_date, 
--    P.amount
--FROM Orders AS O
--FULL OUTER JOIN Payments AS P
--ON O.order_id = P.order_id
--WHERE P.payment_id IS NOT NULL;  -- Faqat to‘langan buyurtmalarni chiqarish

--task 20
--Select P.product_name from Products as P left outer join Orders as O on P.product_id=O.product_id where O.order_id is null

----task 21
--SELECT E.name, E.salary, E.department_id  
--FROM Employees AS E  
--INNER JOIN Departments AS D  
--ON E.department_id = D.department_id  
--WHERE E.salary > (  
--    SELECT AVG(E2.salary)  
--    FROM Employees AS E2  
--    WHERE E2.department_id = E.department_id  
--);

--task 22
--Select O.Order_id from Orders as O left outer join Payments as P on O.payment_id=P.payment_id where year(P.payment_date)<2022 and P.payment_id is null

--task 23
--Select P.product_name from Products as P full outer join Categories as C on P.category_id=C.category_id where P.category_is is null

--task 24
--Select E.name from Employees as E  inner join Employees as M on E.id=M.Manager_id order by E.name  where E.Salary>5000

--task 25
--Select E.name,D.department_name from Employees as E right outer join  Departments as D on E.department_id=D.department_id where D.department_name ='M%'

--task26
--Select P.product_name  from Products as P inner join Sales as S on P.product_id=S.product_id and S.quantity>1000
--Select P.product_name from Products as P inner join Sales as S on P.product_id=S.product_id where S.quantity>1000

--task 27
--Select S.name from Students as S left outer  join Courses as C on S.course_id=C.course_id where C.course_name <> 'Math 101' 

--task 28
--Select O.Order_id from Orders as O full outer join Payments as P on O.payment_id=P.payment_id where  P.payment_id is null

--task 29
--Select P.product_name.C.category_name  from Products as P inner  join Categories as C on P.category_id=C.category_id where P.category_is in('Electronics' , 'Furniture')

--task 30
--SELECT C.name, C.customer_id
--FROM Customers AS C
--CROSS JOIN Orders AS O
--WHERE C.customer_id = O.customer_id
--AND YEAR(O.order_date) = 2023
--GROUP BY C.customer_id, C.name
--HAVING COUNT(O.order_id) > 2


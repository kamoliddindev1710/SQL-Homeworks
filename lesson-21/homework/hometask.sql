
--1. Write a query to assign a row number to each sale based on the SaleDate.
--select *,row_number() over(order by SaleDate) from ProductSales

--2. Write a query to rank products based on the total quantity sold (use DENSE_RANK())

--with cte as (
--select ProductName ,sum(Quantity) total from ProductSales group by ProductNAme)
--select *,dense_rank() over (order by total) from cte

--3. Write a query to identify the top sale for each customer based on the SaleAmount.
--select * from (
--select *,rank() over(partition by CustomerID order by SaleAmount desc) rank_sale from ProductSales) dt
--where rank_sale=1

--4. Write a query to display each sale's amount along with the next sale amount 
-- in the order of SaleDate using the LEAD() function

--select *,lead(saleamount,1) over (order by saleamount) from productsales

 --5.Write a query to display each sale's amount along with the previous 
 --sale amount in the order of SaleDate using the LAG() function

--select *,lag(saleamount,1) over (order by saleamount) from productsales

--6. Write a query to rank each sale amount within each product category.

--select *, rank() over(partition by ProductName order by SaleAmount) from productSales

--7. Write a query to identify sales amounts that are greater than the previous sale's amount
--with cte as(
--select *, lag(saleamount,1) over(order by saleamount) rank_sale from productsales)
--select * from cte where saleamount>rank_sale

--8. Write a query to calculate the difference in sale amount from the previous sale for every product
--with cte as(
--select *, lag(saleamount,1) over(order by saleamount) rank_sale from productsales)
--select *,saleamount-rank_sale  from cte


 --9.  Write a query to compare the current sale amount with the next sale amount in terms of percentage change.
-- with cte as(
--select *, lead(saleamount,1) over(order by saleamount) rank_sale from productsales)
--select *,(saleamount/rank_sale)*100 from cte

--10. Write a query to calculate the ratio of the current sale amount to the previous sale amount within the same product.
-- with cte as(
--select *, lag(saleamount,1) over(partition by productname order by saleamount) rank_sale from productsales)
--select *,(saleamount/rank_sale)*100 from cte

--11. Write a query to calculate the difference in sale amount from the very first sale of that product.
--WITH RankedSales AS (
--    SELECT *, 
--           ROW_NUMBER() OVER (PARTITION BY ProductName ORDER BY SaleDate) AS row_num
--    FROM ProductSales
--),
--FirstSales AS (
--    SELECT ProductName, SaleAmount AS FirstSaleAmount
--    FROM RankedSales
--    WHERE row_num = 1
--)
--SELECT p.*, f.FirstSaleAmount, p.SaleAmount - f.FirstSaleAmount AS AmountDifference
--FROM ProductSales p
--JOIN FirstSales f ON p.ProductName = f.ProductName;


--12. Write a query to find sales that have been increasing continuously for a product 
-- (i.e., each sale amount is greater than the previous sale amount for that product).

--WITH SalesWithPrevious AS (
--    SELECT 
--        ProductName,
--        SaleDate,
--        SaleAmount,
--        LAG(SaleAmount) OVER (PARTITION BY ProductName ORDER BY SaleDate) AS PreviousSaleAmount
--    FROM ProductSales
--)
--SELECT *
--FROM SalesWithPrevious
--WHERE SaleAmount > PreviousSaleAmount;

--13. Write a query to calculate a "closing balance" for sales amounts which adds the current sale amount to a running total of previous sales.
--select *,sum(saleamount) over(order by saleid) from productsales

--14. Write a query to calculate the moving average of sales amounts over the last 3 sales.
--select *,avg(saleamount) over(order by saleid rows  between 3 preceding and current row ) from productsales

--15. Write a query to show the difference between each sale amount and the average sale amount.

--with cte as (
--select avg(saleamount) avg_amount from productsales),
--cte2 as (
--select * from productsales)
--select cte2.*,cte2.saleamount-cte.avg_amount from cte,cte2


--CREATE TABLE Employees1 (
--     EmployeeID   INT PRIMARY KEY,
--     Name         VARCHAR(50),
--     Department   VARCHAR(50),
--     Salary       DECIMAL(10,2),
--     HireDate     DATE
-- );

--INSERT INTO Employees1 (EmployeeID, Name, Department, Salary, HireDate) VALUES
-- (1, 'John Smith', 'IT', 60000.00, '2020-03-15'),
-- (2, 'Emma Johnson', 'HR', 50000.00, '2019-07-22'),
-- (3, 'Michael Brown', 'Finance', 75000.00, '2018-11-10'),
-- (4, 'Olivia Davis', 'Marketing', 55000.00, '2021-01-05'),
-- (5, 'William Wilson', 'IT', 62000.00, '2022-06-12'),
-- (6, 'Sophia Martinez', 'Finance', 77000.00, '2017-09-30'),
-- (7, 'James Anderson', 'HR', 52000.00, '2020-04-18'),
-- (8, 'Isabella Thomas', 'Marketing', 58000.00, '2019-08-25'),
-- (9, 'Benjamin Taylor', 'IT', 64000.00, '2021-11-17'),
-- (10, 'Charlotte Lee', 'Finance', 80000.00, '2016-05-09'),
-- (11, 'Ethan Harris', 'IT', 63000.00, '2023-02-14'),
-- (12, 'Mia Clark', 'HR', 53000.00, '2022-09-05'),
-- (13, 'Alexander Lewis', 'Finance', 78000.00, '2015-12-20'),
-- (14, 'Amelia Walker', 'Marketing', 57000.00, '2020-07-28'),
-- (15, 'Daniel Hall', 'IT', 61000.00, '2018-10-13'),
-- (16, 'Harper Allen', 'Finance', 79000.00, '2017-03-22'),
-- (17, 'Matthew Young', 'HR', 54000.00, '2021-06-30'),
-- (18, 'Ava King', 'Marketing', 56000.00, '2019-04-16'),
-- (19, 'Lucas Wright', 'IT', 65000.00, '2022-12-01'),
-- (20, 'Evelyn Scott', 'Finance', 81000.00, '2016-08-07');


--18. Find the Lowest-Paid Employee in Each Department
--with cte as (
--select *, rank() over(partition by Department order by Salary ) row_salary from Employees1)
--select * from cte where row_salary=1

--19. Calculate the Running Total of Salaries in Each Department

--select *,sum(salary) over(partition by department order by salary) total_salary from employees1

--20. Find the Total Salary of Each Department Without GROUP BY


-- with cte as (
--select *,sum(salary) over(partition by department order by salary) total_salary from employees1),
--cte2 as (select *,
--rank() over (partition by department order by total_salary desc) rank_total from cte)
--select  department,total_salary from cte2 where rank_total=1

--21. Calculate the Average Salary in Each Department Without GROUP BY
--with cte as (
--select department,sum(salary) over(partition by department order by salary desc) total_salary from employees1),
--cte2 as (
--select *,row_number() over(partition by department order by total_salary desc) row_total from cte   ),
--cte3 as (
--select department,count(*) count_row from cte group by department)
--select cte3.department ,cte2.total_salary/cte3.count_row from cte2 join cte3 on cte3.department=cte2.department where cte2.row_total=1

--22. Find the Difference Between an Employee’s Salary and Their Department’s Average
--with cte as (
--select department,avg(salary) avg_sal from employees1 group by department)

--select e.Name ,e.Salary-cte.avg_sal from employees1 e join cte on cte.department=e.department
 

 --23. Calculate the Moving Average Salary Over 3 Employees (Including Current, Previous, and Next)
 --select *,avg(salary) over (partition by department order by employeeid rows between 1 preceding  and 1 following ) from employees1

 --24. Find the Sum of Salaries for the Last 3 Hired Employees 

 --select *,sum(salary) over (order by employeeid rows between 2 preceding and current row ) from employees1

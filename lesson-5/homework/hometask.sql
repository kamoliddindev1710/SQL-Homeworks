--Create database homework_class5

--use homework_class5

--task 1
--Select * from ProductName as Name from Products

--task 2
--Select * from Customers as Client

--task 3
--Select ProductName from Products
--Union
--Select ProductName from Products_Discontinued

--task 4
--Select ProductName from Products
--Instersect 
--Select ProductName from Products_Discontinued

--task 5
--Select * from Products
--Union all
--Select * from Orders

--task 6
--Select Distinct CustomerName,Country from Customers 

--task 7
--Select *,
--case when Price >100 then 'High'
--Else 'Low'
--End as SortedPrice
--from Products

--task 8
--Select * from Employees group by country

--task 9
--Select Count(ProductID) as Cuantity from Products
--group by Category

--task 10
--SELECT *,  
--       IIF(stock > 100, 'Yes', 'No') AS InStock  
--FROM Auction

--task 11
--SELECT C.CustomerName AS ClientsName  
--FROM Customers AS C  
--INNER JOIN Orders AS O  
--ON C.CustomerName = O.CustomerName

--task 12
--Select ProductName from Products
--Union
--Select ProductName from OutOfStock

--task 13
--Select * from Products
--Except
--Select * from DiscountedProducts

--task 14
--Select *,
--Case when orders>5 then 'Eligible'
--else 'Not Eligible'
--End as Eligibility from Customers

--task 15
--Select *,
--IIF(Price >100,'Expensive','Affordable') as SortedPrice
--from Restaurant

--task 16
--SELECT CustomerID, COUNT(OrderID) AS TotalOrders  
--FROM Orders  
--GROUP BY CustomerID

--task 17
--Select * from Employees 
--where age < 25 or salary >6000

--task 18
--Select Count(Salesamount) as SalesQuantity from Sales
--group by Region

--task 19
--Select C.OrderDate as SortedData from Customers as C
--Inner Join Orders as O
--on C.OrderDate =O.OrderDate

--task 20
--Update table Employee
--set salary=salary*1.1
--where Department='HR'

--task 21
--SELECT product, COUNT(sales) AS total_sales
--FROM (
--    SELECT product, sales FROM Sales
--    UNION ALL
--    SELECT product, sales FROM Returns
--) AS combined_data
--GROUP BY product

--task 22
--Select * from Products
--Intersect
--Select * from DiscountedProducts

--task 23
--SELECT *, 
--    CASE 
--        WHEN TotalSales > 10000 THEN 'Top Tier'
--        WHEN TotalSales BETWEEN 5000 AND 10000 THEN 'Mid Tier'
--        ELSE 'Low Tier'
--    END AS SortedSales
--FROM Sales

--task 24

--task 25
--SELECT CustomerID FROM Orders
--EXCEPT
--SELECT CustomerID FROM Invoices

--task 26
--Select Count(sales) as TotalSales from Sales
--group by CustomerID,ProductId,Region 

--task 27
--Select *,
--CASE When Quantity > 50000 then 'Excelent'
--when Quantity > 25000 then 'Good'
--else 'Bad'
--End As Discount
--from PurchasedProducts

--task 28


--task 29
--SELECT 
--    *, 
--    IIF(Stock > 0, 'Available', IIF(Stock = 0, 'Not available', '')) AS StockStatus
--FROM StockQuantity

--task 30
--Select Customerid from Customers
--Except
--Select Customerid from Vip_Customers





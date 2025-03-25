--use lesson14
--task 1
--select left('DATABASE',4)

--task 2
--select CHARINDEX('sql','I love sql server')

--task 3
--select replace('hello world','world','sql')

--task 4
--select len('Microsoft SQL Server')

--task 5
--select right('DATABASE',3)

--task 6
--select len(CONCAT('apple', 'banana', 'grape'))-len(replace(CONCAT('apple', 'banana', 'grape'),'a',''))

--task 7
--select stuff('abcdefg',1,5,'')

--task 8
--select substring('SQL is powerful',5,2)
--select substring('I love databases',3,4)

--task 9
--select round(15.6789,2)

--task 10
--select abs(345.67)

--task 11
--select substring('ABCDEFGHI',(len('ABCDEFGHI')-1)/2,3

--task 12
--select stuff('Microsoft',1,3,'XXX')

--task 13
--select charindex('a',replace('SQL Server 2025',' ','a'))

--task 14
--select CONCAT('FirstName',',','SecondName')

--task 15
--WITH word_cte AS (
--    SELECT value as word, 
--           ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS rn
--    FROM STRING_SPLIT('The database is very efficient', ' ')
--)
--SELECT word
--FROM word_cte
--WHERE rn = 3;

--task 16
--select substring('INV1234',PATINDEX('%[0-9]%','INV1234'),len('INV1234'))
--select substring('ORD5678',PATINDEX('%[0-9]%','ORD5678'),len('ORD5678'))

--task 17
--select ceiling(99.5)

--task 18
--select datediff(day,'2025-01-01','2025-03-15

--task 19
--select datename(month,'2025-06-10')

--task 20
--select datepart(week,'2025-04-22')

--task 21
----select right('user1@gmail.com',len('user1@gmail.com')-charindex('@','user1@gmail.com'))
--select right('admin@company.org',len('admin@company.org')-charindex('@','admin@company.org')) 

--task 22
--select patindex('%e','experience')

--task 23
--SELECT RAND() * (500 - 100) + 100 

--task 24
--SELECT FORMAT(9876543, 'N2');

--task 25
--CREATE TABLE Customers (FullName VARCHAR(100));
--INSERT INTO Customers VALUES ('John Doe'), ('Jane Smith')

--select left(Fullname,charindex(' ',Fullname)) from Customers

--task 26
--select replace('SQL Server is great',' ','-')

--task 27
--SELECT FORMAT(42, 'D5') AS PaddedNumber;

--task 28
--with cte as (select value as word,
--row_number() over  (ORDER BY (SELECT NULL)) AS rn
--FROM STRING_SPLIT('SQL is fast and efficient', ' ') )
--select top 1  word from cte 
--order by len(word) desc

--task 29
--select stuff('Error: Connection failed',1,charindex(':','Error: Connection failed')-1,'')

--task 30
--select datediff(minute,'08:15:00','09:45:00')

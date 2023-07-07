/* 
   Solution to the https://www.w3schools.com/sql
   tutorial
*/

-- SQL Select
SELECT * FROM Customers;
SELECT City FROM Customers;
SELECT DISTINCT Country FROM Customers;

-- SQL Where
SELECT * FROM Customers
WHERE City = 'Berlin';

SELECT * FROM Customers
WHERE NOT City = 'Berlin';

SELECT * FROM Customers
WHERE CustomerID = 32;

SELECT * FROM Customers
WHERE City = 'Berlin'
AND PostalCode = 12209;

SELECT * FROM Customers
WHERE City = 'Berlin'
OR City = 'London';

-- SQL Order By
SELECT * FROM Customers
ORDER BY City;

SELECT * FROM Customers
ORDER BY City DESC;

SELECT * FROM Customers
ORDER BY Country, City;

-- SQL Insert
INSERT INTO Customers (
    CustomerName, 
    Address,
    City, 
    PostalCode,
    Country)
    VALUES (
    'Hekkan Burger',
    'Gateveien 15',
    'Sandnes',
    '4306',
    'Norway');

-- SQL Null
SELECT * FROM Customers
WHERE PostalCode IS NULL;

SELECT * FROM Customers
WHERE PostalCode IS NOT NULL;

-- SQL Update
UPDATE Customers
SET City = 'Oslo';

UPDATE Customers
SET City = 'Oslo'
WHERE Country = 'Norway';

UPDATE Customers
SET City = 'Oslo',
Country = 'Norway'
WHERE CustomerID = 32;

-- SQL Delete
DELETE FROM Customers
WHERE Country = 'Norway';

DELETE FROM Customers;

-- SQL Functions
SELECT MIN(Price)
FROM Products;

SELECT MAX(Price)
FROM Products;

SELECT COUNT(*)
FROM Products
WHERE Price = 18;

SELECT AVG(Price)
FROM Products;

SELECT SUM(Price)
FROM Products;

-- SQL Like
SELECT * FROM Customers
WHERE City LIKE 'a%';

SELECT * FROM Customers
WHERE City LIKE '%a';

SELECT * FROM Customers
WHERE City LIKE '%a%';

SELECT * FROM Customers
WHERE City LIKE 'a%b';

SELECT * FROM Customers
WHERE City NOT LIKE 'a%';

-- SQL Wildcards
SELECT * FROM Customers
WHERE City LIKE '_a%';

SELECT * FROM Customers
WHERE City LIKE '[acs]%';

SELECT * FROM Customers
WHERE City LIKE '[a-f]%';

SELECT * FROM Customers
WHERE City LIKE '[!acf]%';

-- SQL IN
SELECT * FROM Customers
WHERE Country IN ('Norway', 'France');

SELECT * FROM Customers
WHERE Country NOT IN ('Norway', 'France');

-- SQL BETWEEN
SELECT * FROM Products
WHERE Price 
BETWEEN 10 AND 20;

SELECT * FROM Products
WHERE Price NOT BETWEEN 10 AND 20;

SELECT * FROM Products
WHERE ProductName BETWEEN 'Geitost' AND 'Pavlova';

-- SQL Alias
SELECT CustomerName,
Address, 
PostalCode AS Pno 
FROM Customers;

SELECT * 
FROM Customers AS Consumers;

-- SQL Joins
SELECT *
FROM Orders
LEFT JOIN Customers
ON Orders.CustomerID = Customers.CustomerID;

SELECT *
FROM Orders
INNER JOIM Customers
ON Orders.CutomerID=Customers.CustomerID;

SELECT *
FROM Orders
RIGHT JOIN Customers
ON Orders.CustomerID=Customers.CustomerID;

-- SQL Group By
SELECT COUNT(CustomerID),
Country
FROM Customers
GROUP BY Country;

SELECT COUNT(CustomerID),
Country
FROM Customers
GROUP BY Country
ORDER BY Country, Customers;

SELECT COUNT(CustomerID),
Country
FROM Customers
GROUP BY Country
ORDER BY 
COUNT(CustomerID) DESC;

-- SQL Database
CREATE DATABASE testDB;

DROP DATABASE testDB;

CREATE TABLE Persons(
  PersonID int,
  LastName varchar(255),
  FirstName varchar(255),
  Address varchar(255),
  City varchar(255) 
);


DROP TABLE Persons;

ALTER TABLE Persons
ADD Birthday date;


ALTER TABLE Persons
DROP COLUMN Birthday;
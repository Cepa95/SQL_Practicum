--SELECT FirstName + ' ' + LastName as Employee
--FROM Employees

--SELECT OrderID, UnitPrice, UnitPrice * 10 AS Times10
--FROM [Order Details]

--SELECT DISTINCT City
--FROM Employees
--ORDER BY City

--SELECT COUNT(DISTINCT City) AS NumCities
--FROM Employees

--SELECT Freight, ROUND(Freight,1) AS ApproxFreight
--FROM Orders;
-- Pronaæi prije koliko godina je svaki od zaposlenika zaposlen.
--SELECT LastName, BirthDate, HireDate, DATEDIFF(year,HireDate, GETDATE()) AS
--HireAge
--FROM Employees
--ORDER BY HireDate;


--1
--SELECT UnitPrice, Quantity, Discount, UnitPrice*Quantity AS Cijena,UnitPrice * Quantity * (1-Discount) AS UkupanIznos 
--FROM "Order Details"

--2
--SELECT FirstName + ' ' + LastName + ' ' + 'can be reached at x' + Extension AS ContactInfo
--FROM Employees

--3
--SELECT FirstName, LastName, 
--CAST(((DATEDIFF(SECOND, BirthDate, HireDate)/31536000.0)) AS DECIMAL(8,6)) AS HireAgeAccurate, 
--DATEDIFF(year, BirthDate, HireDate) AS HireAgeInnacurate FROM Employees 

--4
--SELECT UnitsInStock, UnitPrice, UnitsInStock * UnitPrice AS UkupanIznos, 
--FLOOR(UnitsInStock * UnitPrice) AS NizeZaokruzeno, 
--CEILING(UnitsInStock * UnitPrice) AS ViseZaokruzeno FROM Products
--ORDER BY UnitPrice DESC

--5
--SELECT COUNT (DISTINCT(OrderID)) 
--FROM [Order Details]


--6
--SELECT OrderID, COUNT(ProductID) AS UkupanBrojStavki
--FROM [Order Details]
--GROUP BY OrderID


--SELECT * FROM [Order Details]
--7
--SELECT COUNT(ProductID)
--FROM [Order Details]
--WHERE (ProductID = 11) AND (Quantity > 50)

--8
--SELECT ProductID, AVG(UnitPrice) AS AveragePrice
--FROM Products
--GROUP BY ProductID
--HAVING AVG(UnitPrice) > 70
--ORDER BY AVG(Unitprice) DESC

--9
--SELECT TOP 1 ProductID, SUM(Quantity) AS UkupnaKolicina
--FROM [Order Details] 
--GROUP BY ProductID
--ORDER BY UkupnaKolicina DESC

--10
--SELECT ProductID,
--	SUM(CAST((UnitPrice*Quantity - UnitPrice*Quantity*Discount) AS decimal (10,2))) AS UkupanIznos,
--	SUM(Quantity) AS UkupnaKolicina,
--	MIN(Quantity) AS MinKolicina,
--	MAX(Quantity) AS MaxKolicina
--FROM [Order Details]
--GROUP BY ProductID

--1
--SELECT DISTINCT (ShipCity) 
--FROM Orders
--WHERE ShipCountry <> 'USA'

--2
--SELECT *
--FROM Orders
--WHERE YEAR(OrderDate) <> 2000

--3
--SELECT *
--FROM Customers
--WHERE City LIKE '%W%' AND Region IS NOT NULL

--4
--SELECT *,
--UnitPrice * Quantity AS Cijena, 
--(UnitPrice * Quantity * 0.92) AS Cijena_popust  
--FROM [Order Details]
--WHERE OrderID = 10457

--5
--SELECT AVG(Quantity) AS ProsjecnaVrijednostKolicina
--FROM [Order Details]

--6
--SELECT *
--FROM Orders
--WHERE ABS(DATEDIFF(day, OrderDate, ShippedDate)) > 5

--7
--SELECT Suppliers.CompanyName, 
--	   COUNT([Order Details].OrderID) AS UkupanBroj
--FROM Products 
--INNER JOIN [Order Details]  
--ON Products.ProductID = [Order Details].ProductID
--INNER JOIN Suppliers
--ON Products.SupplierID = Suppliers.SupplierID
--GROUP BY Suppliers.CompanyName
--HAVING COUNT([Order Details].OrderID) > 100
--ORDER BY UkupanBroj DESC

--8
--SELECT TOP 1 Employees.EmployeeID, 
--		   Employees.FirstName, 
--		   Employees.LastName, 
--		   Orders.OrderID,
--		   Orders.OrderDate, 
--		   Shippers.CompanyName
--FROM Employees INNER JOIN Orders 
--ON Employees.EmployeeID = Orders.EmployeeID
--INNER JOIN Shippers 
--ON Orders.ShipVia = Shippers.ShipperID
--ORDER BY Orders.OrderDate DESC

----9
--SELECT Employees.FirstName, 
--	   Employees.LastName, 
--	   COUNT(*) AS BrojNarudzbi,   --broji broj redaka
--	   YEAR(OrderDate) AS GodinaNarudzbe
--FROM Employees LEFT JOIN Orders
--ON Employees.EmployeeID = Orders.EmployeeID
--WHERE YEAR(OrderDate) = 1997
--GROUP BY Employees.EmployeeID, 
--		 Employees.LastName, 
--		 Employees.FirstName, 
--		 YEAR(OrderDate)
--ORDER BY COUNT(*) DESC


--10
--SELECT FirstName + ' ' + LastName AS ImePrezime, HomePhone
--FROM Employees
--UNION
--SELECT CompanyName, Phone FROM Customers
--UNION
--SELECT CompanyName, Phone FROM Shippers
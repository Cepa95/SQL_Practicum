--1
--SELECT o.OrderID,
--	   e.LastName,
--	   e.FirstName
--FROM Orders o
--INNER JOIN Employees e ON
--e.EmployeeID = o.EmployeeID
--WHERE o.ShippedDate > o.RequiredDate
	
--2
--SELECT p.ProductID, 
--	   p.ProductName, 
--	   SUM(o.Quantity)
--FROM Products p
--INNER JOIN [Order Details] o
--ON p.ProductID = o.ProductID
--GROUP BY p.ProductID, p.ProductName
--HAVING SUM(o.quantity) < 200
--ORDER BY p.ProductName

--3
--SELECT o.OrderID,
--	   o.OrderDate, 
--	   e.LastName, 
--	   e.FirstName, 
--	   c.CustomerID,
--	   c.CompanyName, 
--	   c.ContactName
--FROM ORDERS o 
--INNER JOIN Employees e ON
--	o.EmployeeID = e.EmployeeID
--INNER JOIN Customers c ON
--	o.CustomerID = c.CustomerID
--ORDER BY o.OrderDate

--4
--SELECT p.ProductID, 
--	   p.ProductName, 
--	   COUNT(o.ProductID) AS BrojStavki
--FROM Products p 
--LEFT JOIN [Order Details] o ON
--p.ProductID = o.ProductID
--GROUP BY p.ProductID,
--		 p.ProductName
--ORDER BY ProductName

--5
--SELECT COUNT(DISTINCT o.OrderID) as BrojNarudzbi, 
--	   o.shipCountry AS ZemljaNarudzbe,
--	   COUNT(DISTINCT e.EmployeeID) AS BrojZaposlenika,
--	   e.Country AS ZemljaZaposlenika
--FROM Orders o FULL JOIN Employees e ON
--	o.ShipCountry = e.Country
--GROUP BY o.shipCountry, e.Country

--6
--SELECT CompanyName, 
--		 ContactName, 
--		 Address, 
--		 City, 
--		 Country, 
--		 Phone
--FROM Customers
--UNION
--SELECT CompanyName, 
--		 ContactName, 
--		 Address, 
--		 City, 
--		 Country,
--		 Phone
--FROM Suppliers

--7
--SELECT e.EmployeeID, 
--	   e.FirstName, 
--	   e.LastName
--FROM Employees e
--INNER JOIN Orders o ON
--e.EmployeeID = o.EmployeeID
--WHERE o.CustomerID ='ALFKI'
--EXCEPT
--SELECT e.EmployeeID, 
--	   e.FirstName, 
--	   e.LastName
--FROM Employees e
--INNER JOIN Orders o ON
--e.EmployeeID = o.EmployeeID
--WHERE o.CustomerID ='ROMEY'

--8
--SELECT o.ShipCity
--FROM Orders o
--INTERSECT
--SELECT s.City
--FROM Suppliers s








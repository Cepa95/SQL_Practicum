--1
--SELECT OrderID, 
--		Quantity,
--        (SELECT MAX(Quantity) FROM  [Order Details]) AS MaxKolicina
--FROM [Order Details]
--WHERE ProductID = 23

--2
--SELECT ProductID, 
--       ProductName, 
--	   SupplierID
--FROM Products
--WHERE SupplierID in (SELECT SupplierID
--					 FROM Suppliers
--					 WHERE CompanyName in ('Exotic Liquids',
--										   'Tokyo Traders'))

--3
--SELECT ProductID,
--	   ProductName
--FROM Products
--WHERE UnitPrice = (SELECT UnitPrice
--				   FROM Products
--				   WHERE ProductName in ('Longlife Tofu'))
	
--4
--SELECT OrderID,	
--	   CustomerID,
--	   (SELECT CompanyName 
--	    FROM Customers 
--		WHERE CustomerID = o.CustomerID) AS CompanyName
--FROM Orders o
--WHERE OrderDate = (SELECT MAX(OrderDate) 
--				   FROM Orders)

--5
--SELECT ProductID, 
--	   ProductName
--FROM Products
--WHERE ProductID not in (SELECT DISTINCT(ProductID)
--						FROM [Order Details])

--6
--SELECT OrderID,
--	   CustomerID
--FROM Orders o
--WHERE 10000 < (SELECT SUM(UnitPrice*Quantity*(1-Discount))
--			   FROM [Order Details] od
--			   WHERE o.OrderID = od.OrderID)

----7
--SELECT CompanyName
--FROM Customers c
--WHERE CustomerID in (SELECT CustomerID 
--					FROM Orders o
--					WHERE o.ShipCountry in ('France'))

----7
--SELECT CompanyName
--FROM Customers c
--WHERE EXISTS (SELECT * 
--			  FROM Orders o
--			  WHERE c.CustomerID = o.CustomerID 
--			  and ShipCountry = 'France')

--1.
--SELECT * FROM Employees

--SELECT CompanyName, ContactName
--FROM Customers
--ORDER BY CompanyName

--SELECT Title, FirstName, LastName
--FROM Employees
--WHERE Title = 'Sales Representative';

--SELECT FirstName, LastName
--FROM Employees
--WHERE Region IS NOT NULL;

--2.
--SELECT ContactName, CompanyName, ContactTitle, Phone FROM Costumers

--3
--SELECT CategoryName, Description 
--FROM Categories
--ORDER BY CategoryName

--4
--SELECT CompanyName, Fax, Phone, HomePage, Country 
--FROM Suppliers
--ORDER BY Country desc, CompanyName

--5
--SELECT ContactName 
--FROM Customers
--WHERE City ='Buenos Aires';

--6
--SELECT ProductName, UnitPrice, QuantityPerUnit 
--FROM Products
--WHERE UnitsInStock = 0;

--7
--SELECT LastName, FirstName 
--FROM Employees
--Where Country <> 'USA';

--8
--SELECT City, CompanyName, ContactName 
--FROM Customers
--WHERE City LIKE 'A%' OR City LIKE 'B%';

--9
--SELECT * FROM Orders
--WHERE Freight > 500.00;

--10
 --SELECT CompanyName, ContactName, Fax 
 --FROM Customers
 --where Fax IS NOT NULL;

 --11
 --SELECT LastName, FirstName 
 --FROM Employees
 --where Employees.ReportsTo is NULL;

 --12
 --SELECT LastName, FirstName 
 --FROM Employees
 --WHERE BirthDate  BETWEEN '1950' AND '1960';

 --13

 --SELECT SupplierID
 --FROM Suppliers
 --WHERE CompanyName ='Exotic Liquids' OR CompanyName= 'Grandma Kelly''s Homestead' OR CompanyName='Tokyo Traders'

 --SELECT  ProductName, SupplierID FROM Products
 --WHERE SupplierID IN (1,2,3)

 --14
 --SELECT ShipPostalCode, OrderID, OrderDate 
 --FROM Orders
 --WHERE ShipPostalCode LIKE '02389%';

 --15
 --SELECT ContactName,ContactTitle,CompanyName 
 --FROM Customers
 --WHERE ContactTitle NOT LIKE '%sales%'

 --16
 --SELECT LastName, FirstName, City 
 --FROM  Employees
 --WHERE  City <>'Seattle' 

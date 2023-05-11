--josip ceprnic grupa B

--zadatak1
--CREATE PROCEDURE sp_DelProd (@SupplierID int)
--AS
--BEGIN
--	DELETE FROM [dbo].[Products]
--      WHERE SupplierID = @SupplierID
--END
--GO
--EXEC sp_DelProd 1
--SELECT *
--FROM Products

--zadatak2
--CREATE PROCEDURE sp_AddEmp (@LastName nvarchar(20), @FirstName nvarchar(10), @Title nvarchar(30))
--AS
--INSERT INTO [dbo].[Employees]
--           ([LastName]
--           ,[FirstName]
--           ,[Title])
          
--     VALUES
--           (@LastName
--           ,@FirstName
--           ,@Title)

--EXEC sp_AddEmp 'Josip','Prezime','Manager'
--SELECT *
--FROM Employees

--zadatak3

--CREATE PROCEDURE sp_AddProd1 (@CategoryId int)
--AS
--BEGIN
--INSERT INTO [dbo].[Products]
--           ([ProductName]
--           ,[SupplierID]
--           ,[CategoryID]
--           ,[QuantityPerUnit]
--           ,[UnitPrice]
--           ,[UnitsInStock]
--           ,[UnitsOnOrder]
--           ,[ReorderLevel]
--           ,[Discontinued])
--     SELECT
--           ProductName
--           ,SupplierID
--           ,CategoryID
--           ,QuantityPerUnit
--           ,UnitPrice
--           ,UnitsInStock
--           ,UnitsOnOrder
--           ,ReorderLevel
--           ,Discontinued
--	FROM Products
--	WHERE CategoryID = @CategoryID
--END
--GO

--zadatak4
--USE [Northwind]
--GO

--INSERT INTO [dbo].[Categories]
--           ([CategoryName]
--           ,[Description])
--     VALUES
--           ('dodatci_hrani',
--           'vegeta')    
--GO

--SELECT *
--FROM Categories

--UPDATE [dbo].[Categories]
--   SET [Description] = 'zacini'
--WHERE CategoryID=11;

--SELECT *
--FROM Categories


--zadatak5
--INSERT INTO products (ProductName, CategoryID)
--SELECT 'Papar', CategoryID 
--FROM Categories 
--WHERE CategoryName = 'dodatci_hrani'
--UNION ALL
--SELECT 'Sol', CategoryID 
--FROM Categories WHERE 
--CategoryName = 'dodatci_hrani'
--UNION ALL
--SELECT 'Secer', CategoryID 
--FROM Categories 
--WHERE CategoryName = 'dodatci_hrani';

--SELECT * 
--FROM Products

--zadatak6
--UPDATE products
--SET ProductName = CONCAT('zacin_', ProductName)
--WHERE CategoryID = (
--SELECT CategoryID FROM categories
--WHERE CategoryName = 'dodatci_hrani')

--SELECT * 
--FROM Products


--zadatak7
--CREATE PROCEDURE sp_AzurirajProizvod (@CategoryID INT)
--AS
--BEGIN
--UPDATE products
--SET QuantityPerUnit = QuantityPerUnit * 0.9
--WHERE CategoryID = @CategoryID;
--END

--zadatak8
--CREATE FUNCTION fn_BrojiNarudzbeZaposlenik (@brojNarudzbi INT)
--RETURNS TABLE
--AS
--RETURN
--SELECT e.EmployeeID,
--COUNT(o.OrderID) AS BrojNarudzbi
--FROM Employees e
--INNER JOIN Orders o ON o.EmployeeID = e.EmployeeID
--GROUP BY e.EmployeeID, e.FirstName, e.LastName
--HAVING COUNT(o.OrderID) > @brojNarudzbi;

--SELECT *
--FROM Products
--SELECT * FROM fn_BrojiNarudzbeZaposlenik(5);
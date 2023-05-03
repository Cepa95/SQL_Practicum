
----ZADATAK 1
--INSERT INTO dbo.Region
--			(RegionID,
--			RegionDescription)
--VALUES (5,
--		'ISEA');

--SELECT * 
--FROM Region

--SELECT *
--FROM dbo.Territories
--ORDER BY TerritoryID

--INSERT INTO dbo.Territories 
--			(TerritoryID,
--			 TerritoryDescription,
--			 RegionID)
--VALUES (98105,'Grèka', 5),
--	   (98106,'Slovenija', 5),
--	   (98107,'Italija',5)

--ZADATAK 2
--SELECT *
--FROM dbo.Territories
--ORDER BY TerritoryID

--UPDATE dbo.Territories
--SET TerritoryDescription = RTRIM(TerritoryDescription) + '_ISEA'
--WHERE RegionID = 5

--ZADATAK 3
--SELECT *
--FROM Region

--SELECT *
--FROM Territories

----s podupitom
--DELETE FROM Territories
--WHERE RegionID = (SELECT RegionID
--				  FROM Region
--				  WHERE RegionDescription = 'ISEA');
----bez podupita
--DELETE t
--FROM Territories t
--JOIN Region r ON t.RegionID = r.RegionID AND r.RegionDescription = 'ISEA';


--ZADATAK 4
--GO
--CREATE PROCEDURE sp_DodajPrijevoznika1
-- @CompanyName nvarchar(40),
-- @Phone nvarchar(24)
--AS
--BEGIN
-- INSERT INTO Shippers (CompanyName, Phone)
-- VALUES (@CompanyName, @Phone);
--END;


--EXEC sp_DodajPrijevoznika1 'neki Shipping', '(555) 123-4567';

--SELECT *
--FROM Shippers

--DROP PROCEDURE sp_DodajPrijevoznika1;


--ZADATAK 5
--GO
--CREATE PROCEDURE sp_DodajNarudzbu
-- @ShipperID int
--AS
--BEGIN
-- INSERT INTO Orders (CustomerID, 
--					 EmployeeID, 
--					 OrderDate, 
--					 RequiredDate, 
--					 ShippedDate, 
--					 ShipVia,
--					 Freight,
--					 ShipName, 
--					 ShipAddress,
--					 ShipCity,
--					 ShipRegion, 
--					 ShipPostalCode,
--					 ShipCountry)
-- SELECT CustomerID, 
--		EmployeeID,
--		OrderDate,
--		RequiredDate,
--		ShippedDate,
--		@ShipperID,
--		Freight,
--		ShipName,
--		ShipAddress,
--		ShipCity,
--		ShipRegion,
--		ShipPostalCode,
--		ShipCountry
-- FROM Orders
-- WHERE OrderID = 11077;
--END;

--EXEC sp_DodajNarudzbu @ShipperID = 3;

--SELECT *
--FROM Orders

--DROP PROCEDURE sp_DodajNarudzbu


--ZADATAK 6
--SELECT *
--FROM Products

--GO
--CREATE PROCEDURE sp_AzurirajProizvode (@BrojPonavljanja int)
--AS
--BEGIN
-- UPDATE Products
-- SET ReorderLevel = ReorderLevel * @BrojPonavljanja;
--END;

--EXEC sp_AzurirajProizvode @BrojPonavljanja = 100;

--DROP PROCEDURE sp_AzurirajProizvode;


--ZADATAK 7
--GO
--CREATE FUNCTION fn_TimesSold (@BrojPutaProdan int)
--RETURNS TABLE
--AS
--RETURN
--(
-- SELECT p.ProductID, 
--		p.ProductName,
--		COUNT(od.OrderID) AS BrojPutaProdan
-- FROM Products p
-- JOIN [Order Details] od ON p.ProductID = od.ProductID
-- GROUP BY p.ProductID, p.ProductName
-- HAVING COUNT(od.OrderID) > @BrojPutaProdan
--)

--select * from fn_TimesSold(5)
--DROP FUNCTION fn_TimesSold;


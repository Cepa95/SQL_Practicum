--1
--USE [Northwind]
--GO

--INSERT INTO [dbo].[Employees]
--           ([LastName]
--           ,[FirstName]
--           ,[Title]
--           ,[TitleOfCourtesy]
--           ,[BirthDate]
--           ,[HireDate]
--           ,[Address]
--           ,[City]
--           ,[Region]
--           ,[PostalCode]
--           ,[Country]
--           ,[Extension]
--           ,[Photo]
--           ,[Notes]
--           ,[ReportsTo]
--           ,[PhotoPath])
--     VALUES
--           ('Ceprnic',
--		    'Josip',
--			'Manager',
--			'M',
--			'2000-12-08 00:00:00.000',
--			'2020-12-08 00:00:00.000',
--			'Ulica 5',
--			'Split',
--			'Dalmatia',
--			21000,
--			'Croatia',
--			555,
--			NULL,
--			'FinishedIT',
--			2,
--			NULL);

--SELECT * FROM Employees

--2
--USE [Northwind]
--GO

--INSERT INTO [dbo].[Orders]
--           ([CustomerID]
--           ,[EmployeeID]
--           ,[OrderDate]
--           ,[RequiredDate]
--           ,[ShippedDate]
--           ,[ShipVia]
--           ,[Freight]
--           ,[ShipName]
--           ,[ShipAddress]
--           ,[ShipCity]
--           ,[ShipRegion]
--           ,[ShipPostalCode]
--           ,[ShipCountry])
--     VALUES
--           ('ALFKI'
--           ,11
--           ,'2021-07-04 00:00:00.000'
--           ,'2021-08-01 00:00:00.000'
--           ,'2021-07-16 00:00:00.000'
--           ,3
--           ,32.8
--           ,'Hanari'
--           ,'Ulica 5'
--           ,'Split'
--           ,'Dalmatia'
--           ,'555'
--           ,'Croatia'),
--		    ('ALFKI'
--           ,11
--           ,'2021-07-04 00:00:00.000'
--           ,'2021-07-05 00:00:00.000'
--           ,'2022-08-04 00:00:00.000'
--           ,3
--           ,32.8
--           ,'Hanari'
--           ,'Ulica 5'
--           ,'Split'
--           ,'Dalmatia'
--           ,'555'
--           ,'Croatia')
--GO

--SELECT * 
--FROM Orders 
--where EmployeeID = 11

--3
--UPDATE [dbo].[Employees]
--	SET [HomePhone] = '(71) 555-4444'
--WHERE EmployeeID =11
--SELECT * FROM Employees

--5

--DELETE FROM Orders
--WHERE EmployeeID = 11

--DELETE FROM Employees
--WHERE EmployeeID = 11

--SELECT * 
--FROM Employees
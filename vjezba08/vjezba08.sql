--zadatak 1
--jednom funkciju pokrenemo i onda je executamo
--CREATE (ALTER) FUNCTION fnIznosStavke (@UnitPrice DECIMAL,
										 --@Quantity int,
										 --@Discount DECIMAL)
--RETURNS DECIMAL
--AS
--BEGIN
--	RETURN (@Quantity*@UnitPrice)-(@Quantity*@UnitPrice*@Discount)
--END
--GO

--SELECT *, dbo.fnIznosStavke(UnitPrice,Quantity,Discount) AS IznosStavke
--FROM [Order Details]

--zadatak 2

--CREATE FUNCTION fnIznos2 (@Iznos INT)
--RETURNS TABLE
--AS
--RETURN
--	SELECT *,UnitPrice*Quantity*(1-Discount) as Ukupno
--	FROM [Order Details]
--	WHERE UnitPrice*Quantity*(1-Discount)>@Iznos 
--GO

--SELECT * FROM dbo.fnIznos2(500)


--zadatak 3
--DROP function dbo.fnIznosStavke
--DROP function dbo.fnIznos2

--zadatak 1
--ALTER PROCEDURE spSelectAllProducts
--AS
--SELECT *
--FROM Products
--EXEC spSelectAllProducts

--zadatak 2
--ALTER (CREATE) PROCEDURE spSelectProducts (@artiklId INT) 
--AS
--SELECT *
--FROM Products
--WHERE ProductID = @artiklId
--stvoriti ili prominiti funkciju pa je tek onda executati
--EXEC spSelectProducts 2

--zadatak 3
--CREATE PROCEDURE UpdateProductPrice (@nova INT,
									   --@ProductId INT) 
--AS
--UPDATE dbo.Products
--SET UnitPrice = @nova
--WHERE ProductID = @ProductId

--EXEC dbo.UpdateProductPrice 3,20
--SELECT * 
--FROM Products
--WHERE ProductID = 20



--zadatak 4
--CREATE PROCEDURE spSalesReport (@startOrderDate datetime,
--								@endOrderDate datetime,
--								@firstName NVARCHAR(10),
--								@lastName NVARCHAR(10)) 

--AS
--SELECT e.EmployeeID,FirstName,LastName,COUNT(*) As OrdersTotal
--FROM Orders o INNER JOIN Employees e
--ON o.EmployeeID = e.EmployeeID
--WHERE FirstName = @firstName
--AND LastName = @lastName
--AND OrderDate BETWEEN @startOrderDate AND @endOrderDate
--GROUP BY e.EmployeeID,FirstName,LastName

--EXEC spSalesReport '1998/1/1','1998/7/1','Nancy','Davolio'


--zadatak 5
--DROP PROCEDURE spSalesReport
--DROP PROCEDURE spSelectAllProducts
--DROP PROCEDURE UpdateProductPrice
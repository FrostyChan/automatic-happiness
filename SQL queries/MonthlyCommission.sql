-- Purpose is to display commsions for sales 
--Set var as 30 days ago
--DECLARE @Today date;
--SET @Today = CAST(GETDATE() as datetime);
--SET @Today = DATEADD(DAY, -30, @Today);


SELECT 
--Remove time as not needed
CAST(OrderDate as date) AS 'Order Date',
SubTotal AS 'Total',
Customer.CustomerID,
CONCAT(FirstName,' ' ,LastName) Full_Name 
-- SUBSTRING(SalesPerson,17,15) AS 'Sales Person'
FROM SalesLT.CustomerAddress, SalesLT.Customer
INNER JOIN SalesLT.SalesOrderHeader 
ON SalesOrderHeader.BillToAddressID = Customer.CustomerID

-- Purpose is to pull and display each company’s sale person
SELECT 
CustomerID AS 'ID', 
LastName AS "Client's Last name", 
CompanyName AS 'Company', 
--Substring to remove repetitive info  
SUBSTRING(SalesPerson,17,15) AS 'Sales Person'
FROM SalesLT.Customer 
ORDER BY SalesPerson ASC;

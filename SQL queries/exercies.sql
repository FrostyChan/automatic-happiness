-- Adventure Work exercises 
-- https://sqlzoo.net/wiki/AdventureWorks_easy_questions
SELECT 
FirstName,
EmailAddress
FROM SalesLT.Customer 
WHERE CompanyName = 'Bike World';

SELECT 
CompanyName
FROM SalesLT.Customer,SalesLT.Address
WHERE City ='Dallas';

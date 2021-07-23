/*SQL SELECT DISTINCT Statement*/

/*SELECT Example Without DISTINCT*/
SELECT Country 
FROM Customers;

/*SELECT DISTINCT Examples*/
SELECT DISTINCT Country 
FROM Customers;

SELECT COUNT(DISTINCT Country) 
FROM Customers;

SELECT Count(*) 
AS DistinctCountries
FROM (
    SELECT DISTINCT Country 
    FROM Customers
);



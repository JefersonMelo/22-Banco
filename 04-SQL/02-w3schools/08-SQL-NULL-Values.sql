/*SQL NULL Values*/

/*The IS NULL Operator*/
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NULL;

/*The IS NOT NULL Operator*/
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address 
IS NOT NULL;
/*SQL UNION Operator*/

/*SQL UNION Example
The following SQL statement returns the cities (only distinct values) 
from both the "Customers" and the "Suppliers" table:*/
SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City;

/*SQL UNION ALL Example
The following SQL statement returns the cities (duplicate values also) 
from both the "Customers" and the "Suppliers" table:*/
SELECT City FROM Customers
UNION ALL
SELECT City FROM Suppliers
ORDER BY City;

/*SQL UNION With WHERE
The following SQL statement returns the German cities (only distinct values) 
from both the "Customers" and the "Suppliers" table:*/
SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;

/*SQL UNION ALL With WHERE
The following SQL statement returns the German cities (duplicate values also) 
from both the "Customers" and the "Suppliers" table:*/
SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;

/*Another UNION Example
The following SQL statement lists all customers and suppliers:*/
SELECT 'Customer' AS Type, ContactName, City, Country
FROM Customers
UNION
SELECT 'Supplier', ContactName, City, Country
FROM Suppliers;

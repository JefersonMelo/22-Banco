/*SQL ORDER BY Keyword*/

/*ORDER BY Example*/
SELECT * 
FROM Customers
ORDER BY Country;

/*ORDER BY DESC Example*/
SELECT * 
FROM Customers
ORDER BY Country DESC; 

/*ORDER BY Several Columns Example*/
SELECT * 
FROM Customers
ORDER BY Country, CustomerName; 

/*ORDER BY Several Columns Example 2*/
SELECT * 
FROM Customers
ORDER BY Country 
ASC, CustomerName DESC; 

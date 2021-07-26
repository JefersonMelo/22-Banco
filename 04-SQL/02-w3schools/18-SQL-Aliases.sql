/*SQL Aliases*/

/*Alias for Columns Examples
The following SQL statement creates two aliases, one for the CustomerID column and 
one for the CustomerName column:*/
SELECT CustomerID AS ID, CustomerName AS Customer
FROM Customers; 

/*The following SQL statement creates two aliases, one for the CustomerName column 
and one for the ContactName column. Note: It requires double quotation marks or square 
brackets if the alias name contains spaces:*/
SELECT CustomerName AS Customer, ContactName AS [Contact Person]
FROM Customers; 

/*The following SQL statement creates an alias named "Address" 
that combine four columns (Address, PostalCode, City and Country):*/
SELECT CustomerName, Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS Address
FROM Customers; 

/*Note: To get the SQL statement above to work in MySQL use the following*/
SELECT CustomerName, 
    CONCAT(Address,', ',PostalCode,', ',City,', ',Country) AS Address
FROM Customers; 

/*Alias for Tables Example*/

/*table aliases of "c" and "o" respectively (Here we use aliases to make the SQL shorter)*/
SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Customers AS c, Orders AS o
WHERE c.CustomerName='Around the Horn' 
AND c.CustomerID=o.CustomerID;

/*The following SQL statement is the same as above, but without aliases*/
SELECT Orders.OrderID, Orders.OrderDate, Customers.CustomerName
FROM Customers, Orders
WHERE Customers.CustomerName='Around the Horn' 
AND Customers.CustomerID=Orders.CustomerID;

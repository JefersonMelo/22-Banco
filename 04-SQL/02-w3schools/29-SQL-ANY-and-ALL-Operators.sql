/*SQL ANY and ALL Operators*/

/*The SQL ANY Operator
The operator must be a standard comparison operator (=, <>, !=, >, >=, <, or <=).*/

/*SQL ANY Examples
The following SQL statement lists the ProductName if it finds ANY records
in the OrderDetails table has Quantity equal to 10 
(this will return TRUE because the Quantity column has some values of 10):*/
SELECT ProductName
FROM Products
WHERE ProductID = ANY(
    SELECT ProductID
    FROM OrderDetails
    WHERE Quantity = 10
);

/*The following SQL statement lists the ProductName if it finds ANY records 
in the OrderDetails table has Quantity larger than 99 
(this will return TRUE because the Quantity column has some values larger than 99):*/
SELECT ProductName
FROM Products
WHERE ProductID = ANY(
    SELECT ProductID
    FROM OrderDetails
    WHERE Quantity > 99
); 

/*The following SQL statement lists the ProductName if it finds ANY records 
in the OrderDetails table has Quantity larger than 1000 
(this will return FALSE because the Quantity column has no values larger than 1000):*/
SELECT ProductName
FROM Products
WHERE ProductID = ANY(
    SELECT ProductID
  FROM OrderDetails
  WHERE Quantity > 1000
); 

/*SQL ALL Examples
The following SQL statement lists ALL the product names:*/
SELECT ALL ProductName
FROM Products
WHERE TRUE; 

/*The following SQL statement lists the ProductName if ALL the records 
in the OrderDetails table has Quantity equal to 10. This will of course return FALSE 
because the Quantity column has many different values (not only the value of 10):*/
SELECT ProductName
FROM Products
WHERE ProductID = ALL(
    SELECT ProductID
    FROM OrderDetails
    WHERE Quantity = 10
); 

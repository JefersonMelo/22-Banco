/*SQL WHERE Clause*/

/*WHERE Clause Example*/
SELECT * FROM Customers
WHERE Country='Mexico'; 

/*Text Fields vs. Numeric Fields*/
SELECT * FROM Customers
WHERE CustomerID=1; 

/*
Operator 	Description
    = 	        Equal 	
    > 	        Greater than 	
    < 	        Less than 	
    >= 	        Greater than or equal 	
    <= 	        Less than or equal 	
    <> 	        Not equal. Note: In some versions of SQL this operator may be written as != 	
    BETWEEN     Between a certain range 	
    LIKE        Search for a pattern 	
    IN 	        To specify multiple possible values for a column
*/

SELECT * 
FROM Products
WHERE Price = 18;

SELECT * 
FROM Products
WHERE Price > 30;

SELECT * 
FROM Products
WHERE Price < 30;

SELECT * 
FROM Products
WHERE Price >= 30;

SELECT * 
FROM Products
WHERE Price <= 30;

SELECT * 
FROM Products
WHERE Price <> 18;

SELECT * 
FROM Products
WHERE Price 
BETWEEN 50 
AND 60;

SELECT * 
FROM Customers
WHERE City 
LIKE 's%';

SELECT * 
FROM Customers
WHERE City 
IN ('Paris','London');


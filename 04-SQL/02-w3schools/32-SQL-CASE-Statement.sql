/*SQL CASE Statement*/

/*SQL CASE Examples
The following SQL goes through conditions and returns a value when the first condition is met:*/
SELECT OrderID, Quantity,
CASE
    WHEN Quantity > 30 THEN 'The quantity is greater than 30'
    WHEN Quantity = 30 THEN 'The quantity is 30'
    ELSE 'The quantity is under 30'
END AS QuantityText
FROM OrderDetails; 

/*The following SQL will order the customers by City. However, if City is NULL, then order by Country:*/
SELECT CustomerName, City, Country
FROM Customers
ORDER BY(
    CASE
    WHEN City IS NULL THEN Country
    ELSE City
    END
); 

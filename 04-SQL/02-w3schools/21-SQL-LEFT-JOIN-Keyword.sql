/*SQL LEFT JOIN Keyword*/

/*SQL LEFT JOIN Example
The following SQL statement will select all customers, and any orders they might have:*/
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders 
ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;
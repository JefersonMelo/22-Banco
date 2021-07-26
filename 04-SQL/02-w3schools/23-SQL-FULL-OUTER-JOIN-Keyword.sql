/*SQL FULL OUTER JOIN Keyword*/

/*SQL FULL OUTER JOIN Example
The following SQL statement selects all customers, and all orders*/
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders 
ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;

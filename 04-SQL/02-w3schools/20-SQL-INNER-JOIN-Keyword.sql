/*SQL INNER JOIN Keyword*/

/*SQL INNER JOIN Example
The following SQL statement selects all orders with customer information:*/
SELECT Orders.OrderID, Customers.CustomerName
FROM Orders
INNER JOIN Customers 
ON Orders.CustomerID = Customers.CustomerID; 

/* JOIN Three Tables
The following SQL statement selects all orders with customer and shipper information:*/
SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
FROM ((Orders 
    INNER JOIN Customers 
    ON Orders.CustomerID = Customers.CustomerID
    )
    INNER JOIN Shippers 
    ON Orders.ShipperID = Shippers.ShipperID
); 

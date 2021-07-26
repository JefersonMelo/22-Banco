/*SQL GROUP BY Statement*/

/*The SQL GROUP BY Statement
The GROUP BY statement is often used with aggregate functions 
(COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.*/

/*SQL GROUP BY Examples
The following SQL statement lists the number of customers in each country:*/
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;

/*The following SQL statement lists the number of customers in each country, sorted high to low:*/
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;

/*GROUP BY With JOIN Example
The following SQL statement lists the number of orders sent by each shipper:*/
SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders 
FROM Orders
LEFT JOIN Shippers 
ON Orders.ShipperID = Shippers.ShipperID
GROUP BY ShipperName;

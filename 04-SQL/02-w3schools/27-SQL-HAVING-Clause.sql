/*SQL HAVING Clause*/

/*SQL HAVING Examples
The following SQL statement lists the number of customers in each country. 
Only include countries with more than 5 customers:*/
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;

/*The following SQL statement lists the number of customers in each country, 
sorted high to low (Only include countries with more than 5 customers):*/
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5
ORDER BY COUNT(CustomerID) DESC;

/*More HAVING Examples
The following SQL statement lists the employees that have registered more than 10 orders:*/
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM (Orders
        INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID)
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 10;

/*The following SQL statement lists if the employees "Davolio" or "Fuller" 
have registered more than 25 orders:*/
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
WHERE LastName = 'Davolio' OR LastName = 'Fuller'
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 25;

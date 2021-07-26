/*SQL RIGHT JOIN Keyword*/

/*SQL RIGHT JOIN Example
The following SQL statement will return all employees, and any orders they might have placed:*/
SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees 
ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID; 
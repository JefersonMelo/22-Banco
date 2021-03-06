/*SQL Joins*/

SELECT Orders.OrderID, 
        Customers.CustomerName, 
        Orders.OrderDate
FROM Orders
INNER JOIN Customers 
ON Orders.CustomerID=Customers.CustomerID;

/*Different Types of SQL JOINs

    (INNER) JOIN: Returns records that have matching values in both tables
    LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
    RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
    FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table
*/

/*https://www.w3schools.com/sql/img_innerjoin.gif
https://www.w3schools.com/sql/img_leftjoin.gif
https://www.w3schools.com/sql/img_rightjoin.gif
https://www.w3schools.com/sql/img_fulljoin.gif*/


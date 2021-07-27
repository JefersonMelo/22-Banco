/*SQL Comments*/

/*Single Line Comments*/
--Select all:
SELECT * FROM Customers;

SELECT * FROM Customers -- WHERE City='Berlin'; 

/*Multi-line Comments*/
SELECT * FROM Customers WHERE (CustomerName LIKE 'L%'
OR CustomerName LIKE 'R%' /*OR CustomerName LIKE 'S%'
OR CustomerName LIKE 'T%'*/ OR CustomerName LIKE 'W%')
AND Country='USA'
ORDER BY CustomerName; 
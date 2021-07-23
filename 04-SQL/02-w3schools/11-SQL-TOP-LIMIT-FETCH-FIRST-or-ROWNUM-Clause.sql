/*SQL TOP, LIMIT, FETCH FIRST or ROWNUM Clause*/

/*The SQL SELECT TOP Clause*/

/*SQL Server / MS Access Syntax:*/
SELECT TOP number|percent column_name(s)
FROM table_name
WHERE condition; 

/*MySQL Syntax:*/
SELECT column_name(s)
FROM table_name
WHERE condition
LIMIT number; 

/*Oracle 12 Syntax:*/
SELECT column_name(s)
FROM table_name
ORDER BY column_name(s)
FETCH FIRST number ROWS ONLY; 

/*Older Oracle Syntax:*/
SELECT column_name(s)
FROM table_name
WHERE ROWNUM <= number; 

/*Older Oracle Syntax (with ORDER BY):*/
SELECT *
FROM (SELECT column_name(s) FROM table_name ORDER BY column_name(s))
WHERE ROWNUM <= number; 

/*SQL TOP, LIMIT and FETCH FIRST Examples*/
SELECT TOP 3 * 
FROM Customers;

/*MySQL*/
SELECT * 
FROM Customers
LIMIT 3; 

/*SQL Oracle*/
SELECT * 
FROM Customers
FETCH FIRST 3 
ROWS ONLY; 

/*SQL TOP PERCENT Example*/
SELECT TOP 50 PERCENT * 
FROM Customers;

/*SQL Oracle*/
SELECT * 
FROM Customers
FETCH FIRST 50 PERCENT 
ROWS ONLY;

/*ADD a WHERE CLAUSE*/

/*SQL Server/MS Access*/
SELECT TOP 3 * 
FROM Customers
WHERE Country='Germany';

/*MySQL*/
SELECT * 
FROM Customers
WHERE Country='Germany'
LIMIT 3; 

/*SQL Oracle*/
SELECT * 
FROM Customers
WHERE Country='Germany'
FETCH FIRST 3 
ROWS ONLY;
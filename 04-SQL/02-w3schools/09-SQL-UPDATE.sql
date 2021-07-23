/*SQL UPDATE Statement*/

/*UPDATE Table*/
UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;

/*UPDATE Multiple Records*/
UPDATE Customers
SET ContactName='Juan'
WHERE Country='Mexico';

UPDATE Customers
SET City = 'Oslo'
Country = 'Norway'
WHERE CustomerID = 32;

/*Update Warning, NEVER!*/
UPDATE Customers
SET ContactName='Juan';


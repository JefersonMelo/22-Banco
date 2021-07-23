/*The SQL AND, OR and NOT Operators*/

/*AND Example*/
SELECT * 
FROM Customers
WHERE Country='Germany' 
AND City='Berlin';

/*OR Example*/
SELECT * 
FROM Customers
WHERE Country='Germany' 
OR Country='Spain';

SELECT * 
FROM Customers
WHERE City='Berlin' 
OR City='München';

/*NOT Example*/
SELECT * 
FROM Customers
WHERE NOT Country='Germany';

/*Combining AND, OR and NOT*/
SELECT * 
FROM Customers
WHERE Country='Germany' AND (
    City='Berlin' 
    OR City='München'
); 

SELECT * 
FROM Customers
WHERE NOT Country='Germany' 
AND NOT Country='USA'; 

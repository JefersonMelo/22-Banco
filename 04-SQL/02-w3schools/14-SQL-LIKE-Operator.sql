/*SQL LIKE Operator*/

/*SQL LIKE Examples*/

/*CustomerName starting with "a"*/
SELECT * 
FROM Customers
WHERE CustomerName 
LIKE 'a%'; 

/*CustomerName ending with "a"*/
SELECT * 
FROM Customers
WHERE CustomerName 
LIKE '%a'; 

/*CustomerName that have "or" in any position*/
SELECT * 
FROM Customers
WHERE CustomerName 
LIKE '%or%';

/*CustomerName that have "r" in the second position*/
SELECT * 
FROM Customers
WHERE CustomerName 
LIKE '_r%';

/*CustomerName that starts with "a" and are at least 3 characters in length*/
SELECT * 
FROM Customers
WHERE CustomerName 
LIKE 'a__%'; 

/* ContactName that starts with "a" and ends with "o"*/
SELECT * 
FROM Customers
WHERE ContactName 
LIKE 'a%o'; 

/*CustomerName that does NOT start with "a"*/
SELECT * 
FROM Customers
WHERE CustomerName 
NOT LIKE 'a%';

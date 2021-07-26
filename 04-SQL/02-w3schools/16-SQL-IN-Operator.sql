/*SQL IN Operator*/

/*IN Operator Examples*/

/*The following SQL statement selects all customers that are located in "Germany", "France" or "UK"*/
SELECT * FROM Customers
WHERE Country IN (
    'Germany', 
    'France', 
    'UK'
);

/*The following SQL statement selects all customers that are NOT located in "Germany", "France" or "UK"*/
SELECT * FROM Customers
WHERE Country NOT IN (
    'Germany', 
    'France', 
    'UK'
);

/*The following SQL statement selects all customers that are from the same countries as the suppliers*/
SELECT * FROM Customers
WHERE Country IN (
    SELECT Country 
    FROM Suppliers
);


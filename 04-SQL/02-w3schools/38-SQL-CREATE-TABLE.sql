/*SQL CREATE TABLE*/

/*SQL CREATE TABLE Example
The following example creates a table called "Persons" that contains five 
columns: PersonID, LastName, FirstName, Address, and City:*/
CREATE TABLE Persons(
    PersonID INTEGER PRIMARY KEY AUTOINCREMENT,
    LastName VARCHAR(255),
    FirstName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255)
);

/*The following SQL creates a new table called "TestTables" 
(which is a copy of the "Customers" table): */
CREATE TABLE TestTable AS
SELECT customername, contactname
FROM customers; 


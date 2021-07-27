/*SQL NOT NULL Constraint*/

/*SQL NOT NULL on CREATE TABLE
The following SQL ensures that the "ID", "LastName", and "FirstName" columns 
will NOT accept NULL values when the "Persons" table is created:*/
CREATE TABLE Persons (
    ID INTEGER NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255) NOT NULL,
    Age INTEGER
); 

/*SQL NOT NULL on ALTER TABLE
To create a NOT NULL constraint on the "Age" column when the "Persons" 
table is already created, use the following SQL:*/
ALTER TABLE Persons
MODIFY Age int NOT NULL; 
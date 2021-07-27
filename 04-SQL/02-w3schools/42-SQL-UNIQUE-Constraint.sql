/*SQL UNIQUE Constraint*/

/*SQL UNIQUE Constraint on CREATE TABLE
The following SQL creates a UNIQUE constraint on the "ID" column when the "Persons" table is created:
SQL Server / Oracle / MS Access:*/
CREATE TABLE Persons (
    ID INTEGER NOT NULL UNIQUE,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Age INTEGER
);

/*MySQL:*/
CREATE TABLE Persons (
    ID INTEGER NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Age INTEGER,
    UNIQUE (ID)
); 

/*To name a UNIQUE constraint, and to define a UNIQUE constraint on 
multiple columns, use the following SQL syntax:
MySQL / SQL Server / Oracle / MS Access:*/
CREATE TABLE Persons (
    ID INTEGER NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Age INTEGER,
    CONSTRAINT UC_Person UNIQUE (ID,LastName)
); 

/*SQL UNIQUE Constraint on ALTER TABLE
To create a UNIQUE constraint on the "ID" column when the table is already created, use the following SQL:
MySQL / SQL Server / Oracle / MS Access:*/
ALTER TABLE Persons
ADD UNIQUE (ID); 

/*To name a UNIQUE constraint, and to define a UNIQUE constraint 
on multiple columns, use the following SQL syntax:
MySQL / SQL Server / Oracle / MS Access:*/
ALTER TABLE Persons
ADD CONSTRAINT UC_Person UNIQUE (ID,LastName); 

/*DROP a UNIQUE Constraint
To drop a UNIQUE constraint, use the following SQL:
MySQL:*/
ALTER TABLE Persons
DROP INDEX UC_Person; 

/*SQL Server / Oracle / MS Access:*/
ALTER TABLE Persons
DROP CONSTRAINT UC_Person; 

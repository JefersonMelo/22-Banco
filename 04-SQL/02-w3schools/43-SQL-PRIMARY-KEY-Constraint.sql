/*SQL PRIMARY KEY Constraint*/

/*SQL PRIMARY KEY on CREATE TABLE
The following SQL creates a PRIMARY KEY on the "ID" column when the "Persons" table is created:
MySQL:*/
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
); 

/*SQL Server / Oracle / MS Access:*/
CREATE TABLE Persons (
    ID int NOT NULL PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
); 

/*Note: In the example below there is only ONE PRIMARY KEY (PK_Person). 
However, the VALUE of the primary key is made up of TWO COLUMNS (ID + LastName).

To allow naming of a PRIMARY KEY constraint, and for defining a 
PRIMARY KEY constraint on multiple columns, use the following SQL syntax:
MySQL / SQL Server / Oracle / MS Access:*/
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT PK_Person PRIMARY KEY (ID,LastName)
);

/*SQL PRIMARY KEY on ALTER TABLE
To create a PRIMARY KEY constraint on the "ID" 
column when the table is already created, use the following SQL:
MySQL / SQL Server / Oracle / MS Access:*/
ALTER TABLE Persons
ADD PRIMARY KEY (ID); 

/*Note: If you use ALTER TABLE to add a primary key, the primary key 
column(s) must have been declared to not contain NULL values (when the table was first created).

To allow naming of a PRIMARY KEY constraint, and for defining a 
PRIMARY KEY constraint on multiple columns, use the following SQL syntax:
MySQL / SQL Server / Oracle / MS Access:*/
ALTER TABLE Persons
ADD CONSTRAINT PK_Person 
PRIMARY KEY (ID,LastName); 

/*DROP a PRIMARY KEY Constraint
To drop a PRIMARY KEY constraint, use the following SQL:
MySQL:*/
ALTER TABLE Persons
DROP PRIMARY KEY; 

/*SQL Server / Oracle / MS Access:*/
ALTER TABLE Persons
DROP CONSTRAINT PK_Person; 

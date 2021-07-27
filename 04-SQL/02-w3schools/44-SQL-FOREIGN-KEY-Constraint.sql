/*SQL FOREIGN KEY Constraint*/

/*SQL FOREIGN KEY on CREATE TABLE
The following SQL creates a FOREIGN KEY on the "PersonID" column when the "Orders" table is created:
MySQL:*/
CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
); 

/*SQL Server / Oracle / MS Access:*/
CREATE TABLE Orders (
    OrderID int NOT NULL PRIMARY KEY,
    OrderNumber int NOT NULL,
    PersonID int FOREIGN KEY REFERENCES Persons(PersonID)
); 

/*To allow naming of a FOREIGN KEY constraint, and for defining a FOREIGN KEY constraint 
on multiple columns, use the following SQL syntax:
MySQL / SQL Server / Oracle / MS Access:*/
CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
    REFERENCES Persons(PersonID)
);

/*SQL FOREIGN KEY on ALTER TABLE
To create a FOREIGN KEY constraint on the "PersonID" column when the "Orders" 
table is already created, use the following SQL:
MySQL / SQL Server / Oracle / MS Access:*/
ALTER TABLE Orders
ADD FOREIGN KEY (PersonID) 
REFERENCES Persons(PersonID); 

/*To allow naming of a FOREIGN KEY constraint, and for defining a FOREIGN KEY constraint 
on multiple columns, use the following SQL syntax:
MySQL / SQL Server / Oracle / MS Access:*/
ALTER TABLE Orders
ADD CONSTRAINT FK_PersonOrder
FOREIGN KEY (PersonID) 
REFERENCES Persons(PersonID); 

/*DROP a FOREIGN KEY Constraint
To drop a FOREIGN KEY constraint, use the following SQL:
MySQL:*/
ALTER TABLE Orders
DROP FOREIGN KEY FK_PersonOrder; 

/*SQL Server / Oracle / MS Access:*/
ALTER TABLE Orders
DROP CONSTRAINT FK_PersonOrder; 

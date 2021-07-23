/*Some of The Most Important SQL Commands*/

/*

    SELECT - extracts data from a database
    UPDATE - updates data in a database
    DELETE - deletes data from a database
    INSERT INTO - inserts new data into a database
    CREATE DATABASE - creates a new database
    ALTER DATABASE - modifies a database
    CREATE TABLE - creates a new table
    ALTER TABLE - modifies a table
    DROP TABLE - deletes a table
    CREATE INDEX - creates an index (search key)
    DROP INDEX - deletes an index

*/

CREATE TABLE Customers(
    CustomerID INTEGER PRIMARY KEY AUTOINCREMENT,
    CustomerName TEXT,
    ContactName TEXT,
    Address TEXT, 
    City TEXT,
    PostalCode TEXT,
    Country TEXT
);

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
    VALUES ("Alfreds Futterkiste", "Maria Anders", "Obere Str. 57", "Berlin","12209", "Germany");
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
    VALUES ("Ana Trujillo Emparedados y helados", "Ana Trujillo", "Avda. de la Constitución 2222", "México D.F.","05021", "Mexico");
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
    VALUES ("Antonio Moreno Taquería", "Antonio Moreno", "Mataderos 2312", "México D.F.","05023", "Mexico");


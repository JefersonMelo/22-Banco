/*SQL INSERT INTO SELECT Statement*/

/*SQL INSERT INTO SELECT Examples
The following SQL statement copies "Suppliers" into "Customers" 
(the columns that are not filled with data, will contain NULL):*/
INSERT INTO 
    Customers(
        CustomerName, 
        City, 
        Country
        )
SELECT SupplierName, City, Country 
FROM Suppliers;

/*The following SQL statement copies "Suppliers" into "Customers" (fill all columns):*/
INSERT INTO 
    Customers (
        CustomerName, 
        ContactName, 
        Address, 
        City, 
        PostalCode, 
        Country
    )
SELECT SupplierName, ContactName, Address, City, PostalCode, Country 
FROM Suppliers;

/*The following SQL statement copies only the German suppliers into "Customers":*/
INSERT INTO 
    Customers (
        CustomerName, 
        City, Country
        )
SELECT SupplierName, City, Country 
FROM Suppliers
WHERE Country='Germany';
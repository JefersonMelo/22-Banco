/*SQL ALTER TABLE*/

/*ALTER TABLE - ADD Column
The following SQL adds an "Email" column to the "Customers" table:*/
ALTER TABLE Customers
ADD Email varchar(255);

/*ALTER TABLE - DROP COLUMN
The following SQL deletes the "Email" column from the "Customers" table:*/
ALTER TABLE Customers
DROP COLUMN Email;

/*ALTER TABLE - ALTER/MODIFY COLUMN*/

/*SQL Server / MS Access:*/
ALTER TABLE table_name
ALTER COLUMN column_name datatype; 

/*My SQL / Oracle (prior version 10G):*/
ALTER TABLE table_name
MODIFY COLUMN column_name datatype; 

/*Oracle 10G and later:*/
ALTER TABLE table_name
MODIFY column_name datatype; 

/*SQL ALTER TABLE Example
Now we want to add a column named "DateOfBirth" in the "Persons" table.*/
ALTER TABLE Persons
ADD DateOfBirth date; 

/*Change Data Type Example
Now we want to change the data type of the column named "DateOfBirth" in the "Persons" table.*/
ALTER TABLE Persons
ALTER COLUMN DateOfBirth year; 

/*DROP COLUMN Example
Next, we want to delete the column named "DateOfBirth" in the "Persons" table.*/
ALTER TABLE Persons
DROP COLUMN DateOfBirth; 

/*SQL DATABASE Statement*/

/*CREATE DATABASE Example
The following SQL statement creates a database called "testDB":*/
CREATE DATABASE testDB;

/*DROP DATABASE Example
The following SQL statement drops the existing database "testDB":*/
DROP DATABASE testDB;

/*BACKUP DATABASE Example
The following SQL statement creates a full back up of the existing database "testDB" to the D disk:*/
BACKUP DATABASE testDB
TO DISK = 'D:\backups\testDB.bak'; 

/*BACKUP WITH DIFFERENTIAL Example
The following SQL statement creates a differential back up of the database "testDB":
Tip: A differential back up reduces the back up time (since only the changes are backed up).*/
BACKUP DATABASE testDB
TO DISK = 'D:\backups\testDB.bak'
WITH DIFFERENTIAL; 


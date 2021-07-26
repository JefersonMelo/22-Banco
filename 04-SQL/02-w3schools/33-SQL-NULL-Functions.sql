/*SQL NULL Functions*/
/*SQL IFNULL(), ISNULL(), COALESCE(), and NVL() Functions*/

/*Look at the following SELECT statement:*/
/*In the example below, if any of the "UnitsOnOrder" values are NULL, the result will be NULL.*/
SELECT ProductName, 
    UnitPrice * (
        UnitsInStock + UnitsOnOrder
        )
FROM Products; 

/*Solutions*/
/*MySQL->https://www.w3schools.com/sql/func_mysql_ifnull.asp
The MySQL IFNULL() function lets you return an alternative value if an expression is NULL:*/
SELECT ProductName, 
    UnitPrice * (
        UnitsInStock + IFNULL(UnitsOnOrder, 0)
        )
FROM Products; 

/*or ->https://www.w3schools.com/sql/func_mysql_coalesce.asp
we can use the COALESCE() function, like this:*/
SELECT ProductName, 
    UnitPrice * (
        UnitsInStock + COALESCE(UnitsOnOrder, 0)
        )
FROM Products; 

/*SQL Server->https://www.w3schools.com/sql/func_sqlserver_isnull.asp
The SQL Server ISNULL() function lets you return an alternative value when an expression is NULL:*/
SELECT ProductName, 
    UnitPrice * (
        UnitsInStock + ISNULL(UnitsOnOrder, 0)
    )
FROM Products; 

/*MS Access->https://www.w3schools.com/sql/func_msaccess_isnull.asp
The MS Access IsNull() function returns TRUE (-1) if the expression is a null value, otherwise FALSE (0):*/
SELECT ProductName, 
    UnitPrice * (
        UnitsInStock + IIF(IsNull(UnitsOnOrder), 0, UnitsOnOrder)
        )
FROM Products; 

/*Oracle->https://docs.oracle.com/cd/B19306_01/server.102/b14200/functions105.htm
The Oracle NVL() function achieves the same result:*/
SELECT ProductName, 
    UnitPrice * (
        UnitsInStock + NVL(UnitsOnOrder, 0)
        )
FROM Products; 

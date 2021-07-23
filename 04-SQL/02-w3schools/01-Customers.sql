

/*The WHERE clause can be combined with AND, OR, and NOT operators.

The AND and OR operators are used to filter records based on more than one condition:

    The AND operator displays a record if all the conditions separated by AND are TRUE.
    The OR operator displays a record if any of the conditions separated by OR is TRUE.

The NOT operator displays a record if the condition(s) is NOT TRUE.*/



/*SQL ORDER BY Keyword*/

/*he ORDER BY keyword is used to sort the result-set in ascending or descending order.

The ORDER BY keyword sorts the records in ascending order by default. To sort the records 
in descending order, use the DESC keyword.*/

SELECT * FROM Customers
ORDER BY Country;

/*ORDER BY DESC Example*/
SELECT * FROM Customers
ORDER BY Country DESC; 

/*ORDER BY Several Columns Example*/
SELECT * FROM Customers
ORDER BY Country, CustomerName; 

/*ORDER BY Several Columns Example 2*/

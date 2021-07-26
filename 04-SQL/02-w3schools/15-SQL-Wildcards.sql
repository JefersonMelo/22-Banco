/*SQL Wildcard*/

/*Wildcard Characters in SQL Server

Symbol 	Description 	                                            Example
% 	    Represents zero or more characters 	                        bl% finds bl, black, blue, and blob
_ 	    Represents a single character 	                            h_t finds hot, hat, and hit
[] 	    Represents any single character within the brackets 	    h[oa]t finds hot and hat, but not hit
^ 	    Represents any character not in the brackets 	            h[^oa]t finds hit, but not hot and hat
- 	    Represents a range of characters 	                        c[a-b]t finds cat and cbt
*/

/*Here are some examples showing different LIKE operators with '%' and '_' wildcards

LIKE Operator 	                Description
WHERE CustomerName LIKE 'a%' 	Finds any values that starts with "a"
WHERE CustomerName LIKE '%a' 	Finds any values that ends with "a"
WHERE CustomerName LIKE '%or%' 	Finds any values that have "or" in any position
WHERE CustomerName LIKE '_r%' 	Finds any values that have "r" in the second position
WHERE CustomerName LIKE 'a__%' 	Finds any values that starts with "a" and are at least 3 characters in length
WHERE ContactName LIKE 'a%o' 	Finds any values that starts with "a" and ends with "o"
*/

/*Using the % Wildcard*/

/*Here are some examples showing different LIKE operators with '%' and '_' wildcards*/
SELECT * FROM Customers
WHERE City LIKE 'ber%'; 

/*The following SQL statement selects all customers with a City containing the pattern "es"*/
SELECT * FROM Customers
WHERE City LIKE '%es%';

/*Using the _ Wildcard*/

/*The following SQL statement selects all customers with a City starting with any character, followed by "ondon"*/
SELECT * FROM Customers
WHERE City LIKE '_ondon';

/*The following SQL statement selects all customers with a City starting with "L", followed by any character, 
followed by "n", followed by any character, followed by "on"*/
SELECT * FROM Customers
WHERE City LIKE 'L_n_on';

/*Using the [charlist] Wildcard*/
SELECT * FROM Customers
WHERE City LIKE '[bsp]%';

/*The following SQL statement selects all customers with a City starting with "a", "b", or "c"*/
SELECT * FROM Customers
WHERE City LIKE '[a-c]%';

/*Using the [!charlist] Wildcard*/

/*The two following SQL statements select all customers with a City NOT starting with "b", "s", or "p"*/
SELECT * FROM Customers
WHERE City LIKE '[!bsp]%'; 
/*ou*/
SELECT * FROM Customers
WHERE City NOT LIKE '[bsp]%'; 



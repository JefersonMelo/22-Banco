/*SQL Self Join*/

/*SQL Self Join Example
The following SQL statement matches customers that are from the same city*/
SELECT  A.CustomerName AS CustomerName1, 
        B.CustomerName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;

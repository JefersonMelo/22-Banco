/*SQL EXISTS Operator*/

/*SQL EXISTS Examples
The following SQL statement returns TRUE and lists the suppliers with a product price less than 20:*/
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (
    SELECT ProductName 
    FROM Products 
    WHERE Products.SupplierID = Suppliers.supplierID 
    AND Price < 20
); 

/*The following SQL statement returns TRUE and lists the suppliers with a product price equal to 22:*/
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (
    SELECT ProductName 
    FROM Products 
    WHERE Products.SupplierID = Suppliers.supplierID 
    AND Price = 22
); 


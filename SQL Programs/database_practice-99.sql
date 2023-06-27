/*Create a stored procedure named `GetProductDetails` that accepts a product ID as a parameter 
and returns the product's name, price, and quantity in stock.
 Assume you have a table named `Products` with the following columns: `ProductID`, `ProductName`, `Price`, and `QuantityInStock`.*/
 
 use stored_procedure;
 
 select * from Products;
 
 delimiter //
 create procedure GetProductDetails5(in ProductID int)
 begin
 declare var int;
 set var=ProductID;
 select ProductName,Price,QuantityInStock from Products
 where ProductID=var;
 end //
 delimiter ;
 
 call GetProductDetails5(1);
 


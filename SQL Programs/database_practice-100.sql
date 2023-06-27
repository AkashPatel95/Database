/*Create a stored procedure named `GetOrderTotal` that calculates the total cost of an order.
 The stored procedure should accept an order ID as a parameter and display the total cost as the result.
 Assume you have two tables named `Orders` and `OrderItems`. 
 The `Orders` table has columns: `OrderID`, `OrderDate`, and `CustomerID`. The `OrderItems` table has columns: `OrderID`, `ProductID`, `Quantity`, and `Price`.*/
 
 use stored_procedure;
 
 select * from Orders;
 select * from OrderItems;
 
 delimiter //
 create procedure GetOrderTotal6(in var int)
 begin

alter table OrderItems
add column total double;

update OrderItems
set total=quantity*price 
where OrderID=var;
end //
 delimiter ;
 
 call GetOrderTotal6(4);
 
 
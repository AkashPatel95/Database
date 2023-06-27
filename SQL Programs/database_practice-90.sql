/*Trigger to calculate and update the total price of an order before inserting a new record
 into the "OrderItems" table. 
 The trigger should calculate the total price by multiplying the quantity with the unit price of each item 
 in the order.*/
 
 use salesDB;

USE salesDB;

select * from orderitems;

alter table orderitems
add totalprice double;

delimiter //
create trigger update_price
before insert on orderitems
for each row
begin
set new.totalprice = new.quantity * new.unit_price;
end //
delimiter ;

insert into orderitems values(5,5,105,5,15,0);

 
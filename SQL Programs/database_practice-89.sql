/*Trigger to automatically generate a unique order number before inserting a new order into the "Orders" table. 
The trigger should assign a unique order number based on the existing orders in the table.*/

use salesDB;

delimiter //
create trigger validate_orderNo
before insert on orders
for each row
begin
set new.order_number='1005';
select new.order_number=order_number+1;
end //
delimiter ;

insert into orders values(4,null,4,'2023-06-23');

select * from orders;
/*Trigger to validate the age of a person before inserting a new record into the "Person" table. 
The trigger should check if the age is greater than or equal to 18. 
If the age is less than 18, the trigger should raise an error and prevent the insertion.*/

USE salesDB;

delimiter //
create trigger validate_age
before insert on person
for each row
begin
if new.age<18 then
signal sqlstate '45000' set message_text='age should be greater than 18';
end if;
end //
delimiter ;


insert into person values(4,'Akash',17);





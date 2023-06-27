/*after update*/

DROP TABLE IF EXISTS SalesChanges;

CREATE TABLE SalesChanges (
    id INT AUTO_INCREMENT PRIMARY KEY,
    salesId INT,
    beforeQuantity INT,
    afterQuantity INT,
    changedAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
delimiter //
create trigger after_update
after update on sales
for each row
begin
if old.quantity<>new.quantity then
insert into SalesChanges(salesId, beforeQuantity, afterQuantity)
values(old.id, old.quantity, new.quantity);
end if;
end //
delimiter ;

update sales
set quantity = 350
where id=1;


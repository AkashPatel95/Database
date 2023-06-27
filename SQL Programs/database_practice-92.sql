/*after insert*/

use triggers;

create table member(id int, name varchar(25), email varchar(40), birthdate date);
INSERT INTO member VALUES
    (1, 'John Doe', 'johndoe@example.com','1995-10-11'),
    (2, 'Jane Smith', 'janesmith@example.com', '1995-10-10'),
    (3, 'Alex Johnson', 'alexjohnson@example.com', '1995-10-09');
    
create table reminders(id int, memberId int, message varchar(35));

delimiter //
create trigger after_insert1
after insert on member
for each row
begin
if new.birthdate=null then
insert into reminders(memberId, message)
values(new.id, concat('Hi', new.name, ':please insert birth date'));
end if;
end //
delimiter ;

INSERT INTO member
VALUES
    (1, 'John Doe', 'john.doe@example.com', NULL),
    (2, 'Jane Doe', 'jane.doe@example.com','2000-01-01');
    
    select * from reminders;



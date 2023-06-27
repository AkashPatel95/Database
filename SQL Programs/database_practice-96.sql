/*before delete trigger*/

use triggers;



CREATE TABLE Salaries (
    employeeNumber INT PRIMARY KEY,
    validFrom DATE NOT NULL,
    amount DEC(12 , 2 ) NOT NULL DEFAULT 0
);
INSERT INTO salaries(employeeNumber,validFrom,amount)
VALUES
    (1002,'2000-01-01',50000),
    (1056,'2000-01-01',60000),
    (1076,'2000-01-01',70000);
    
    DROP TABLE IF EXISTS SalaryArchives;    

CREATE TABLE SalaryArchives (
    id INT PRIMARY KEY AUTO_INCREMENT,
    employeeNumber INT ,
    validFrom DATE NOT NULL,
    amount DEC(12 , 2 ) NOT NULL DEFAULT 0,
    deletedAt TIMESTAMP DEFAULT NOW()
);

delimiter //
create trigger before_delete
before delete on Salaries
for each row
begin
insert into SalaryArchieves(employeeNumber, validFrom, amount)
values(old.employeeNumber, old.validFrom, old.amount);
end //
delimiter ;

delete from Salaries
where employeeNumber=1002;

show tables;
select * from salaryarchives;


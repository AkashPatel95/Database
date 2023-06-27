/*after delete*/
use triggers;
DROP TABLE IF EXISTS Salaries;

CREATE TABLE Salaries (
    employeeNumber INT PRIMARY KEY,
    salary DECIMAL(10,2) NOT NULL DEFAULT 0
);
INSERT INTO Salaries(employeeNumber,salary)
VALUES
    (1002,5000),
    (1056,7000),
    (1076,8000);
    
    DROP TABLE IF EXISTS SalaryBudgets;

CREATE TABLE SalaryBudget(
    total double
);

insert into SalaryBudget(total)
select sum(salary) from
salaries;

delimiter //
create trigger after_delete
after delete on salaries
for each row
begin
update SalaryBudget
set total=total-old.salary;
end //
delimiter ;

delete from salaries 
where employeeNumber=1002;



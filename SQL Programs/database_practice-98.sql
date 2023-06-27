/*Create a stored procedure named `employees_procedure` that returns the total count of employees in a given department. 
The stored procedure should accept the department ID as a parameter and display the count as the result. 
Assume you have a table named `Employees` with the following columns: `EmployeeID`, `Name`, and `DepartmentID`.*/

use stored_procedure;

select * from employees;
delimiter //
create procedure employees_procedure(in employeeId int)
begin
select count(EmployeeID) as result from employees;
end //
delimiter ;

call employee_procedure(1);














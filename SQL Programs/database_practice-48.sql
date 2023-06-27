/*7.Add a foreign key constraint on the salesman_id column of the "orders" table, 
referencing the salesman_id column in the "salesmen" table, 
to ensure that the salesman ID exists in the "salesmen" table.*/

use oreder_w3schools7;


alter table order_w3schools7_info
modify column salesman_id int not null,
add constraint orq
foreign key(salesman_id)
references salesman(salesman_id) 
; 

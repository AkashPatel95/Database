/*From the following table, write a SQL query to display the pro_name as 'Item Name' and pro_price as 'Price in Rs.' */

use item_mast;

create table item_mast_info (pro_id int, pro_name varchar(30), pro_price double,pro_com int);

insert into item_mast_info values(101, 'Mother Board', 3200, 15), (102, 'Key Board', 450, 16),
(103, 'Zip Drive', 250, 14), (104, 'Speaker', 550, 16), (105, 'Monitor', 5500, 11),
(106, 'DVD Drive', 900, 12), (107, 'CD Drive', 800, 12), (108, 'Printer', 2600, 13),
(109, 'Refill Cartridge', 350, 13), (110, 'Mouse', 250, 12);


select pro_name as 'item name',pro_price as 'price in rs'from item_mast_info;
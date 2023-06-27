/*From the following table, write a SQL query to find the cheapest item(s). Return pro_name and, pro_price. */

use item_mast;

select pro_name, pro_price from item_mast_info 
where 
pro_price= (select min(pro_price) from item_mast_info);
/* From the following table, 
write a SQL query to calculate the average price for a manufacturer code of 16. Return avg. */

show databases;

use item_mast;

select avg(pro_price) as price from item_mast_info where pro_com=16;
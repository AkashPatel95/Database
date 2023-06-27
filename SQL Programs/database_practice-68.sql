/* From the following tables write a SQL query to determine the commission of the salespeople in Paris.
 Return commission.*/
 
 select commission from salesman.salesman_info
 where salesman_id in (select salesman_id from salesman.salesman_info where city='paris');
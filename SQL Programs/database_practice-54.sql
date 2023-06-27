/*From the following tables write a SQL query to locate those salespeople who do not live in the same city
 where their customers live and have received a commission of more than 12% from the company.
 Return Customer Name, customer city, Salesman, salesman city, commission. */
 
 select c.cust_name as "customer name", c.city as "customer city", s.name as salesman,
 s.city as "salesman city", s.commission
 from customer.customer2_info as c
 inner join salesman.salesman_info as s on
 c.salesman_id=s.salesman_id
where c.city<>s.city  and s.commission>0.12
;
/*Write a SQL statement to make a list for the salesmen who either work for one or more customers or yet to join any of the customer. 
The customer may have placed, either one or more orders on or above order amount 2000 and must have a grade,
 or he may not have placed any order to the associated supplier.*/
 
 select * from customer.customer2_info as c
 right join salesman.salesman_info as s on
 c.salesman_id=s.salesman_id
 left join oreder_w3schools7.order_w3schools7_info as o on
 c.customer_id=o.customer_id
 where o.purch_amm>=2000
 and c.grade is not null;
/*Write a query to retrieve the names of salesmen along with a column called "Commission Category"
 that categorizes them as "High" if their commission rate is greater than 0.14, 
 "Medium" if it is between 0.12 and 0.14 (inclusive), and "Low" otherwise.*/
 
 use salesman;

 select name,
 case
 when commission>0.14 then 'high'
 when commission >=0.12 and commission<=0.14 then 'medium'
 else 'low' 
 end as "Commission Category"
 from salesman_info;
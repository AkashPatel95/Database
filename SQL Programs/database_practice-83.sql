/*Write a query to retrieve the names of customers along with a column called "Grade Status" 
that categorizes them as "High" if their grade is greater than or equal to 300,
 "Medium" if their grade is between 200 and 299 (inclusive), and "Low" otherwise.*/
 
 use customer;
 select cust_name,
 case
    when grade>=300 then 'high'
    when grade>=200 and grade<=299 then 'medium'
    else 'low'
    end as "grade status"
    from customer2_info;

/*SQL query to combine the winners in physiology before 1971 and winners in peace on or after 1974*/

show databases;
use nobel_win;

select * from nobel_win_info where (subject='physiology' and year<1974)
union
select * from nobel_win_info where (subject='peace' and year>=1974);
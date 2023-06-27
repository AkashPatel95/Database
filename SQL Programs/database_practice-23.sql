/*SQL query to find nobel prize winners for the subject that does not begin with letter p.
order the result by descending and winner in ascending.*/

use nobel_win;

select * from nobel_win_info where subject not like 'p%'
order by
year desc, 
winner asc;

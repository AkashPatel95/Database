/*SQL query to find details of 1970 nobel prize winners. order the result by subject,ascending except 
for chemistry and economics which will come at the end of the result*/

use nobel_win;

select * from nobel_win_info where year=1970
order by
case
when subject in('chemistry','economics') then 2
else 1
end,
subject asc;

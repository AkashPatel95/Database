/*SQL query to retrive details of the winners whose first names match with the string 'Louis'
return year,subject,winner,country,category*/

use nobel_win;

select year,subject,winner,country,category from nobel_win_info
where winner like 'Louis %';
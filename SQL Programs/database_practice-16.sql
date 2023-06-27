/*SQL query to find nobel prize winner in chemistry between 1965 and 1975.
return year,subject,winner and country*/

show databases;
use nobel_win;
show tables;

select year,subject,winner,country from nobel_win_info where subject='chemistry'
and year>=1965 and year<=1975;
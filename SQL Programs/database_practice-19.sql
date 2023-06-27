/*SQL query to combines the winners in physics,1970 and in economics,1971.*/

use nobel_win;

select * from nobel_win_info where (subject='physics' and year=1970)
union
(select * from nobel_win_info where (subject='economics' and year=1971));
/*SQL query to display all details of prime minister winners after 1972
of menachem begin and yitzhak rabin*/

use nobel_win;

select * from nobel_win_info where category='prime minister' and year>1972
and winner in('menachem begin', 'yitzhak rabin');
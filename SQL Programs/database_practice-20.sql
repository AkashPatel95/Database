/*SQL query to find nobel prize winner in 1970 excluding subject of physiology and economics*/

use nobel_win;

select * from nobel_win_info where year=1970 and subject not in ('physiology','ecomonics');

select * from nobel_win_info;
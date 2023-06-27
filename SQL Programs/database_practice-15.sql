/*SQL query to find nobel prize winners in the field of physics since 1950. Return Winner*/

select winner from nobel_win_info where subject='physics' and year>=1950;
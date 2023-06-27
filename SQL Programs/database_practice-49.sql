/*Create a table called "nobel_win" with columns for YEAR, SUBJECT, WINNER, COUNTRY, and CATEGORY.
 Add a primary key constraint on the combination of the YEAR, SUBJECT, 
and CATEGORY columns to ensure uniqueness of Nobel Prize winners in each category.*/

use nobel_win;

create table nobel_win(year int, subject varchar(15), winner varchar(20), country varchar(20), category varchar(20),
primary key(year,subject,category));

/*SQL query to locate nobel prize winner 'Denis Gabor'.
Reurn year, subject */

show databases;


select year, subject from nobel_win_info where winner='Denis Gabor';

/*create database and table for nobel prize winner and find the nobel prize winner for year 1970.
Return year, subject, winner*/

create database nobel_win;

create table nobel_win_info(year int, subject varchar(10), winner varchar(28), country varchar(15), category varchar(20));

insert into nobel_win_info values(1970, 'physics', 'Hanen Alfven', 'Sweden', 'Scientist'), (1970, 'physics', 'Louis Neel', 'France', 'Scientist'),
(1970, 'chemistry', 'Louis Leloir', 'France', 'Scientist'),(1970, 'physiology', 'Ulf Von Euler', 'Sweden', 'Scientist'), (1970, 'physiology', 'Bernanrd Katz', 'Germany', 'Scientist'),
(1970, 'literature', 'Aleksandr Solzhenitsyn', 'Russia', 'Linguist'), (1970, 'economics', 'Paul Samulson', 'USA', 'Economist'), (1970, 'physiology', 'Julius Axelrod', 'USA', 'Scientist'),
(1971, 'physics', 'Dennis Gabor', 'Hungary', 'Scientist'), (1971, 'chemistry', 'Gerhard Herzberg', 'Germany', 'Scientist'),
(1971, 'peace', 'Willy Brandt', 'Germany', 'Chancellor'), (1971, 'literature', 'Pablo Neruda', 'Chile', 'Linguist'),
(1971, 'economics', 'Simon Kuznets', 'Russia', 'Economist'), (1978, 'peace', 'Anwar al-Sadat', 'Egypt', 'President'),
(1978, 'peace', 'Menachem Begin', 'Israel', 'Prime Minister'), (1987, 'chemistry', 'Donald J. Cram', 'USA', 'Scientist'),
(1987, 'chemistry', 'Jean Marie', 'France', 'Scientist'), (1987, 'psysiology', 'Susumu Tonegawa', 'Japan', 'Scientist'),
(1994, 'economics', 'Reinhard Selten', 'Germany', 'Economist'), (1994, 'peace', 'Yitzhak Rabin', 'Israel', 'Prime Minister'),
(1987, 'physics', 'Johanes', 'Germany', 'Scientist'), (1987, 'literature', 'Joseph Brodsky', 'Russia', 'Linguist'), 
(1987, 'economics', 'Robert Solow', 'USA', 'Economist'),(1994, 'literature', 'Kenzaburo Oe', 'Japan', 'Linguist');

select year,subject,winner from nobel_win_info where year=1970;
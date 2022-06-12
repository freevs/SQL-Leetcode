create table cinema(id int, movie varchar(20), description varchar(20), rating float);
insert into cinema(id, movie, description, rating) values(1, 'War', 'great3D', 8.9), (2, 'Science', 'fiction', 8.5), (3, 'irish', 'boring', 6.2), (4, 'Ice song', 'Fantacy', 8.6), (5, 'House card', 'Interesting', 9.1);
														   
select *
from cinema
where mod(id, 2) = 1 and description != 'boring'
order by rating DESC;														
                                                           
                                                           







  
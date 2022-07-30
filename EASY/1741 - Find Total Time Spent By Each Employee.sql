create table Employees_1741(emp_id int, event_day date, in_time int, out_time int);
insert into Employees_1741(emp_id, event_day, in_time, out_time)values(1, '2020-11-28', 4, 32), (1, '2020-11-28', 55, 200),  (1, '2020-12-03', 1, 42),   (2, '2020-11-28', 3, 33), (2, '2020-12-09', 47, 74);

select event_day as day, emp_id, sum(out_time - in_time) as total_time
from Employees_1741
group by day, emp_id
                                                                     
                                                                    
                                                                     
                                                                      




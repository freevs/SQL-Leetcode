create table Seat_603(seat_id int, free int);
insert into Seat_603(seat_id, free)values(1, 1), (2, 0), (3, 1), (4, 1), (5, 1);

with cte as
(select *, LEAD(free) OVER(ORDER BY seat_id) as next_seat, LAG(free) OVER(ORDER BY seat_id) as prev_seat
from Seat_603)
select seat_id 
from cte 
where free = 1 and next_seat =1
or free = 1 and prev_seat =1
order by seat_id;
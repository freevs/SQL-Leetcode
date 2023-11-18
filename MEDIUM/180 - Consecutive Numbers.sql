CREATE TABLE Logs_180 (Id INT PRIMARY KEY,Num INT);

INSERT INTO Logs_180 (Id, Num) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 1),
(6, 2),
(7, 2);

With cte as
(select *, LEAD(Num,1) OVER() as next_1, LEAD(Num,2) OVER() as next_2
from Logs_180)
select distinct Num as Consecutive_Numbers
from cte 
where Num=next_1
and Num=next_2;

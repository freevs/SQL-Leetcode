create table weather(id int, recordDate date, temperature int);
insert into weather(id, recordDate, temperature) values(1, '2015-01-01', 10), (2, '2015-01-02', 25), (3, '2015-01-03', 20), (4, '2015-01-04', 30);


select w1.id
from weather w1, Weather w2
where (w1.Temperature > w2.Temperature and 
	datediff(w1.recordDate, w2.recordDate) = 1);


create table Querie_1211(query_name varchar(10), result varchar(20), position int, rating int);
insert into Querie_1211(query_name, result, position, rating)values('Dog','Golden Retriever', 1, 5), ('Dog', 'German Shepherd', 2, 5), ('Dog', 'Mule', 200, 1), ('Cat', 'Shirazi', 5, 2), ('Cat','Siamese', 3, 3), ('Cat', 'Sphynx', 7, 4);


select query_name, avg(rating/position) as quality, round(sum(if(rating<3, 1, 0))/count(query_name)*100, 2) as poor_query_percentage
from Querie_1211
group by query_name


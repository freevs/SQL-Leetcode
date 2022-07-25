create table person(id int, email varchar(20));
insert into person(id, email)values(1, 'john@example.com'), (2, 'bob@example.com'), (3, 'john@example.com');  


Delete p2
from person p1 join person p2
on p1.email=p2.email and p1.id<p2.id;
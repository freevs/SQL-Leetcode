create table duplicate_email1(id int, email varchar(10));
insert into duplicate_email1(id, email) values(1, 'a@b.com'), (2, 'c@d.com'), (3, 'a@b.com');


select email
from duplicate_email1
group by email
having count(email)>1;
create table stud_class(student char, class varchar(10));
insert into stud_class(student, class) values('A', 'MATH'), ('B', 'ENGLISH'), ('C', 'MATH'), ('D', 'BIOLOGY'), ('E', 'MATH'), ('F', 'COMPUTER'), ('G', 'MATH'), ('H','MATH'), ('I', 'MATH');


select class from stud_class
group by class
having count(distinct student) >= 5;

create table salary_627(id int, name char, sex char, salary double);
insert into salary_627(id, name, sex, salary) values(1, 'A', 'm', 2500), (2, 'B', 'f', 1500), (3, 'C', 'm', 5500), (4, 'D', 'f', 500);

UPDATE salary SET sex=CASE WHEN sex = "m" THEN "f" ELSE "m" END;

update salary
set sex = if (sex='m', 'f', 'm')
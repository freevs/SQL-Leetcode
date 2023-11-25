CREATE TABLE student_580
   (student_id int, student_name varchar(25),  gender char, dept_id int
);
INSERT INTO student_580 
  (student_id, student_name, gender, dept_id) 
VALUES
  (1, 'Jack', 'M', 1),
  (2, 'Jane', 'F', 1),
  (3, 'Mark', 'M', 2);
  
CREATE TABLE dep_548 (
  dept_id int, dept_name VARCHAR(255)
);
INSERT INTO dep_548 
  (dept_id ,dept_name) 
VALUES 
  (1, 'Engineering'),
  (2, 'Science'),
  (3, 'Law');
  
select dept_name, count(student_id) as student_number
from student_580 e right join dep_548 d
on e.dept_id = d.dept_id
group by d.dept_id;
  

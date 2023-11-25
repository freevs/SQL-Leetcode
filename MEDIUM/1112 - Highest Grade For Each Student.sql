CREATE TABLE Enrollments_1112(
  student_id int,
  course_id int,
  grade int
  );

INSERT INTO Enrollments_1112
  (student_id,course_id, grade)
VALUES
  (2,2,95),
  (2,3,95),
  (1,1,90),
  (1, 2,99),
  (3,1,80),
  (3,2,75),
  (3,3,82);
 
with cte as 
(Select *, MAX(grade) OVER(PARTITION BY student_id) as max_grade from Enrollments_1112)
Select student_id, min(course_id) as course_id, max_grade
from cte
where grade=max_grade
group by student_id
order by student_id;
 

Select *, MAX(grade) OVER(PARTITION BY student_id) as max_grade from Enrollments_1112





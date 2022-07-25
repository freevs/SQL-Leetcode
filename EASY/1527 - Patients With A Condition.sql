create table patients(patient_id int, patient_name varchar(20), conditions varchar(20));
insert into patients(patient_id, patient_name, conditions)values(1, 'Daniel', 'YFEV COUGH'), (2, 'Alice', NULL), (3, 'Bob', 'DIAB100 MYOP'), (4, 'George', 'ACNE DIAB100'), (5, 'Alian', 'DIAB201');
                                                                                         
                                                                                         
select patient_id, patient_name, conditions
from Patients
where conditions like "%DIAB1%"                                                                                       
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
														
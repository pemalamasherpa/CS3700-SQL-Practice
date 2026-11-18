--From database CS3700_test

--All columns
--SELECT ALL columns from table

SELECT * FROM courses;
SELECT * FROM instructor;
SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM major;


SELECT last_name, rank FROM instructor;

SELECT last_name, rank FROM instructor WHERE rank = "Instructor";

SELECT * FROM instructor WHERE last_name = "Bitterman";

--JOIN student and major tables to display each student's major name.
SELECT * FROM student JOIN major ON student.major_id_fk = major.major_id;

-- Empty cause student don't have values
SELECT student.student_id, student.first_name, student.last_name, major.major_name FROM student JOIN major ON student.major_id_fk = major.major_id;

SELECT student.student_id, student.first_name, student.last_name, major.major_name FROM student JOIN major ON student.major_id_fk = major.major_id WHERE student.first_name = "DAMIAN";

SELECT student.last_name, major.major_name, student.student_id, student.first_name FROM student JOIN major ON student.major_id_fk = major.major_id WHERE student.first_name = "DAMIAN";
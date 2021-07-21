/*Associando tabelas relacionadas com JOIN*/

CREATE TABLE students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    phone TEXT,
    birthdate TEXT
);

INSERT INTO students (first_name, last_name, email, phone, birthdate)
    VALUES ("Peter", "Rabbit", "peter@rabbit.com", "555-6666", "2002-06-24");
INSERT INTO students (first_name, last_name, email, phone, birthdate)
    VALUES ("Alice", "Wonderland", "alice@wonderland.com", "555-4444", "2002-07-04");
    
CREATE TABLE student_grades (
    id INTEGER PRIMARY KEY,
    student_id INTEGER,
    test TEXT,
    grade INTEGER
);

INSERT INTO student_grades (student_id, test, grade)
    VALUES (1, "Nutrition", 95);
INSERT INTO student_grades (student_id, test, grade)
    VALUES (2, "Nutrition", 92);
INSERT INTO student_grades (student_id, test, grade)
    VALUES (1, "Chemistry", 85);
INSERT INTO student_grades (student_id, test, grade)
    VALUES (2, "Chemistry", 95);

SELECT * 
FROM student_grades;

/* cross join */
SELECT * 
FROM student_grades, students;

/* implicit inner join*/
SELECT *
FROM student_grades, students
WHERE student_grades.student_id = students.id;

/* explicit inner join*/
SELECT *
FROM students
JOIN student_grades
ON students.id = student_grades.student_id;

/* explicit inner join*/
SELECT first_name, last_name, email, test, grade 
FROM students
JOIN student_grades
ON students.id = student_grades.student_id
WHERE grade > 90;

/* explicit inner join*/
SELECT  students.first_name, 
        students.last_name, 
        students.email, 
        student_grades.test, 
        student_grades.grade
FROM students
JOIN student_grades
ON students.id = student_grades.student_id
WHERE grade > 90;

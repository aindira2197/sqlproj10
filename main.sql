CREATE TABLE teachers2 (
    id INT,
    name VARCHAR(50)
);

CREATE TABLE courses (
    id INT,
    course_name VARCHAR(50),
    teacher_id INT
);

INSERT INTO teachers2 VALUES
(1,'Ali'),(2,'Vali');

INSERT INTO courses VALUES
(1,'Python',1),(2,'Java',1),(3,'C++',2);

SELECT t.name, COUNT(c.id) AS total_courses
FROM teachers2 t
INNER JOIN courses c ON t.id = c.teacher_id
GROUP BY t.name
HAVING COUNT(c.id) > 1;

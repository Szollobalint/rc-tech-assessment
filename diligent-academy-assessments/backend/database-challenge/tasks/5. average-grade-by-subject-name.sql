SELECT 
    student.id AS student_id,
    student.name AS student_name,
    subject.name AS subject_name,
    AVG(subject_grades.grade) AS average_grade
FROM 
    student
JOIN 
    subject_grades ON student.id = subject_grades.student_id
JOIN 
    subject ON subject.id = subject_grades.subject_id
GROUP BY 
    student.id, student.name, subject.name
ORDER BY 
    student.id, student.name, subject.name;
    
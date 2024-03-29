SELECT students.name AS student, AVG(assignment_submissions.duration) AS average_time
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
WHERE students.end_date IS NULL
GROUP BY students.id, students.name
ORDER BY average_time;
SELECT SUM(assignment_submissions.duration) as total_duration
FROM students
JOIN cohorts ON students.cohort_id = cohorts.id
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
JOIN assignments ON assignment_submissions.assignment_id = assignments.id
WHERE cohorts.name = 'FEB12';
-- Get the students who's avg time it takes to complete an assignment is less than the average estimated time it takes to complete an assignment.

-- select the name of the student, their avg completion time, and the average suggested completion time.
-- order by avg completion time from smallest to largest.
-- only get currently enrolled students
-- this will require data from students, assignment_submissions and assignments.

SELECT students.name AS student, AVG(assignment_submissions.duration) AS average_assignment_duration, avg(assignments.duration) AS average_estimated_duration
FROM students 
JOIN assignment_submissions ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration;

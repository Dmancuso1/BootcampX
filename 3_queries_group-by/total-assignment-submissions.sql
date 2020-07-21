-- Get the total number of assignment submissions for each cohort.
-- select the cohort name and total submissions
-- order the results from greatest to least submissions.

SELECT cohorts.name AS cohort, count(assignment_submissions.*) AS total_submissions
FROM students 
JOIN assignment_submissions ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohort
ORDER BY total_submissions DESC;


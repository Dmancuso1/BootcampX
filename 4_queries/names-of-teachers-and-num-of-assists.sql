-- Get the names of all the teachers that preformed an assistance request during a cohort.

-- select the instructors name and cohorts name
-- don't repeat the instructors name in the result list
-- order by the instructor name
-- this query needs to select data for a cohort with a specific name, use 'JUL02' for the cohorts name.
-- **NEW** Include the number of assistances as well

SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort, COUNT(assistance_requests.*) as total_assistances
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teacher;
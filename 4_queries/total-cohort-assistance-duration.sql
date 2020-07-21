-- Get the total duration of all assistance requests for each cohort
-- select the cohorts name and the total duration of the assistance requests
-- look at the ERD to see how to join tables.

SELECT cohorts.name as cohort, SUM(completed_at - started_at) as total_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration;
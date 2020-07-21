-- Get each day with the total number of assignments and the total duration of the assignments.
-- select the day, number of assignments, and the total duration of assignments.
-- order the results by the day.

SELECT day, COUNT(*) as number_of_assignments, SUM(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;

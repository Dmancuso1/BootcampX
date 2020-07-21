-- Get the total number of assignments for each day of bootcamp.
-- select the day and the total assignments
-- Order the results by day
-- only return rows where total assignments is greater or equal to 10.
-- This query only requires the assignments table.

SELECT day, count(*) as total_assignments
FROM assignments
GROUP BY day
HAVING count(*) >= 10
ORDER BY day; -- this cleans it up and makes it user friendly.
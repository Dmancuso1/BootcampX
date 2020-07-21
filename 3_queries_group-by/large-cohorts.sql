-- get all cohorts with 18 or more students.


SELECT cohorts.name AS cohort_name, count(students.*) AS student_count
FROM cohorts 
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name
HAVING count(students.*) >= 18 -- can't use alias here.
ORDER BY student_count;

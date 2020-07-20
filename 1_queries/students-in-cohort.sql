-- Selects the total number of students, ordered by name, who were in a specific cohort.

SELECT id, name 
FROM students 
WHERE cohort_id = 1
ORDER BY name;
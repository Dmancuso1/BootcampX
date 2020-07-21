-- Get the total number of assistance_requests for a student
-- select the students name and the total assistance requests.


SELECT count(assistance_requests.*) as total_assistances, students.name
FROM assistance_requests 
JOIN students ON students.id = student_id
WHERE name = 'Elliot Dickinson'
GROUP BY students.name;
-- Get the total number of assistance_requests for a teacher.
-- select the teachers name and the total assistance requests.


SELECT count(assistance_requests.*) as total_assistances, teachers.name
FROM assistance_requests 
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;
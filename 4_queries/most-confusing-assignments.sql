-- List Each assignment with the total number of assistance requests with it.
-- Selec the assignments id, day, chapter, name and the total assistances.
-- order by total assistances in order from most to least.


SELECT assignments.id, day, chapter, name, COUNT(assistance_requests) as total_requests
FROM assignments 
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;


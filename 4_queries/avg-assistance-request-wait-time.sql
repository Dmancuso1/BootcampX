-- Calculate the average time it takes to start and assistance request.
-- return just a single column here.


SELECT AVG(started_at - created_at) as average_wait_time
FROM assistance_requests;


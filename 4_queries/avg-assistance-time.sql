-- Get the average time of an assistance request
-- Select just a single row here and name it average_assistance_request_duration
-- in Postgres, we can subtract two time-stamps to find the duration between them.

SELECT AVG(completed_at - started_at) as average_assistance_request_duration
FROM assistance_requests;
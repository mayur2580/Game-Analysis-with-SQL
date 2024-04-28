-- Q4) Extract P_ID and the total number of unique dates for those players 
-- who have played games on multiple days.

SELECT 
    p_id, COUNT(DISTINCT start_datetime) AS total_unique_dates
FROM
    level_details
GROUP BY p_id
HAVING total_unique_dates > 1
ORDER BY total_unique_dates DESC;



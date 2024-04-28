-- Q5) Find P_ID and level wise sum of kill_counts where kill_count
-- is greater than avg kill count for the Medium difficulty.

SELECT p_id, level, SUM(kill_count) AS total_kill_count
FROM level_details
WHERE kill_count > (
    SELECT avg_medium_kill_count
    FROM (
        SELECT AVG(kill_count) AS avg_medium_kill_count
        FROM level_details
        WHERE difficulty = 'Medium'
    ) AS medium_avg
)
GROUP BY p_id, level
ORDER BY total_kill_count DESC;

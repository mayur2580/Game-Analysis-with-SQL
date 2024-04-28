-- Q3) Find the total number of stages crossed at each diffuculty level where for Level2 with players 
-- use zm_series devices. Arrange the result in decsreasing order of total number of stages crossed.

SELECT difficulty,
 SUM(stages_crossed) AS
 total_stages_crossed
 FROM level_details
 INNER JOIN player_details
 ON player_details.p_id = level_details.p_id
 WHERE level = 2 AND dev_id LIKE 'zm%'
 GROUP BY difficulty
 ORDER BY total_stages_crossed DESC ;
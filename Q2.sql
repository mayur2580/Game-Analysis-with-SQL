-- Q2) Find Level1_code wise Avg_Kill_Count where lives_earned is 2 and atleast 3 stages are crossed

 SELECT l1_code, AVG(kill_count) AS avg_kill_count
 FROM level_details
 INNER JOIN player_details
 ON player_details.p_id = 
level_details.p_id
 WHERE lives_earned = 2
 AND stages_crossed >= 3
 GROUP BY l1_code
 ORDER BY avg_kill_count DESC ;
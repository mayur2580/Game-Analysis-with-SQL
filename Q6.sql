-- Q6)  Find Level and its corresponding Level code wise sum of lives earned 
-- excluding level 0. Arrange in asecending order of level.

 SELECT level, 
l1_code, 
l2_code,
 SUM(lives_earned) AS total_lives_earned
 FROM level_details
 INNER JOIN player_details
 ON player_details.p_id= level_details.p_id
 WHERE level <> 0
 GROUP BY level, l1_code, l2_code
 ORDER BY level;

 
-- Q1) Extract P_ID,Dev_ID,PName and Difficulty_level of all players
-- at level 0

SELECT 
    pd.p_id, ld.dev_Id, pd.pname, ld.difficulty
FROM
    player_details AS pd
        INNER JOIN
    level_details AS ld 
		ON pd.p_id = ld.p_id
WHERE
    ld.level = 0;




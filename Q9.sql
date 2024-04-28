-- Q9) Find Top 5 score based on each difficulty level and Rank them in 
-- increasing order using Rank. Display dev_id as well.

SELECT dev_id, score, difficulty, row_rank
FROM (
    SELECT 
        dev_id, 
        score, 
        difficulty,
        (@row_number := CASE
                         WHEN @current_dev_id = dev_id THEN @row_number + 1
                         ELSE 1
                       END) AS row_rank,
        @current_dev_id := dev_id
    FROM 
        (SELECT * FROM level_details ORDER BY dev_id, score DESC) AS ld,
        (SELECT @row_number := 0, @current_dev_id := NULL) AS vars
) AS ranked
WHERE 
    row_rank <= 5
ORDER BY 
    score DESC, 
    row_rank ASC
LIMIT 5

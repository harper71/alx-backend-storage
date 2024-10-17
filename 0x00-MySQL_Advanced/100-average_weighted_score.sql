-- Create the procedure to compute and store the average weighted score for a user 
DELIMITER $$

-- Create the procedure to compute and store the average weighted score for a user
CREATE PROCEDURE ComputeAverageWeightedScoreForUser(IN user_id INT)
BEGIN
    DECLARE weighted_sum DECIMAL(10, 2);
    DECLARE total_weight DECIMAL(10, 2);
    DECLARE average_weighted_score DECIMAL(10, 2);

    -- Calculate the weighted sum of the scores and the total weight of the courses
    SELECT 
        SUM(s.score * c.weight) INTO weighted_sum,
        SUM(c.weight) INTO total_weight
    FROM 
        scores s
    JOIN 
        courses c ON s.course_id = c.id
    WHERE 
        s.user_id = user_id;

    -- Compute the average weighted score
    SET average_weighted_score = IF(total_weight > 0, weighted_sum / total_weight, 0);

    -- Update the user's record with the average weighted score
    UPDATE users
    SET average_score = average_weighted_score
    WHERE id = user_id;
END$$

DELIMITER ;

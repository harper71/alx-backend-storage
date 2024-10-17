-- Create the procedure to compute and store the average weighted score for all users
DELIMITER $$

-- Create the procedure to compute and store the average weighted score for all users
CREATE PROCEDURE ComputeAverageWeightedScoreForUsers()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE current_user_id INT;
    DECLARE weighted_sum DECIMAL(10, 2);
    DECLARE total_weight DECIMAL(10, 2);
    DECLARE average_weighted_score DECIMAL(10, 2);

    -- Declare a cursor to iterate over all users
    DECLARE user_cursor CURSOR FOR
        SELECT id FROM users;

    -- Declare a handler for when the cursor reaches the end
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    -- Open the cursor
    OPEN user_cursor;

    -- Cursor loop
    user_loop: LOOP
        -- Fetch the next user_id
        FETCH user_cursor INTO current_user_id;

        -- Exit the loop if no more rows
        IF done = 1 THEN
            LEAVE user_loop;
        END IF;

        -- Calculate the weighted sum of the scores and the total weight of the courses for the current user
        SELECT 
            SUM(s.score * c.weight) INTO weighted_sum,
            SUM(c.weight) INTO total_weight
        FROM 
            scores s
        JOIN 
            courses c ON s.course_id = c.id
        WHERE 
            s.user_id = current_user_id;

        -- Compute the average weighted score
        SET average_weighted_score = IF(total_weight > 0, weighted_sum / total_weight, 0);

        -- Update the user's record with the average weighted score
        UPDATE users
        SET average_score = average_weighted_score
        WHERE id = current_user_id;

    END LOOP user_loop;

    -- Close the cursor
    CLOSE user_cursor;
END$$

DELIMITER ;

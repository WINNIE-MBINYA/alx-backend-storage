-- Ensures a column is updated to NULL if it contains 2022

DELIMITER //

CREATE PROCEDURE ComputeAverageWeightedScoreForUsers ()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE user_id INT;
    DECLARE total_score FLOAT DEFAULT 0;
    DECLARE total_weight INT DEFAULT 0;
    DECLARE weighted_avg FLOAT DEFAULT 0;

    -- Cursor to iterate over each user
    DECLARE cur CURSOR FOR 
        SELECT id FROM users;

    -- Error handling for cursor
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO user_id;
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Calculate total weighted score for the user
        SELECT SUM(c.score * p.weight) INTO total_score
        FROM corrections c
        JOIN projects p ON c.project_id = p.id
        WHERE c.user_id = user_id;

        -- Calculate total weight
        SELECT SUM(weight) INTO total_weight
        FROM projects;

        -- Calculate weighted average score
        IF total_weight > 0 THEN
            SET weighted_avg = total_score / total_weight;
        ELSE
            SET weighted_avg = 0;
        END IF;

        -- Update the average_score for the user
        UPDATE users
        SET average_score = weighted_avg
        WHERE id = user_id;
    END LOOP;

    CLOSE cur;
END //

DELIMITER ;

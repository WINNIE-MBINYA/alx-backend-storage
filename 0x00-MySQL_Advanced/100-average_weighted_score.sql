-- Creates a trigger to ensure start_date is always in the present

DELIMITER //

CREATE PROCEDURE ComputeAverageWeightedScoreForUser (IN user_id INT)
BEGIN
    DECLARE total_score FLOAT DEFAULT 0;
    DECLARE total_weight INT DEFAULT 0;
    DECLARE weighted_avg FLOAT DEFAULT 0;

    -- Calculate total weighted score
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

END //

DELIMITER ;

-- Creates a trigger to ensure start_date is always in the present

DELIMITER //
CREATE TRIGGER check_start_date
BEFORE INSERT ON projects
FOR EACH ROW
BEGIN
    IF NEW.start_date < CURDATE() THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Start date cannot be in the past.';
    END IF;
END;
//
DELIMITER ;

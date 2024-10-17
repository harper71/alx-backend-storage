-- Create a trigger that resets valid_email if the email has been changed
DELIMITER $$

CREATE TRIGGER reset_valid_email_after_change
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
    -- Check if the email has changed
    IF NEW.email != OLD.email THEN
        -- Reset the valid_email attribute
        UPDATE users
        SET valid_email = 0
        WHERE user_id = NEW.user_id;
    END IF;
END$$

DELIMITER ;

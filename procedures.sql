DELIMITER //

CREATE PROCEDURE get_user_activity(IN uid INT)
BEGIN
    SELECT * FROM login_logs WHERE user_id = uid;
END //

DELIMITER ;

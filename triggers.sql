DELIMITER //

CREATE TRIGGER auto_churn
AFTER UPDATE ON subscriptions
FOR EACH ROW
BEGIN
    IF NEW.status = 'cancelled' THEN
        INSERT INTO churn_events(user_id, churn_date, reason)
        VALUES (NEW.user_id, CURDATE(), 'Subscription Cancelled');
    END IF;
END //

DELIMITER ;

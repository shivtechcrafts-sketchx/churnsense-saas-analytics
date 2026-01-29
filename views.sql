CREATE VIEW churn_summary AS
SELECT u.user_id, u.name, c.churn_date, c.reason
FROM users u
JOIN churn_events c ON u.user_id = c.user_id;

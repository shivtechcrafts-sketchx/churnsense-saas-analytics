-- 1. Churned Users
SELECT u.user_id, u.name, u.country, c.churn_date, c.reason
FROM users u
JOIN churn_events c ON u.user_id = c.user_id;

-- 2. Active Users
SELECT u.user_id, u.name, u.country
FROM users u
JOIN subscriptions s ON u.user_id = s.user_id
WHERE s.status = 'active';

-- 3. Monthly Churn Trend
SELECT DATE_FORMAT(churn_date, '%Y-%m') AS month,
COUNT(*) AS churn_users
FROM churn_events
GROUP BY month
ORDER BY month;

-- 4. Churn by Country
SELECT u.country, COUNT(*) AS churn_count
FROM churn_events c
JOIN users u ON c.user_id = u.user_id
GROUP BY u.country;

-- 5. Churn by Plan
SELECT p.plan_name, COUNT(*) AS churn_users
FROM churn_events c
JOIN subscriptions s ON c.user_id = s.user_id
JOIN plans p ON s.plan_id = p.plan_id
GROUP BY p.plan_name;

-- 6. Churn Rate %
SELECT ROUND(
    (SELECT COUNT(*) FROM subscriptions WHERE status = 'churned') * 100.0 /
    (SELECT COUNT(*) FROM subscriptions),
2) AS churn_rate_percentage;

-- 7. High Risk Users (Inactive > 30 days)
SELECT u.user_id, u.name,
DATEDIFF(CURDATE(), MAX(l.login_date)) AS inactive_days
FROM users u
JOIN login_logs l ON u.user_id = l.user_id
GROUP BY u.user_id, u.name
HAVING inactive_days > 30;

-- 8. Revenue Lost due to Churn
SELECT SUM(p.amount) AS revenue_lost
FROM payments p
JOIN churn_events c ON p.user_id = c.user_id;

-- 9. Feature Usage vs Churn
SELECT f.feature_name, COUNT(c.user_id) AS churn_users
FROM feature_usage f
JOIN churn_events c ON f.user_id = c.user_id
GROUP BY f.feature_name;

-- ================================
-- 5) POWER BI VIEW (BEST PRACTICE)
-- ================================

CREATE VIEW churn_summary AS
SELECT 
    u.user_id,
    u.name,
    u.country,
    p.plan_name,
    s.status,
    c.churn_date
FROM users u
JOIN subscriptions s ON u.user_id = s.user_id
JOIN plans p ON s.plan_id = p.plan_id
LEFT JOIN churn_events c ON u.user_id = c.user_id;

-- Use this in Power BI:
-- SELECT * FROM churn_summary;

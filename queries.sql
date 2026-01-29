-- 1. Find churned users
SELECT u.user_id, u.name
FROM users u
JOIN churn_events c ON u.user_id = c.user_id;

-- 2. Active users
SELECT u.user_id, u.name
FROM users u
WHERE u.user_id NOT IN (SELECT user_id FROM churn_events);

-- 3. Monthly churn count
SELECT DATE_FORMAT(churn_date, '%Y-%m') AS month,
COUNT(*) AS churn_users
FROM churn_events
GROUP BY month;

-- 4. Churn by country
SELECT u.country, COUNT(c.user_id) AS churn_count
FROM churn_events c
JOIN users u ON c.user_id = u.user_id
GROUP BY u.country;

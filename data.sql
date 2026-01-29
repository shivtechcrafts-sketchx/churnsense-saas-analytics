INSERT INTO plans (plan_name, price, duration_months) VALUES
('Basic', 499, 1),
('Pro', 999, 1),
('Enterprise', 2999, 12);

INSERT INTO users (name, email, signup_date, country) VALUES
('Rahul Sharma', 'rahul@gmail.com', '2024-01-10', 'India'),
('Priya Singh', 'priya@gmail.com', '2024-02-15', 'India'),
('John Doe', 'john@gmail.com', '2024-03-20', 'USA');

INSERT INTO subscriptions (user_id, plan_id, start_date, end_date, status) VALUES
(1, 1, '2024-01-10', '2024-02-10', 'cancelled'),
(2, 2, '2024-02-15', '2024-05-15', 'active'),
(3, 3, '2024-03-20', '2025-03-20', 'active');

INSERT INTO login_logs (user_id, login_date) VALUES
(1, '2024-02-01'),
(2, '2024-05-10'),
(3, '2025-01-15');

INSERT INTO churn_events (user_id, churn_date, reason) VALUES
(1, '2024-02-15', 'Low Usage');

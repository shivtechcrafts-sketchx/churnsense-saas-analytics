-- Plans
INSERT INTO plans (plan_name, price, duration_months) VALUES
('Basic', 499, 1),
('Pro', 999, 1),
('Enterprise', 2999, 12),
('Premium', 1999, 6),
('Standard', 1499, 3),
('Ultimate', 3999, 12);

-- Users
INSERT INTO users (name, email, signup_date, country) VALUES
('Rahul Sharma', 'rahul@gmail.com', '2024-01-10', 'India'),
('Priya Singh', 'priya@gmail.com', '2024-02-15', 'India'),
('John Doe', 'john@gmail.com', '2024-03-20', 'USA'),
('Jane Smith', 'jane@gmail.com', '2024-04-25', 'USA'),
('Carlos Ruiz', 'carlos@gmail.com', '2024-05-30', 'Mexico'),
('Linda Lee', 'linda@gmail.com', '2024-06-15', 'Canada');

-- Subscriptions (REALISTIC STATUS)
INSERT INTO subscriptions (user_id, plan_id, start_date, end_date, status) VALUES
(1, 1, '2024-01-10', '2024-02-10', 'churned'),
(2, 2, '2024-02-15', '2024-03-15', 'churned'),
(3, 3, '2024-03-20', '2025-03-20', 'active'),
(4, 4, '2024-04-25', '2024-10-25', 'churned'),
(5, 5, '2024-05-30', '2024-08-30', 'churned'),
(6, 6, '2024-06-15', '2025-06-15', 'active');

-- Login Logs (active users recent login, churned users old login)
INSERT INTO login_logs (user_id, login_date) VALUES
(1, '2024-02-01'),
(2, '2024-03-10'),
(3, '2025-01-20'),
(4, '2024-08-15'),
(5, '2024-07-01'),
(6, '2025-01-25');

-- Payments
INSERT INTO payments (user_id, amount, payment_date) VALUES
(1, 499, '2024-01-10'),
(2, 999, '2024-02-15'),
(3, 2999, '2024-03-20'),
(4, 1999, '2024-04-25'),
(5, 1499, '2024-05-30'),
(6, 3999, '2024-06-15');

-- Feature Usage
INSERT INTO feature_usage (user_id, feature_name, usage_date) VALUES
(1, 'Dashboard', '2024-01-15'),
(2, 'Reports', '2024-02-20'),
(3, 'Analytics', '2025-01-10'),
(4, 'Dashboard', '2024-05-10'),
(5, 'Reports', '2024-06-05'),
(6, 'Analytics', '2025-01-15');

-- Churn Events (ONLY churned users)
INSERT INTO churn_events (user_id, churn_date, reason) VALUES
(1, '2024-02-15', 'Low Usage'),
(2, '2024-06-01', 'Cost Issues'),
(4, '2024-11-01', 'Dissatisfaction'),
(5, '2024-09-01', 'Temporary Pause');

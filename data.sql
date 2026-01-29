INSERT INTO plans (plan_name, price, duration_months) VALUES
('Basic', 499, 1),
('Pro', 999, 1),
('Enterprise', 2999, 12),
('Premium', 1999, 6),
('Standard', 1499, 3),
('Ultimate', 3999, 12);

INSERT INTO users (name, email, signup_date, country) VALUES
('Rahul Sharma', 'rahul@gmail.com', '2024-01-10', 'India'),
('Priya Singh', 'priya@gmail.com', '2024-02-15', 'India'),
('John Doe', 'john@gmail.com', '2024-03-20', 'USA'),
('Jane Smith', 'jane@gmail.com', '2024-04-25', 'USA'),
('Carlos Ruiz', 'carlos@gmail.com', '2024-05-30', 'Mexico'),
('Linda Lee', 'linda@gmail.com', '2024-06-15', 'Canada');

INSERT INTO subscriptions (user_id, plan_id, start_date, end_date, status) VALUES
(1, 1, '2024-01-10', '2024-02-10', 'cancelled'),
(2, 2, '2024-02-15', '2024-05-15', 'active'),
(3, 3, '2024-03-20', '2025-03-20', 'active'),
(4, 4, '2024-04-25', '2024-10-25', 'active'),
(5, 5, '2024-05-30', '2024-08-30', 'active'),
(6, 6, '2024-06-15', '2025-06-15', 'active');

INSERT INTO login_logs (user_id, login_date) VALUES
(1, '2024-02-01'),
(2, '2024-05-10'),
(3, '2025-01-15'),
(4, '2024-09-20'),
(5, '2024-07-25'),
(6, '2024-12-30');

INSERT INTO churn_events (user_id, churn_date, reason) VALUES
(1, '2024-02-15', 'Low Usage'),
(2, '2024-06-01', 'Cost Issues'),
(3, '2025-04-01', 'Found Alternative'),
(4, '2024-11-01', 'Dissatisfaction'),
(5, '2024-09-01', 'Temporary Pause'),
(6, '2025-07-01', 'Other');

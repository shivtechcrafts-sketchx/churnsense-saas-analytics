CREATE DATABASE saas_churn_db;
USE saas_churn_db;

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    signup_date DATE,
    country VARCHAR(50)
);

CREATE TABLE plans (
    plan_id INT PRIMARY KEY AUTO_INCREMENT,
    plan_name VARCHAR(50),
    price DECIMAL(10,2),
    duration_months INT
);

CREATE TABLE subscriptions (
    subscription_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    plan_id INT,
    start_date DATE,
    end_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
);

CREATE TABLE login_logs (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    login_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE feature_usage (
    usage_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    feature_name VARCHAR(100),
    usage_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    amount DECIMAL(10,2),
    payment_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE churn_events (
    churn_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    churn_date DATE,
    reason VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

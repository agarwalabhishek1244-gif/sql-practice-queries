-- Create users table
CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city_id INT
);

-- Create cities table
CREATE TABLE cities (
    id INT PRIMARY KEY,
    city_name VARCHAR(50)
);

-- Insert into cities
INSERT INTO cities VALUES (1, 'Pune');
INSERT INTO cities VALUES (2, 'Mumbai');
INSERT INTO cities VALUES (3, 'Delhi');

-- Insert into users
INSERT INTO users VALUES (1, 'Abhi', 22, 1);
INSERT INTO users VALUES (2, 'Rahul', 24, 2);
INSERT INTO users VALUES (3, 'Sneha', 21, 3);

-- Basic select
SELECT * FROM users;

-- INNER JOIN (most important)
SELECT users.name, cities.city_name
FROM users
INNER JOIN cities ON users.city_id = cities.id;

-- LEFT JOIN
SELECT users.name, cities.city_name
FROM users
LEFT JOIN cities ON users.city_id = cities.id;

-- Count users per city
SELECT cities.city_name, COUNT(users.id) AS total_users
FROM users
INNER JOIN cities ON users.city_id = cities.id
GROUP BY cities.city_name;

-- Filter users
SELECT * FROM users WHERE age > 22;

-- Order users
SELECT * FROM users ORDER BY age DESC;

-- Update
UPDATE users SET age = 23 WHERE id = 1;

-- Delete
DELETE FROM users WHERE id = 3;
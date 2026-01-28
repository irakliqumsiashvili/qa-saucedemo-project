-- Q1: Show all users
SELECT * FROM users;

-- Q2: Find user by email
SELECT * FROM users
WHERE email = 'ana.c@example.com';

-- Q3: Products more expensive than 100
SELECT id, name, price
FROM products
WHERE price > 100
ORDER BY price DESC;

-- Q4: Top 5 most expensive products
SELECT id, name, price
FROM products
ORDER BY price DESC
LIMIT 5;

-- Q5: Count orders by status
SELECT status, COUNT(*) AS orders_count
FROM orders
GROUP BY status
ORDER BY orders_count DESC;


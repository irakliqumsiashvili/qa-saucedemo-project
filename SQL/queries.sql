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

-- Q6: Show orders with user info (JOIN)
SELECT
  o.id AS order_id,
  o.status,
  o.created_at,
  u.full_name,
  u.email,
  u.city
FROM orders o
JOIN users u ON u.id = o.user_id
ORDER BY o.id;

-- Q7: Show order items (order details) for a specific order
-- (Change 1 to any order_id you want)
SELECT
  oi.order_id,
  p.name AS product_name,
  oi.quantity,
  oi.unit_price,
  (oi.quantity * oi.unit_price) AS line_total
FROM order_items oi
JOIN products p ON p.id = oi.product_id
WHERE oi.order_id = 1
ORDER BY p.name;

-- Q8: Calculate total amount for each order
SELECT
  oi.order_id,
  ROUND(SUM(oi.quantity * oi.unit_price), 2) AS order_total
FROM order_items oi
GROUP BY oi.order_id
ORDER BY order_total DESC;

-- Q9: Users without orders
SELECT u.id, u.full_name, u.email
FROM users u
LEFT JOIN orders o ON o.user_id = u.id
WHERE o.id IS NULL;

-- Q10: Orders without items (data integrity check)
SELECT o.id AS order_id, o.status, o.created_at
FROM orders o
LEFT JOIN order_items oi ON oi.order_id = o.id
WHERE oi.id IS NULL;

-- Q11: Top 3 products by quantity sold
SELECT p.id, p.name, SUM(oi.quantity) AS qty_sold
FROM order_items oi
JOIN products p ON p.id = oi.product_id
GROUP BY p.id, p.name
ORDER BY qty_sold DESC
LIMIT 3;

-- Q11: Top 3 products by quantity sold
SELECT p.id, p.name, SUM(oi.quantity) AS qty_sold
FROM order_items oi
JOIN products p ON p.id = oi.product_id
GROUP BY p.id, p.name
ORDER BY qty_sold DESC
LIMIT 3;

-- Q13: Orders in a date range
SELECT id, user_id, status, created_at
FROM orders
WHERE created_at BETWEEN '2026-01-10 00:00:00' AND '2026-01-31 23:59:59'
ORDER BY created_at;

-- Q14: Users with 2+ orders
SELECT u.id, u.full_name, COUNT(o.id) AS orders_count
FROM users u
JOIN orders o ON o.user_id = u.id
GROUP BY u.id, u.full_name
HAVING COUNT(o.id) >= 2
ORDER BY orders_count DESC;


-- Q15: Data quality checks (prices / quantities)
SELECT * FROM products WHERE price <= 0;
SELECT * FROM order_items WHERE quantity <= 0 OR unit_price < 0;

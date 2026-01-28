PRAGMA foreign_keys = ON;

-- Clean data (optional, but удобнее для повторного запуска)
DELETE FROM order_items;
DELETE FROM orders;
DELETE FROM products;
DELETE FROM users;

-- Reset AUTOINCREMENT counters (SQLite)
DELETE FROM sqlite_sequence WHERE name IN ('users','products','orders','order_items');

-- Users
INSERT INTO users (full_name, email, city) VALUES
('Giorgi Kapanadze', 'giorgi.k@example.com', 'Tbilisi'),
('Nino Beridze',     'nino.b@example.com',   'Batumi'),
('Levan Gogidze',    'levan.g@example.com',  'Kutaisi'),
('Ana Chikovani',    'ana.c@example.com',    'Tbilisi'),
('Dato Mchedlishvili','dato.m@example.com',  'Rustavi');

-- Products
INSERT INTO products (name, price, in_stock) VALUES
('Wireless Mouse',   39.90, 1),
('Mechanical Keyboard', 129.00, 1),
('USB-C Cable',       12.50, 1),
('27-inch Monitor',  499.00, 1),
('Laptop Stand',      55.00, 1),
('Webcam',            89.00, 0),
('Headphones',       149.00, 1),
('Portable SSD 1TB', 219.00, 1),
('Desk Lamp',         25.00, 1),
('Microphone',       179.00, 1);

-- Orders
-- statuses: NEW, PAID, CANCELLED, SHIPPED
INSERT INTO orders (user_id, status, created_at) VALUES
(1, 'PAID',      '2026-01-05 10:15:00'),
(1, 'SHIPPED',   '2026-01-10 14:30:00'),
(2, 'NEW',       '2026-01-12 09:00:00'),
(3, 'CANCELLED', '2026-01-14 18:20:00'),
(4, 'PAID',      '2026-01-20 12:05:00'),
(4, 'NEW',       '2026-01-22 16:40:00'),
(5, 'PAID',      '2026-01-25 11:10:00'),
(2, 'SHIPPED',   '2026-01-27 08:55:00'),
(3, 'PAID',      '2026-01-28 20:00:00'),
(5, 'NEW',       '2026-02-01 13:25:00');

-- Order items (order_id, product_id, quantity, unit_price)
-- unit_price фиксируем на момент покупки (реалистично)
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 39.90),
(1, 3, 2, 12.50),

(2, 2, 1, 129.00),
(2, 5, 1, 55.00),

(3, 3, 3, 12.50),
(3, 9, 1, 25.00),

(4, 6, 1, 89.00),      -- even though product is out of stock now, order history exists

(5, 4, 1, 499.00),
(5, 1, 1, 39.90),

(6, 10, 1, 179.00),

(7, 8, 1, 219.00),
(7, 3, 2, 12.50),

(8, 7, 1, 149.00),
(8, 9, 2, 25.00),

(9, 2, 1, 129.00),
(9, 10, 1, 179.00),

(10, 5, 1, 55.00),
(10, 1, 2, 39.90);


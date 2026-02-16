INSERT INTO customers (name, email) VALUES
('Emma Virtanen', 'emma@example.com'),
('Jussi Mäkinen', 'jussi@example.com'),
('Liisa Korhonen', 'liisa@example.com'),
('Olli Nieminen', NULL),
('Sanna Lahtinen', 'sanna@example.com');

INSERT INTO orders (customer_id, order_date) VALUES
(1, '2024-06-01'),
(1,	'2024-02-20'),
(2, '2024-06-02'),
(3, '2024-02-10'),
(4, '2024-06-03');

INSERT INTO order_items (order_id, order_date, quantity, unit_price) VALUES
((SELECT order_id FROM orders WHERE order_date = '2024-01-15' AND customer_id = (SELECT id FROM customers WHERE name = 'Emma Virtanen')), 1, 149.99),
((SELECT order_id FROM orders WHERE order_date = '2024-01-15' AND customer_id = (SELECT id FROM customers WHERE name = 'Emma Virtanen')), 4, 79.95),
((SELECT order_id FROM orders WHERE order_date = '2024-02-20' AND customer_id = (SELECT id FROM customers WHERE name = 'Emma Virtanen')), 14, 119.00),
((SELECT order_id FROM orders WHERE order_date = '2024-01-22' AND customer_id = (SELECT id FROM customers WHERE name = 'Jussi Mäkinen')), 7, 129.00),
((SELECT order_id FROM orders WHERE order_date = '2024-01-22' AND customer_id = (SELECT id FROM customers WHERE name = 'Jussi Mäkinen')), 10, 54.95),
((SELECT order_id FROM orders WHERE order_date = '2024-02-10' AND customer_id = (SELECT id FROM customers WHERE name = 'Liisa Korhonen')), 15, 14.99),
((SELECT order_id FROM orders WHERE order_date = '2024-03-01' AND customer_id = (SELECT id FROM customers WHERE name = 'Olli Nieminen')), 11, 24.99),
((SELECT order_id FROM orders WHERE order_date = '2024-03-01' AND customer_id = (SELECT id FROM customers WHERE name = 'Olli Nieminen')), 12, 19.90);



Tilaus 1 (Emma, 2024-01-15): 1× Summit 2P Dome Tent (149,99), 2× Ridgeway 30L Daypack (79,95 kpl)
Tilaus 2 (Emma, 2024-02-20): 1× RainShell Waterproof Jacket (119,00)
Tilaus 3 (Jussi, 2024-01-22): 1× PolarLite Sleeping Bag -5C (129,00), 1× TrekPro Hiking Poles (54,95)
Tilaus 4 (Liisa, 2024-02-10): 3× Thermal Hiking Socks (14,99 kpl)
Tilaus 5 (Olli, 2024-03-01): 1× Headlamp 300 Lumens (24,99), 2× Stainless Steel Water Bottle 1L (19,90 kpl)
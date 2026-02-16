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

INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 149.99),
(1, 4, 2, 79.95),
(2, 14, 1, 119.00),
(3, 7, 1, 129.00),
(3, 10, 1, 54.95),
(4, 15, 3, 14.99),
(5, 11, 1, 24.99),
(5, 12, 2, 19.90);

Tilaus 1 (Emma, 2024-01-15): 1× Summit 2P Dome Tent (149,99), 2× Ridgeway 30L Daypack (79,95 kpl)
Tilaus 2 (Emma, 2024-02-20): 1× RainShell Waterproof Jacket (119,00)
Tilaus 3 (Jussi, 2024-01-22): 1× PolarLite Sleeping Bag -5C (129,00), 1× TrekPro Hiking Poles (54,95)
Tilaus 4 (Liisa, 2024-02-10): 3× Thermal Hiking Socks (14,99 kpl)
Tilaus 5 (Olli, 2024-03-01): 1× Headlamp 300 Lumens (24,99), 2× Stainless Steel Water Bottle 1L (19,90 kpl)
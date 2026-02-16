-- Tilaukset asiakasnimineen.
SELECT o.order_id, o.order_date, c.name  --orders o linkittää order_id, order_date ja customers.namen orderstauluun, joka on nimetty c:ksi
FROM orders o --Miusta tuo nyt kuulostaa siltä että otetaan order_id, order_date ja name orderst taulusta.
INNER JOIN customers c ON o.customer_id = c.id
INNER JOIN order_items oi ON o.id = oi.order_id
ORDER BY o.order_date DESC;

-- Tilaukset asiakasnimineen ja tuotteineen.
SELECT o.order_id, o.order_date, c.name, p.name, oi.quantity, oi.unit_price -- orders o linkittää order_id, order_date ja customers.namen orderstauluun, joka on nimetty c:ksi
FROM orders o
INNER JOIN order_items oi ON o.id = oi.order_id
INNER JOIN customers c ON o.customer_id = c.id
INNER JOIN products p ON oi.product_id = p.id
ORDER BY o.order_id DESC, p.name ASC;

--tilauksen yhteenveto
SELECT o.order_id, o.order_date, c.name, p.name, oi.quantity, oi.unit_price
FROM orders o
INNER JOIN order_items oi ON o.id = oi.order_id
INNER JOIN customers c ON o.customer_id = c.id
INNER JOIN products p ON oi.product_id = p.id
ORDER BY o.order_id DESC, p.name ASC;

-- Asiakkaiden tilausmäärät kysely
SELECT c.name, COUNT(o.id) AS total_orders
FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
GROUP BY c.name
ORDER BY total_orders DESC, c.name ASC;

--Tuotteet joita ei ole koskaan tilattu
SELECT p.name
FROM products p
LEFT JOIN order_items oi ON p.id = oi.product_id
WHERE oi.product_id IS NULL;

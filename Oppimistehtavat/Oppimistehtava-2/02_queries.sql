SELECT o.order_id, o.order_date, c.full_name
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
ORDER BY o.order_date DESC;
-- Problem 2: orders placed by customers in 'New York'
SELECT
    c.customer_name,
    o.order_date,
    o.total_amount
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE c.city = 'New York';


-- Problem 7: delete a specific customer by customer_id
DELETE FROM customers
WHERE customer_id = 4;

-- Bonus: delete related child records first, to satisfy foreign key constraints
-- (order matters — children before parent)
DELETE FROM sales WHERE customer_id = 4;
DELETE FROM orders WHERE customer_id = 4;
DELETE FROM customers WHERE customer_id = 4;

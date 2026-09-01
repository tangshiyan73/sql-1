-- Problem 4: update price of a specific product
UPDATE inventories
SET price = 24.99
WHERE product_id = 2;

-- Bonus: increase all product prices by 10%
UPDATE inventories
SET price = price * 1.10;

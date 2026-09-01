-- Problem 3: total and average quantity sold per order
SELECT
    SUM(quantity) AS total_quantity_sold,
    AVG(quantity) AS avg_quantity_per_order
FROM sales;

-- Bonus: total and average sales amount per order (quantity * price via inventories)
SELECT
    SUM(s.quantity * i.price) AS total_sales_amount,
    AVG(s.quantity * i.price) AS avg_sales_amount_per_order
FROM sales s
JOIN inventories i ON s.product_id = i.product_id;

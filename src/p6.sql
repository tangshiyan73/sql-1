-- Problem 6: employees with salary > $50,000
SELECT name, position
FROM employees
WHERE salary > 50000;

-- Bonus: top 3 highest-paid employees
SELECT name, position, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;

-- Problem 8: index recommendation for
--   SELECT * FROM employees WHERE department = 'Sales' AND salary > 50000;
-- Recommended: composite index on (department, salary), department first.
-- Reasoning: department is an equality filter, salary is a range filter composite indexes perform best with equality columns leading, since the
-- index can jump straight to the 'Sales' block, then scan salary within just that block instead of scanning the whole table's salary range. department
-- also tends to be lower-cardinality than salary, so it narrows the search space fastest.

CREATE INDEX idx_employees_department_salary
ON employees (department, salary);


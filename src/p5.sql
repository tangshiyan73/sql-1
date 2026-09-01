-- Problem 5: average salary per department
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;


-- Q14. Median Salary
-- Tables: Employees

SELECT AVG(salary) AS median_salary
FROM (
    SELECT salary,
        ROW_NUMBER() OVER (ORDER BY salary) AS rn,
        COUNT(*) OVER () AS total
    FROM Employees
) AS ranked
WHERE rn IN (FLOOR((total + 1) / 2), CEIL((total + 1) / 2));

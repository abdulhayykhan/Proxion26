-- Q3. Duplicate Employee Names
-- Tables: Employees

SELECT employee_name, COUNT(*) AS occurrences
FROM Employees
GROUP BY employee_name
HAVING COUNT(*) > 1;

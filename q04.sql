-- Q4. Managers Supervising ≥ 5 Employees
-- Tables: Employees

SELECT manager_id
FROM Employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id
HAVING COUNT(employee_id) >= 5;

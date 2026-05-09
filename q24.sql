-- Q24. Dept with Highest Avg Salary (≥ 3 Employees)
-- Tables: Employees, Departments

SELECT d.department_name,
    ROUND(AVG(e.salary), 2) AS average_salary
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id
GROUP BY d.department_id, d.department_name
HAVING COUNT(e.employee_id) >= 3
ORDER BY average_salary DESC
LIMIT 1;

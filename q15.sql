-- Q15. Salary Gap (Max - Min) Per Department
-- Tables: Employees, Departments

SELECT d.department_name,
    MAX(e.salary) - MIN(e.salary) AS salary_gap
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id
GROUP BY d.department_id, d.department_name;

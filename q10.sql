-- Q10. Employees Earning More Than Their Manager
-- Tables: Employees

SELECT e.employee_name
FROM Employees e
JOIN Employees m ON e.manager_id = m.employee_id
WHERE e.salary > m.salary;

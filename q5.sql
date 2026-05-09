-- Q5. Highest Earner Per Department
-- Tables: Employees, Departments

SELECT d.department_name, e.employee_name, e.salary
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id
WHERE e.salary = (
    SELECT MAX(e2.salary)
    FROM Employees e2
    WHERE e2.department_id = e.department_id
);

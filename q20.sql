-- Q20. Employees Sharing Same Salary in Same Department
-- Tables: Employees

SELECT e.employee_name, e.salary
FROM Employees e
WHERE (e.department_id, e.salary) IN (
    SELECT department_id, salary
    FROM Employees
    GROUP BY department_id, salary
    HAVING COUNT(*) > 1
)
ORDER BY e.department_id, e.salary;

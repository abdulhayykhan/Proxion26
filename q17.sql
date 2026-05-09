-- Q17. Top 3 Distinct Salaries Per Department ★
-- Tables: Employees, Departments

SELECT d.department_name, e.salary
FROM Departments d
JOIN (
    SELECT department_id,
        salary,
        DENSE_RANK() OVER (PARTITION BY department_id
            ORDER BY salary DESC) AS dr
    FROM Employees
) e ON d.department_id = e.department_id
WHERE e.dr <= 3
ORDER BY d.department_name, e.salary DESC;

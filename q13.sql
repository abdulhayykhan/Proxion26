-- Q13. Department-wise Salary Ranking (DENSE_RANK)
-- Tables: Employees, Departments

SELECT e.employee_name,
    e.salary,
    DENSE_RANK() OVER (PARTITION BY e.department_id
        ORDER BY e.salary DESC) AS rank_pos
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id
ORDER BY e.department_id, rank_pos;

-- Q1. Second Highest Distinct Salary
-- Tables: Employees

SELECT MAX(salary) AS SecondHighestSalary
FROM Employees
WHERE salary < (SELECT MAX(salary) FROM Employees);

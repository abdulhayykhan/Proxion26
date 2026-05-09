-- Q22. Missing Customer IDs in Sequential DB
-- Tables: Customers

SELECT seq.n AS missing_id
FROM (
    SELECT a.customer_id + b.n AS n
    FROM Customers a
    JOIN (
        SELECT 0 AS n UNION SELECT 1 UNION SELECT 2
        UNION SELECT 3 UNION SELECT 4 UNION SELECT 5
        UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9
    ) b
    WHERE a.customer_id + b.n <= (SELECT MAX(customer_id) FROM Customers)
) seq
LEFT JOIN Customers c ON seq.n = c.customer_id
WHERE c.customer_id IS NULL
    AND seq.n >= (SELECT MIN(customer_id) FROM Customers)
ORDER BY seq.n;

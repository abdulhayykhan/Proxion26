-- Q12. Running Total of Sales by Date
-- Tables: Sales

SELECT sale_date,
    SUM(quantity) OVER (ORDER BY sale_date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_total
FROM Sales
ORDER BY sale_date;

-- Q9. Top Spending Customer Per Month
-- Tables: Customers, Orders

SELECT MONTHNAME(o.order_date) AS month,
    c.customer_name,
    SUM(o.amount) AS total_spent
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
GROUP BY YEAR(o.order_date), MONTH(o.order_date), o.customer_id
HAVING SUM(o.amount) = (
    SELECT MAX(monthly_total)
    FROM (
        SELECT customer_id,
            YEAR(order_date) AS yr,
            MONTH(order_date) AS mo,
            SUM(amount) AS monthly_total
        FROM Orders
        GROUP BY customer_id, YEAR(order_date), MONTH(order_date)
    ) AS sub
    WHERE sub.yr = YEAR(o.order_date)
        AND sub.mo = MONTH(o.order_date)
);

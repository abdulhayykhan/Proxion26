-- Q21. Month-over-Month Sales Growth %
-- Tables: Orders

SELECT MONTHNAME(curr.order_month) AS month,
    ROUND(
        (curr.total - prev.total) / prev.total * 100,
        2
    ) AS growth_percentage
FROM (
    SELECT DATE_FORMAT(order_date, '%Y-%m-01') AS order_month,
        SUM(amount) AS total
    FROM Orders
    GROUP BY DATE_FORMAT(order_date, '%Y-%m-01')
) AS curr
JOIN (
    SELECT DATE_FORMAT(order_date, '%Y-%m-01') AS order_month,
        SUM(amount) AS total
    FROM Orders
    GROUP BY DATE_FORMAT(order_date, '%Y-%m-01')
) AS prev
    ON curr.order_month = DATE_ADD(prev.order_month, INTERVAL 1 MONTH)
ORDER BY curr.order_month;

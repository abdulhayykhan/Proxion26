-- Q16. Customers with Orders in 3 Consecutive Months
-- Tables: Customers, Orders

SELECT DISTINCT c.customer_name
FROM Customers c
JOIN Orders o1 ON c.customer_id = o1.customer_id
JOIN Orders o2 ON c.customer_id = o2.customer_id
    AND PERIOD_DIFF(
        DATE_FORMAT(o2.order_date, '%Y%m'),
        DATE_FORMAT(o1.order_date, '%Y%m')
    ) = 1
JOIN Orders o3 ON c.customer_id = o3.customer_id
    AND PERIOD_DIFF(
        DATE_FORMAT(o3.order_date, '%Y%m'),
        DATE_FORMAT(o1.order_date, '%Y%m')
    ) = 2;

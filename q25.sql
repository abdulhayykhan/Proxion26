-- Q25. Customers with > 5 Orders in Any 10-Minute Window
-- Tables: Orders

SELECT DISTINCT o1.customer_id
FROM Orders o1
JOIN Orders o2
    ON o1.customer_id = o2.customer_id
    AND o2.order_date >= o1.order_date
    AND o2.order_date < DATE_ADD(o1.order_date, INTERVAL 10 MINUTE)
GROUP BY o1.customer_id, o1.order_date
HAVING COUNT(DISTINCT o2.order_id) > 5;

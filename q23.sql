-- Q23. Highest Spending Customer Per Product Category
-- Tables: Customers, Orders, Products, OrderDetails

SELECT p.category,
    c.customer_name
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderDetails od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id
GROUP BY p.category, c.customer_id, c.customer_name
HAVING SUM(od.quantity * p.price) = (
    SELECT MAX(cat_total)
    FROM (
        SELECT c2.customer_id,
            p2.category,
            SUM(od2.quantity * p2.price) AS cat_total
        FROM Customers c2
        JOIN Orders o2 ON c2.customer_id = o2.customer_id
        JOIN OrderDetails od2 ON o2.order_id = od2.order_id
        JOIN Products p2 ON od2.product_id = p2.product_id
        GROUP BY c2.customer_id, p2.category
    ) AS sub
    WHERE sub.category = p.category
)
ORDER BY p.category;

-- Q18. Product Pairs Ordered Together > 10 Times
-- Tables: Orders, OrderDetails, Products

SELECT p1.product_name AS product1,
    p2.product_name AS product2
FROM OrderDetails od1
JOIN OrderDetails od2
    ON od1.order_id = od2.order_id
    AND od1.product_id < od2.product_id
JOIN Products p1 ON od1.product_id = p1.product_id
JOIN Products p2 ON od2.product_id = p2.product_id
GROUP BY od1.product_id, od2.product_id,
    p1.product_name, p2.product_name
HAVING COUNT(*) > 10;

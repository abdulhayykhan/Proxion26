-- Q6. Customers Who Never Placed an Order
-- Tables: Customers, Orders

SELECT c.customer_name
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

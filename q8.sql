-- Q8. Products with Above-Average Total Sales Quantity
-- Tables: Products, Sales

SELECT p.product_name
FROM Products p
JOIN Sales s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
HAVING SUM(s.quantity) > (
    SELECT AVG(total_qty)
    FROM (
        SELECT SUM(quantity) AS total_qty
        FROM Sales
        GROUP BY product_id
    ) AS sub
);

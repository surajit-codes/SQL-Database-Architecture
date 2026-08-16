-- ==========================================
-- DATABASE: TechBazar Inventory
-- TOPIC: SDE Interview Problems (Aggregations & Nested Subqueries)
-- ==========================================

-- PROBLEM 1: HIGH-VALUE CATEGORY REVENUE --
SELECT  p.category, SUM(p.price * s.quantity_sold) AS total_revenue
FROM products p
INNER JOIN sales s
ON p.product_id = s.product_id
GROUP BY p.category 
HAVING  SUM(p.price * s.quantity_sold) > 50000
ORDER BY total_revenue DESC;

-- PROBLEM 2: SECOND HIGHEST PRICE --
SELECT * FROM products WHERE price = (
SELECT  MAX(price) as sec_largest
FROM products WHERE price <(SELECT MAX(price) FROM products)
);

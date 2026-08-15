-- ==========================================
-- DATABASE: TechBazar Inventory
-- TOPIC: Window Functions (OVER, PARTITION BY, RANK)
-- ==========================================

-- RANK THE PRODUCTS --
SELECT product_name , category , price ,
RANK() OVER(
	PARTITION BY category
	ORDER BY price DESC
) AS category_price_rating
FROM products;

-- 3 WINDOW FUNCTION OUTPUT CHECK --
SELECT product_name , category , price ,
ROW_NUMBER() OVER(
	ORDER BY price DESC
) AS row_num ,
RANK() OVER(
	ORDER BY price DESC
) AS rnk,
DENSE_RANK() OVER(
	ORDER BY price DESC
) AS dense_rnk
FROM products;
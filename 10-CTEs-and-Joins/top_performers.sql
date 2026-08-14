-- METHOD I --
WITH product_sales AS (
	SELECT product_id,
		   SUM(quantity_sold) AS total_sold
		   FROM sales
		   GROUP BY product_id
)
SELECT p.product_name , p.product_id , s.total_sold
	FROM products p
	INNER JOIN product_sales s
	ON p.product_id = s.product_id
	WHERE s.total_sold > 5; 
	
-- METHOD II --
/*WITH product_sales AS(
	SELECT p.product_name ,
		   SUM(s.quantity_sold) AS 
		   total_sold
	FROM products p
	INNER JOIN sales s
	ON p.product_id = s.product_id
	GROUP BY p.product_name
	HAVING SUM(s.quantity_sold) > 5    
)
SELECT * FROM product_sales;*/

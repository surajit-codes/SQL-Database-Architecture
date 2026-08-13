-- BASIC SUBQUERRY --
SELECT product_id , product_name , price 
FROM products WHERE
price>(SELECT AVG(price) FROM products);

-- THE FAANG LEVEL CHALLENGE --

-- METHOD 1 --
SELECT product_name FROM products
WHERE product_id IN (SELECT product_id FROM sales);

-- METHOD 2 --
SELECT p.product_name , s.quantity_sold
FROM products p
LEFT JOIN sales s
ON p.product_id = s.product_id
WHERE s.quantity_sold IS NOT NULL;
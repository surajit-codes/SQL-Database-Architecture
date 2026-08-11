-- SIMPLE SALES REPORT --
SELECT p.product_name , p.category , s.quantity_sold , s.sale_date , s.sale_id
FROM products  p INNER JOIN sales s
ON p.product_id = s.product_id;

-- EARNING PER SALE --
SELECT p.product_name , s.quantity_sold , p.price*s.quantity_sold AS total_price
FROM products p INNER JOIN sales s
ON p.product_id = s.product_id;
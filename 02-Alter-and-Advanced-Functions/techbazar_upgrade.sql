-- ADD A NEW COLUMN IN A TABLE --
alter table products 
	add column  rating numeric(2,1) default 00;

-- RENAME THE COLUMN NAME STOCK TO INVENTORY_COUNT --
alter table products
	rename column stock to inventory_count;

-- 	CONCAT NAME AND CATAGORY --
select concat_ws(' is a ' , product_name , category) from products;

-- CONVERTING PRODUCT NAME INTO UPPER AND CATEGORY TO LOWER CASE --
select upper(product_name) as Product_name_capital , lower(category) as Category_small_letter from products;

-- FINDING LONGEST CHARACTER --
select product_name as longest_name from products 
	order by length(product_name) desc
	limit 1; 

-- TAG OF PRODUCT BY THEIR PRICE --
select product_name , price,
case when (price>50000) then 'Premium'
     when price between 15000 and 50000 then 'Mid-Range'
	 else 'Budget'
	 end as price_segment
	 from products;

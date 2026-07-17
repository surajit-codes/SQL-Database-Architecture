-- MANSOON SALE --

-- DISCOUNT 10 % ON MOBILE FOR STOCK GREATER THAN 70 --
-- FLAT 5000 DISCOUNT ON LAPTOP --
SELECT  product_name , category ,  inventory_count,
 case 
 	 when category = 'MOBILE' and (inventory_count > 70) then price * 0.9
	  when category ='LAPTOP' then price - 5000
	  else price 
	 end as discount_price
 from products ;
 
-- UPDATE DISCOUNT PRICE --
update products 
set price = case 
 	 when category = 'MOBILE' and (inventory_count > 70) then price * 0.9
	  when category ='LAPTOP' then price - 5000
	  else price 
	 end;
     
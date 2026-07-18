-- UPDATE THE RATING OF PRODUCTS --
update  products 
set rating = 4.9
where product_id = 1 ;

update  products 
set rating = 3.4
where product_id = 2 ;

update  products 
set rating = 4.0
where product_id = 3 ;

update  products 
set rating = 4.3
where product_id = 4;

update  products 
set rating = 4.3
where product_id = 5 ;

update  products 
set rating = 3.4
where product_id = 6 ;

-- SHOW PRODUCTS BY RATING FOR SAME RATING BY PRICE --
select product_id , upper(product_name) , price , rating
 from products order by rating  desc , price desc;
 
-- STOCK STATUS --
select count(*) as total_products ,
case when (inventory_count = 0) then 'Out of Stock'
	 when inventory_count between 1 and 30 then 'Low stock-Need Restock'
	 else 'Healthy'
	 end as stock_status
from products group by 
	case
		when(inventory_count = 0) then 'Out of Stock'
	    when inventory_count between 1 and 30 then 'Low stock-Need Restock'
	    else 'Healthy'
    end;

--  FILTERING CATEGORY ABOVE A PRICE --
select category ,sum(inventory_count) as total
from products 
group by category
having (sum(inventory_count) < 50);

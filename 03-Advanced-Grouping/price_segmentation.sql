-- No. OF PRODUCT SEGMENT WISE --
select count(*) as total_product ,
	case 
	    when (price > 50000) then 'Premium'
		when price between 15000 and 50000 then 'Mid-Range'
		else 'Budget'
		end as price_segment
from products group by 
		case 
	    when (price > 50000) then 'Premium'
		when price between 15000 and 50000 then 'Mid-Range'
		else 'Budget'
		end;

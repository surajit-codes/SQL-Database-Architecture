-- CREATING TABLE --
create table products(
	product_id serial primary key ,
	product_name varchar(50) not null unique,
	category varchar(20) not null ,
	price int not null check(price >=0) ,
	stock int not null ,
	added_date date default current_date 
);

-- INSERTING VALUES --
insert into products (product_name , category , price , stock)
values ('IQOO Z7 PRO 5G' , 'MOBILE' , 24999 , 100) ,
       ('REALME NARZO 30' , 'MOBILE' , 18999 , 85) ,
       ('OPPO K10 4G' , 'MOBILE' , 16999 , 60),
       ('ASUS VIVOBOOK S16' , 'LAPTOP' , 65890 , 12) ,
       ('SAMSUNG GALAXY BOOK 6 ULTRA' , 'LAPTOP' , 149999 , 32) ,
       ('BUDS PRIMA 2' , 'EARBUDS' , 1599 , 10);

-- UPDATE PRICE --
update products 
  set price = price - 1500
  where product_id = 3 ;

-- filtering mobile by price --
select product_name from products 
	where category = 'MOBILE'
	and price > 15000 ;
	
-- sorting with limit --
select product_name , price from products 
	order by price desc
	limit 3;

-- total product price --
select sum(price * stock) as total_inv_price from products;

-- total no. of products --
select count(product_id) from products;

-- count product no. in category --
select category , count(*) from products 
	group by category; 

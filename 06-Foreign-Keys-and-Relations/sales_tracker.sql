-- ==========================================
-- DATABASE: TechBazar Inventory
-- TOPIC: Foreign Keys & Referential Integrity
-- ==========================================

-- CREATE SALES TABLE --
CREATE TABLE sales(
	sale_id BIGSERIAL PRIMARY KEY,
	product_id INT REFERENCES products(product_id),
	quantity_sold INT,
	sale_date DATE DEFAULT CURRENT_DATE
);

-- As forget to ADD "ON DELETE CASCADE"
ALTER TABLE sales
	DROP CONSTRAINT sales_product_id_fkey;

-- ADDING "ON DELETE CASCADE" TO THE FOREIGN KEY CONSTRAINT --
ALTER TABLE sales
	ADD CONSTRAINT sales_product_id
	FOREIGN KEY (product_id)
	REFERENCES products(product_id)
	ON DELETE CASCADE;

-- INSERT VALID DATA --
INSERT INTO sales (product_id , quantity_sold )
		VALUES (1 , 20), (4,3);
				
-- INSERT INVALID DATA --
INSERT INTO sales (product_id , quantity_sold )
		VALUES (96 , 20);

-- ==========================================
-- DATABASE: TechBazar Inventory
-- TOPIC: LEFT JOIN & The "Anti-Join" Pattern
-- ==========================================

-- TECHBAZAAR UNSOLD ITEMS --
SELECT p.product_name , p.category , s.quantity_sold
FROM products p
LEFT JOIN sales s
ON p.product_id = s.product_id
WHERE s.sale_id IS NULL;

# TechBazar Sales Tracker & Foreign Keys

## Concepts Learned
* **Foreign Keys:** Linking two tables together to establish a relationship.
* **Referential Integrity:** Ensuring that data entered into a child table (sales) strictly references valid data in the parent table (products).
* **ON DELETE CASCADE:** Modifying the foreign key constraint so that if a parent record is deleted, all its associated child records are automatically deleted, preventing orphan data.

## Key Takeaway
I tested the 'Hacker Trap' by trying to insert a `product_id` that doesn't exist in the main `products` table, and PostgreSQL immediately blocked it. This is why we use relational databases — they protect our data from becoming corrupt. I also learned how to use `ALTER TABLE` to drop and recreate constraints when adding behaviors like `ON DELETE CASCADE`.
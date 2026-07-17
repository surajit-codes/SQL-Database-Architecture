# TechBazar Monsoon Sale 

## Concepts Learned (Day 4)
* **Previewing Changes:** Using `SELECT` with a `CASE` statement to preview calculated data before actually modifying the database.
* **Conditional Bulk Updates:** Using the `CASE` statement inside an `UPDATE` query to apply different mathematical rules to different rows simultaneously, without needing multiple `UPDATE` statements.

## Key Takeaway
I learned how to do bulk updates intelligently. Instead of writing separate update queries for Laptops and Mobiles, I can use a `CASE` block inside the `SET` clause to update the entire table in one go.
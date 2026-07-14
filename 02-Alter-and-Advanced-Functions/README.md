# TechBazar System Upgrade

## Concepts Learned (Day 2)
* **Table Mutations:** Modifying existing schemas safely using `ALTER TABLE` (adding new columns and renaming existing ones).
* **String Manipulation:** Formatting and combining data at the database level using `CONCAT_WS`, `UPPER()`, `LOWER()`, and `LENGTH()`.
* **Conditional Logic:** Implementing dynamic business logic directly in SQL using `CASE WHEN ... THEN ... ELSE` statements (e.g., dynamic Price Tags).

## Key Takeaway
I always thought SQL was just for saving and fetching data. But today I realized we can write actual business logic (like if-else using `CASE`) and format strings right inside the database itself, instead of writing all that extra logic in Java. Also, found out that `CONCAT_WS` is much smarter than the normal `||` operator because it automatically handles `NULL` values without breaking the query.
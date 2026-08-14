# TechBazar Top Performers (CTE Edition)

## Concepts Learned (Day 10)
* **CTEs with JOINs:** Learned how to create a Common Table Expression to pre-calculate aggregate data (like total sales per product) and then seamlessly `INNER JOIN` that virtual table with a physical table.
* **Modular Query Architecture:** Realized that breaking complex queries down into smaller, logical blocks using the `WITH` clause makes the code significantly easier to read and debug compared to deeply nested subqueries.

## Key Takeaway
I wrote two different approaches to solve the same problem. While grouping and joining inside the CTE works, doing the aggregation inside the CTE first and then joining it with the main table in the final `SELECT` query feels much more modular and cleaner. CTEs are essential for keeping large SQL scripts organized.
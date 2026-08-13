# TechBazar Premium Stock & Subqueries

## Concepts Learned (Day 9)
* **Subqueries:** Writing a query inside another query. The inner query executes first and passes its result to the outer query.
* **Dynamic Filtering:** Instead of hardcoding values, used a subquery to dynamically calculate an average and filter rows based on that result.
* **The IN Operator with Subqueries:** Used `IN (SELECT ...)` to filter records in the main table based on the existence of their IDs in a secondary table.

## Key Takeaway
Subqueries are like inception — a query within a query. I realized that if I need a value that isn't readily available (like the average price of all items), I don't need to run two separate queries. I can just embed the calculation query inside the `WHERE` clause of my main query. Also, I discovered that finding matching records can be done in multiple ways (Subqueries vs. Joins).
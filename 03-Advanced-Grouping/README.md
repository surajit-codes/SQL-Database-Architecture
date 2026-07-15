# TechBazar Price Segmentation

## Concepts Learned (Day 3)
* **Advanced GROUP BY:** Learned how to group data based on a dynamically calculated condition using the `CASE` statement.
* **Repeating Logic:** Discovered that to group by a dynamic condition without shortcuts, the exact `CASE` block used in the `SELECT` clause must be repeated inside the `GROUP BY` clause.

## Key Takeaway
I learned that `GROUP BY` isn't restricted to just existing columns in a table. By writing a full `CASE WHEN` statement inside the `GROUP BY` clause, I can categorize products dynamically (like Budget, Mid-Range, Premium) and count how many items fall into each bucket. It makes the query longer, but it builds a solid understanding of how the database engine actually evaluates conditions before grouping them.
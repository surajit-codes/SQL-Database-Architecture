# Advanced SDE Concepts (FAANG Favorites)

## Concepts Learned (Day 14)
* **Partitioned Ranking:** Solved the classic "Top N per Group" problem by combining `CTEs` with the `DENSE_RANK() OVER (PARTITION BY ...)` window function. This gracefully handles tie-breaker scenarios without breaking the limit logic.
* **Data Categorization:** Used `CASE WHEN` to translate raw numerical data (salaries) into categorized buckets (High/Medium/Low Earners) on the fly.
* **Conditional Aggregation:** Mastered one of the most common data engineering patterns: using `SUM(CASE WHEN condition THEN 1 ELSE 0 END)` inside a `GROUP BY`. This allows counting specific occurrences without having to use a strict `WHERE` clause that would filter out the entire row.

## Key Takeaway
I now understand that SQL isn't just about pulling rows out of a database; it's a full data manipulation language. Conditional aggregation blew my mind—I can essentially write `IF/ELSE` loops inside an aggregate math function to pivot and shape my reports exactly how the business needs them.
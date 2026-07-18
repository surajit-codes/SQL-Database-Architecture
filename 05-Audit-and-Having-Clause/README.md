# TechBazar Stock Audit

## Concepts Learned (Day 5)
* **Multi-Column ORDER BY:** Sorting data by primary condition (rating), and then using a secondary condition (price) to break ties.
* **The HAVING Clause:** Learned the critical difference between `WHERE` and `HAVING`. `WHERE` filters individual rows *before* grouping, while `HAVING` filters the aggregated results *after* grouping.
* **Advanced Aggregation:** Successfully combined `GROUP BY`, `COUNT()`, and a raw `CASE` statement to generate a business summary report instead of just a raw list.

## Key Takeaway
The biggest lesson today was understanding business requirements vs raw code. I realized that a business owner doesn't want a 10,000-line list of product statuses; they want a 3-line summary report. I fixed my query using `GROUP BY` with the `CASE` statement to generate that exact summary. Also, I learned that aggregate functions like `SUM()` cannot be used inside a `WHERE` clause — they must go inside a `HAVING` clause after grouping.
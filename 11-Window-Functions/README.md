# TechBazar Category-Wise Ranking

## Concepts Learned (Day 11)
* **Window Functions:** Learned how to perform calculations across a set of table rows that are somehow related to the current row, without actually grouping them into a single output row (like `GROUP BY` does).
* **OVER & PARTITION BY:** Used `PARTITION BY` to divide the result set into partitions (by category) and applied the `RANK()` function independently to each partition.
* **ROW_NUMBER vs RANK vs DENSE_RANK:** 
    * `ROW_NUMBER()`: Gives a unique sequential number blind to duplicates (1, 2, 3).
    * `RANK()`: Gives identical ranks to duplicates but skips the next number (1, 1, 3).
    * `DENSE_RANK()`: Gives identical ranks to duplicates and does NOT skip the next number (1, 1, 2).

## Key Takeaway
Window functions are incredibly powerful for analytics. While `GROUP BY` squashes data down to a summary, Window Functions let me keep all the individual rows while adding calculated analytical columns (like ranks, running totals, or moving averages) right next to them. I also learned to pay strict attention to `DESC` vs `ASC` based on business logic.
# The Manager Hunt (Self Joins)

## Concepts Learned (Day 13)
* **Self Joins:** Learned how to join a table to itself. This is essential for hierarchical data, like an employee-manager relationship where both individuals exist in the same table.
* **Table Aliasing:** Realized that table aliases (`t1` and `t2`) are absolutely mandatory in Self Joins because the database needs to distinguish between the "employee perspective" and the "manager perspective" of the exact same table.
* **Inner vs Left Join Impact:** Discovered that using an `INNER JOIN` drops the CEO from the report because their `manager_id` is `NULL`. Switched to a `LEFT JOIN` to ensure all employees are listed, even if they don't report to anyone.

## Key Takeaway
Self joins initially hurt the brain, but it's just pretending there are two identical tables side-by-side. You connect the foreign key (`manager_id`) of the first imaginary table to the primary key (`emp_id`) of the second imaginary table.

## LeetCode 181 Solved
Successfully applied the Self Join concept to solve the classic "Employees earning more than their managers" problem. It proves how treating a single table as two separate entities allows for direct mathematical comparisons between a parent and child row.
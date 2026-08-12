# TechBazar Unsold Inventory

## Concepts Learned (Day 8)
* **LEFT JOIN:** Unlike `INNER JOIN` which only returns matching rows, `LEFT JOIN` returns ALL rows from the left table, and fills in `NULL` for the right table if there is no match.
* **The Anti-Join Pattern:** A powerful technique to find missing relationships (e.g., "Find products that have never been sold"). By using a `LEFT JOIN` and filtering `WHERE right_table.id IS NULL`, we instantly isolate the unmatched records.

## Key Takeaway
If I need a report of everything that happened, I use `INNER JOIN`. But if the business owner asks "What did NOT happen?" (unsold items, inactive users, unpaid invoices), `LEFT JOIN` combined with a `IS NULL` check is the ultimate tool. Also learned that checking the Primary/Foreign Key for `NULL` is the safest way to verify non-existence.
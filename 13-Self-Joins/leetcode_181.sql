-- ==========================================
-- DATABASE: Company HR
-- TOPIC: LeetCode 181 (Employees Earning More Than Their Managers)
-- ==========================================

-- 1. DATA SETUP
CREATE TABLE employee_manager (
    id INT,
    name VARCHAR(50),
    salary INT,
    manager_id INT
);

INSERT INTO employee_manager (id, name, salary, manager_id) VALUES
(1, 'Joe', 70000, 3),
(2, 'Henry', 80000, 4),
(3, 'Sam', 60000, NULL),
(4, 'Max', 90000, NULL);

-- 2. SALARY COMPARISON (Self Join)
-- Comparing an employee's salary (t1) directly with their manager's salary (t2).
SELECT t1.name AS emp_name, t1.salary 
FROM employee_manager t1
INNER JOIN employee_manager t2 ON t1.manager_id = t2.id
WHERE t1.salary > t2.salary;
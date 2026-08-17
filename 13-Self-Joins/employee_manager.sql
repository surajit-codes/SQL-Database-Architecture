-- ==========================================
-- DATABASE: Company HR
-- TOPIC: Self Joins
-- ==========================================

-- CREATE EMPLOYEES TABLE --
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    manager_id INT
);

-- INSERTING DUMMY DATA --
INSERT INTO employees (emp_id, emp_name, manager_id) VALUES
(1, 'Bikash', NULL),
(2, 'Rahul', 1),    
(3, 'Sneha', 1), 
(4, 'Arijit', 2),
(5, 'Riya', 2);

-- THE MANAGER HUNT --
SELECT t1.emp_id , t1.emp_name,
	   t2.emp_id As manager_id , t2.emp_name AS manager_name
FROM employees t1 
LEFT JOIN employees t2
ON t1.manager_id = t2.emp_id;
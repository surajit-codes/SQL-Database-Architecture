-- ==========================================
-- DATABASE: Company HR
-- TOPIC: Advanced FAANG Level Concepts
-- ==========================================

-- DATA SETUP
CREATE TABLE company_staff (
    emp_id INT,
    emp_name VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Inserting Data --
INSERT INTO company_staff (emp_id, emp_name, salary, department) VALUES
(1, 'Sourav', 80000, 'IT'),
(2, 'Rahul', 90000, 'IT'),
(3, 'Priya', 85000, 'IT'),
(4, 'Amit', 90000, 'IT'),
(5, 'Neha', 70000, 'HR'),
(6, 'Bikash', 80000, 'HR'),
(7, 'Sneha', 80000, 'HR');

-- TOP 2 EARNERS PER DEPARTMENT (Window Functions + CTE)
WITH sec_salary AS (
	SELECT * ,
		DENSE_RANK() OVER (
		PARTITION BY department
		ORDER BY salary DESC
		) AS rank
	FROM company_staff
)
SELECT * FROM sec_salary
WHERE rank <= 2;

-- SALARY CATEGORIZATION (CASE WHEN)
SELECT emp_name , salary ,
CASE 
	WHEN salary > 85000 THEN 'High Earner'
	WHEN salary BETWEEN 75000 AND 85000 THEN 'Medium Earner'
	ELSE 'Low Earner'
END AS salary_category 
FROM company_staff;

-- CONDITIONAL AGGREGATION (Pivoting Data)
SELECT department , 
	SUM(
		CASE WHEN salary > 85000 THEN 1 ELSE 0 END
	) AS high_earner_counter
FROM company_staff GROUP BY department;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    manager_id INT,
    location_id INT
);

select * from departments;

COPY departments(department_id, department_name, manager_id, location_id)
FROM 'd:/DA/sql_queries/Day_5/day_5/sql_task_2/sql_task_2/select.sql/select2.csv'
DELIMITER ','
CSV HEADER;

select * from departments;

-- 1. Select all columns
SELECT * FROM departments;

-- 2. Select only department names
SELECT department_name FROM departments;

-- 3. Select departments with manager_id = 101
SELECT * FROM departments WHERE manager_id = 200;

-- 4. Select departments in location_id 200
SELECT * FROM departments WHERE location_id = 2700;

-- 5. Select departments with department_id greater than 5
SELECT * FROM departments WHERE department_id > 5;

-- 6. Select departments ordered by department_name
SELECT * FROM departments ORDER BY department_name;

-- 7. Select departments with no manager assigned
SELECT * FROM departments WHERE manager_id IS NULL;

-- 8. Count total departments
SELECT COUNT(*) FROM departments;

-- 9. Select unique location_ids
SELECT DISTINCT location_id FROM departments;

-- 10. Select departments with department_name starting with 'S'
SELECT * FROM departments WHERE department_name LIKE 'S%';

-- 11. Select departments with manager_id between 100 and 200
SELECT * FROM departments WHERE manager_id BETWEEN 100 AND 200;

-- 12. Select departments not in location_id 300
SELECT * FROM departments WHERE location_id <> 300;

-- 13. Select departments with department_name containing 'Admin'
SELECT * FROM departments WHERE department_name ILIKE '%Admin%';

-- 14. Select department_id and department_name only
SELECT department_id, department_name FROM departments;

-- 15. Select departments ordered by manager_id descending
SELECT * FROM departments ORDER BY manager_id DESC;
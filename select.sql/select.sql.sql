create table employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10, 2),
    hire_date DATE,
    manager_id INT
);

select * from employees;

COPY employees(employee_id, first_name, last_name, department_id, salary, hire_date, manager_id)
FROM 'd:/DA/sql_queries/Day_5/select.csv'
DELIMITER ','
CSV HEADER;

select * from employees;

-- 2. Select first and last names of all employees
SELECT first_name, last_name FROM employees;

-- 3. Select employees with salary greater than 50000
SELECT * FROM employees WHERE salary > 50000;

-- 4. Select employees hired after 2020-01-01
SELECT * FROM employees WHERE hire_date > '2020-01-01';

-- 5. Select employees from department 10
SELECT * FROM employees WHERE department_id = 1;

-- 6. Select employees who do not have a manager
SELECT * FROM employees WHERE manager_id = 2;

-- 7. Select employees with salary between 40000 and 60000
SELECT * FROM employees WHERE salary BETWEEN 40000 AND 60000;

-- 8. Select the highest salary in the employees table
SELECT MAX(salary) AS highest_salary FROM employees;

-- 9. Select the number of employees in each department
SELECT department_id, COUNT(*) AS num_employees FROM employees GROUP BY department_id;

-- 10. Select employees ordered by hire date descending
SELECT * FROM employees ORDER BY hire_date DESC;

-- 12. Select employees with a manager (manager_id is not null)
SELECT * FROM employees WHERE manager_id IS NOT NULL;

-- 13. Select the average salary for each department
SELECT department_id, AVG(salary) AS avg_salary FROM employees GROUP BY department_id;

-- 14. Select employees who were hired in the year 2023
SELECT * FROM employees WHERE EXTRACT(YEAR FROM hire_date) = 2023;

-- 15. Select the total salary paid to all employees
SELECT SUM(salary) AS total_salary FROM employees;

-- 16. Select employees whose last name starts with 'S'
SELECT * FROM employees WHERE last_name LIKE 'S%';

-- 17. Select the minimum salary in each department
SELECT department_id, MIN(salary) AS min_salary FROM employees GROUP BY department_id;

-- 18. Select employees who have the same manager (grouped by manager_id)
SELECT manager_id, COUNT(*) AS num_employees FROM employees WHERE manager_id IS NOT NULL GROUP BY manager_id HAVING COUNT(*) > 1;

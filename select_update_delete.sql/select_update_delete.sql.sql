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

SELECT first_name, last_name FROM employees;

SELECT * FROM employees WHERE salary > 50000;

SELECT * FROM employees WHERE hire_date > '2020-01-01';

SELECT * FROM employees WHERE department_id = 1;

SELECT * FROM employees WHERE manager_id = 2;

SELECT * FROM employees WHERE salary BETWEEN 40000 AND 60000;

SELECT MAX(salary) AS highest_salary FROM employees;

SELECT department_id, COUNT(*) AS num_employees FROM employees GROUP BY department_id;

SELECT * FROM employees ORDER BY hire_date DESC;

SELECT * FROM employees WHERE manager_id IS NOT NULL;

SELECT department_id, AVG(salary) AS avg_salary FROM employees GROUP BY department_id;

SELECT * FROM employees WHERE EXTRACT(YEAR FROM hire_date) = 2023;

SELECT SUM(salary) AS total_salary FROM employees;

SELECT * FROM employees WHERE last_name LIKE 'S%';

SELECT department_id, MIN(salary) AS min_salary FROM employees GROUP BY department_id;

SELECT manager_id, COUNT(*) AS num_employees FROM employees WHERE manager_id IS NOT NULL GROUP BY manager_id HAVING COUNT(*) > 1;

--------------------------------------------------------------------

UPDATE employees SET salary = 70000 WHERE employee_id = 1;

UPDATE employees SET department_id = 2 WHERE department_id = 1;

UPDATE employees SET salary = salary * 1.10;

UPDATE employees SET manager_id = NULL WHERE manager_id = 2;

UPDATE employees SET hire_date = '2021-05-20' WHERE employee_id = 3;

UPDATE employees SET first_name = 'John' WHERE employee_id = 4;

UPDATE employees SET last_name = 'Doe' WHERE employee_id = 5;

UPDATE employees SET salary = 55000 WHERE hire_date < '2020-01-01';

UPDATE employees SET department_id = 3 WHERE salary < 40000;

UPDATE employees SET manager_id = 1 WHERE department_id = 2;

UPDATE employees SET salary = salary * 1.05 WHERE last_name LIKE 'S%';

UPDATE employees SET hire_date = '2019-01-01' WHERE manager_id = 1;

UPDATE employees SET department_id = 4, salary = 60000 WHERE employee_id = 6;

UPDATE employees SET first_name = 'Jane', last_name = 'Smith' WHERE employee_id = 7;

UPDATE employees SET salary = 0 WHERE department_id IS NULL;

select * from employees;

----------------------------------------------------------------------

DELETE FROM employees WHERE employee_id = 1;

DELETE FROM employees WHERE department_id = 2;

DELETE FROM employees WHERE salary < 40000;

DELETE FROM employees WHERE hire_date < '2020-01-01';

DELETE FROM employees WHERE manager_id IS NULL;

DELETE FROM employees WHERE last_name LIKE 'S%';

DELETE FROM employees WHERE salary BETWEEN 60000 AND 70000;

DELETE FROM employees WHERE department_id = 3;

DELETE FROM employees WHERE EXTRACT(YEAR FROM hire_date) = 2023;

DELETE FROM employees WHERE first_name = 'John';

DELETE FROM employees WHERE employee_id > 5

DELETE FROM employees WHERE manager_id = 1;

DELETE FROM employees WHERE salary = 0;

select * from employees;
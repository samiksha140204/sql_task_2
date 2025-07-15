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

SELECT * FROM departments;

SELECT department_name FROM departments;

SELECT * FROM departments WHERE manager_id = 200;

SELECT * FROM departments WHERE location_id = 2700;

SELECT * FROM departments WHERE department_id > 5;

SELECT * FROM departments ORDER BY department_name;

SELECT * FROM departments WHERE manager_id IS NULL;

SELECT COUNT(*) FROM departments;

SELECT DISTINCT location_id FROM departments;

SELECT * FROM departments WHERE department_name LIKE 'S%';

SELECT * FROM departments WHERE manager_id BETWEEN 100 AND 200;

SELECT * FROM departments WHERE location_id <> 300;

SELECT * FROM departments WHERE department_name ILIKE '%Admin%';

SELECT department_id, department_name FROM departments;

SELECT * FROM departments ORDER BY manager_id DESC;

---------------------------------------------------------------

UPDATE departments SET department_name = 'Human Resources' WHERE department_id = 1;
UPDATE departments SET manager_id = 205 WHERE department_id = 2;
UPDATE departments SET location_id = 1800 WHERE department_id = 3;
UPDATE departments SET department_name = 'Research & Development', manager_id = 206 WHERE department_id = 4;
UPDATE departments SET location_id = 1700 WHERE department_name = 'Sales';
UPDATE departments SET manager_id = NULL WHERE department_id = 5;
UPDATE departments SET department_name = 'Finance' WHERE manager_id = 200;
UPDATE departments SET location_id = 2500 WHERE department_name LIKE '%IT%';
UPDATE departments SET manager_id = 207 WHERE location_id = 1700;
UPDATE departments SET department_name = 'Customer Support' WHERE department_id = 6;
UPDATE departments SET location_id = 1900 WHERE department_name = 'Marketing';
UPDATE departments SET manager_id = 208, location_id = 2000 WHERE department_id = 7;
UPDATE departments SET department_name = 'Operations' WHERE manager_id IS NULL;
UPDATE departments SET location_id = 2100 WHERE department_name LIKE 'P%';
UPDATE departments SET manager_id = 209 WHERE department_id > 8;

------------------------------------------------------------------------------

DELETE FROM departments WHERE department_id = 1;
DELETE FROM departments WHERE department_name = 'Human Resources';
DELETE FROM departments WHERE manager_id IS NULL;
DELETE FROM departments WHERE location_id = 1800;
DELETE FROM departments WHERE department_name LIKE '%Sales%';
DELETE FROM departments WHERE department_id > 5;
DELETE FROM departments WHERE manager_id = 205;
DELETE FROM departments WHERE location_id = 2500;
DELETE FROM departments WHERE department_name = 'Research & Development';
DELETE FROM departments WHERE department_id BETWEEN 2 AND 4;
DELETE FROM departments WHERE manager_id = 209;
DELETE FROM departments WHERE department_name = 'Customer Support';
DELETE FROM departments WHERE location_id = 1900;
DELETE FROM departments WHERE department_id = 7;
DELETE FROM departments WHERE department_name = 'Operations';

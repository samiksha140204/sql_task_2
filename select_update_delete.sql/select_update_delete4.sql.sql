CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE
);

select * from projects;

COPY projects(project_id,project_name,start_date,end_date)
FROM 'D:/DA/sql_queries/Day_4/select4.csv'
DELIMITER ','
CSV HEADER;

select * from projects;

SELECT project_name, start_date FROM projects;

SELECT * FROM projects WHERE start_date > '2023-01-01';

SELECT * FROM projects WHERE end_date < '2024-01-01';

SELECT * FROM projects WHERE project_id = 1;

SELECT * FROM projects ORDER BY start_date ASC;

SELECT * FROM projects ORDER BY end_date DESC;

SELECT * FROM projects WHERE project_name LIKE '%Data%';

SELECT * FROM projects WHERE project_name LIKE 'A%';

SELECT * FROM projects WHERE end_date IS NULL;

SELECT * FROM projects WHERE start_date IS NOT NULL;

SELECT * FROM projects ORDER BY project_id LIMIT 5;

SELECT *, (end_date - start_date) AS duration_days FROM projects WHERE (end_date - start_date) > 30;

SELECT * FROM projects WHERE EXTRACT(YEAR FROM start_date) = 2023;

SELECT * FROM projects WHERE end_date IS NULL OR end_date > CURRENT_DATE;

-----------------------------------------------------------------------------------

UPDATE projects SET project_name = 'Website Redesign' WHERE project_id = 1;
UPDATE projects SET end_date = '2024-06-30' WHERE project_id = 2;
UPDATE projects SET start_date = '2023-03-15', end_date = '2023-09-30' WHERE project_id = 3;
UPDATE projects SET project_name = 'Mobile App Development' WHERE project_id = 4;
UPDATE projects SET end_date = '2024-12-31' WHERE project_name LIKE '%Data%';
UPDATE projects SET start_date = '2023-01-01' WHERE project_id = 5;
UPDATE projects SET project_name = 'Cloud Migration' WHERE start_date IS NULL;
UPDATE projects SET end_date = '2025-01-31' WHERE project_name = 'Enterprise System Upgrade';
UPDATE projects SET start_date = '2023-07-01' WHERE project_id = 6;
UPDATE projects SET project_name = 'AI Research Project' WHERE end_date IS NULL;
UPDATE projects SET end_date = '2024-03-31' WHERE project_id = 7;
UPDATE projects SET start_date = '2023-09-01', end_date = '2024-02-28' WHERE project_id = 8;
UPDATE projects SET project_name = 'Customer Relationship Management' WHERE project_id = 9;
UPDATE projects SET end_date = '2024-07-15' WHERE project_name LIKE '%Marketing%';
UPDATE projects SET start_date = '2023-11-01' WHERE project_id = 10;

-----------------------------------------------------------------------------------

DELETE FROM projects WHERE project_id = 1;
DELETE FROM projects WHERE project_name = 'Website Redesign';
DELETE FROM projects WHERE start_date < '2023-01-01';
DELETE FROM projects WHERE end_date IS NULL;
DELETE FROM projects WHERE project_id BETWEEN 2 AND 4;
DELETE FROM projects WHERE project_name LIKE '%Data%';
DELETE FROM projects WHERE start_date = '2023-03-15';
DELETE FROM projects WHERE end_date > '2024-06-30';
DELETE FROM projects WHERE project_name = 'Cloud Migration';
DELETE FROM projects WHERE project_id > 7;
DELETE FROM projects WHERE start_date IS NULL;
DELETE FROM projects WHERE project_name LIKE 'A%';
DELETE FROM projects WHERE end_date < '2024-01-01';
DELETE FROM projects WHERE project_id = 5;
DELETE FROM projects WHERE project_name = 'AI Research Project';
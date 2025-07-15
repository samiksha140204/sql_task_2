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
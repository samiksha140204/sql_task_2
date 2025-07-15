CREATE TABLE job_titles (
    job_title_id INT PRIMARY KEY,
    title_name VARCHAR(100) NOT NULL UNIQUE,
    job_description TEXT
);

select * from job_titles;

copy job_titles(job_title_id, title_name, job_description)
FROM 'D:/DA/sql_queries/Day_4/select5.csv'
DELIMITER ','
CSV HEADER;

select * from job_titles;

SELECT title_name FROM job_titles;

SELECT * FROM job_titles WHERE job_title_id = 2;

SELECT * FROM job_titles WHERE title_name LIKE '%Engineer%';

SELECT * FROM job_titles WHERE job_description IS NOT NULL;

SELECT * FROM job_titles ORDER BY title_name ASC;

SELECT * FROM job_titles ORDER BY job_title_id DESC;

SELECT title_name, job_description FROM job_titles WHERE title_name = 'Data Scientist';

SELECT * FROM job_titles WHERE job_description LIKE '%management%';

SELECT * FROM job_titles WHERE job_title_id > 3;

SELECT * FROM job_titles WHERE job_title_id < 5;

SELECT * FROM job_titles WHERE title_name LIKE 'S%';

SELECT * FROM job_titles WHERE title_name LIKE '%Analyst%';

SELECT * FROM job_titles WHERE job_description IS NULL;

SELECT * FROM job_titles LIMIT 3;

SELECT * FROM job_titles WHERE title_name NOT LIKE '%Manager%';
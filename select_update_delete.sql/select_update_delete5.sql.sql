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

----------------------------------------------------------------------------------

UPDATE job_titles SET title_name = 'Senior Software Engineer' WHERE job_title_id = 1;
UPDATE job_titles SET job_description = 'Manages IT infrastructure' WHERE title_name = 'IT Manager';
UPDATE job_titles SET title_name = 'Lead Data Scientist', job_description = 'Leads data science projects and teams' WHERE job_title_id = 3;
UPDATE job_titles SET title_name = 'Associate Product Manager' WHERE job_title_id = 4;
UPDATE job_titles SET job_description = 'Oversees financial operations' WHERE title_name LIKE '%Finance%';
UPDATE job_titles SET title_name = 'HR Business Partner' WHERE job_title_id = 5;
UPDATE job_titles SET job_description = 'Develops and implements marketing strategies' WHERE title_name = 'Marketing Specialist';
UPDATE job_titles SET title_name = 'Senior UX Designer' WHERE job_title_id = 6;
UPDATE job_titles SET job_description = 'Provides customer support and resolves issues' WHERE title_name LIKE '%Support%';
UPDATE job_titles SET title_name = 'Principal Engineer' WHERE job_title_id = 7;
UPDATE job_titles SET job_description = 'Manages and optimizes supply chain processes' WHERE title_name = 'Supply Chain Manager';
UPDATE job_titles SET title_name = 'Cybersecurity Analyst' WHERE job_title_id = 8;
UPDATE job_titles SET job_description = 'Conducts research and development for new technologies' WHERE title_name = 'Research Scientist';
UPDATE job_titles SET title_name = 'Cloud Architect' WHERE job_title_id = 9;
UPDATE job_titles SET job_description = 'Designs and implements network solutions' WHERE title_name = 'Network Engineer';

------------------------------------------------------------------------------------

DELETE FROM job_titles WHERE job_title_id = 1;
DELETE FROM job_titles WHERE title_name = 'IT Manager';
DELETE FROM job_titles WHERE job_description IS NULL;
DELETE FROM job_titles WHERE job_title_id BETWEEN 2 AND 4;
DELETE FROM job_titles WHERE title_name LIKE '%Engineer%';
DELETE FROM job_titles WHERE job_description LIKE '%management%';
DELETE FROM job_titles WHERE job_title_id = 5;
DELETE FROM job_titles WHERE title_name = 'Associate Product Manager';
DELETE FROM job_titles WHERE job_description = 'Oversees financial operations';
DELETE FROM job_titles WHERE job_title_id > 7;
DELETE FROM job_titles WHERE title_name LIKE 'S%';
DELETE FROM job_titles WHERE job_description LIKE '%customer support%';
DELETE FROM job_titles WHERE job_title_id = 6;
DELETE FROM job_titles WHERE title_name = 'Principal Engineer';
DELETE FROM job_titles WHERE job_description = 'Designs and implements network solutions';

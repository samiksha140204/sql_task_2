copy jobs(job_id,job_title,min_salary,max_salary)
from 'D:\DA\sql_queries\Day_4\jobs.csv'
delimiter ','
csv header;

select * from jobs;

select job_id, job_title from jobs;

select min_salary, max_salary from jobs;

select job_id from jobs where min_salary > 5000;

select job_title from jobs where max_salary < 10000;

select * from jobs order by job_id desc;

select job_id, job_title from jobs where job_title like 'S%';

select min_salary from jobs where job_id = 1;

select max_salary from jobs where job_title = 'Programmer';

select count(*) from jobs;

select avg(min_salary) from jobs;

select sum(max_salary) from jobs;

select min(min_salary) from jobs;

select max(max_salary) from jobs;

select job_id, job_title from jobs where min_salary between 3000 and 7000;

select * from jobs where job_title is not null;

select job_id, job_title from jobs limit 5;

select job_id, job_title from jobs offset 2;

-------------------------------------------------------------------------------------

UPDATE jobs SET min_salary = 4500 WHERE job_id = 1;
UPDATE jobs SET max_salary = 12000 WHERE job_title = 'Programmer';
UPDATE jobs SET min_salary = 6000, max_salary = 11000 WHERE job_id = 3;
UPDATE jobs SET job_title = 'Senior Analyst' WHERE job_id = 4;
UPDATE jobs SET min_salary = 5500 WHERE job_title LIKE '%Manager%';
UPDATE jobs SET max_salary = 9500 WHERE min_salary < 5000;
UPDATE jobs SET job_title = 'Database Administrator' WHERE job_id = 5;
UPDATE jobs SET min_salary = 7000 WHERE max_salary > 10000;
UPDATE jobs SET max_salary = 8000 WHERE job_id = 2;
UPDATE jobs SET job_title = 'Project Coordinator' WHERE min_salary BETWEEN 3000 AND 4000;
UPDATE jobs SET min_salary = 4000, max_salary = 7500 WHERE job_id = 6;
UPDATE jobs SET job_title = 'Software Engineer' WHERE job_id = 7;
UPDATE jobs SET min_salary = 6500 WHERE job_title = 'Data Scientist';
UPDATE jobs SET max_salary = 13000 WHERE job_id = 8;
UPDATE jobs SET job_title = 'HR Specialist' WHERE min_salary IS NULL;

---------------------------------------------------------------------------------

DELETE FROM jobs WHERE job_id = 1;
DELETE FROM jobs WHERE job_title = 'Programmer';
DELETE FROM jobs WHERE min_salary < 5000;
DELETE FROM jobs WHERE max_salary > 10000;
DELETE FROM jobs WHERE job_id BETWEEN 2 AND 4;
DELETE FROM jobs WHERE job_title LIKE '%Manager%';
DELETE FROM jobs WHERE min_salary IS NULL;
DELETE FROM jobs WHERE job_id = 5;
DELETE FROM jobs WHERE job_title = 'Senior Analyst';
DELETE FROM jobs WHERE max_salary = 8000;
DELETE FROM jobs WHERE job_id > 6;
DELETE FROM jobs WHERE job_title = 'Software Engineer';
DELETE FROM jobs WHERE min_salary = 6500;
DELETE FROM jobs WHERE job_id = 8;
DELETE FROM jobs WHERE job_title = 'HR Specialist';
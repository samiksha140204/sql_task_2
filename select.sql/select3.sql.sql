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
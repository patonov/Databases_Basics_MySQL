USE soft_uni;

SELECT DISTINCT `department_id`
  FROM `employees`;

SELECT * FROM employees;

SELECT `last_name`, `department_id` 
FROM `employees` 
WHERE `department_id` = 1;

SELECT * FROM employees;

SELECT `last_name`, `salary` FROM `employees`
WHERE `salary` BETWEEN 20000 AND 22000;

SELECT * FROM employees;

SELECT `last_name`, `hire_date`
FROM `employees`
ORDER BY `hire_date` DESC;

SELECT * FROM employees;

SELECT CONCAT(`first_name`,' ',`last_name`) AS 'Full Name',
`job_title` AS 'Job Title',
`salary` AS 'Salary'
FROM `employees`;

SELECT * FROM employees;


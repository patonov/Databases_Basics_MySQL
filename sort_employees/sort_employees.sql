USE soft_uni;

SELECT * FROM departments;

SELECT name FROM departments;

SELECT * FROM departments;

SELECT CONCAT(e.first_name, '.', e.last_name, '@softuni.bg')
AS `full_email_address`
FROM `employees` AS `e`;

SELECT * FROM `employees`
ORDER BY `salary` DESC, 
first_name ASC, 
last_name DESC, 
middle_name ASC;






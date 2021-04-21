USE soft_uni;

CREATE TABLE `employee_contacts`
AS SELECT `employee_id`, `first_name`, `last_name`, `job_title`, `salary`
FROM `employees`;

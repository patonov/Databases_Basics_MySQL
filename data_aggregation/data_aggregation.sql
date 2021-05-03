USE soft_uni;

SELECT e.`department_id`,
AVG(e.`salary`) AS 'AvgSalary'
FROM employees AS e
GROUP BY e.`department_id`
HAVING AvgSalary > 18000;

SELECT SUM(e.salary) / COUNT(e.salary) FROM employees AS e;

SELECT e.`department_id`,
AVG(e.`salary`) AS 'AvgSalary'
FROM employees AS e
WHERE e.`department_id` > 7
GROUP BY e.`department_id`
HAVING AvgSalary > 18000;


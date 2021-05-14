USE soft_uni;

SELECT e.employee_id, e.first_name 
FROM employees AS e
WHERE e.employee_id NOT IN (
	SELECT ep.employee_id
	FROM employees_projects AS ep
    GROUP BY ep.employee_id)
ORDER BY e.employee_id DESC
LIMIT 3;

SELECT e.employee_id, e.first_name 
FROM employees AS e
WHERE e.employee_id <> ANY (SELECT ep.employee_id
	FROM employees_projects AS ep
    GROUP BY ep.employee_id)
ORDER BY e.employee_id DESC
LIMIT 3;



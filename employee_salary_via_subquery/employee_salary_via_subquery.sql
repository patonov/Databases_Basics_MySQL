USE soft_uni;

SELECT e.employee_id, e.salary 
FROM employees AS e
WHERE e.department_id IN (SELECT
	d.department_id
    FROM departments AS d
    WHERE d.name = 'Finance'
);

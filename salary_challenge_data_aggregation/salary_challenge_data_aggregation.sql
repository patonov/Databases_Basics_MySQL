USE soft_uni;

SELECT e.first_name, e.last_name, e.department_id
FROM employees AS e, (
	SELECT e.department_id, AVG(e.salary) AS avg_salary 
	FROM employees AS e 
	GROUP BY e.department_id
    ) AS avg_sal_by_dep
WHERE e.department_id = avg_sal_by_dep.department_id
		AND e.salary > avg_sal_by_dep.avg_salary
ORDER BY e.department_id
LIMIT 10;
        
        
        
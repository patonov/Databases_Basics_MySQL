USE soft_uni;

SELECT e.department_id, MAX(e.salary) AS third_max_sal
FROM employees AS e, (SELECT e.department_id, MAX(e.salary) AS second_max_sal
				FROM employees AS e, (SELECT e.department_id, MAX(e.salary) AS max_sal
										FROM employees AS e
										GROUP BY e.department_id) AS max_salary_by_dep
				WHERE e.department_id = max_salary_by_dep.department_id
						AND e.salary < max_salary_by_dep.max_sal
				GROUP BY e.department_id) AS second_max_salary_by_dep
WHERE e.department_id = second_max_salary_by_dep.department_id
		AND e.salary < second_max_salary_by_dep.second_max_sal
GROUP BY e.department_id
ORDER BY e.department_id;
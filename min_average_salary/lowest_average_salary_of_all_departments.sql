USE soft_uni;

SELECT MIN(a.avg) AS 'min_average_salary' FROM 
(SELECT AVG(e.salary) AS 'avg' FROM employees AS e
GROUP BY e.department_id) AS a;

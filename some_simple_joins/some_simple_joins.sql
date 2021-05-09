USE soft_uni;

SELECT * FROM employees AS e
  INNER JOIN departments AS d
  ON e.department_id = d.department_id;
  
SELECT * FROM employees AS e
  LEFT OUTER JOIN departments AS d
  ON e.department_id = d.department_id;
  
SELECT * FROM employees AS e
  RIGHT OUTER JOIN departments AS d
  ON e.department_id = d.department_id;


SELECT * FROM employees AS e
  LEFT OUTER JOIN departments AS d
  ON e.department_id = d.department_id
UNION ALL
SELECT * FROM employees AS e
  RIGHT OUTER JOIN departments AS d
  ON e.department_id = d.department_id;
  
SELECT * FROM employees AS e
CROSS JOIN departments AS d;

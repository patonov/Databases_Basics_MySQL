use soft_uni;

DELIMITER $$
CREATE PROCEDURE usp_select_employees_by_seniority() 
BEGIN
  SELECT * 
  FROM employees
  WHERE (DATEDIFF(NOW(), hire_date) / 365.25) < 15;
END $$

DELIMITER ;

CALL usp_select_employees_by_seniority();
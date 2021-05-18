use soft_uni;

DELIMITER //
CREATE FUNCTION udf_get_salary_level(salary DECIMAL(7.2))
RETURNS VARCHAR(10) DETERMINISTIC

BEGIN
	DECLARE result VARCHAR(10);
    
    IF (salary < 30000) THEN
    SET result := 'low';
    ELSEIF (salary <= 50000) THEN
    SET result := 'average';
    ELSE 
    SET result := 'high';
    END IF;
    
	RETURN result;
END //
DELIMITER ;

SELECT e.first_name, e.last_name, e.salary, udf_get_salary_level(e.salary) AS salary_level 
FROM employees AS e;
USE soft_uni;

START TRANSACTION;
UPDATE departments SET departments.name = 'aaaa'
WHERE departments.department_id = 1;

SELECT * FROM departments WHERE departments.department_id = 1;
COMMIT;
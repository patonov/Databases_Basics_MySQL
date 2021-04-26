USE soft_uni;

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%ei%';

USE geography;

SELECT p.peak_name, r.river_name, LOWER(CONCAT(p.peak_name, SUBSTRING(r.river_name, 2))) AS mix
FROM peaks p, rivers r
WHERE RIGHT(p.peak_name, 1) = LEFT(r.river_name, 1)
ORDER BY mix;


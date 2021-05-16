USE geography;

SELECT usages.continent_code, usages.currency_code, usages.currency_usage
FROM
	(SELECT co.continent_code, cu.currency_code, COUNT(cu.currency_code) AS currency_usage
	FROM continents AS co
	INNER JOIN countries AS c ON co.continent_code = c.continent_code
	INNER JOIN currencies AS cu ON c.currency_code = cu.currency_code
	GROUP BY co.continent_code, cu.currency_code
	HAVING currency_usage > 1) AS usages
	INNER JOIN
		(SELECT cu_usage.continent_code, MAX(cu_usage.currency_usage) AS max_use
		FROM (
		SELECT co.continent_code, cu.currency_code, COUNT(cu.currency_code) AS currency_usage
		FROM continents AS co
		INNER JOIN countries AS c ON co.continent_code = c.continent_code
		INNER JOIN currencies AS cu ON c.currency_code = cu.currency_code
		GROUP BY co.continent_code, cu.currency_code
		HAVING currency_usage > 1) AS cu_usage
		GROUP BY cu_usage.continent_code) AS max_usages
        ON usages.continent_code = max_usages.continent_code
WHERE usages.currency_usage = max_usages.max_use
ORDER BY usages.continent_code, usages.currency_code;
        
        

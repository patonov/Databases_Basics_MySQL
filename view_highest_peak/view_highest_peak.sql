USE `geography`;

CREATE VIEW `v_highest_peak` AS 
SELECT * FROM `peaks`
ORDER BY `elevation` DESC LIMIT 1;
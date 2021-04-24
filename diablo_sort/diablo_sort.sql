USE diablo;

SELECT `name` FROM `characters`
ORDER BY `name` ASC;

SELECT `id`, `strength` FROM `statistics`
ORDER BY `id`;

SELECT `id`, `strength` FROM `statistics`
WHERE (strength > 0)
ORDER BY `strength`;
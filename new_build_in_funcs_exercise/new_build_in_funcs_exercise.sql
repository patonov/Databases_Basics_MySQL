CREATE DATABASE new_exercise;

USE new_exercise;

CREATE TABLE people(
	`id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(30),
    `birthdate` DATETIME
);

INSERT INTO people (name, birthdate) VALUES ('Ivan', '1993-05-12 17:01:31'),
('Gogi', '1997-01-29 19:22:45'),
('Mito', '1995-04-11 12:14:22'),
('Pesho', '1999-11-23 09:53:33'),
('Lubcho', '1991-07-02 16:44:13');


SELECT * FROM people;

SELECT `name`, TIMESTAMPDIFF(year, birthdate, NOW()) AS `age_in_years`,
TIMESTAMPDIFF(month, birthdate, NOW()) AS `age_in_months`,
TIMESTAMPDIFF(day, birthdate, NOW()) AS `age_in_days`,
TIMESTAMPDIFF(minute, birthdate, NOW()) AS `age_in_minutes`
FROM people;

SELECT `name`, `birthdate`, TIMESTAMPDIFF(year, birthdate, NOW()) AS `age_in_years`,
TIMESTAMPDIFF(month, birthdate, NOW()) AS `age_in_months`,
TIMESTAMPDIFF(day, birthdate, NOW()) AS `age_in_days`,
TIMESTAMPDIFF(minute, birthdate, NOW()) AS `age_in_minutes`
FROM people;






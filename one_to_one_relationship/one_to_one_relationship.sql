CREATE DATABASE people;

USE people;

CREATE TABLE persons(
	person_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    salary DECIMAL(10, 2),
    passport_id INT UNIQUE NOT NULL
);

CREATE TABLE passports(
	passport_id INT PRIMARY KEY,
    passport_number CHAR(8)
);

ALTER TABLE persons ADD CONSTRAINT fk_persons_passports
FOREIGN KEY (passport_id) REFERENCES passports(passport_id);
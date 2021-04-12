USE examples;

CREATE TABLE data_types_example
(
	customer_id INT(3),
	is_online BOOL,
	balance DECIMAL(10,2)
);

INSERT INTO data_types_example (customer_id, is_online, balance)
VALUES (1, TRUE, 12345678.12);

INSERT INTO data_types_example (customer_id, is_online, balance)
VALUES (2, FALSE, 12345555.12);

INSERT INTO data_types_example (customer_id, is_online, balance)
VALUES (3, TRUE, 13345555.99);

SELECT * FROM data_types_example;
SELECT is_online FROM data_types_example
WHERE is_online IS TRUE;

ALTER TABLE data_types_example
MODIFY COLUMN customer_id INT(3) ZEROFILL;

SELECT * FROM data_types_example;



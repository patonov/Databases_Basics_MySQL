USE minions;

CREATE TABLE minions
(
	id INT NOT NULL AUTO_INCREMENT,
	nam VARCHAR(50) NOT NULL,
	age INT,
	CONSTRAINT pk_minions PRIMARY KEY (id)
);

INSERT INTO minions(nam, age) VALUES ('Kevin',15);
INSERT INTO minions(nam, age) VALUES ('Putka',20);

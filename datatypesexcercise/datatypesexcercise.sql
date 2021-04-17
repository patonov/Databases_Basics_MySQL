USE datatypesexercise;

DROP TABLE IF EXISTS people;

CREATE TABLE people(
	id INT AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL,
    picture BLOB(2097152),
    height FLOAT(6, 2),
    weight FLOAT(6, 2),
    gender ENUM('m', 'f') NOT NULL,
    birth_date DATETIME NOT NULL,
    biography TEXT,
    CONSTRAINT pk_people PRIMARY KEY(id)    
);

INSERT INTO people(name, picture, height, weight, gender, birth_date, biography)
VALUES ('Ivan', null, 176.11, 81.77, 'm', '1981-12-02', 'Ivan is a great Gazar. Gazar means a great and brave human');

INSERT INTO people(name, picture, height, weight, gender, birth_date, biography)
VALUES ('Pesho', null, 206.11, 121.77, 'm', '1951-10-05', 'Pesho is a great Gazar. Gazar means a great and brave human'),
('Mitio', null, 156.22, 61.17, 'm', '1999-11-13', 'Mitio is a great Gazar. Gazar means a great and brave human');




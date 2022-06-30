/* Create tables */
CREATE TABLE IF NOT EXISTS value_type (
	id INTEGER NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	name CHARACTER VARYING(128) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS value (
	id INTEGER NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	name CHARACTER VARYING(10) NOT NULL UNIQUE,
	id_type INTEGER NOT NULL,
	CONSTRAINT fk_value_type
	FOREIGN KEY(id_type)
	REFERENCES value_type(id)
	ON DELETE RESTRICT
	ON UPDATE CASCADE
);

/* Insert data */
INSERT INTO value_type 
	(name) VALUES 
	('time'), 
	('volume');

INSERT INTO value
	(name, id_type) values
	('s', 1),
	('min', 1),
	('h', 1),
	('cm3', 2),
	('mL', 2),
	('L', 2);

SELECT * FROM users;

INSERT INTO users (id, email, name, country) VALUES (1, "sylvie@dylan.com", "Sylvie", 'CO');
INSERT INTO users (id,email, name) VALUES (2, "bob@dylan.com", "Bob");

INSERT INTO users (email, name, country) VALUES ("jean@dylan.com", "Jean", "FR");

INSERT INTO users (email, name) VALUES ("john@dylan.com", "John");

DELETE FROM users;

DROP TABLE users;
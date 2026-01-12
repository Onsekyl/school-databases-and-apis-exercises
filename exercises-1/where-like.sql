USE project;

SELECT * FROM person;
SELECT firstname, lastname FROM person ORDER BY lastname;
SELECT city FROM person GROUP BY city;
SELECT * FROM person WHERE firstname LIKE 'Jim';
SELECT * FROM person WHERE city='Turku' and birth_year > 1980;
SELECT * FROM project WHERE place IS NULL;
SELECT * FROM project WHERE place IS NOT NULL;
SELECT firstname, lastname, (2025 - birth_year) AS age FROM person;
SELECT * FROM person WHERE lastname LIKE 'S%';
SELECT * FROM person WHERE city LIKE 'T%';

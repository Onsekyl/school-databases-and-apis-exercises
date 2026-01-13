USE project;
SELECT * FROM project;
Select * FROM person;
Select * FROM hour;

SELECT MAX(salary), MIN(salary) FROM person;
SELECT COUNT(*) AS 'Rows in project' FROM project;
SELECT AVG(birth_year) FROM person;
SELECT COUNT(city) AS 'Amount of persons from Turku' FROM person WHERE city LIKE 'Turku';
SELECT SUM(salary) AS 'Summed salaries of people from Turku' FROM person WHERE city LIKE 'Turku';
SELECT city, SUM(salary) as 'Sum of salaries' FROM person GROUP BY city;

# Find a way to always format to 0.00!
SELECT city, ROUND(AVG(salary), 2) as 'Average salaries' FROM person GROUP BY city;

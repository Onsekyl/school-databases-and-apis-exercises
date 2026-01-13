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
SELECT city, FORMAT(AVG(salary), 2) as 'Average salaries' FROM person GROUP BY city;
SELECT id_project, SUM(work_hour) FROM hour GROUP BY id_project;
SELECT id_project, SUM(work_hour) FROM hour GROUP BY id_project HAVING SUM(work_hour) > 500;
SELECT city, GROUP_CONCAT(lastname) AS person FROM person GROUP BY city;
SELECT place, GROUP_CONCAT(pname) AS project FROM project GROUP BY place;

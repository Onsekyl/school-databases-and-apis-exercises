USE project;

SELECT * FROM project;
SELECT * FROM person;
SELECT * FROM hour;

# Minimal: All project id's in project and hour
SELECT id_project
FROM project
UNION # ALL # Show the duplicates too
SELECT id_project
FROM hour;

# 1.
SELECT city, COUNT(city) AS Amount
FROM person
GROUP BY city
UNION
SELECT 'TOTAL', COUNT(city) AS Amount
FROM person;

# 2.
SELECT project.id_project, pname, SUM(work_hour) AS 'sum of hour'
FROM project
JOIN hour ON project.id_project=hour.id_project
GROUP BY project.id_project
UNION
SELECT 'PROJ', 'TOTAL', SUM(work_hour) AS 'sum of hour'
FROM hour;

# 3.
SELECT pname,
IF(place != 'NULL', place, 'NO PLACE') AS place
FROM project;

# 4.
SELECT place, GROUP_CONCAT(pname) AS project
FROM project
GROUP BY place;

# 5.
SELECT
IF(place != 'NULL', place, 'No Place') AS place,
GROUP_CONCAT(pname) AS project
FROM project
GROUP BY place;

# Persons with a column for salary over/under 40
SELECT firstname, lastname, 'Over' AS 'Salary over/under 40'
FROM person
WHERE salary >= 40
UNION
SELECT firstname, lastname, 'Under'
FROM person
WHERE salary < 40;

# Persons with a column for salary over/under 40 using IF (its like ternary operation).
# Useful when using both true and false conditions.
SELECT firstname, lastname,
IF(salary >= 40, 'Over', 'Under') AS 'Salary over/under 40'
FROM person
ORDER BY salary DESC;

# Persons with combined working hours under 600 or salary over 40
SELECT person.id_person, firstname, lastname, 'Under 600 hours' AS Label
FROM person
JOIN hour ON person.id_person=hour.id_person
GROUP BY person.id_person
HAVING SUM(work_hour) < 600
UNION
SELECT id_person, firstname, lastname, 'Salary over 40' AS Label
FROM person
WHERE salary > 40
ORDER BY firstname, lastname;

# Count of persons, sum of all hours and average hours per person.
# Listed horizontally with headers "Context", "Value"
# Notice that this has 2 'commands'
SET @personel_amount = (SELECT COUNT(id_person) FROM person);
SELECT 'Personel amount' AS Context, FORMAT(@personel_amount, 0) AS Value
FROM person
UNION
SELECT 'Work hours combined', SUM(work_hour) AS Value
FROM hour
UNION
SELECT 'Avg hours per person', FORMAT(SUM(work_hour) / @personel_amount, 2)
FROM person
JOIN hour ON person.id_person=hour.id_person;

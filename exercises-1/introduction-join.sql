USE project;

SELECT * FROM project INNER JOIN hour ON project.id_project=hour.id_project;
SELECT * FROM project LEFT JOIN hour ON project.id_project=hour.id_project;
SELECT * FROM project RIGHT JOIN hour ON project.id_project=hour.id_project;
SELECT * FROM hour RIGHT JOIN project ON project.id_project=hour.id_project;

SELECT project.id_project, pname, work_hour
FROM project INNER JOIN hour ON project.id_project=hour.id_project;

SELECT * FROM person INNER JOIN hour ON person.id_person=hour.id_person;

SELECT * FROM project INNER JOIN hour ON project.id_project=hour.id_project
INNER JOIN person ON person.id_person=hour.id_person;

SELECT CONCAT(firstname, " ", lastname) AS name, pname, work_hour
FROM project INNER JOIN hour ON project.id_project=hour.id_project
INNER JOIN person ON person.id_person=hour.id_person;

# Every person's sum of hours. Primary key as a grouping method
# so we are not combining persons with the same name.
SELECT CONCAT(firstname, " ", lastname) AS name, SUM(work_hour)
FROM person INNER JOIN hour ON person.id_person=hour.id_person
GROUP BY person.id_person;

# Show the last names of persons working on the individual projects
# pname on the project table, lastname on the person table
SELECT pname, GROUP_CONCAT(lastname) FROM person
INNER JOIN hour ON person.id_person=hour.id_person
INNER JOIN project ON project.id_project=hour.id_project GROUP BY pname;

# Same as above but with firstname too
SELECT pname, GROUP_CONCAT(firstname, " ", lastname) AS name
FROM person INNER JOIN hour ON person.id_person=hour.id_person
INNER JOIN project ON project.id_project=hour.id_project GROUP BY pname;

USE project;

SELECT lastname, work_hour
FROM person INNER JOIN hour ON person.id_person=hour.id_person;

SELECT lastname, SUM(work_hour) AS hours
FROM person INNER JOIN hour ON person.id_person=hour.id_person GROUP BY person.id_person;

SELECT pname, SUM(work_hour) AS hours
FROM project INNER JOIN hour ON project.id_project=hour.id_project GROUP BY project.id_project;

SELECT lastname, pname, work_hour FROM person INNER JOIN hour ON person.id_person=hour.id_person
INNER JOIN project ON hour.id_project=project.id_project;

SELECT lastName, GROUP_CONCAT(pname) AS "projects" FROM person
INNER JOIN hour ON person.id_person=hour.id_person
INNER JOIN project ON hour.id_project=project.id_project
WHERE lastName LIKE "Morrison" GROUP BY lastName;

SELECT pname, lastname, work_hour FROM person
INNER JOIN hour ON person.id_person=hour.id_person
RIGHT JOIN project ON hour.id_project=project.id_project;

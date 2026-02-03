USE project;
SELECT * FROM project;

INSERT INTO project VALUES(301, 'Testi1', 'Oulu');

INSERT INTO project VALUES(302, 'Testi1', NULL);

INSERT INTO project(pname, id_project) VALUES('Testi3', 303);

# Doesn't work in safe mode (mysql-workbench specific)
UPDATE project SET place='Turku' WHERE pname='Testi3';

# We need to use primary key
UPDATE project SET place='Tampere' WHERE id_project=303;

UPDATE project SET place='Oulu' WHERE id_project>303;

UPDATE project SET place='Kuopio', pname='Osto' WHERE id_project=303;

DELETE FROM project WHERE id_project=301;

DELETE FROM project WHERE id_project>300;

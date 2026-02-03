DELIMITER //
CREATE PROCEDURE searchPerson(IN id SMALLINT)
BEGIN
SELECT * FROM person WHERE id_person=id;
END //
DELIMITER ;

CALL searchPerson(201);

DELIMITER //
CREATE PROCEDURE var_searchPerson(IN id SMALLINT)
BEGIN
SELECT lastname INTO @sname FROM person WHERE id_person=id;
END //
DELIMITER ;

CALL var_searchPerson(202);
SELECT @sname;

DROP PROCEDURE var_searchPerson;
DROP PROCEDURE searchPerson;

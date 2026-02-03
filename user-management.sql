SHOW DATABASES;
SHOW TABLES FROM mysql;
SELECT USER, HOST FROM mysql.user;

CREATE USER 'testuser'@'localhost' IDENTIFIED BY 'testpass';
GRANT SELECT ON project.* TO 'testuser'@'localhost';
GRANT INSERT ON project.* TO 'testuser'@'localhost';
REVOKE INSERT ON project.* FROM 'testuser'@'localhost';

DROP USER 'testuser'@'localhost';

CREATE USER 'testuser2'@'localhost' IDENTIFIED BY 'testpass';
GRANT ALL ON project.* TO 'testuser2'@'localhost';

DROP USER 'testuser2'@'localhost';
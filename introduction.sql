create database testdb;
show databases;
use testdb;

create table person(
id_person INT primary key,
fname VARCHAR(20),
lname VARCHAR(20) );

create table cats(
id_cat INT PRIMARY KEY,
name VARCHAR(30),
id_person INT,
FOREIGN KEY(id_person) REFERENCES person(id_person)
ON DELETE RESTRICT ON UPDATE CASCADE);

show engines;
show table status;
show table status\G
insert into person values(1, 'Teppo', 'Tese');
insert into person values(2, 'Petteri', 'Kona');
insert into cats values(1, 'Kiisu', 2);
insert into cats values(2, 'Miuku', 1);
UPDATE person SET id_person=24 WHERE id_person=2;
DELETE FROM cats WHERE id_person=1;
DELETE FROM person WHERE id_person=1;
select fname from person;
select fname, lname from person;
select * from person;
SELECT * FROM testdb.person;
DROP database testdb;

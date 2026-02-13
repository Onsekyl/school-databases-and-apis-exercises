USE project;

SELECT * FROM person;
SELECT * FROM project;
SELECT * FROM hour;

SELECT lastname FROM person WHERE city=
(SELECT city FROM person WHERE lastname='Morrison');

SELECT pname FROM project WHERE place=
(SELECT city FROM person WHERE lastname='Morrison');

SELECT pname FROM project WHERE id_project IN
(SELECT id_project FROM hour WHERE id_person=
(SELECT id_person FROM person WHERE lastname='Morrison'
));

# ID, name and salary of the person with most work hours in 'Selling' which also lives in 'Helsinki'
SELECT person.id_person, CONCAT(firstname, ' ', lastname) AS name, salary
FROM person
JOIN hour ON person.id_person=hour.id_person
JOIN project ON hour.id_project=project.id_project
WHERE pname='Selling' AND city='Helsinki' AND work_hour=(
# I first thought that the subquery needs the
# same specifications as the original query.
# But I think it uses the ones from the og.
SELECT MAX(work_hour) FROM hour
);


USE library;

SELECT * FROM book;
SELECT * FROM borrow;
SELECT * FROM borrower;

SELECT firstname, lastname FROM borrower WHERE id_borrower IN
(SELECT id_borrower FROM borrow WHERE id_book IN
(SELECT id_book FROM book WHERE author='Zelanshi'
));

SELECT borrower.*, borrow.return_date FROM borrower
INNER JOIN borrow ON borrower.id_borrower=borrow.id_borrower
WHERE borrow.return_date >= '2026-01-27';

SELECT * from borrower where id_borrower IN
(Select id_borrower from borrow where id_book=
(Select id_book from book where name= 'TBA'));

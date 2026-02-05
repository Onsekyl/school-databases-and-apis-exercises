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

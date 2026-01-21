SELECT firstname, lastname, name
FROM borrower
INNER JOIN borrow ON borrower.id_borrower = borrow.id_borrower
INNER JOIN book ON borrow.id_book = book.id_book;

SELECT CONCAT(firstname, ' ', lastname) AS 'borrower name', name AS 'book name'
FROM borrower
INNER JOIN borrow ON borrower.id_borrower = borrow.id_borrower
INNER JOIN book ON borrow.id_book = book.id_book;

SELECT CONCAT(firstname, ' ', lastname) AS 'borrower name',
	   GROUP_CONCAT(name) AS 'book name'
FROM borrower
INNER JOIN borrow ON borrower.id_borrower = borrow.id_borrower
INNER JOIN book ON borrow.id_book = book.id_book
GROUP BY borrower.id_borrower;

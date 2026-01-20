USE library;

SELECT * FROM book;

SELECT author, COUNT(name) AS books FROM book GROUP BY author;
SELECT author, GROUP_CONCAT(name) AS books FROM book GROUP BY author;
SELECT postalcode, COUNT(postalcode) AS 'amount of borrowers' FROM borrower GROUP BY postalcode;

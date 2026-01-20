CREATE DATABASE library;
USE library;

# Create tables
CREATE TABLE book(
	id_book SMALLINT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255),
	author VARCHAR(255),
	isbn VARCHAR(255)) Engine=InnoDB;

	CREATE TABLE borrower(
	id_borrower SMALLINT PRIMARY KEY AUTO_INCREMENT,
	firstname VARCHAR(255),
	lastname VARCHAR(255),
	phone VARCHAR(255),
	streetaddress VARCHAR(255),
	postalcode CHAR(5)) Engine=InnoDB;

	CREATE TABLE borrow(
	id_borrow SMALLINT PRIMARY KEY AUTO_INCREMENT,
	id_book SMALLINT,
	id_borrower SMALLINT,
	borrow_date DATE,
	return_date DATE,
	FOREIGN KEY(id_book) REFERENCES book(id_book)
		ON DELETE RESTRICT ON UPDATE RESTRICT,
	FOREIGN KEY(id_borrower) REFERENCES borrower(id_borrower)
		ON DELETE RESTRICT ON UPDATE CASCADE) Engine=InnoDB;
        
# Insert data
insert into book (name, author, isbn) VALUES('Everything You Ever Wanted to Know','Upton','082305649x');
	insert into book (name, author, isbn) VALUES('Photography','Vilppu','205711499');
	insert into book (name, author, isbn) VALUES('Drawing Manual Vilppu','Zelanshi','1892053039');
	insert into book (name, author, isbn) VALUES('TBA','Zelanshi','0534613932');
	insert into book (name, author, isbn) VALUES('Shaping Space','Speight','0534613934');
	insert into book (name, author, isbn) VALUES('Art Since 1940','Speight','0131839780');
	insert into book (name, author, isbn) VALUES('Make it in Clay','Stokstad','0076417011');
	insert into book (name, author, isbn) VALUES('Art History Vol II & ala carte lab','Stokstad','205795617');
	insert into book (name, author, isbn) VALUES('Accounting Concepts','Albrecht','1111287856');
	insert into book (name, author, isbn) VALUES('Intermediate Accounting ','Stice','0538479736');
	insert into book (name, author, isbn) VALUES('Management Info Systems','Marakas','9780073376813');
	insert into book (name, author, isbn) VALUES('Management','Williams','9780757524028');
	insert into book (name, author, isbn) VALUES('Leadership Wisdom of Jesus','Manz','9781609940041');
	insert into book (name, author, isbn) VALUES('Business Law Today','Miller','9780324786156');
	insert into book (name, author, isbn) VALUES('Management Info Systems','Marakas','9780073376813');


	insert into borrower (firstname, lastname, phone, streetAddress, postalcode) VALUES('Kay','Naquin','050-555','Kotkantie 2','90100');
	insert into borrower (firstname, lastname, phone, streetAddress, postalcode) VALUES('Leonard','Rowden','050-123','Uusikatu 4','90101');
	insert into borrower (firstname, lastname, phone, streetAddress, postalcode) VALUES('Terry','Kinney','050-333','Isokatu 6','90102');
	insert into borrower (firstname, lastname, phone, streetAddress, postalcode) VALUES('Carla','Stclair','041-444','Torikatu 7','90103');
	insert into borrower (firstname, lastname, phone, streetAddress, postalcode) VALUES('Delores','Isom','041-888','Tapulikuja 9','90104');
	insert into borrower (firstname, lastname, phone, streetAddress, postalcode) VALUES('Ralph','Shane','040-999','Tuulentie 33','90100');
	insert into borrower (firstname, lastname, phone, streetAddress, postalcode) VALUES('Norman','Yarborough','040-222','Kotkantie 2','90101');
	insert into borrower (firstname, lastname, phone, streetAddress, postalcode) VALUES('Todd','Pastore','040-555','Uusikatu 66','90102');
	insert into borrower (firstname, lastname, phone, streetAddress, postalcode) VALUES('Norma','Weatherspoon','050-559','Isokatu 77','90103');
	insert into borrower (firstname, lastname, phone, streetAddress, postalcode) VALUES('Janice','Matthew','050-129','Torikatu 33','90104');
	insert into borrower (firstname, lastname, phone, streetAddress, postalcode) VALUES('Thomas','Larry','050-339','Tapulikuja 12','90100');
	insert into borrower (firstname, lastname, phone, streetAddress, postalcode) VALUES('Curtis','Fitzpatrick','041-442','Tuulentie 11','90101');
	insert into borrower (firstname, lastname, phone, streetAddress, postalcode) VALUES('Lynda','Strauss','041-880','Isokatu 2','90102');
	insert into borrower (firstname, lastname, phone, streetAddress, postalcode) VALUES('Matthew','Klug','040-993','Uusikatu 33','90103');
	insert into borrower (firstname, lastname, phone, streetAddress, postalcode) VALUES('Larry','Thoma','040-224','Kotkantie 6','90104');
	insert into borrower (firstname, lastname, phone, streetAddress, postalcode) VALUES('Arthur','Dowdy','040-557','Uusikatu 4','90100');
	insert into borrower (firstname, lastname, phone, streetAddress, postalcode) VALUES('Viola','Willis','042-111','Isokatu 66','90101');
	insert into borrower (firstname, lastname, phone, streetAddress, postalcode) VALUES('Annette','Wilks','042-222','Torikatu 24','90102');
	insert into borrower (firstname, lastname, phone, streetAddress, postalcode) VALUES('Harold','Bibb','042-333','Tapulikuja 7','90103');
	insert into borrower (firstname, lastname, phone, streetAddress, postalcode) VALUES('Marvin','Heflin','042-444','Tuulentie 4','90104');


	insert into borrow (id_book, id_borrower, borrow_date, return_date) VALUES(4,1,current_date - interval 35 day,current_date - interval 14 day);
	insert into borrow (id_book, id_borrower, borrow_date, return_date) VALUES(6,2,current_date - interval 25 day,current_date - interval 4 day);
	insert into borrow (id_book, id_borrower, borrow_date, return_date) VALUES(8,2,current_date - interval 15 day,current_date + interval 6 day);
	insert into borrow (id_book, id_borrower, borrow_date, return_date) VALUES(1,6,current_date - interval 12 day,current_date + interval 9 day);
	insert into borrow (id_book, id_borrower, borrow_date, return_date) VALUES(3,2,current_date - interval 12 day,current_date + interval 9 day);
	insert into borrow (id_book, id_borrower, borrow_date, return_date) VALUES(10,20,current_date - interval 5 day,current_date + interval 16 day);
	insert into borrow (id_book, id_borrower, borrow_date, return_date) VALUES(12,20,current_date - interval 5 day,current_date + interval 16 day);
	insert into borrow (id_book, id_borrower, borrow_date, return_date) VALUES(14,20,current_date - interval 1 day,current_date + interval 20 day);
	insert into borrow (id_book, id_borrower, borrow_date, return_date) VALUES(15,20,current_date - interval 1 day,current_date + interval 20 day);
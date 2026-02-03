CREATE DATABASE bank;
USE bank;

CREATE TABLE bank_account(
account_number VARCHAR(20) PRIMARY KEY,
balance DECIMAL(10,2),
credit_limit DECIMAL(10,2)
);

CREATE TABLE action (
idaction int PRIMARY KEY AUTO_INCREMENT,
account_number VARCHAR(20),
action varchar(45),
action_time timestamp,
amount DECIMAL(10,2)
);
  
INSERT INTO bank_account VALUES('ACC001',500,1000);
INSERT INTO bank_account VALUES('ACC002',500,2000);

SELECT * FROM bank_account;
SELECT * FROM action;

DELIMITER //
CREATE PROCEDURE debit_transfer(IN first_account VARCHAR(20), IN second_account VARCHAR(20), IN amount DECIMAL(10,2) )
  BEGIN
  DECLARE test1,test2 INT DEFAULT 0;
  START TRANSACTION;
  UPDATE bank_account SET balance=balance-amount WHERE account_number=first_account AND balance >= amount;
  SET test1=ROW_COUNT();
  UPDATE bank_account SET balance=balance+amount WHERE account_number=second_account;
  SET test2=ROW_COUNT();
    IF (test1 > 0 AND test2 > 0) THEN
      COMMIT;
      INSERT INTO action(account_number,action,amount,action_time) VALUES(first_account,'withdrawal',amount,NOW());
      INSERT INTO action(account_number,action,amount,action_time) VALUES(second_account,'deposit',amount,NOW());
    ELSE
      ROLLBACK;
  END IF;
  END //
DELIMITER ;

CALL debit_transfer('ACC001', 'ACC002', 150);
SELECT * FROM bank_account;
SELECT * FROM action;
CALL debit_transfer('ACC001', 'ACC002', 1500);
CALL debit_transfer('ACC002', 'ACC001', 600);

  CREATE TABLE Customers(
  idCustomers INT primary key auto_increment,
  customerName VARCHAR(20)
  );

  CREATE TABLE Logs(
  idLogs INT primary key auto_increment,
  customerName VARCHAR(20),
  idCustomers INT,
  updateType VARCHAR(50) DEFAULT NULL,
  updateTime TIMESTAMP
  );
  
    DELIMITER $$
  CREATE TRIGGER updateCustomer
      BEFORE UPDATE ON Customers
      FOR EACH ROW
  BEGIN
  INSERT INTO Logs
    SET updateType = 'update',
    idCustomers = OLD.idCustomers,
    customerName = OLD.customerName,
    updateTime = NOW();
  END$$
  DELIMITER ;
  
  INSERT INTO customers (customerName) VALUES('Nokia');
  INSERT INTO customers (customerName) VALUES('OAMK');
  
  SELECT * FROM logs;
  UPDATE customers SET customerName='Nokia Networks' WHERE idcustomers=1;
  Select * FROM customers;
  
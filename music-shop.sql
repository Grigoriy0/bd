DROP DATABASE IF EXISTS shop;
CREATE DATABASE shop;

USE shop;

CREATE TABLE `music-shop` (
  UNP CHAR (9) PRIMARY KEY,
  address VARCHAR (50)
);
CREATE TABLE `employees` (
  passport CHAR(9) PRIMARY KEY,
  position VARCHAR(30),
  fullName VARCHAR(50)
);
CREATE TABLE `supplies` (
  supplyId INTEGER PRIMARY KEY AUTO_INCREMENT,
  supplier VARCHAR(50),
  date DATE
);
CREATE TABLE `clients` (
  phoneNumber CHAR(12) PRIMARY KEY,
  firstName VARCHAR(15)
);
CREATE TABLE `products` (
  productId INTEGER PRIMARY KEY AUTO_INCREMENT,
  supplyId INTEGER NOT NULL,
  price FLOAT(7, 2),
  name VARCHAR (50),
  description TEXT (256),
  discount FLOAT(7, 2),
  FOREIGN KEY (supplyId) REFERENCES supplies(supplyId)
);
CREATE TABLE `operations` (
  operationId INTEGER (16) PRIMARY KEY AUTO_INCREMENT,
  productId INTEGER NOT NULL,
  employeePassport CHAR(9) NOT NULL,
  clientPhone CHAR(12) NOT NULL,
  operationDate DATETIME,
  sum FLOAT(7, 2),
  FOREIGN KEY (productId) REFERENCES products(productId),
  FOREIGN KEY (employeePassport) REFERENCES employees(passport),
  FOREIGN KEY (clientPhone) REFERENCES clients(phoneNumber)
);

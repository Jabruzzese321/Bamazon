DROP DATABASE IF EXISTS bamazondb;
CREATE DATABASE bamazondb;

USE bamazondb;

CREATE TABLE `products` (
  `item_id` int(6) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(30) NOT NULL,
  `department_name` varchar(30) NOT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `stock_quantity` int(6) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB;

LOCK TABLES `products` WRITE;

INSERT INTO `products` (`product_name`, `department_name`, `price`, `stock_quantity`)
VALUES
	('Fallout 76','Games',59.99,50),
	('Red Dead Redemption 2','Games',59.99,25),
	('Fortnite','Games',39.99,32),
    ('FIFA 19','Games',59.99,75),
	('Xbox One X','Consoles',399.99,47),
	('Xbox One S','Consoles',199.99,16),
	('Xbox Wireless Controller','Accessories',59.99,117),
	('Xbox Elite Wireless Controller','Accessories',149.99,39),
	('Xbox Wireless Adapter','Accessories',24.99,12),
	('Xbox One Wired Headset','Accessories',24.99,65);

UNLOCK TABLES;
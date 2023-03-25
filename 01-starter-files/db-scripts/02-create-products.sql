product-- -----------------------------------------------------
-- Schema full-stack-ecommerce
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `full-stack-ecommerce`;

CREATE SCHEMA `full-stack-ecommerce`;
USE `full-stack-ecommerce` ;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `room_size` INT(11) DEFAULT NULL,
   `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------

INSERT INTO product_category(category_name) VALUES ('TARGOWA 10');

INSERT INTO product (sku, name, description, image_url, active, room_size,
unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1000', 'Room 1', 'Learn JavaScript',
'assets/images/products/placeholder.png'
,1,9,19.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, room_size,
unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1001', 'Room 2', 'Learn Spring',
'assets/images/products/placeholder.png'
,1,9,29.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, room_size,
unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1002', 'Room 3', 'Learn Kubernetes',
'assets/images/products/placeholder.png'
,1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, room_size,
unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1003', 'Room 4', 'Learn IoT',
'assets/images/products/placeholder.png'
,1,100,29.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, room_size,
unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1004', 'Room 5', 'Learn Go',
'assets/images/products/placeholder.png'
,1,100,24.99,1, NOW());

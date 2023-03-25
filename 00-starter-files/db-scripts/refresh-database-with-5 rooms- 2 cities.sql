-- -----------------------------------------------------
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
  `description` VARCHAR(1955) DEFAULT NULL,
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
-- Categories
-- -----------------------------------------------------
INSERT INTO product_category(category_name) VALUES ('TARGOWA 10');
INSERT INTO product_category(category_name) VALUES ('PRUSA 6');

-- -----------------------------------------------------
-- TARGOWA 10
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, room_size, unit_price, category_id,date_created) VALUES 
('TECH-1000', 'ROOM 1', 
'The studio apartment is a modern, comfortable apartment for a maximum of two people - ideal for a business stay. Its arrangement is the epitome of functionality, where every element of space has been used with the needs of our guests in mind. Inside, in addition to a comfortable place to sleep, there is also a comfortable place to work with a laptop, a fully equipped kitchenette and a private bathroom. Modern, well-thought-out design and new furniture translate into a pleasant stay in the apartment. These advantages are complemented by a wide range of amenities, from multimedia - free high-speed Wi-Fi and a flat-screen TV with satellite channels - to household appliances and a hair dryer. Guests can also use the available air conditioning, which guarantees comfort regardless of the weather outside. In addition, thanks to the presence of a furnished balcony, guests can enjoy the charms of warm summer evenings.

LIVING AREA

Fold-out sofa, bed linen, TV, coffee table, table with chairs, wardrobe, exit to the balcony', 
'assets/images/products/roomsTags/luggagetag-luv2code-1002', 1, 10, 1599, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, room_size, unit_price, category_id,date_created) VALUES 
('TECH-1001', 'ROOM 2', 'The studio apartment is a modern, comfortable apartment for a maximum of two people - ideal for a business stay. Its arrangement is the epitome of functionality, where every element of space has been used with the needs of our guests in mind. Inside, in addition to a comfortable place to sleep, there is also a comfortable place to work with a laptop, a fully equipped kitchenette and a private bathroom. Modern, well-thought-out design and new furniture translate into a pleasant stay in the apartment. These advantages are complemented by a wide range of amenities, from multimedia - free high-speed Wi-Fi and a flat-screen TV with satellite channels - to household appliances and a hair dryer. Guests can also use the available air conditioning, which guarantees comfort regardless of the weather outside. In addition, thanks to the presence of a furnished balcony, guests can enjoy the charms of warm summer evenings.

LIVING AREA

Fold-out sofa, bed linen, TV, coffee table, table with chairs, wardrobe, exit to the balcony', 
'assets/images/products/roomsTags/luggagetag-luv2code-1004', 1, 10, 1599, 1, NOW());

-- -----------------------------------------------------
-- PRUSA 6
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, room_size, unit_price, category_id,date_created) VALUES 
('MUG-1000', 'ROOM 1', ' The studio consists of a living room with a double bed and a double sofa bed, a kitchenette, and a bathroom with a shower cabin. The décor of the apartment is sleek and modern, while well-though out decorative elements add a touch of elegance. The arrangement of the space, such as a curtained-off sleeping area, guarantees the functionality and comfort. To provide optimal temperature in every season and weather, the studio has air-conditioning. Other amenities include a flat-screen TV with cable channels and free Wi-Fi Internet connection. Full bathroom and kitchen facilities give our guests a sense of independence and homely ease. Panoramic windows of the apartment are facing the courtyard, which ensures peace and quiet.', 
'assets/images/products/roomsTags/luggagetag-luv2code-1006', 1, 12, 1399, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, room_size, unit_price, category_id,date_created) VALUES 
('MUG-1002', 'ROOM 2', ' The studio consists of a living room with a double bed and a double sofa bed, a kitchenette, and a bathroom with a shower cabin. The décor of the apartment is sleek and modern, while well-though out decorative elements add a touch of elegance. The arrangement of the space, such as a curtained-off sleeping area, guarantees the functionality and comfort. To provide optimal temperature in every season and weather, the studio has air-conditioning. Other amenities include a flat-screen TV with cable channels and free Wi-Fi Internet connection. Full bathroom and kitchen facilities give our guests a sense of independence and homely ease. Panoramic windows of the apartment are facing the courtyard, which ensures peace and quiet.', 
'assets/images/products/roomsTags/luggagetag-luv2code-1010', 1, 9, 1099, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, room_size, unit_price, category_id,date_created) VALUES 
('MUG-1002', 'ROOM 3', ' The studio consists of a living room with a double bed and a double sofa bed, a kitchenette, and a bathroom with a shower cabin. The décor of the apartment is sleek and modern, while well-though out decorative elements add a touch of elegance. The arrangement of the space, such as a curtained-off sleeping area, guarantees the functionality and comfort. To provide optimal temperature in every season and weather, the studio has air-conditioning. Other amenities include a flat-screen TV with cable channels and free Wi-Fi Internet connection. Full bathroom and kitchen facilities give our guests a sense of independence and homely ease. Panoramic windows of the apartment are facing the courtyard, which ensures peace and quiet.', 
'assets/images/products/roomsTags/luggagetag-luv2code-1015', 1, 9, 1099, 2, NOW());

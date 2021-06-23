DROP TABLE IF EXISTS `entity`;
CREATE TABLE `entity` (
  `id` INT(16) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(256) NOT NULL,
  `amount` INT(12) NOT NULL,
  `description` TEXT,
  `type` ENUM('green','red','grey','yellow') DEFAULT 'red',
  `created_at` DATETIME DEFAULT (CURRENT_DATE),
  `updated_at` DATETIME DEFAULT (CURRENT_DATE),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE `transaction` (
  `id` INT(16) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(256) NOT NULL,
  `ingress_id` INT(16) NOT NULL,
  `egress_id` INT(16) NOT NULL,
  `amount` INT(12) NOT NULL,
  `created_at` DATETIME DEFAULT (CURRENT_DATE),
  `updated_at` DATETIME DEFAULT (CURRENT_DATE),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

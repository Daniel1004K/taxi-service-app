SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for drivers
-- ----------------------------
DROP TABLE IF EXISTS `drivers`;
CREATE TABLE `drivers` (
                           `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                           `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                           `license_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                           `deleted` bit(1) NOT NULL DEFAULT b'0',
                           `login` varchar(45) DEFAULT NULL,
                           `password` varchar(45) DEFAULT NULL,
                           PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for manufacturers
-- ----------------------------
DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE `manufacturers` (
                                 `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                                 `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                 `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                 `deleted` bit(1) NOT NULL DEFAULT b'0',
                                 PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;


-- ----------------------------
-- Table structure for cars
-- ----------------------------
DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars` (
                        `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                        `model` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                        `manufacturer_id` bigint unsigned NOT NULL,
                        `deleted` bit(1) NOT NULL DEFAULT b'0',
                        PRIMARY KEY (`id`) USING BTREE,
                        KEY `FK_manufacturer_id` (`manufacturer_id`) USING BTREE,
                        CONSTRAINT `FK_manufacturer_id` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for cars_drivers
-- ----------------------------
DROP TABLE IF EXISTS `cars_drivers`;
CREATE TABLE `cars_drivers` (
                                `car_id` bigint unsigned NOT NULL,
                                `driver_id` bigint unsigned NOT NULL,
                                PRIMARY KEY (`car_id`,`driver_id`) USING BTREE,
                                KEY `driver_id` (`driver_id`) USING BTREE,
                                KEY `car_id` (`car_id`) USING BTREE,
                                CONSTRAINT `car_id` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
                                CONSTRAINT `driver_id` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
SET FOREIGN_KEY_CHECKS = 1;

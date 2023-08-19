/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : db_winframes

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 16/06/2021 17:09:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for advertisement
-- ----------------------------
DROP TABLE IF EXISTS `advertisement`;
CREATE TABLE `advertisement`  (
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `day` date NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of advertisement
-- ----------------------------
INSERT INTO `advertisement` VALUES (33.03, '2016-06-01');
INSERT INTO `advertisement` VALUES (43.84, '2016-06-02');
INSERT INTO `advertisement` VALUES (37.25, '2016-06-03');
INSERT INTO `advertisement` VALUES (50.16, '2016-06-04');
INSERT INTO `advertisement` VALUES (26.63, '2016-06-05');
INSERT INTO `advertisement` VALUES (47.36, '2016-06-06');
INSERT INTO `advertisement` VALUES (32.02, '2016-06-07');
INSERT INTO `advertisement` VALUES (28.16, '2016-06-08');
INSERT INTO `advertisement` VALUES (38.12, '2016-06-09');
INSERT INTO `advertisement` VALUES (48.01, '2016-06-10');
INSERT INTO `advertisement` VALUES (27.56, '2016-06-11');
INSERT INTO `advertisement` VALUES (34.67, '2016-06-12');
INSERT INTO `advertisement` VALUES (37.09, '2016-06-13');
INSERT INTO `advertisement` VALUES (31.68, '2016-06-14');
INSERT INTO `advertisement` VALUES (22.61, '2016-06-15');
INSERT INTO `advertisement` VALUES (30.03, '2016-06-16');
INSERT INTO `advertisement` VALUES (22.13, '2016-06-17');
INSERT INTO `advertisement` VALUES (42.17, '2016-06-18');
INSERT INTO `advertisement` VALUES (21.81, '2016-06-19');
INSERT INTO `advertisement` VALUES (28.69, '2016-06-20');
INSERT INTO `advertisement` VALUES (34.72, '2016-06-21');
INSERT INTO `advertisement` VALUES (49.44, '2016-06-22');
INSERT INTO `advertisement` VALUES (25.82, '2016-06-23');
INSERT INTO `advertisement` VALUES (45.56, '2016-06-24');
INSERT INTO `advertisement` VALUES (48.21, '2016-06-25');
INSERT INTO `advertisement` VALUES (21.54, '2016-06-26');
INSERT INTO `advertisement` VALUES (37.76, '2016-06-27');
INSERT INTO `advertisement` VALUES (32.50, '2016-06-28');
INSERT INTO `advertisement` VALUES (26.66, '2016-06-29');
INSERT INTO `advertisement` VALUES (49.70, '2016-06-30');

-- ----------------------------
-- Table structure for application
-- ----------------------------
DROP TABLE IF EXISTS `application`;
CREATE TABLE `application`  (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `platform` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `average_rating` double NULL DEFAULT NULL,
  `downloads` int(11) NULL DEFAULT NULL,
  `income` double NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of application
-- ----------------------------
INSERT INTO `application` VALUES (1, 'Manage your budget', 'iOS', 'business', 4.640775, 34989, 804397.11);
INSERT INTO `application` VALUES (2, 'Banking App', 'iOS', 'business', 5.349886, 4970, 79470.3);
INSERT INTO `application` VALUES (3, 'CouchSurfing', 'iOS', 'travel', 6.391226, 20210, 646517.9);
INSERT INTO `application` VALUES (4, 'Shopping List', 'iOS', 'utility', 6.063923, 33594, 940296.06);
INSERT INTO `application` VALUES (5, 'Stock 24 News', 'Android', 'business', 5.643462, 8295, 348307.05);
INSERT INTO `application` VALUES (6, 'Perfect Notes', 'Android', 'utility', 9.960599, 29703, 742277.97);
INSERT INTO `application` VALUES (7, 'Amazing filters', 'Android', 'camera', 8.742702, 4120, 197718.8);
INSERT INTO `application` VALUES (8, 'OverseasTrade', 'Windows Phone', 'business', 9.500777, 12502, 74886.98);
INSERT INTO `application` VALUES (9, 'Scientific Calculator', 'Windows Phone', 'utility', 5.721721, 13015, 572529.85);
INSERT INTO `application` VALUES (10, 'Corporate Chat', 'Windows Phone', 'business', 6.99954, 13712, 603190.88);
INSERT INTO `application` VALUES (11, 'Click & Travel', 'Windows Phone', 'travel', 5.534658, 26192, 602154.08);
INSERT INTO `application` VALUES (12, 'Cheap Apartments', 'Windows Phone', 'travel', 5.718413, 12727, 432590.73);

-- ----------------------------
-- Table structure for auction
-- ----------------------------
DROP TABLE IF EXISTS `auction`;
CREATE TABLE `auction`  (
  `id` int(11) NOT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `asking_price` decimal(10, 2) NULL DEFAULT NULL,
  `final_price` decimal(10, 2) NULL DEFAULT NULL,
  `views` int(11) NULL DEFAULT NULL,
  `participants` int(11) NULL DEFAULT NULL,
  `country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ended` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auction
-- ----------------------------
INSERT INTO `auction` VALUES (1, 1, 190.07, 219.66, 93, 16, 'Spain', '2017-01-05');
INSERT INTO `auction` VALUES (2, 4, 34.70, 54.70, 187, 31, 'Spain', '2017-01-05');
INSERT INTO `auction` VALUES (3, 5, 124.85, 155.95, 237, 59, 'Spain', '2017-01-05');
INSERT INTO `auction` VALUES (4, 3, 141.42, 205.73, 289, 58, 'Spain', '2017-01-06');
INSERT INTO `auction` VALUES (5, 2, 31.11, 66.45, 165, 83, 'Spain', '2017-01-09');
INSERT INTO `auction` VALUES (6, 3, 106.18, 125.07, 27, 3, 'Spain', '2017-01-06');
INSERT INTO `auction` VALUES (7, 2, 124.83, 150.93, 266, 53, 'Spain', '2017-01-06');
INSERT INTO `auction` VALUES (8, 1, 151.71, 164.54, 158, 53, 'Spain', '2017-01-08');
INSERT INTO `auction` VALUES (9, 4, 51.44, 87.02, 235, 59, 'France', '2017-01-05');
INSERT INTO `auction` VALUES (10, 2, 118.97, 178.21, 191, 38, 'France', '2017-01-05');
INSERT INTO `auction` VALUES (11, 5, 38.50, 69.61, 44, 7, 'France', '2017-01-06');
INSERT INTO `auction` VALUES (12, 4, 20.87, 35.57, 298, 37, 'France', '2017-01-08');
INSERT INTO `auction` VALUES (13, 2, 56.45, 112.42, 267, 45, 'Germany', '2017-01-05');
INSERT INTO `auction` VALUES (14, 3, 189.20, 242.16, 234, 33, 'Germany', '2017-01-06');
INSERT INTO `auction` VALUES (15, 2, 43.15, 88.01, 92, 12, 'Germany', '2017-01-06');
INSERT INTO `auction` VALUES (16, 5, 158.92, 179.18, 17, 2, 'Germany', '2017-01-06');
INSERT INTO `auction` VALUES (17, 1, 64.55, 129.46, 155, 78, 'UK', '2017-01-05');
INSERT INTO `auction` VALUES (18, 4, 196.07, 237.86, 63, 21, 'UK', '2017-01-05');
INSERT INTO `auction` VALUES (19, 2, 171.26, 190.57, 194, 39, 'UK', '2017-01-06');
INSERT INTO `auction` VALUES (20, 3, 157.81, 206.63, 218, 31, 'Italy', '2017-01-05');
INSERT INTO `auction` VALUES (21, 2, 135.16, 197.43, 47, 12, 'Italy', '2017-01-07');
INSERT INTO `auction` VALUES (22, 4, 172.98, 197.07, 297, 42, 'Italy', '2017-01-06');
INSERT INTO `auction` VALUES (23, 5, 163.89, 218.99, 90, 18, 'Italy', '2017-01-09');
INSERT INTO `auction` VALUES (24, 3, 115.76, 137.49, 136, 19, 'Italy', '2017-01-06');
INSERT INTO `auction` VALUES (25, 3, 149.89, 208.09, 25, 3, 'Italy', '2017-01-07');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int(11) NOT NULL,
  `author_id` int(11) NULL DEFAULT NULL,
  `publish_year` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `rating` smallint(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, 1, '2016', 40, 9);
INSERT INTO `book` VALUES (2, 1, '2016', 33, 5);
INSERT INTO `book` VALUES (3, 2, '2016', 28, 7);
INSERT INTO `book` VALUES (4, 2, '2015', 31, 9);
INSERT INTO `book` VALUES (5, 3, '2015', 37, 5);
INSERT INTO `book` VALUES (6, 3, '2014', 31, 3);
INSERT INTO `book` VALUES (7, 1, '2016', 35, 7);
INSERT INTO `book` VALUES (8, 2, '2016', 28, 5);
INSERT INTO `book` VALUES (9, 1, '2015', 32, 7);
INSERT INTO `book` VALUES (10, 3, '2016', 36, 3);

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `join_date` date NULL DEFAULT NULL,
  `country` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, 'Eric', 'Rivera', '2015-10-24', 'USA');
INSERT INTO `customer` VALUES (2, 'Brandon', 'Thomas', '2015-07-05', 'USA');
INSERT INTO `customer` VALUES (3, 'Ryan', 'Young', '2015-09-15', 'USA');
INSERT INTO `customer` VALUES (4, 'Janet', 'Simmons', '2015-08-20', 'Scotland');
INSERT INTO `customer` VALUES (5, 'Jeffrey', 'Washington', '2015-03-04', 'Scotland');
INSERT INTO `customer` VALUES (6, 'Kathryn', 'Reed', '2015-02-15', 'Australia');
INSERT INTO `customer` VALUES (7, 'Catherine', 'Coleman', '2015-04-05', 'Australia');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (1, 'IT');
INSERT INTO `department` VALUES (2, 'Management');
INSERT INTO `department` VALUES (3, 'Human Resources');
INSERT INTO `department` VALUES (4, 'Accounting');
INSERT INTO `department` VALUES (5, 'Help Desk');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `last_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `department_id` int(11) NULL DEFAULT NULL,
  `salary` int(11) NULL DEFAULT NULL,
  `years_worked` smallint(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, 'Diane', 'Turner', 1, 5330, 4);
INSERT INTO `employee` VALUES (2, 'Clarence', 'Robinson', 1, 3617, 2);
INSERT INTO `employee` VALUES (3, 'Eugene', 'Phillips', 1, 4877, 2);
INSERT INTO `employee` VALUES (4, 'Philip', 'Mitchell', 1, 5259, 3);
INSERT INTO `employee` VALUES (5, 'Ann', 'Wright', 2, 2094, 5);
INSERT INTO `employee` VALUES (6, 'Charles', 'Wilson', 2, 5167, 5);
INSERT INTO `employee` VALUES (7, 'Russell', 'Johnson', 2, 3762, 4);
INSERT INTO `employee` VALUES (8, 'Jacqueline', 'Cook', 2, 6923, 3);
INSERT INTO `employee` VALUES (9, 'Larry', 'Lee', 3, 2796, 4);
INSERT INTO `employee` VALUES (10, 'Willie', 'Patterson', 3, 4771, 5);
INSERT INTO `employee` VALUES (11, 'Janet', 'Ramirez', 3, 3782, 2);
INSERT INTO `employee` VALUES (12, 'Doris', 'Bryant', 3, 6419, 1);
INSERT INTO `employee` VALUES (13, 'Amy', 'Williams', 3, 6261, 1);
INSERT INTO `employee` VALUES (14, 'Keith', 'Scott', 3, 4928, 8);
INSERT INTO `employee` VALUES (15, 'Karen', 'Morris', 4, 6347, 6);
INSERT INTO `employee` VALUES (16, 'Kathy', 'Sanders', 4, 6286, 1);
INSERT INTO `employee` VALUES (17, 'Joe', 'Thompson', 5, 5639, 3);
INSERT INTO `employee` VALUES (18, 'Barbara', 'Clark', 5, 3232, 1);
INSERT INTO `employee` VALUES (19, 'Todd', 'Bell', 5, 4653, 1);
INSERT INTO `employee` VALUES (20, 'Ronald', 'Butler', 5, 2076, 5);

-- ----------------------------
-- Table structure for game
-- ----------------------------
DROP TABLE IF EXISTS `game`;
CREATE TABLE `game`  (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `platform` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `genre` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `editor_rating` smallint(6) NULL DEFAULT NULL,
  `size` int(11) NULL DEFAULT NULL,
  `released` date NULL DEFAULT NULL,
  `updated` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game
-- ----------------------------
INSERT INTO `game` VALUES (1, 'Go Bunny', 'iOS', 'action', 5, 101, '2015-05-01', '2015-07-13');
INSERT INTO `game` VALUES (2, 'Fire Rescue', 'iOS', 'action', 9, 36, '2015-07-30', '2016-09-27');
INSERT INTO `game` VALUES (3, 'Eternal Stone', 'iOS', 'adventure', 10, 125, '2015-03-20', '2015-10-25');
INSERT INTO `game` VALUES (4, 'Froggy Adventure', 'iOS', 'adventure', 7, 127, '2015-05-01', '2015-07-02');
INSERT INTO `game` VALUES (5, 'Speed Race', 'iOS', 'racing', 7, 127, '2015-03-20', '2015-07-25');
INSERT INTO `game` VALUES (6, 'Monsters in Dungeon', 'Android', 'adventure', 9, 10, '2015-12-01', '2015-12-15');
INSERT INTO `game` VALUES (7, 'Shoot in Time', 'Android', 'shooting', 9, 123, '2015-12-01', '2016-03-20');
INSERT INTO `game` VALUES (8, 'Hit Brick', 'Android', 'action', 4, 54, '2015-05-01', '2016-01-05');
INSERT INTO `game` VALUES (9, 'The Square', 'Android', 'action', 4, 86, '2015-12-01', '2016-03-16');
INSERT INTO `game` VALUES (10, 'Duck Dash', 'Android', 'shooting', 4, 36, '2015-07-30', '2016-05-23');
INSERT INTO `game` VALUES (11, 'Perfect Time', 'Windows Phone', 'action', 6, 55, '2015-12-01', '2016-01-07');
INSERT INTO `game` VALUES (12, 'First Finish', 'Windows Phone', 'racing', 7, 44, '2015-10-01', '2016-02-20');

-- ----------------------------
-- Table structure for game_purchase
-- ----------------------------
DROP TABLE IF EXISTS `game_purchase`;
CREATE TABLE `game_purchase`  (
  `id` int(11) NOT NULL,
  `game_id` int(11) NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_purchase
-- ----------------------------
INSERT INTO `game_purchase` VALUES (1, 7, 15.99, '2016-03-07');
INSERT INTO `game_purchase` VALUES (2, 12, 13.99, '2016-08-13');
INSERT INTO `game_purchase` VALUES (3, 6, 11.99, '2016-01-21');
INSERT INTO `game_purchase` VALUES (4, 11, 7.99, '2016-10-21');
INSERT INTO `game_purchase` VALUES (5, 4, 12.99, '2016-05-03');
INSERT INTO `game_purchase` VALUES (6, 2, 1.99, '2016-07-08');
INSERT INTO `game_purchase` VALUES (7, 2, 5.99, '2016-03-29');
INSERT INTO `game_purchase` VALUES (8, 10, 18.99, '2016-01-05');
INSERT INTO `game_purchase` VALUES (9, 8, 3.99, '2016-07-18');
INSERT INTO `game_purchase` VALUES (10, 4, 7.99, '2016-06-04');
INSERT INTO `game_purchase` VALUES (11, 12, 14.99, '2016-10-16');
INSERT INTO `game_purchase` VALUES (12, 10, 15.99, '2016-08-23');
INSERT INTO `game_purchase` VALUES (13, 5, 13.99, '2016-09-20');
INSERT INTO `game_purchase` VALUES (14, 9, 14.99, '2016-07-17');
INSERT INTO `game_purchase` VALUES (15, 10, 10.99, '2016-06-07');
INSERT INTO `game_purchase` VALUES (16, 2, 1.99, '2016-06-09');
INSERT INTO `game_purchase` VALUES (17, 8, 8.99, '2016-04-13');
INSERT INTO `game_purchase` VALUES (18, 1, 6.99, '2016-01-12');
INSERT INTO `game_purchase` VALUES (19, 2, 3.99, '2016-06-18');
INSERT INTO `game_purchase` VALUES (20, 6, 19.99, '2016-08-07');
INSERT INTO `game_purchase` VALUES (21, 6, 7.99, '2016-04-06');
INSERT INTO `game_purchase` VALUES (22, 12, 5.99, '2016-07-24');
INSERT INTO `game_purchase` VALUES (23, 2, 10.99, '2016-08-05');
INSERT INTO `game_purchase` VALUES (24, 12, 16.99, '2016-07-21');
INSERT INTO `game_purchase` VALUES (25, 9, 4.99, '2016-10-05');
INSERT INTO `game_purchase` VALUES (26, 8, 11.99, '2016-02-27');
INSERT INTO `game_purchase` VALUES (27, 12, 15.99, '2016-05-26');
INSERT INTO `game_purchase` VALUES (28, 3, 17.99, '2016-01-30');
INSERT INTO `game_purchase` VALUES (29, 9, 7.99, '2016-01-21');
INSERT INTO `game_purchase` VALUES (30, 8, 19.99, '2016-06-28');
INSERT INTO `game_purchase` VALUES (31, 2, 7.99, '2016-07-09');
INSERT INTO `game_purchase` VALUES (32, 9, 1.99, '2016-10-14');
INSERT INTO `game_purchase` VALUES (33, 5, 15.99, '2016-07-04');
INSERT INTO `game_purchase` VALUES (34, 4, 19.99, '2016-01-27');
INSERT INTO `game_purchase` VALUES (35, 5, 14.99, '2016-04-06');
INSERT INTO `game_purchase` VALUES (36, 4, 13.99, '2016-03-27');
INSERT INTO `game_purchase` VALUES (37, 5, 12.99, '2016-07-19');
INSERT INTO `game_purchase` VALUES (38, 12, 7.99, '2016-06-20');
INSERT INTO `game_purchase` VALUES (39, 11, 4.99, '2016-01-02');
INSERT INTO `game_purchase` VALUES (40, 1, 8.99, '2016-08-17');
INSERT INTO `game_purchase` VALUES (41, 4, 18.99, '2016-06-02');
INSERT INTO `game_purchase` VALUES (42, 8, 7.99, '2016-04-20');
INSERT INTO `game_purchase` VALUES (43, 5, 14.99, '2016-06-05');
INSERT INTO `game_purchase` VALUES (44, 2, 7.99, '2016-04-08');
INSERT INTO `game_purchase` VALUES (45, 8, 17.99, '2016-06-03');
INSERT INTO `game_purchase` VALUES (46, 6, 16.99, '2016-10-10');
INSERT INTO `game_purchase` VALUES (47, 3, 13.99, '2016-10-04');
INSERT INTO `game_purchase` VALUES (48, 1, 9.99, '2016-09-29');
INSERT INTO `game_purchase` VALUES (49, 3, 9.99, '2016-03-25');
INSERT INTO `game_purchase` VALUES (50, 7, 13.99, '2016-02-01');
INSERT INTO `game_purchase` VALUES (51, 4, 15.99, '2016-08-29');
INSERT INTO `game_purchase` VALUES (52, 3, 9.99, '2016-03-13');
INSERT INTO `game_purchase` VALUES (53, 6, 14.99, '2016-04-29');
INSERT INTO `game_purchase` VALUES (54, 12, 6.99, '2016-05-09');
INSERT INTO `game_purchase` VALUES (55, 9, 14.99, '2016-06-07');
INSERT INTO `game_purchase` VALUES (56, 8, 18.99, '2016-09-24');
INSERT INTO `game_purchase` VALUES (57, 6, 8.99, '2016-10-30');
INSERT INTO `game_purchase` VALUES (58, 11, 4.99, '2016-05-11');
INSERT INTO `game_purchase` VALUES (59, 2, 8.99, '2016-08-22');
INSERT INTO `game_purchase` VALUES (60, 9, 2.99, '2016-03-24');

-- ----------------------------
-- Table structure for giftcard
-- ----------------------------
DROP TABLE IF EXISTS `giftcard`;
CREATE TABLE `giftcard`  (
  `id` int(11) NOT NULL,
  `amount_worth` int(11) NULL DEFAULT NULL,
  `customer_id` int(11) NULL DEFAULT NULL,
  `payment_date` date NULL DEFAULT NULL,
  `payment_amount` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of giftcard
-- ----------------------------
INSERT INTO `giftcard` VALUES (1, 30, 5, '2016-03-23', 15);
INSERT INTO `giftcard` VALUES (2, 30, 6, '2016-03-21', 15);
INSERT INTO `giftcard` VALUES (3, 30, 5, '2016-04-07', 17);
INSERT INTO `giftcard` VALUES (4, 50, 1, '2016-03-22', 33);
INSERT INTO `giftcard` VALUES (5, 50, 4, '2016-02-22', 36);
INSERT INTO `giftcard` VALUES (6, 100, 4, '2016-02-09', 99);
INSERT INTO `giftcard` VALUES (7, 100, 1, '2016-03-14', 73);
INSERT INTO `giftcard` VALUES (8, 100, 2, '2016-02-11', 83);
INSERT INTO `giftcard` VALUES (9, 100, 1, '2016-04-07', 78);

-- ----------------------------
-- Table structure for journey
-- ----------------------------
DROP TABLE IF EXISTS `journey`;
CREATE TABLE `journey`  (
  `id` int(11) NOT NULL,
  `train_id` int(11) NULL DEFAULT NULL,
  `route_id` int(11) NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of journey
-- ----------------------------
INSERT INTO `journey` VALUES (1, 1, 1, '2016-01-03');
INSERT INTO `journey` VALUES (2, 1, 2, '2016-01-04');
INSERT INTO `journey` VALUES (3, 1, 3, '2016-01-05');
INSERT INTO `journey` VALUES (4, 1, 4, '2016-01-06');
INSERT INTO `journey` VALUES (5, 2, 2, '2016-01-03');
INSERT INTO `journey` VALUES (6, 2, 3, '2016-01-04');
INSERT INTO `journey` VALUES (7, 2, 4, '2016-01-05');
INSERT INTO `journey` VALUES (8, 2, 5, '2016-01-06');
INSERT INTO `journey` VALUES (9, 3, 3, '2016-01-03');
INSERT INTO `journey` VALUES (10, 3, 5, '2016-01-04');
INSERT INTO `journey` VALUES (11, 3, 5, '2016-01-05');
INSERT INTO `journey` VALUES (12, 3, 6, '2016-01-06');
INSERT INTO `journey` VALUES (13, 4, 4, '2016-01-04');
INSERT INTO `journey` VALUES (14, 4, 5, '2016-01-04');
INSERT INTO `journey` VALUES (15, 4, 6, '2016-01-05');
INSERT INTO `journey` VALUES (16, 4, 7, '2016-01-06');
INSERT INTO `journey` VALUES (17, 5, 2, '2016-01-03');
INSERT INTO `journey` VALUES (18, 5, 1, '2016-01-05');
INSERT INTO `journey` VALUES (19, 5, 3, '2016-01-05');
INSERT INTO `journey` VALUES (20, 5, 1, '2016-03-06');
INSERT INTO `journey` VALUES (21, 6, 3, '2016-01-03');
INSERT INTO `journey` VALUES (22, 6, 3, '2016-01-04');
INSERT INTO `journey` VALUES (23, 6, 1, '2016-01-05');
INSERT INTO `journey` VALUES (24, 6, 4, '2016-01-06');
INSERT INTO `journey` VALUES (25, 1, 5, '2016-01-03');
INSERT INTO `journey` VALUES (26, 6, 1, '2016-01-04');
INSERT INTO `journey` VALUES (27, 3, 3, '2016-01-05');
INSERT INTO `journey` VALUES (28, 4, 6, '2016-01-06');
INSERT INTO `journey` VALUES (29, 3, 4, '2016-01-03');
INSERT INTO `journey` VALUES (30, 5, 6, '2016-01-04');

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie`  (
  `id` int(11) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `release_year` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `genre` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `editor_rating` smallint(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES (1, '阿凡达', '2009', '科幻', 8);
INSERT INTO `movie` VALUES (2, '泰坦尼克号', '1997', '剧情', 10);
INSERT INTO `movie` VALUES (3, '教父', '1972', '剧情', 8);
INSERT INTO `movie` VALUES (4, '艳舞女郎', '1995', '纪录片', 3);
INSERT INTO `movie` VALUES (5, '外太空计划9', '1959', '科幻', 2);

-- ----------------------------
-- Table structure for order_position
-- ----------------------------
DROP TABLE IF EXISTS `order_position`;
CREATE TABLE `order_position`  (
  `id` int(11) NOT NULL,
  `product_id` int(11) NULL DEFAULT NULL,
  `order_id` int(11) NULL DEFAULT NULL,
  `quantity` smallint(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_position
-- ----------------------------
INSERT INTO `order_position` VALUES (1, 1, 9, 7);
INSERT INTO `order_position` VALUES (2, 1, 6, 15);
INSERT INTO `order_position` VALUES (3, 7, 2, 1);
INSERT INTO `order_position` VALUES (4, 1, 4, 24);
INSERT INTO `order_position` VALUES (5, 1, 5, 16);
INSERT INTO `order_position` VALUES (6, 3, 8, 7);
INSERT INTO `order_position` VALUES (7, 5, 12, 5);
INSERT INTO `order_position` VALUES (8, 2, 12, 1);
INSERT INTO `order_position` VALUES (9, 5, 10, 20);
INSERT INTO `order_position` VALUES (10, 2, 8, 14);
INSERT INTO `order_position` VALUES (11, 4, 6, 28);
INSERT INTO `order_position` VALUES (12, 6, 3, 15);
INSERT INTO `order_position` VALUES (13, 6, 6, 16);
INSERT INTO `order_position` VALUES (14, 4, 1, 8);
INSERT INTO `order_position` VALUES (15, 2, 8, 13);
INSERT INTO `order_position` VALUES (16, 5, 4, 27);
INSERT INTO `order_position` VALUES (17, 2, 8, 30);
INSERT INTO `order_position` VALUES (18, 7, 6, 29);
INSERT INTO `order_position` VALUES (19, 1, 10, 6);
INSERT INTO `order_position` VALUES (20, 6, 5, 21);
INSERT INTO `order_position` VALUES (21, 1, 11, 9);
INSERT INTO `order_position` VALUES (22, 6, 7, 4);
INSERT INTO `order_position` VALUES (23, 5, 8, 27);
INSERT INTO `order_position` VALUES (24, 7, 1, 25);
INSERT INTO `order_position` VALUES (25, 4, 3, 16);
INSERT INTO `order_position` VALUES (26, 5, 5, 4);
INSERT INTO `order_position` VALUES (27, 4, 6, 1);
INSERT INTO `order_position` VALUES (28, 2, 6, 5);
INSERT INTO `order_position` VALUES (29, 5, 4, 29);
INSERT INTO `order_position` VALUES (30, 4, 11, 21);
INSERT INTO `order_position` VALUES (31, 4, 10, 18);
INSERT INTO `order_position` VALUES (32, 6, 1, 5);
INSERT INTO `order_position` VALUES (33, 4, 5, 5);
INSERT INTO `order_position` VALUES (34, 3, 12, 19);
INSERT INTO `order_position` VALUES (35, 6, 5, 29);
INSERT INTO `order_position` VALUES (36, 5, 9, 21);
INSERT INTO `order_position` VALUES (37, 6, 7, 25);
INSERT INTO `order_position` VALUES (38, 4, 4, 3);
INSERT INTO `order_position` VALUES (39, 6, 9, 21);
INSERT INTO `order_position` VALUES (40, 3, 4, 15);
INSERT INTO `order_position` VALUES (41, 6, 12, 17);
INSERT INTO `order_position` VALUES (42, 2, 3, 18);
INSERT INTO `order_position` VALUES (43, 2, 7, 30);
INSERT INTO `order_position` VALUES (44, 5, 5, 2);
INSERT INTO `order_position` VALUES (45, 6, 3, 26);
INSERT INTO `order_position` VALUES (46, 3, 3, 13);
INSERT INTO `order_position` VALUES (47, 2, 8, 29);
INSERT INTO `order_position` VALUES (48, 7, 11, 26);
INSERT INTO `order_position` VALUES (49, 3, 8, 12);
INSERT INTO `order_position` VALUES (50, 3, 6, 4);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `introduced` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 'Frozen Yoghurt', '2016-01-26');
INSERT INTO `product` VALUES (2, 'Ice cubes', '2016-04-10');
INSERT INTO `product` VALUES (3, 'Ice cream', '2016-01-05');
INSERT INTO `product` VALUES (4, 'Skis', '2016-04-09');
INSERT INTO `product` VALUES (5, 'Snowboard', '2016-02-01');
INSERT INTO `product` VALUES (6, 'Sledge', '2016-02-20');
INSERT INTO `product` VALUES (7, 'Freezer', '2016-01-16');

-- ----------------------------
-- Table structure for purchase
-- ----------------------------
DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase`  (
  `id` int(11) NOT NULL,
  `department_id` int(11) NULL DEFAULT NULL,
  `item` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `price` decimal(10, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase
-- ----------------------------
INSERT INTO `purchase` VALUES (1, 4, 'monitor', 531);
INSERT INTO `purchase` VALUES (2, 1, 'printer', 315);
INSERT INTO `purchase` VALUES (3, 3, 'whiteboard', 170);
INSERT INTO `purchase` VALUES (4, 5, 'training', 117);
INSERT INTO `purchase` VALUES (5, 3, 'computer', 2190);
INSERT INTO `purchase` VALUES (6, 1, 'monitor', 418);
INSERT INTO `purchase` VALUES (7, 3, 'whiteboard', 120);
INSERT INTO `purchase` VALUES (8, 3, 'monitor', 388);
INSERT INTO `purchase` VALUES (9, 5, 'paper', 37);
INSERT INTO `purchase` VALUES (10, 1, 'paper', 695);
INSERT INTO `purchase` VALUES (11, 3, 'projector', 407);
INSERT INTO `purchase` VALUES (12, 4, 'garden party', 986);
INSERT INTO `purchase` VALUES (13, 5, 'projector', 481);
INSERT INTO `purchase` VALUES (14, 2, 'chair', 180);
INSERT INTO `purchase` VALUES (15, 2, 'desk', 854);
INSERT INTO `purchase` VALUES (16, 2, 'post-it', 15);
INSERT INTO `purchase` VALUES (17, 3, 'paper', 60);
INSERT INTO `purchase` VALUES (18, 2, 'tv', 943);
INSERT INTO `purchase` VALUES (19, 2, 'desk', 478);
INSERT INTO `purchase` VALUES (20, 5, 'keyboard', 214);

-- ----------------------------
-- Table structure for repairs
-- ----------------------------
DROP TABLE IF EXISTS `repairs`;
CREATE TABLE `repairs`  (
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `day` date NULL DEFAULT NULL,
  `free_repairs` int(11) NULL DEFAULT NULL,
  `paid_repairs` int(11) NULL DEFAULT NULL,
  `revenue` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of repairs
-- ----------------------------
INSERT INTO `repairs` VALUES ('huawei mate 30', '2020-03-01', 51, 21, 1008);
INSERT INTO `repairs` VALUES ('huawei mate 30', '2020-03-02', 73, 15, 1320);
INSERT INTO `repairs` VALUES ('huawei mate 30', '2020-03-03', 57, 30, 1380);
INSERT INTO `repairs` VALUES ('huawei mate 30', '2020-03-04', 47, 20, 1740);
INSERT INTO `repairs` VALUES ('huawei mate 30', '2020-03-05', 49, 21, 861);
INSERT INTO `repairs` VALUES ('Samsung S10', '2020-03-01', 73, 28, 2044);
INSERT INTO `repairs` VALUES ('Samsung S10', '2020-03-02', 70, 13, 1001);
INSERT INTO `repairs` VALUES ('Samsung S10', '2020-03-03', 71, 25, 2425);
INSERT INTO `repairs` VALUES ('Samsung S10', '2020-03-04', 66, 32, 1920);
INSERT INTO `repairs` VALUES ('Samsung S10', '2020-03-05', 66, 27, 1539);
INSERT INTO `repairs` VALUES ('OnePlus 7T', '2020-03-01', 41, 37, 2849);
INSERT INTO `repairs` VALUES ('OnePlus 7T', '2020-03-02', 70, 35, 2660);
INSERT INTO `repairs` VALUES ('OnePlus 7T', '2020-03-03', 54, 35, 1470);
INSERT INTO `repairs` VALUES ('OnePlus 7T', '2020-03-04', 55, 22, 858);
INSERT INTO `repairs` VALUES ('OnePlus 7T', '2020-03-05', 38, 21, 861);

-- ----------------------------
-- Table structure for revenue
-- ----------------------------
DROP TABLE IF EXISTS `revenue`;
CREATE TABLE `revenue`  (
  `department_id` int(11) NOT NULL,
  `year` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `amount` decimal(10, 2) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of revenue
-- ----------------------------
INSERT INTO `revenue` VALUES (1, '2011', 65342.87);
INSERT INTO `revenue` VALUES (1, '2012', 75701.18);
INSERT INTO `revenue` VALUES (1, '2013', 77193.70);
INSERT INTO `revenue` VALUES (1, '2014', 48629.92);
INSERT INTO `revenue` VALUES (1, '2015', 57473.22);
INSERT INTO `revenue` VALUES (2, '2011', 45828.17);
INSERT INTO `revenue` VALUES (2, '2012', 39771.22);
INSERT INTO `revenue` VALUES (2, '2013', 38502.23);
INSERT INTO `revenue` VALUES (2, '2014', 66505.80);
INSERT INTO `revenue` VALUES (2, '2015', 62086.19);
INSERT INTO `revenue` VALUES (3, '2011', 35549.41);
INSERT INTO `revenue` VALUES (3, '2012', 47770.94);
INSERT INTO `revenue` VALUES (3, '2013', 42497.93);
INSERT INTO `revenue` VALUES (3, '2014', 64161.23);
INSERT INTO `revenue` VALUES (3, '2015', 41491.15);

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review`  (
  `id` int(11) NOT NULL,
  `rating` smallint(6) NULL DEFAULT NULL,
  `customer_id` int(11) NULL DEFAULT NULL,
  `movie_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of review
-- ----------------------------
INSERT INTO `review` VALUES (1, 7, 2, 1);
INSERT INTO `review` VALUES (2, 8, 6, 1);
INSERT INTO `review` VALUES (3, 10, 1, 2);
INSERT INTO `review` VALUES (4, 10, 2, 2);
INSERT INTO `review` VALUES (5, 8, 3, 2);
INSERT INTO `review` VALUES (6, 9, 1, 2);
INSERT INTO `review` VALUES (7, 9, 3, 3);
INSERT INTO `review` VALUES (8, 9, 7, 3);
INSERT INTO `review` VALUES (9, 8, 2, 3);
INSERT INTO `review` VALUES (10, 6, 5, 3);
INSERT INTO `review` VALUES (11, 3, 5, 4);
INSERT INTO `review` VALUES (12, 3, 3, 4);
INSERT INTO `review` VALUES (13, 5, 6, 4);
INSERT INTO `review` VALUES (14, 1, 2, 4);
INSERT INTO `review` VALUES (15, 1, 1, 5);
INSERT INTO `review` VALUES (16, 1, 3, 5);
INSERT INTO `review` VALUES (17, 3, 4, 5);
INSERT INTO `review` VALUES (18, 2, 7, 5);

-- ----------------------------
-- Table structure for route
-- ----------------------------
DROP TABLE IF EXISTS `route`;
CREATE TABLE `route`  (
  `id` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `from_city` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `to_city` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `distance` smallint(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of route
-- ----------------------------
INSERT INTO `route` VALUES (1, 'Manchester Express', 'Sheffield', 'Manchester', 60);
INSERT INTO `route` VALUES (2, 'GoToLeads', 'Manchester', 'Leeds', 70);
INSERT INTO `route` VALUES (3, 'StudentRoute', 'London', 'Oxford', 90);
INSERT INTO `route` VALUES (4, 'MiddleEnglandWay', 'London', 'Leicester', 160);
INSERT INTO `route` VALUES (5, 'BeatlesRoute', 'Liverpool', 'York', 160);
INSERT INTO `route` VALUES (6, 'NewcastleDaily', 'York', 'Newcastle', 135);
INSERT INTO `route` VALUES (7, 'ScotlandSpeed', 'Newcastle', 'Edinburgh', 200);

-- ----------------------------
-- Table structure for sales
-- ----------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales`  (
  `store_id` int(11) NULL DEFAULT NULL,
  `day` date NULL DEFAULT NULL,
  `revenue` decimal(10, 2) NULL DEFAULT NULL,
  `transactions` int(11) NULL DEFAULT NULL,
  `customers` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sales
-- ----------------------------
INSERT INTO `sales` VALUES (1, '2016-08-01', 6708.16, 77, 1465);
INSERT INTO `sales` VALUES (1, '2016-08-02', 3556.00, 36, 762);
INSERT INTO `sales` VALUES (1, '2016-08-03', 2806.82, 30, 650);
INSERT INTO `sales` VALUES (1, '2016-08-04', 6604.80, 103, 1032);
INSERT INTO `sales` VALUES (1, '2016-08-05', 6409.46, 66, 859);
INSERT INTO `sales` VALUES (1, '2016-08-06', 6909.54, 123, 1604);
INSERT INTO `sales` VALUES (1, '2016-08-07', 5596.67, 61, 730);
INSERT INTO `sales` VALUES (1, '2016-08-08', 4254.43, 63, 1439);
INSERT INTO `sales` VALUES (1, '2016-08-09', 2872.62, 30, 635);
INSERT INTO `sales` VALUES (1, '2016-08-10', 2715.27, 48, 524);
INSERT INTO `sales` VALUES (1, '2016-08-11', 3475.64, 64, 1416);
INSERT INTO `sales` VALUES (1, '2016-08-12', 4049.45, 47, 1024);
INSERT INTO `sales` VALUES (1, '2016-08-13', 3211.20, 33, 669);
INSERT INTO `sales` VALUES (1, '2016-08-14', 1502.08, 30, 721);
INSERT INTO `sales` VALUES (2, '2016-08-01', 4828.00, 71, 1704);
INSERT INTO `sales` VALUES (2, '2016-08-02', 17056.00, 213, 2132);
INSERT INTO `sales` VALUES (2, '2016-08-03', 7209.78, 108, 2475);
INSERT INTO `sales` VALUES (2, '2016-08-04', 12473.08, 166, 2162);
INSERT INTO `sales` VALUES (2, '2016-08-05', 8070.00, 147, 1614);
INSERT INTO `sales` VALUES (2, '2016-08-06', 8220.00, 137, 1781);
INSERT INTO `sales` VALUES (2, '2016-08-07', 5697.40, 93, 1401);
INSERT INTO `sales` VALUES (2, '2016-08-08', 24547.27, 267, 2935);
INSERT INTO `sales` VALUES (2, '2016-08-09', 5314.72, 90, 2252);
INSERT INTO `sales` VALUES (2, '2016-08-10', 5530.20, 85, 2127);
INSERT INTO `sales` VALUES (2, '2016-08-11', 9024.00, 125, 1880);
INSERT INTO `sales` VALUES (2, '2016-08-12', 6840.00, 76, 1900);
INSERT INTO `sales` VALUES (2, '2016-08-13', 7703.43, 113, 1586);
INSERT INTO `sales` VALUES (2, '2016-08-14', 4960.00, 90, 1984);
INSERT INTO `sales` VALUES (3, '2016-08-01', 4826.50, 57, 1379);
INSERT INTO `sales` VALUES (3, '2016-08-02', 15845.45, 158, 1743);
INSERT INTO `sales` VALUES (3, '2016-08-03', 3399.40, 49, 739);
INSERT INTO `sales` VALUES (3, '2016-08-04', 5490.50, 70, 834);
INSERT INTO `sales` VALUES (3, '2016-08-05', 4060.47, 53, 791);
INSERT INTO `sales` VALUES (3, '2016-08-06', 2198.20, 38, 758);
INSERT INTO `sales` VALUES (3, '2016-08-07', 10044.55, 115, 1270);
INSERT INTO `sales` VALUES (3, '2016-08-08', 2983.22, 51, 1183);
INSERT INTO `sales` VALUES (3, '2016-08-09', 9987.92, 123, 1603);
INSERT INTO `sales` VALUES (3, '2016-08-10', 8051.20, 84, 1258);
INSERT INTO `sales` VALUES (3, '2016-08-11', 7616.00, 109, 1088);
INSERT INTO `sales` VALUES (3, '2016-08-12', 12290.00, 123, 1229);
INSERT INTO `sales` VALUES (3, '2016-08-13', 9798.00, 107, 1704);
INSERT INTO `sales` VALUES (3, '2016-08-14', 7724.00, 77, 1931);
INSERT INTO `sales` VALUES (4, '2016-08-01', 7393.33, 123, 2218);
INSERT INTO `sales` VALUES (4, '2016-08-02', 13286.00, 190, 3796);
INSERT INTO `sales` VALUES (4, '2016-08-03', 19661.13, 249, 3982);
INSERT INTO `sales` VALUES (4, '2016-08-04', 10399.26, 193, 3659);
INSERT INTO `sales` VALUES (4, '2016-08-05', 10312.08, 134, 1741);
INSERT INTO `sales` VALUES (4, '2016-08-06', 13722.67, 214, 2573);
INSERT INTO `sales` VALUES (4, '2016-08-07', 12885.22, 145, 2606);
INSERT INTO `sales` VALUES (4, '2016-08-08', 8406.78, 145, 2609);
INSERT INTO `sales` VALUES (4, '2016-08-09', 19693.13, 237, 3559);
INSERT INTO `sales` VALUES (4, '2016-08-10', 16824.07, 230, 3457);
INSERT INTO `sales` VALUES (4, '2016-08-11', 8752.72, 123, 2219);
INSERT INTO `sales` VALUES (4, '2016-08-12', 13307.60, 157, 3914);
INSERT INTO `sales` VALUES (4, '2016-08-13', 11011.50, 136, 2447);
INSERT INTO `sales` VALUES (4, '2016-08-14', 16711.58, 206, 3920);
INSERT INTO `sales` VALUES (5, '2016-08-01', 4766.83, 64, 773);
INSERT INTO `sales` VALUES (5, '2016-08-02', 4804.19, 61, 973);
INSERT INTO `sales` VALUES (5, '2016-08-03', 6884.62, 138, 1790);
INSERT INTO `sales` VALUES (5, '2016-08-04', 4950.00, 69, 1100);
INSERT INTO `sales` VALUES (5, '2016-08-05', 15665.50, 165, 1649);
INSERT INTO `sales` VALUES (5, '2016-08-06', 3210.67, 37, 672);
INSERT INTO `sales` VALUES (5, '2016-08-07', 4712.50, 63, 1508);
INSERT INTO `sales` VALUES (5, '2016-08-08', 6498.00, 72, 1444);
INSERT INTO `sales` VALUES (5, '2016-08-09', 4651.43, 53, 740);
INSERT INTO `sales` VALUES (5, '2016-08-10', 3887.33, 69, 1666);
INSERT INTO `sales` VALUES (5, '2016-08-11', 6858.00, 127, 1905);
INSERT INTO `sales` VALUES (5, '2016-08-12', 2824.00, 44, 1059);
INSERT INTO `sales` VALUES (5, '2016-08-13', 4626.67, 58, 1388);
INSERT INTO `sales` VALUES (5, '2016-08-14', 9029.19, 124, 1979);
INSERT INTO `sales` VALUES (6, '2016-08-01', 2311.71, 25, 348);
INSERT INTO `sales` VALUES (6, '2016-08-02', 3146.04, 39, 971);
INSERT INTO `sales` VALUES (6, '2016-08-03', 4575.18, 53, 894);
INSERT INTO `sales` VALUES (6, '2016-08-04', 2305.00, 33, 461);
INSERT INTO `sales` VALUES (6, '2016-08-05', 3962.70, 78, 777);
INSERT INTO `sales` VALUES (6, '2016-08-06', 3155.00, 53, 631);
INSERT INTO `sales` VALUES (6, '2016-08-07', 8072.31, 82, 1060);
INSERT INTO `sales` VALUES (6, '2016-08-08', 5221.33, 54, 979);
INSERT INTO `sales` VALUES (6, '2016-08-09', 5253.82, 82, 903);
INSERT INTO `sales` VALUES (6, '2016-08-10', 6753.16, 72, 1365);
INSERT INTO `sales` VALUES (6, '2016-08-11', 2877.19, 31, 495);
INSERT INTO `sales` VALUES (6, '2016-08-12', 4579.00, 48, 482);
INSERT INTO `sales` VALUES (6, '2016-08-13', 3537.18, 48, 1066);
INSERT INTO `sales` VALUES (6, '2016-08-14', 10493.54, 107, 1392);
INSERT INTO `sales` VALUES (7, '2016-08-01', 7875.69, 146, 1896);
INSERT INTO `sales` VALUES (7, '2016-08-02', 2867.50, 39, 620);
INSERT INTO `sales` VALUES (7, '2016-08-03', 5445.00, 62, 990);
INSERT INTO `sales` VALUES (7, '2016-08-04', 8890.00, 127, 1778);
INSERT INTO `sales` VALUES (7, '2016-08-05', 10202.21, 103, 1958);
INSERT INTO `sales` VALUES (7, '2016-08-06', 5659.65, 78, 1318);
INSERT INTO `sales` VALUES (7, '2016-08-07', 8759.13, 131, 1961);
INSERT INTO `sales` VALUES (7, '2016-08-08', 3116.00, 41, 533);
INSERT INTO `sales` VALUES (7, '2016-08-09', 6754.62, 81, 1709);
INSERT INTO `sales` VALUES (7, '2016-08-10', 6483.75, 100, 1995);
INSERT INTO `sales` VALUES (7, '2016-08-11', 2385.71, 40, 835);
INSERT INTO `sales` VALUES (7, '2016-08-12', 6445.38, 113, 1470);
INSERT INTO `sales` VALUES (7, '2016-08-13', 1378.60, 23, 565);
INSERT INTO `sales` VALUES (7, '2016-08-14', 5001.75, 64, 1026);
INSERT INTO `sales` VALUES (8, '2016-08-01', 8922.67, 127, 1912);
INSERT INTO `sales` VALUES (8, '2016-08-02', 3478.23, 50, 1109);
INSERT INTO `sales` VALUES (8, '2016-08-03', 12800.00, 133, 1600);
INSERT INTO `sales` VALUES (8, '2016-08-04', 9224.50, 97, 1942);
INSERT INTO `sales` VALUES (8, '2016-08-05', 9440.00, 98, 1475);
INSERT INTO `sales` VALUES (8, '2016-08-06', 4042.00, 47, 940);
INSERT INTO `sales` VALUES (8, '2016-08-07', 2022.87, 24, 541);
INSERT INTO `sales` VALUES (8, '2016-08-08', 3391.12, 35, 874);
INSERT INTO `sales` VALUES (8, '2016-08-09', 5171.46, 65, 851);
INSERT INTO `sales` VALUES (8, '2016-08-10', 5300.18, 65, 1422);
INSERT INTO `sales` VALUES (8, '2016-08-11', 16133.33, 161, 1936);
INSERT INTO `sales` VALUES (8, '2016-08-12', 8870.11, 91, 1646);
INSERT INTO `sales` VALUES (8, '2016-08-13', 7310.47, 111, 1883);
INSERT INTO `sales` VALUES (8, '2016-08-14', 4914.87, 93, 1391);
INSERT INTO `sales` VALUES (9, '2016-08-01', 6910.50, 136, 1897);
INSERT INTO `sales` VALUES (9, '2016-08-02', 11424.00, 136, 1360);
INSERT INTO `sales` VALUES (9, '2016-08-03', 5388.43, 54, 1143);
INSERT INTO `sales` VALUES (9, '2016-08-04', 5710.00, 57, 1142);
INSERT INTO `sales` VALUES (9, '2016-08-05', 7044.15, 114, 1477);
INSERT INTO `sales` VALUES (9, '2016-08-06', 3511.92, 47, 1139);
INSERT INTO `sales` VALUES (9, '2016-08-07', 3298.70, 61, 1405);
INSERT INTO `sales` VALUES (9, '2016-08-08', 1727.82, 33, 731);
INSERT INTO `sales` VALUES (9, '2016-08-09', 11896.18, 131, 1438);
INSERT INTO `sales` VALUES (9, '2016-08-10', 14398.50, 166, 1986);
INSERT INTO `sales` VALUES (9, '2016-08-11', 4594.62, 70, 905);
INSERT INTO `sales` VALUES (9, '2016-08-12', 2487.13, 39, 908);
INSERT INTO `sales` VALUES (9, '2016-08-13', 7952.00, 86, 1988);
INSERT INTO `sales` VALUES (9, '2016-08-14', 4048.43, 64, 1478);
INSERT INTO `sales` VALUES (10, '2016-08-01', 16536.36, 195, 2140);
INSERT INTO `sales` VALUES (10, '2016-08-02', 7243.44, 108, 1946);
INSERT INTO `sales` VALUES (10, '2016-08-03', 7662.90, 86, 1722);
INSERT INTO `sales` VALUES (10, '2016-08-04', 4668.20, 69, 1373);
INSERT INTO `sales` VALUES (10, '2016-08-05', 6933.88, 91, 1551);
INSERT INTO `sales` VALUES (10, '2016-08-06', 8015.08, 141, 1828);
INSERT INTO `sales` VALUES (10, '2016-08-07', 6776.67, 119, 2140);
INSERT INTO `sales` VALUES (10, '2016-08-08', 5864.78, 84, 1927);
INSERT INTO `sales` VALUES (10, '2016-08-09', 6967.80, 83, 1659);
INSERT INTO `sales` VALUES (10, '2016-08-10', 4833.50, 58, 1381);
INSERT INTO `sales` VALUES (10, '2016-08-11', 5179.26, 78, 1491);
INSERT INTO `sales` VALUES (10, '2016-08-12', 1864.16, 31, 764);
INSERT INTO `sales` VALUES (10, '2016-08-13', 4247.62, 85, 1784);
INSERT INTO `sales` VALUES (10, '2016-08-14', 9556.73, 117, 1282);

-- ----------------------------
-- Table structure for single_order
-- ----------------------------
DROP TABLE IF EXISTS `single_order`;
CREATE TABLE `single_order`  (
  `id` int(11) NOT NULL,
  `placed` date NULL DEFAULT NULL,
  `total_price` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of single_order
-- ----------------------------
INSERT INTO `single_order` VALUES (1, '2016-07-10', 3876.76);
INSERT INTO `single_order` VALUES (2, '2016-07-10', 3949.21);
INSERT INTO `single_order` VALUES (3, '2016-07-18', 2199.46);
INSERT INTO `single_order` VALUES (4, '2016-06-13', 2659.63);
INSERT INTO `single_order` VALUES (5, '2016-06-13', 602.03);
INSERT INTO `single_order` VALUES (6, '2016-06-13', 3599.83);
INSERT INTO `single_order` VALUES (7, '2016-06-29', 4402.04);
INSERT INTO `single_order` VALUES (8, '2016-08-21', 4553.89);
INSERT INTO `single_order` VALUES (9, '2016-08-30', 3575.55);
INSERT INTO `single_order` VALUES (10, '2016-08-01', 4973.43);
INSERT INTO `single_order` VALUES (11, '2016-08-05', 3252.83);
INSERT INTO `single_order` VALUES (12, '2016-08-05', 3796.42);

-- ----------------------------
-- Table structure for single_rental
-- ----------------------------
DROP TABLE IF EXISTS `single_rental`;
CREATE TABLE `single_rental`  (
  `id` int(11) NOT NULL,
  `rental_date` date NULL DEFAULT NULL,
  `rental_period` smallint(6) NULL DEFAULT NULL,
  `platform` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `customer_id` int(11) NULL DEFAULT NULL,
  `movie_id` int(11) NULL DEFAULT NULL,
  `payment_date` date NULL DEFAULT NULL,
  `payment_amount` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of single_rental
-- ----------------------------
INSERT INTO `single_rental` VALUES (1, '2016-04-09', 1, 'desktop', 2, 4, '2016-04-16', 6);
INSERT INTO `single_rental` VALUES (2, '2016-04-05', 1, 'mobile', 6, 3, '2016-04-11', 8);
INSERT INTO `single_rental` VALUES (3, '2016-03-25', 1, 'tablet', 4, 2, '2016-03-30', 9);
INSERT INTO `single_rental` VALUES (4, '2016-02-09', 1, 'desktop', 5, 1, '2016-02-12', 8);
INSERT INTO `single_rental` VALUES (5, '2016-03-15', 1, 'mobile', 4, 3, '2016-03-22', 6);
INSERT INTO `single_rental` VALUES (6, '2016-04-11', 1, 'tablet', 5, 5, '2016-04-17', 9);
INSERT INTO `single_rental` VALUES (7, '2016-01-07', 1, 'desktop', 5, 5, '2016-01-13', 9);
INSERT INTO `single_rental` VALUES (8, '2016-04-09', 1, 'mobile', 6, 3, '2016-04-16', 6);
INSERT INTO `single_rental` VALUES (9, '2016-04-27', 1, 'tablet', 2, 1, '2016-04-30', 6);
INSERT INTO `single_rental` VALUES (10, '2016-03-21', 3, 'desktop', 5, 4, '2016-03-24', 21);
INSERT INTO `single_rental` VALUES (11, '2016-02-10', 3, 'mobile', 5, 4, '2016-02-15', 15);
INSERT INTO `single_rental` VALUES (12, '2016-03-20', 3, 'tablet', 7, 4, '2016-03-27', 12);
INSERT INTO `single_rental` VALUES (13, '2016-04-13', 3, 'desktop', 2, 1, '2016-04-18', 18);
INSERT INTO `single_rental` VALUES (14, '2016-03-08', 3, 'desktop', 7, 2, '2016-03-14', 24);
INSERT INTO `single_rental` VALUES (15, '2016-02-20', 7, 'mobile', 4, 2, '2016-02-23', 28);
INSERT INTO `single_rental` VALUES (16, '2016-04-21', 7, 'mobile', 1, 5, '2016-04-26', 28);
INSERT INTO `single_rental` VALUES (17, '2016-03-26', 7, 'mobile', 1, 5, '2016-04-01', 49);
INSERT INTO `single_rental` VALUES (18, '2016-04-10', 7, 'tablet', 3, 1, '2016-04-17', 28);
INSERT INTO `single_rental` VALUES (19, '2016-01-06', 7, 'desktop', 1, 5, '2016-01-11', 49);
INSERT INTO `single_rental` VALUES (20, '2016-01-12', 7, 'desktop', 5, 3, '2016-01-16', 21);
INSERT INTO `single_rental` VALUES (21, '2016-04-03', 7, 'desktop', 5, 4, '2016-04-08', 63);

-- ----------------------------
-- Table structure for statistics
-- ----------------------------
DROP TABLE IF EXISTS `statistics`;
CREATE TABLE `statistics`  (
  `website_id` int(11) NULL DEFAULT NULL,
  `day` date NULL DEFAULT NULL,
  `users` int(11) NULL DEFAULT NULL,
  `impressions` int(11) NULL DEFAULT NULL,
  `clicks` int(11) NULL DEFAULT NULL,
  `revenue` decimal(10, 2) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of statistics
-- ----------------------------
INSERT INTO `statistics` VALUES (1, '2016-05-01', 36169, 108507, 237, 66.34);
INSERT INTO `statistics` VALUES (1, '2016-05-02', 29580, 295800, 793, 214.12);
INSERT INTO `statistics` VALUES (1, '2016-05-03', 30907, 463605, 1545, 401.79);
INSERT INTO `statistics` VALUES (1, '2016-05-04', 19154, 57462, 160, 38.31);
INSERT INTO `statistics` VALUES (1, '2016-05-05', 10897, 163455, 343, 99.58);
INSERT INTO `statistics` VALUES (1, '2016-05-06', 24602, 369030, 804, 184.92);
INSERT INTO `statistics` VALUES (1, '2016-05-07', 19882, 139174, 348, 76.55);
INSERT INTO `statistics` VALUES (1, '2016-05-08', 26932, 296252, 782, 117.25);
INSERT INTO `statistics` VALUES (1, '2016-05-09', 39275, 117825, 342, 68.30);
INSERT INTO `statistics` VALUES (1, '2016-05-10', 28900, 317900, 1029, 236.62);
INSERT INTO `statistics` VALUES (1, '2016-05-11', 23714, 142284, 423, 84.69);
INSERT INTO `statistics` VALUES (1, '2016-05-12', 19006, 171054, 378, 101.95);
INSERT INTO `statistics` VALUES (1, '2016-05-13', 24791, 198328, 526, 89.43);
INSERT INTO `statistics` VALUES (1, '2016-05-14', 27617, 165702, 407, 85.50);
INSERT INTO `statistics` VALUES (1, '2016-05-15', 8563, 59941, 135, 33.75);
INSERT INTO `statistics` VALUES (1, '2016-05-16', 33679, 303111, 609, 121.73);
INSERT INTO `statistics` VALUES (1, '2016-05-17', 25123, 175861, 383, 57.47);
INSERT INTO `statistics` VALUES (1, '2016-05-18', 32233, 225631, 594, 118.75);
INSERT INTO `statistics` VALUES (1, '2016-05-19', 33504, 335040, 857, 197.08);
INSERT INTO `statistics` VALUES (1, '2016-05-20', 10830, 86640, 229, 52.58);
INSERT INTO `statistics` VALUES (1, '2016-05-21', 13904, 152944, 380, 75.90);
INSERT INTO `statistics` VALUES (1, '2016-05-22', 35180, 386980, 992, 168.68);
INSERT INTO `statistics` VALUES (1, '2016-05-23', 18911, 283665, 773, 154.59);
INSERT INTO `statistics` VALUES (1, '2016-05-24', 19938, 259194, 553, 121.58);
INSERT INTO `statistics` VALUES (1, '2016-05-25', 14796, 192348, 416, 66.61);
INSERT INTO `statistics` VALUES (1, '2016-05-26', 20953, 146671, 298, 59.50);
INSERT INTO `statistics` VALUES (1, '2016-05-27', 14756, 191828, 564, 84.63);
INSERT INTO `statistics` VALUES (1, '2016-05-28', 20397, 203970, 645, 135.55);
INSERT INTO `statistics` VALUES (1, '2016-05-29', 30382, 182292, 446, 71.31);
INSERT INTO `statistics` VALUES (1, '2016-05-30', 39977, 519701, 1382, 262.61);
INSERT INTO `statistics` VALUES (1, '2016-05-31', 34817, 382987, 796, 230.91);
INSERT INTO `statistics` VALUES (2, '2016-05-01', 7058, 28232, 106, 30.78);
INSERT INTO `statistics` VALUES (2, '2016-05-02', 7716, 46296, 132, 21.16);
INSERT INTO `statistics` VALUES (2, '2016-05-03', 6877, 55016, 144, 34.66);
INSERT INTO `statistics` VALUES (2, '2016-05-04', 9498, 47490, 145, 33.40);
INSERT INTO `statistics` VALUES (2, '2016-05-05', 8350, 41750, 128, 38.54);
INSERT INTO `statistics` VALUES (2, '2016-05-06', 3508, 28064, 83, 14.07);
INSERT INTO `statistics` VALUES (2, '2016-05-07', 5097, 45873, 202, 60.63);
INSERT INTO `statistics` VALUES (2, '2016-05-08', 5491, 10982, 54, 8.11);
INSERT INTO `statistics` VALUES (2, '2016-05-09', 3350, 30150, 78, 17.23);
INSERT INTO `statistics` VALUES (2, '2016-05-10', 9669, 48345, 204, 44.88);
INSERT INTO `statistics` VALUES (2, '2016-05-11', 8929, 35716, 149, 29.76);
INSERT INTO `statistics` VALUES (2, '2016-05-12', 5758, 17274, 51, 9.20);
INSERT INTO `statistics` VALUES (2, '2016-05-13', 6342, 63420, 202, 48.47);
INSERT INTO `statistics` VALUES (2, '2016-05-14', 6219, 49752, 143, 38.71);
INSERT INTO `statistics` VALUES (2, '2016-05-15', 5881, 35286, 126, 36.42);
INSERT INTO `statistics` VALUES (2, '2016-05-16', 4959, 19836, 64, 18.50);
INSERT INTO `statistics` VALUES (2, '2016-05-17', 9966, 109626, 359, 100.64);
INSERT INTO `statistics` VALUES (2, '2016-05-18', 4182, 41820, 116, 20.79);
INSERT INTO `statistics` VALUES (2, '2016-05-19', 3538, 38918, 193, 40.46);
INSERT INTO `statistics` VALUES (2, '2016-05-20', 3584, 17920, 47, 9.77);
INSERT INTO `statistics` VALUES (2, '2016-05-21', 5473, 32838, 124, 28.50);
INSERT INTO `statistics` VALUES (2, '2016-05-22', 9484, 66388, 227, 54.38);
INSERT INTO `statistics` VALUES (2, '2016-05-23', 5971, 29855, 119, 30.93);
INSERT INTO `statistics` VALUES (2, '2016-05-24', 8085, 32340, 139, 20.82);
INSERT INTO `statistics` VALUES (2, '2016-05-25', 3970, 19850, 78, 20.32);
INSERT INTO `statistics` VALUES (2, '2016-05-26', 8805, 79245, 325, 48.72);
INSERT INTO `statistics` VALUES (2, '2016-05-27', 9563, 19126, 70, 10.51);
INSERT INTO `statistics` VALUES (2, '2016-05-28', 6682, 80184, 297, 47.52);
INSERT INTO `statistics` VALUES (2, '2016-05-29', 6701, 80412, 228, 36.45);
INSERT INTO `statistics` VALUES (2, '2016-05-30', 9558, 105138, 300, 60.08);
INSERT INTO `statistics` VALUES (2, '2016-05-31', 5548, 44384, 178, 53.26);
INSERT INTO `statistics` VALUES (3, '2016-05-01', 37, 148, 1, 0.10);
INSERT INTO `statistics` VALUES (3, '2016-05-02', 73, 292, 1, 0.21);
INSERT INTO `statistics` VALUES (3, '2016-05-03', 95, 285, 1, 0.30);
INSERT INTO `statistics` VALUES (3, '2016-05-04', 32, 224, 1, 0.15);
INSERT INTO `statistics` VALUES (3, '2016-05-05', 56, 392, 2, 0.37);
INSERT INTO `statistics` VALUES (3, '2016-05-06', 100, 1000, 3, 0.70);
INSERT INTO `statistics` VALUES (3, '2016-05-07', 167, 668, 2, 0.39);
INSERT INTO `statistics` VALUES (3, '2016-05-08', 246, 1722, 8, 1.59);
INSERT INTO `statistics` VALUES (3, '2016-05-09', 108, 648, 2, 0.31);
INSERT INTO `statistics` VALUES (3, '2016-05-10', 158, 1264, 6, 1.81);
INSERT INTO `statistics` VALUES (3, '2016-05-11', 216, 2160, 8, 2.18);
INSERT INTO `statistics` VALUES (3, '2016-05-12', 187, 1309, 4, 0.94);
INSERT INTO `statistics` VALUES (3, '2016-05-13', 254, 1270, 4, 0.90);
INSERT INTO `statistics` VALUES (3, '2016-05-14', 107, 535, 3, 0.60);
INSERT INTO `statistics` VALUES (3, '2016-05-15', 270, 3240, 9, 1.65);
INSERT INTO `statistics` VALUES (3, '2016-05-16', 323, 2584, 11, 2.41);
INSERT INTO `statistics` VALUES (3, '2016-05-17', 316, 1264, 4, 0.83);
INSERT INTO `statistics` VALUES (3, '2016-05-18', 307, 2763, 8, 1.81);
INSERT INTO `statistics` VALUES (3, '2016-05-19', 361, 2527, 11, 3.07);
INSERT INTO `statistics` VALUES (3, '2016-05-20', 357, 2856, 9, 2.54);
INSERT INTO `statistics` VALUES (3, '2016-05-21', 484, 1452, 7, 1.09);
INSERT INTO `statistics` VALUES (3, '2016-05-22', 324, 3888, 12, 2.58);
INSERT INTO `statistics` VALUES (3, '2016-05-23', 570, 6840, 19, 4.24);
INSERT INTO `statistics` VALUES (3, '2016-05-24', 1664, 8320, 36, 5.36);
INSERT INTO `statistics` VALUES (3, '2016-05-25', 2315, 11575, 30, 5.10);
INSERT INTO `statistics` VALUES (3, '2016-05-26', 3586, 28688, 72, 16.54);
INSERT INTO `statistics` VALUES (3, '2016-05-27', 1226, 6130, 20, 3.00);
INSERT INTO `statistics` VALUES (3, '2016-05-28', 5998, 29990, 117, 21.09);
INSERT INTO `statistics` VALUES (3, '2016-05-29', 7287, 58296, 166, 39.86);
INSERT INTO `statistics` VALUES (3, '2016-05-30', 7785, 23355, 91, 19.16);
INSERT INTO `statistics` VALUES (3, '2016-05-31', 1545, 16995, 55, 9.96);

-- ----------------------------
-- Table structure for stock_change
-- ----------------------------
DROP TABLE IF EXISTS `stock_change`;
CREATE TABLE `stock_change`  (
  `id` int(11) NOT NULL,
  `product_id` int(11) NULL DEFAULT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  `changed` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stock_change
-- ----------------------------
INSERT INTO `stock_change` VALUES (1, 5, -90, '2016-09-11');
INSERT INTO `stock_change` VALUES (2, 2, -91, '2016-08-16');
INSERT INTO `stock_change` VALUES (3, 5, -15, '2016-06-08');
INSERT INTO `stock_change` VALUES (4, 2, 51, '2016-06-10');
INSERT INTO `stock_change` VALUES (5, 1, -58, '2016-08-09');
INSERT INTO `stock_change` VALUES (6, 1, -84, '2016-09-28');
INSERT INTO `stock_change` VALUES (7, 4, 56, '2016-06-09');
INSERT INTO `stock_change` VALUES (8, 5, 73, '2016-09-22');
INSERT INTO `stock_change` VALUES (9, 1, -43, '2016-06-07');
INSERT INTO `stock_change` VALUES (10, 2, -79, '2016-07-27');
INSERT INTO `stock_change` VALUES (11, 4, 93, '2016-09-22');
INSERT INTO `stock_change` VALUES (12, 4, 74, '2016-06-13');
INSERT INTO `stock_change` VALUES (13, 2, -37, '2016-08-02');
INSERT INTO `stock_change` VALUES (14, 7, 19, '2016-07-14');
INSERT INTO `stock_change` VALUES (15, 7, -72, '2016-09-13');
INSERT INTO `stock_change` VALUES (16, 7, -13, '2016-08-28');
INSERT INTO `stock_change` VALUES (17, 3, 23, '2016-07-24');
INSERT INTO `stock_change` VALUES (18, 1, 24, '2016-08-17');
INSERT INTO `stock_change` VALUES (19, 3, 77, '2016-08-11');
INSERT INTO `stock_change` VALUES (20, 1, 24, '2016-08-28');

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store`  (
  `id` int(11) NOT NULL,
  `country` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `city` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `opening_day` date NULL DEFAULT NULL,
  `rating` smallint(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES (1, 'Spain', 'Madrid', '2014-05-30', 5);
INSERT INTO `store` VALUES (2, 'Spain', 'Barcelona', '2015-07-28', 3);
INSERT INTO `store` VALUES (3, 'Spain', 'Valencia', '2014-12-13', 2);
INSERT INTO `store` VALUES (4, 'France', 'Paris', '2014-12-05', 5);
INSERT INTO `store` VALUES (5, 'France', 'Lyon', '2014-09-24', 3);
INSERT INTO `store` VALUES (6, 'France', 'Nice', '2014-03-15', 2);
INSERT INTO `store` VALUES (7, 'France', 'Bordeaux', '2015-07-29', 1);
INSERT INTO `store` VALUES (8, 'Germany', 'Berlin', '2014-12-15', 3);
INSERT INTO `store` VALUES (9, 'Germany', 'Hamburg', '2015-06-12', 3);
INSERT INTO `store` VALUES (10, 'Germany', 'Frankfurt', '2015-03-14', 4);

-- ----------------------------
-- Table structure for subscription
-- ----------------------------
DROP TABLE IF EXISTS `subscription`;
CREATE TABLE `subscription`  (
  `id` int(11) NOT NULL,
  `length` smallint(6) NULL DEFAULT NULL,
  `start_date` date NULL DEFAULT NULL,
  `platform` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `payment_date` date NULL DEFAULT NULL,
  `payment_amount` int(11) NULL DEFAULT NULL,
  `customer_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of subscription
-- ----------------------------
INSERT INTO `subscription` VALUES (1, 7, '2016-07-15', 'desktop', '2016-07-16', 49, 1);
INSERT INTO `subscription` VALUES (2, 7, '2016-06-09', 'desktop', '2016-06-10', 49, 2);
INSERT INTO `subscription` VALUES (3, 7, '2016-07-17', 'desktop', '2016-07-20', 35, 3);
INSERT INTO `subscription` VALUES (4, 30, '2016-06-28', 'tablet', '2016-07-20', 210, 4);
INSERT INTO `subscription` VALUES (5, 30, '2016-08-28', 'mobile', '2016-08-31', 240, 5);
INSERT INTO `subscription` VALUES (6, 30, '2016-06-21', 'desktop', '2016-06-23', 180, 6);
INSERT INTO `subscription` VALUES (7, 30, '2016-05-23', 'mobile', '2016-05-25', 240, 7);
INSERT INTO `subscription` VALUES (8, 180, '2016-05-07', 'mobile', '2016-05-08', 1440, 1);
INSERT INTO `subscription` VALUES (9, 180, '2016-08-18', 'desktop', '2016-08-21', 1440, 2);
INSERT INTO `subscription` VALUES (10, 180, '2016-07-28', 'tablet', '2016-07-29', 1260, 3);

-- ----------------------------
-- Table structure for ticket
-- ----------------------------
DROP TABLE IF EXISTS `ticket`;
CREATE TABLE `ticket`  (
  `id` int(11) NOT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `class` smallint(6) NULL DEFAULT NULL,
  `journey_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ticket
-- ----------------------------
INSERT INTO `ticket` VALUES (1, 200, 2, 24);
INSERT INTO `ticket` VALUES (2, 76, 1, 12);
INSERT INTO `ticket` VALUES (3, 102, 2, 6);
INSERT INTO `ticket` VALUES (4, 126, 2, 11);
INSERT INTO `ticket` VALUES (5, 80, 1, 17);
INSERT INTO `ticket` VALUES (6, 74, 1, 5);
INSERT INTO `ticket` VALUES (7, 200, 2, 5);
INSERT INTO `ticket` VALUES (8, 66, 1, 17);
INSERT INTO `ticket` VALUES (9, 59, 1, 22);
INSERT INTO `ticket` VALUES (10, 134, 2, 11);
INSERT INTO `ticket` VALUES (11, 60, 1, 6);
INSERT INTO `ticket` VALUES (12, 89, 1, 14);
INSERT INTO `ticket` VALUES (13, 71, 1, 3);
INSERT INTO `ticket` VALUES (14, 99, 1, 7);
INSERT INTO `ticket` VALUES (15, 166, 2, 3);
INSERT INTO `ticket` VALUES (16, 154, 2, 6);
INSERT INTO `ticket` VALUES (17, 76, 1, 23);
INSERT INTO `ticket` VALUES (18, 106, 2, 23);
INSERT INTO `ticket` VALUES (19, 97, 1, 7);
INSERT INTO `ticket` VALUES (20, 124, 2, 19);
INSERT INTO `ticket` VALUES (21, 146, 2, 10);
INSERT INTO `ticket` VALUES (22, 50, 1, 8);
INSERT INTO `ticket` VALUES (23, 62, 1, 1);
INSERT INTO `ticket` VALUES (24, 90, 1, 23);
INSERT INTO `ticket` VALUES (25, 88, 1, 4);
INSERT INTO `ticket` VALUES (26, 128, 2, 8);
INSERT INTO `ticket` VALUES (27, 75, 1, 15);
INSERT INTO `ticket` VALUES (28, 140, 2, 4);
INSERT INTO `ticket` VALUES (29, 67, 1, 9);
INSERT INTO `ticket` VALUES (30, 68, 1, 20);
INSERT INTO `ticket` VALUES (31, 192, 2, 15);
INSERT INTO `ticket` VALUES (32, 83, 1, 9);
INSERT INTO `ticket` VALUES (33, 200, 2, 8);
INSERT INTO `ticket` VALUES (34, 200, 2, 21);
INSERT INTO `ticket` VALUES (35, 52, 1, 19);
INSERT INTO `ticket` VALUES (36, 144, 2, 24);
INSERT INTO `ticket` VALUES (37, 99, 1, 2);
INSERT INTO `ticket` VALUES (38, 98, 1, 24);
INSERT INTO `ticket` VALUES (39, 178, 2, 17);
INSERT INTO `ticket` VALUES (40, 164, 2, 23);
INSERT INTO `ticket` VALUES (41, 190, 2, 11);
INSERT INTO `ticket` VALUES (42, 76, 1, 22);
INSERT INTO `ticket` VALUES (43, 100, 2, 12);
INSERT INTO `ticket` VALUES (44, 65, 1, 13);
INSERT INTO `ticket` VALUES (45, 130, 2, 5);
INSERT INTO `ticket` VALUES (46, 67, 1, 14);
INSERT INTO `ticket` VALUES (47, 160, 2, 19);
INSERT INTO `ticket` VALUES (48, 166, 2, 3);
INSERT INTO `ticket` VALUES (49, 172, 2, 13);
INSERT INTO `ticket` VALUES (50, 150, 2, 1);
INSERT INTO `ticket` VALUES (51, 188, 2, 22);
INSERT INTO `ticket` VALUES (52, 126, 2, 23);
INSERT INTO `ticket` VALUES (53, 70, 1, 8);
INSERT INTO `ticket` VALUES (54, 52, 1, 23);
INSERT INTO `ticket` VALUES (55, 198, 2, 22);
INSERT INTO `ticket` VALUES (56, 172, 2, 12);
INSERT INTO `ticket` VALUES (57, 81, 1, 6);
INSERT INTO `ticket` VALUES (58, 126, 2, 12);
INSERT INTO `ticket` VALUES (59, 116, 2, 15);
INSERT INTO `ticket` VALUES (60, 99, 1, 14);
INSERT INTO `ticket` VALUES (61, 62, 1, 8);
INSERT INTO `ticket` VALUES (62, 168, 2, 5);
INSERT INTO `ticket` VALUES (63, 66, 1, 23);
INSERT INTO `ticket` VALUES (64, 70, 1, 16);
INSERT INTO `ticket` VALUES (65, 196, 2, 2);
INSERT INTO `ticket` VALUES (66, 180, 2, 18);
INSERT INTO `ticket` VALUES (67, 93, 1, 16);
INSERT INTO `ticket` VALUES (68, 83, 1, 3);
INSERT INTO `ticket` VALUES (69, 128, 2, 17);
INSERT INTO `ticket` VALUES (70, 71, 1, 8);
INSERT INTO `ticket` VALUES (71, 69, 1, 1);
INSERT INTO `ticket` VALUES (72, 56, 1, 3);
INSERT INTO `ticket` VALUES (73, 69, 1, 6);
INSERT INTO `ticket` VALUES (74, 162, 2, 13);
INSERT INTO `ticket` VALUES (75, 198, 2, 16);
INSERT INTO `ticket` VALUES (76, 51, 1, 10);
INSERT INTO `ticket` VALUES (77, 192, 2, 2);
INSERT INTO `ticket` VALUES (78, 51, 1, 10);
INSERT INTO `ticket` VALUES (79, 51, 1, 13);
INSERT INTO `ticket` VALUES (80, 126, 2, 15);
INSERT INTO `ticket` VALUES (81, 67, 1, 10);
INSERT INTO `ticket` VALUES (82, 91, 1, 10);
INSERT INTO `ticket` VALUES (83, 55, 1, 14);
INSERT INTO `ticket` VALUES (84, 71, 1, 18);
INSERT INTO `ticket` VALUES (85, 116, 2, 8);
INSERT INTO `ticket` VALUES (86, 164, 2, 11);
INSERT INTO `ticket` VALUES (87, 200, 2, 5);
INSERT INTO `ticket` VALUES (88, 78, 1, 14);
INSERT INTO `ticket` VALUES (89, 58, 1, 23);
INSERT INTO `ticket` VALUES (90, 98, 1, 20);
INSERT INTO `ticket` VALUES (91, 178, 2, 4);
INSERT INTO `ticket` VALUES (92, 132, 2, 7);
INSERT INTO `ticket` VALUES (93, 83, 1, 24);
INSERT INTO `ticket` VALUES (94, 192, 2, 2);
INSERT INTO `ticket` VALUES (95, 90, 1, 22);
INSERT INTO `ticket` VALUES (96, 84, 1, 2);
INSERT INTO `ticket` VALUES (97, 61, 1, 19);
INSERT INTO `ticket` VALUES (98, 66, 1, 14);
INSERT INTO `ticket` VALUES (99, 196, 2, 4);
INSERT INTO `ticket` VALUES (100, 87, 1, 12);
INSERT INTO `ticket` VALUES (101, 80, 1, 21);
INSERT INTO `ticket` VALUES (102, 168, 2, 5);
INSERT INTO `ticket` VALUES (103, 57, 1, 14);
INSERT INTO `ticket` VALUES (104, 100, 1, 3);
INSERT INTO `ticket` VALUES (105, 140, 2, 17);
INSERT INTO `ticket` VALUES (106, 72, 1, 6);
INSERT INTO `ticket` VALUES (107, 190, 2, 12);
INSERT INTO `ticket` VALUES (108, 186, 2, 19);
INSERT INTO `ticket` VALUES (109, 114, 2, 15);
INSERT INTO `ticket` VALUES (110, 124, 2, 1);
INSERT INTO `ticket` VALUES (111, 194, 2, 10);
INSERT INTO `ticket` VALUES (112, 53, 1, 1);
INSERT INTO `ticket` VALUES (113, 69, 1, 11);
INSERT INTO `ticket` VALUES (114, 75, 1, 24);
INSERT INTO `ticket` VALUES (115, 57, 1, 19);
INSERT INTO `ticket` VALUES (116, 144, 2, 19);
INSERT INTO `ticket` VALUES (117, 81, 1, 10);
INSERT INTO `ticket` VALUES (118, 136, 2, 23);
INSERT INTO `ticket` VALUES (119, 67, 1, 8);
INSERT INTO `ticket` VALUES (120, 108, 2, 9);
INSERT INTO `ticket` VALUES (121, 128, 2, 18);
INSERT INTO `ticket` VALUES (122, 97, 1, 11);
INSERT INTO `ticket` VALUES (123, 132, 2, 15);
INSERT INTO `ticket` VALUES (124, 87, 1, 18);
INSERT INTO `ticket` VALUES (125, 156, 2, 12);
INSERT INTO `ticket` VALUES (126, 70, 1, 13);
INSERT INTO `ticket` VALUES (127, 95, 1, 20);
INSERT INTO `ticket` VALUES (128, 83, 1, 7);
INSERT INTO `ticket` VALUES (129, 95, 1, 2);
INSERT INTO `ticket` VALUES (130, 81, 1, 24);
INSERT INTO `ticket` VALUES (131, 70, 1, 18);
INSERT INTO `ticket` VALUES (132, 90, 1, 23);
INSERT INTO `ticket` VALUES (133, 58, 1, 4);
INSERT INTO `ticket` VALUES (134, 182, 2, 7);
INSERT INTO `ticket` VALUES (135, 150, 2, 1);
INSERT INTO `ticket` VALUES (136, 126, 2, 21);
INSERT INTO `ticket` VALUES (137, 72, 1, 13);
INSERT INTO `ticket` VALUES (138, 196, 2, 13);
INSERT INTO `ticket` VALUES (139, 200, 2, 16);
INSERT INTO `ticket` VALUES (140, 124, 2, 3);
INSERT INTO `ticket` VALUES (141, 168, 2, 13);
INSERT INTO `ticket` VALUES (142, 102, 2, 1);
INSERT INTO `ticket` VALUES (143, 112, 2, 4);
INSERT INTO `ticket` VALUES (144, 93, 1, 23);
INSERT INTO `ticket` VALUES (145, 92, 1, 1);
INSERT INTO `ticket` VALUES (146, 52, 1, 22);
INSERT INTO `ticket` VALUES (147, 152, 2, 17);
INSERT INTO `ticket` VALUES (148, 126, 2, 10);
INSERT INTO `ticket` VALUES (149, 100, 1, 21);
INSERT INTO `ticket` VALUES (150, 60, 1, 24);

-- ----------------------------
-- Table structure for train
-- ----------------------------
DROP TABLE IF EXISTS `train`;
CREATE TABLE `train`  (
  `id` int(11) NOT NULL,
  `model` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `max_speed` smallint(6) NULL DEFAULT NULL,
  `production_year` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `first_class_places` smallint(6) NULL DEFAULT NULL,
  `second_class_places` smallint(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of train
-- ----------------------------
INSERT INTO `train` VALUES (1, 'CR200J', 160, '2000', 30, 230);
INSERT INTO `train` VALUES (2, 'CR200J', 160, '2000', 40, 210);
INSERT INTO `train` VALUES (3, 'CRH1A', 200, '2005', 40, 180);
INSERT INTO `train` VALUES (4, 'CRH2A', 250, '2010', 45, 150);
INSERT INTO `train` VALUES (5, 'CRH2B', 250, '2010', 50, 250);
INSERT INTO `train` VALUES (6, 'CRH2B', 250, '2013', 60, 250);

-- ----------------------------
-- Table structure for website
-- ----------------------------
DROP TABLE IF EXISTS `website`;
CREATE TABLE `website`  (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `budget` int(11) NULL DEFAULT NULL,
  `opened` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of website
-- ----------------------------
INSERT INTO `website` VALUES (1, 'Gaming Heaven', 3000, '2016-02-01');
INSERT INTO `website` VALUES (2, 'All About Health', 700, '2016-03-15');
INSERT INTO `website` VALUES (3, 'Around The World', 500, '2016-05-01');

SET FOREIGN_KEY_CHECKS = 1;

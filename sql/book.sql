/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : book

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 16/06/2023 11:49:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_book
-- ----------------------------
DROP TABLE IF EXISTS `t_book`;
CREATE TABLE `t_book`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(11, 2) NULL DEFAULT NULL,
  `author` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sales` int(11) NULL DEFAULT NULL,
  `stock` int(11) NULL DEFAULT NULL,
  `img_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publish` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_book
-- ----------------------------
INSERT INTO `t_book` VALUES (1, 'java从入门到放弃', 80.00, '阿米诺斯', 9999, 9, 'static/img/default.jpg', NULL, NULL);
INSERT INTO `t_book` VALUES (2, '数据结构与算法', 78.50, '严敏君', 13, 6666666, 'static/img/default.jpg', NULL, NULL);
INSERT INTO `t_book` VALUES (3, '算法导论', 68.00, '龙伍', 100018, 33, 'static/img/default.jpg', NULL, NULL);
INSERT INTO `t_book` VALUES (4, '木虚肉盖饭', 16.00, '小胖', 1001, 49, 'static/img/default.jpg', NULL, NULL);
INSERT INTO `t_book` VALUES (5, 'C++编程思想', 45.50, '刚哥', 14, 95, 'static/img/default.jpg', NULL, NULL);
INSERT INTO `t_book` VALUES (6, '蛋炒饭', 9.90, '周星星', 12, 53, 'static/img/default.jpg', NULL, NULL);
INSERT INTO `t_book` VALUES (7, '赌神', 66.50, '龙伍', 125, 535, 'static/img/default.jpg', NULL, NULL);
INSERT INTO `t_book` VALUES (8, 'Java编程思想', 99.50, '阳哥', 47, 36, 'static/img/default.jpg', NULL, NULL);
INSERT INTO `t_book` VALUES (9, 'JavaScript从入门到精通', 9.90, '婷姐', 85, 95, 'static/img/default.jpg', NULL, NULL);
INSERT INTO `t_book` VALUES (10, 'cocos2d-x游戏编程入门', 49.00, '阿黑路西', 52, 62, 'static/img/default.jpg', NULL, NULL);
INSERT INTO `t_book` VALUES (11, 'C语言程序设计', 28.00, '谭浩强', 52, 74, 'static/img/default.jpg', NULL, NULL);
INSERT INTO `t_book` VALUES (12, 'Lua语言程序设计', 51.50, '雷丰阳', 48, 82, 'static/img/default.jpg', NULL, NULL);
INSERT INTO `t_book` VALUES (13, '西游记', 12.00, '罗贯中', 19, 9999, 'static/img/default.jpg', NULL, NULL);
INSERT INTO `t_book` VALUES (14, '水浒传', 33.05, '华仔', 22, 88, 'static/img/default.jpg', NULL, NULL);
INSERT INTO `t_book` VALUES (15, '操作系统原理', 133.05, '刘优', 122, 188, 'static/img/default.jpg', NULL, NULL);
INSERT INTO `t_book` VALUES (16, '数据结构 java版', 173.15, '封大神', 21, 81, 'static/img/default.jpg', NULL, NULL);
INSERT INTO `t_book` VALUES (17, 'UNIX高级环境编程', 99.15, '乐天', 210, 810, 'static/img/default.jpg', NULL, NULL);
INSERT INTO `t_book` VALUES (18, 'javaScript高级编程', 69.15, '一得阁米诺', 210, 810, 'static/img/default.jpg', NULL, NULL);
INSERT INTO `t_book` VALUES (19, '大话设计模式', 89.15, '哈姆', 20, 10, 'static/img/default.jpg', NULL, NULL);
INSERT INTO `t_book` VALUES (20, '人月神话', 88.15, '哎呀米诺', 20, 80, 'static/img/default.jpg', NULL, NULL);

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `order_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `price` decimal(11, 2) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `t_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('16868052259301', '2023-06-15 13:00:25', 408.00, 2, 1);
INSERT INTO `t_order` VALUES ('16868056981061', '2023-06-15 13:08:18', 204.00, 2, 1);
INSERT INTO `t_order` VALUES ('16868064067261', '2023-06-15 13:20:06', 136.00, 1, 1);
INSERT INTO `t_order` VALUES ('16868066824231', '2023-06-15 13:24:42', 84.00, 0, 1);
INSERT INTO `t_order` VALUES ('16868068928671', '2023-06-15 13:28:12', 204.00, 0, 1);
INSERT INTO `t_order` VALUES ('16868082507971', '2023-06-15 13:50:50', 272.00, 0, 1);
INSERT INTO `t_order` VALUES ('16868281602821', '2023-06-15 19:22:40', 549.50, 0, 1);

-- ----------------------------
-- Table structure for t_order_item
-- ----------------------------
DROP TABLE IF EXISTS `t_order_item`;
CREATE TABLE `t_order_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NULL DEFAULT NULL,
  `price` decimal(11, 2) NULL DEFAULT NULL,
  `total_price` decimal(11, 2) NULL DEFAULT NULL,
  `order_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_id`(`order_id`) USING BTREE,
  CONSTRAINT `t_order_item_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `t_order` (`order_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order_item
-- ----------------------------
INSERT INTO `t_order_item` VALUES (1, '算法导论', 6, 68.00, 408.00, '16868052259301');
INSERT INTO `t_order_item` VALUES (10, '算法导论', 3, 68.00, 204.00, '16868056981061');
INSERT INTO `t_order_item` VALUES (11, '算法导论', 2, 68.00, 136.00, '16868064067261');
INSERT INTO `t_order_item` VALUES (12, '算法导论', 1, 68.00, 68.00, '16868066824231');
INSERT INTO `t_order_item` VALUES (13, '木虚肉盖饭', 1, 16.00, 16.00, '16868066824231');
INSERT INTO `t_order_item` VALUES (14, '算法导论', 3, 68.00, 204.00, '16868068928671');
INSERT INTO `t_order_item` VALUES (15, '算法导论', 4, 68.00, 272.00, '16868082507971');
INSERT INTO `t_order_item` VALUES (16, '数据结构与算法', 7, 78.50, 549.50, '16868281602821');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', 'admin', 'admin@KQYaili.com');

SET FOREIGN_KEY_CHECKS = 1;

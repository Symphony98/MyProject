/*
 Navicat Premium Data Transfer

 Source Server         : student
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : products

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 13/08/2020 11:55:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `product_id` tinyint(10) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `product_num` int(255) NOT NULL,
  `product_price` int(255) NOT NULL,
  `product_img_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `product_category` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '时尚套装1', 100, 129, '11.jpg', '套装');
INSERT INTO `product` VALUES (2, '时尚套装2', 100, 149, '12.jpg', '套装');
INSERT INTO `product` VALUES (3, '时尚套装3', 100, 399, '13.jpg', '套装');
INSERT INTO `product` VALUES (4, '时尚套装4', 100, 289, '14.jpg', '套装');
INSERT INTO `product` VALUES (5, 'T恤', 100, 59, '21.jpg', '上衣');
INSERT INTO `product` VALUES (6, '时尚短袖', 100, 99, '22.jpg', '上衣');
INSERT INTO `product` VALUES (7, '红色短袖', 100, 39, '23.jpg', '上衣');
INSERT INTO `product` VALUES (8, '粉色短袖', 100, 108, '24.jpg', '上衣');
INSERT INTO `product` VALUES (9, '时尚小白鞋', 100, 128, '31.jpg', '鞋子');
INSERT INTO `product` VALUES (10, '韩版小白鞋', 100, 119, '32.jpg', '鞋子');
INSERT INTO `product` VALUES (11, '时尚凉拖', 100, 89, '33.jpg', '鞋子');
INSERT INTO `product` VALUES (12, '马丁靴', 100, 199, '34.jpg', '鞋子');
INSERT INTO `product` VALUES (13, '黑色休闲裤', 100, 99, '41.jpg', '裤子');
INSERT INTO `product` VALUES (14, '清凉短裤', 100, 109, '42.jpg', '裤子');
INSERT INTO `product` VALUES (15, '时尚牛仔裤', 100, 38, '43.jpg', '裤子');
INSERT INTO `product` VALUES (16, '纺丝清凉裤', 100, 88, '44.jpg', '裤子');
INSERT INTO `product` VALUES (17, '宽松T恤', 100, 58, '51.jpg', '男友');
INSERT INTO `product` VALUES (18, '时尚白T', 100, 36, '52.jpg', '男友');
INSERT INTO `product` VALUES (19, '修身型T恤', 100, 99, '53.jpg', '男友');
INSERT INTO `product` VALUES (20, '原谅色T恤', 100, 49, '54.jpg', '男友');
INSERT INTO `product` VALUES (21, '抽纸', 100, 5, '61.jpg', '家居');
INSERT INTO `product` VALUES (22, '便携小桌子', 100, 29, '62.jpg', '家居');
INSERT INTO `product` VALUES (23, '洗脸巾', 100, 36, '63.jpg', '家居');
INSERT INTO `product` VALUES (24, '洁面仪', 100, 99, '64.jpg', '家居');
INSERT INTO `product` VALUES (25, '漂亮的裙子1', 100, 69, '71.jpg', '裙子');
INSERT INTO `product` VALUES (26, '漂亮的裙子2', 100, 99, '72.jpg', '裙子');
INSERT INTO `product` VALUES (27, '漂亮的裙子3', 100, 129, '73.jpg', '裙子');
INSERT INTO `product` VALUES (28, '漂亮的裙子4', 100, 66, '74.jpg', '裙子');
INSERT INTO `product` VALUES (29, '红色长裙', 100, 99, '81.jpg', '女装');
INSERT INTO `product` VALUES (30, '时尚套装', 100, 76, '82.jpg', '女装');
INSERT INTO `product` VALUES (31, '白色的T恤', 100, 38, '83.jpg', '女装');
INSERT INTO `product` VALUES (32, '休闲一套 ', 100, 60, '84.jpg', '女装');

-- ----------------------------
-- Table structure for product_copy1
-- ----------------------------
DROP TABLE IF EXISTS `product_copy1`;
CREATE TABLE `product_copy1`  (
  `product_id` tinyint(10) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `product_num` int(255) NOT NULL,
  `product_price` int(255) NOT NULL,
  `product_img_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `product_category` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_copy1
-- ----------------------------
INSERT INTO `product_copy1` VALUES (1, '时尚套装1', 100, 129, '11.jpg', '套装');
INSERT INTO `product_copy1` VALUES (2, '时尚套装2', 100, 149, '12.jpg', '套装');
INSERT INTO `product_copy1` VALUES (3, '时尚套装3', 100, 399, '13.jpg', '套装');
INSERT INTO `product_copy1` VALUES (4, '时尚套装4', 100, 289, '14.jpg', '套装');
INSERT INTO `product_copy1` VALUES (5, 'T恤', 100, 59, '21.jpg', '上衣');
INSERT INTO `product_copy1` VALUES (6, '时尚短袖', 100, 99, '22.jpg', '上衣');
INSERT INTO `product_copy1` VALUES (7, '红色短袖', 100, 39, '23.jpg', '上衣');
INSERT INTO `product_copy1` VALUES (8, '粉色短袖', 100, 108, '24.jpg', '上衣');
INSERT INTO `product_copy1` VALUES (9, '时尚小白鞋', 100, 128, '31.jpg', '鞋子');
INSERT INTO `product_copy1` VALUES (10, '韩版小白鞋', 100, 119, '32.jpg', '鞋子');
INSERT INTO `product_copy1` VALUES (11, '时尚凉拖', 100, 89, '33.jpg', '鞋子');
INSERT INTO `product_copy1` VALUES (12, '马丁靴', 100, 199, '34.jpg', '鞋子');
INSERT INTO `product_copy1` VALUES (13, '黑色休闲裤', 100, 99, '41.jpg', '裤子');
INSERT INTO `product_copy1` VALUES (14, '清凉短裤', 100, 109, '42.jpg', '裤子');
INSERT INTO `product_copy1` VALUES (15, '时尚牛仔裤', 100, 38, '43.jpg', '裤子');
INSERT INTO `product_copy1` VALUES (16, '纺丝清凉裤', 100, 88, '44.jpg', '裤子');
INSERT INTO `product_copy1` VALUES (17, '宽松T恤', 100, 58, '51.jpg', '男友');
INSERT INTO `product_copy1` VALUES (18, '时尚白T', 100, 36, '52.jpg', '男友');
INSERT INTO `product_copy1` VALUES (19, '修身型T恤', 100, 99, '53.jpg', '男友');
INSERT INTO `product_copy1` VALUES (20, '原谅色T恤', 100, 49, '54.jpg', '男友');
INSERT INTO `product_copy1` VALUES (21, '抽纸', 100, 5, '61.jpg', '家居');
INSERT INTO `product_copy1` VALUES (22, '便携小桌子', 100, 29, '62.jpg', '家居');
INSERT INTO `product_copy1` VALUES (23, '洗脸巾', 100, 36, '63.jpg', '家居');
INSERT INTO `product_copy1` VALUES (24, '洁面仪', 100, 99, '64.jpg', '家居');
INSERT INTO `product_copy1` VALUES (25, '漂亮的裙子1', 100, 69, '71.jpg', '裙子');
INSERT INTO `product_copy1` VALUES (26, '漂亮的裙子2', 100, 99, '72.jpg', '裙子');
INSERT INTO `product_copy1` VALUES (27, '漂亮的裙子3', 100, 129, '73.jpg', '裙子');
INSERT INTO `product_copy1` VALUES (28, '漂亮的裙子4', 100, 66, '74.jpg', '裙子');
INSERT INTO `product_copy1` VALUES (29, '红色长裙', 100, 99, '81.jpg', '女装');
INSERT INTO `product_copy1` VALUES (30, '时尚套装', 100, 76, '82.jpg', '女装');
INSERT INTO `product_copy1` VALUES (31, '白色的T恤', 100, 38, '83.jpg', '女装');
INSERT INTO `product_copy1` VALUES (32, '休闲一套 ', 100, 60, '84.jpg', '女装');

-- ----------------------------
-- Table structure for shopping_cart
-- ----------------------------
DROP TABLE IF EXISTS `shopping_cart`;
CREATE TABLE `shopping_cart`  (
  `id` tinyint(10) NOT NULL AUTO_INCREMENT,
  `product_id` tinyint(10) NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `product_num` int(255) NOT NULL,
  `product_price` int(255) NOT NULL,
  `product_img_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `product_category` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `product_number` int(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shopping_cart
-- ----------------------------
INSERT INTO `shopping_cart` VALUES (28, 3, '时尚套装3', 100, 399, '13.jpg', '套装', 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123456', '13366669999');

SET FOREIGN_KEY_CHECKS = 1;

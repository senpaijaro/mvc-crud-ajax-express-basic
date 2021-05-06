/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : crud_app

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 06/05/2021 22:00:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_created` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `date_updated` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `status` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES (3, 'Lupin', '2021-01-11 19:30:15', '2021-01-11 21:46:38', 1);
INSERT INTO `books` VALUES (4, 'Lupin', '2021-01-11 19:31:03', '2021-01-11 21:46:38', 1);
INSERT INTO `books` VALUES (6, 'Lupin ', '2021-01-11 19:38:11', '2021-01-11 21:46:38', 1);
INSERT INTO `books` VALUES (7, 'Lupin sss', '2021-01-11 19:39:07', '2021-01-11 21:46:38', 1);
INSERT INTO `books` VALUES (8, 'Lupin sss', '2021-01-11 19:39:19', '2021-01-11 21:46:38', 1);
INSERT INTO `books` VALUES (9, 'Lupin sssas', '2021-01-11 19:39:56', '2021-01-11 21:46:38', 1);
INSERT INTO `books` VALUES (10, 'Lupinssss', '2021-01-11 19:49:02', '2021-01-11 21:46:38', 1);
INSERT INTO `books` VALUES (11, 'Lupinssss', '2021-01-11 19:49:06', '2021-01-11 21:46:38', 1);
INSERT INTO `books` VALUES (12, 'Mermaid', '2021-01-11 19:51:07', '2021-01-11 21:46:38', 1);
INSERT INTO `books` VALUES (13, 'asdasdasd', '2021-01-11 19:53:05', '2021-01-11 21:46:38', 1);
INSERT INTO `books` VALUES (14, 'asdasdasd', '2021-01-11 19:55:15', '2021-01-11 21:46:38', 1);
INSERT INTO `books` VALUES (15, 'asdasd', '2021-01-11 19:58:43', '2021-01-11 21:46:38', 1);
INSERT INTO `books` VALUES (16, 'Horry potter', '2021-01-11 20:36:07', '2021-01-11 21:46:38', 1);
INSERT INTO `books` VALUES (17, '', '2021-01-11 20:36:12', '2021-01-11 21:46:38', 1);
INSERT INTO `books` VALUES (18, 'asdasd', '2021-01-11 20:36:15', '2021-01-11 21:46:38', 1);
INSERT INTO `books` VALUES (19, 'asdasda', '2021-01-11 20:36:31', '2021-01-11 21:46:38', 1);
INSERT INTO `books` VALUES (20, 'asdasdas', '2021-01-11 20:36:45', '2021-01-11 21:46:38', 1);
INSERT INTO `books` VALUES (21, 'asdsadasdasd', '2021-01-11 21:11:44', '2021-01-11 21:46:38', 1);
INSERT INTO `books` VALUES (22, 'Horry Potter', '2021-01-11 21:12:13', '2021-01-11 21:46:38', 1);
INSERT INTO `books` VALUES (23, 'asdasd', '2021-01-11 21:13:00', '2021-01-11 21:46:38', 1);
INSERT INTO `books` VALUES (24, 'Puzzle', '2021-01-11 21:14:35', '2021-01-11 21:46:38', 1);
INSERT INTO `books` VALUES (25, '', '2021-01-11 21:28:03', '2021-01-11 21:46:38', 1);
INSERT INTO `books` VALUES (26, 'asdasdas', '2021-01-11 21:32:19', '2021-01-11 21:46:38', 1);
INSERT INTO `books` VALUES (27, 'adasdas', '2021-01-11 21:35:54', '2021-01-11 22:03:34', 0);
INSERT INTO `books` VALUES (28, 'TEST', '2021-01-11 21:36:34', '2021-01-11 22:46:27', 0);
INSERT INTO `books` VALUES (29, 'asdasd', '2021-01-20 21:02:23', '2021-01-20 21:02:23', 1);
INSERT INTO `books` VALUES (30, 'ServerSide', '2021-01-20 21:02:33', '2021-01-20 21:02:33', 1);
INSERT INTO `books` VALUES (31, 'sadas', '2021-01-20 21:04:50', '2021-01-20 21:04:50', 1);
INSERT INTO `books` VALUES (32, 'asdasdsad', '2021-01-20 21:10:36', '2021-01-20 21:10:36', 1);
INSERT INTO `books` VALUES (33, 'asdasdsad', '2021-01-20 21:11:52', '2021-01-20 21:11:52', 1);
INSERT INTO `books` VALUES (34, 'asdasdsad', '2021-01-20 21:11:57', '2021-01-20 21:11:57', 1);
INSERT INTO `books` VALUES (35, 'asdasd', '2021-01-20 21:12:43', '2021-01-20 21:12:43', 1);
INSERT INTO `books` VALUES (36, 'asd', '2021-01-20 21:12:45', '2021-01-20 21:12:45', 1);
INSERT INTO `books` VALUES (37, 'asdas', '2021-01-20 21:12:49', '2021-01-20 21:12:49', 1);
INSERT INTO `books` VALUES (38, 'asd', '2021-01-20 21:22:18', '2021-01-20 21:22:18', 1);
INSERT INTO `books` VALUES (39, 'asdas', '2021-01-20 21:22:33', '2021-01-20 21:22:33', 1);

SET FOREIGN_KEY_CHECKS = 1;

/*
 Navicat Premium Data Transfer

 Source Server         : mysql8 localhost
 Source Server Type    : MySQL
 Source Server Version : 80004
 Source Host           : 192.168.0.110:33061
 Source Schema         : oanus_admins

 Target Server Type    : MySQL
 Target Server Version : 80004
 File Encoding         : 65001

 Date: 21/11/2020 17:26:49
*/
/**

  可不用 目前采用redis做持久化

 */


SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for persistent_logins
-- ----------------------------
DROP TABLE IF EXISTS `persistent_logins`;
CREATE TABLE `persistent_logins`  (
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `series` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_used` timestamp(0) NOT NULL,
  PRIMARY KEY (`series`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

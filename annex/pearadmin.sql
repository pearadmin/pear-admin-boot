/*
 Navicat Premium Data Transfer

 Source Server         : 本地连接
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : pear-admin

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 28/06/2020 01:01:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_names` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comments` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 450341772497915904 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (449316299760340992, 'gen_table', '代码生成业务表', '', 'crud', 'com.pearadmin.custom', NULL, '业务名称', NULL, 'BAILIANG', '', '2020-04-19 20:49:00', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (449316305397485568, 'gen_table', '代码生成业务表', '', 'crud', 'com.pearadmin.custom', NULL, '业务名称', NULL, 'BAILIANG', '', '2020-04-19 20:49:00', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (449316306378952704, 'gen_table', '代码生成业务表', '', 'crud', 'com.pearadmin.custom', NULL, '业务名称', NULL, 'BAILIANG', '', '2020-04-19 20:49:00', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (449317497498374144, 'gen_table', '代码生成业务表', '', 'crud', 'com.pearadmin.custom', NULL, '业务名称', NULL, 'BAILIANG', '', '2020-04-19 20:49:00', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (449349295246807040, 'gen_table', '代码生成业务表', '', 'crud', 'com.pearadmin.custom', NULL, '业务名称', NULL, 'BAILIANG', '', '2020-04-19 20:49:00', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (449353810679304192, 'gen_table', '代码生成业务表', '', 'crud', 'com.pearadmin.custom', NULL, '业务名称', NULL, 'BAILIANG', '', '2020-04-19 20:52:43', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (449354381322752000, 'gen_table_column', '代码生成业务表字段', '', 'crud', 'com.pearadmin.custom', NULL, '业务名称', NULL, 'BAILIANG', '', '2020-04-19 20:54:59', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (450341772497915904, 'schedule_log', '定时任务日志', '', 'crud', 'com.pearadmin.custom', NULL, '业务名称', NULL, 'BAILIANG', '', '2020-04-22 14:18:31', '', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(0) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` varchar(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '配置标识',
  `config_name` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '配置名称',
  `config_code` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '配置标识',
  `config_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '配置值',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `config_type` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '配置类型',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('网站名称', '网站名称', 'system_name', 'Pear Admin', NULL, NULL, NULL, NULL, '系统配置\n', 'system');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `data_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `data_label` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `data_value` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type_code` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否默认',
  `update_by` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `enable` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`data_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '男', '0', 'system_user_sex', '0', NULL, NULL, NULL, NULL, '描述', '1');
INSERT INTO `sys_dict_data` VALUES ('2', '女', '1', 'system_user_sex', '1', NULL, NULL, NULL, NULL, '描述', '0');
INSERT INTO `sys_dict_data` VALUES ('447572898392182784', 'awd', 'awd', 'dict_code', NULL, NULL, NULL, NULL, NULL, 'awd', NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `enable` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_by` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_by` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '字典名称', 'dict_code', '用户描述\n', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES ('455184568505470976', '用户性别', 'user_sex', '性别描述', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES ('455184935989415936', '全局状态', 'sys_status', '状态描述\n', '0', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `log_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `operator_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `business_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `request_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `operate_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `operate_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `operate_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `request_param` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `response_param` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `error_msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `operate_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('450301898982035456', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.controller.system.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450301899728621568', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.controller.system.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450303516116914176', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.controller.system.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450303516737671168', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.controller.system.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450313125883940864', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.controller.system.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450313126462754816', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.controller.system.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450313136684273664', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.controller.system.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450313137175007232', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.controller.system.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450340381503131648', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.controller.system.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450340381951922176', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.controller.system.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450340583827968000', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.controller.system.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450340584297730048', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.controller.system.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450341307622232064', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.controller.system.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450341308016496640', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.controller.system.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450341430280458240', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.controller.system.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450341430674722816', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.controller.system.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450348533531414528', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450348534219280384', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450349199599472640', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450349200220229632', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450349327685128192', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450349328071004160', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450351930422726656', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450351930967986176', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450352091551109120', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450352091991511040', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450495727689404416', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450495728268218368', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450495745947209728', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450495746299531264', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450496092853899264', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450496093281718272', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450496124701249536', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450496125020016640', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450496232176095232', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450496232566165504', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450496262731599872', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450496263100698624', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450496742182490112', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('450496742509645824', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451000502042365952', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451000502541488128', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451000510015737856', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451000510347087872', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451000544136400896', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451000544497111040', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451000607021600768', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451000607386505216', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451000636918599680', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451000637287698432', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451002806241988608', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451002806707556352', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451004567367323648', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451004567820308480', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451004572626980864', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451004573008662528', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451004825270882304', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451004825665146880', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451006148057894912', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451006148460548096', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451006193150857216', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451006193691922432', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451026067126358016', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451026067965218816', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451026101242826752', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451026101809057792', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451026903634153472', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451026904129081344', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451026950237065216', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451026950752964608', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451039547497779200', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451039547913015296', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451039635792072704', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451039636136005632', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451039767300280320', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451039767627436032', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451054120342786048', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451054120808353792', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451055965790408704', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451055966218227712', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451057001422786560', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451057002093875200', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451057575329402880', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451057575870468096', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451058306916683776', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451058307289976832', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451058341557440512', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451058341951705088', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451059776663719936', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451059777062178816', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451061313771278336', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451061314224263168', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451067225781178368', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451067226267717632', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451088165332193280', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451088165789372416', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451127882241150976', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451127882949988352', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451128307052843008', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451128307631656960', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451128312849371136', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451128313260412928', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451128882410688512', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451128882939170816', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451428223981588480', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451428224476516352', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451428476700987392', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451428477082669056', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451428482279411712', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451428482635927552', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451428556648615936', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451428557034491904', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451428576806440960', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451428577129402368', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451428860672741376', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451428861113143296', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451428921892802560', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451428922333204480', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451491248147140608', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451491248537210880', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451493344556748800', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451493345173311488', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451495219460968448', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451495219834261504', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451495749423861760', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451495749788766208', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451495830256488448', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451495830604615680', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451516184458825728', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451516184869867520', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451517299745230848', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451517300076580864', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451517312512692224', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451517312839847936', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451898248211337216', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451898249285079040', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451898267094093824', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451898267668713472', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451899853677662208', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451899854365528064', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451899913312276480', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451899913823981568', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451899991913533440', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451899992496541696', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451900214173896704', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451900214689796096', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451915361101680640', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451915361693077504', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451916016788836352', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451916017984212992', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451916042944516096', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451916043468804096', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451923093384990720', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451923094018330624', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451935586740211712', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451935587394523136', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451935891343151104', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451935892051988480', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451936004266397696', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451936004752936960', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451936100387262464', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451936101066739712', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451936104543817728', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451936105005191168', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451939704674324480', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451939705169252352', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451939780696084480', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451939781040017408', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451939883196485632', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451939883523641344', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451939985105489920', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451939985441034240', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451940042391293952', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451940042802335744', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451940067905245184', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451940070522490880', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451940071415877632', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451942094089621504', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451942094383222784', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451942098493640704', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451942098854350848', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451942154470821888', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451942154831532032', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451945778844405760', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451945779322556416', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451954349460033536', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451954349774606336', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451954364618248192', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451954364970569728', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451954876377862144', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('451954876730183680', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452295450381389824', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452295450880512000', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452295632946860032', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452295633294987264', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452296007015862272', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452296007393349632', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452296164692332544', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452296165032071168', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452299095458058240', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452299095948791808', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452299100331839488', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', '就眠仪式', '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452299100755464192', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', '就眠仪式', '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452300103202508800', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452300103521275904', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452303126909816832', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452303127216001024', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452303808601657344', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452303809079808000', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452304099816378368', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452304100139339776', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452304251083952128', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452304251381747712', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452304791742320640', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452304792220471296', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452304938157084672', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452304938501017600', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452304957023064064', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452304957346025472', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452305016859004928', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452305017190354944', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452305265769975808', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452305266059382784', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452305310779052032', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452305311106207744', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452305526278197248', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452305526613741568', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452310896463712256', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452310896862171136', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452310953682407424', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452310954026340352', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452310959491518464', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452310959827062784', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452310981163487232', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452310981473865728', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452310999576481792', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452310999907831808', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452311074356727808', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452311074683883520', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452311344948056064', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452311345300377600', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452311509704511488', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452311510044250112', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452311537084928000', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452311537378529280', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452312106721742848', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452312107334111232', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452312137935753216', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452312138464235520', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452312167396544512', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452312167736283136', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452312332631150592', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452312332987666432', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452315915988635648', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452315916340957184', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452316211225694208', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452316211561238528', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452316261100163072', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452316261951606784', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452316383351541760', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452316383691280384', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452316414854959104', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452316415156948992', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452316460744839168', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452316461042634752', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452316723522179072', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452316723845140480', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452316749040324608', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452316749359091712', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452316773228875776', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452316773577003008', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452316808695910400', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452316808981123072', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452317186489454592', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452317186850164736', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452318368339464192', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452318368700174336', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452318567279497216', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452318567619235840', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452318745772298240', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452318746078482432', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452318749777858560', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452318750092431360', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452318836620922880', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452318836927107072', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452319492006088704', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452319492345827328', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452319503213268992', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452319503523647488', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452319508141576192', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452319508439371776', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452321215521099776', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452321215869227008', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452323018056798208', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452323018522365952', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452323272814628864', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452323273234059264', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452671511678029824', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452671512156180480', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452671518497968128', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452671518850289664', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452671611481493504', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452671611854786560', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452672035894726656', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452672036259631104', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452672611139325952', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452672611445510144', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452678400767823872', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452678401149505536', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452681178139463680', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452681178554699776', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452681609032896512', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452681609464909824', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452682064660140032', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452682064949547008', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452682068380487680', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452682068695060480', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452682214367432704', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452682214803640320', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452682308818964480', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452682309196451840', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452682328951623680', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452682329295556608', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452682350971719680', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452682351298875392', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452683494368350208', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452683494678728704', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452683717874421760', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452683718256103424', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452684302409404416', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('452684302736560128', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453081601706954752', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453081602138968064', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453081605649600512', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453081606001922048', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453082438114086912', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453082438407688192', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453082456225091584', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453082456585801728', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453082795628171264', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453082795930161152', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453084085783498752', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453084086181957632', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453084096999067648', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453084097338806272', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453084168738443264', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453084169166262272', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453084174098763776', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453084174430113792', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453084314456952832', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453084314838634496', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453085004956831744', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453085005258821632', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453088956796506112', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453088957245296640', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453088962026803200', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453088962358153216', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453088979970035712', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453088980351717376', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453089002455699456', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453089002808020992', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453166811588988928', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453166812041973760', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453166820086648832', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453166820472524800', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453214356629491712', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453214357015367680', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453258340118695936', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453258340630401024', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453259428360228864', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453259428838379520', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453289894618468352', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453289895079841792', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453290260500189184', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453290260961562624', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453290650226528256', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453290650662735872', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453291012488564736', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453291012970909696', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453291224670015488', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453291225148166144', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453293930964979712', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453293931438936064', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453295740878458880', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453295741268529152', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453631682034143232', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453631682461962240', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453632122972934144', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453632123371393024', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453632392754761728', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453632393123860480', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453632652260544512', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453632652797415424', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453632658140958720', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453632658430365696', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453633682545184768', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453633682960420864', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453633686110343168', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453633686521384960', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453635418135597056', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453635418550833152', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453635446661058560', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453635446954659840', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453635471835271168', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453635472170815488', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453653805737840640', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453653806253740032', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453653964303503360', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453653964697767936', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453655777626951680', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453655778155433984', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453663795643027456', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453663796037292032', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453670965893795840', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453670966464221184', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453671886941982720', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453671887411744768', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453672137685864448', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453672138180792320', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453672150935670784', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453672151334129664', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453676303221133312', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453676303762198528', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453676328319848448', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453676328739278848', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453676541268856832', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453676541734424576', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453676556456431616', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453676556863279104', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453701056426283008', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453701057000902656', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453701243123142656', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453701243848757248', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453701717553451008', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453701718228733952', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453701740324327424', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453701741058330624', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453701943425110016', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453701944050061312', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453702307771715584', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453702308467970048', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453704164871114752', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453704165672226816', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453735714304167936', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453735714950090752', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453991497507934208', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453991498002862080', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453991501479940096', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453991501865816064', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453991517380546560', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453991517745451008', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453998499151876096', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453998499617443840', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453998503933382656', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453998504327647232', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453998876219805696', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('453998876769259520', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454008529091694592', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454008529615982592', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454009251665416192', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454009252240035840', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454013565679046656', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454013566270443520', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454017172986007552', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454017173661290496', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454024414443474944', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454024415055843328', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454024417413042176', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454024417874415616', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454024540666859520', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454024541107261440', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454024659088838656', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454024660217106432', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454024661320208384', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454024662234566656', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454024807588171776', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454024808036962304', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454025657635180544', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454025658029445120', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454027135791796224', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454027136324472832', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454053531385729024', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454053532069400576', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454053563518291968', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454053563988054016', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454097604297494528', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454097604775645184', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454100506898468864', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454100507351453696', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454101020310638592', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454101020683931648', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454128295798247424', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454128296356089856', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454129056108122112', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454129056812765184', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454129059820081152', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454129060243705856', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454134292738609152', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454134293275480064', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454134312204374016', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454134312619610112', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454138380582785024', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454138381295816704', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454138398236610560', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454138398706372608', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454144919011987456', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454144919569829888', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454150710095908864', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454150710636974080', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454151232106401792', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454151232592941056', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454155151687684096', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454155152241332224', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454156134027235328', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454156134555717632', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454157072771190784', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454157073224175616', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454178998654734336', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454178999095136256', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454182901437829120', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454182901865648128', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454191179785965568', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454191180255727616', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454333988895592448', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454333989675732992', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454334211877376000', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454334212703653888', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454435400929382400', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454435401369784320', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454442388530794496', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454442389021528064', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454463082450784256', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454463083058958336', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454463513474240512', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454463514069831680', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454463550396698624', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454500231145459712', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454500231736856576', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454501124578349056', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454501125119414272', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454513033239203840', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454513033801240576', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454516614629560320', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454516615187402752', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454521526776107008', '列表视图', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.main()', 'GET', NULL, '/system/user/main', NULL, '{}', NULL, 'SUCCESS', NULL, NULL);
INSERT INTO `sys_oper_log` VALUES ('454521527409446912', '用户数据', 'MANAGE', 'OTHER', 'com.pearadmin.system.controller.SysUserController.data()', 'GET', NULL, '/system/user/data', NULL, '{\"page\":[\"1\"],\"limit\":[\"10\"]}', NULL, 'SUCCESS', NULL, NULL);

-- ----------------------------
-- Table structure for sys_power
-- ----------------------------
DROP TABLE IF EXISTS `sys_power`;
CREATE TABLE `sys_power`  (
  `power_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `power_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `power_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `power_code` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `power_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `open_type` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `parent_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `icon` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sort` int(0) NULL DEFAULT NULL,
  `create_by` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_by` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `enable` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`power_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_power
-- ----------------------------
INSERT INTO `sys_power` VALUES ('1', '系统管理', '0', '', '', NULL, '0', 'layui-icon layui-icon-set-fill', 1, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('2', '用户管理', '1', 'sys:user:main', '/system/user/main', NULL, '1', 'layui-icon layui-icon-username', 3, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('3', '角色管理', '1', 'sys:role:main', '/system/role/main', NULL, '1', 'layui-icon layui-icon-user', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('4', '权限管理', '1', 'sys:power:main', '/system/power/main', NULL, '1', 'layui-icon layui-icon-vercode', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442359447487123456', '角色列表', '2', 'sys:role:data', '', '', '3', 'layui-icon layui-icon-rate', 1, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442417411065516032', '敏捷开发', '0', '', '', '', '0', 'layui-icon layui-icon-senior', 2, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442418188639145984', '代码生成', '1', 'exp:template:main', '/generator/main', '0', '442417411065516032', 'layui-icon layui-icon-template-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_power` VALUES ('442520236248403968', '数据监控', '1', '/druid/index.html', '/druid/index.html', '0', '694203021537574912', 'layui-icon  layui-icon-chart', 1, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442650387514789888', '定时任务', '0', '', '', '', '0', 'layui-icon  layui-icon-log', 4, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442650770626711552', '任务管理', '1', 'qrt:task:main', '/schedule/job/main', '0', '442650387514789888', 'layui-icon  layui-icon-chat', 1, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442651158935375872', '任务日志', '1', 'qrt:log:main', '/schedule/log/main', '0', '442650387514789888', 'layui-icon  layui-icon-file', 2, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442722702474743808', '数据字典', '1', 'system:dictType:main', '/system/dictType/main', '0', '1', 'layui-icon  layui-icon-form', 1, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('450300705362808832', '行为日志', '1', 'system:operlog:main', '/system/operlog/main', '0', '694203021537574912', 'layui-icon  layui-icon-chart', 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_power` VALUES ('451002662209589248', '工作流程', '0', '', '', '', '0', 'layui-icon  layui-icon-chart', 6, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('451003242072117248', '模型管理', '1', 'process:model:main', '/process/model/main', '0', '451002662209589248', 'layui-icon  layui-icon-component', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('452298073088069632', '任务组', '1', 'schedule:group:main', '/schedule/group/main', '0', '442650387514789888', 'layui-icon  layui-icon-templeate-1', 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_power` VALUES ('452678330118967296', '系统配置', '1', 'system:config:main', '/system/config/main', '0', '1', 'layui-icon layui-icon-fonts-code', 0, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('474356044148117504', '工作空间', '0', '', '', '', '0', 'layui-icon layui-icon-component', 0, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('474356363552755712', '首页', '1', 'home', '/console', '0', '474356044148117504', 'layui-icon layui-icon-home', 1, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('694203021537574912', '系统监控', '0', '', '', '', '0', 'layui-icon  layui-icon-console', 3, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('694203311615639552', '接口文档', '1', '', '/swagger-ui.html', '0', '694203021537574912', 'layui-icon  layui-icon-chart', 1, NULL, NULL, NULL, NULL, NULL, '0');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `role_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `enable` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `create_by` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `update_by` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '0', NULL, NULL, NULL, NULL, NULL, '超级管理员');
INSERT INTO `sys_role` VALUES ('2', '普通管理员', 'manager', '0', NULL, NULL, NULL, NULL, NULL, '普通管理员');
INSERT INTO `sys_role` VALUES ('3', '普通用户', 'pearson', '0', NULL, NULL, NULL, NULL, NULL, '普通用户');

-- ----------------------------
-- Table structure for sys_role_power
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_power`;
CREATE TABLE `sys_role_power`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `power_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_by` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_by` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_power
-- ----------------------------
INSERT INTO `sys_role_power` VALUES ('442062615250866176', '693913251020275712', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('442062615250866177', '693913251020275712', '2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('442062615250866178', '693913251020275712', '3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('442062615250866179', '693913251020275712', '4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('463925595038945280', '2', '451002662209589248', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('463925595038945281', '2', '451003242072117248', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('463926066289971200', '3', '451002662209589248', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('463926066289971201', '3', '451003242072117248', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('474356431404011520', '1', '451002662209589248', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('474356431404011521', '1', '451003242072117248', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('474356431404011522', '1', '474356044148117504', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('474356431404011523', '1', '474356363552755712', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('474356431404011524', '1', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('474356431404011525', '1', '3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('474356431404011526', '1', '442359447487123456', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('474356431404011527', '1', '4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('474356431404011528', '1', '452678330118967296', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('474356431404011529', '1', '442722702474743808', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('474356431404011530', '1', '2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('474356431404011531', '1', '442417411065516032', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('474356431404011532', '1', '442418188639145984', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('474356431404011533', '1', '694203021537574912', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('474356431404011534', '1', '450300705362808832', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('474356431404011535', '1', '442520236248403968', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('474356431404011536', '1', '694203311615639552', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('474356431404011537', '1', '442650387514789888', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('474356431404011538', '1', '452298073088069632', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('474356431404011539', '1', '442650770626711552', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('474356431404011540', '1', '442651158935375872', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '编号',
  `username` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '账户',
  `password` char(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '状态',
  `real_name` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `email` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `avatar` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  `phone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `update_by` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `enable` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否启用',
  `login` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '$2a$10$1K7E1.IYCrsoZVCb6utOo.5jENtfOzhdKWhc49t2lk.UQd7Oam4FG', NULL, NULL, '超级管理员', '854085467@qq.com', NULL, '1', '15553726531', NULL, NULL, NULL, NULL, NULL, '0', '1');
INSERT INTO `sys_user` VALUES ('442488661347536896', '854085467', NULL, NULL, NULL, '就眠仪式', '854085467@qq.com', NULL, '1', '15553726531', NULL, NULL, NULL, NULL, NULL, '0', '1');
INSERT INTO `sys_user` VALUES ('442492965651353600', '970796069', NULL, NULL, NULL, '王二麻子', '854085467@qq.com', NULL, '1', '15553726531', NULL, NULL, NULL, NULL, NULL, '0', '0');
INSERT INTO `sys_user` VALUES ('463926002318446592', 'manager', '$2a$10$6Z2nHxs9SGPS3ylipvl23.qcJt4rCBzin5fqFFL6pzU3Gvilh/STK', NULL, NULL, '柏良', '854085467@qq.com', NULL, '0', '15553726531', NULL, NULL, NULL, NULL, NULL, '0', NULL);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `role_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('442110794142978048', NULL, '1');
INSERT INTO `sys_user_role` VALUES ('442110794142978049', NULL, '2');
INSERT INTO `sys_user_role` VALUES ('442110794142978050', NULL, '3');
INSERT INTO `sys_user_role` VALUES ('442114944884936704', '442114944884936704', '1');
INSERT INTO `sys_user_role` VALUES ('442114944884936705', '442114944884936704', '2');
INSERT INTO `sys_user_role` VALUES ('442114944884936706', '442114944884936704', '3');
INSERT INTO `sys_user_role` VALUES ('442114944884936707', '442114944884936704', '693913251020275712');
INSERT INTO `sys_user_role` VALUES ('442114944884936708', '442114944884936704', '693949793801601024');
INSERT INTO `sys_user_role` VALUES ('442114944884936709', '442114944884936704', '694106517393113088');
INSERT INTO `sys_user_role` VALUES ('442127724396548096', '3', '1');
INSERT INTO `sys_user_role` VALUES ('442127724396548097', '3', '2');
INSERT INTO `sys_user_role` VALUES ('442127724396548098', '3', '3');
INSERT INTO `sys_user_role` VALUES ('445004967087050752', '1', '1');
INSERT INTO `sys_user_role` VALUES ('445004967087050753', '1', '2');
INSERT INTO `sys_user_role` VALUES ('445004967087050754', '1', '3');
INSERT INTO `sys_user_role` VALUES ('445004989551742976', '442492965651353600', '1');
INSERT INTO `sys_user_role` VALUES ('445004989551742977', '442492965651353600', '2');
INSERT INTO `sys_user_role` VALUES ('445005010271604736', '444226209941950464', '1');
INSERT INTO `sys_user_role` VALUES ('445005010271604737', '444226209941950464', '2');
INSERT INTO `sys_user_role` VALUES ('445005010271604738', '444226209941950464', '3');
INSERT INTO `sys_user_role` VALUES ('447196043407396864', '447196042723725312', '1');
INSERT INTO `sys_user_role` VALUES ('447196043407396865', '447196042723725312', '2');
INSERT INTO `sys_user_role` VALUES ('447197132043194368', '447197131518906368', '1');
INSERT INTO `sys_user_role` VALUES ('447197773046091776', '447197772274339840', '1');
INSERT INTO `sys_user_role` VALUES ('447200144400715776', '447199996320813056', '1');
INSERT INTO `sys_user_role` VALUES ('447200144400715777', '447199996320813056', '2');
INSERT INTO `sys_user_role` VALUES ('449248198469488640', '449248198058446848', '3');
INSERT INTO `sys_user_role` VALUES ('463926002653990912', '463926002318446592', '3');
INSERT INTO `sys_user_role` VALUES ('463926371165540352', '442488661347536896', '3');

SET FOREIGN_KEY_CHECKS = 1;

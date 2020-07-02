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

 Date: 02/07/2020 14:53:38
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
-- Table structure for sys_logging
-- ----------------------------
DROP TABLE IF EXISTS `sys_logging`;
CREATE TABLE `sys_logging`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `business_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `request_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `operate_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `operate_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `operate_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `request_param` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `response_body` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `success` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `error_msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `request_body` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `browser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `system_os` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logging
-- ----------------------------
INSERT INTO `sys_logging` VALUES ('1278579053103812608', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 06:39:36', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278579332331212800', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 06:40:42', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278579942472421376', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 06:43:08', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278581295542308864', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 06:48:30', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278581578125152256', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 06:49:38', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278581912339877888', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 06:50:57', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');

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
INSERT INTO `sys_power` VALUES ('450300705362808832', '行为日志', '1', 'system:logging:main', '/system/logging/main', '0', '694203021537574912', 'layui-icon  layui-icon-chart', 0, NULL, NULL, NULL, NULL, NULL, NULL);
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

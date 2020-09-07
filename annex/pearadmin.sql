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

 Date: 07/09/2020 13:04:14
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
INSERT INTO `sys_config` VALUES ('网站名称', '网站名称', 'system_name', 'Pear Admin32', NULL, NULL, NULL, NULL, '系统配置\n', 'system');

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
INSERT INTO `sys_dict_data` VALUES ('1302833449496739840', 'wad', 'wa', 'dict_code', NULL, NULL, NULL, NULL, NULL, 'aw', NULL);
INSERT INTO `sys_dict_data` VALUES ('1302833512629403648', '234', '2343', 'user_sex', NULL, NULL, NULL, NULL, NULL, '234', NULL);
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
INSERT INTO `sys_logging` VALUES ('1278599037234454528', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 07:59:00', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278599097145892864', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 07:59:15', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278599260790857728', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 07:59:54', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278599332299546624', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 08:00:11', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278599616333619200', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 08:01:18', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278601743076433920', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 08:09:45', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278601828665401344', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 08:10:06', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278601841491582976', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 08:10:09', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278601852845563904', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 08:10:12', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278602332179013632', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 08:12:06', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278602339892338688', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 08:12:08', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278602547837542400', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 08:12:57', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278605614821679104', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 08:25:09', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278605921471438848', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 08:26:22', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278605922209636352', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 08:26:22', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278610425214410752', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 08:44:15', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278612015052759040', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 08:50:35', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278612273967144960', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 08:51:36', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278612616004247552', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 08:52:58', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278691924311810048', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 14:08:06', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278692901194571776', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 14:11:59', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278705909325111296', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 15:03:41', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278707811123208192', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 15:11:14', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278707845231288320', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 15:11:22', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278723405365125120', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 16:13:12', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278726050020597760', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 16:23:43', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278755758275829760', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-02 18:21:46', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1278856894324416512', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-03 01:03:38', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1279077355721334784', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-03 15:39:40', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1279084566346473472', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-03 16:08:20', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1279364731379130368', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-04 10:41:36', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1279365127480811520', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-04 10:43:11', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1279394384844169216', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-04 12:39:26', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1279674762217660416', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-05 07:13:33', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280210627276840960', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-06 18:42:53', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280211778864947200', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-06 18:47:28', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280212153697312768', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-06 18:48:57', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280212154641031168', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-06 18:48:58', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280213128889769984', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-06 18:52:50', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280393316961361920', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-07 06:48:50', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280521513942130688', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-07 15:18:15', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280698200713601024', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-08 03:00:20', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280700161651384320', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-08 03:08:07', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280750090994327552', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-08 06:26:32', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280793187153354752', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-08 09:17:46', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280793941285019648', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-08 09:20:46', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280794994302787584', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-08 09:24:57', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280794995212951552', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-08 09:24:58', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280795102561968128', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-08 09:25:23', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280803467472150528', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-08 09:58:37', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280803899883921408', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-08 10:00:21', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280806962103328768', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-08 10:12:31', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280841061127954432', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-08 12:28:01', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280842454526074880', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-08 12:33:33', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280849349097824256', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-08 13:00:57', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280851901856096256', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-08 13:11:05', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280855294494384128', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-08 13:24:34', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280862005573722112', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-08 13:51:14', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280870429833306112', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-08 14:24:43', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280891157672632320', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-08 15:47:04', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280891737484828672', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-08 15:49:23', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280892165119287296', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-08 15:51:05', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280894644288495616', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-08 16:00:56', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280897184606461952', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-08 16:11:01', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280898291839803392', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-08 16:15:25', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1280902120148836352', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-08 16:30:38', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1281289455914983424', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-09 18:09:46', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1281289984208543744', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-09 18:11:52', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1281391943955521536', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-10 00:57:01', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1281428877008445440', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-10 03:23:47', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1281432553731137536', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-10 03:38:23', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1281449689329442816', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-10 04:46:29', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1281449923619069952', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-07-10 04:47:25', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1281450102715850752', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-10 04:48:07', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1281450457679798272', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-07-10 04:49:32', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1281450537820364800', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-10 04:49:51', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1282256429104758808', '角色列表', '/system/role/index', 'QUERY', 'GET', '就眠仪式', '/system/role/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-12 10:13:20', '暂无介绍', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1282256429104759121', '用户列表', '/system/user/index', 'QUERY', 'GET', '就眠仪式', '/system/user/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-12 10:13:21', '暂无介绍', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1282352600011767882', '角色列表', '/system/role/index', 'QUERY', 'GET', '就眠仪式', '/system/role/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-12 16:36:35', '暂无介绍', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1282352600011768053', '用户列表', '/system/user/index', 'QUERY', 'GET', '就眠仪式', '/system/user/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-12 16:35:05', '暂无介绍', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1282364814848426177', '角色列表', '/system/role/index', 'QUERY', 'GET', '就眠仪式', '/system/role/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-12 17:23:35', '暂无介绍', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1282364814848426331', '权限列表', '/system/power/index', 'QUERY', 'GET', '就眠仪式', '/system/power/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-12 17:23:35', '暂无介绍', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1282386556048375850', '权限列表', '/system/power/index', 'QUERY', 'GET', '就眠仪式', '/system/power/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-12 18:49:45', '暂无介绍', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1282386556048375945', '角色列表', '/system/role/index', 'QUERY', 'GET', '就眠仪式', '/system/role/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-12 18:49:44', '暂无介绍', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1282405413676908584', '权限列表', '/system/power/index', 'QUERY', 'GET', '就眠仪式', '/system/power/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-12 20:04:31', '暂无介绍', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1282405413681102888', '角色列表', '/system/role/index', 'QUERY', 'GET', '就眠仪式', '/system/role/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-12 20:04:32', '暂无介绍', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1282406657657143352', '角色列表', '/system/role/index', 'QUERY', 'GET', '就眠仪式', '/system/role/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-12 20:09:46', '暂无介绍', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1282406657657143513', '权限列表', '/system/power/index', 'QUERY', 'GET', '就眠仪式', '/system/power/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-12 20:09:48', '暂无介绍', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1282676300108275712', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-13 14:00:36', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1283096396735717376', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-14 17:49:54', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1283242052594966528', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-15 03:28:41', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1283256845125033984', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-15 04:27:28', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1283256919754285056', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-15 04:27:46', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1283259348239523840', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-15 04:37:25', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1283261533853589504', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-15 04:46:06', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1283264936675647488', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-15 04:59:37', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1283265376872046592', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-15 05:01:22', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1283271127501905920', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-15 05:24:13', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1283275916231057408', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-15 05:43:15', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1283304106580254720', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-15 07:35:16', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1283654263289159680', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-16 06:46:40', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1283658367289794560', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-16 07:02:59', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1283663797739069440', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-16 07:24:33', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1283666355870244864', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-16 07:34:43', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1283666368126001152', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-16 07:34:46', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1283666368952279040', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-16 07:34:46', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1283678545486553088', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-16 08:23:09', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1283679031824490496', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-16 08:25:05', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1283679402001178624', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-16 08:26:34', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1283681800157405184', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-16 08:36:05', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1283681801151455232', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-16 08:36:06', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1283682057054330880', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-16 08:37:07', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1283682076532678656', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-16 08:37:11', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1283688988586287104', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-16 17:04:39', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1283694344095662080', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-16 17:25:56', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1283967930479935488', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-17 11:33:04', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1283971391917391872', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-17 11:46:50', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1284018373448957952', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-17 14:53:31', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1284019696718315520', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-17 14:58:46', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1284020615765819392', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-17 15:02:25', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1284020756245643264', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-17 15:02:59', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1284021030259523584', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-17 15:04:04', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1284021202683166720', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-17 15:04:45', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1284021225353379840', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-17 15:04:51', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1284021365103394816', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-17 15:05:24', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1284021388633440256', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-17 15:05:30', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1284021535757041664', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-17 15:06:05', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1284021894458114048', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-17 15:07:30', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1284022298017267712', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-17 15:09:06', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1284023023820603392', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-17 15:12:00', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1284023024659464192', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-17 15:12:00', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1284023110680444928', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-17 15:12:20', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1284023403635802112', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-17 15:13:30', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1284024150200942592', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-17 15:16:28', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1284026070042935296', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-17 15:24:06', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1284026567135068160', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-17 15:26:04', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1284027422156521472', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-17 15:29:28', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1284027632693805056', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-07-17 15:30:18', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1284048138545397760', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-17 16:51:47', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1284914245506433024', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-20 02:13:23', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1284917397957902336', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-20 02:25:55', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1286956705459994624', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-25 17:29:24', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1287917314146041856', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-28 09:06:31', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1288394324727300096', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-29 16:41:59', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1288396993835565056', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-07-29 16:52:35', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1293218403552591872', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-08-12 00:11:09', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1293574590353637376', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-08-12 23:46:30', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1293577778603491328', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-08-12 23:59:11', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1293578024469397504', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-08-13 00:00:09', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1293581907644121088', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-08-13 00:15:35', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1293770600451407872', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-08-13 12:45:23', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1293770964974174208', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-08-13 12:46:50', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1293771222236004352', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-08-13 12:47:51', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1293771446073425920', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-08-13 12:48:45', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1293771570958827520', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-08-13 12:49:14', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1293771927634051072', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-08-13 12:50:39', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1293772165245566976', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-08-13 12:51:36', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1293772394799824896', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-08-13 12:52:31', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1293772789500608512', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-08-13 12:54:05', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1293772824971837440', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-08-13 12:54:13', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1293773387356700672', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-08-13 12:56:27', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1293773741997686784', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-08-13 12:57:52', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1301912149794226176', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-04 23:57:00', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1301916867077603328', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 00:15:44', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1301919390068899840', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 00:25:46', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302119529572204544', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 13:41:03', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302125073880055808', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 14:03:05', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302126017384546304', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 14:06:50', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302126460626010112', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 14:08:35', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302126772308934656', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 14:09:50', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302127301676236800', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 14:11:56', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302131271811465216', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 14:27:42', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302132504529993728', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 14:32:36', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302134820226203648', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 14:41:48', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302139201529053184', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 14:59:13', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302139386367836160', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 14:59:57', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302139404734693376', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 15:00:01', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302166458859520000', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 16:47:32', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302167577446842368', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 16:51:58', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302172632094867456', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 17:12:03', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302172764521627648', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 17:12:35', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302173476534091776', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 17:15:25', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302173645895892992', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 17:16:05', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302173955376807936', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 17:17:19', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302174003829407744', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 17:17:30', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302174676910342144', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 17:20:11', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302179845278531584', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 17:40:43', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302180418035908608', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 17:43:00', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302182861368983552', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 17:52:42', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302183539659243520', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 17:55:24', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302192937995599872', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 18:32:45', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302193235359170560', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 18:33:56', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302194399366610944', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 18:38:33', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302194827407917056', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 18:40:15', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302196378276986880', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 18:46:25', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302196424619851776', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 18:46:36', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302196680426258432', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 18:47:37', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302196711547994112', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 18:47:44', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302198982247710720', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 18:56:46', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302211351082434560', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 19:45:55', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302214148897112064', '主页', '/index', 'ADD', 'GET', '就眠仪式', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 19:57:02', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302215938166226944', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 20:04:08', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302216983760076800', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 20:08:18', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302217563815542784', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 20:10:36', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302218465536376832', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 20:14:11', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302229147946319872', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 20:56:38', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302235141111808000', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 21:20:27', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302235879087013888', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 21:23:23', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302246501719736320', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 22:05:35', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302255296839680000', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-05 22:40:32', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302614320147857408', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-06 22:27:10', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302622263958306816', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-06 22:58:44', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302816686738505728', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-07 11:51:18', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302830342427639808', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-07 12:45:34', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302831256412618752', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-07 12:49:12', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302831747901161472', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-07 12:51:09', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302832314505494528', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-07 12:53:24', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302832883190202368', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-07 12:55:39', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302833360619438080', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-07 12:57:33', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302833765260722176', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-07 12:59:10', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');
INSERT INTO `sys_logging` VALUES ('1302833912191385600', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '0:0:0:0:0:0:0:1', NULL, NULL, '1', NULL, '2020-09-07 12:59:45', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows');

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
INSERT INTO `sys_power` VALUES ('1284020948269268992', '用户列表', '2', 'sys:user:data', '', '', '2', 'layui-icon-username', 0, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('1284022967767924736', '用户保存', '2', 'sys:user:save', '', '', '2', 'layui-icon-username', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_power` VALUES ('1302180351979814912', '布局构建', '1', 'generator:from:main', 'component/code/index.html', '0', '442417411065516032', 'layui-icon-senior', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_power` VALUES ('2', '用户管理', '1', 'sys:user:main', '/system/user/main', NULL, '1', 'layui-icon layui-icon-username', 3, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('3', '角色管理', '1', 'sys:role:main', '/system/role/main', NULL, '1', 'layui-icon layui-icon-user', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('4', '权限管理', '1', 'sys:power:main', '/system/power/main', NULL, '1', 'layui-icon layui-icon-vercode', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442359447487123456', '角色列表', '2', 'sys:role:data', '', '', '3', 'layui-icon layui-icon-rate', 1, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442417411065516032', '敏捷开发', '0', '', '', '', '0', 'layui-icon layui-icon-senior', 2, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442418188639145984', '代码生成', '1', 'exp:template:main', '/generator/main', '0', '442417411065516032', 'layui-icon layui-icon-template-1', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442520236248403968', '数据监控', '1', '/druid/index.html', '/druid/index.html', '0', '694203021537574912', 'layui-icon  layui-icon-chart', 1, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442650387514789888', '定时任务', '0', '', '', '', '0', 'layui-icon  layui-icon-log', 4, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442650770626711552', '任务管理', '1', 'qrt:task:main', '/schedule/job/main', '0', '442650387514789888', 'layui-icon  layui-icon-chat', 1, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442651158935375872', '任务日志', '1', 'qrt:log:main', '/schedule/log/main', '0', '442650387514789888', 'layui-icon  layui-icon-file', 2, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442722702474743808', '数据字典', '1', 'system:dictType:main', '/system/dictType/main', '0', '1', 'layui-icon  layui-icon-form', 1, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('450300705362808832', '行为日志', '1', 'system:logging:main', '/system/logging/main', '0', '694203021537574912', 'layui-icon  layui-icon-chart', 0, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('451002662209589248', '工作流程', '0', '', '', '', '0', 'layui-icon  layui-icon-chart', 6, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('451003242072117248', '模型管理', '1', 'process:model:main', '/process/model/main', '0', '451002662209589248', 'layui-icon  layui-icon-component', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('474356044148117504', '工作空间', '0', '', '', '', '0', 'layui-icon layui-icon-component', 0, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('474356363552755712', '项目介绍', '1', 'home', '/console', '0', '474356044148117504', 'layui-icon layui-icon-home', 1, NULL, NULL, NULL, NULL, NULL, '0');
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
INSERT INTO `sys_role_power` VALUES ('1284022439012990976', '2', '474356044148117504', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022439012990977', '2', '474356363552755712', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022439012990978', '2', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022439012990979', '2', '3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022439012990980', '2', '442359447487123456', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022439012990981', '2', '4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022439012990982', '2', '442722702474743808', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022439012990983', '2', '2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022439012990984', '2', '1284020948269268992', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022439012990985', '2', '442417411065516032', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022439012990986', '2', '442418188639145984', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022439012990987', '2', '694203021537574912', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022439012990988', '2', '450300705362808832', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022439012990989', '2', '442520236248403968', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022439012990990', '2', '694203311615639552', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022439012990991', '2', '442650387514789888', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022439012990992', '2', '442650770626711552', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022439012990993', '2', '442651158935375872', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022439012990994', '2', '451002662209589248', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022439012990995', '2', '451003242072117248', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022485632679936', '3', '474356044148117504', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022485632679937', '3', '474356363552755712', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022485632679938', '3', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022485632679939', '3', '3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022485632679940', '3', '442359447487123456', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022485632679941', '3', '4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022485632679942', '3', '442722702474743808', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022485632679943', '3', '2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022485632679944', '3', '1284020948269268992', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022485632679945', '3', '442417411065516032', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022485632679946', '3', '442418188639145984', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022485632679947', '3', '694203021537574912', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022485632679948', '3', '450300705362808832', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022485632679949', '3', '442520236248403968', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022485632679950', '3', '694203311615639552', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022485632679951', '3', '442650387514789888', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022485632679952', '3', '442650770626711552', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022485632679953', '3', '442651158935375872', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022485632679954', '3', '451002662209589248', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1284022485632679955', '3', '451003242072117248', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1302180391519518720', '1', '474356044148117504', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1302180391519518721', '1', '474356363552755712', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1302180391519518722', '1', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1302180391519518723', '1', '3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1302180391519518724', '1', '442359447487123456', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1302180391519518725', '1', '4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1302180391519518726', '1', '442722702474743808', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1302180391519518727', '1', '2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1302180391519518728', '1', '1284020948269268992', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1302180391519518729', '1', '442417411065516032', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1302180391519518730', '1', '442418188639145984', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1302180391519518731', '1', '1302180351979814912', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1302180391519518732', '1', '694203021537574912', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1302180391519518733', '1', '450300705362808832', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1302180391519518734', '1', '442520236248403968', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1302180391519518735', '1', '694203311615639552', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1302180391519518736', '1', '442650387514789888', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1302180391519518737', '1', '442650770626711552', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1302180391519518738', '1', '442651158935375872', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1302180391519518739', '1', '451002662209589248', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1302180391519518740', '1', '451003242072117248', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('442062615250866176', '693913251020275712', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('442062615250866177', '693913251020275712', '2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('442062615250866178', '693913251020275712', '3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('442062615250866179', '693913251020275712', '4', NULL, NULL, NULL, NULL, NULL);

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
INSERT INTO `sys_user` VALUES ('1302196622007992320', 'manager', '$2a$10$/fO/NA0gEvEomRlblgdUXug5Egz8EXdUFNFRB6n1reEJwB4pRGWN.', NULL, NULL, '如花', '854085467@qq.com', NULL, '0', '15553726531', NULL, NULL, NULL, NULL, NULL, '0', NULL);

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
INSERT INTO `sys_user_role` VALUES ('1302180555911069696', '1', '1');
INSERT INTO `sys_user_role` VALUES ('1302180555911069697', '1', '2');
INSERT INTO `sys_user_role` VALUES ('1302180555911069698', '1', '3');
INSERT INTO `sys_user_role` VALUES ('1302196622322565120', '1302196622007992320', '1');
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

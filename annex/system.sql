/*
 Navicat Premium Data Transfer

 Source Server         : mysql.pearadmin.com
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : mysql.pearadmin.com:3306
 Source Schema         : pear-admin

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 20/09/2020 18:45:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
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
) ENGINE = InnoDB AUTO_INCREMENT = 450341772497915905 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = DYNAMIC;

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
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
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
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
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
  `config_id` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置标识',
  `config_name` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置名称',
  `config_code` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置标识',
  `config_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置值',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `config_type` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置类型',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1307313917164257280', '网站描述', 'system_desc', '网站描述', NULL, NULL, NULL, NULL, NULL, 'STRING');
INSERT INTO `sys_config` VALUES ('网站名称', '网站名称', 'system_name', '网站名称', NULL, NULL, NULL, NULL, '系统配置\n', 'STRING');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `data_id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标识',
  `data_label` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典标签',
  `data_value` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典值',
  `type_code` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属类型',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否默认',
  `update_by` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `enable` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否启用',
  PRIMARY KEY (`data_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

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
  `id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标识',
  `type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典类型名称',
  `type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典类型标识',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典类型描述',
  `enable` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否启用',
  `create_by` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '字典名称', 'dict_code', '用户描述\n', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES ('1304489072256876544', '用户状态', 'user_status', '用户状态', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES ('455184568505470976', '用户性别', 'user_sex', '用户性别', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES ('455184935989415936', '全局状态', 'sys_status', '状态描述\n', '0', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标识',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名称',
  `file_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件描述',
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件路径',
  `file_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件类型',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_file
-- ----------------------------
INSERT INTO `sys_file` VALUES ('1304852561307631616', '1304852561307631616.png', NULL, NULL, '.png', NULL, '2020-09-13 02:41:08', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304852561307631617', '1304852561307631617.png', NULL, NULL, '.png', NULL, '2020-09-13 02:41:08', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304852561307631618', '1304852561307631618.png', NULL, NULL, '.png', NULL, '2020-09-13 02:41:08', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304852963906289664', '1304852963906289664.png', NULL, 'D:\\file\\1304852963906289664.png', '.png', NULL, '2020-09-13 02:42:44', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304852963906289665', '1304852963906289665.png', NULL, 'D:\\file\\1304852963906289665.png', '.png', NULL, '2020-09-13 02:42:44', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304852963906289666', '1304852963906289666.png', NULL, 'D:\\file\\1304852963906289666.png', '.png', NULL, '2020-09-13 02:42:44', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304853303087071232', '1304853303087071232.png', NULL, 'D:\\file\\1304853303087071232.png', '.png', NULL, '2020-09-13 02:44:05', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304853303087071233', '1304853303087071233.png', NULL, 'D:\\file\\1304853303087071233.png', '.png', NULL, '2020-09-13 02:44:05', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304853303087071234', '1304853303087071234.png', NULL, 'D:\\file\\1304853303087071234.png', '.png', NULL, '2020-09-13 02:44:05', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304856867222061056', '1304856867222061056.png', NULL, 'D:\\file\\1304856867222061056.png', '.png', NULL, '2020-09-13 02:58:15', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304856867222061057', '1304856867222061057.png', NULL, 'D:\\file\\1304856867222061057.png', '.png', NULL, '2020-09-13 02:58:15', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304856867222061058', '1304856867222061058.png', NULL, 'D:\\file\\1304856867222061058.png', '.png', NULL, '2020-09-13 02:58:15', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304857208520966144', '1304857208520966144.png', NULL, 'D:\\file\\1304857208520966144.png', '.png', NULL, '2020-09-13 02:59:36', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304857208520966145', '1304857208520966145.png', NULL, 'D:\\file\\1304857208520966145.png', '.png', NULL, '2020-09-13 02:59:36', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304857208520966146', '1304857208520966146.png', NULL, 'D:\\file\\1304857208520966146.png', '.png', NULL, '2020-09-13 02:59:36', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304857250015215616', '1304857250015215616.zip', NULL, 'D:\\file\\1304857250015215616.zip', '.zip', NULL, '2020-09-13 02:59:46', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304857250036187136', '1304857250036187136.zip', NULL, 'D:\\file\\1304857250036187136.zip', '.zip', NULL, '2020-09-13 02:59:46', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304859273464905728', '1304859273464905728.png', NULL, 'D:\\file\\1304859273464905728.png', '.png', NULL, '2020-09-13 03:07:49', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304859273464905729', '1304859273464905729.png', NULL, 'D:\\file\\1304859273464905729.png', '.png', NULL, '2020-09-13 03:07:49', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304859273464905730', '1304859273464905730.png', NULL, 'D:\\file\\1304859273464905730.png', '.png', NULL, '2020-09-13 03:07:49', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304859768921260032', '1304859768921260032.png', NULL, 'D:\\file\\1304859768921260032.png', '.png', NULL, '2020-09-13 03:09:47', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304859768921260033', '1304859768921260033.png', NULL, 'D:\\file\\1304859768921260033.png', '.png', NULL, '2020-09-13 03:09:47', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304859768921260034', '1304859768921260034.png', NULL, 'D:\\file\\1304859768921260034.png', '.png', NULL, '2020-09-13 03:09:47', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304860386071150592', '1304860386071150592.png', NULL, 'D:\\file\\1304860386071150592.png', '.png', NULL, '2020-09-13 03:12:14', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304860386071150593', '1304860386071150593.png', NULL, 'D:\\file\\1304860386071150593.png', '.png', NULL, '2020-09-13 03:12:14', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304860386071150594', '1304860386071150594.png', NULL, 'D:\\file\\1304860386071150594.png', '.png', NULL, '2020-09-13 03:12:14', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304860457890217984', '1304860457890217984.png', NULL, 'D:\\file\\1304860457890217984.png', '.png', NULL, '2020-09-13 03:12:31', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304860457890217985', '1304860457890217985.png', NULL, 'D:\\file\\1304860457890217985.png', '.png', NULL, '2020-09-13 03:12:31', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304860457894412288', '1304860457894412288.png', NULL, 'D:\\file\\1304860457894412288.png', '.png', NULL, '2020-09-13 03:12:31', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304860863466831872', '1304860863466831872.png', NULL, 'D:\\file\\1304860863466831872.png', '.png', NULL, '2020-09-13 03:14:08', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304860863466831873', '1304860863466831873.png', NULL, 'D:\\file\\1304860863466831873.png', '.png', NULL, '2020-09-13 03:14:08', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304860863466831874', '1304860863466831874.png', NULL, 'D:\\file\\1304860863466831874.png', '.png', NULL, '2020-09-13 03:14:08', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304864809178628096', '1304864809178628096.png', 'QQ图片20200912142050.png', 'D:\\file\\1304864809178628096.png', '.png', NULL, '2020-09-13 03:29:48', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304864809178628097', '1304864809178628097.png', 'QQ图片20200912003258.png', 'D:\\file\\1304864809178628097.png', '.png', NULL, '2020-09-13 03:29:48', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304864809178628098', '1304864809178628098.png', 'QQ图片20200912000740.png', 'D:\\file\\1304864809178628098.png', '.png', NULL, '2020-09-13 03:29:48', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304865101748109312', '1304865101748109312.png', 'QQ图片20200912003258.png', 'D:\\file\\1304865101748109312.png', '.png', NULL, '2020-09-13 03:30:58', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304865101748109313', '1304865101748109313.png', 'QQ图片20200912000740.png', 'D:\\file\\1304865101748109313.png', '.png', NULL, '2020-09-13 03:30:58', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304865101748109314', '1304865101748109314.png', 'QQ图片20200912142050.png', 'D:\\file\\1304865101748109314.png', '.png', NULL, '2020-09-13 03:30:58', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304865309806559232', '1304865309806559232.png', 'QQ图片20200912000740.png', 'D:\\file\\1304865309806559232.png', '.png', NULL, '2020-09-13 03:31:48', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304865309806559233', '1304865309806559233.png', 'QQ图片20200912142050.png', 'D:\\file\\1304865309806559233.png', '.png', NULL, '2020-09-13 03:31:48', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304865309806559234', '1304865309806559234.png', 'QQ图片20200912003258.png', 'D:\\file\\1304865309806559234.png', '.png', NULL, '2020-09-13 03:31:48', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304865341884596224', '1304865341884596224.png', 'QQ图片20200912003258.png', 'D:\\file\\1304865341884596224.png', '.png', NULL, '2020-09-13 03:31:55', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304865341884596225', '1304865341884596225.png', 'QQ图片20200912000740.png', 'D:\\file\\1304865341884596225.png', '.png', NULL, '2020-09-13 03:31:55', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304865341897179136', '1304865341897179136.png', 'QQ图片20200912142050.png', 'D:\\file\\1304865341897179136.png', '.png', NULL, '2020-09-13 03:31:55', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304865409400307712', '1304865409400307712.png', 'QQ图片20200912003258.png', 'D:\\file\\1304865409400307712.png', '.png', NULL, '2020-09-13 03:32:11', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304865409400307713', '1304865409400307713.png', 'QQ图片20200912000740.png', 'D:\\file\\1304865409400307713.png', '.png', NULL, '2020-09-13 03:32:11', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304865409400307714', '1304865409400307714.png', 'QQ图片20200912142050.png', 'D:\\file\\1304865409400307714.png', '.png', NULL, '2020-09-13 03:32:11', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304870783130009600', '1304870783130009600.zip', 'nbnat-layui-filemanage-master.zip', 'D:\\file\\1304870783130009600.zip', '.zip', NULL, '2020-09-13 03:53:33', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304870783142592512', '1304870783142592512.zip', 'fly-3.0.zip', 'D:\\file\\1304870783142592512.zip', '.zip', NULL, '2020-09-13 03:53:33', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304872214419472384', '1304872214419472384.png', 'QQ图片20200912142050.png', 'D:\\file\\1304872214419472384.png', '.png', NULL, '2020-09-13 03:59:14', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304872214419472385', '1304872214419472385.png', 'QQ图片20200912003258.png', 'D:\\file\\1304872214419472385.png', '.png', NULL, '2020-09-13 03:59:14', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304872214419472386', '1304872214419472386.png', 'QQ图片20200912000740.png', 'D:\\file\\1304872214419472386.png', '.png', NULL, '2020-09-13 03:59:14', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304873398404382720', '1304873398404382720.png', 'QQ图片20200912003258.png', 'D:\\file\\1304873398404382720.png', '.png', NULL, '2020-09-13 04:03:56', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304873398404382721', '1304873398404382721.png', 'QQ图片20200912000740.png', 'D:\\file\\1304873398404382721.png', '.png', NULL, '2020-09-13 04:03:56', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304873398404382722', '1304873398404382722.png', 'QQ图片20200912142050.png', 'D:\\file\\1304873398404382722.png', '.png', NULL, '2020-09-13 04:03:56', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304873433544261632', '1304873433544261632.png', 'QQ图片20200912003258.png', 'D:\\file\\1304873433544261632.png', '.png', NULL, '2020-09-13 04:04:05', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304873433544261633', '1304873433544261633.png', 'QQ图片20200912000740.png', 'D:\\file\\1304873433544261633.png', '.png', NULL, '2020-09-13 04:04:05', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304873433544261634', '1304873433544261634.png', 'QQ图片20200912142050.png', 'D:\\file\\1304873433544261634.png', '.png', NULL, '2020-09-13 04:04:05', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304873476523294720', '1304873476523294720.png', 'QQ图片20200912003258.png', 'D:\\file\\1304873476523294720.png', '.png', NULL, '2020-09-13 04:04:15', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304873476523294721', '1304873476523294721.png', 'QQ图片20200912000740.png', 'D:\\file\\1304873476523294721.png', '.png', NULL, '2020-09-13 04:04:15', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1304873476527489024', '1304873476527489024.png', 'QQ图片20200912142050.png', 'D:\\file\\1304873476527489024.png', '.png', NULL, '2020-09-13 04:04:15', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1305351580047900672', '1305351580047900672.jpg', '微信图片_20200914001233.jpg', '/home/upload/1305351580047900672.jpg', '.jpg', NULL, '2020-09-14 11:44:04', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1305351580152758272', '1305351580152758272.png', 'QQ图片20200912003258.png', '/home/upload/1305351580152758272.png', '.png', NULL, '2020-09-14 11:44:04', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1305351580270198784', '1305351580270198784.png', 'QQ图片20200912000740.png', '/home/upload/1305351580270198784.png', '.png', NULL, '2020-09-14 11:44:04', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1305351580433776640', '1305351580433776640.png', 'QQ图片20200912142050.png', '/home/upload/1305351580433776640.png', '.png', NULL, '2020-09-14 11:44:04', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1305351725011435520', '1305351725011435520.png', 'QQ图片20200912003258.png', '/home/upload/1305351725011435520.png', '.png', NULL, '2020-09-14 11:44:38', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1305351725120487424', '1305351725120487424.png', 'QQ图片20200912142050.png', '/home/upload/1305351725120487424.png', '.png', NULL, '2020-09-14 11:44:38', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1305351725279870976', '1305351725279870976.png', 'QQ图片20200912000740.png', '/home/upload/1305351725279870976.png', '.png', NULL, '2020-09-14 11:44:38', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1305351761422188544', '1305351761422188544.png', 'QQ图片20200912003258.png', '/home/upload/1305351761422188544.png', '.png', NULL, '2020-09-14 11:44:47', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1305351761602543616', '1305351761602543616.png', 'QQ图片20200912142050.png', '/home/upload/1305351761602543616.png', '.png', NULL, '2020-09-14 11:44:47', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1305351761908727808', '1305351761908727808.png', 'QQ图片20200912000740.png', '/home/upload/1305351761908727808.png', '.png', NULL, '2020-09-14 11:44:47', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1305351800538267648', '1305351800538267648.png', 'QQ图片20200912003258.png', '/home/upload/1305351800538267648.png', '.png', NULL, '2020-09-14 11:44:56', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1305351800659902464', '1305351800659902464.png', 'QQ图片20200912000740.png', '/home/upload/1305351800659902464.png', '.png', NULL, '2020-09-14 11:44:56', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1305351800873811968', '1305351800873811968.png', 'QQ图片20200912142050.png', '/home/upload/1305351800873811968.png', '.png', NULL, '2020-09-14 11:44:56', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1305351843647324160', '1305351843647324160.png', 'QQ图片20200912003258.png', '/home/upload/1305351843647324160.png', '.png', NULL, '2020-09-14 11:45:06', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1305351843722821632', '1305351843722821632.png', 'QQ图片20200912000740.png', '/home/upload/1305351843722821632.png', '.png', NULL, '2020-09-14 11:45:06', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1305351843873816576', '1305351843873816576.png', 'QQ图片20200912142050.png', '/home/upload/1305351843873816576.png', '.png', NULL, '2020-09-14 11:45:07', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1306799295365644288', '1306799295365644288.png', 'QQ图片20200912000740.png', '/home/upload/1306799295365644288.png', '.png', NULL, '2020-09-18 11:36:46', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1306799295369838592', '1306799295369838592.png', 'QQ图片20200912142050.png', '/home/upload/1306799295369838592.png', '.png', NULL, '2020-09-18 11:36:46', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1306799295369838593', '1306799295369838593.png', 'QQ图片20200912003258.png', '/home/upload/1306799295369838593.png', '.png', NULL, '2020-09-18 11:36:46', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1306799298221965312', '1306799298221965312.png', 'QQ图片20200916170440.png', '/home/upload/1306799298221965312.png', '.png', NULL, '2020-09-18 11:36:47', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1306799349379891200', '1306799349379891200.png', 'QQ图片20200912003258.png', '/home/upload/1306799349379891200.png', '.png', NULL, '2020-09-18 11:36:59', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1306799349501526016', '1306799349501526016.png', 'QQ图片20200912000740.png', '/home/upload/1306799349501526016.png', '.png', NULL, '2020-09-18 11:36:59', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1306799350797565952', '1306799350797565952.png', 'QQ图片20200912142050.png', '/home/upload/1306799350797565952.png', '.png', NULL, '2020-09-18 11:36:59', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1306799352877940736', '1306799352877940736.png', 'QQ图片20200916170440.png', '/home/upload/1306799352877940736.png', '.png', NULL, '2020-09-18 11:37:00', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1306799397421449216', '1306799397421449216.png', 'QQ图片20200912003258.png', '/home/upload/1306799397421449216.png', '.png', NULL, '2020-09-18 11:37:10', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1306799397958320128', '1306799397958320128.png', 'QQ图片20200912142050.png', '/home/upload/1306799397958320128.png', '.png', NULL, '2020-09-18 11:37:10', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1306799398109315072', '1306799398109315072.png', 'QQ图片20200912000740.png', '/home/upload/1306799398109315072.png', '.png', NULL, '2020-09-18 11:37:10', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1306799399048839168', '1306799399048839168.png', 'QQ图片20200916170440.png', '/home/upload/1306799399048839168.png', '.png', NULL, '2020-09-18 11:37:11', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1306883074503475200', '1306883074503475200.png', 'QQ图片20200912000740.png', '/home/upload/1306883074503475200.png', '.png', NULL, '2020-09-18 17:09:40', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1306883074558001152', '1306883074558001152.png', 'QQ图片20200912003258.png', '/home/upload/1306883074558001152.png', '.png', NULL, '2020-09-18 17:09:40', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1306883074595749888', '1306883074595749888.png', 'QQ图片20200912142050.png', '/home/upload/1306883074595749888.png', '.png', NULL, '2020-09-18 17:09:40', NULL, NULL, NULL);
INSERT INTO `sys_file` VALUES ('1306883075623354368', '1306883075623354368.png', 'QQ图片20200916170440.png', '/home/upload/1306883075623354368.png', '.png', NULL, '2020-09-18 17:09:41', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_logging
-- ----------------------------
DROP TABLE IF EXISTS `sys_logging`;
CREATE TABLE `sys_logging`  (
  `id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '相应消息体',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求方式',
  `business_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务类型',
  `request_method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求方法',
  `operate_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `operate_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作路径',
  `operate_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作地址',
  `request_param` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求参数',
  `response_body` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相应消息体',
  `success` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否成功',
  `error_msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `request_body` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求消息体',
  `browser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '使用浏览器',
  `system_os` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作系统',
  `logging_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志类型，登录日志，操作日志',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logging
-- ----------------------------
INSERT INTO `sys_logging` VALUES ('1304441430772547584', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-11 23:27:27', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304441431800152064', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-11 23:27:27', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304442448528801792', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-11 23:31:30', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', NULL);
INSERT INTO `sys_logging` VALUES ('1304442465721253888', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-11 23:31:34', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304442471542947840', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-11 23:31:35', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304442890608443392', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-11 23:33:15', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304442897088643072', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-11 23:33:17', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304443326816059392', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-11 23:34:59', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', NULL);
INSERT INTO `sys_logging` VALUES ('1304445120229146624', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-11 23:42:07', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', NULL);
INSERT INTO `sys_logging` VALUES ('1304445374861148160', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-11 23:43:07', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', NULL);
INSERT INTO `sys_logging` VALUES ('1304447555802759168', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-11 23:51:47', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', NULL);
INSERT INTO `sys_logging` VALUES ('1304447820886966272', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-11 23:52:51', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304447827262308352', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-11 23:52:52', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304449536395051008', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-11 23:59:40', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304449543005274112', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-11 23:59:41', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304450033948557312', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 00:01:38', '登录成功', '', '谷歌浏览器', 'Android', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304450039568924672', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 00:01:40', '返回 Index 主页视图', '', '谷歌浏览器', 'Android', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304450179943890944', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 00:02:13', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304450185190965248', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 00:02:14', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304450277037834240', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 00:02:36', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304450282683367424', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 00:02:38', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304452248482349056', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 00:10:26', '登录成功', '', '你用啥浏览器', 'Mac', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304452254115299328', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 00:10:28', '返回 Index 主页视图', '', '你用啥浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304452399171108864', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 00:11:02', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304452405303181312', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 00:11:04', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304458972379480064', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 00:37:09', '登录成功', '', '谷歌浏览器', 'Android', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304458974245945344', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 00:37:10', '登录成功', '', '谷歌浏览器', 'Android', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304458975906889728', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 00:37:10', '返回 Index 主页视图', '', '谷歌浏览器', 'Android', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304459093796192256', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 00:37:38', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304459099110375424', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 00:37:40', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304460020993228800', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 00:41:19', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304460026269663232', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 00:41:21', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304463054422933504', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 00:53:23', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304463059665813504', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 00:53:24', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304483592696496128', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 02:14:59', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304483597998096384', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 02:15:01', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304488528385671168', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 02:34:36', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304488535029448704', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 02:34:38', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304488862768168960', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 02:35:56', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304488869370003456', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 02:35:57', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304489944374312960', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 02:40:14', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304489950938398720', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 02:40:15', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304490517068775424', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 02:42:30', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304490523754496000', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 02:42:32', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304496305334124544', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 03:05:30', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304496408514002944', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 03:05:55', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304496413878517760', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 03:05:56', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304498991408349184', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 03:16:11', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304498998077292544', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 03:16:12', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304559953071046656', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 07:18:25', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304559958355869696', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 07:18:26', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304581648389505024', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 08:44:38', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304581653737242624', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 08:44:39', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304587782848512000', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 09:09:00', '登录成功', '', '谷歌浏览器', 'Android', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304587788422742016', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 09:09:01', '返回 Index 主页视图', '', '谷歌浏览器', 'Android', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304593860873158656', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 09:33:09', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', NULL);
INSERT INTO `sys_logging` VALUES ('1304593903051079680', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 09:33:19', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304593908419788800', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 09:33:21', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304593987289481216', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 09:33:39', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', NULL);
INSERT INTO `sys_logging` VALUES ('1304593990284214272', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 09:33:40', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', NULL);
INSERT INTO `sys_logging` VALUES ('1304593991408287744', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 09:33:40', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', NULL);
INSERT INTO `sys_logging` VALUES ('1304594078914052096', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 09:34:01', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', NULL);
INSERT INTO `sys_logging` VALUES ('1304594552652300288', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 09:35:54', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304594557853237248', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 09:35:55', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304594700023365632', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 09:36:29', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304594792180613120', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 09:36:51', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304594804805468160', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 09:36:54', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304596320073285632', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 09:42:56', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304596325349720064', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 09:42:57', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304597719410540544', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 09:48:29', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304597724695363584', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 09:48:30', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304610975730630656', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 10:41:10', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304610981044813824', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 10:41:11', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304611003979268096', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 10:41:17', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304628805729517568', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 11:52:01', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304628810951426048', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 11:52:02', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304644869070782464', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 12:55:51', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304644874452074496', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 12:55:52', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304645596677668864', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 12:58:44', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304654464736559104', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 13:33:58', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304654470122045440', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 13:34:00', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304656655794831360', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 13:42:41', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304656661411004416', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 13:42:42', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304663007900467200', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 14:07:55', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304663013155930112', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 14:07:56', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304663465960407040', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 14:09:44', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304663976117796864', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 14:11:46', '登录成功', '', '谷歌浏览器', 'Android', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304663982203731968', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 14:11:47', '返回 Index 主页视图', '', '谷歌浏览器', 'Android', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304667086169047040', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 14:24:08', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304667092775075840', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 14:24:09', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304673920250544128', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 14:51:17', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304673926642663424', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 14:51:18', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304682540707086336', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 15:25:32', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304682545970937856', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 15:25:33', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304695603527155712', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 16:17:27', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304695608870699008', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 16:17:28', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304701991334707200', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 16:42:50', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304701996594364416', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 16:42:51', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304704994309570560', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 16:54:46', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304704999581810688', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 16:54:47', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304746751218941952', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 19:40:41', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304746756457627648', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 19:40:42', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304764223263342592', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 20:50:07', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304764229462523904', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 20:50:08', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304768839526907904', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 21:08:27', '登录成功', '', '火狐浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304768844945948672', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 21:08:29', '返回 Index 主页视图', '', '火狐浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304783862429122560', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 22:08:09', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304783867684585472', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 22:08:10', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304784375488970752', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 22:10:11', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304784380761210880', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 22:10:13', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304790302480924672', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 22:33:45', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304790309426692096', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 22:33:46', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304793200216506368', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 22:45:15', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304793207464263680', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 22:45:17', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304793566102421504', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 22:46:43', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304793571458547712', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 22:46:44', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304793761657651200', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 22:47:29', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304793768511143936', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 22:47:31', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304795429451333632', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 22:54:07', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304795436162220032', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 22:54:09', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304797144061837312', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 23:00:56', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304797150604951552', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 23:00:57', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304798405242912768', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 23:05:56', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304798411748278272', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 23:05:58', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304798721157890048', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 23:07:12', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304798728850243584', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 23:07:14', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304798967963320320', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 23:08:11', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304798975303352320', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 23:08:12', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304800569902235648', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 23:14:33', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304800576877363200', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 23:14:34', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304801058496708608', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 23:16:29', '登录成功', '', '谷歌浏览器', 'Mac', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304801064322596864', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 23:16:30', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304801119624495104', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 23:16:44', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304801265380753408', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 23:17:18', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304801271844175872', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 23:17:20', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304801537289093120', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 23:18:23', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304801544117420032', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 23:18:25', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304801792390856704', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 23:19:24', '登录成功', '', '谷歌浏览器', 'Mac', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304801797755371520', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 23:19:25', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304802536942731264', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 23:22:22', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304802543691366400', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 23:22:23', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304804807776665600', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 23:31:23', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304804813065682944', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-12 23:31:24', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304819331044999168', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 00:29:06', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304819337802022912', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 00:29:07', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304827275090329600', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:00:40', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304827281687969792', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:00:41', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304829220395941888', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:08:23', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304829227102633984', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:08:25', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304830941566337024', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:15:14', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304830948214308864', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:15:15', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304831162849427456', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:16:06', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304831168583041024', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:16:08', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304831665436098560', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:18:06', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304831671282958336', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:18:08', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304835384160550912', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:32:53', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304835390762385408', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:32:54', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304835891209961472', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:34:54', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304835897719521280', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:34:55', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304836427581751296', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:37:02', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304836433323753472', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:37:03', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304836842721378304', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:38:41', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304836848496934912', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:38:42', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304837399599120384', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:40:53', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304837405169156096', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:40:55', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304838081995603968', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:43:36', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304838088412889088', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:43:38', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304839092952891392', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:47:37', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304839099592474624', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:47:39', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304839849617915904', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:50:38', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304839856039395328', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:50:39', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304840168825421824', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:51:54', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304840174512898048', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:51:55', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304840426343104512', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:52:55', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304840431946694656', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:52:56', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304841047284645888', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:55:23', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304841052900818944', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:55:24', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304841975811276800', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:59:04', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304841982371168256', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 01:59:06', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304843038870208512', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:03:18', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304843045191024640', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:03:19', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304843780507041792', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:06:15', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304843786127409152', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:06:16', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304844162478112768', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:07:46', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304844168996061184', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:07:47', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304844984838520832', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:11:02', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304844991067062272', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:11:03', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304845937713086464', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:14:49', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304845944059068416', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:14:51', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304846341066719232', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:16:25', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304846347509170176', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:16:27', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304846688711606272', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:17:48', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304846695388938240', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:17:50', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304847337943728128', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:20:23', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304847344474259456', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:20:24', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304849011341000704', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:27:02', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304849017930252288', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:27:03', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304849870200242176', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:30:27', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304849875866746880', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:30:28', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304850179089760256', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:31:40', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304850184773042176', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:31:42', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304850496397246464', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:32:56', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304850502139248640', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:32:57', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304850894252146688', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:34:31', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304850900006731776', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:34:32', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304852509927407616', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:40:56', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304852516415995904', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:40:58', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304852910047232000', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:42:31', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304852916661649408', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:42:33', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304853242877837312', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:43:51', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304853249580335104', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:43:52', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304853910569091072', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:46:30', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304853917246423040', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:46:32', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304854253784793088', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:47:52', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304854260365656064', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:47:53', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304854639639789568', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:49:24', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304854646342287360', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:49:25', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304854789212864512', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:49:59', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304854794539630592', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:50:01', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304855026119737344', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:50:56', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304855031756881920', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:50:57', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304856799127535616', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:57:59', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304856805624512512', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:58:00', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304857156519985152', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:59:24', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304857162819829760', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 02:59:25', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304859204451827712', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 03:07:32', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304859210818781184', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 03:07:34', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304859679041519616', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 03:09:25', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304859685299421184', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 03:09:27', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304860274523635712', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 03:11:47', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304860281029001216', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 03:11:49', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304860701390536704', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 03:13:29', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304860707665215488', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 03:13:31', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304861613093814272', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 03:17:06', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304861619372687360', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 03:17:08', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304864301353271296', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 03:27:47', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304864307829276672', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 03:27:49', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304864757404139520', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 03:29:36', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304864763901116416', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 03:29:38', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304865040569991168', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 03:30:44', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304865047243128832', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 03:30:45', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304865213199155200', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 03:31:25', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304865219524165632', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 03:31:26', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304865987199238144', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 03:34:29', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304865993553608704', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 03:34:31', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304869816577818624', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 03:49:42', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304869822873468928', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 03:49:44', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304870574513717248', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 03:52:43', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304870581010694144', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 03:52:44', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304872132303388672', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 03:58:54', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304872138846502912', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 03:58:56', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304872488156528640', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 04:00:19', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304872494615756800', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 04:00:21', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304872839840530432', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 04:01:43', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304872846186512384', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 04:01:45', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304873129335586816', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 04:02:52', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304873135689957376', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 04:02:54', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304874516496777216', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 04:08:23', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304874521748045824', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 04:08:24', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304875266471886848', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 04:11:22', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304875272801091584', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 04:11:23', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304875631305031680', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 04:12:49', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304875637797814272', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 04:12:50', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304961012033650688', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 09:52:05', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304961017809207296', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 09:52:06', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304964236505513984', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 10:04:54', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304964256759808000', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 10:04:59', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304966951625293824', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 10:15:41', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304966958222934016', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 10:15:43', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304968264157233152', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 10:20:54', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304968270712930304', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 10:20:56', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304968765535944704', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 10:22:54', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304968770787213312', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 10:22:55', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304969334623305728', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 10:25:09', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304969340440805376', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 10:25:11', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304971612285566976', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 10:34:12', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304971648922812416', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 10:34:21', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304976449375043584', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 10:53:25', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304976461165232128', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 10:53:28', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304978074168721408', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 10:59:53', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304978080602783744', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 10:59:54', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304978372459233280', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 11:01:04', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304978378931044352', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 11:01:06', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304979585665859584', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 11:05:53', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304979592087339008', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 11:05:55', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304980579522969600', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 11:09:50', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304980586275799040', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 11:09:52', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304984213774139392', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 11:24:17', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304984219264483328', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 11:24:18', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304986029148602368', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 11:31:29', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304986035595247616', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 11:31:31', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304986566967427072', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 11:33:38', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304986572289998848', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 11:33:39', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304987613056204800', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 11:37:47', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304992124286009344', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 11:55:43', '登录成功', '', '谷歌浏览器', 'Mac', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304992129721827328', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 11:55:44', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304996215397548032', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 12:11:58', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304996223647744000', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 12:12:00', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304996608387055616', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 12:13:32', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304996615114719232', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 12:13:33', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304997184210468864', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 12:15:49', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304997190946521088', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 12:15:51', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304997632283770880', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 12:17:36', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304997639057571840', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 12:17:37', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1304999134435999744', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 12:23:34', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1304999140916199424', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 12:23:36', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305001114143293440', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 12:31:26', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305001120946454528', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 12:31:28', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305003863538925568', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 12:42:22', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305003870283366400', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 12:42:23', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305008381060186112', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 13:00:19', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305008386441478144', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 13:00:20', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305023181114834944', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 13:59:07', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305023186336743424', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 13:59:08', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305023209581576192', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 13:59:14', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305025376342245376', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 14:07:51', '登录成功', '', '谷歌浏览器', 'Mac', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305025381669011456', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 14:07:52', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305038659275194368', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 15:00:37', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305038664622931968', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 15:00:39', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305048198204620800', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 15:38:32', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305048203397169152', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 15:38:33', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305053844585054208', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 16:00:58', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305053850398359552', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 16:00:59', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305054438326534144', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 16:03:19', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305054444810928128', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 16:03:21', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305054482152816640', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 16:03:30', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305054487513137152', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 16:03:31', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305055121469603840', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 16:06:02', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305055127228383232', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 16:06:04', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305056297468559360', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 16:10:43', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305056303231533056', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-13 16:10:44', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305352719745155072', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 11:48:35', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305352725034172416', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 11:48:37', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305353676566560768', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 11:52:23', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305353683080314880', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 11:52:25', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305355461582651392', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 11:59:29', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305355467991547904', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 11:59:31', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305359428345659392', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 12:15:15', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305359433844391936', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 12:15:16', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305364523170922496', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 12:35:29', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305364529747591168', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 12:35:31', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305364620139036672', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 12:35:53', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305364625352556544', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 12:35:54', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305365525869625344', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 12:39:29', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305365532584706048', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 12:39:30', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305367049790291968', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 12:45:32', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305367056295657472', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 12:45:33', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305367438338031616', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 12:47:05', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305367443744489472', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 12:47:06', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305373024039469056', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 13:09:16', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305373030410616832', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 13:09:18', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305374112272613376', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 13:13:36', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305374118819921920', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 13:13:37', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305377592466997248', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 13:27:25', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305377597776986112', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 13:27:27', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305377744367910912', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 13:28:02', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305377749782757376', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 13:28:03', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305379236877434880', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 13:33:58', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305379242195812352', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 13:33:59', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305379357442703360', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 13:34:26', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305379363553804288', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 13:34:28', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305380249625690112', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 13:37:59', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305380256017809408', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 13:38:00', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305380748299075584', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 13:39:58', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305380753969774592', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 13:39:59', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305381565596958720', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 13:43:13', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305381571397681152', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 13:43:14', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305382284731351040', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 13:46:04', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305382291173801984', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 13:46:06', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305390162548621312', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 14:17:22', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305390168118657024', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 14:17:24', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305392012219908096', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 14:24:43', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305392017513119744', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 14:24:45', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305392479008194560', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 14:26:35', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305392485496782848', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 14:26:36', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305392565566046208', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 14:26:55', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305392570808926208', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 14:26:57', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305398139208859648', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 14:49:04', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305398145856831488', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 14:49:06', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305399237973901312', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 14:53:26', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305399243636211712', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 14:53:27', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305399866800734208', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 14:55:56', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305399873356431360', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 14:55:58', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305401727272353792', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 15:03:20', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305401733752553472', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 15:03:21', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305402948422991872', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 15:08:11', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305402953762340864', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 15:08:12', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305403249053925376', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 15:09:22', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305403255492182016', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 15:09:24', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305404072286748672', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 15:12:39', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305404077470908416', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 15:12:40', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305404163135373312', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 15:13:00', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305405928576647168', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 15:20:01', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', NULL);
INSERT INTO `sys_logging` VALUES ('1305406985373483008', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 15:24:13', '登录成功', '', '谷歌浏览器', 'Mac', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305406990649917440', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 15:24:15', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305407012825202688', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 15:24:20', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305407018126802944', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 15:24:21', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305408566034694144', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 15:30:30', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305408571353071616', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 15:30:31', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305412898230632448', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 15:47:43', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305412904710832128', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 15:47:45', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305414323652263936', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 15:53:23', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305414328916115456', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 15:53:24', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305414694684590080', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 15:54:51', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305414700132990976', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 15:54:53', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305415954280218624', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 15:59:52', '登录成功', '', '谷歌浏览器', 'Mac', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305415959539875840', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 15:59:53', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305420763410464768', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 16:18:58', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305420769924218880', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 16:19:00', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305420883963150336', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 16:19:27', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305420889218613248', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 16:19:28', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305420913281335296', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 16:19:34', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305420918566158336', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 16:19:35', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305421085021306880', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 16:20:15', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305421090234826752', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 16:20:16', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305421732261134336', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 16:22:49', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305421739043323904', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 16:22:51', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305426458197360640', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 16:41:36', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305426464685948928', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 16:41:37', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305426843020558336', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 16:43:08', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305426848267632640', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 16:43:09', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305426887572455424', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 16:43:18', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305426892899221504', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 16:43:20', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305427831743840256', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 16:47:03', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305427836990914560', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 16:47:05', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305428372452540416', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 16:49:12', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305428377787695104', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 16:49:14', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305429252996333568', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 16:52:42', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305429258297933824', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 16:52:44', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305430810475626496', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 16:58:54', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305430815731089408', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 16:58:55', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305430835742113792', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 16:59:00', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305432056460738560', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 17:03:51', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305432062924161024', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 17:03:52', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305432475945664512', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 17:05:31', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305432481280819200', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 17:05:32', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305433482264051712', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 17:09:31', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305436439688773632', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 17:21:16', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305436446567432192', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 17:21:17', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305436710754058240', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 17:22:20', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305436715984355328', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 17:22:22', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305437396304658432', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 17:25:04', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305437402369622016', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 17:25:05', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305442600131493888', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 17:45:44', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305442605399539712', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 17:45:46', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305447501859389440', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 18:05:13', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305450077375954944', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 18:15:27', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305450083172483072', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 18:15:29', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305450750226202624', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 18:18:08', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305450756236640256', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 18:18:09', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305521216747995136', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 22:58:08', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305521222007652352', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-14 22:58:09', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305536902522208256', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 00:00:28', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305536908943687680', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 00:00:29', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305537333646327808', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 00:02:11', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305537339312832512', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 00:02:12', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305557118845190144', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 01:20:48', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305557125279252480', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 01:20:49', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305557262474936320', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 01:21:22', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305557268141441024', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 01:21:23', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305557511645954048', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 01:22:22', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305557517778026496', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 01:22:23', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305559425104216064', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 01:29:58', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305559430858801152', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 01:29:59', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305559951535505408', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 01:32:03', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305559957298479104', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 01:32:05', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305562452917747712', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 01:42:00', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305562458642972672', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 01:42:01', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305563045774229504', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 01:44:21', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305563051570757632', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 01:44:22', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305564523494637568', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 01:50:13', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305564529584766976', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 01:50:15', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305569895424983040', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 02:11:34', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305569900755943424', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 02:11:35', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305580851571982336', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 02:55:06', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305580857557254144', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 02:55:08', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305590137341607936', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 03:32:00', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305590143280742400', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 03:32:02', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305591391807602688', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 03:36:59', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305591397847400448', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 03:37:01', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305592186800177152', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 03:40:09', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305592192634454016', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 03:40:10', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305592643434053632', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 03:41:58', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305592649389965312', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 03:41:59', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305593168619634688', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 03:44:03', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305593174575546368', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 03:44:04', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305593818556399616', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 03:46:38', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305593818556399617', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 03:46:38', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305593851993391104', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 03:46:46', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305593857433403392', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 03:46:47', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305594971721564160', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 03:51:13', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305594977551646720', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 03:51:14', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305595876093198336', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 03:54:48', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305595881893920768', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 03:54:50', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305596403363348480', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 03:56:54', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305596409134710784', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 03:56:55', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305597059197304832', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 03:59:30', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305597064993832960', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 03:59:32', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305597332749811712', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 04:00:36', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305597338546339840', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 04:00:37', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305598710352183296', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 04:06:04', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305598716362620928', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 04:06:05', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305599243494359040', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 04:08:11', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305599249227972608', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 04:08:13', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305673866122625024', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 09:04:43', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305673871487139840', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 09:04:44', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305679899494711296', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 09:28:41', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305679904968278016', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 09:28:42', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305687013403394048', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 09:56:57', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305691050286776320', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 10:13:00', '登录成功', '', '谷歌浏览器', 'Mac', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305691055642902528', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 10:13:01', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305700791486513152', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 10:51:42', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305700796960079872', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 10:51:43', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305703783304527872', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 11:03:35', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305703788559990784', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 11:03:37', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305703839709528064', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 11:03:49', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305703845006934016', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 11:03:50', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305707172792893440', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 11:17:04', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305717089054490624', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 11:56:28', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305717094318342144', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 11:56:29', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305719152807247872', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 12:04:40', '登录成功', '', '火狐浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305719158352117760', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 12:04:41', '返回 Index 主页视图', '', '火狐浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305723643321384960', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 12:22:30', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305723649315045376', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 12:22:32', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305724095769346048', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 12:24:18', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305724101058363392', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 12:24:20', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305728558835957760', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 12:42:02', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305728564141752320', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 12:42:04', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305728792781651968', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 12:42:58', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305728798628511744', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 12:43:00', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305736016199417856', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 13:11:40', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305736021857533952', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 13:11:42', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305736297955983360', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 13:12:47', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305736303693791232', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 13:12:49', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305736648377499648', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 13:14:11', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305736654006255616', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 13:14:12', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305739114879909888', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 13:23:59', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305739120210870272', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 13:24:00', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305753268432928768', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 14:20:14', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305753274791493632', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 14:20:15', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305753989471535104', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 14:23:05', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305753994961879040', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 14:23:07', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305754420411105280', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 14:24:48', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305754426182467584', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 14:24:50', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305755999604310016', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 14:31:05', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305756004893327360', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 14:31:06', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305758646998663168', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 14:41:36', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305758652346400768', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 14:41:37', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305759186994331648', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 14:43:45', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305759193046712320', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 14:43:46', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305763553541619712', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 15:01:06', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305763558868385792', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 15:01:07', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305764435943489536', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 15:04:36', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305764441396084736', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 15:04:37', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305767302880296960', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 15:16:00', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305771177880322048', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 15:31:24', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305771183387443200', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 15:31:25', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305771222147006464', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 15:31:34', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305773261547634688', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 15:39:40', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305773267000229888', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 15:39:42', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305783625152724992', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 16:20:51', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305783630441742336', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 16:20:52', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305788738814607360', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 16:41:10', '登录成功', '', '火狐浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305788744409808896', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 16:41:12', '返回 Index 主页视图', '', '火狐浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305789574768754688', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 16:44:30', '登录成功', '', '火狐浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305789580158435328', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 16:44:31', '返回 Index 主页视图', '', '火狐浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305789900070584320', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 16:45:47', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305789905758060544', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 16:45:49', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305789914931003392', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 16:45:51', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305818964957331456', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 18:41:17', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305818970154074112', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 18:41:18', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305842013039493120', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 20:12:52', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305842018752135168', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 20:12:53', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305843135879839744', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 20:17:20', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305843141575704576', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 20:17:21', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305843568216113152', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 20:19:03', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305843573916172288', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 20:19:04', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305844055954948096', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 20:20:59', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305844061701144576', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 20:21:00', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305844911496495104', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 20:24:23', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305844917221720064', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 20:24:24', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305849389259948032', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 20:42:11', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305849394926452736', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 20:42:12', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305849952336871424', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 20:44:25', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305849962101211136', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 20:44:27', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305850106137804800', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 20:45:01', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305850112131465216', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 20:45:03', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305851108060561408', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 20:49:00', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305851113857089536', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 20:49:02', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305851387581562880', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 20:50:07', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305851393176764416', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 20:50:08', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305851925316501504', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 20:52:15', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305851931117223936', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 20:52:17', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305852495469215744', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 20:54:31', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305852501278326784', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 20:54:33', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305852735043665920', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 20:55:28', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305852740399792128', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 20:55:30', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305852842011000832', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 20:55:54', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305854197551333376', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:01:17', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305854203092008960', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:01:18', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305854969324240896', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:04:21', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305854975074631680', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:04:22', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305855536209592320', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:06:36', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305855541884485632', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:06:37', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305855766665625600', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:07:31', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305855772424404992', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:07:32', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305856126926979072', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:08:57', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305856132606066688', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:08:58', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305858286867709952', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:17:32', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305858292601323520', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:17:33', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305859109358141440', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:20:48', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305859115142086656', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:20:49', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305859590579027968', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:22:43', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305859596597854208', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:22:44', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305859932964257792', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:24:04', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305859938869837824', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:24:06', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305860512696762368', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:26:23', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305860521949396992', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:26:25', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305860834529902592', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:27:39', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305860840204795904', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:27:41', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305861366011133952', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:29:46', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305861371618918400', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:29:47', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305861612799787008', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:30:45', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305861618122358784', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:30:46', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305862101847244800', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:32:41', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305862107203371008', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:32:43', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305865738111680512', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:47:08', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305865743681716224', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:47:10', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305868138759323648', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:56:41', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305868144568434688', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 21:56:42', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305870462412128256', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 22:05:55', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305870468128964608', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 22:05:56', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305870503709245440', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 22:06:05', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305870754524430336', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 22:07:04', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305870755833053184', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 22:07:05', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305871205143674880', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 22:08:52', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305871205995118592', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 22:08:52', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305872621891485696', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 22:14:30', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305872627503464448', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 22:14:31', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305875137576304640', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 22:24:29', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305875143309918208', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 22:24:31', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305875597653704704', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 22:26:19', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305875602997248000', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 22:26:20', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305876715460886528', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 22:30:46', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305876721232248832', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 22:30:47', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305877343335612416', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 22:33:15', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305877348976951296', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 22:33:17', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305877702514835456', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 22:34:41', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305877708416221184', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 22:34:42', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305879549141057536', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 22:42:01', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305879554925002752', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 22:42:03', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305884227220275200', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 23:00:37', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305884232953888768', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 23:00:38', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305885276572221440', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 23:04:47', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305885282477801472', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 23:04:48', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305886075557773312', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 23:07:57', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305886081014562816', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 23:07:59', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305886112044023808', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 23:08:06', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305886118218039296', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 23:08:07', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305888476952002560', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 23:17:30', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305888482694004736', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 23:17:31', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305892369559715840', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 23:32:58', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305892374857121792', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 23:32:59', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305892453152194560', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 23:33:18', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305892458403463168', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 23:33:19', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305892527194243072', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 23:33:35', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305893097351151616', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 23:35:51', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305893102652751872', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 23:35:53', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305893223650033664', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 23:36:21', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305893229366870016', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 23:36:23', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305898390927704064', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 23:56:53', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305898396615180288', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 23:56:55', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305898586042531840', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 23:57:40', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305899047076233216', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-15 23:59:30', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305899673004802048', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 00:01:59', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1305933119127289856', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 02:14:53', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1305933124718297088', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 02:14:55', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306032011021910016', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 08:47:51', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306032016898129920', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 08:47:52', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306032856065114112', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 08:51:12', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306032861643538432', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 08:51:14', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306032959341461504', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 08:51:37', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306032964886331392', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 08:51:38', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306033188891525120', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 08:52:32', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306033194864214016', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 08:52:33', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306033762173190144', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 08:54:48', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306033768041021440', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 08:54:50', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306036426353147904', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 09:05:24', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306036432120315904', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 09:05:25', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306053343143002112', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 10:12:37', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306053348465573888', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 10:12:38', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306063669703999488', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 10:53:39', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306063674997211136', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 10:53:40', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306076053608857600', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 11:42:52', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306076058914652160', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 11:42:53', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306092992137789440', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 12:50:10', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306092997422612480', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 12:50:11', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306105772014305280', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 13:40:57', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306105777596923904', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 13:40:58', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306118855659094016', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 14:32:56', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306118860985860096', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 14:32:58', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306120306011668480', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 14:38:42', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306120311439097856', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 14:38:43', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306120549180637184', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 14:39:40', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306120554490626048', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 14:39:41', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306121118725177344', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 14:41:56', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306121123963863040', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 14:41:57', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306142916351098880', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 16:08:33', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', NULL);
INSERT INTO `sys_logging` VALUES ('1306156375881023488', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 17:02:02', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306156383145558016', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 17:02:04', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306156824487002112', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 17:03:49', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306156830304501760', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 17:03:50', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306158423208886272', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 17:10:10', '登录成功', '', '谷歌浏览器', 'Mac', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306158428716007424', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 17:10:11', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306159070125752320', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 17:12:44', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306160208271114240', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 17:17:16', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306160213727903744', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 17:17:17', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306161630215667712', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 17:22:55', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306162035989413888', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 17:24:31', '登录成功', '', '谷歌浏览器', 'Mac', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306162041328762880', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 17:24:33', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306162632864038912', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 17:26:54', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306162638631206912', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 17:26:55', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306163782866698240', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 17:31:28', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306164548721442816', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 17:34:30', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306165719972446208', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 17:39:10', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306165725597007872', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 17:39:11', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306166419020316672', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 17:41:56', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306166424355471360', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 17:41:58', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306169045820637184', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 17:52:23', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306169250913714176', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 17:53:12', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306173131114676224', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 18:08:37', '登录成功', '', '谷歌浏览器', 'Mac', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306173136638574592', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 18:08:38', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306173812575830016', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 18:11:19', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306174222069923840', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 18:12:57', '登录成功', '', '谷歌浏览器', 'Mac', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306174227308609536', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 18:12:58', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306174398482350080', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 18:13:39', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306176006477840384', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 18:20:02', '登录成功', '', '谷歌浏览器', 'Mac', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306176011989155840', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 18:20:03', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306176506711506944', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 18:22:01', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306176512650641408', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 18:22:03', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306176770176712704', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 18:23:04', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306176775667056640', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 18:23:06', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306179595594104832', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 18:34:18', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306179600920870912', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 18:34:19', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306180673786085376', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 18:38:35', '登录成功', '', '谷歌浏览器', 'Mac', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306180679318372352', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 18:38:36', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306197216737624064', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 19:44:19', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306197222056001536', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 19:44:20', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306197805609517056', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 19:46:39', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306197810953060352', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 19:46:41', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306221846311469056', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 21:22:11', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306221851533377536', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 21:22:12', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306225575119028224', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 21:37:00', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306225581876051968', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 21:37:02', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306228133682216960', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 21:47:10', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306228139046731776', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 21:47:12', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306228522548723712', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 21:48:43', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306228528362029056', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 21:48:44', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306234972058681344', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 22:14:21', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306234977666465792', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 22:14:22', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306239488111935488', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 22:32:17', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306239493828771840', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 22:32:19', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306242895581282304', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 22:45:50', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306242901285535744', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 22:45:51', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306243418585825280', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 22:47:54', '登录成功', '', '火狐浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306243423920979968', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 22:47:56', '返回 Index 主页视图', '', '火狐浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306244087103356928', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 22:50:34', '返回 Index 主页视图', '', '火狐浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306244299549048832', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 22:51:25', '登录成功', '', '火狐浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306244306658394112', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 22:51:26', '返回 Index 主页视图', '', '火狐浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306252598377971712', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 23:24:23', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306252603717320704', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-16 23:24:24', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306305697859764224', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 02:55:23', '登录成功', '', '你用啥浏览器', 'Mac', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306305703236861952', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 02:55:24', '返回 Index 主页视图', '', '你用啥浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306395751076593664', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 08:53:13', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306395756311085056', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 08:53:15', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306398841532055552', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 09:05:30', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306398847395692544', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 09:05:32', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306400640720699392', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 09:12:39', '登录成功', '', '谷歌浏览器', 'Mac', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306400646051659776', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 09:12:40', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306401754107084800', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 09:17:05', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306401780946436096', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 09:17:11', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306401851196833792', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 09:17:28', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306401869035208704', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 09:17:32', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306402481978212352', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 09:19:58', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306402488189976576', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 09:20:00', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306402596721786880', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 09:20:26', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306402865379540992', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 09:21:30', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306402871192846336', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 09:21:31', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306402903459627008', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 09:21:39', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306403418616627200', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 09:23:41', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306405074053890048', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 09:30:16', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306423320895291392', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 10:42:47', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306423326826037248', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 10:42:48', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306424616712929280', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 10:47:55', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306424621997752320', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 10:47:57', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306425912719310848', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 10:53:04', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306425918029299712', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 10:53:06', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306436511146704896', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 11:35:11', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306436516381196288', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 11:35:13', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306440001751351296', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 11:49:04', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306440007099088896', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 11:49:05', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306462251179311104', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 13:17:28', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306462256875175936', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 13:17:30', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306463497034399744', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 13:22:25', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306463502684127232', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 13:22:27', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306470796578783232', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 13:51:26', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306470801880383488', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 13:51:27', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306472792203460608', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 13:59:21', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306472797421174784', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 13:59:23', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306475897523535872', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 14:11:42', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306475902841913344', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 14:11:43', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306482387890208768', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 14:37:29', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306482393237946368', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 14:37:30', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306483394170847232', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 14:41:29', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306483399334035456', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 14:41:30', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306483924989378560', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 14:43:36', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306483930395836416', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 14:43:37', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306485847578640384', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 14:51:14', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306485853190619136', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 14:51:15', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306488588254314496', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 15:02:07', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306488593719492608', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 15:02:09', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306488628779679744', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 15:02:17', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306505023403851776', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 16:07:26', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306505028764172288', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 16:07:27', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306505132531253248', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 16:07:52', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306505138021597184', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 16:07:53', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306505290367107072', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 16:08:30', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306505295777759232', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 16:08:31', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306505323434999808', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 16:08:37', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306505328795320320', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 16:08:39', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306505395715440640', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 16:08:55', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306521595816181760', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 17:13:17', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306521601193279488', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 17:13:18', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306531880320892928', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 17:54:09', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306531885475692544', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 17:54:10', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306532242612289536', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 17:55:35', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306532247783866368', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 17:55:37', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306541183433965568', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 18:31:07', '登录成功', '', '谷歌浏览器', 'Mac', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306541188722982912', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 18:31:08', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306562187665342464', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 19:54:35', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306562193046634496', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 19:54:36', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306577080036622336', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 20:53:46', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306577085283696640', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-17 20:53:47', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306737611443798016', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 07:31:39', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306737616724426752', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 07:31:40', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306749444263247872', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 08:18:40', '登录成功', '', '谷歌浏览器', 'Mac', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306749449531293696', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 08:18:42', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306749467466137600', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 08:18:46', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306749642469277696', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 08:19:28', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306757317835882496', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 08:49:58', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306757323548524544', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 08:49:59', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306760765918674944', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 09:03:40', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306760771421601792', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 09:03:41', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306761725336354816', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 09:07:28', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306761730633760768', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 09:07:30', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306762200085430272', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 09:09:22', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306762205424779264', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 09:09:23', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306762693721456640', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 09:11:19', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306762699027251200', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 09:11:21', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306764180958740480', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 09:17:14', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306764186386169856', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 09:17:15', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306768576283148288', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 09:34:42', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306768581517639680', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 09:34:43', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306772866129199104', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 09:51:45', '登录成功', '', '谷歌浏览器', 'Mac', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306772871367884800', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 09:51:46', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306789449975201792', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 10:57:39', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', NULL);
INSERT INTO `sys_logging` VALUES ('1306789965555826688', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 10:59:41', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', NULL);
INSERT INTO `sys_logging` VALUES ('1306791563296243712', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 11:06:02', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306791568585261056', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 11:06:04', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306791845098946560', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 11:07:10', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306791850404741120', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 11:07:11', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306792237044072448', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 11:08:43', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306792242429558784', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 11:08:44', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306792578431057920', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 11:10:04', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306792578573664256', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 11:10:04', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306792579689349120', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 11:10:05', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306793204854554624', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 11:12:34', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306793210684637184', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 11:12:35', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306798200232869888', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 11:32:25', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306798205584801792', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 11:32:26', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306798724885774336', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 11:34:30', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306798730225123328', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 11:34:31', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306799219171917824', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 11:36:28', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306799224536432640', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 11:36:29', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306816800524075008', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 12:46:19', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306816805771149312', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 12:46:21', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306829665876312064', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 13:37:27', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306829671064666112', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 13:37:28', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306832575368527872', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 13:49:00', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', NULL);
INSERT INTO `sys_logging` VALUES ('1306840437121613824', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 14:20:15', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306840442372882432', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 14:20:16', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306844519991345152', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 14:36:28', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306844525737541632', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 14:36:30', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306860575048859648', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 15:40:16', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306860580342071296', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 15:40:17', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306870743182606336', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 16:20:40', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306870748614230016', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 16:20:42', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306872659656572928', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 16:28:17', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306872664953978880', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 16:28:19', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306872821745451008', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 16:28:56', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306874884734844928', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 16:37:08', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306874890179051520', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 16:37:09', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306882035733757952', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 17:05:33', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306882041052135424', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 17:05:34', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306882460964880384', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 17:07:14', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306882466178400256', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 17:07:15', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306882716121169920', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 17:08:15', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306882721577959424', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 17:08:16', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306889668469456896', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 17:35:52', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306889674282762240', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 17:35:54', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306889715382747136', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 17:36:04', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306922389744910336', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 19:45:54', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306922395151368192', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 19:45:55', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306935851686559744', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 20:39:23', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306935857009131520', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 20:39:25', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306978659176808448', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 23:29:29', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1306978664495185920', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 23:29:31', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306979101243867136', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 23:31:15', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1306979160668766208', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-18 23:31:29', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307140369850302464', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 10:12:04', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307140375105765376', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 10:12:06', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307142424245567488', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 10:20:14', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307142429534584832', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 10:20:15', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307159103163858944', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 11:26:31', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307159108352212992', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 11:26:32', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307174265895780352', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 12:26:46', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307174271855886336', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 12:26:47', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307178276698980352', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 12:42:42', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307178282118021120', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 12:42:43', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307188410728841216', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 13:22:58', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307188415963332608', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 13:22:59', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307262234849705984', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 18:16:19', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307262240096780288', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 18:16:20', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307262488642846720', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 18:17:20', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307264689566121984', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 18:26:04', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307264694964191232', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 18:26:06', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307264713528180736', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 18:26:10', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307265225090662400', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 18:28:12', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307265230606172160', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 18:28:13', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307265398197977088', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 18:28:53', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307268553614819328', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 18:41:26', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307268561961484288', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 18:41:28', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307269926691536896', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 18:46:53', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307269931997331456', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 18:46:54', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307275752835645440', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 19:10:02', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307275753993273344', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 19:10:02', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307275755150901248', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 19:10:03', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307280342977085440', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 19:28:17', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307280349390176256', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 19:28:18', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307298866885820416', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 20:41:53', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307298872887869440', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 20:41:54', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307299407498051584', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 20:44:02', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307299408588570624', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 20:44:02', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307299996281864192', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 20:46:22', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307300002204221440', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 20:46:24', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307301268150026240', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 20:51:25', '登录成功', '', '谷歌浏览器', 'Mac', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307301273615204352', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 20:51:27', '返回 Index 主页视图', '', '谷歌浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307307575754096640', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 21:16:29', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307307581714202624', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 21:16:31', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307307750656573440', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 21:17:11', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307308536887246848', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 21:20:18', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307308542671192064', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 21:20:20', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307309029533417472', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 21:22:16', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307309034876960768', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 21:22:17', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307320416758398976', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 22:07:31', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307320417886666752', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 22:07:31', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307320826948747264', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 22:09:09', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307320827858911232', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 22:09:09', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307321418475634688', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 22:11:30', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307322408251686912', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 22:15:26', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307322409358983168', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 22:15:26', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307326207116705792', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 22:30:31', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307326212657381376', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 22:30:33', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307326749993861120', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 22:32:41', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307326755400318976', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 22:32:42', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307330724700880896', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 22:48:28', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307330730048618496', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 22:48:30', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307330734016430080', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 22:48:31', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307331061063090176', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 22:49:49', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307336282933821440', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 23:10:34', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307336288172507136', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 23:10:35', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307346009679986688', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 23:49:13', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307346015690424320', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-19 23:49:14', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307382230426845184', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 02:13:08', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307382235803942912', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 02:13:10', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307446650993639424', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 06:29:07', '登录成功', '', '你用啥浏览器', 'Mac', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307446656492371968', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 06:29:09', '返回 Index 主页视图', '', '你用啥浏览器', 'Mac', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307504174895726592', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 10:17:42', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307504180327350272', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 10:17:44', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307554817366818816', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 13:38:56', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307554823377256448', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 13:38:58', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307555290954072064', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 13:40:49', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307555296230506496', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 13:40:50', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307561560159289344', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 14:05:44', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307561565871931392', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 14:05:45', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307562722216378368', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 14:10:21', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307562727522172928', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 14:10:22', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307564763135344640', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 14:18:28', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307564768998981632', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 14:18:29', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307565377881899008', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 14:20:54', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307565378917892096', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 14:20:54', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307569421056737280', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 14:36:58', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307569427021037568', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 14:37:00', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307575168666697728', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 14:59:48', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307575174492585984', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 14:59:50', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307577448472248320', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 15:08:52', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307577454260387840', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 15:08:53', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307577965093060608', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 15:10:55', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307577970449186816', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 15:10:56', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307579572220329984', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 15:17:18', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307579578037829632', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 15:17:20', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307593104211050496', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 16:11:05', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307593109948858368', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 16:11:06', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307594271708151808', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 16:15:43', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307594271708151809', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 16:15:43', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307594273297793024', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 16:15:43', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307594664068513792', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 16:17:17', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307594669789544448', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 16:17:18', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307595110304710656', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 16:19:03', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307595115602116608', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 16:19:04', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307595419450081280', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 16:20:17', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307595425326301184', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 16:20:18', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307597109058338816', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 16:26:59', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307597114745815040', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 16:27:01', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307598659298263040', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 16:33:09', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307598665002516480', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 16:33:10', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307600413058400256', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 16:40:07', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307600418976563200', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 16:40:09', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307601773170524160', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 16:45:31', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307601779076104192', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 16:45:33', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307602799520907264', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 16:49:36', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307602805673951232', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 16:49:38', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307603357413670912', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 16:51:49', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307603357585637376', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 16:51:49', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307603359041060864', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 16:51:50', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307604204264620032', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 16:55:11', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307604210094702592', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 16:55:12', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307604940448858112', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 16:58:07', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307604946232803328', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 16:58:08', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307606458250035200', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 17:04:08', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307606466206629888', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 17:04:10', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307607138905882624', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 17:06:51', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307607145612574720', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 17:06:52', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307610159798812672', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 17:18:51', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307610159798812673', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 17:18:51', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307610192170450944', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 17:18:59', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307610197560131584', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 17:19:00', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307611013373231104', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 17:22:14', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307611019119427584', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 17:22:16', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307629746896502784', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 18:36:41', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307629752198103040', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 18:36:42', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307630250494001152', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 18:38:41', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307630255854321664', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 18:38:42', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307630974317625344', '登录', '/login', 'OTHER', 'POST', 'admin', '/login', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 18:41:34', '登录成功', '', '谷歌浏览器', 'Windows', 'LOGIN');
INSERT INTO `sys_logging` VALUES ('1307630980139319296', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 18:41:35', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307631484210774016', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 18:43:35', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');
INSERT INTO `sys_logging` VALUES ('1307631500950241280', '主页', '/index', 'ADD', 'GET', 'admin', '/index', '127.0.0.1', NULL, NULL, '1', NULL, '2020-09-20 18:43:39', '返回 Index 主页视图', '', '谷歌浏览器', 'Windows', 'OPERATE');

-- ----------------------------
-- Table structure for sys_power
-- ----------------------------
DROP TABLE IF EXISTS `sys_power`;
CREATE TABLE `sys_power`  (
  `power_id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限编号',
  `power_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限名称',
  `power_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限类型',
  `power_code` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `power_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限路径',
  `open_type` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '打开方式',
  `parent_id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父类编号',
  `icon` char(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `enable` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否开启',
  PRIMARY KEY (`power_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_power
-- ----------------------------
INSERT INTO `sys_power` VALUES ('1', '系统管理', '0', '', '', NULL, '0', 'layui-icon layui-icon-set-fill', 1, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('1284020948269268992', '用户列表', '2', 'sys:user:data', '', '', '2', 'layui-icon-username', 0, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('1284022967767924736', '用户保存', '2', 'sys:user:save', '', '', '2', 'layui-icon-username', 1, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('1302180351979814912', '布局构建', '1', 'generator:from:main', 'component/code/index.html', '_iframe', '442417411065516032', 'layui-icon-senior', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_power` VALUES ('1304387665067507712', '数据字典', '1', 'system:dictType:main', '/system/dictType/main', '_iframe', '1', 'layui-icon-flag', 3, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('1304793451996381184', '文件管理', '1', 'system:file:main', '/system/file/main', '_iframe', '1', 'layui-icon-read', 5, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('1305870685385523200', '百度一下', '1', '', 'http://www.baidu.com', '0', '474356044148117504', 'layui-icon-search', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_power` VALUES ('1305875436139446272', '百度一下', '1', 'http://www.baidu.com', 'http://www.baidu.com', '0', '451002662209589248', 'layui-icon-search', 1, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('1307299332784914432', '系统配置', '1', 'sys:config:main', '/system/config/main', '0', '1', 'layui-icon-note', 6, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_power` VALUES ('1307322288579805184', '任务组', '1', 'schedule:group:main', '/schedule/group/main', '0', '442650387514789888', 'layui-icon-engine', 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_power` VALUES ('1307562196556840960', '工作流程', '0', '', '', '0', '0', 'layui-icon layui-icon-chat', 5, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('1307562519451140096', '模型管理', '1', '/process/model/main', '/process/model/main', '0', '1307562196556840960', 'layui-icon-circle', 0, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('2', '用户管理', '1', 'sys:user:main', '/system/user/main', '_iframe', '1', 'layui-icon layui-icon-username', 0, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('3', '角色管理', '1', 'sys:role:main', '/system/role/main', '_iframe', '1', 'layui-icon layui-icon-user', 1, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('4', '权限管理', '1', 'sys:power:main', '/system/power/main', '_iframe', '1', 'layui-icon layui-icon-vercode', 2, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442359447487123456', '角色列表', '2', 'sys:role:data', '', '', '3', 'layui-icon layui-icon-rate', 1, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442417411065516032', '敏捷开发', '0', '', '', '', '0', 'layui-icon layui-icon-senior', 2, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442418188639145984', '代码生成', '1', 'exp:template:main', '/generator/main', '_iframe', '442417411065516032', 'layui-icon layui-icon-template-1', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442520236248403968', '数据监控', '1', '/druid/index.html', '/druid/index.html', '_iframe', '694203021537574912', 'layui-icon  layui-icon-chart', 1, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442650387514789888', '定时任务', '0', '', '', '', '0', 'layui-icon  layui-icon-log', 4, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442650770626711552', '任务管理', '1', 'qrt:task:main', '/schedule/job/main', '_iframe', '442650387514789888', 'layui-icon  layui-icon-chat', 1, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442651158935375872', '任务日志', '1', 'qrt:log:main', '/schedule/log/main', '_iframe', '442650387514789888', 'layui-icon  layui-icon-file', 2, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('450300705362808832', '行为日志', '1', 'system:logging:main', '/system/logging/main', '_iframe', '1', 'layui-icon  layui-icon-chart', 4, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('451002662209589248', '工作空间', '0', '', '', '', '0', 'layui-icon  layui-icon-chart', 0, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('451003242072117248', '数据分析', '1', 'process:model:main', '/console', '_iframe', '451002662209589248', 'layui-icon  layui-icon-component', 0, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('474356363552755712', '项目介绍', '1', 'home', '/console', '_iframe', '474356044148117504', 'layui-icon layui-icon-home', 1, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('694203021537574912', '系统监控', '0', '', '', '', '0', 'layui-icon  layui-icon-console', 3, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('694203311615639552', '接口文档', '1', '', '/swagger-ui.html', '_blank', '694203021537574912', 'layui-icon  layui-icon-chart', 1, NULL, NULL, NULL, NULL, NULL, '0');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色编号',
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `role_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色标识',
  `enable` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否启用',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `update_by` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `details` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详情',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '0', NULL, NULL, NULL, NULL, NULL, '超级管理员');
INSERT INTO `sys_role` VALUES ('1306230258952830976', '用户', 'pearson', '0', NULL, NULL, NULL, NULL, NULL, '用户描述');
INSERT INTO `sys_role` VALUES ('2', '普通管理员', 'manager', '0', NULL, NULL, NULL, NULL, NULL, '普通管理员');

-- ----------------------------
-- Table structure for sys_role_power
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_power`;
CREATE TABLE `sys_role_power`  (
  `id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `power_id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_by` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_by` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_power
-- ----------------------------
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
INSERT INTO `sys_role_power` VALUES ('1305379650364506112', '2', '474356044148117504', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1305379650368700416', '2', '474356363552755712', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1305379650368700417', '2', '2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1305379650368700418', '2', '1284020948269268992', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1305379650368700419', '2', '450300705362808832', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1305379650368700420', '2', '442417411065516032', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1305379650368700421', '2', '442418188639145984', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1305379650368700422', '2', '694203021537574912', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1305379650368700423', '2', '442520236248403968', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1305379650368700424', '2', '694203311615639552', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1305379650368700425', '2', '442650387514789888', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1305379650368700426', '2', '442650770626711552', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1305379650368700427', '2', '442651158935375872', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1305379650368700428', '2', '451002662209589248', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1305379650368700429', '2', '451003242072117248', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1307562651039039488', '1', '1307562196556840960', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1307562651039039489', '1', '1307562519451140096', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1307562651039039490', '1', '451002662209589248', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1307562651039039491', '1', '451003242072117248', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1307562651039039492', '1', '1305875436139446272', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1307562651039039493', '1', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1307562651039039494', '1', '2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1307562651039039495', '1', '1284020948269268992', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1307562651039039496', '1', '1284022967767924736', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1307562651039039497', '1', '3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1307562651039039498', '1', '442359447487123456', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1307562651039039499', '1', '4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1307562651039039500', '1', '1304387665067507712', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1307562651039039501', '1', '450300705362808832', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1307562651039039502', '1', '1304793451996381184', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1307562651039039503', '1', '1307299332784914432', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1307562651039039504', '1', '442417411065516032', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1307562651039039505', '1', '442418188639145984', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1307562651039039506', '1', '1302180351979814912', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1307562651039039507', '1', '694203021537574912', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1307562651039039508', '1', '442520236248403968', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1307562651039039509', '1', '694203311615639552', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1307562651039039510', '1', '442650387514789888', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1307562651039039511', '1', '1307322288579805184', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1307562651039039512', '1', '442650770626711552', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1307562651039039513', '1', '442651158935375872', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('442062615250866176', '693913251020275712', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('442062615250866177', '693913251020275712', '2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('442062615250866178', '693913251020275712', '3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('442062615250866179', '693913251020275712', '4', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `username` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账户',
  `password` char(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `real_name` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `email` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `avatar` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `update_by` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `enable` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否启用',
  `login` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否登录',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '$2a$10$1K7E1.IYCrsoZVCb6utOo.5jENtfOzhdKWhc49t2lk.UQd7Oam4FG', NULL, NULL, '超级管理员', '854085467@qq.com', NULL, '1', '15553726531', NULL, NULL, NULL, NULL, NULL, '0', '1');
INSERT INTO `sys_user` VALUES ('1304491590080790528', 'baobao', '$2a$10$90HTG.GJ4reN9P55ZOyHdeQYQTjYuafAvEeOG/a6HPm8ddShzsktS', NULL, NULL, '海绵宝宝', 'baobao@gmail.com', NULL, '1', '13668673160', NULL, NULL, NULL, NULL, NULL, '0', NULL);
INSERT INTO `sys_user` VALUES ('1306229381332467712', 'layui', '$2a$10$s9Uwzqbip7HRyxhYuhl1kOv6dVTHO4vB6nVhxMQymCv.rAxy7SE1a', NULL, NULL, '贤心', '26689345@qq.com', NULL, '0', '15553726531', NULL, NULL, NULL, NULL, NULL, '0', NULL);
INSERT INTO `sys_user` VALUES ('1306229606205882368', 'pikaqiu', '$2a$10$PQo17xHctlmR9t89qAjem.Uw9.92s7e0W22Uj/0uMNQ2e2sPn744u', NULL, NULL, '皮卡丘', 'pikaqiu@gmail.com', NULL, '0', '15553726531', NULL, NULL, NULL, NULL, NULL, '0', NULL);
INSERT INTO `sys_user` VALUES ('1306230031168569344', 'feng', '$2a$10$jjf2h8Cx2lkFMKy3NY9pguADYAMewyPr2IJw8YAI5zSH2/0R/9Kra', NULL, NULL, '风筝', 'feng@gmail.com', NULL, '0', '15553726531', NULL, NULL, NULL, NULL, NULL, '0', NULL);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标识',
  `user_id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户编号',
  `role_id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1302196622322565120', '1302196622007992320', '1');
INSERT INTO `sys_user_role` VALUES ('1304443027040763904', '1304443026482921472', '1');
INSERT INTO `sys_user_role` VALUES ('1304443027044958208', '1304443026482921472', '2');
INSERT INTO `sys_user_role` VALUES ('1304443027044958209', '1304443026482921472', '3');
INSERT INTO `sys_user_role` VALUES ('1304443307404820480', '1304443306888921088', '1');
INSERT INTO `sys_user_role` VALUES ('1304443307404820481', '1304443306888921088', '2');
INSERT INTO `sys_user_role` VALUES ('1304491590777044992', '1304491590080790528', '1');
INSERT INTO `sys_user_role` VALUES ('1304491590777044993', '1304491590080790528', '2');
INSERT INTO `sys_user_role` VALUES ('1304491590777044994', '1304491590080790528', '3');
INSERT INTO `sys_user_role` VALUES ('1305359805342285824', '1305359804906078208', '');
INSERT INTO `sys_user_role` VALUES ('1305359807724650496', '1305359807296831488', '');
INSERT INTO `sys_user_role` VALUES ('1305390235135246336', '1305390234694844416', '');
INSERT INTO `sys_user_role` VALUES ('1305892962940485632', '1', '1');
INSERT INTO `sys_user_role` VALUES ('1306229381902893056', '1306229381332467712', '1');
INSERT INTO `sys_user_role` VALUES ('1306229381902893057', '1306229381332467712', '2');
INSERT INTO `sys_user_role` VALUES ('1306229606855999488', '1306229606205882368', '1');
INSERT INTO `sys_user_role` VALUES ('1306229606855999489', '1306229606205882368', '2');
INSERT INTO `sys_user_role` VALUES ('1306229860422647808', '1306229859755753472', '1');
INSERT INTO `sys_user_role` VALUES ('1306229892144168960', '1306229891624075264', '1');
INSERT INTO `sys_user_role` VALUES ('1306230031680274432', '1306230031168569344', '1');
INSERT INTO `sys_user_role` VALUES ('1306230031680274433', '1306230031168569344', '2');
INSERT INTO `sys_user_role` VALUES ('1306243520893288448', '1306243520482246656', '');
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

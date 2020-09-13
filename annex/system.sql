/*
 Navicat Premium Data Transfer

 Source Server         : 就眠仪式
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : mysql.pearadmin.com:3306
 Source Schema         : pear-admin

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 13/09/2020 16:10:42
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
INSERT INTO `sys_config` VALUES ('网站名称', '网站名称', 'system_name', 'Pear Admin32', NULL, NULL, NULL, NULL, '系统配置\n', 'system');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `data_id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data_label` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data_value` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_code` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否默认',
  `update_by` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enable` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
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
  `id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enable` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_by` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_by` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
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
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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

-- ----------------------------
-- Table structure for sys_logging
-- ----------------------------
DROP TABLE IF EXISTS `sys_logging`;
CREATE TABLE `sys_logging`  (
  `id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `business_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `request_method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operate_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operate_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operate_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `request_param` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `response_body` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `success` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `error_msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `request_body` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `browser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `system_os` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logging_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
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

-- ----------------------------
-- Table structure for sys_power
-- ----------------------------
DROP TABLE IF EXISTS `sys_power`;
CREATE TABLE `sys_power`  (
  `power_id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `power_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `power_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `power_code` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `power_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `open_type` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` char(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(11) NULL DEFAULT NULL,
  `create_by` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_by` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enable` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`power_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_power
-- ----------------------------
INSERT INTO `sys_power` VALUES ('1', '系统管理', '0', '', '', NULL, '0', 'layui-icon layui-icon-set-fill', 1, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('1284020948269268992', '用户列表', '2', 'sys:user:data', '', '', '2', 'layui-icon-username', 0, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('1284022967767924736', '用户保存', '2', 'sys:user:save', '', '', '2', 'layui-icon-username', 1, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('1302180351979814912', '布局构建', '1', 'generator:from:main', 'component/code/index.html', '0', '442417411065516032', 'layui-icon-senior', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_power` VALUES ('1304387665067507712', '数据字典', '1', 'system:dictType:main', '/system/dictType/main', '0', '1', 'layui-icon-flag', 3, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('1304793451996381184', '文件管理', '1', 'system:file:main', '/system/file/main', '0', '1', 'layui-icon-read', 5, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_power` VALUES ('2', '用户管理', '1', 'sys:user:main', '/system/user/main', NULL, '1', 'layui-icon layui-icon-username', 0, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('3', '角色管理', '1', 'sys:role:main', '/system/role/main', NULL, '1', 'layui-icon layui-icon-user', 1, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('4', '权限管理', '1', 'sys:power:main', '/system/power/main', NULL, '1', 'layui-icon layui-icon-vercode', 2, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442359447487123456', '角色列表', '2', 'sys:role:data', '', '', '3', 'layui-icon layui-icon-rate', 1, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442417411065516032', '敏捷开发', '0', '', '', '', '0', 'layui-icon layui-icon-senior', 2, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442418188639145984', '代码生成', '1', 'exp:template:main', '/generator/main', '0', '442417411065516032', 'layui-icon layui-icon-template-1', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442520236248403968', '数据监控', '1', '/druid/index.html', '/druid/index.html', '0', '694203021537574912', 'layui-icon  layui-icon-chart', 1, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442650387514789888', '定时任务', '0', '', '', '', '0', 'layui-icon  layui-icon-log', 4, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442650770626711552', '任务管理', '1', 'qrt:task:main', '/schedule/job/main', '0', '442650387514789888', 'layui-icon  layui-icon-chat', 1, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('442651158935375872', '任务日志', '1', 'qrt:log:main', '/schedule/log/main', '0', '442650387514789888', 'layui-icon  layui-icon-file', 2, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('450300705362808832', '行为日志', '1', 'system:logging:main', '/system/logging/main', '0', '1', 'layui-icon  layui-icon-chart', 4, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('451002662209589248', '工作流程', '0', '', '', '', '0', 'layui-icon  layui-icon-chart', 6, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('451003242072117248', '模型管理', '1', 'process:model:main', '/process/model/main', '0', '451002662209589248', 'layui-icon  layui-icon-component', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('474356044148117504', '工作空间', '0', '', '', '', '0', 'layui-icon layui-icon-component', 0, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('474356363552755712', '项目介绍', '1', 'home', '/console', '0', '474356044148117504', 'layui-icon layui-icon-home', 1, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('694203021537574912', '系统监控', '0', '', '', '0', '0', 'layui-icon  layui-icon-console', 3, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_power` VALUES ('694203311615639552', '接口文档', '1', '', '/swagger-ui.html', '_blank', '694203021537574912', 'layui-icon  layui-icon-chart', 1, NULL, NULL, NULL, NULL, NULL, '0');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enable` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `create_by` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `update_by` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `details` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `sys_role_power` VALUES ('1304793516378947584', '1', '474356044148117504', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1304793516378947585', '1', '474356363552755712', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1304793516378947586', '1', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1304793516378947587', '1', '2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1304793516378947588', '1', '1284020948269268992', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1304793516378947589', '1', '1284022967767924736', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1304793516378947590', '1', '3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1304793516378947591', '1', '442359447487123456', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1304793516378947592', '1', '4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1304793516378947593', '1', '1304387665067507712', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1304793516378947594', '1', '450300705362808832', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1304793516378947595', '1', '1304793451996381184', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1304793516378947596', '1', '442417411065516032', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1304793516378947597', '1', '442418188639145984', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1304793516378947598', '1', '1302180351979814912', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1304793516378947599', '1', '694203021537574912', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1304793516378947600', '1', '442520236248403968', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1304793516378947601', '1', '694203311615639552', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1304793516378947602', '1', '442650387514789888', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1304793516378947603', '1', '442650770626711552', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1304793516378947604', '1', '442651158935375872', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1304793516378947605', '1', '451002662209589248', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_power` VALUES ('1304793516378947606', '1', '451003242072117248', NULL, NULL, NULL, NULL, NULL);
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
  `login` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '$2a$10$1K7E1.IYCrsoZVCb6utOo.5jENtfOzhdKWhc49t2lk.UQd7Oam4FG', NULL, NULL, '超级管理员', '854085467@qq.com', NULL, '1', '15553726531', NULL, NULL, NULL, NULL, NULL, '0', '1');
INSERT INTO `sys_user` VALUES ('1304443026482921472', 'manager', '$2a$10$lAJRzKWKfUXYDAKhP2hC6.MEQqV.kPYdF7r2uMSdkmTgG8dxetDe.', NULL, NULL, '就眠仪式', '970796069@qq.com', NULL, '0', '15553726531', NULL, NULL, NULL, NULL, NULL, '0', NULL);
INSERT INTO `sys_user` VALUES ('1304443306888921088', '123456', '$2a$10$gbw5PrFX1voke2WX13zae.rPN6OqPEoZBPlSOJ/rjw//Kp1IGWUoO', NULL, NULL, '皮卡丘', 'jmys1992@gmail.com', NULL, '0', '15553726531', NULL, NULL, NULL, NULL, NULL, '0', NULL);
INSERT INTO `sys_user` VALUES ('1304491590080790528', 'baobao', '$2a$10$90HTG.GJ4reN9P55ZOyHdeQYQTjYuafAvEeOG/a6HPm8ddShzsktS', NULL, NULL, '海绵宝宝', 'baobao@gmail.com', NULL, '1', '13668673160', NULL, NULL, NULL, NULL, NULL, '0', NULL);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
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
INSERT INTO `sys_user_role` VALUES ('1305055159495163904', '1', '1');
INSERT INTO `sys_user_role` VALUES ('1305055159495163905', '1', '2');
INSERT INTO `sys_user_role` VALUES ('1305055159495163906', '1', '3');
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

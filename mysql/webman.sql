/*
 Navicat Premium Data Transfer

 Source Server         : 43.138.20.242
 Source Server Type    : MySQL
 Source Server Version : 80024
 Source Host           : 43.138.20.242:33061
 Source Schema         : webman

 Target Server Type    : MySQL
 Target Server Version : 80024
 File Encoding         : 65001

 Date: 03/11/2022 08:56:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2022-08-04 16:51:00', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2022-08-04 16:51:00', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2022-08-04 16:51:01', 'ry', '2022-08-20 22:46:02', '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2022-08-04 16:51:01', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2022-08-04 16:51:01', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (100, '微信公众号', 'wechat', 'wechat', 'N', 'ry', '2022-08-20 22:20:59', 'admin', '2022-09-06 22:36:23', 'wechat');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime NULL DEFAULT NULL COMMENT '删除标志（0代表存在 2代表删除）',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 205 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', 'admin', '2022-08-04 16:49:56', '', NULL, NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', 'admin', '2022-08-04 16:49:56', '', NULL, NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', 'admin', '2022-08-04 16:49:57', '', NULL, NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', 'admin', '2022-08-04 16:49:57', '', NULL, NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', 'admin', '2022-08-04 16:49:57', '', NULL, NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', 'admin', '2022-08-04 16:49:57', '', NULL, NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', 'admin', '2022-08-04 16:49:57', '', NULL, NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', 'admin', '2022-08-04 16:49:58', '', NULL, NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', 'admin', '2022-08-04 16:49:58', '', NULL, NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', 'admin', '2022-08-04 16:49:58', '', NULL, NULL);
INSERT INTO `sys_dept` VALUES (200, 100, '0,100', '北京分公司', 0, 'lee', '13581893735', 'ljnchn@qq.com', '0', 'ry', '2022-08-13 18:52:19', 'ry', '2022-08-22 22:01:25', NULL);
INSERT INTO `sys_dept` VALUES (202, 100, '0,100', '研发部门', 5, '爱新觉罗', '13800138000', 'ljnchn@qq.com', '0', 'ry', '2022-08-12 22:30:59', 'ry', '2022-08-12 22:32:41', '2022-08-20 17:46:49');
INSERT INTO `sys_dept` VALUES (203, 200, '0,100,200', '朝阳分公司', 0, NULL, NULL, NULL, '0', 'ry', '2022-08-13 20:20:02', '', NULL, '2022-08-13 20:20:14');
INSERT INTO `sys_dept` VALUES (204, 200, '0,100,200', '朝阳分区', 1, '朝阳群众', '13800138000', 'ljnchn@qq.com', '0', 'ry', '2022-08-14 23:13:42', 'ry', '2022-08-14 23:13:51', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2022-08-04 16:50:49', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-08-04 16:50:49', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-08-04 16:50:49', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2022-08-04 16:50:49', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2022-08-04 16:50:49', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2022-08-04 16:50:50', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2022-08-04 16:50:50', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2022-08-04 16:50:50', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2022-08-04 16:50:51', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2022-08-04 16:50:51', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2022-08-04 16:50:51', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2022-08-04 16:50:51', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2022-08-04 16:50:51', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2022-08-04 16:50:51', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2022-08-04 16:50:51', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2022-08-04 16:50:52', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2022-08-04 16:50:52', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-08-04 16:50:52', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-08-04 16:50:52', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-08-04 16:50:53', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2022-08-04 16:50:54', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-08-04 16:50:54', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-08-04 16:50:54', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-08-04 16:50:54', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-08-04 16:50:54', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-08-04 16:50:55', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2022-08-04 16:50:56', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2022-08-04 16:50:56', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2022-08-04 16:50:46', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2022-08-04 16:50:46', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2022-08-04 16:50:47', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2022-08-04 16:50:47', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2022-08-04 16:50:47', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2022-08-04 16:50:47', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2022-08-04 16:50:47', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2022-08-04 16:50:48', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2022-08-04 16:50:48', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2022-08-04 16:50:49', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '登录方式', 'sys_login_type', '1', 'ry', '2022-08-17 22:17:00', 'ry', '2022-08-19 09:53:27', '1');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2022-08-04 16:51:01', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2022-08-04 16:51:02', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2022-08-04 16:51:02', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2002 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', '1', '0', 'M', '0', '0', '', 'system', 'admin', '2022-08-04 16:50:02', 'ry', '2022-08-12 22:59:58', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', '1', '0', 'M', '0', '0', '', 'monitor', 'admin', '2022-08-04 16:50:03', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', '1', '0', 'M', '0', '0', '', 'tool', 'admin', '2022-08-04 16:50:03', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', NULL, '', '0', '0', 'M', '0', '0', '', 'guide', 'admin', '2022-08-04 16:50:03', 'ry', '2022-08-20 20:27:07', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', '1', '0', 'C', '0', '0', 'system:user:list', 'user', 'admin', '2022-08-04 16:50:03', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', '1', '0', 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2022-08-04 16:50:04', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', '1', '0', 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2022-08-04 16:50:04', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', '1', '0', 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2022-08-04 16:50:04', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', '1', '0', 'C', '0', '0', 'system:post:list', 'post', 'admin', '2022-08-04 16:50:05', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', '1', '0', 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2022-08-04 16:50:05', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', '1', '0', 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2022-08-04 16:50:06', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', '1', '0', 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2022-08-04 16:50:06', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', '1', '0', 'M', '0', '0', '', 'log', 'admin', '2022-08-04 16:50:06', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', '1', '0', 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2022-08-04 16:50:06', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', '1', '0', 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2022-08-04 16:50:07', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', '1', '0', 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2022-08-04 16:50:07', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', '1', '0', 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2022-08-04 16:50:07', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2022-08-04 16:50:07', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2022-08-04 16:50:07', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', '1', '0', 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2022-08-04 16:50:07', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', '1', '0', 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2022-08-04 16:50:08', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', '1', '0', 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2022-08-04 16:50:08', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', '1', '0', 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2022-08-04 16:50:08', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', '1', '0', 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2022-08-04 16:50:08', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', '1', '0', 'F', '0', '0', 'system:user:query', '#', 'admin', '2022-08-04 16:50:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', '1', '0', 'F', '0', '0', 'system:user:add', '#', 'admin', '2022-08-04 16:50:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', '1', '0', 'F', '0', '0', 'system:user:edit', '#', 'admin', '2022-08-04 16:50:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', '1', '0', 'F', '0', '0', 'system:user:remove', '#', 'admin', '2022-08-04 16:50:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', '1', '0', 'F', '0', '0', 'system:user:export', '#', 'admin', '2022-08-04 16:50:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', '1', '0', 'F', '0', '0', 'system:user:import', '#', 'admin', '2022-08-04 16:50:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', '1', '0', 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2022-08-04 16:50:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', '1', '0', 'F', '0', '0', 'system:role:query', '#', 'admin', '2022-08-04 16:50:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', '1', '0', 'F', '0', '0', 'system:role:add', '#', 'admin', '2022-08-04 16:50:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', '1', '0', 'F', '0', '0', 'system:role:edit', '#', 'admin', '2022-08-04 16:50:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', '1', '0', 'F', '0', '0', 'system:role:remove', '#', 'admin', '2022-08-04 16:50:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', '1', '0', 'F', '0', '0', 'system:role:export', '#', 'admin', '2022-08-04 16:50:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', '1', '0', 'F', '0', '0', 'system:menu:query', '#', 'admin', '2022-08-04 16:50:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', '1', '0', 'F', '0', '0', 'system:menu:add', '#', 'admin', '2022-08-04 16:50:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', '1', '0', 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2022-08-04 16:50:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', '1', '0', 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2022-08-04 16:50:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', '1', '0', 'F', '0', '0', 'system:dept:query', '#', 'admin', '2022-08-04 16:50:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', '1', '0', 'F', '0', '0', 'system:dept:add', '#', 'admin', '2022-08-04 16:50:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', '1', '0', 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2022-08-04 16:50:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', '1', '0', 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2022-08-04 16:50:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', '1', '0', 'F', '0', '0', 'system:post:query', '#', 'admin', '2022-08-04 16:50:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', '1', '0', 'F', '0', '0', 'system:post:add', '#', 'admin', '2022-08-04 16:50:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', '1', '0', 'F', '0', '0', 'system:post:edit', '#', 'admin', '2022-08-04 16:50:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', '1', '0', 'F', '0', '0', 'system:post:remove', '#', 'admin', '2022-08-04 16:50:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', '1', '0', 'F', '0', '0', 'system:post:export', '#', 'admin', '2022-08-04 16:50:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:query', '#', 'admin', '2022-08-04 16:50:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:add', '#', 'admin', '2022-08-04 16:50:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2022-08-04 16:50:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2022-08-04 16:50:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:export', '#', 'admin', '2022-08-04 16:50:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', '1', '0', 'F', '0', '0', 'system:config:query', '#', 'admin', '2022-08-04 16:50:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', '1', '0', 'F', '0', '0', 'system:config:add', '#', 'admin', '2022-08-04 16:50:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', '1', '0', 'F', '0', '0', 'system:config:edit', '#', 'admin', '2022-08-04 16:50:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', '1', '0', 'F', '0', '0', 'system:config:remove', '#', 'admin', '2022-08-04 16:50:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', '1', '0', 'F', '0', '0', 'system:config:export', '#', 'admin', '2022-08-04 16:50:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:query', '#', 'admin', '2022-08-04 16:50:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:add', '#', 'admin', '2022-08-04 16:50:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2022-08-04 16:50:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2022-08-04 16:50:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2022-08-04 16:50:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2022-08-04 16:50:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 4, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2022-08-04 16:50:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2022-08-04 16:50:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2022-08-04 16:50:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2022-08-04 16:50:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '在线查询', 109, 1, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2022-08-04 16:50:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '批量强退', 109, 2, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2022-08-04 16:50:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '单条强退', 109, 3, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2022-08-04 16:50:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '任务查询', 110, 1, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2022-08-04 16:50:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务新增', 110, 2, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2022-08-04 16:50:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务修改', 110, 3, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2022-08-04 16:50:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务删除', 110, 4, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2022-08-04 16:50:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '状态修改', 110, 5, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2022-08-04 16:50:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '任务导出', 110, 7, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2022-08-04 16:50:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '生成查询', 115, 1, '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2022-08-04 16:50:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成修改', 115, 2, '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2022-08-04 16:50:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成删除', 115, 3, '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2022-08-04 16:50:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '导入代码', 115, 2, '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2022-08-04 16:50:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '预览代码', 115, 4, '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2022-08-04 16:50:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '生成代码', 115, 5, '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2022-08-04 16:50:18', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2022-08-04 16:51:03', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (10, '这是一条公告', '2', 0xE694B6E588B0E8AFB7E59B9EE7AD94E38082, '0', 'admin', '2022-10-30 22:17:22', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2022-08-04 16:50:01', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2022-08-04 16:50:01', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2022-08-04 16:50:01', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2022-08-04 16:50:01', '', NULL, '');
INSERT INTO `sys_post` VALUES (6, 'tester', 'tester', 0, '0', 'admin', '2022-09-25 21:38:21', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `deleted_at` datetime NULL DEFAULT NULL COMMENT '删除标志（0代表存在 2代表删除）',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', 'admin', '2022-08-04 16:50:02', '', NULL, '超级管理员', NULL);
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', 'admin', '2022-08-04 16:50:02', 'ry', '2022-08-14 22:42:48', '普通角色', NULL);
INSERT INTO `sys_role` VALUES (100, '测试角色', 'test', 3, '1', 1, 1, '0', 'ry', '2022-08-14 22:57:12', 'ry', '2022-08-14 23:12:57', NULL, '2022-08-22 21:03:04');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);

-- ----------------------------
-- Table structure for sys_tenant
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant`;
CREATE TABLE `sys_tenant`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '租户编号',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '租户名',
  `contact_user_id` bigint NULL DEFAULT NULL COMMENT '联系人的用户编号',
  `contact_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '联系人',
  `contact_mobile` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系手机',
  `status` tinyint NOT NULL DEFAULT 0 COMMENT '租户状态（0正常 1停用）',
  `domain` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '绑定域名',
  `package_id` bigint NOT NULL COMMENT '租户套餐编号',
  `expire_time` datetime NOT NULL COMMENT '过期时间',
  `account_count` int NOT NULL COMMENT '账号数量',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 125 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '租户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_tenant
-- ----------------------------
INSERT INTO `sys_tenant` VALUES (1, '芋道源码', NULL, '芋艿', '17321315478', 0, 'https://www.iocoder.cn', 0, '2099-02-19 17:14:16', 9999, '1', '2021-01-05 17:03:47', '1', '2022-02-23 12:15:11', b'0');
INSERT INTO `sys_tenant` VALUES (121, '小租户', 110, '小王2', '15601691300', 0, 'http://www.iocoder.cn', 111, '2024-03-11 00:00:00', 20, '1', '2022-02-22 00:56:14', '1', '2022-05-17 10:03:59', b'0');
INSERT INTO `sys_tenant` VALUES (122, '测试租户', 113, '芋道', '15601691300', 0, 'https://www.iocoder.cn', 111, '2022-04-30 00:00:00', 50, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', b'0');

-- ----------------------------
-- Table structure for sys_tenant_package
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant_package`;
CREATE TABLE `sys_tenant_package`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '套餐编号',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '套餐名',
  `status` tinyint NOT NULL DEFAULT 0 COMMENT '租户状态（0正常 1停用）',
  `remark` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '备注',
  `menu_ids` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '关联的菜单编号',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 112 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '租户套餐表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_tenant_package
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `deleted_at` datetime NULL DEFAULT NULL COMMENT '删除标志（0代表存在 2代表删除）',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '超级管理员', '00', 'admin@163.com', '13888888888', '0', '', '$2y$10$j1qCTM6GKLzjzlHogXJQfOHiquOYYeohP3gVpItjQqjgxVsYiuPq6', '0', '172.71.210.100', '2022-11-02 16:45:42', 'admin', '2022-08-04 16:49:59', NULL, 'admin', '2022-10-30 21:43:32', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2y$10$j1qCTM6GKLzjzlHogXJQfOHiquOYYeohP3gVpItjQqjgxVsYiuPq6', '0', '127.0.0.1', '2022-10-30 21:37:30', 'admin', '2022-08-04 16:49:59', NULL, 'ry', '2022-10-30 21:37:45', '测试员');
INSERT INTO `sys_user` VALUES (200, 200, 'ljn', '李白', '00', '', '13103076678', '0', '', '$2y$10$j1qCTM6GKLzjzlHogXJQfOHiquOYYeohP3gVpItjQqjgxVsYiuPq6', '0', '127.0.0.1', '2022-08-22 21:43:09', 'ry', '2022-08-21 22:28:15', NULL, 'ry', '2022-08-22 21:39:44', NULL);

-- ----------------------------
-- Table structure for sys_user_login
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_login`;
CREATE TABLE `sys_user_login`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 209 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_login
-- ----------------------------
INSERT INTO `sys_user_login` VALUES (100, 'ry', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-08-04 17:00:06');
INSERT INTO `sys_user_login` VALUES (101, 'ry', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-08-04 20:55:40');
INSERT INTO `sys_user_login` VALUES (102, 'ry', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-08-06 09:12:47');
INSERT INTO `sys_user_login` VALUES (103, 'ry', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-08-06 10:31:58');
INSERT INTO `sys_user_login` VALUES (104, 'ry', '111.194.216.149', '北京 北京市', 'Edge', NULL, '0', '登陆成功', '2022-08-06 10:39:06');
INSERT INTO `sys_user_login` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Edge', '', '1', '登陆失败', '2022-08-06 17:25:55');
INSERT INTO `sys_user_login` VALUES (106, 'ry', '127.0.0.1', '内网IP', 'Edge', '\"Windows\"', '0', '登陆成功', '2022-08-06 17:26:31');
INSERT INTO `sys_user_login` VALUES (107, 'ry', '127.0.0.1', '内网IP', 'Edge', '\"Windows\"', '0', '登陆成功', '2022-08-07 11:20:56');
INSERT INTO `sys_user_login` VALUES (108, 'admin', '104.171.225.121', '美国 加利福尼亚', 'Edge', NULL, '1', '登陆失败', '2022-08-08 16:13:34');
INSERT INTO `sys_user_login` VALUES (109, 'ry', '104.171.225.121', '美国 加利福尼亚', 'Edge', NULL, '0', '登陆成功', '2022-08-08 16:13:42');
INSERT INTO `sys_user_login` VALUES (110, 'ry', '104.171.225.121', '美国 加利福尼亚', 'Edge', NULL, '0', '登陆成功', '2022-08-08 16:23:29');
INSERT INTO `sys_user_login` VALUES (111, 'ry', '127.0.0.1', '内网IP', 'Edge', '\"Windows\"', '1', '验证码错误', '2022-08-09 22:09:36');
INSERT INTO `sys_user_login` VALUES (112, 'ry', '127.0.0.1', '内网IP', 'Edge', '\"Windows\"', '1', '验证码错误', '2022-08-09 22:09:39');
INSERT INTO `sys_user_login` VALUES (113, 'ry', '127.0.0.1', '内网IP', 'Edge', '\"Windows\"', '0', '登陆成功', '2022-08-09 22:09:45');
INSERT INTO `sys_user_login` VALUES (114, 'ry', '118.140.26.153', '香港', 'Edge', NULL, '0', '登陆成功', '2022-08-09 22:11:27');
INSERT INTO `sys_user_login` VALUES (115, 'ry', '127.0.0.1', '内网IP', 'Edge', '\"Windows\"', '0', '登陆成功', '2022-08-10 22:30:52');
INSERT INTO `sys_user_login` VALUES (116, 'ry', '127.0.0.1', '内网IP', 'Edge', '\"Windows\"', '0', '登陆成功', '2022-08-12 21:03:08');
INSERT INTO `sys_user_login` VALUES (117, 'ry', '127.0.0.1', '内网IP', 'Edge', '\"Windows\"', '0', '登陆成功', '2022-08-13 15:40:57');
INSERT INTO `sys_user_login` VALUES (118, 'ry', '127.0.0.1', '内网IP', 'Edge', '\"Windows\"', '0', '登陆成功', '2022-08-14 11:59:25');
INSERT INTO `sys_user_login` VALUES (119, 'ry', '111.194.216.149', '北京 北京市', 'Edge', NULL, '0', '登陆成功', '2022-08-14 23:12:39');
INSERT INTO `sys_user_login` VALUES (120, 'ry', '127.0.0.1', '内网IP', 'Edge', '\"Windows\"', '1', '验证码已失效', '2022-08-17 21:56:46');
INSERT INTO `sys_user_login` VALUES (121, 'ry', '127.0.0.1', '内网IP', 'Edge', '\"Windows\"', '0', '登陆成功', '2022-08-17 21:57:32');
INSERT INTO `sys_user_login` VALUES (122, 'ry', '127.0.0.1', '内网IP', 'Edge', '\"Windows\"', '0', '登陆成功', '2022-08-18 14:17:35');
INSERT INTO `sys_user_login` VALUES (123, 'ry', '127.0.0.1', '内网IP', 'Edge', '\"Windows\"', '0', '登陆成功', '2022-08-20 17:40:07');
INSERT INTO `sys_user_login` VALUES (124, 'ry', '50.7.59.145', '香港 荃湾', 'Edge', NULL, '0', '登陆成功', '2022-08-20 22:43:47');
INSERT INTO `sys_user_login` VALUES (125, 'ry', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-08-21 10:28:50');
INSERT INTO `sys_user_login` VALUES (126, 'ry', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-08-21 17:54:21');
INSERT INTO `sys_user_login` VALUES (127, 'ry', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-08-21 19:32:11');
INSERT INTO `sys_user_login` VALUES (128, 'ry', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-08-21 19:36:48');
INSERT INTO `sys_user_login` VALUES (129, 'ry', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-08-21 19:37:07');
INSERT INTO `sys_user_login` VALUES (130, 'ljn', '127.0.0.1', '内网IP', 'Edge', 'Windows', '1', '登陆失败', '2022-08-21 22:28:55');
INSERT INTO `sys_user_login` VALUES (131, 'ljn', '127.0.0.1', '内网IP', 'Edge', 'Windows', '1', '登陆失败', '2022-08-21 22:29:09');
INSERT INTO `sys_user_login` VALUES (132, 'ljn', '127.0.0.1', '内网IP', 'Edge', 'Windows', '1', '登陆失败', '2022-08-21 22:30:12');
INSERT INTO `sys_user_login` VALUES (133, 'ljn', '127.0.0.1', '内网IP', 'Edge', 'Windows', '1', '登陆失败', '2022-08-21 22:30:20');
INSERT INTO `sys_user_login` VALUES (134, 'ljn', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-08-21 22:30:46');
INSERT INTO `sys_user_login` VALUES (135, 'ljn', '127.0.0.1', '内网IP', 'Edge', 'Windows', '1', '登陆失败', '2022-08-21 22:32:01');
INSERT INTO `sys_user_login` VALUES (136, 'ljn', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-08-21 22:32:11');
INSERT INTO `sys_user_login` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-08-21 22:33:14');
INSERT INTO `sys_user_login` VALUES (138, 'ljn', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-08-21 22:34:00');
INSERT INTO `sys_user_login` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '1', '登陆失败', '2022-08-21 22:38:41');
INSERT INTO `sys_user_login` VALUES (140, 'ljn', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-08-21 22:38:52');
INSERT INTO `sys_user_login` VALUES (141, 'ljn', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-08-21 22:51:11');
INSERT INTO `sys_user_login` VALUES (142, 'ljn', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-08-21 22:58:35');
INSERT INTO `sys_user_login` VALUES (143, 'ry', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-08-22 20:36:38');
INSERT INTO `sys_user_login` VALUES (144, 'ljn', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-08-22 21:40:03');
INSERT INTO `sys_user_login` VALUES (145, 'ljn', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-08-22 21:43:09');
INSERT INTO `sys_user_login` VALUES (146, 'ry', '111.194.216.149', '北京 北京市', 'Edge', 'Windows', '0', '登陆成功', '2022-08-22 22:00:20');
INSERT INTO `sys_user_login` VALUES (147, 'ry', '104.171.225.121', '美国 加利福尼亚', 'Edge', 'Windows', '1', '验证码错误', '2022-08-23 13:07:56');
INSERT INTO `sys_user_login` VALUES (148, 'ry', '104.171.225.121', '美国 加利福尼亚', 'Edge', 'Windows', '0', '登陆成功', '2022-08-23 13:08:00');
INSERT INTO `sys_user_login` VALUES (149, 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows', '0', '登陆成功', '2022-08-23 17:36:35');
INSERT INTO `sys_user_login` VALUES (150, 'ry', '104.171.225.121', '美国 加利福尼亚', 'Edge', 'Windows', '0', '登陆成功', '2022-08-24 15:34:25');
INSERT INTO `sys_user_login` VALUES (151, 'ry', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-08-24 22:01:33');
INSERT INTO `sys_user_login` VALUES (152, 'ry', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-08-25 22:10:52');
INSERT INTO `sys_user_login` VALUES (153, 'ry', '111.194.216.149', '北京 北京市', 'Edge', 'Windows', '0', '登陆成功', '2022-08-25 22:31:09');
INSERT INTO `sys_user_login` VALUES (154, 'ry', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-08-26 15:30:37');
INSERT INTO `sys_user_login` VALUES (155, 'ry', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-08-27 21:16:41');
INSERT INTO `sys_user_login` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-08-27 21:19:03');
INSERT INTO `sys_user_login` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-08-28 20:11:13');
INSERT INTO `sys_user_login` VALUES (158, 'ry', '104.171.225.121', '美国 加利福尼亚', 'Edge', 'Windows', '0', '登陆成功', '2022-08-29 17:52:52');
INSERT INTO `sys_user_login` VALUES (159, 'admin', '104.171.225.121', '美国 加利福尼亚', 'Edge', 'Windows', '0', '登陆成功', '2022-08-29 17:53:12');
INSERT INTO `sys_user_login` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-08-30 22:37:41');
INSERT INTO `sys_user_login` VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-09-03 22:24:17');
INSERT INTO `sys_user_login` VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '1', '验证码已失效', '2022-09-04 09:43:03');
INSERT INTO `sys_user_login` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-09-04 09:43:10');
INSERT INTO `sys_user_login` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-09-04 21:16:01');
INSERT INTO `sys_user_login` VALUES (165, 'ry', '18.162.57.197', '美国', 'Edge', 'Windows', '0', '登陆成功', '2022-09-04 22:08:06');
INSERT INTO `sys_user_login` VALUES (166, 'admin', '111.194.219.118', '北京 北京市', 'Edge', 'AndroidOS', '1', '登陆失败', '2022-09-04 23:09:23');
INSERT INTO `sys_user_login` VALUES (167, 'admin', '111.194.219.118', '北京 北京市', 'Edge', 'AndroidOS', '1', '验证码错误', '2022-09-04 23:09:35');
INSERT INTO `sys_user_login` VALUES (168, 'admin', '111.194.219.118', '北京 北京市', 'Edge', 'AndroidOS', '0', '登陆成功', '2022-09-04 23:09:43');
INSERT INTO `sys_user_login` VALUES (169, 'admin', '103.135.104.181', '香港', 'Edge', 'Windows', '1', '登陆失败', '2022-09-05 10:22:14');
INSERT INTO `sys_user_login` VALUES (170, 'admin', '103.135.104.181', '香港', 'Edge', 'Windows', '0', '登陆成功', '2022-09-05 10:22:20');
INSERT INTO `sys_user_login` VALUES (171, 'ry', '111.194.219.118', '北京 北京市', 'Edge', 'Windows', '0', '登陆成功', '2022-09-06 21:20:03');
INSERT INTO `sys_user_login` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-09-06 22:32:39');
INSERT INTO `sys_user_login` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '1', '登陆失败', '2022-09-25 20:16:25');
INSERT INTO `sys_user_login` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '1', '验证码错误', '2022-09-25 20:16:28');
INSERT INTO `sys_user_login` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '1', '验证码错误', '2022-09-25 20:16:32');
INSERT INTO `sys_user_login` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-09-25 20:16:40');
INSERT INTO `sys_user_login` VALUES (177, 'admin', '103.135.104.183', '香港', 'Edge', 'Windows', '1', '登陆失败', '2022-10-09 15:04:54');
INSERT INTO `sys_user_login` VALUES (178, 'admin', '103.135.104.183', '香港', 'Edge', 'Windows', '0', '登陆成功', '2022-10-09 15:04:59');
INSERT INTO `sys_user_login` VALUES (179, 'admin', '103.135.104.183', '香港', 'Edge', 'Windows', '1', '验证码错误', '2022-10-09 15:05:28');
INSERT INTO `sys_user_login` VALUES (180, 'admin', '103.135.104.183', '香港', 'Edge', 'Windows', '0', '登陆成功', '2022-10-09 15:05:33');
INSERT INTO `sys_user_login` VALUES (181, 'admin', '61.222.18.208', '台湾省', 'Chrome', 'OS X', '1', '登陆失败', '2022-10-09 15:07:55');
INSERT INTO `sys_user_login` VALUES (182, 'admin', '61.222.18.208', '台湾省', 'Chrome', 'OS X', '1', '登陆失败', '2022-10-09 15:08:01');
INSERT INTO `sys_user_login` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '1', '验证码错误', '2022-10-21 11:33:26');
INSERT INTO `sys_user_login` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '1', '登陆失败', '2022-10-21 11:33:53');
INSERT INTO `sys_user_login` VALUES (185, 'admin', '103.135.104.183', '香港', 'Edge', 'Windows', '1', '验证码已失效', '2022-10-21 11:44:06');
INSERT INTO `sys_user_login` VALUES (186, 'admin', '103.135.104.183', '香港', 'Edge', 'Windows', '1', '验证码错误', '2022-10-21 11:44:10');
INSERT INTO `sys_user_login` VALUES (187, 'admin', '103.135.104.183', '香港', 'Edge', 'Windows', '1', '验证码错误', '2022-10-21 11:44:13');
INSERT INTO `sys_user_login` VALUES (188, 'admin', '103.135.104.183', '香港', 'Edge', 'Windows', '1', '登陆失败', '2022-10-21 11:44:18');
INSERT INTO `sys_user_login` VALUES (189, 'admin', '103.135.104.183', '香港', 'Edge', 'Windows', '0', '登陆成功', '2022-10-21 11:44:24');
INSERT INTO `sys_user_login` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '1', '登陆失败', '2022-10-23 20:03:48');
INSERT INTO `sys_user_login` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-10-23 20:03:55');
INSERT INTO `sys_user_login` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '1', '登陆失败', '2022-10-30 19:16:04');
INSERT INTO `sys_user_login` VALUES (193, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-10-30 19:16:15');
INSERT INTO `sys_user_login` VALUES (194, 'ry', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-10-30 21:37:30');
INSERT INTO `sys_user_login` VALUES (195, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-10-30 21:40:08');
INSERT INTO `sys_user_login` VALUES (196, 'admin', '111.194.222.147', '北京 北京市', 'Edge', 'Windows', '0', '登陆成功', '2022-10-30 22:16:50');
INSERT INTO `sys_user_login` VALUES (197, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-10-31 16:44:40');
INSERT INTO `sys_user_login` VALUES (198, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-10-31 16:46:05');
INSERT INTO `sys_user_login` VALUES (199, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '1', '登陆失败', '2022-10-31 16:47:35');
INSERT INTO `sys_user_login` VALUES (200, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-10-31 16:47:48');
INSERT INTO `sys_user_login` VALUES (201, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-10-31 16:49:42');
INSERT INTO `sys_user_login` VALUES (202, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-10-31 16:51:42');
INSERT INTO `sys_user_login` VALUES (203, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-10-31 16:56:42');
INSERT INTO `sys_user_login` VALUES (204, 'admin', '127.0.0.1', '内网IP', 'Edge', 'Windows', '0', '登陆成功', '2022-11-01 21:00:02');
INSERT INTO `sys_user_login` VALUES (205, 'admin', '172.71.215.71', '美国 加利福尼亚 旧金山', 'Edge', 'Windows', '1', '登陆失败', '2022-11-02 16:08:08');
INSERT INTO `sys_user_login` VALUES (206, 'admin', '172.71.215.71', '美国 加利福尼亚 旧金山', 'Edge', 'Windows', '0', '登陆成功', '2022-11-02 16:08:20');
INSERT INTO `sys_user_login` VALUES (207, 'admin', '172.71.210.100', '美国 加利福尼亚 旧金山', 'Edge', 'Windows', '1', '登陆失败', '2022-11-02 16:45:36');
INSERT INTO `sys_user_login` VALUES (208, 'admin', '172.71.210.100', '美国 加利福尼亚 旧金山', 'Edge', 'Windows', '0', '登陆成功', '2022-11-02 16:45:42');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (200, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);

-- ----------------------------
-- Table structure for webman_log
-- ----------------------------
DROP TABLE IF EXISTS `webman_log`;
CREATE TABLE `webman_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `ip` varchar(31) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `method` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `exec_time` float NULL DEFAULT NULL,
  `exception` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1725 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of webman_log
-- ----------------------------

-- ----------------------------
-- Table structure for webman_log_item
-- ----------------------------
DROP TABLE IF EXISTS `webman_log_item`;
CREATE TABLE `webman_log_item`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` int NULL DEFAULT NULL,
  `type` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `connection` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `command` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `exec_time` float NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27264 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of webman_log_item
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;

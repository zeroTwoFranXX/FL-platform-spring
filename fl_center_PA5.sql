/*
 Navicat Premium Data Transfer

 Source Server         : flp_local
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : fl_center

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 16/11/2021 15:56:35
*/
use fl_center;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
###############################################################################################################
#                                   关联表
###############################################################################################################
     
-- ----------------------------
-- Table structure for pms_user_resource_project
-- 用户-项目关联表
-- ----------------------------
DROP TABLE IF EXISTS user_project ;
CREATE TABLE user_project  (
  id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  user_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户id',
  proj_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '项目id',
  relative_type smallint(6) NULL DEFAULT NULL COMMENT '关联类型1.创建人2.参与者',
  create_time datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  update_time datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  void_flag int(11) NULL DEFAULT NULL COMMENT '是否删除 0未删除 1删除',
  notes1 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注1',
  notes2 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注2',
  notes3 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注3',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '关联类型：\r\n      1.创建人： creator\r\n      2.参与者： partner' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dms_user_resource_dataset
-- 用户和数据集关联表  GW
-- ----------------------------
DROP TABLE IF EXISTS user_model;
CREATE TABLE user_model  (
  id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  user_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户id',
  model_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据集id',
  relative_type smallint(6) NULL DEFAULT NULL COMMENT '关联类型1.创建人2.参与者',
  create_time datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  update_time datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  void_flag int(11) NULL DEFAULT NULL COMMENT '是否删除 0未删除 1删除',
  notes1 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注1',
  notes2 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注2',
  notes3 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注3',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '关联类型：\r\n      1.创建人： creator\r\n      2.参与者： partner' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dms_user_resource_dataset
-- 用户和数据集关联表
-- ----------------------------
DROP TABLE IF EXISTS user_dataset;
CREATE TABLE user_dataset  (
  id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  user_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户id',
  dataset_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据集id',
  relative_type smallint(6) NULL DEFAULT NULL COMMENT '关联类型1.创建人2.参与者',
  create_time datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  update_time datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  void_flag int(11) NULL DEFAULT NULL COMMENT '是否删除 0未删除 1删除',
  notes1 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注1',
  notes2 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注2',
  notes3 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注3',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '关联类型：\r\n      1.创建人： creator\r\n      2.参与者： partner' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for nms_user_node_relative
-- 用户-节点 关联表
-- ----------------------------
DROP TABLE IF EXISTS user_node;
CREATE TABLE user_node  (
  id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  user_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户id',
  node_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '计算资源id',
  node_status smallint(6) NULL DEFAULT NULL COMMENT '0.节点未启用  1节点已经启用',
  create_time datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  update_time datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  void_flag int(11) NULL DEFAULT NULL COMMENT '是否删除 0未删除 1删除',
  notes1 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注1',
  notes2 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注2',
  notes3 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注3',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_app
-- 用户-应用 关联表
-- ----------------------------
DROP TABLE IF EXISTS user_app;
CREATE TABLE user_app  (
  id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  user_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户id',
  app_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '计算资源id',
  relative_type smallint(6) NULL DEFAULT NULL COMMENT '关联类型1.创建人2.参与者',
  create_time datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  update_time datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  void_flag int(11) NULL DEFAULT NULL COMMENT '是否删除 0未删除 1删除',
  notes1 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注1',
  notes2 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注2',
  notes3 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注3',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for project_model
-- 项目-模型关联表 1:N
-- ----------------------------
DROP TABLE IF EXISTS project_model;
CREATE TABLE project_model  (
  id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  proj_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '项目id',
  model_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模型id',
  create_time datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  update_time datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  void_flag int(11) NULL DEFAULT NULL COMMENT '是否删除',
  notes1 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注1',
  notes2 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注2',
  notes3 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注3',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '在项目里面加数据集' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pms_project_dataset_relative
-- 项目-数据集关联表 1:N
-- ----------------------------
DROP TABLE IF EXISTS project_dataset;
CREATE TABLE project_dataset  (
  id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  proj_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '项目id',
  dataset_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据集id',
  create_time datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  update_time datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  void_flag int(11) NULL DEFAULT NULL COMMENT '是否删除',
  notes1 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注1',
  notes2 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注2',
  notes3 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注3',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '在项目里面加数据集' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for project_app
-- 项目-模型关联表 1:N
-- ----------------------------
DROP TABLE IF EXISTS project_app;
CREATE TABLE project_app  (
  id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  proj_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '项目id',
  app_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '应用id',
  create_time datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  update_time datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  void_flag int(11) NULL DEFAULT NULL COMMENT '是否删除',
  notes1 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注1',
  notes2 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注2',
  notes3 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注3',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '在项目里面加数据集' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pms_project_node_relative
-- 项目-节点 关联表
-- ----------------------------
DROP TABLE IF EXISTS project_node;
CREATE TABLE project_node  (
  id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  proj_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '项目id',
  node_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '计算资源id',
  create_time datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  update_time datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  void_flag int(11) NULL DEFAULT NULL COMMENT '是否删除 0未删除 1删除',
  notes1 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注1',
  notes2 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注2',
  notes3 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注3',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '在项目里添加计算资源' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mms_model_dataset_relative
-- 模型与数据集关联表  1:N
-- ----------------------------
DROP TABLE IF EXISTS model_dataset;
CREATE TABLE model_dataset  (
  id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  model_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模型id',
  dataset_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据集id',
  create_time datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  update_time datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  void_flag int(11) NULL DEFAULT NULL COMMENT '是否删除 0未删除 1 删除',
  notes1 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注1',
  notes2 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注2',
  notes3 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注3',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '在模型创建的时候插入数据集' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mms_model_node_relative
-- 模型-节点关联表 12345
-- ----------------------------
DROP TABLE IF EXISTS model_node;
CREATE TABLE model_node  (
  id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  model_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模型id',
  node_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '计算资源id',
  create_time datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  update_time datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  void_flag int(11) NULL DEFAULT NULL COMMENT '是否删除 0未删除 1删除',
  notes1 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注1',
  notes2 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注2',
  notes3 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注3',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '在创建模型的时候选择计算资源' ROW_FORMAT = Dynamic;

-- ----------------------------
-- 模型与应用的关联表  1:1
-- ----------------------------
DROP TABLE IF EXISTS model_app;
CREATE TABLE model_app  (
  id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  model_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模型id',
  app_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '应用id',
  #dataset varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预测数据集',
  #result_path varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预测结果路径',
  create_time datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  update_time datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  void_flag varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否删除',
  notes1 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注1',
  notes2 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注2',
  notes3 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注3',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;
 
 
-- ----------------------------
-- 应用与数据集的关联表
-- ----------------------------
DROP TABLE IF EXISTS dataset_app;
CREATE TABLE dataset_app  (
  id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  app_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '应用id',
  dataset_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据集id',
  create_time datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  update_time datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  void_flag int(11) NULL DEFAULT NULL COMMENT '是否删除 0未删除 1删除',
  notes1 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注1',
  notes2 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注2',
  notes3 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注3',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;
 

-- ----------------------------
-- 数据集-节点关联表
-- ----------------------------
DROP TABLE IF EXISTS dataset_node;
CREATE TABLE dataset_node  (
  id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',  
  dataset_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据集id',
  node_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '节点id',
  create_time datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  update_time datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  void_flag int(11) NULL DEFAULT NULL COMMENT '是否删除 0未删除 1删除',
  notes1 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注1',
  notes2 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注2',
  notes3 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注3',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;
 
-- ----------------------------
-- 应用与节点(计算资源)关联表 1:N
-- ----------------------------
DROP TABLE IF EXISTS app_node;
CREATE TABLE app_node  (
  id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  app_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '应用id',
  node_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '计算资源id',
  create_time datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  update_time datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  void_flag int(11) NULL DEFAULT NULL COMMENT '是否删除 0未删除 1删除',
  notes1 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注1',
  notes2 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注2',
  notes3 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注3',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;


###############################################################################################################
#                                   用户中心 
###############################################################################################################
#-----------------------用户表 user------------------------------
DROP TABLE IF EXISTS user;
CREATE TABLE `user` (
  `id` varchar(32) NOT NULL DEFAULT '' COMMENT '用户id',
  `role_code` varchar(255) NOT NULL COMMENT '用户角色代码',
  `username` varchar(255) NOT NULL DEFAULT '' COMMENT '账号',
  `password` varchar(255) NOT NULL DEFAULT '' COMMENT '密码',
  `mail` varchar(255) NOT NULL DEFAULT '' COMMENT '邮箱',
  `profile` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `mobile` varchar(255) NOT NULL DEFAULT '' COMMENT '联系方式',
  `org_id` varchar(255) NOT NULL DEFAULT '' COMMENT '企业id',
  `avatar` longtext COMMENT '头像链接',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '用户真实姓名',
  `sex` int(11) DEFAULT '0' COMMENT '性别 0男 1女',
  `enabled` tinyint(255) NOT NULL DEFAULT '1' COMMENT '是否启用',
  `account_non_expired` tinyint(255) NOT NULL DEFAULT '1' COMMENT '账号未过期',
  `credentials_non_expired` tinyint(255) NOT NULL DEFAULT '1' COMMENT '认证未过期',
  `account_non_locked` tinyint(255) NOT NULL DEFAULT '1' COMMENT '账号未锁定',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户表';

#-----------------------用户详情表 user_det------------------------------

DROP TABLE IF EXISTS user_det;
CREATE TABLE `user_det` (  
  `id`        varchar(32) NOT NULL DEFAULT '' COMMENT 'id',
  `user_id`   varchar(32) NOT NULL DEFAULT '' COMMENT '用户id',  
  `name`      varchar(255) NULL DEFAULT '' COMMENT '姓名',
  `id_type`   varchar(255) NULL DEFAULT ''   COMMENT '证件类型',
  `id_number` varchar(255)  NULL DEFAULT ''   COMMENT '证件号',
  `id_card_head` varchar(255) NULL DEFAULT ''   COMMENT '正面图像',
  `id_card_tail` varchar(255) NULL DEFAULT ''   COMMENT '反面图像',  
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',  
  `enabled`     tinyint(255) NULL DEFAULT '1' COMMENT '是否实名认证通过',#1没通过 2 通过
  `notes1`      varchar(255) NULL DEFAULT ''   COMMENT '备注1',
  `notes2`      varchar(255) NULL DEFAULT ''   COMMENT '备注2',
  `notes3`      varchar(255) NULL DEFAULT ''   COMMENT '备注3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户详细表';

 
#-----------------------组织机构表  org------------------------------
DROP TABLE IF EXISTS org;
CREATE TABLE `org` (
  `id` varchar(32) NOT NULL DEFAULT '' COMMENT '机构ID',
  `org_name` varchar(30) NOT NULL DEFAULT '' COMMENT '机构名称',
  `org_code` varchar(255) NOT NULL comment '统一社会信用代码',
  `org_desc` varchar(200)  NULL DEFAULT '机构描述' COMMENT '机构描述',
  `org_pic` longtext NULL COMMENT '机构图片',
  `law_name` varchar(30)  NULL DEFAULT '' COMMENT '法人姓名',
  `org_addr` varchar(255)  NULL DEFAULT '' COMMENT '详细地址',
  `org_phone` varchar(30)  NULL DEFAULT '' COMMENT '官方联系电话',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
   `void_flag` int(11) DEFAULT '0' COMMENT '是否删除 0未删除 1删除',
   `approve_flag` int(11) DEFAULT '0' COMMENT '实名认证是否通过 0未通过 1通过',#新增字段 21-11-26
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='机构表';

###############################################################################################################
#                                   项目中心
###############################################################################################################
-- ----------------------------
-- Table structure for pms_project_type
-- 项目类型表 不准备在平台中做增删改查,应为类型相对固定 :金融类,医疗类,保险类..
-- ----------------------------
DROP TABLE IF EXISTS project_type;
CREATE TABLE project_type  (
  id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  name varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '项目名称',
  code int(11) NULL DEFAULT NULL COMMENT '项目类型',
  description varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '项目描述',
  void_flag int(11) NULL DEFAULT 0 COMMENT '是否删除 0未删除 1删除',
  notes1 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注1',
  notes2 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注2',
  notes3 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注3',
  PRIMARY KEY (id) USING BTREE,
  UNIQUE INDEX AK_Key_2(name) USING BTREE,
  UNIQUE INDEX AK_Key_3(code) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pms_project_info
-- 项目信息表
-- ----------------------------
DROP TABLE IF EXISTS project;
create table project
(
   id varchar(32) NOT NULL DEFAULT '' COMMENT '项目id',
   proj_name            varchar(255) comment '项目名称',
   proj_type            varchar(255) comment '项目类型名称',
   proj_type_code       int comment '项目类型编码,比如 1 金融类 2 医疗类',
   proj_pic             varchar(500) comment '项目图片',
   proj_desc            varchar(500) comment '项目描述',
   proj_creator_id      varchar(255) comment '项目创建人ID',
   #proj_creator         varchar(255) comment '项目创建人姓名', 
   #org_id               bigint comment '所属机构id',
   #org_name             varchar(255) comment '所属机构名称',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   void_flag            int comment '是否删除 0未删除 1删除',
   open_level           int comment '0:不公开 1:公开',
   #public_flag          int comment '0:不公开 1:公开',
   notes1               varchar(255) comment '备注1',
   notes2               varchar(255) comment '备注2',
   notes3               varchar(255) comment '备注3',
   PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='项目表';
 
###############################################################################################################
#                                   计算资源-节点 节点中心 nc
###############################################################################################################
 
-- ----------------------------
-- Table structure for nms_node_info
-- 节点表  已创建 已生成代码 nc
-- ----------------------------
DROP TABLE IF EXISTS node;
CREATE TABLE node  (
  id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  /*改动 原来为node_nusername*/
  node_name varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '计算资源名称',
  node_ip varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ip',
  node_port int(11) NULL DEFAULT NULL COMMENT 'port',
  creator_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人id',
  node_status int(11) NULL DEFAULT NULL COMMENT '状态 1.正常 2.异常',
  void_flag int(11) NULL DEFAULT NULL COMMENT '是否删除 0未删除 1删除',
  cerate_time datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  update_time datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  /*新增*/node_desc varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '计算资源描述',
  /*新增*/notes1               varchar(255) comment '备注1',
  /*新增*/notes2               varchar(255) comment '备注2',
  /*新增*/notes3               varchar(255) comment '备注3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

###############################################################################################################
#                                   模型中心 mc
###############################################################################################################
-- ----------------------------
-- Table structure for mms_model_info
-- 模型表 已创建 已生成代码 mc
-- ----------------------------
DROP TABLE IF EXISTS model;
CREATE TABLE model  (
  model_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '模型编号id',
  model_name varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模型名称',
  model_desc varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模型描述',
  project_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模型所属项目id',
  creator_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人ID',
  conf_path varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台中配置文件路径',
  dsl_path  varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台中DSL文件路径',
  engine_model_id varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'fl引擎模型ID,FROM边缘节点',
  engine_model_version varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'fl引擎模型版本,,FROM边缘节点',
  create_time datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  update_time datetime(0) NULL DEFAULT NULL COMMENT '更新时间',  
  #这里的模型状态是指前端用户对模型进行创建,配置等操作的标识
  model_status smallint(6) NULL DEFAULT NULL COMMENT '模型状态 0新创建  1已配置 2已训练 3已发布',
  void_flag int(11) NULL DEFAULT NULL COMMENT '是否删除 0未删除 1 删除',
  notes1 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注1',
  notes2 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注2',
  notes3 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注3',
  PRIMARY KEY (model_id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '模型状态有  新创建  已配置  已训练 已发布 已删除' ROW_FORMAT = Dynamic;
 
###############################################################################################################
#                                   数据集中心
###############################################################################################################
-- ----------------------------
-- 中央节点数据集表  dms_dataset_info_center
-- ----------------------------
DROP TABLE IF EXISTS dataset_center;
CREATE TABLE dataset_center  (
  id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '数据集id',
  dataset_name varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据集名称',
  dataset_desc varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据集介绍',
  provider_id varchar(32)   CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '提供该数据集的用户ID',
  dataset_ip    varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据集所在主机地址', 
  open_level int(11)        NOT NULL DEFAULT 1 COMMENT '公开程度 0不公开 1 公开',
  dataset_pic varchar(500)  CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据集图片',  
  data_source_type int(11)  NULL DEFAULT NULL COMMENT ' 1csv 2 mysql 3 hive',
  void_flag int(11) NULL DEFAULT NULL COMMENT '是否删除 0未删除 1 删除',
  create_time datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  update_time datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  notes1 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注1',
  notes2 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注2',
  notes3 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注3',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据注册后的数据集信息管理，可展示可调用引擎\r\n\r\n数据集状态  （已配置未发布）（已配置已发布） ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dms_dataset_info_edge
-- 边缘节点数据集表  
-- ----------------------------
DROP TABLE IF EXISTS dataset_edge;
CREATE TABLE dataset_edge  (
  id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '数据集id',
  dataset_name  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据集名称',
  dataset_desc  varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据集介绍',
  dataset_owner varchar(32)   CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人用户ID',  
  dataset_ip    varchar(32)   CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据集所在主机地址',  
  open_level int(11)     NOT NULL DEFAULT 1 COMMENT '公开程度 0不公开 1 公开',
  #是否已经同步到了平台
  dataset_status int(11) NULL DEFAULT NULL COMMENT '数据集状态,0未同步 1已同步',
  fl_dataset_url varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'fl本地存储路径,Linux路径',
  fl_namespace varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'fl命名空间-英文,自定义,要有意义',
  fl_table_name varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'fl表名-csv的文件名',
  fl_work_mode int(11) NULL DEFAULT 1 COMMENT 'fl工作模式,0:单机 1:Spark(集群) 本平台都是1',
  fl_partition_num int(11) NULL DEFAULT 8 COMMENT '默认8, 用于hdfs中数据备份的数据',
  fl_backend int(11) NULL DEFAULT 1 COMMENT 'fl计算引擎类型 缺省1 0:eggroll 1:spark_rabbit_mq',
  fl_head int(11) NULL DEFAULT 1 COMMENT 'fl表头,是否有表头,比如csv表格有么有表头列名 0没表头 1有表头 缺省1',
  fl_with_label int(11) NULL DEFAULT 1 COMMENT '数据集是否携带数据标签 0否 1是 缺省1',
  create_time datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  update_time datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  notes1 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注1',
  notes2 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注2',
  notes3 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注3',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据注册后的数据集信息管理，可展示可调用引擎\r\n\r\n数据集状态  （已配置未发布）（已配置已发布） ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dms_metadata_info_center
-- 平台上的元数据表   边缘接节点上传数据集到中央服务器时,自动创建记录
-- ----------------------------
DROP TABLE IF EXISTS metadata;
CREATE TABLE metadata  (
  id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ID',
  dataset_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所属数据集id',
  provider_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '提供该数据集的用户ID',
  item_index int(11) NULL DEFAULT NULL COMMENT '序号',
  item_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '数据项id',
  item_field_name varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '在数据库表中的列名',
  item_desc varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据项含义说明',
  data_type  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据类型 Java数据类型String,int...八个基本数据类型',
  scope_desc varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用汉字描述本item的取值范围',
  create_time datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  update_time datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  void_flag int(11) NULL DEFAULT NULL COMMENT '是否删除 0未删除 1 删除',
  notes1 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注1',
  notes2 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注2',
  notes3 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注3',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '状态有 正常显示 已经删除' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dms_metadata_info_edge
-- 节点元数据表
-- ----------------------------
DROP TABLE IF EXISTS metadata_edge;
CREATE TABLE metadata_edge  (
  id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ID',
  dataset_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所属数据集id',
  provider_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '提供该数据集的用户ID',
  item_index int(11) NULL DEFAULT NULL COMMENT '序号',
  item_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '数据项id',
  item_field_name varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '在数据库表中的列名',
  item_desc varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据项含义说明',
  data_type varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据类型  Java数据类型String,int...八个基',
  scope_desc varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用汉字描述本item的取值范围',
  create_time datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  update_time datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  void_flag int(11) NULL DEFAULT NULL COMMENT '是否删除 0未删除 1 删除',
  notes1 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注1',
  notes2 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注2',
  notes3 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注3',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '状态有 正常显示 已经删除' ROW_FORMAT = Dynamic;

###############################################################################################################
#                                   应用中心 ac
###############################################################################################################
-- ----------------------------
-- Table structure for app 通过
-- 已创建  
-- ----------------------------
DROP TABLE IF EXISTS app;
CREATE TABLE app  (
  id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  app_name varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '应用名称',
  app_desc varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '应用描述',
  model_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模型id',
  creator_user_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人id',
  proj_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所属项目id',
  app_image   varchar(255)  CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT  '应用图片',
  #应用的状态  上架(正常服务) 下架(停止服务)
  app_status int(11) NULL DEFAULT NULL COMMENT '应用状态 0下架(正常服务)  1上架(停止服务)',
  create_time datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  update_time datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  void_flag int(11) NULL DEFAULT NULL COMMENT '是否删除 0未删除 1删除',
  notes1 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注1',
  notes2 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注2',
  notes3 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注3',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '状态 ：删除为0 ，未删除为1' ROW_FORMAT = Dynamic;

 
###############################################################################################################
#                                   消息中心
###############################################################################################################
-- ----------------------------
-- 消息表 message
-- ----------------------------
use fl_center;
DROP TABLE IF EXISTS message;
CREATE TABLE message   (
  id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  title varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '消息标题',
  msg_desc varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '消息描述',
  item_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '如果是项目消息,那么item_id是相应项目的ID..',
  msg_type int(11) NULL DEFAULT NULL COMMENT '应用消息类型 1:项目消息 2:数据集 3:应用 ',
  apply_status int(11) NULL DEFAULT NULL COMMENT '申请状态 参考详细设计文档',
  msg_status int(11) NULL DEFAULT NULL COMMENT '消息状态： 未读 已读 已删除',
  create_time datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  sender_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '消息发起人用户id',
  receiver_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '消息接收人用户id',
  void_flag int(11) NULL DEFAULT NULL COMMENT '是否删除 0未删除 1删除',
  notes1 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注1',
  notes2 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注2',
  notes3 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注3',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '消息表' ROW_FORMAT = Dynamic;

###############################################################################################################
#                                   其他
###############################################################################################################
-- ----------------------------
-- Table structure for creditcard_task_info 通过
-- ----------------------------
DROP TABLE IF EXISTS creditcard_task;
CREATE TABLE creditcard_task  (
  task_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务id',
  username varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户id',
  scorecard_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评分卡id',
  indicator_id varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '指标体系id',
  task_name varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  task_type varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务类型',
  score_result double NULL DEFAULT NULL COMMENT '评分结果',
  score_source varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评分卡来源方',
  response_status varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源方响应状态',
  task_status varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务状态',
  create_time datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  end_time datetime(0) NULL DEFAULT NULL COMMENT '结束时间',
  notes1 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注1',
  notes2 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注2',
  notes3 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注3',
  PRIMARY KEY (task_id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '任务状态：正在运行 失败 成功 删除' ROW_FORMAT = Dynamic;

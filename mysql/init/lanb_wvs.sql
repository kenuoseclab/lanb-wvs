/*
 Navicat Premium Data Transfer

 Source Server         : docker-mysql
 Source Server Type    : MySQL
 Source Server Version : 50617
 Source Host           : 192.168.99.100:3306
 Source Schema         : lanb_wvs

 Target Server Type    : MySQL
 Target Server Version : 50617
 File Encoding         : 65001

 Date: 07/06/2020 12:10:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

CREATE DATABASE  `lanb_wvs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE lanb_wvs;

-- ----------------------------
-- Table structure for asset
-- ----------------------------
DROP TABLE IF EXISTS `asset`;
CREATE TABLE `asset`  (
  `asset_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '资产ID',
  `asset_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '资产名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`asset_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of asset
-- ----------------------------
INSERT INTO `asset` VALUES ('090f13633d3d43c5a965531a2045ac41', '测试公司1', '2019-07-15 15:21:54', 'admin', '2020-03-27 23:46:56', 'admin', '');
INSERT INTO `asset` VALUES ('637b6d51b7e24026a4867c4e0730cbd4', '甲方公司1', '2019-07-09 15:34:30', 'admin', '2020-03-23 22:53:24', 'admin', '');
INSERT INTO `asset` VALUES ('64186ee06d254c5c8a7c734fa43a8cf5', '甲方公司2', '2019-07-18 09:17:02', 'admin', '2020-03-23 22:53:33', 'admin', '');
INSERT INTO `asset` VALUES ('94692459005f44489d3c5a03313dcc63', '测试', '2020-03-27 23:47:12', 'admin', '2020-03-27 23:47:12', 'admin', '');
INSERT INTO `asset` VALUES ('d4df141a59a541f7b9f5654e5c3b0fbe', '厂商1', '2019-07-18 09:16:45', 'admin', '2020-03-23 22:53:43', 'admin', '');

-- ----------------------------
-- Table structure for bug
-- ----------------------------
DROP TABLE IF EXISTS `bug`;
CREATE TABLE `bug`  (
  `bug_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '漏洞ID',
  `bug_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '漏洞名',
  `desc` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '漏洞描述',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`bug_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bug
-- ----------------------------
INSERT INTO `bug` VALUES ('0d9bf6f0a9df47828bde1c80abf3b6bf', 'SQL 注入攻击', 'SQL 注入攻击', '2019-07-15 11:16:00', 'admin', '2019-07-22 10:37:28', 'admin', '');
INSERT INTO `bug` VALUES ('244d47bfc8ee4da590b97dd7f8bccadf', '文件上传', '文件上传', '2019-07-15 14:51:46', 'admin', '2019-07-15 14:51:46', 'admin', '');
INSERT INTO `bug` VALUES ('703589a4f8e5458495ce0c51909b9ca4', '暴力破解', '暴力破解', '2019-07-15 14:51:31', 'admin', '2019-07-15 14:51:31', 'admin', '');
INSERT INTO `bug` VALUES ('8bc4bd521b0240d794843cd61aaf848f', '跨站脚本攻击（XSS）', '跨站脚本攻击（XSS）', '2019-07-15 11:22:45', 'admin', '2019-07-15 14:53:46', 'admin', '');
INSERT INTO `bug` VALUES ('8fbf57556139476ca702fb35c88789df', '权限漏洞', '权限漏洞', '2019-07-15 14:51:38', 'admin', '2019-07-15 14:51:38', 'admin', '');
INSERT INTO `bug` VALUES ('96af2f88505f4c98bfaceff48b9bcaf0', '远程代码执行', '远程代码执行', '2019-07-15 11:24:12', 'admin', '2019-07-15 11:35:51', 'admin', '');
INSERT INTO `bug` VALUES ('bd61a246e3f24a999ac68ac683a68d51', '拒绝服务攻击', '拒绝服务攻击', '2019-07-15 14:51:24', 'admin', '2019-07-15 14:51:24', 'admin', '');
INSERT INTO `bug` VALUES ('c035ad6eb29045138cfb17c5973f8782', '敏感信息泄露', '敏感信息泄露', '2019-07-15 11:16:16', 'admin', '2019-07-15 14:51:15', 'admin', '');
INSERT INTO `bug` VALUES ('c4aaa0e83a0c401091dc48849ad96874', '安全配置缺陷', '安全配置缺陷', '2019-07-15 14:46:52', 'admin', '2019-07-15 14:46:52', 'admin', '');
INSERT INTO `bug` VALUES ('c5ef3796336442f1a092d79fa804403a', '业务逻辑漏洞', '业务逻辑漏洞', '2019-07-15 14:50:58', 'admin', '2019-07-15 14:50:58', 'admin', '');
INSERT INTO `bug` VALUES ('cbcd8098f2954834ab8e1da8dd6aa4e8', '万能密码', '万能密码', '2019-07-15 11:16:08', 'admin', '2019-07-15 11:16:08', 'admin', '');

-- ----------------------------
-- Table structure for bug_level
-- ----------------------------
DROP TABLE IF EXISTS `bug_level`;
CREATE TABLE `bug_level`  (
  `bug_level_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '漏洞等级ID',
  `bug_level_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '漏洞等级名',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`bug_level_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bug_level
-- ----------------------------
INSERT INTO `bug_level` VALUES ('40f926fc43244a42a2640ac6e4690204', '告警', '2019-07-15 11:01:02', 'admin', '2019-07-15 11:01:02', 'admin', '');
INSERT INTO `bug_level` VALUES ('41faa33d223f44518f71d86c08471058', '中危', '2019-07-15 11:00:32', 'admin', '2019-07-15 11:00:32', 'admin', '');
INSERT INTO `bug_level` VALUES ('6f8324798422445c975a30c655062fdb', '低危', '2019-07-15 11:00:39', 'admin', '2019-07-15 11:00:39', 'admin', '');
INSERT INTO `bug_level` VALUES ('8be8eebae82b4697800ff8ab3cdfd769', '高危', '2019-07-15 11:00:26', 'admin', '2019-07-15 11:00:26', 'admin', '');
INSERT INTO `bug_level` VALUES ('cf7ad4c44f4e495f855c00b0da76e7ee', '严重', '2019-07-15 11:00:05', 'admin', '2019-07-15 11:00:05', 'admin', '');

-- ----------------------------
-- Table structure for code_info
-- ----------------------------
DROP TABLE IF EXISTS `code_info`;
CREATE TABLE `code_info`  (
  `code_info_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '代码信息ID',
  `code_type_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '代码类型ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '代码名',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '代码值',
  `sort` int(255) NULL DEFAULT 0 COMMENT '排序',
  PRIMARY KEY (`code_info_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of code_info
-- ----------------------------
INSERT INTO `code_info` VALUES ('0740a372ec034541a781d9d6b31ab603', 'taskStatus', '已取消', '4', 4);
INSERT INTO `code_info` VALUES ('122a3157be9c4bf1aa615bf3e0073d8c', 'status', '异常', '1', 0);
INSERT INTO `code_info` VALUES ('5d9b589fab8b470dab1db138a72f893d', 'scanResult', '存在漏洞', '1', 1);
INSERT INTO `code_info` VALUES ('729f74e313c340dbb30abb21ce92b66f', 'taskStatus', '未处理', '1', 1);
INSERT INTO `code_info` VALUES ('76d297c2b8b84f85b0e8954175185e7e', 'yesOrNo', '否', '0', 1);
INSERT INTO `code_info` VALUES ('7df15e920b5f46369bb2c7c34337a897', 'scanResult', '通过检查', '2', 0);
INSERT INTO `code_info` VALUES ('7e6a6ef282a642238863f6d3d173fe6f', 'scanResult', '未检查', '0', 0);
INSERT INTO `code_info` VALUES ('831d632e5e134da9ba923b496407f04b', 'status', '正常', '0', 0);
INSERT INTO `code_info` VALUES ('90e3138704fd47778669ba91484ac17f', 'yesOrNo', '是', '1', 0);
INSERT INTO `code_info` VALUES ('d405a9ed80804921ab0834cddd5cfb6c', 'taskStatus', '已终止', '5', 0);
INSERT INTO `code_info` VALUES ('d5a90610203442b7bf9658c540d7def1', 'taskStatus', '正在处理', '2', 2);
INSERT INTO `code_info` VALUES ('f09e432ecdfc4cb19383259e3f84e6ea', 'taskStatus', '已处理', '3', 3);

-- ----------------------------
-- Table structure for code_type
-- ----------------------------
DROP TABLE IF EXISTS `code_type`;
CREATE TABLE `code_type`  (
  `code_type_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '代码类型ID',
  `code_type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '代码类型名',
  PRIMARY KEY (`code_type_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of code_type
-- ----------------------------
INSERT INTO `code_type` VALUES ('scanResult', '扫描结果');
INSERT INTO `code_type` VALUES ('scanTaskAttrName', '扫描任务属性名');
INSERT INTO `code_type` VALUES ('status', '状态');
INSERT INTO `code_type` VALUES ('taskStatus', '任务状态');
INSERT INTO `code_type` VALUES ('test', '测试');
INSERT INTO `code_type` VALUES ('yesOrNo', '是否');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `config_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置ID',
  `config_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置名',
  `config_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置值',
  `sort_no` int(11) NULL DEFAULT 0 COMMENT '排序',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('0c70082badd34d5da921c3160040ff94', 'version', 'v1.0', 0, '2020-05-30 21:04:26', '系统版本');
INSERT INTO `config` VALUES ('1', 'systemName', 'LANB WVS', 0, '2018-08-28 17:18:58', '系统名称');
INSERT INTO `config` VALUES ('2', 'uploadPath', '/upload', 0, '2018-10-18 11:48:49', '上传文件路径');
INSERT INTO `config` VALUES ('498be74012864a1e97dc79c472d8f650', 'dev:reportTemplateUploadDir', 'd:\\\\', 0, '2020-03-15 18:25:57', '开发环境:报告模板上传目录');
INSERT INTO `config` VALUES ('68bb8d522e2a4f499c2a32878dbbaa20', 'createrBasePackageName', 'com.colodoo.manager', 0, '2020-03-15 18:17:14', '代码生成器基础包名');
INSERT INTO `config` VALUES ('a1054eb4f70e481094508816e52b20ef', 'uat:reportTemplateUploadDir', 'd:\\\\', 0, '2020-03-15 18:29:57', '准生产环境:报告模板上传目录');

-- ----------------------------
-- Table structure for demo
-- ----------------------------
DROP TABLE IF EXISTS `demo`;
CREATE TABLE `demo`  (
  `demo_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '例子ID',
  `demo_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '例子名',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`demo_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of demo
-- ----------------------------
INSERT INTO `demo` VALUES ('1', '1', '2018-08-12 23:54:03');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `log_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日志ID',
  `log_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志类型',
  `log_source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志来源',
  `log_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志内容',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('0165673d35b74a2fb272a386f5722cb2', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-20 23:15:22');
INSERT INTO `log` VALUES ('01787b164d1c4ef29487b3aac87ffc91', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('01d74ddff4d64e39a9a39ee3d002c793', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 19:33:50');
INSERT INTO `log` VALUES ('028cfcdbe5554cf7b44984bd40ef9760', 'LOGIN_SUCCESS', '192.168.99.1', '管理员 登陆成功', '2020-06-03 15:02:49');
INSERT INTO `log` VALUES ('05ab9e4e2b7040da993abcd11d0fbd8f', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-31 23:40:54');
INSERT INTO `log` VALUES ('062e3ca770eb472d852eb38bdb5f4a86', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-01 01:07:47');
INSERT INTO `log` VALUES ('06fc69a6999c4946bbab1bf7e2acca7b', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-30 21:03:45');
INSERT INTO `log` VALUES ('0743a012b58546cf8a47f6eadb3565a3', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-28 11:36:20');
INSERT INTO `log` VALUES ('07c6ea4bd82743adb30072e56270f53a', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-04 21:58:15');
INSERT INTO `log` VALUES ('0829e0c5bab14980a454cce322cfea71', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-12-19 22:29:52');
INSERT INTO `log` VALUES ('084bd5933862460889fe1daef1838cef', 'LOGIN_SUCCESS', '127.0.0.1', '纸伞 登陆成功', '2019-10-11 23:24:42');
INSERT INTO `log` VALUES ('08649d1669fc409a9d607a42f35fa4c8', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 00:26:19');
INSERT INTO `log` VALUES ('089b9c7c15124900aa57594612bf5de5', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-31 21:33:36');
INSERT INTO `log` VALUES ('08b64b0f01364cf8bc57c6c151769699', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-10 15:31:29');
INSERT INTO `log` VALUES ('0921faf9a3814ff19d0fcc3538b664f4', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-23 22:16:23');
INSERT INTO `log` VALUES ('0989d7ad66ce4d42b84b4daae870d4db', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-05-12 19:56:24');
INSERT INTO `log` VALUES ('09ec1671806b4533b54f806806cc03df', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-06 15:19:34');
INSERT INTO `log` VALUES ('0afc8be448634048916dfe61d5cd31fe', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 10:28:57');
INSERT INTO `log` VALUES ('0b63b0ccc6f34300a24a623527f3dcbe', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('0ced7d2bed7442d88b4adff4dc6c6efc', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2019-07-01 20:22:37');
INSERT INTO `log` VALUES ('0d078045397d4638a8e73e4b0c55a0b8', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2020-03-22 20:54:03');
INSERT INTO `log` VALUES ('0db3053dc1ef4bdd97819fe0437e696d', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-14 18:42:02');
INSERT INTO `log` VALUES ('0e0fd75d5fa64cab946167fd40e0365b', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-06-15 11:25:55');
INSERT INTO `log` VALUES ('0e22150bf78d4e7b8e0f1c0ce64fb20e', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 15:50:34');
INSERT INTO `log` VALUES ('0f2056e961ea461facd992199702241a', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 20:54:28');
INSERT INTO `log` VALUES ('0f39d272a0bf40a49d82d991ae359327', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('0fddfdcfe58f45c692e3b9f0cfa0bc38', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-19 19:14:13');
INSERT INTO `log` VALUES ('1072f89fcc3e41058458ed73def2acfd', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-20 12:01:32');
INSERT INTO `log` VALUES ('1089e0b62cb5428ebee4d2549a250ff3', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-05-19 12:37:58');
INSERT INTO `log` VALUES ('11790607b7a241c8964e19b220effe2c', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('11d217f6a7ef492c8408d2d0773272ab', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('121b31e214ec49c3bd93f983312f5fc5', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-28 17:11:33');
INSERT INTO `log` VALUES ('12b09ec02de34586ada192c628d0536e', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-14 12:45:32');
INSERT INTO `log` VALUES ('12f38b9b631e453685c321d103231c13', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-12 14:56:41');
INSERT INTO `log` VALUES ('130badb2e2014e2e8aa2a6fa634a679f', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-11 22:16:54');
INSERT INTO `log` VALUES ('139bed9b624e4b9f9cbab18e292051c5', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('1424ac9ba3a64d489f3445ce187a2990', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2020-03-23 22:22:23');
INSERT INTO `log` VALUES ('149a6b26fa3240c38e597b6e08a94a4b', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-30 01:02:31');
INSERT INTO `log` VALUES ('14a027de51a840c59442bb1ebc5ca3be', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-13 21:02:20');
INSERT INTO `log` VALUES ('14d83ec62d7c433c9c63ed650bad8480', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-30 15:06:54');
INSERT INTO `log` VALUES ('15349137899146a9971388e40a3a0d16', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 19:24:18');
INSERT INTO `log` VALUES ('1549f9e305af4a2db60759b0e77d1e58', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-11 22:17:20');
INSERT INTO `log` VALUES ('155b63f853834346a08dedcb01a08cd1', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 19:27:49');
INSERT INTO `log` VALUES ('1585a11020ff411cb24ba58fc8c21ac9', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-09 10:21:17');
INSERT INTO `log` VALUES ('159870d863d7448eb08fb1893ee3d987', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 00:40:49');
INSERT INTO `log` VALUES ('161d3958d7ad4527a0e68a23ff560fa5', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 19:57:46');
INSERT INTO `log` VALUES ('1667b755217f4e3083d37aebdbf55717', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-11 22:58:14');
INSERT INTO `log` VALUES ('1787c3b003254461aaf34af79059c704', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-21 19:01:41');
INSERT INTO `log` VALUES ('1846115309ae4d9dba55de6084d28779', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('188d5144d5bf42bfb74284d847468910', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-05-25 14:19:42');
INSERT INTO `log` VALUES ('18edf5c9588245cf8e632a23f58ac860', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-05-01 19:02:40');
INSERT INTO `log` VALUES ('1943bd3308f542ee809ea23e0f45d024', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 10:20:30');
INSERT INTO `log` VALUES ('1953719fee7f4d48939cd069d60ae60d', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-13 10:06:16');
INSERT INTO `log` VALUES ('1aacb3e629fd475eaf95bbfa75e20e2b', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 00:09:25');
INSERT INTO `log` VALUES ('1ab435eccc8046aa9b3e5a1940a74361', 'LOGIN_FAILD', '0:0:0:0:0:0:0:1', 'admin 登录失败', '2020-02-26 22:41:05');
INSERT INTO `log` VALUES ('1b401580030c4761b09f0338873a294c', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2019-09-04 22:55:45');
INSERT INTO `log` VALUES ('1c66b5fcb86c44d89fd9313c5aa993e1', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-29 23:17:26');
INSERT INTO `log` VALUES ('1c982f7944fa48cf8f991e8d3a6267f1', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('1cbe6eeecd0a49bcb9630a0a4f8b6683', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-19 22:13:37');
INSERT INTO `log` VALUES ('1d28ddd27c9e457a9482e30a9a12949a', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-02-22 20:36:37');
INSERT INTO `log` VALUES ('1d2d80cd6e8642c58c5fe74ef42d2268', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('1e07424642a648c4ac541906777870c9', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-17 21:39:22');
INSERT INTO `log` VALUES ('1e8d319ec49e4cd2b690f856a9670d50', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('1f3bb56737cd41c394daceda0a8679b3', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-11 22:16:30');
INSERT INTO `log` VALUES ('1f533e47c2ac409291e561c25113a2c9', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-26 00:23:27');
INSERT INTO `log` VALUES ('1fa2bb205d574a99b833358325459b47', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-02-25 22:34:11');
INSERT INTO `log` VALUES ('1fedbe8a4ccc4e939186fdd405e45f22', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('1ff331dc8fb648faa56e8cc1af65adda', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2019-08-30 09:00:29');
INSERT INTO `log` VALUES ('201681a618dd4f8baa976fbd9af2bf35', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2019-09-05 09:12:23');
INSERT INTO `log` VALUES ('204b099de3ec429bb95ca283d8495444', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2019-08-29 21:53:11');
INSERT INTO `log` VALUES ('2059f009e1884ccc8523c9404c9f400d', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-10-14 20:28:27');
INSERT INTO `log` VALUES ('207cb144d2bc4013bff7d9e93bf9eea0', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-04-26 19:55:25');
INSERT INTO `log` VALUES ('209526a41fb34e0badb43ec7586a9a97', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('20d074f3729b4d069261e54db13f34de', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2019-09-14 16:01:48');
INSERT INTO `log` VALUES ('20dc1902c5124bedadbbed178e7595ff', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-02-20 22:47:07');
INSERT INTO `log` VALUES ('2102613943d2404883a86b3272f0cc5e', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-30 17:29:37');
INSERT INTO `log` VALUES ('224b7c32079845beb4c6beae642e7f82', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-29 23:17:05');
INSERT INTO `log` VALUES ('238dc0da9965480db5c5bfdb5bd76d8e', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('2405e9317b2a4736ba7cee6cc5730fda', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('245fbf3251614d70b25887dc244ae142', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', NULL);
INSERT INTO `log` VALUES ('24beb8ec3ab345aa9ec5e23abb39278d', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 00:20:22');
INSERT INTO `log` VALUES ('260f85ec939945e3a55d35814287de84', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-19 22:08:13');
INSERT INTO `log` VALUES ('262acca1c9e74bebbe964fea5f5406c1', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 19:24:00');
INSERT INTO `log` VALUES ('2714683eeb664703a1478eebc70105cd', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-16 23:23:54');
INSERT INTO `log` VALUES ('271f238ffbd846a581c0ced66eb8535b', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2020-05-31 21:33:34');
INSERT INTO `log` VALUES ('27d38048e1b742a183ff83e75babc126', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2019-09-20 11:43:56');
INSERT INTO `log` VALUES ('28dadba51ee14b2896cdc9274e6e5853', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2020-05-31 20:34:36');
INSERT INTO `log` VALUES ('28fd07d36f99489bb6a1247047b5473f', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-31 13:05:53');
INSERT INTO `log` VALUES ('290fa4d6bdb04ac88d629462aec40ede', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-05-19 10:41:31');
INSERT INTO `log` VALUES ('2931cd75112c4f3aba30db7fbaa50eb4', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-15 01:31:23');
INSERT INTO `log` VALUES ('2a704a97ea0d466b8117b1ac14a60408', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-11 21:49:27');
INSERT INTO `log` VALUES ('2b719af3c6a54e59bfcdfc3477b4754e', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 17:15:26');
INSERT INTO `log` VALUES ('2b77be4c660f47eba30ff1cdb57ff4ee', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-29 01:45:43');
INSERT INTO `log` VALUES ('2b8beebd727d4405bf46fed2cd4e9255', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-12 14:56:05');
INSERT INTO `log` VALUES ('2d0c6700e74842e6891ceb5094b9d952', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2019-09-01 10:02:41');
INSERT INTO `log` VALUES ('2d36934d3d604fd89ee917463316bcb4', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 10:29:20');
INSERT INTO `log` VALUES ('2e20752566d346da99c9b50923189f55', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-05-19 23:59:59');
INSERT INTO `log` VALUES ('2e63d808f7064b3784bbd127028361ba', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 19:21:39');
INSERT INTO `log` VALUES ('2e81dbb5f43347b494c7304f409a648f', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-04-25 15:24:07');
INSERT INTO `log` VALUES ('30a97458efe543f48dfb19bd8d66c650', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2020-02-25 22:57:24');
INSERT INTO `log` VALUES ('30af80975250477693efa4e604a6c4c8', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-05-29 15:20:44');
INSERT INTO `log` VALUES ('31925959e9eb4b6995709a6d2cc2bbd6', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-16 21:47:47');
INSERT INTO `log` VALUES ('31ee5a74b27a4f019bc188452ce6c19d', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-01 17:05:19');
INSERT INTO `log` VALUES ('3227ff4ddb0643e7954af93e6988a5f4', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-10-13 20:28:09');
INSERT INTO `log` VALUES ('332a4a880c7140b6ba54a44e32ea0b54', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('3423e3cbe66e47ee997fd78f09874c3b', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('34b44600b4764d64979d9946d998d9ae', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-16 22:59:18');
INSERT INTO `log` VALUES ('34e6e7af154649d787bc741458b34e81', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-31 22:18:07');
INSERT INTO `log` VALUES ('350f019e902a414d9d944e27c62ed73f', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('357cf1299f314ee5a2376661cda37d4b', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 14:49:47');
INSERT INTO `log` VALUES ('3652e8f5e8964998a8e1587f21db57dd', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('365dd45d7d074344a20e313202f7f70d', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-30 14:41:55');
INSERT INTO `log` VALUES ('366fc1465bc4482392da9af89e39a129', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-04-26 08:51:03');
INSERT INTO `log` VALUES ('367e106f6ca243ee81c1d64c124b4053', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-06-15 20:38:00');
INSERT INTO `log` VALUES ('36f1a540665a4646b8404166aaece792', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 22:41:51');
INSERT INTO `log` VALUES ('375ad16ccf054a8cbc92faf95fd9024a', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-16 22:57:59');
INSERT INTO `log` VALUES ('37ce16a05bed4010b9d16de7b920c0cd', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 20:17:31');
INSERT INTO `log` VALUES ('37d7afe7228a42c1954a728a584a8f8f', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-06-04 22:34:06');
INSERT INTO `log` VALUES ('382bf546336148d0a98d3016ff00564d', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-12-19 22:37:21');
INSERT INTO `log` VALUES ('384dc80aa8b94512bc1cc02ca1201cef', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2020-03-29 13:50:55');
INSERT INTO `log` VALUES ('3872b586272d48c1942ebebb0a4e2091', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-06 10:25:10');
INSERT INTO `log` VALUES ('38a4a767aac34f1ea008d06b399f8849', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-05-25 14:13:32');
INSERT INTO `log` VALUES ('38e3408bef7c4a10b82571c86ba916a9', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-04 21:57:51');
INSERT INTO `log` VALUES ('3a3d8a3de66a4f75a19f7b2f3b961eb9', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2019-08-30 10:15:31');
INSERT INTO `log` VALUES ('3aa3303e439144e5896cac724b8f6336', 'LOGIN_FAILD', '127.0.0.1', 'aaa 登录失败', '2020-04-04 00:15:16');
INSERT INTO `log` VALUES ('3ae2d4bad5a44d8a8fc4bb98b850130d', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 21:24:47');
INSERT INTO `log` VALUES ('3b078fb124f64e04813cf2df19f40b29', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 20:49:50');
INSERT INTO `log` VALUES ('3c3cc9ffe66340f296f091c9b78ce935', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-14 16:00:19');
INSERT INTO `log` VALUES ('3d4690de5a214221933dae7d6b46b2e6', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-21 19:32:10');
INSERT INTO `log` VALUES ('3d77f54a5b904409accb0dcf4bee3e77', 'LOGIN_FAILD', '127.0.0.1', 'aaa 登录失败', '2020-04-04 00:15:19');
INSERT INTO `log` VALUES ('3de50ee5faf54c0f83a2aeb3214ce161', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-21 15:57:16');
INSERT INTO `log` VALUES ('3e3843fe50f843bca9dfc2a2d082f9f1', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-30 15:08:19');
INSERT INTO `log` VALUES ('3e42304ee3e843b09f20c1084245130d', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-05 21:29:22');
INSERT INTO `log` VALUES ('3e69ae7fdf114a39a48b6f2e290aace5', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2020-05-01 18:26:19');
INSERT INTO `log` VALUES ('3eff3664f191473facf4ad15e85f4e66', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('3fec3d7cba254792b09143572a945ac5', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('40e5d2b79e0246949b216e21ecc0708e', 'LOGIN_FAILD', '127.0.0.1', 'zhisan 登录失败', '2019-09-20 11:42:54');
INSERT INTO `log` VALUES ('411dbcef5d334788bb20fbb09310fada', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-02-21 23:21:36');
INSERT INTO `log` VALUES ('4158b47509604c49b284450ca9c8df76', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-10-11 20:14:48');
INSERT INTO `log` VALUES ('424f15cc029e4b8588af4d49e22dbfcf', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-05 17:24:23');
INSERT INTO `log` VALUES ('42dc1da1558f4fcbaf89b5c6eb0ee635', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-06 21:15:15');
INSERT INTO `log` VALUES ('43a1ed97a1634351ad8e2ca06e006ee7', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-31 18:16:58');
INSERT INTO `log` VALUES ('43baa1fb05294ac185063da6da581286', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('447e1e7316c6496ba19f557c56435880', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-05 21:17:33');
INSERT INTO `log` VALUES ('458863a2a2ef4349a46d869fc1b1ae54', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2020-03-17 00:29:03');
INSERT INTO `log` VALUES ('45d11d20cbbc45928b863d801a110b78', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('467f2ade3ace4f9b9475bc29231a53b7', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-22 21:49:17');
INSERT INTO `log` VALUES ('46d3f1078f6144608c4c8c6c76118cb6', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-14 17:53:21');
INSERT INTO `log` VALUES ('46dd492638374268b7c438c3a716bb55', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2019-09-05 21:28:29');
INSERT INTO `log` VALUES ('47041722a7c349519f7808b3fdc8280e', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-20 14:45:24');
INSERT INTO `log` VALUES ('472779cfa57d4c5cb6c8fafa0c67ebcd', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-11 10:47:52');
INSERT INTO `log` VALUES ('47a5cd653a924f1b956245326d2b13c0', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('4803de49c5b5408c9fb0e1b26879394f', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('4803e98816f945a9aa8e407a8a9ebe74', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-31 13:49:36');
INSERT INTO `log` VALUES ('48166864d3df4d00ae9d1eecd7d26080', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-08 14:36:23');
INSERT INTO `log` VALUES ('496928a922014004b118484fa008c0b7', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-28 22:40:08');
INSERT INTO `log` VALUES ('49c387b3d8f74068a7976fdc900da6a3', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('49d7793c9d7d4e4abdd5c100f0a3c1ce', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 21:26:22');
INSERT INTO `log` VALUES ('4a58e3c0b02543d89aba9ac9a70b101d', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2020-03-29 21:26:00');
INSERT INTO `log` VALUES ('4a63c770faa042fbb6cba193b4175a67', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 10:20:14');
INSERT INTO `log` VALUES ('4b21fe55fc1a4fd4870b67efddec301c', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-30 17:26:49');
INSERT INTO `log` VALUES ('4c535131957049f69293e88eacebf940', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2020-03-29 14:36:02');
INSERT INTO `log` VALUES ('4d4c9cf125074b8a8a262f6194b56350', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('4e36257843794b029108caedf2ad645f', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 09:23:33');
INSERT INTO `log` VALUES ('4e45e9c08d0e44669eaf129319f8dc6f', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-05-16 23:49:57');
INSERT INTO `log` VALUES ('4e9c099c1ba249759f51e27f41685f90', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-15 17:36:27');
INSERT INTO `log` VALUES ('4eb72a6203c942e1b9cf641f9329fb67', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-15 16:44:26');
INSERT INTO `log` VALUES ('4fa5e07ec2e34aef95af97ab1895f3c0', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 20:13:21');
INSERT INTO `log` VALUES ('505b0c38105545dabd18e5145e5822a2', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-11 23:03:35');
INSERT INTO `log` VALUES ('50c72e362bf740a0968532dc2dceec52', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-30 23:22:16');
INSERT INTO `log` VALUES ('50cab118e7bc43bcbfd011199de3f41e', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-06 12:14:37');
INSERT INTO `log` VALUES ('50d3a398099c464da8530eae9cd60b12', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 20:49:07');
INSERT INTO `log` VALUES ('51272a02d1004c7ab243c9c7d1f81668', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-05 22:22:54');
INSERT INTO `log` VALUES ('517799c6fc074eb4806d83b1af89dded', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-02-20 22:11:45');
INSERT INTO `log` VALUES ('51c72e3f886440b0919cb7f7dff447e9', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-25 22:15:35');
INSERT INTO `log` VALUES ('52040d971af9434dabc96c92ec53e970', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-19 23:18:58');
INSERT INTO `log` VALUES ('5216ff2328e94625809737f4a445c51a', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-15 22:50:14');
INSERT INTO `log` VALUES ('521c5b2d0ef442ad824e0f734f84b1fc', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('526f7891f7c84f3a8a7a2cb2b66bcd11', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-23 22:17:28');
INSERT INTO `log` VALUES ('533a975c11d84b0ea0c4817199715b1f', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-10-11 23:03:05');
INSERT INTO `log` VALUES ('534c50f6083748d79369f922168b9387', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-22 18:06:39');
INSERT INTO `log` VALUES ('53df9e0a8d654c36aa7fd9dd4902ff05', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-30 00:49:49');
INSERT INTO `log` VALUES ('5505bc241e5540ccb5d52a25a4530051', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-25 00:05:30');
INSERT INTO `log` VALUES ('552327784886433aa470395164c4a7f6', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-11 23:07:01');
INSERT INTO `log` VALUES ('55a74d1c63b347f6a3bda8d294488a12', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2020-04-04 21:28:40');
INSERT INTO `log` VALUES ('56461cc53d2f4b89b4385160542beb42', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 00:15:27');
INSERT INTO `log` VALUES ('566c578c40c84093b319a49f656bbc7a', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 23:12:06');
INSERT INTO `log` VALUES ('5677e3f17d884e7589557d7841dbb303', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-14 17:13:13');
INSERT INTO `log` VALUES ('569485e1294e41e0a143ddc97c216fd8', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('56e8d0b5322f48b49fdde4ce63232541', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-30 20:37:41');
INSERT INTO `log` VALUES ('570febab091b4c3eacff950309597983', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('572c83eb0dce4757be14a99d9c7e2c84', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('5744876110964581a884316de06832bb', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('576f76bff07b4f48901610791b1b773c', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-19 15:55:29');
INSERT INTO `log` VALUES ('57b792c3786943f08e02aca2cb19c5fd', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-06-16 00:23:33');
INSERT INTO `log` VALUES ('582f0696086a4692b6a5bccbe5295c77', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-05-25 18:43:45');
INSERT INTO `log` VALUES ('5860c81a7aaa49dd91133fd5348fb52d', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('586dc936a83b4c01a6907bb24c8f00a4', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 19:23:32');
INSERT INTO `log` VALUES ('587af72275d74e07a6650309c1c12494', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 00:22:45');
INSERT INTO `log` VALUES ('5887ff3fdacd44eb92c278cab069b78e', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-04 22:52:06');
INSERT INTO `log` VALUES ('58e59bdf550c4856a0ebd842cfff4bc9', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2019-09-21 15:56:58');
INSERT INTO `log` VALUES ('5a1d8e83fc7a4b26aaac6fac3c58445b', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-12-20 23:06:36');
INSERT INTO `log` VALUES ('5a2aed6f8f5442c5bc719086f0158db0', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 09:37:31');
INSERT INTO `log` VALUES ('5a379a7a959f478792f8266b6513ee8e', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('5a581dfaa9bd4d7d949536b23d3dd539', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-01 18:26:32');
INSERT INTO `log` VALUES ('5aab9235cc5d45a8bbc0cf69c168e6ef', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 20:20:32');
INSERT INTO `log` VALUES ('5ab865b345544f92b16fce0073a410c8', 'LOGIN_FAILD', '0:0:0:0:0:0:0:1', 'admin 登录失败', '2020-02-26 22:38:50');
INSERT INTO `log` VALUES ('5ad02a04d0c64368a8899fbf5116fb6c', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 10:38:51');
INSERT INTO `log` VALUES ('5b1d971ad46f47218e53b219a19a74ff', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-19 15:45:33');
INSERT INTO `log` VALUES ('5b36cb0a1781407aa2a57b592564aba2', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-16 22:03:24');
INSERT INTO `log` VALUES ('5b591dd463a24da9b9f88d815d078f58', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-29 13:50:47');
INSERT INTO `log` VALUES ('5c1627563f504e4d8d94e31b16887bc8', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-20 08:52:06');
INSERT INTO `log` VALUES ('5c843b460c1d453cb27c1511e532d5fd', 'LOGIN_SUCCESS', '0:0:0:0:0:0:0:1', '管理员 登陆成功', '2020-02-27 22:24:59');
INSERT INTO `log` VALUES ('5c8d9b53ce70403398a73967833a90c9', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 16:44:17');
INSERT INTO `log` VALUES ('5cc0bb43fe6f457b98a48915aa254556', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-18 22:36:53');
INSERT INTO `log` VALUES ('5d25247fde684b77a634bccf52b4b60c', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('5dba3cd8898e4e24a1eaad4bf00d9816', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-29 14:30:05');
INSERT INTO `log` VALUES ('5e33e638f74e45839a101c6ab37320ce', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('5f1086b9ae8745bba3e718b9bf601d57', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2019-09-01 21:44:55');
INSERT INTO `log` VALUES ('5f229d7bc2de468d961693dee47b4b71', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-04-27 22:01:51');
INSERT INTO `log` VALUES ('5fecbe39eb6b4ca5848daf8d021c2bfe', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 17:45:48');
INSERT INTO `log` VALUES ('600458ab101e4f07b47c95d494d38e00', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('60177de7fb3e45fbad159fa4f1d0ba43', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 00:27:09');
INSERT INTO `log` VALUES ('605073e643c144389f6cd2216c09bc48', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('60938722db794f578a4e8337cca1767a', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-29 23:16:25');
INSERT INTO `log` VALUES ('61a11e9f4b0544dcbed99d6fe3235fef', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-29 14:46:41');
INSERT INTO `log` VALUES ('61b404fd24754831a8b9ecd464b5c96d', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('61e57d1716cb46bea1cdf408f8a69cea', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-08 22:34:59');
INSERT INTO `log` VALUES ('620351682c0b4276a2a2b164d28532e9', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2020-03-21 14:27:16');
INSERT INTO `log` VALUES ('62f99b9a6fd7483e96c36cba4ac9e9e3', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-30 14:42:25');
INSERT INTO `log` VALUES ('63b1c0fdd77741edb897cea30f5d6a35', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-06-04 21:09:35');
INSERT INTO `log` VALUES ('6424f5e6f2974755999bb63642048396', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-18 20:29:32');
INSERT INTO `log` VALUES ('6450ca48859044aeac672fe79a55e289', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-15 19:58:38');
INSERT INTO `log` VALUES ('6496a6d7120b42ef94817fe741aa85d7', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-04 22:42:28');
INSERT INTO `log` VALUES ('64a90289a3b548d98f1b572a6bb1036a', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-22 23:04:46');
INSERT INTO `log` VALUES ('64be3d5cb26b4e9593640d64b911d1ee', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-17 23:00:18');
INSERT INTO `log` VALUES ('65197564dff74870a94573fce38c180b', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-10 14:40:19');
INSERT INTO `log` VALUES ('65556d9f08a543fa8f90dd9a5862b5e0', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('6583bed82b564ad68da1667d5322088a', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-30 18:31:12');
INSERT INTO `log` VALUES ('662baf15715641d997cd456108254c2a', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-22 17:37:17');
INSERT INTO `log` VALUES ('66875ea082454088bf74b988424c10f8', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-10-15 00:07:25');
INSERT INTO `log` VALUES ('67510a8bf9ad4d5288d75e5c87031a31', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('67911c8cbb124d70993c3712601d0be1', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-06 15:17:46');
INSERT INTO `log` VALUES ('67d5b4a98dc04387a65a6a266de58547', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 00:12:02');
INSERT INTO `log` VALUES ('6810cd2a1dc64073a9c7c48b334db617', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2020-03-16 22:57:10');
INSERT INTO `log` VALUES ('69f00de73cc24b29805d0be67e541a40', 'LOGIN_FAILD', '127.0.0.1', 'null 登录失败', '2019-09-06 15:19:05');
INSERT INTO `log` VALUES ('6a85606f14f743819e1dbade35559fc4', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('6b36f3ac71a04ddcbf015c7e3d5fc67b', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-31 12:31:27');
INSERT INTO `log` VALUES ('6b3c9772db894bc89b332e7a5fe4a468', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-05-01 23:37:22');
INSERT INTO `log` VALUES ('6b4e44ee59d24409884bb182c4a1a605', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 19:36:08');
INSERT INTO `log` VALUES ('6bd0957051064c2faef6ec3a46b6926f', 'LOGIN_FAILD', '127.0.0.1', 'guest 登录失败', '2019-09-20 11:43:21');
INSERT INTO `log` VALUES ('6bf047a9f66040019d434b58aa15a0e7', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-22 15:26:42');
INSERT INTO `log` VALUES ('6cb46b99a1334a7197b61b62823f0b96', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-16 23:26:35');
INSERT INTO `log` VALUES ('6cd5b72f585d47edba72508b86b529f9', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-31 00:19:55');
INSERT INTO `log` VALUES ('6cef9fd06cdf41b6a8777ba31167b264', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2019-09-20 11:43:49');
INSERT INTO `log` VALUES ('6cff9cd7132a4783948917957b6fd583', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-20 14:43:36');
INSERT INTO `log` VALUES ('6d6c890de9574a779981621153a0e3f5', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-16 22:59:50');
INSERT INTO `log` VALUES ('6d8570a6177d4afaa891ecfbb1579691', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-10 21:30:24');
INSERT INTO `log` VALUES ('6e130f0b655246db930e846985eab08b', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('6f6788dd84f64e09a2a3cb31f42a1f63', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('6f9b75b0d4ad48108c9282485a1fb857', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-21 00:18:11');
INSERT INTO `log` VALUES ('6fb8875c217b46239d5324791b5f9c08', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('703e88f3be78443a8cb9dd11688932e2', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-29 21:26:04');
INSERT INTO `log` VALUES ('707859531fab46aaa6d7adced79dddff', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 17:39:07');
INSERT INTO `log` VALUES ('70951f8de6d64751b24380ee69b883cb', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 19:30:00');
INSERT INTO `log` VALUES ('70c35887e9ff410ba1f05bb33b6079f9', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('712b8660860449a9a26eaf7fbd3a6925', 'LOGIN_FAILD', '127.0.0.1', 'zhisan 登录失败', '2019-09-20 11:43:06');
INSERT INTO `log` VALUES ('71536100a04c4d938bcc7c4084e4f321', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-22 17:41:15');
INSERT INTO `log` VALUES ('71fca0588c174db0bbb083cca0b7f5ea', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 10:28:27');
INSERT INTO `log` VALUES ('720ada643efa4e3199b5b268f68112ff', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-18 21:32:29');
INSERT INTO `log` VALUES ('72188d6beaf347f59923ed99ad685b08', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('7229b0f9a4a04c6687fe9c9ab0241bf7', 'LOGIN_FAILD', '127.0.0.1', 'zhisan 登录失败', '2019-10-11 23:24:03');
INSERT INTO `log` VALUES ('7255b0d3b19148dbb51b9177a130fcc3', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('7276648c37314de4954aaba51540e40d', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2020-04-04 00:54:56');
INSERT INTO `log` VALUES ('72c275fae582432fb6e5b1f2b3400b70', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-22 23:12:27');
INSERT INTO `log` VALUES ('72f58df4c7a844bfa8a46a294c037672', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2020-03-23 22:14:23');
INSERT INTO `log` VALUES ('73885f21b7884bb3bca5d2606942942f', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-02-25 22:57:36');
INSERT INTO `log` VALUES ('7390a5c6ca2f4c8c9ebe6d4db6262b55', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-25 00:18:21');
INSERT INTO `log` VALUES ('73c4a779dcc6423ba186a272e76d0191', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 21:28:43');
INSERT INTO `log` VALUES ('73d8d41780db47728bd59d3631e60242', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-06-15 21:35:17');
INSERT INTO `log` VALUES ('73e809361375403e98f76cb759708ffb', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('73ef88bab79641f2a8a3b9e9adb16bdb', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-06-15 11:23:20');
INSERT INTO `log` VALUES ('7426b5a0bd15491a891266df4be3854d', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 00:27:41');
INSERT INTO `log` VALUES ('742abdad854b4aefa92fbbc5c9202b11', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-02-24 21:43:17');
INSERT INTO `log` VALUES ('742e7b894fe741c697ef9bf7f4909d8c', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('7452a6a3f7ce47f58d02e9da0f333dce', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-11 12:01:20');
INSERT INTO `log` VALUES ('75271099f2f043c185ab267d15710c95', 'LOGIN_FAILD', '0:0:0:0:0:0:0:1', 'admin 登录失败', '2020-02-26 22:41:36');
INSERT INTO `log` VALUES ('75d28f146a0a44328c98ae60909bf1e9', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-07 23:02:35');
INSERT INTO `log` VALUES ('76152ca1ca8c4f3f812cbb652a890500', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-05-01 18:45:23');
INSERT INTO `log` VALUES ('761cf0673c904951ba5e7787cb24dc99', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 19:10:40');
INSERT INTO `log` VALUES ('76621134367c45379ad89394b4567abc', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-30 21:03:30');
INSERT INTO `log` VALUES ('766f307d5276442590057b5a6cbabaf7', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 20:03:46');
INSERT INTO `log` VALUES ('77216f685c214f5ba8f05ed4a6f0a7c2', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-22 20:54:14');
INSERT INTO `log` VALUES ('777fe70ae6e3428bb6c78def6d1fe926', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('778c8bd48e6245db927dae30ec64e5d9', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2020-03-22 23:03:21');
INSERT INTO `log` VALUES ('77c05115e0bd4c5696a72a2f55e34fe5', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-05-01 20:05:28');
INSERT INTO `log` VALUES ('785453ecf62b4de5a24c82fafcc5bea2', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('78933239749d4b0aaf9c1d3aa2c0d0fd', 'LOGIN_FAILD', '127.0.0.1', 'test 登录失败', '2020-05-31 21:15:26');
INSERT INTO `log` VALUES ('7919ab7afa3649d385f60ceee0c69931', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-18 21:52:08');
INSERT INTO `log` VALUES ('79969df0227440388af3e8431f96bed7', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-11 12:01:48');
INSERT INTO `log` VALUES ('79a7cfcf917f4ad5be0e3626edb230a9', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-29 23:02:42');
INSERT INTO `log` VALUES ('79fc3791278449e287b829346a741adf', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-25 22:09:29');
INSERT INTO `log` VALUES ('7a2ae505fb89482cbbde842f20d71341', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('7a9473bce55c40be9d28d04bca01e1f2', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-06-15 11:24:01');
INSERT INTO `log` VALUES ('7a94dfec59ae418b91a5f9392c141f59', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-06 17:45:55');
INSERT INTO `log` VALUES ('7b0f3e906b0a412887fac631635ea4d9', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2019-09-04 22:56:06');
INSERT INTO `log` VALUES ('7b402066bec84640a90269a11db1fd85', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2019-09-05 09:12:44');
INSERT INTO `log` VALUES ('7c3233b63fdb47d0aaacb5f82309959f', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('7c53459ac00143eabc4f50fd9f194f19', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-21 16:01:49');
INSERT INTO `log` VALUES ('7ca07661237f43b5bd3d051c5715b13d', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-06-15 01:20:40');
INSERT INTO `log` VALUES ('7d902225a3714087b73b16ecb43d9ca0', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-06-16 16:45:08');
INSERT INTO `log` VALUES ('7e0331fcec624ff3a460bd05cb19336c', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 10:39:51');
INSERT INTO `log` VALUES ('7fe19fc33a6e4962b93ff6de27d3a72d', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2019-08-31 11:17:34');
INSERT INTO `log` VALUES ('80aaba33f2b64fe0b4a09de79fccb2d6', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-15 13:39:05');
INSERT INTO `log` VALUES ('80b80196484f42789a7c4c0da4a607f0', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 20:07:32');
INSERT INTO `log` VALUES ('80cc083ac4a6407db74356a534e7e6ef', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-12 14:58:15');
INSERT INTO `log` VALUES ('81bd3b063c0e4e3e81cbc34479a84f33', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2020-05-30 19:44:53');
INSERT INTO `log` VALUES ('81ff71c3ecec44d883cb4ac6b66ff357', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2020-03-14 16:54:57');
INSERT INTO `log` VALUES ('826890fa54b14599b2e245a83664533d', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2019-09-08 14:36:13');
INSERT INTO `log` VALUES ('82f44b21bd5b465496b1239f9f6eb658', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-06-15 00:34:29');
INSERT INTO `log` VALUES ('8365315d43514f11a7deb3387fc266f8', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-06-16 11:38:07');
INSERT INTO `log` VALUES ('839edb4421504bca983377332298779b', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('83f3fbb022284755a863495d1ffd61f0', 'LOGIN_SUCCESS', '0:0:0:0:0:0:0:1', '管理员 登陆成功', '2020-02-26 22:39:32');
INSERT INTO `log` VALUES ('840e7498d3a745a680c68c84f3f9ea79', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-06-16 12:24:55');
INSERT INTO `log` VALUES ('842ee2732e27483d8397a1b557c41c89', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2020-03-22 17:37:29');
INSERT INTO `log` VALUES ('84bb495c587e467ca6e44936ce349d84', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-20 21:25:25');
INSERT INTO `log` VALUES ('85084873d21749e6b7f0d1cddae775cb', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 10:20:37');
INSERT INTO `log` VALUES ('8589fa6dd9a9452cbbb90e62dd90d393', 'LOGIN_FAILD', '127.0.0.1', 'null 登录失败', '2019-09-04 22:42:23');
INSERT INTO `log` VALUES ('859912dddddb460b8fbc428b6b7cea68', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('85ae95d84a944068b59c07fc42ab408f', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('85d4e58e6b77422b83910b5a25ffe337', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-10 20:58:24');
INSERT INTO `log` VALUES ('8613791f7de3468c99f1d7e05a83a4bd', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2020-04-29 23:18:30');
INSERT INTO `log` VALUES ('86275f3b301443b6ab18c652afce520a', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('873189281d7340a49327f3f8b594017a', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-16 21:58:39');
INSERT INTO `log` VALUES ('8749c1419ea34cd48f7776eaac829fdd', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-12 15:01:57');
INSERT INTO `log` VALUES ('87696b1003b34ac9a62a88c1c6919647', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-06-02 22:08:35');
INSERT INTO `log` VALUES ('87a9ad382f204faab1926d018c688f9f', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('8905748df5614daf88a706f9d312acc9', 'LOGIN_FAILD', '127.0.0.1', 'guest 登录失败', '2019-09-20 11:43:16');
INSERT INTO `log` VALUES ('89579b7ce0c84506979286017d54493f', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-14 16:01:55');
INSERT INTO `log` VALUES ('89dd3487a79a4dfe8f83784b15298828', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('89f16ae40c014541bb8d3e240c7bad99', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-12-14 20:35:12');
INSERT INTO `log` VALUES ('8ab80e51c6c041f8aaef4d3ecb2eef33', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-01 01:08:39');
INSERT INTO `log` VALUES ('8ad44dd202664af49c7a18fefd24b202', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2020-04-04 00:11:55');
INSERT INTO `log` VALUES ('8b4b49e2de114cad993a10fede993bfe', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-10-11 23:24:47');
INSERT INTO `log` VALUES ('8c378f53721349ae940c5d7d41b0c2b8', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-10-11 23:24:13');
INSERT INTO `log` VALUES ('8c8543940ebb4279ac77254679b1a918', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-02 00:11:26');
INSERT INTO `log` VALUES ('8d638c60ad6b46858df8c92a4a991d90', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-10 23:24:20');
INSERT INTO `log` VALUES ('8d69341335ee493487519d05c751556c', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-21 17:06:00');
INSERT INTO `log` VALUES ('8da46a66e9be41ea83f589037e6a7e10', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-12-14 20:33:32');
INSERT INTO `log` VALUES ('8de35caed5e84fdca7821388dd61354a', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-05-01 13:11:20');
INSERT INTO `log` VALUES ('8e8f2af25f69466799d54db4c2f89d2f', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-05-25 14:19:38');
INSERT INTO `log` VALUES ('8e988bd00f6a4e328a01da0b7269ff08', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-14 18:47:19');
INSERT INTO `log` VALUES ('8fafd1b4d352457c950b9662c6f14b1e', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2019-09-04 21:30:06');
INSERT INTO `log` VALUES ('9035825535da46d8977611d56cf48f37', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-28 11:36:12');
INSERT INTO `log` VALUES ('90606caa443349f5b71bcb57f21a7c99', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-14 17:52:21');
INSERT INTO `log` VALUES ('90aa66dbe773486baca5c97fd0ca83dd', 'LOGIN_SUCCESS', '0:0:0:0:0:0:0:1', '管理员 登陆成功', '2020-02-29 15:57:16');
INSERT INTO `log` VALUES ('90d073a5b88044c9b5076afd9211c25f', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-31 11:35:46');
INSERT INTO `log` VALUES ('90ef4788477240a5855dfa788ef604d8', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2019-09-06 15:15:23');
INSERT INTO `log` VALUES ('9206ee0682ef4a4ab000aa732444c566', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 21:27:31');
INSERT INTO `log` VALUES ('92319fd4839d41fc9535c61bcda9784c', 'LOGIN_FAILD', '127.0.0.1', 'aaa 登录失败', '2020-04-04 00:15:14');
INSERT INTO `log` VALUES ('92dba76feea24db7aa139cd1693e1fdc', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-04-27 14:17:32');
INSERT INTO `log` VALUES ('92f6bd4b8a5f4fdd8659c95d2fe33191', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-23 21:24:42');
INSERT INTO `log` VALUES ('931c37ab8dc0413493b59b4f1e22b7cc', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-06 15:31:57');
INSERT INTO `log` VALUES ('9437f4305804491795f525972645f1b9', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-28 18:32:20');
INSERT INTO `log` VALUES ('94e53e82081b49d9b486467af7f5bfd6', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-30 17:29:55');
INSERT INTO `log` VALUES ('94f3067820e543588a4949d877cd9c90', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-05 21:26:00');
INSERT INTO `log` VALUES ('9559529dd7ae427597f353efc6ad13bd', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-05 22:52:53');
INSERT INTO `log` VALUES ('9563052e4cd44220ae7cb0c688155cc3', 'LOGIN_FAILD', '127.0.0.1', 'zhisan 登录失败', '2019-10-11 23:24:08');
INSERT INTO `log` VALUES ('959d5a1445ff4f2ba153808419682019', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-02 10:14:10');
INSERT INTO `log` VALUES ('96825c552380440c92af938855204b14', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('9712628015c94c51a31dbbee1881ba05', 'LOGIN_FAILD', '127.0.0.1', 'aaa 登录失败', '2020-04-04 00:15:21');
INSERT INTO `log` VALUES ('9731e8c7de454b1993bc0fca4d0f8453', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-02-22 22:11:43');
INSERT INTO `log` VALUES ('9831bc388b3645728eb3f8acf2743a11', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-05-19 18:40:46');
INSERT INTO `log` VALUES ('9837e15d6e8a40a590c6b8553367908e', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('9840860afa2b4f71a0f292f3ce841e7c', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-11 21:46:20');
INSERT INTO `log` VALUES ('98967fdfdd994e7786d107966f5f802c', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-12 17:17:22');
INSERT INTO `log` VALUES ('98b1c0e88f3f4826be9b557db2c7ad7a', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-05-12 16:05:00');
INSERT INTO `log` VALUES ('9a09719a4a924127a289fae327fda069', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-29 22:10:12');
INSERT INTO `log` VALUES ('9a523909bb90404f8b2e88a343a002cc', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-18 17:07:21');
INSERT INTO `log` VALUES ('9a6311368f9a4279b25e68cb8a8432d8', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 19:22:09');
INSERT INTO `log` VALUES ('9a6d7bb3ae4842c2b7a526984155c6f1', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 21:25:21');
INSERT INTO `log` VALUES ('9aac4b37d6fd4e0abf4b6ab14c98f00f', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-06 15:19:23');
INSERT INTO `log` VALUES ('9c0a67d4a7774505a302f1da2b221641', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('9c212cfa0c0f4a47b0105965be740962', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 20:22:41');
INSERT INTO `log` VALUES ('9c4039cf2e3748ac85118112c49016c1', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-24 20:41:08');
INSERT INTO `log` VALUES ('9c9fdac7e387435c83d30c0c96f3e17d', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-23 22:22:50');
INSERT INTO `log` VALUES ('9e510726fb3b42c5ab6ad2024497a3a7', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2019-09-11 22:58:07');
INSERT INTO `log` VALUES ('9f04962f0deb405b99987e91f8295eaa', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-28 12:20:13');
INSERT INTO `log` VALUES ('9f145a9a9bc34629bc735fa91465dc3c', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('a0a61a211a524d008c7b8e170925d906', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('a0e9284ac3724c4fb6ba1978f9104377', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-21 15:25:06');
INSERT INTO `log` VALUES ('a0edadab10064a8b939baae92e6f2d8a', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 20:42:29');
INSERT INTO `log` VALUES ('a2fafc5752494c83b7db6e21bd0f6a99', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('a37cfbc9db754e3bb1788eccd8989654', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('a3b3bfe5ff774595a9eb3105fe86e410', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 10:26:18');
INSERT INTO `log` VALUES ('a3f82e7cdf7043f0b9a8d7226cce690f', 'LOGIN_FAILD', '127.0.0.1', 'aaa 登录失败', '2020-04-04 00:15:18');
INSERT INTO `log` VALUES ('a4cb9e2ab31640899e4b9a0c6f400a67', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-12-14 20:35:00');
INSERT INTO `log` VALUES ('a5831a2cbb7f452cb32d257fa059b8e1', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-14 21:14:20');
INSERT INTO `log` VALUES ('a7a208d90f494a6fab4248700fe5326f', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-08 16:05:13');
INSERT INTO `log` VALUES ('a863e1c98ac242b39d50fdb183b9de23', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-30 23:10:16');
INSERT INTO `log` VALUES ('a90ae57e070147ce85f673b0965621bb', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-13 10:42:56');
INSERT INTO `log` VALUES ('a94c958facce4616a9da9dd83545d514', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 00:28:21');
INSERT INTO `log` VALUES ('a969c40393cc40bb98e56e8b1bbb8668', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('a9a3c8f5a5744872a203e83250bc6b27', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-06 17:13:13');
INSERT INTO `log` VALUES ('aa3e698bc09e44f29739b622cfef52ec', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-06-01 23:40:20');
INSERT INTO `log` VALUES ('aadb5d5deb464cdf8a9f2234ed16642f', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('aaf4e70740a64283b882423cb882ea54', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-19 16:55:47');
INSERT INTO `log` VALUES ('ac6ad05a6d6743848fd5e6d44d8ab753', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-19 23:07:51');
INSERT INTO `log` VALUES ('ac8801078445453b9e8c89f7d0b88bef', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('adc1ebdb29ca415b928e834f8ec0a3b4', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('ae127268f05046b395c03c9d27c417cb', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-04-26 22:02:33');
INSERT INTO `log` VALUES ('af667c2f897e4785bfe033cfd013c7ca', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-11 22:58:32');
INSERT INTO `log` VALUES ('af8079eecfc043fba30289fa9e77647d', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-15 14:44:06');
INSERT INTO `log` VALUES ('aff3732c513a48ea8a79a82198db0f02', 'LOGIN_FAILD', '127.0.0.1', 'admiin 登录失败', '2020-04-04 21:26:29');
INSERT INTO `log` VALUES ('b02eb50f0a3b458aa6d8bfd1377ecd8f', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-30 17:14:05');
INSERT INTO `log` VALUES ('b096a71b72af4281bdfa0f0b5e94a4dd', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2020-02-24 23:15:46');
INSERT INTO `log` VALUES ('b098bd402547435ea9dd63af81961863', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('b12255371d1c4575a977e676f2adcdcd', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-20 16:37:10');
INSERT INTO `log` VALUES ('b15b051eec5c4aee98c670b7605c5361', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-06 23:00:09');
INSERT INTO `log` VALUES ('b1aed0958a1b474b8db0d4d31b056b3d', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-06-02 22:44:08');
INSERT INTO `log` VALUES ('b34fabe1da39445da483c73cea490b96', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-06-04 23:38:17');
INSERT INTO `log` VALUES ('b3eee948067941879fae437d10a467d9', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', NULL);
INSERT INTO `log` VALUES ('b40cd29646884f3fa17674b8030a1052', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 20:29:14');
INSERT INTO `log` VALUES ('b5340551687241369a3b4b768a1ed668', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-05-01 22:17:44');
INSERT INTO `log` VALUES ('b5976c5476ee4d0487777a75316b74ff', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-28 18:00:41');
INSERT INTO `log` VALUES ('b627940b47044187870489e24ffd3d2e', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2020-06-04 23:38:14');
INSERT INTO `log` VALUES ('b66f216baf5142d6aa511cb867eeb6e2', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-31 10:13:42');
INSERT INTO `log` VALUES ('b6b81b1a2f6a49b1af2cfe8c15dc70c0', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-21 15:28:48');
INSERT INTO `log` VALUES ('b6dffa8a7fe243e8b15a436dee45c82e', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-08 18:14:25');
INSERT INTO `log` VALUES ('b70fb591137643f0a852eddaaf26b09f', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('b828d7be5ddd4dad90ab80eb6c7ec95b', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-06-15 11:35:06');
INSERT INTO `log` VALUES ('b85760fb9ebc4d5a8e7236841bbe0c72', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-23 20:10:49');
INSERT INTO `log` VALUES ('b8ae374488f8408891a47323b0dab540', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-06-14 15:52:18');
INSERT INTO `log` VALUES ('b8fa55c80af34aa3961e4dbd76b39b03', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('b9d7c4064c7b435d9475da22734b15d1', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-18 21:51:39');
INSERT INTO `log` VALUES ('b9eade5cea6d465c9027366d510d041b', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-22 14:23:07');
INSERT INTO `log` VALUES ('ba0081cfc2d5400b9273a01b6f953ff4', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-05 17:18:54');
INSERT INTO `log` VALUES ('ba22c8dcfc6e4e4180a3ec7878fb03ca', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('ba57d145e17e43438969955fdc2a0aff', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2020-03-15 16:44:19');
INSERT INTO `log` VALUES ('ba9dd5838fb241d2909896d6f585cd24', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2020-04-04 21:27:27');
INSERT INTO `log` VALUES ('bb9c91e6621f4e41ba410e2965c71dfb', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('bbfc05dca9fc4416aa4bd8adf5862aea', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2019-09-04 22:53:36');
INSERT INTO `log` VALUES ('bc6463ce6dad48bfa8c7411b2aa60449', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('bd820cdb11d64f71a24b694b96b37219', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('bf00409604c1410a8f7d27484e0b69bf', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('bf06835b06224716b940ed71bcdfdc9a', 'LOGIN_FAILD', '127.0.0.1', 'zhisan 登录失败', '2019-09-20 11:43:00');
INSERT INTO `log` VALUES ('bf4643ec7ee84d26a4dea85534e92f01', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-29 23:18:32');
INSERT INTO `log` VALUES ('bf866c3770e3462287fe75686171a447', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-01 01:07:39');
INSERT INTO `log` VALUES ('c004e1e553214846a9eb13132bd34a17', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-15 17:32:06');
INSERT INTO `log` VALUES ('c00c021d6f9243a0aabfc0ccb83299fb', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-20 09:20:48');
INSERT INTO `log` VALUES ('c105b2c5f8eb4a3097551077ef4310f0', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-08 20:08:10');
INSERT INTO `log` VALUES ('c1c54ffb4e5e461db926623f459c107d', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2019-08-29 22:15:15');
INSERT INTO `log` VALUES ('c1c5ec4313544f3084185a196a2a664b', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', NULL);
INSERT INTO `log` VALUES ('c24c251c16cb48edbe4863d2e023d670', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-10-14 22:02:10');
INSERT INTO `log` VALUES ('c3d47f0834c045fabe05a67d9b695735', 'LOGIN_FAILD', '127.0.0.1', 'null 登录失败', '2019-09-14 16:00:14');
INSERT INTO `log` VALUES ('c3fc80b175d54fa192d63c9760a30a35', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-21 16:16:07');
INSERT INTO `log` VALUES ('c5af4451070445f093863e723ca20825', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 20:48:01');
INSERT INTO `log` VALUES ('c633e686eef34166919e50dd69dd9948', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('c689837ebb44469ba640981b8e777835', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-15 22:24:02');
INSERT INTO `log` VALUES ('c6a2890f51994514a9035b03ba04f751', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2019-09-12 14:56:32');
INSERT INTO `log` VALUES ('c6a9b6ba510f4407a57c979dc2b0c24f', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('c754a6c9e3904b78b48021836ae9055e', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-23 22:16:51');
INSERT INTO `log` VALUES ('c8b84970154e4d6fa4a0f8630d856920', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-11 23:02:50');
INSERT INTO `log` VALUES ('c92b45a7f006428db649fab4968971a3', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-06 15:28:29');
INSERT INTO `log` VALUES ('c979f1b1073944ef81ca0f9bca7e44b7', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('ca260119d2d948be939256e445217a23', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2019-09-04 22:56:33');
INSERT INTO `log` VALUES ('cb5e6f26e94c4a3cb1797de2417cb418', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-06-30 21:09:17');
INSERT INTO `log` VALUES ('cb93891254014624bbc10570763a906c', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('cb9e7bd3292945da8eeda43ac7ab9fe4', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-10-13 12:57:11');
INSERT INTO `log` VALUES ('cc4d3a76013f4a1e8fba55e515dab520', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('ccdf2a81f50947458e685b3317275704', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2020-02-24 23:14:56');
INSERT INTO `log` VALUES ('cd9fe482b3204fd7a3021f665a212c8e', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 14:49:01');
INSERT INTO `log` VALUES ('cdaa4c0f98b84831896cc4f70cfeee3a', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-21 22:15:44');
INSERT INTO `log` VALUES ('cde3784039224c6388812d199a0e75ce', 'LOGIN_FAILD', '127.0.0.1', 'admib 登录失败', '2019-07-01 20:42:22');
INSERT INTO `log` VALUES ('cea10401cee342729724439f7fcfa0c6', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('cedd5dd3782949ba931f5a4e7cd13e22', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-20 16:17:29');
INSERT INTO `log` VALUES ('cf7953c4b3df45a0bfc4920b9b0087b0', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-21 15:59:45');
INSERT INTO `log` VALUES ('d0e91ba2ffd540c6992884316abcb9a7', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-05-25 14:21:31');
INSERT INTO `log` VALUES ('d0f72ab0dfa04968be554702b7d397da', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 00:03:48');
INSERT INTO `log` VALUES ('d175a26cadc84545ae5bfddc61feb705', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2019-09-20 16:50:21');
INSERT INTO `log` VALUES ('d1a3fad491e0447a9522bceed4c3e3a4', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('d1b9c2e7176d43d5afa89c97e67796ba', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2019-09-04 22:52:16');
INSERT INTO `log` VALUES ('d2b0209afc93425c82111b95df9a63f6', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('d308453f110c496a948f96bcf0e3558a', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2020-03-22 15:15:21');
INSERT INTO `log` VALUES ('d4e99ff5fbef4fabb8ef9eda8450353f', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-02-21 23:24:55');
INSERT INTO `log` VALUES ('d53db444c57245f4a6dc0f0c917440cd', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-06 15:32:03');
INSERT INTO `log` VALUES ('d57b04d29f7747c6b88a90ed2cefc427', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-10-12 14:31:19');
INSERT INTO `log` VALUES ('d5b298bc13214ee89aded96bbfae4d75', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-17 00:00:39');
INSERT INTO `log` VALUES ('d65f0c353efa42f19e6c45b3de172ae7', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-14 18:44:13');
INSERT INTO `log` VALUES ('d66a2dd9457d44afa17c9060af841688', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 14:50:57');
INSERT INTO `log` VALUES ('d6bddb6cdf1a4a1ca4851623c6ae98d4', 'LOGIN_SUCCESS', '27.154.254.142', '管理员 登陆成功', '2020-04-05 21:14:06');
INSERT INTO `log` VALUES ('d713a8644cdb4ed281d9ab4a7400eb31', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2019-09-05 10:10:45');
INSERT INTO `log` VALUES ('d7c4c5b6782f4983b091235a8f4f0a4d', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2019-09-14 17:53:10');
INSERT INTO `log` VALUES ('d7eb1ef92c774c82bc8dfba36e662645', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-02-25 22:58:55');
INSERT INTO `log` VALUES ('d7fee13d527d4613af39c95cbb3c99b5', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 14:33:03');
INSERT INTO `log` VALUES ('d8c30830cd794873aebc48a901eff851', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-11 23:06:34');
INSERT INTO `log` VALUES ('d8ec821b5a084d258f75ff42a39292af', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-30 23:07:25');
INSERT INTO `log` VALUES ('d8ef0c3670c2499e9875a860121708eb', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('d8fa85fe66754d729d487a491caebdaa', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-15 23:47:50');
INSERT INTO `log` VALUES ('d9aca683d3c54cb089695679eceae444', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-04-25 15:54:17');
INSERT INTO `log` VALUES ('d9b980a87e1843b39fc0ebb1e2e995b8', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('da11cdc06fa144baa08f1444f6cc9b83', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-04 19:36:26');
INSERT INTO `log` VALUES ('da1e31bed7be4b798d769af3a573a180', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('da23ead45cc349089a5c1bf2fea4d4a4', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-18 21:46:06');
INSERT INTO `log` VALUES ('da3ed9c603ec42bca991150232418552', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-11 10:14:13');
INSERT INTO `log` VALUES ('da46a6259af84107b5666e03316c3663', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-28 00:37:23');
INSERT INTO `log` VALUES ('da9bb5d53a554c0baf6ce4135eee56a6', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('da9bc92f36cd453aba78f142aeed4de4', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2020-04-04 21:27:26');
INSERT INTO `log` VALUES ('dae5612769a842548eb64e90f5aae190', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-06-15 20:33:23');
INSERT INTO `log` VALUES ('db37687dc5144f1883dd7cd05b246fc2', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2020-04-04 00:11:54');
INSERT INTO `log` VALUES ('db5b253b3be14195aab3f3a6343d7ebf', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-01 17:05:16');
INSERT INTO `log` VALUES ('dd561e0e5f4249db84e99c374c800880', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('dddb144588eb4d1fb762a55b392809b6', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 20:21:12');
INSERT INTO `log` VALUES ('de18b1e35ccc44a199fcdecf337c376e', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-30 17:09:36');
INSERT INTO `log` VALUES ('de6ab28c50cb4240b34fb91978f4bb15', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('de99c20898a1413e92bfebc9778ae8f4', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-20 09:45:40');
INSERT INTO `log` VALUES ('deb4d9f117234d599136960c1145be08', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2020-03-22 20:53:57');
INSERT INTO `log` VALUES ('df3dca972fbf4ea9a4d77789414374bd', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('e08ecb0a1ae7416289024c48e84d99f2', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('e0bb8fdcac13479182a85a085bb0c661', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-23 21:37:21');
INSERT INTO `log` VALUES ('e0bc3169d58f4c4fa1434e4200f5fee4', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-02-25 22:57:05');
INSERT INTO `log` VALUES ('e0d74fcfe8804b8d9e2d18b542839480', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-05-16 23:49:03');
INSERT INTO `log` VALUES ('e1557d4bbd34473faa3ecd2ec9b1c9ba', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('e1e2a4783e8b438a97542b73238375be', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('e2b05690bb5441f58766807638f74283', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-20 15:39:29');
INSERT INTO `log` VALUES ('e37735187e464a2484103029a8152eb6', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('e389ad33da094f6aba0be25cac781d1d', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-19 15:46:31');
INSERT INTO `log` VALUES ('e4f9eebbfc3042a78716e180116d36d7', 'LOGIN_SUCCESS', '192.168.2.129', '管理员 登陆成功', '2020-02-27 23:18:43');
INSERT INTO `log` VALUES ('e51e399639544ffbaf75cd720a0eb08a', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('e53e8231dce74f178f0fe47fa47e59b7', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('e550abe2191d470eb40037768f298776', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2020-03-22 18:06:28');
INSERT INTO `log` VALUES ('e5754e0edf4f42da9dc5641915a1ba2c', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2020-05-31 21:15:28');
INSERT INTO `log` VALUES ('e5ad14691baf40e6ad4602a4b9ab388e', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-04-26 11:43:15');
INSERT INTO `log` VALUES ('e5d5514c70b34dc58257e40b3bdb6c0b', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 20:48:50');
INSERT INTO `log` VALUES ('e6a54c353e4145e8a0127c23cfe8b9bd', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2019-09-05 09:11:25');
INSERT INTO `log` VALUES ('e6b2dc6fe4494cd6b6abd5fc61822c93', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-12-20 00:16:52');
INSERT INTO `log` VALUES ('e706044bcd3946eda7e91be6e3169e50', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2020-02-25 22:58:48');
INSERT INTO `log` VALUES ('e70c4453b17c4af9b3e1576532f57535', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('e89457ae4aa943929e43dcd9537b0f66', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('e89ee976bc6e44b58e4afef0abc84722', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-04 22:52:44');
INSERT INTO `log` VALUES ('e8ed8f5b80af492cb73708a089d83dfa', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-30 21:40:29');
INSERT INTO `log` VALUES ('e9b45e42c781483d8de5ecd8bdaedfbc', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('e9b646a2396641a9a7c172221961dc23', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-02-25 22:59:14');
INSERT INTO `log` VALUES ('e9bd16fae72243e086655141f2255d8c', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-05-19 14:18:09');
INSERT INTO `log` VALUES ('ea98c8fce166465e83909842589f8c3e', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-02-24 23:15:29');
INSERT INTO `log` VALUES ('eaaee240d34246c48c3524e5314e04bf', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-11 10:48:37');
INSERT INTO `log` VALUES ('eabdf651f0234173aa30e8de638b7f18', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-05 21:22:28');
INSERT INTO `log` VALUES ('eb08648f03d74ee4ab17b66c5d04ff45', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-23 22:23:26');
INSERT INTO `log` VALUES ('ebb3447e2f364d5c918b2e826f201a62', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-25 00:16:42');
INSERT INTO `log` VALUES ('eccfe754aeb54f1582e828213bc39c30', 'LOGIN_SUCCESS', '0:0:0:0:0:0:0:1', '管理员 登陆成功', '2020-02-27 23:08:21');
INSERT INTO `log` VALUES ('edad4e7d9da849e3a5bb4f20413647d4', 'LOGIN_FAILD', '127.0.0.1', 'aaa 登录失败', '2020-04-04 00:15:22');
INSERT INTO `log` VALUES ('ede7c227d78144c898a1a3717683d348', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('ee6509f413c5448c829f1d4607aa8703', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-05-18 19:41:44');
INSERT INTO `log` VALUES ('ee873bf9dbae4e618ec5180aab496fdd', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2020-02-24 22:46:42');
INSERT INTO `log` VALUES ('eec767c1897443eda9de2a25b4fb1e93', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-18 21:50:50');
INSERT INTO `log` VALUES ('ef3bb340641c44b492f96ed33a49dd5d', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-02 23:14:35');
INSERT INTO `log` VALUES ('efac78021e3e4a36b8beb5dde954126b', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-29 23:16:50');
INSERT INTO `log` VALUES ('f040e0b014144869ae361904ccc839cb', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 20:35:58');
INSERT INTO `log` VALUES ('f05a11b559384b489774ef18a50710c0', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-14 18:41:46');
INSERT INTO `log` VALUES ('f0effb9caed64511a7237b14e677239b', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-10-12 00:21:20');
INSERT INTO `log` VALUES ('f1851a8f17894a85a05d5b1da970c2b9', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2019-07-14 21:14:17');
INSERT INTO `log` VALUES ('f1f5e65ce5cb42dc91408ed5c275b34c', 'LOGIN_SUCCESS', '0:0:0:0:0:0:0:1', '管理员 登陆成功', '2020-02-26 22:41:40');
INSERT INTO `log` VALUES ('f2262bcede7b4d38b6272242a57fe82d', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-25 00:28:48');
INSERT INTO `log` VALUES ('f2699f97521447089251ddea8afbaada', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('f342233eb5354674b88c5df3f593cba3', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('f351c5fa42634546a7ef7a7bff5e4b9a', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-21 14:27:27');
INSERT INTO `log` VALUES ('f472d9e9174f4d82a1e696086e8a8633', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-21 15:12:18');
INSERT INTO `log` VALUES ('f606739a0a7e4cdcac1b846aedb738ea', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2020-04-04 21:26:19');
INSERT INTO `log` VALUES ('f6d8b4faa9f249939ba020dcaa54f8e2', 'LOGIN_FAILD', '127.0.0.1', 'aaa 登录失败', '2020-04-04 00:15:17');
INSERT INTO `log` VALUES ('f73b1f3819514c8a8f85ae81c15973ba', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('f750cb1c058846a6a2e5d3ebed9ade71', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2020-04-04 00:11:55');
INSERT INTO `log` VALUES ('f76986cefd1e41888f912e6e46294605', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-23 21:38:07');
INSERT INTO `log` VALUES ('f7980dca626649fc8954fa32a8d6dd54', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-12 00:05:59');
INSERT INTO `log` VALUES ('f84c63db8def4180b22843f13297cdf8', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-04-03 23:52:07');
INSERT INTO `log` VALUES ('f956472cc13346abb29e3e1f5e1164d3', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-05 09:15:37');
INSERT INTO `log` VALUES ('f958e59532884536bd1938a157d01caa', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-04-25 20:38:33');
INSERT INTO `log` VALUES ('fa142f45f63f4a1a85438ff2cdf0c3df', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-31 20:34:40');
INSERT INTO `log` VALUES ('fa5a69f2e3174a94be9e34815534cebb', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-02 22:29:55');
INSERT INTO `log` VALUES ('fa60cb762b0242599df6661fb6307b55', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-27 22:33:09');
INSERT INTO `log` VALUES ('fb80457c4557408ea6cb83bed5318adb', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-06-30 17:45:45');
INSERT INTO `log` VALUES ('fbbd3ba83d914a9eaec87e2d57a8103d', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2020-04-04 00:11:52');
INSERT INTO `log` VALUES ('fc53c596e15b4f6e9f8fa7bcd7412bb5', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-05-18 18:25:05');
INSERT INTO `log` VALUES ('fc8fe0ff7a4b45b989360526335b3d10', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('fcc585bdff55464f85d079689f165fc8', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-04-25 14:38:00');
INSERT INTO `log` VALUES ('fd1af84572754f5d843c2533fcef692d', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-05-30 17:28:41');
INSERT INTO `log` VALUES ('fd9a62fe55c244648448a8f4df1aefac', 'LOGIN_SUCCESS', '127.0.0.1', '测试账号 登陆成功', '2020-03-16 22:02:58');
INSERT INTO `log` VALUES ('fdb0237d146e4bab82603c2c17513d65', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-11 12:00:40');
INSERT INTO `log` VALUES ('fe5e8066ae5245fea38f507bc3d39dc5', 'LOGIN_FAILD', '127.0.0.1', 'aa 登录失败', '2020-04-04 00:03:52');
INSERT INTO `log` VALUES ('fe6e2ab7c5c54dc09cc8b6d93f20792b', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('fe74c706267a4caaac9a07da0d0a1ac8', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-06 17:39:36');
INSERT INTO `log` VALUES ('fe781b05403244458d351d668570409b', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('febe8760fd9c467c96a698e1bbdb604e', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2019-09-04 21:57:38');
INSERT INTO `log` VALUES ('fec62d1d4c0b40d5b248e899c08aa13e', 'LOGIN_FAILD', '127.0.0.1', 'admin 登录失败', '2020-05-31 20:34:38');
INSERT INTO `log` VALUES ('ff2b0069763f4626b69b2d53f993dffe', 'LOGIN_SUCCESS', '127.0.0.1', '管理员 登陆成功', '2020-03-22 18:06:16');
INSERT INTO `log` VALUES ('ff8ea5c4c65741918e3041e90e556107', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', NULL);
INSERT INTO `log` VALUES ('ff94ccbd229c46c1ace1be53d72bfc49', 'LOGIN_SUCCESS', '127.0.0.1', 'admin 登陆成功', '2019-07-01 17:09:56');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `menu_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单ID',
  `menu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单名称',
  `parent_menu_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '父菜单ID',
  `menu_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单地址',
  `sort` int(11) NULL DEFAULT 0 COMMENT '排序',
  `visible` int(11) NULL DEFAULT 0 COMMENT '是否可见',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('asset', '资产管理', '', '', 3, 0, NULL);
INSERT INTO `menu` VALUES ('asset-attr-table', '资产属性管理', 'asset', '/asset/asset-attr-table', 1, 0, NULL);
INSERT INTO `menu` VALUES ('asset-table', '资产管理', 'asset', '/asset/asset-table', 0, 0, NULL);
INSERT INTO `menu` VALUES ('bug', '漏洞管理', '', '', 12, 0, NULL);
INSERT INTO `menu` VALUES ('bug-level-table', '漏洞等级管理', 'bug', '/bug/bug-level-table', 5, 0, NULL);
INSERT INTO `menu` VALUES ('bug-table', '漏洞知识库管理', 'bug', '/bug/bug-table', 4, 0, NULL);
INSERT INTO `menu` VALUES ('code-create', '代码生成管理', 'creater', '/sys/code-create', 12, 0, NULL);
INSERT INTO `menu` VALUES ('code-create-table', '代码生成表格', 'creater', '/sys/code-create-table', 13, 0, NULL);
INSERT INTO `menu` VALUES ('code-info-table', '代码信息', 'sys', '/sys/code-info-table', 11, 0, NULL);
INSERT INTO `menu` VALUES ('code-type-table', '代码类型', 'sys', '/sys/code-type-table', 2, 0, NULL);
INSERT INTO `menu` VALUES ('config-table', '系统配置管理', 'sys', '/sys/config-table', 0, 0, NULL);
INSERT INTO `menu` VALUES ('creater', '代码生成管理', '', '', 100, 1, NULL);
INSERT INTO `menu` VALUES ('dashboard', '首页', '', '/main/dashboard', 0, 1, NULL);
INSERT INTO `menu` VALUES ('log-table', '日志管理', 'sys', '/sys/log-table', 101, 0, NULL);
INSERT INTO `menu` VALUES ('menu-table', '菜单管理', 'sys', '/sys/menu-table', 3, 0, NULL);
INSERT INTO `menu` VALUES ('needs', '需求管理', '', '', 3, 0, NULL);
INSERT INTO `menu` VALUES ('needs-table', '需求管理', 'needs', '/needs/needs-table', 1, 0, NULL);
INSERT INTO `menu` VALUES ('report', '报告管理', '', '', 100, 1, NULL);
INSERT INTO `menu` VALUES ('report-template', '报告模板', 'report', '/report/report-template', 101, 0, NULL);
INSERT INTO `menu` VALUES ('role-menu-page', '角色菜单设置', 'sys', '/sys/role-menu-page', 4, 0, NULL);
INSERT INTO `menu` VALUES ('role-table', '角色管理', 'sys', '/sys/role-table', 3, 0, NULL);
INSERT INTO `menu` VALUES ('role-user-page', '角色用户设置', 'sys', '/sys/role-user-page', 4, 0, NULL);
INSERT INTO `menu` VALUES ('scan', '扫描管理', '', '', 10, 0, NULL);
INSERT INTO `menu` VALUES ('scan-result', '扫描结果', 'scan', '/scan/scan-result', 1, 0, NULL);
INSERT INTO `menu` VALUES ('script', '脚本管理', '', '', 5, 0, NULL);
INSERT INTO `menu` VALUES ('script-page', '新建脚本', 'script', '/script/script-page', 0, 0, NULL);
INSERT INTO `menu` VALUES ('sys', '系统管理', '', '', 1, 0, NULL);
INSERT INTO `menu` VALUES ('task', '任务管理', '', '', 8, 0, NULL);
INSERT INTO `menu` VALUES ('task-attr-table', '任务属性管理', 'task', '/task/task-attr-table', 9, 0, NULL);
INSERT INTO `menu` VALUES ('task-create', '新建任务', 'task', '/task/task-create', 9, 0, NULL);
INSERT INTO `menu` VALUES ('task-log-table', '任务日志管理', 'task', '/task/task-log-table', 8, 0, NULL);
INSERT INTO `menu` VALUES ('task-table', '任务管理', 'task', '/task/task-table', 8, 0, NULL);
INSERT INTO `menu` VALUES ('user-table', '用户管理', 'sys', '/sys/user-table', 1, 0, NULL);

-- ----------------------------
-- Table structure for msg
-- ----------------------------
DROP TABLE IF EXISTS `msg`;
CREATE TABLE `msg`  (
  `msg_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息ID',
  `msg_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消息标题',
  `msg_source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消息来源',
  `msg_destination` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消息目标',
  `last_time` datetime(0) NULL DEFAULT NULL COMMENT '最后更新',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`msg_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of msg
-- ----------------------------
INSERT INTO `msg` VALUES ('1', '测试消息', 'admin', 'admin', '2018-08-31 17:11:00', '2018-08-31 17:11:00');
INSERT INTO `msg` VALUES ('2', '测试消息', 'admin', 'admin', '2018-08-31 17:11:00', '2018-08-31 17:11:00');

-- ----------------------------
-- Table structure for needs
-- ----------------------------
DROP TABLE IF EXISTS `needs`;
CREATE TABLE `needs`  (
  `needs_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '需求ID',
  `needs_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '需求名称',
  `needs_content` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '需求内容',
  `needs_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '需求状态',
  `needs_step` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '需求阶段',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`needs_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for org
-- ----------------------------
DROP TABLE IF EXISTS `org`;
CREATE TABLE `org`  (
  `org_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机构ID',
  `org_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构名',
  `parent_org_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父机构ID',
  `sort_no` int(11) NULL DEFAULT 0 COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`org_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of org
-- ----------------------------
INSERT INTO `org` VALUES ('81a36528acea4791a5c044f19ad59d92', '居委会', '', 0, '2018-08-31 10:27:27');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `role_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色ID',
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名',
  `options` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色配置项',
  `parent_role_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父角色ID',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('admin', '管理员', '', '', 0, '2018-08-29 23:22:12');
INSERT INTO `role` VALUES ('customer', '客户', '', '', 0, '2020-03-22 23:21:18');
INSERT INTO `role` VALUES ('developer', '开发人员', '', '', NULL, '2020-03-22 23:18:59');
INSERT INTO `role` VALUES ('guest', '游客', '', '', NULL, '2020-03-22 23:18:07');
INSERT INTO `role` VALUES ('pm', '项目经理', '', '', NULL, '2020-03-22 23:20:07');
INSERT INTO `role` VALUES ('user', '会员', '', '', 0, '2018-08-29 23:22:12');

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu`  (
  `role_menu_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色菜单ID',
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '角色ID',
  `menu_id` varchar(0) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '菜单ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for role_user
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user`  (
  `role_user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色用户ID',
  `role_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色ID',
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role_user
-- ----------------------------
INSERT INTO `role_user` VALUES ('512308ca81094211964e9354cafc842c', 'user', 'admin', '2018-08-30 14:45:55');
INSERT INTO `role_user` VALUES ('512308ca81094211964e9354cafc842d', 'user', 'test', '2018-08-30 14:45:55');
INSERT INTO `role_user` VALUES ('cb23c830d5434f84aaec5bef0fc63465', 'admin', 'admin', '2018-08-30 11:17:38');

-- ----------------------------
-- Table structure for scan_result
-- ----------------------------
DROP TABLE IF EXISTS `scan_result`;
CREATE TABLE `scan_result`  (
  `scan_result_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '扫描结果',
  `bug_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '漏洞ID',
  `asset_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '资产ID',
  `task_log_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '任务日志ID',
  `scan_result` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扫描结果',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`scan_result_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of scan_result
-- ----------------------------
INSERT INTO `scan_result` VALUES ('00092096b1c14067af336d9bd99a2e9d', '703589a4f8e5458495ce0c51909b9ca4', '64186ee06d254c5c8a7c734fa43a8cf5', '613726cf829744d79ad336907ad1e122', '0', '2020-03-23 20:29:26', 'admin', '2020-03-23 20:29:26', NULL);
INSERT INTO `scan_result` VALUES ('004bd87598d244c4b86d2e0f09fc7dad', '244d47bfc8ee4da590b97dd7f8bccadf', 'd4df141a59a541f7b9f5654e5c3b0fbe', '7f61083dcbba4152bec23225a4f33c18', '0', '2020-03-29 14:11:09', 'test', '2020-03-29 14:11:09', NULL);
INSERT INTO `scan_result` VALUES ('009d00cb4b17422d8f38c82f4c0716f0', '0d9bf6f0a9df47828bde1c80abf3b6bf', '090f13633d3d43c5a965531a2045ac41', 'bf8ec64b00a948bd9789397f795156c8', '0', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('03dedb7aa911400da9655e8f683781aa', '8fbf57556139476ca702fb35c88789df', '090f13633d3d43c5a965531a2045ac41', 'b48a890ef56840ce8c6b2f4ac2e0a060', '0', '2020-03-28 00:38:58', 'admin', '2020-03-28 00:38:58', NULL);
INSERT INTO `scan_result` VALUES ('0437a0c73a48478da4070834ce635795', '0d9bf6f0a9df47828bde1c80abf3b6bf', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'b48a890ef56840ce8c6b2f4ac2e0a060', '0', '2020-03-28 00:38:59', 'admin', '2020-03-28 00:38:59', NULL);
INSERT INTO `scan_result` VALUES ('063b57e763ff4e2ebb9afe6f976365ac', 'c035ad6eb29045138cfb17c5973f8782', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'bf8ec64b00a948bd9789397f795156c8', '0', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `scan_result` VALUES ('07fd54e3e58e4c699db94992b7e0bca6', 'c035ad6eb29045138cfb17c5973f8782', 'd4df141a59a541f7b9f5654e5c3b0fbe', '613726cf829744d79ad336907ad1e122', '1', '2020-03-23 20:29:25', 'admin', '2020-03-23 20:29:25', NULL);
INSERT INTO `scan_result` VALUES ('0818d69d72a144079443abd88f7bf552', 'c5ef3796336442f1a092d79fa804403a', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'e46818719f774add8c23fd313192b5f4', '1', '2020-05-31 23:58:55', 'admin', '2020-05-31 23:58:55', NULL);
INSERT INTO `scan_result` VALUES ('09b11c525a2f4ed1a6bc1f5092d99f75', '8bc4bd521b0240d794843cd61aaf848f', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'b48a890ef56840ce8c6b2f4ac2e0a060', '0', '2020-03-28 00:38:59', 'admin', '2020-03-28 00:38:59', NULL);
INSERT INTO `scan_result` VALUES ('0b48ede0c0fe4516946ff709fdae71b4', '8bc4bd521b0240d794843cd61aaf848f', '94692459005f44489d3c5a03313dcc63', 'bf8ec64b00a948bd9789397f795156c8', '0', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('0ba26eceb1a945e9b083ca8acfb029dd', 'bd61a246e3f24a999ac68ac683a68d51', '64186ee06d254c5c8a7c734fa43a8cf5', 'b48a890ef56840ce8c6b2f4ac2e0a060', '0', '2020-03-28 00:38:57', 'admin', '2020-03-28 00:38:57', NULL);
INSERT INTO `scan_result` VALUES ('0d84878c5e0444859da664efb7ad969f', 'bd61a246e3f24a999ac68ac683a68d51', 'd4df141a59a541f7b9f5654e5c3b0fbe', '613726cf829744d79ad336907ad1e122', '0', '2020-03-23 20:29:25', 'admin', '2020-03-23 20:29:25', NULL);
INSERT INTO `scan_result` VALUES ('0ed626d40240458c9fbcb484759709ae', 'c4aaa0e83a0c401091dc48849ad96874', '090f13633d3d43c5a965531a2045ac41', '7f61083dcbba4152bec23225a4f33c18', '0', '2020-03-29 14:11:08', 'test', '2020-03-29 14:11:08', NULL);
INSERT INTO `scan_result` VALUES ('112c87fa55554e529875f86946d5cb7f', 'bd61a246e3f24a999ac68ac683a68d51', '637b6d51b7e24026a4867c4e0730cbd4', 'b7ec88d044994b909ae44beb11f7f3d8', '0', '2020-03-26 00:12:22', 'admin', '2020-03-26 00:12:22', NULL);
INSERT INTO `scan_result` VALUES ('126490d03eec4e71b44752dda87abaa6', '703589a4f8e5458495ce0c51909b9ca4', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `scan_result` VALUES ('12d6ec1423a64227a25042628c6e2b8c', 'c5ef3796336442f1a092d79fa804403a', 'd4df141a59a541f7b9f5654e5c3b0fbe', '613726cf829744d79ad336907ad1e122', '0', '2020-03-23 20:29:25', 'admin', '2020-03-23 20:29:25', NULL);
INSERT INTO `scan_result` VALUES ('141d1f6e8ae44655b0d1745228acbe84', 'c035ad6eb29045138cfb17c5973f8782', '637b6d51b7e24026a4867c4e0730cbd4', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('14949af5b8df4940aec3c3cb0c0ee684', '8bc4bd521b0240d794843cd61aaf848f', 'd4df141a59a541f7b9f5654e5c3b0fbe', '7f61083dcbba4152bec23225a4f33c18', '0', '2020-03-29 14:11:10', 'test', '2020-03-29 14:11:10', NULL);
INSERT INTO `scan_result` VALUES ('14a8c86f1a134c68b803f43c9f163069', 'bd61a246e3f24a999ac68ac683a68d51', '64186ee06d254c5c8a7c734fa43a8cf5', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `scan_result` VALUES ('15d7ab5b285c41d4906f169bcf42a39f', 'c5ef3796336442f1a092d79fa804403a', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'bf8ec64b00a948bd9789397f795156c8', '0', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `scan_result` VALUES ('169c4ed4818641dba241e470cd7b8574', 'c4aaa0e83a0c401091dc48849ad96874', '637b6d51b7e24026a4867c4e0730cbd4', '7f61083dcbba4152bec23225a4f33c18', '1', '2020-03-29 14:11:10', 'test', '2020-03-29 14:11:10', NULL);
INSERT INTO `scan_result` VALUES ('17dc68c007a049c1a1e5e68c056967a4', '8fbf57556139476ca702fb35c88789df', '637b6d51b7e24026a4867c4e0730cbd4', '613726cf829744d79ad336907ad1e122', '1', '2020-03-23 20:29:25', 'admin', '2020-03-23 20:29:25', NULL);
INSERT INTO `scan_result` VALUES ('190345d981c64f018f0ca83c031eb9a1', '8fbf57556139476ca702fb35c88789df', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'b7ec88d044994b909ae44beb11f7f3d8', '1', '2020-03-26 00:12:21', 'admin', '2020-03-26 00:12:21', NULL);
INSERT INTO `scan_result` VALUES ('1944bbd9e6f0432d9e4315a355ea16d9', 'bd61a246e3f24a999ac68ac683a68d51', '090f13633d3d43c5a965531a2045ac41', 'b7ec88d044994b909ae44beb11f7f3d8', '0', '2020-03-26 00:12:19', 'admin', '2020-03-26 00:12:19', NULL);
INSERT INTO `scan_result` VALUES ('1a9eefe0324642c4927492db42eb3d01', '703589a4f8e5458495ce0c51909b9ca4', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'b7ec88d044994b909ae44beb11f7f3d8', '0', '2020-03-26 00:12:20', 'admin', '2020-03-26 00:12:20', NULL);
INSERT INTO `scan_result` VALUES ('1aebdcbd3998481f9bb33bb16501fe29', '8bc4bd521b0240d794843cd61aaf848f', 'd4df141a59a541f7b9f5654e5c3b0fbe', '613726cf829744d79ad336907ad1e122', '0', '2020-03-23 20:29:24', 'admin', '2020-03-23 20:29:24', NULL);
INSERT INTO `scan_result` VALUES ('1cad7c89551e46229e199ac240200765', 'c035ad6eb29045138cfb17c5973f8782', '090f13633d3d43c5a965531a2045ac41', 'b7ec88d044994b909ae44beb11f7f3d8', '0', '2020-03-26 00:12:18', 'admin', '2020-03-26 00:12:18', NULL);
INSERT INTO `scan_result` VALUES ('1d7ee691bb414b95b11a07f8855b1a48', 'c5ef3796336442f1a092d79fa804403a', '94692459005f44489d3c5a03313dcc63', 'e46818719f774add8c23fd313192b5f4', '0', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('1dc06157946d419caf3fec81e17130aa', 'bd61a246e3f24a999ac68ac683a68d51', '94692459005f44489d3c5a03313dcc63', 'e46818719f774add8c23fd313192b5f4', '0', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('1ee78d9c4d5044d7815386d33735e331', '8bc4bd521b0240d794843cd61aaf848f', '94692459005f44489d3c5a03313dcc63', 'e46818719f774add8c23fd313192b5f4', '1', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('1f64fc3ab6784212b008d2db692ac98b', '0d9bf6f0a9df47828bde1c80abf3b6bf', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `scan_result` VALUES ('1f7081b6a6844699baae9d661c6f2b0b', '0d9bf6f0a9df47828bde1c80abf3b6bf', '94692459005f44489d3c5a03313dcc63', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('214fcc92790f4ecb810089b750d3560e', '8fbf57556139476ca702fb35c88789df', '637b6d51b7e24026a4867c4e0730cbd4', '7f61083dcbba4152bec23225a4f33c18', '0', '2020-03-29 14:11:11', 'test', '2020-03-29 14:11:11', NULL);
INSERT INTO `scan_result` VALUES ('230429c04a2e430bbea07cd66db2be34', '8bc4bd521b0240d794843cd61aaf848f', '090f13633d3d43c5a965531a2045ac41', 'e46818719f774add8c23fd313192b5f4', '1', '2020-05-31 23:58:57', 'admin', '2020-05-31 23:58:57', NULL);
INSERT INTO `scan_result` VALUES ('23954b40347f47b98c1cc19289aad02b', 'c4aaa0e83a0c401091dc48849ad96874', '64186ee06d254c5c8a7c734fa43a8cf5', 'e46818719f774add8c23fd313192b5f4', '0', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('23ce3661b4e2490ba0ff4d32f8d04091', 'c035ad6eb29045138cfb17c5973f8782', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'b48a890ef56840ce8c6b2f4ac2e0a060', '1', '2020-03-28 00:38:59', 'admin', '2020-03-28 00:38:59', NULL);
INSERT INTO `scan_result` VALUES ('23fb16aee3e541208c03b2e1470d0a26', 'c5ef3796336442f1a092d79fa804403a', 'd4df141a59a541f7b9f5654e5c3b0fbe', '7f61083dcbba4152bec23225a4f33c18', '1', '2020-03-29 14:11:09', 'test', '2020-03-29 14:11:09', NULL);
INSERT INTO `scan_result` VALUES ('2400cd0940014d64b41f735dccf3eb2c', 'c035ad6eb29045138cfb17c5973f8782', '090f13633d3d43c5a965531a2045ac41', 'e46818719f774add8c23fd313192b5f4', '0', '2020-05-31 23:58:57', 'admin', '2020-05-31 23:58:57', NULL);
INSERT INTO `scan_result` VALUES ('24e090c81cf14af2b602f72738656110', '244d47bfc8ee4da590b97dd7f8bccadf', '637b6d51b7e24026a4867c4e0730cbd4', 'b7ec88d044994b909ae44beb11f7f3d8', '1', '2020-03-26 00:12:21', 'admin', '2020-03-26 00:12:21', NULL);
INSERT INTO `scan_result` VALUES ('2526b83432d449c8ad21b8a537beb1b7', '8fbf57556139476ca702fb35c88789df', '637b6d51b7e24026a4867c4e0730cbd4', 'b7ec88d044994b909ae44beb11f7f3d8', '0', '2020-03-26 00:12:22', 'admin', '2020-03-26 00:12:22', NULL);
INSERT INTO `scan_result` VALUES ('296862dc1b4b4ebfb7cfaf8eff7ebc93', '8fbf57556139476ca702fb35c88789df', '64186ee06d254c5c8a7c734fa43a8cf5', '7f61083dcbba4152bec23225a4f33c18', '1', '2020-03-29 14:11:08', 'test', '2020-03-29 14:11:08', NULL);
INSERT INTO `scan_result` VALUES ('2989a1af41eb461ab854529bcd2a60d3', 'bd61a246e3f24a999ac68ac683a68d51', '64186ee06d254c5c8a7c734fa43a8cf5', '613726cf829744d79ad336907ad1e122', '0', '2020-03-23 20:29:27', 'admin', '2020-03-23 20:29:27', NULL);
INSERT INTO `scan_result` VALUES ('2ad49739e79045d8ab0295f1b3c8ed45', '96af2f88505f4c98bfaceff48b9bcaf0', '637b6d51b7e24026a4867c4e0730cbd4', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('2d42a6bbc51d43f3b4450e324668ec0b', 'c4aaa0e83a0c401091dc48849ad96874', '94692459005f44489d3c5a03313dcc63', 'e46818719f774add8c23fd313192b5f4', '0', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('2d6ec346e6b249d99e56b2cb0176034f', 'bd61a246e3f24a999ac68ac683a68d51', '637b6d51b7e24026a4867c4e0730cbd4', 'b48a890ef56840ce8c6b2f4ac2e0a060', '0', '2020-03-28 00:39:00', 'admin', '2020-03-28 00:39:00', NULL);
INSERT INTO `scan_result` VALUES ('2d9e251bc65749faa3b94ad4a8990d86', 'bd61a246e3f24a999ac68ac683a68d51', '090f13633d3d43c5a965531a2045ac41', 'e46818719f774add8c23fd313192b5f4', '0', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('2e2318354018485d9aaa8dca655739a4', 'c5ef3796336442f1a092d79fa804403a', '090f13633d3d43c5a965531a2045ac41', 'e46818719f774add8c23fd313192b5f4', '0', '2020-05-31 23:58:57', 'admin', '2020-05-31 23:58:57', NULL);
INSERT INTO `scan_result` VALUES ('2e70f9932fb34161a67c543baace6a35', 'bd61a246e3f24a999ac68ac683a68d51', '64186ee06d254c5c8a7c734fa43a8cf5', 'e46818719f774add8c23fd313192b5f4', '1', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('2ec0612d519b47e3a98fe7ea8c21dc8d', '703589a4f8e5458495ce0c51909b9ca4', '637b6d51b7e24026a4867c4e0730cbd4', 'b7ec88d044994b909ae44beb11f7f3d8', '1', '2020-03-26 00:12:21', 'admin', '2020-03-26 00:12:21', NULL);
INSERT INTO `scan_result` VALUES ('2f5689438d224a68820051093d9d0000', '0d9bf6f0a9df47828bde1c80abf3b6bf', '637b6d51b7e24026a4867c4e0730cbd4', '7f61083dcbba4152bec23225a4f33c18', '1', '2020-03-29 14:11:11', 'test', '2020-03-29 14:11:11', NULL);
INSERT INTO `scan_result` VALUES ('30f7ea4c56754dc388112629682ee940', 'c5ef3796336442f1a092d79fa804403a', '090f13633d3d43c5a965531a2045ac41', 'b48a890ef56840ce8c6b2f4ac2e0a060', '1', '2020-03-28 00:38:57', 'admin', '2020-03-28 00:38:57', NULL);
INSERT INTO `scan_result` VALUES ('31f68f96a928478fab99247a03af5f11', '8fbf57556139476ca702fb35c88789df', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'e46818719f774add8c23fd313192b5f4', '0', '2020-05-31 23:58:55', 'admin', '2020-05-31 23:58:55', NULL);
INSERT INTO `scan_result` VALUES ('32863c6b5dfa48c8beb5fe9a7379b5c2', '244d47bfc8ee4da590b97dd7f8bccadf', '637b6d51b7e24026a4867c4e0730cbd4', 'bf8ec64b00a948bd9789397f795156c8', '0', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('32bf1261f0b5441db23d3d1acf8cd1b1', 'c035ad6eb29045138cfb17c5973f8782', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'e46818719f774add8c23fd313192b5f4', '1', '2020-05-31 23:58:55', 'admin', '2020-05-31 23:58:55', NULL);
INSERT INTO `scan_result` VALUES ('33d2c04ed7b34ef1b828850ab9c27b4a', 'c035ad6eb29045138cfb17c5973f8782', '090f13633d3d43c5a965531a2045ac41', '613726cf829744d79ad336907ad1e122', '1', '2020-03-23 20:29:24', 'admin', '2020-03-23 20:29:24', NULL);
INSERT INTO `scan_result` VALUES ('37b6581291a845b79b4adb9d894120ca', 'c4aaa0e83a0c401091dc48849ad96874', '090f13633d3d43c5a965531a2045ac41', 'e46818719f774add8c23fd313192b5f4', '0', '2020-05-31 23:58:57', 'admin', '2020-05-31 23:58:57', NULL);
INSERT INTO `scan_result` VALUES ('39098c1485c24987a1745fadaaa1ebfd', '96af2f88505f4c98bfaceff48b9bcaf0', '090f13633d3d43c5a965531a2045ac41', 'bf8ec64b00a948bd9789397f795156c8', '0', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('39601f0e63624170ac9d9a8b7697615a', '8fbf57556139476ca702fb35c88789df', '64186ee06d254c5c8a7c734fa43a8cf5', 'e46818719f774add8c23fd313192b5f4', '1', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('40616f5fe56241cfb991c8b164e49109', '244d47bfc8ee4da590b97dd7f8bccadf', '090f13633d3d43c5a965531a2045ac41', '7f61083dcbba4152bec23225a4f33c18', '0', '2020-03-29 14:11:08', 'test', '2020-03-29 14:11:08', NULL);
INSERT INTO `scan_result` VALUES ('42ae6528253c42379a2eb1b57692378a', '703589a4f8e5458495ce0c51909b9ca4', '090f13633d3d43c5a965531a2045ac41', 'e46818719f774add8c23fd313192b5f4', '0', '2020-05-31 23:58:57', 'admin', '2020-05-31 23:58:57', NULL);
INSERT INTO `scan_result` VALUES ('43bf93956aff48e59efcf083365d7f4b', '244d47bfc8ee4da590b97dd7f8bccadf', '637b6d51b7e24026a4867c4e0730cbd4', 'e46818719f774add8c23fd313192b5f4', '1', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('43ea91fe59db4805bba479f1dfb2e0d1', '703589a4f8e5458495ce0c51909b9ca4', '090f13633d3d43c5a965531a2045ac41', 'b7ec88d044994b909ae44beb11f7f3d8', '0', '2020-03-26 00:12:18', 'admin', '2020-03-26 00:12:18', NULL);
INSERT INTO `scan_result` VALUES ('455420644d5545958c462bc73f418350', '96af2f88505f4c98bfaceff48b9bcaf0', '637b6d51b7e24026a4867c4e0730cbd4', 'b48a890ef56840ce8c6b2f4ac2e0a060', '1', '2020-03-28 00:39:00', 'admin', '2020-03-28 00:39:00', NULL);
INSERT INTO `scan_result` VALUES ('457941c2e0f54e00998325f62009f2f2', '8bc4bd521b0240d794843cd61aaf848f', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'e46818719f774add8c23fd313192b5f4', '1', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('46800d28c31b4de5b8350da4116bee26', 'c4aaa0e83a0c401091dc48849ad96874', '64186ee06d254c5c8a7c734fa43a8cf5', 'b7ec88d044994b909ae44beb11f7f3d8', '1', '2020-03-26 00:12:16', 'admin', '2020-03-26 00:12:16', NULL);
INSERT INTO `scan_result` VALUES ('47135a2d1e7a423da412ef444b59bcd1', '703589a4f8e5458495ce0c51909b9ca4', '64186ee06d254c5c8a7c734fa43a8cf5', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('47217d4c651246e1a4557da242d2c385', 'c5ef3796336442f1a092d79fa804403a', '64186ee06d254c5c8a7c734fa43a8cf5', 'b7ec88d044994b909ae44beb11f7f3d8', '0', '2020-03-26 00:12:16', 'admin', '2020-03-26 00:12:16', NULL);
INSERT INTO `scan_result` VALUES ('49bd8be1475043c1b9ff01ba5ba47820', '244d47bfc8ee4da590b97dd7f8bccadf', '94692459005f44489d3c5a03313dcc63', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('4a409cdba5714e35bb2896aee889ed2a', '8fbf57556139476ca702fb35c88789df', '64186ee06d254c5c8a7c734fa43a8cf5', '613726cf829744d79ad336907ad1e122', '0', '2020-03-23 20:29:26', 'admin', '2020-03-23 20:29:26', NULL);
INSERT INTO `scan_result` VALUES ('4b83d1736fe2450ba21f3713f0923d11', '0d9bf6f0a9df47828bde1c80abf3b6bf', '637b6d51b7e24026a4867c4e0730cbd4', 'e46818719f774add8c23fd313192b5f4', '0', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('4d6c68e7f0814b39a6d42c51ba2ae02a', '0d9bf6f0a9df47828bde1c80abf3b6bf', '637b6d51b7e24026a4867c4e0730cbd4', 'b48a890ef56840ce8c6b2f4ac2e0a060', '0', '2020-03-28 00:39:00', 'admin', '2020-03-28 00:39:00', NULL);
INSERT INTO `scan_result` VALUES ('4e81c569afd54d959cea7858e6c1177a', '8bc4bd521b0240d794843cd61aaf848f', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `scan_result` VALUES ('4f2eba9d7d1d453eb0551b02dfef1e31', 'bd61a246e3f24a999ac68ac683a68d51', '64186ee06d254c5c8a7c734fa43a8cf5', 'b7ec88d044994b909ae44beb11f7f3d8', '1', '2020-03-26 00:12:18', 'admin', '2020-03-26 00:12:18', NULL);
INSERT INTO `scan_result` VALUES ('54b2056402974465bc90ffb368e6f163', 'bd61a246e3f24a999ac68ac683a68d51', '637b6d51b7e24026a4867c4e0730cbd4', 'bf8ec64b00a948bd9789397f795156c8', '0', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('559c406757fd4c98bbd2ce19f8da95c1', '8fbf57556139476ca702fb35c88789df', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'b48a890ef56840ce8c6b2f4ac2e0a060', '0', '2020-03-28 00:38:59', 'admin', '2020-03-28 00:38:59', NULL);
INSERT INTO `scan_result` VALUES ('560cb8b8324646e3ac28168e35fda1c0', 'c4aaa0e83a0c401091dc48849ad96874', '637b6d51b7e24026a4867c4e0730cbd4', '613726cf829744d79ad336907ad1e122', '1', '2020-03-23 20:29:26', 'admin', '2020-03-23 20:29:26', NULL);
INSERT INTO `scan_result` VALUES ('590a70f53fb341dd82abc16d6c92a7bc', '0d9bf6f0a9df47828bde1c80abf3b6bf', '637b6d51b7e24026a4867c4e0730cbd4', '613726cf829744d79ad336907ad1e122', '0', '2020-03-23 20:29:26', 'admin', '2020-03-23 20:29:26', NULL);
INSERT INTO `scan_result` VALUES ('5984d2d309bd420bbb4b50741419a773', '0d9bf6f0a9df47828bde1c80abf3b6bf', '64186ee06d254c5c8a7c734fa43a8cf5', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `scan_result` VALUES ('599409f4748148f180ab79505dcd815e', '0d9bf6f0a9df47828bde1c80abf3b6bf', '090f13633d3d43c5a965531a2045ac41', '613726cf829744d79ad336907ad1e122', '1', '2020-03-23 20:29:24', 'admin', '2020-03-23 20:29:24', NULL);
INSERT INTO `scan_result` VALUES ('5ce392e7ba6641939d2cf0abb98d5c70', '0d9bf6f0a9df47828bde1c80abf3b6bf', '64186ee06d254c5c8a7c734fa43a8cf5', 'e46818719f774add8c23fd313192b5f4', '0', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('5d418e69265a4856a185fd79bb5abc1d', '8bc4bd521b0240d794843cd61aaf848f', '64186ee06d254c5c8a7c734fa43a8cf5', 'e46818719f774add8c23fd313192b5f4', '0', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('5d46bad5360844179034c7fdca227b93', 'c5ef3796336442f1a092d79fa804403a', '64186ee06d254c5c8a7c734fa43a8cf5', '7f61083dcbba4152bec23225a4f33c18', '0', '2020-03-29 14:11:07', 'test', '2020-03-29 14:11:07', NULL);
INSERT INTO `scan_result` VALUES ('5d4e77d1ec0c4df7a63878ee24ec642e', '96af2f88505f4c98bfaceff48b9bcaf0', '090f13633d3d43c5a965531a2045ac41', '613726cf829744d79ad336907ad1e122', '0', '2020-03-23 20:29:24', 'admin', '2020-03-23 20:29:24', NULL);
INSERT INTO `scan_result` VALUES ('5d6d0d7f89104184a28aa897162bd5d5', '96af2f88505f4c98bfaceff48b9bcaf0', '64186ee06d254c5c8a7c734fa43a8cf5', 'b7ec88d044994b909ae44beb11f7f3d8', '1', '2020-03-26 00:12:17', 'admin', '2020-03-26 00:12:17', NULL);
INSERT INTO `scan_result` VALUES ('5da6772483c9485b9d022d093f558e96', '244d47bfc8ee4da590b97dd7f8bccadf', '64186ee06d254c5c8a7c734fa43a8cf5', 'b7ec88d044994b909ae44beb11f7f3d8', '1', '2020-03-26 00:12:17', 'admin', '2020-03-26 00:12:17', NULL);
INSERT INTO `scan_result` VALUES ('5e0783d96c534337b4f924860d215a96', 'c5ef3796336442f1a092d79fa804403a', '637b6d51b7e24026a4867c4e0730cbd4', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('61950d6cc01d4aa0965731591b0ac6db', 'c035ad6eb29045138cfb17c5973f8782', '64186ee06d254c5c8a7c734fa43a8cf5', 'b48a890ef56840ce8c6b2f4ac2e0a060', '1', '2020-03-28 00:38:57', 'admin', '2020-03-28 00:38:57', NULL);
INSERT INTO `scan_result` VALUES ('644e5cec41ca4a58aa143c6b848d13f2', '96af2f88505f4c98bfaceff48b9bcaf0', 'd4df141a59a541f7b9f5654e5c3b0fbe', '7f61083dcbba4152bec23225a4f33c18', '0', '2020-03-29 14:11:10', 'test', '2020-03-29 14:11:10', NULL);
INSERT INTO `scan_result` VALUES ('668b700457a14bf8b97f19023fc00d2b', '244d47bfc8ee4da590b97dd7f8bccadf', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'e46818719f774add8c23fd313192b5f4', '0', '2020-05-31 23:58:55', 'admin', '2020-05-31 23:58:55', NULL);
INSERT INTO `scan_result` VALUES ('678f1e8e5a5f448c9bfbf14a4595189e', 'c4aaa0e83a0c401091dc48849ad96874', '64186ee06d254c5c8a7c734fa43a8cf5', '7f61083dcbba4152bec23225a4f33c18', '1', '2020-03-29 14:11:07', 'test', '2020-03-29 14:11:07', NULL);
INSERT INTO `scan_result` VALUES ('67ea8356b657404db6df2c8921ce0d64', '244d47bfc8ee4da590b97dd7f8bccadf', '090f13633d3d43c5a965531a2045ac41', '613726cf829744d79ad336907ad1e122', '0', '2020-03-23 20:29:24', 'admin', '2020-03-23 20:29:24', NULL);
INSERT INTO `scan_result` VALUES ('69e3cab85e7a4f3cb32a2995cbc1c3b3', '8fbf57556139476ca702fb35c88789df', '637b6d51b7e24026a4867c4e0730cbd4', 'e46818719f774add8c23fd313192b5f4', '0', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('6a24ba27f2494208a0ce1eddd97aaf86', '96af2f88505f4c98bfaceff48b9bcaf0', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'b7ec88d044994b909ae44beb11f7f3d8', '1', '2020-03-26 00:12:20', 'admin', '2020-03-26 00:12:20', NULL);
INSERT INTO `scan_result` VALUES ('6b2d5eb699f74a99b9bc5d1e855dea5a', '96af2f88505f4c98bfaceff48b9bcaf0', '090f13633d3d43c5a965531a2045ac41', 'b7ec88d044994b909ae44beb11f7f3d8', '0', '2020-03-26 00:12:19', 'admin', '2020-03-26 00:12:19', NULL);
INSERT INTO `scan_result` VALUES ('6d3282369c7d4dd1b4df81ee963900e6', 'c4aaa0e83a0c401091dc48849ad96874', '637b6d51b7e24026a4867c4e0730cbd4', 'bf8ec64b00a948bd9789397f795156c8', '0', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('6ddde41463ab42e99220d1a9b71fcecc', '8bc4bd521b0240d794843cd61aaf848f', '637b6d51b7e24026a4867c4e0730cbd4', '7f61083dcbba4152bec23225a4f33c18', '0', '2020-03-29 14:11:11', 'test', '2020-03-29 14:11:11', NULL);
INSERT INTO `scan_result` VALUES ('6e3ac400ae9e4ec79e22df125da207fa', '0d9bf6f0a9df47828bde1c80abf3b6bf', '637b6d51b7e24026a4867c4e0730cbd4', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('6f2f2b98286a46f8b5c8eabd39073822', '703589a4f8e5458495ce0c51909b9ca4', '637b6d51b7e24026a4867c4e0730cbd4', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('7058057d235d4681b79e85194972becf', '8bc4bd521b0240d794843cd61aaf848f', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'b7ec88d044994b909ae44beb11f7f3d8', '1', '2020-03-26 00:12:20', 'admin', '2020-03-26 00:12:20', NULL);
INSERT INTO `scan_result` VALUES ('7309eb7aec274afea7fa6336b596956a', 'bd61a246e3f24a999ac68ac683a68d51', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'e46818719f774add8c23fd313192b5f4', '1', '2020-05-31 23:58:55', 'admin', '2020-05-31 23:58:55', NULL);
INSERT INTO `scan_result` VALUES ('748e8812bedd463899caf669e55449cf', '96af2f88505f4c98bfaceff48b9bcaf0', '64186ee06d254c5c8a7c734fa43a8cf5', 'b48a890ef56840ce8c6b2f4ac2e0a060', '0', '2020-03-28 00:38:57', 'admin', '2020-03-28 00:38:57', NULL);
INSERT INTO `scan_result` VALUES ('74e40fd627154f06b55d0ddde506ede5', '8fbf57556139476ca702fb35c88789df', '090f13633d3d43c5a965531a2045ac41', '613726cf829744d79ad336907ad1e122', '1', '2020-03-23 20:29:23', 'admin', '2020-03-23 20:29:23', NULL);
INSERT INTO `scan_result` VALUES ('753829d34bb94730b8f131e9e7d235d2', '96af2f88505f4c98bfaceff48b9bcaf0', '94692459005f44489d3c5a03313dcc63', 'e46818719f774add8c23fd313192b5f4', '1', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('75840248afae473c808004a56673ed01', 'c035ad6eb29045138cfb17c5973f8782', '637b6d51b7e24026a4867c4e0730cbd4', '7f61083dcbba4152bec23225a4f33c18', '1', '2020-03-29 14:11:10', 'test', '2020-03-29 14:11:10', NULL);
INSERT INTO `scan_result` VALUES ('75a7c558d08440778a0b3e8c77ecc203', '0d9bf6f0a9df47828bde1c80abf3b6bf', '64186ee06d254c5c8a7c734fa43a8cf5', 'b7ec88d044994b909ae44beb11f7f3d8', '1', '2020-03-26 00:12:17', 'admin', '2020-03-26 00:12:17', NULL);
INSERT INTO `scan_result` VALUES ('7641f8e7f3f2405d9c16d29a08443b9c', '96af2f88505f4c98bfaceff48b9bcaf0', '090f13633d3d43c5a965531a2045ac41', '7f61083dcbba4152bec23225a4f33c18', '0', '2020-03-29 14:11:08', 'test', '2020-03-29 14:11:08', NULL);
INSERT INTO `scan_result` VALUES ('767d6a909faa49028c3ab6f90d8ea2cf', 'c035ad6eb29045138cfb17c5973f8782', '64186ee06d254c5c8a7c734fa43a8cf5', '7f61083dcbba4152bec23225a4f33c18', '0', '2020-03-29 14:11:07', 'test', '2020-03-29 14:11:07', NULL);
INSERT INTO `scan_result` VALUES ('771557fe2be54aada7efabe6279c66ba', 'bd61a246e3f24a999ac68ac683a68d51', '637b6d51b7e24026a4867c4e0730cbd4', '7f61083dcbba4152bec23225a4f33c18', '0', '2020-03-29 14:11:11', 'test', '2020-03-29 14:11:11', NULL);
INSERT INTO `scan_result` VALUES ('7978c292c6144ec7be5fb9d5b2ab3f66', 'c035ad6eb29045138cfb17c5973f8782', '637b6d51b7e24026a4867c4e0730cbd4', 'e46818719f774add8c23fd313192b5f4', '0', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('79f3b70b95cd4fcaaba8f3c52c0a93c1', 'c4aaa0e83a0c401091dc48849ad96874', '090f13633d3d43c5a965531a2045ac41', '613726cf829744d79ad336907ad1e122', '0', '2020-03-23 20:29:24', 'admin', '2020-03-23 20:29:24', NULL);
INSERT INTO `scan_result` VALUES ('7a6281e26d7f47d8b6e7f18c3320ff01', '703589a4f8e5458495ce0c51909b9ca4', '637b6d51b7e24026a4867c4e0730cbd4', '613726cf829744d79ad336907ad1e122', '1', '2020-03-23 20:29:25', 'admin', '2020-03-23 20:29:25', NULL);
INSERT INTO `scan_result` VALUES ('7a8cd63976b14219b3caf88f5ede12f0', 'c4aaa0e83a0c401091dc48849ad96874', '637b6d51b7e24026a4867c4e0730cbd4', 'b48a890ef56840ce8c6b2f4ac2e0a060', '1', '2020-03-28 00:39:00', 'admin', '2020-03-28 00:39:00', NULL);
INSERT INTO `scan_result` VALUES ('7b9391f67fa947c9b6528f756269907a', '96af2f88505f4c98bfaceff48b9bcaf0', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'e46818719f774add8c23fd313192b5f4', '0', '2020-05-31 23:58:55', 'admin', '2020-05-31 23:58:55', NULL);
INSERT INTO `scan_result` VALUES ('7d40d6fa2bd24d14bef85777b190758d', '0d9bf6f0a9df47828bde1c80abf3b6bf', 'd4df141a59a541f7b9f5654e5c3b0fbe', '613726cf829744d79ad336907ad1e122', '1', '2020-03-23 20:29:25', 'admin', '2020-03-23 20:29:25', NULL);
INSERT INTO `scan_result` VALUES ('7d7aba9230e44145904109d4a994ff4d', '8fbf57556139476ca702fb35c88789df', '090f13633d3d43c5a965531a2045ac41', 'b7ec88d044994b909ae44beb11f7f3d8', '1', '2020-03-26 00:12:19', 'admin', '2020-03-26 00:12:19', NULL);
INSERT INTO `scan_result` VALUES ('7ec57bd3a48a487ea69bc2d1f8c403e9', '8bc4bd521b0240d794843cd61aaf848f', '090f13633d3d43c5a965531a2045ac41', '7f61083dcbba4152bec23225a4f33c18', '1', '2020-03-29 14:11:08', 'test', '2020-03-29 14:11:08', NULL);
INSERT INTO `scan_result` VALUES ('7f596333463549329995626c79dee4ba', '703589a4f8e5458495ce0c51909b9ca4', '637b6d51b7e24026a4867c4e0730cbd4', 'e46818719f774add8c23fd313192b5f4', '1', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('7fc83931eef049f283d2f1d2f5368e11', 'c035ad6eb29045138cfb17c5973f8782', '94692459005f44489d3c5a03313dcc63', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('80a22f43eba4453aa0d95c0f9765eafb', 'c5ef3796336442f1a092d79fa804403a', '64186ee06d254c5c8a7c734fa43a8cf5', 'e46818719f774add8c23fd313192b5f4', '1', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('83f32d87545a47098b7d623f176184a5', '0d9bf6f0a9df47828bde1c80abf3b6bf', '637b6d51b7e24026a4867c4e0730cbd4', 'b7ec88d044994b909ae44beb11f7f3d8', '1', '2020-03-26 00:12:22', 'admin', '2020-03-26 00:12:22', NULL);
INSERT INTO `scan_result` VALUES ('843444d1494d4b6dab7c9593c3635ee5', 'c4aaa0e83a0c401091dc48849ad96874', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `scan_result` VALUES ('8594b7686cbd4b6a8fdcb8ee4e475468', '244d47bfc8ee4da590b97dd7f8bccadf', '64186ee06d254c5c8a7c734fa43a8cf5', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `scan_result` VALUES ('86330aca0bef4baaa655ab399a8de661', '703589a4f8e5458495ce0c51909b9ca4', '090f13633d3d43c5a965531a2045ac41', 'bf8ec64b00a948bd9789397f795156c8', '0', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('8719e8d91e9246baa8ccfe414073f2b6', '0d9bf6f0a9df47828bde1c80abf3b6bf', '090f13633d3d43c5a965531a2045ac41', 'b48a890ef56840ce8c6b2f4ac2e0a060', '1', '2020-03-28 00:38:58', 'admin', '2020-03-28 00:38:58', NULL);
INSERT INTO `scan_result` VALUES ('87cd5cb200104901a734f58236cad47c', 'c4aaa0e83a0c401091dc48849ad96874', '637b6d51b7e24026a4867c4e0730cbd4', 'b7ec88d044994b909ae44beb11f7f3d8', '0', '2020-03-26 00:12:21', 'admin', '2020-03-26 00:12:21', NULL);
INSERT INTO `scan_result` VALUES ('88acb3ce07374b5eb09872ea250ca472', '8bc4bd521b0240d794843cd61aaf848f', '090f13633d3d43c5a965531a2045ac41', 'b7ec88d044994b909ae44beb11f7f3d8', '1', '2020-03-26 00:12:19', 'admin', '2020-03-26 00:12:19', NULL);
INSERT INTO `scan_result` VALUES ('8930e1f77fb6479aa4353cac254a48d4', '0d9bf6f0a9df47828bde1c80abf3b6bf', 'd4df141a59a541f7b9f5654e5c3b0fbe', '7f61083dcbba4152bec23225a4f33c18', '0', '2020-03-29 14:11:10', 'test', '2020-03-29 14:11:10', NULL);
INSERT INTO `scan_result` VALUES ('8a59bf47f8e04606b086af1c5ff0ba1a', '703589a4f8e5458495ce0c51909b9ca4', '090f13633d3d43c5a965531a2045ac41', '7f61083dcbba4152bec23225a4f33c18', '1', '2020-03-29 14:11:08', 'test', '2020-03-29 14:11:08', NULL);
INSERT INTO `scan_result` VALUES ('8b9dc26458234a8a898e3a2238ecb26e', '96af2f88505f4c98bfaceff48b9bcaf0', '637b6d51b7e24026a4867c4e0730cbd4', '7f61083dcbba4152bec23225a4f33c18', '1', '2020-03-29 14:11:10', 'test', '2020-03-29 14:11:10', NULL);
INSERT INTO `scan_result` VALUES ('8bfae2bfb05d47328212373d3442fcc3', '0d9bf6f0a9df47828bde1c80abf3b6bf', '94692459005f44489d3c5a03313dcc63', 'e46818719f774add8c23fd313192b5f4', '0', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('8d7e51a80d35471ba94238b4265abffe', '96af2f88505f4c98bfaceff48b9bcaf0', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `scan_result` VALUES ('8ef6ea9db4594a9dbe5c93c15cec52a1', 'bd61a246e3f24a999ac68ac683a68d51', '64186ee06d254c5c8a7c734fa43a8cf5', '7f61083dcbba4152bec23225a4f33c18', '0', '2020-03-29 14:11:08', 'test', '2020-03-29 14:11:08', NULL);
INSERT INTO `scan_result` VALUES ('9019dc025f0a40b499b5c89a6ee62db9', '703589a4f8e5458495ce0c51909b9ca4', '090f13633d3d43c5a965531a2045ac41', '613726cf829744d79ad336907ad1e122', '1', '2020-03-23 20:29:23', 'admin', '2020-03-23 20:29:23', NULL);
INSERT INTO `scan_result` VALUES ('908133b78ace4709865ea507cbc39f32', '8fbf57556139476ca702fb35c88789df', 'd4df141a59a541f7b9f5654e5c3b0fbe', '613726cf829744d79ad336907ad1e122', '0', '2020-03-23 20:29:24', 'admin', '2020-03-23 20:29:24', NULL);
INSERT INTO `scan_result` VALUES ('91b30b84ae6f4ba58f49b936f09ceb03', '96af2f88505f4c98bfaceff48b9bcaf0', '94692459005f44489d3c5a03313dcc63', 'bf8ec64b00a948bd9789397f795156c8', '0', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('91f217ecf6304a54a4e42507fd0e6694', '0d9bf6f0a9df47828bde1c80abf3b6bf', '64186ee06d254c5c8a7c734fa43a8cf5', '7f61083dcbba4152bec23225a4f33c18', '1', '2020-03-29 14:11:08', 'test', '2020-03-29 14:11:08', NULL);
INSERT INTO `scan_result` VALUES ('921f03130a4c459e9180a6136e2fcddf', '244d47bfc8ee4da590b97dd7f8bccadf', '637b6d51b7e24026a4867c4e0730cbd4', '7f61083dcbba4152bec23225a4f33c18', '0', '2020-03-29 14:11:10', 'test', '2020-03-29 14:11:10', NULL);
INSERT INTO `scan_result` VALUES ('927ed6169fa24b459c2ced4eadb21a8e', 'bd61a246e3f24a999ac68ac683a68d51', '090f13633d3d43c5a965531a2045ac41', 'b48a890ef56840ce8c6b2f4ac2e0a060', '1', '2020-03-28 00:38:58', 'admin', '2020-03-28 00:38:58', NULL);
INSERT INTO `scan_result` VALUES ('92ba1b3428054384b6a905655d039e07', 'c5ef3796336442f1a092d79fa804403a', '637b6d51b7e24026a4867c4e0730cbd4', 'b48a890ef56840ce8c6b2f4ac2e0a060', '1', '2020-03-28 00:38:59', 'admin', '2020-03-28 00:38:59', NULL);
INSERT INTO `scan_result` VALUES ('92bea8c31cd942e6a6dac0f7eabac483', '8fbf57556139476ca702fb35c88789df', '64186ee06d254c5c8a7c734fa43a8cf5', 'bf8ec64b00a948bd9789397f795156c8', '0', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `scan_result` VALUES ('94b5dbd409894ef0819e3a6f84d9d8e4', '244d47bfc8ee4da590b97dd7f8bccadf', '64186ee06d254c5c8a7c734fa43a8cf5', '7f61083dcbba4152bec23225a4f33c18', '0', '2020-03-29 14:11:07', 'test', '2020-03-29 14:11:07', NULL);
INSERT INTO `scan_result` VALUES ('9583cc203c6d496c9169ad061192528e', '0d9bf6f0a9df47828bde1c80abf3b6bf', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'e46818719f774add8c23fd313192b5f4', '1', '2020-05-31 23:58:55', 'admin', '2020-05-31 23:58:55', NULL);
INSERT INTO `scan_result` VALUES ('965b96907bb94ec18a96d64be3c09fc8', '244d47bfc8ee4da590b97dd7f8bccadf', '637b6d51b7e24026a4867c4e0730cbd4', '613726cf829744d79ad336907ad1e122', '1', '2020-03-23 20:29:26', 'admin', '2020-03-23 20:29:26', NULL);
INSERT INTO `scan_result` VALUES ('96970c2b4b7b4b3291d2d2a3c792cfa0', 'bd61a246e3f24a999ac68ac683a68d51', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'b48a890ef56840ce8c6b2f4ac2e0a060', '1', '2020-03-28 00:38:59', 'admin', '2020-03-28 00:38:59', NULL);
INSERT INTO `scan_result` VALUES ('97f84ea32a464f758d5723bfec4ee3b8', 'c4aaa0e83a0c401091dc48849ad96874', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'b48a890ef56840ce8c6b2f4ac2e0a060', '0', '2020-03-28 00:38:59', 'admin', '2020-03-28 00:38:59', NULL);
INSERT INTO `scan_result` VALUES ('988dbae9fd974143a965c805b8c92f92', '244d47bfc8ee4da590b97dd7f8bccadf', '090f13633d3d43c5a965531a2045ac41', 'b7ec88d044994b909ae44beb11f7f3d8', '0', '2020-03-26 00:12:18', 'admin', '2020-03-26 00:12:18', NULL);
INSERT INTO `scan_result` VALUES ('99293d4def2641edb64643ffade368bc', '244d47bfc8ee4da590b97dd7f8bccadf', '64186ee06d254c5c8a7c734fa43a8cf5', 'b48a890ef56840ce8c6b2f4ac2e0a060', '1', '2020-03-28 00:38:57', 'admin', '2020-03-28 00:38:57', NULL);
INSERT INTO `scan_result` VALUES ('998edd032eaa4dcbb83b7f550e424f5f', '8bc4bd521b0240d794843cd61aaf848f', '090f13633d3d43c5a965531a2045ac41', '613726cf829744d79ad336907ad1e122', '1', '2020-03-23 20:29:23', 'admin', '2020-03-23 20:29:23', NULL);
INSERT INTO `scan_result` VALUES ('9a2944e293f14eb1ace70ae61a6e8047', '703589a4f8e5458495ce0c51909b9ca4', '637b6d51b7e24026a4867c4e0730cbd4', 'b48a890ef56840ce8c6b2f4ac2e0a060', '1', '2020-03-28 00:39:00', 'admin', '2020-03-28 00:39:00', NULL);
INSERT INTO `scan_result` VALUES ('9cb0fdea6db74db5bf94428e7ef5d116', '8bc4bd521b0240d794843cd61aaf848f', '637b6d51b7e24026a4867c4e0730cbd4', 'b7ec88d044994b909ae44beb11f7f3d8', '1', '2020-03-26 00:12:22', 'admin', '2020-03-26 00:12:22', NULL);
INSERT INTO `scan_result` VALUES ('9f868dd122794b39b57b143d9857730e', '8bc4bd521b0240d794843cd61aaf848f', '090f13633d3d43c5a965531a2045ac41', 'b48a890ef56840ce8c6b2f4ac2e0a060', '1', '2020-03-28 00:38:58', 'admin', '2020-03-28 00:38:58', NULL);
INSERT INTO `scan_result` VALUES ('a14ae2eb987144eeaade005646766ccf', '8fbf57556139476ca702fb35c88789df', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `scan_result` VALUES ('a218d071a86243d08109d002cb5521f0', 'c5ef3796336442f1a092d79fa804403a', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'b7ec88d044994b909ae44beb11f7f3d8', '0', '2020-03-26 00:12:19', 'admin', '2020-03-26 00:12:19', NULL);
INSERT INTO `scan_result` VALUES ('a2de16a575ed4d71a3573235cfb189ed', '703589a4f8e5458495ce0c51909b9ca4', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'b48a890ef56840ce8c6b2f4ac2e0a060', '1', '2020-03-28 00:38:59', 'admin', '2020-03-28 00:38:59', NULL);
INSERT INTO `scan_result` VALUES ('a32222a57813445d9522c63c48982c93', 'c5ef3796336442f1a092d79fa804403a', '94692459005f44489d3c5a03313dcc63', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('a4e8f74eee4d4146885276ea61a00ec9', '703589a4f8e5458495ce0c51909b9ca4', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'e46818719f774add8c23fd313192b5f4', '1', '2020-05-31 23:58:55', 'admin', '2020-05-31 23:58:55', NULL);
INSERT INTO `scan_result` VALUES ('a55a6dd409b54ff8af7881e8e6bfbe02', 'bd61a246e3f24a999ac68ac683a68d51', '637b6d51b7e24026a4867c4e0730cbd4', 'e46818719f774add8c23fd313192b5f4', '1', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('a5e3427f6d3b474085094ea32fefa490', '96af2f88505f4c98bfaceff48b9bcaf0', '64186ee06d254c5c8a7c734fa43a8cf5', 'e46818719f774add8c23fd313192b5f4', '1', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('a623f3dfe1a04c93b382765ef2c2c602', '8fbf57556139476ca702fb35c88789df', '090f13633d3d43c5a965531a2045ac41', 'e46818719f774add8c23fd313192b5f4', '0', '2020-05-31 23:58:57', 'admin', '2020-05-31 23:58:57', NULL);
INSERT INTO `scan_result` VALUES ('a8ee57e62b7945778b147e237428d85a', 'c5ef3796336442f1a092d79fa804403a', '637b6d51b7e24026a4867c4e0730cbd4', '7f61083dcbba4152bec23225a4f33c18', '1', '2020-03-29 14:11:10', 'test', '2020-03-29 14:11:10', NULL);
INSERT INTO `scan_result` VALUES ('a93710f4b02247d294a77094b2f6b82b', '8bc4bd521b0240d794843cd61aaf848f', '64186ee06d254c5c8a7c734fa43a8cf5', '613726cf829744d79ad336907ad1e122', '1', '2020-03-23 20:29:26', 'admin', '2020-03-23 20:29:26', NULL);
INSERT INTO `scan_result` VALUES ('aa373e967abf43418cd55499fd8dea68', 'bd61a246e3f24a999ac68ac683a68d51', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'b7ec88d044994b909ae44beb11f7f3d8', '0', '2020-03-26 00:12:21', 'admin', '2020-03-26 00:12:21', NULL);
INSERT INTO `scan_result` VALUES ('ab33b00c48f54343af69b71f628bee16', '8fbf57556139476ca702fb35c88789df', '94692459005f44489d3c5a03313dcc63', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('ab3a990f7afe4dcbb1b3efd5956f58d6', '244d47bfc8ee4da590b97dd7f8bccadf', '64186ee06d254c5c8a7c734fa43a8cf5', 'e46818719f774add8c23fd313192b5f4', '1', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('ab788e28c023404fa184c61aa6f924a1', '703589a4f8e5458495ce0c51909b9ca4', '94692459005f44489d3c5a03313dcc63', 'e46818719f774add8c23fd313192b5f4', '1', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('ac3a2f7b2c5546d6a2dfff39233996eb', '', '', '', '', '2020-04-05 17:24:28', '', '2020-04-05 17:24:28', '');
INSERT INTO `scan_result` VALUES ('ad40942eecaf489d8f5e4d617af9802a', '703589a4f8e5458495ce0c51909b9ca4', '94692459005f44489d3c5a03313dcc63', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('afb10ccf2d414df0910acc3303f3038f', 'c4aaa0e83a0c401091dc48849ad96874', '64186ee06d254c5c8a7c734fa43a8cf5', 'b48a890ef56840ce8c6b2f4ac2e0a060', '1', '2020-03-28 00:38:56', 'admin', '2020-03-28 00:38:56', NULL);
INSERT INTO `scan_result` VALUES ('aff2c1300ff547168dd5ce3a39c97d8e', '8fbf57556139476ca702fb35c88789df', '94692459005f44489d3c5a03313dcc63', 'e46818719f774add8c23fd313192b5f4', '0', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('b0bf6a2904cd411ebde9b24cc300a83b', 'c5ef3796336442f1a092d79fa804403a', '090f13633d3d43c5a965531a2045ac41', 'b7ec88d044994b909ae44beb11f7f3d8', '1', '2020-03-26 00:12:18', 'admin', '2020-03-26 00:12:18', NULL);
INSERT INTO `scan_result` VALUES ('b0d168251cff4b259cd51c5f6e469544', 'c5ef3796336442f1a092d79fa804403a', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'b48a890ef56840ce8c6b2f4ac2e0a060', '1', '2020-03-28 00:38:58', 'admin', '2020-03-28 00:38:58', NULL);
INSERT INTO `scan_result` VALUES ('b13c50a209b740a6807c656cd471ae38', 'c035ad6eb29045138cfb17c5973f8782', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'b7ec88d044994b909ae44beb11f7f3d8', '1', '2020-03-26 00:12:20', 'admin', '2020-03-26 00:12:20', NULL);
INSERT INTO `scan_result` VALUES ('b177b07eab6549f6911c55514ece022a', 'bd61a246e3f24a999ac68ac683a68d51', '090f13633d3d43c5a965531a2045ac41', '613726cf829744d79ad336907ad1e122', '1', '2020-03-23 20:29:24', 'admin', '2020-03-23 20:29:24', NULL);
INSERT INTO `scan_result` VALUES ('b1d2a5cf77d04aac9dd1986696311ee1', 'c4aaa0e83a0c401091dc48849ad96874', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'b7ec88d044994b909ae44beb11f7f3d8', '0', '2020-03-26 00:12:19', 'admin', '2020-03-26 00:12:19', NULL);
INSERT INTO `scan_result` VALUES ('b2fc1e1c4eb648f8afc62699a218e407', '8bc4bd521b0240d794843cd61aaf848f', '64186ee06d254c5c8a7c734fa43a8cf5', 'b48a890ef56840ce8c6b2f4ac2e0a060', '1', '2020-03-28 00:38:57', 'admin', '2020-03-28 00:38:57', NULL);
INSERT INTO `scan_result` VALUES ('b31af2c4fa904040bc9b38d79fd0df8a', 'c035ad6eb29045138cfb17c5973f8782', '64186ee06d254c5c8a7c734fa43a8cf5', 'b7ec88d044994b909ae44beb11f7f3d8', '1', '2020-03-26 00:12:17', 'admin', '2020-03-26 00:12:17', NULL);
INSERT INTO `scan_result` VALUES ('b4e20d9b9e984a90adccf51992ee23fe', '244d47bfc8ee4da590b97dd7f8bccadf', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'b7ec88d044994b909ae44beb11f7f3d8', '0', '2020-03-26 00:12:20', 'admin', '2020-03-26 00:12:20', NULL);
INSERT INTO `scan_result` VALUES ('b57d8e05092946d3ac3722a4cea2dd11', 'bd61a246e3f24a999ac68ac683a68d51', '637b6d51b7e24026a4867c4e0730cbd4', '613726cf829744d79ad336907ad1e122', '1', '2020-03-23 20:29:26', 'admin', '2020-03-23 20:29:26', NULL);
INSERT INTO `scan_result` VALUES ('b606b6bce3434288b3302dc76db4e7ad', 'c035ad6eb29045138cfb17c5973f8782', '64186ee06d254c5c8a7c734fa43a8cf5', 'bf8ec64b00a948bd9789397f795156c8', '0', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `scan_result` VALUES ('b7edca5c77cc4aed80b8d7fb31073e6d', 'bd61a246e3f24a999ac68ac683a68d51', '090f13633d3d43c5a965531a2045ac41', 'bf8ec64b00a948bd9789397f795156c8', '0', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('b82efc256c6d4cc7afca856034629bf1', '0d9bf6f0a9df47828bde1c80abf3b6bf', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'da574626d0aa4ea0a1d988aedc193b7a', '1', '2020-03-29 14:20:49', 'test', '2020-03-29 14:20:49', NULL);
INSERT INTO `scan_result` VALUES ('b8989fed387e40b4bcc331547a84cae6', '0d9bf6f0a9df47828bde1c80abf3b6bf', '090f13633d3d43c5a965531a2045ac41', 'e46818719f774add8c23fd313192b5f4', '1', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('ba0fd773d8cd4c3fa2f37a2df691c540', 'c035ad6eb29045138cfb17c5973f8782', '090f13633d3d43c5a965531a2045ac41', '7f61083dcbba4152bec23225a4f33c18', '0', '2020-03-29 14:11:08', 'test', '2020-03-29 14:11:08', NULL);
INSERT INTO `scan_result` VALUES ('ba69748f90e4482584e567bbc1c82e96', '703589a4f8e5458495ce0c51909b9ca4', 'd4df141a59a541f7b9f5654e5c3b0fbe', '613726cf829744d79ad336907ad1e122', '0', '2020-03-23 20:29:24', 'admin', '2020-03-23 20:29:24', NULL);
INSERT INTO `scan_result` VALUES ('bc937ac8b2d1452b9c2198acb367396b', 'c035ad6eb29045138cfb17c5973f8782', '64186ee06d254c5c8a7c734fa43a8cf5', '613726cf829744d79ad336907ad1e122', '0', '2020-03-23 20:29:27', 'admin', '2020-03-23 20:29:27', NULL);
INSERT INTO `scan_result` VALUES ('be710467b7c940cfba6b816cca2e509a', 'c035ad6eb29045138cfb17c5973f8782', '090f13633d3d43c5a965531a2045ac41', 'b48a890ef56840ce8c6b2f4ac2e0a060', '1', '2020-03-28 00:38:58', 'admin', '2020-03-28 00:38:58', NULL);
INSERT INTO `scan_result` VALUES ('bf9f5243e9974ec4aad9a9aa91152395', '8bc4bd521b0240d794843cd61aaf848f', '64186ee06d254c5c8a7c734fa43a8cf5', 'b7ec88d044994b909ae44beb11f7f3d8', '1', '2020-03-26 00:12:17', 'admin', '2020-03-26 00:12:17', NULL);
INSERT INTO `scan_result` VALUES ('c001619fc0964629939b415c42c299da', '244d47bfc8ee4da590b97dd7f8bccadf', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'b48a890ef56840ce8c6b2f4ac2e0a060', '0', '2020-03-28 00:38:59', 'admin', '2020-03-28 00:38:59', NULL);
INSERT INTO `scan_result` VALUES ('c046939dda8b4bb2abdcde035cf7d9f0', '703589a4f8e5458495ce0c51909b9ca4', '64186ee06d254c5c8a7c734fa43a8cf5', 'b7ec88d044994b909ae44beb11f7f3d8', '1', '2020-03-26 00:12:17', 'admin', '2020-03-26 00:12:17', NULL);
INSERT INTO `scan_result` VALUES ('c30b78945ec242529651b7fbe735e359', 'c035ad6eb29045138cfb17c5973f8782', '637b6d51b7e24026a4867c4e0730cbd4', '613726cf829744d79ad336907ad1e122', '1', '2020-03-23 20:29:26', 'admin', '2020-03-23 20:29:26', NULL);
INSERT INTO `scan_result` VALUES ('c3c5d323ec5348b8bc70712508712dbc', 'c035ad6eb29045138cfb17c5973f8782', '637b6d51b7e24026a4867c4e0730cbd4', 'b7ec88d044994b909ae44beb11f7f3d8', '0', '2020-03-26 00:12:21', 'admin', '2020-03-26 00:12:21', NULL);
INSERT INTO `scan_result` VALUES ('c8ba7120557944958680b0c4962f4d0d', 'bd61a246e3f24a999ac68ac683a68d51', 'd4df141a59a541f7b9f5654e5c3b0fbe', '7f61083dcbba4152bec23225a4f33c18', '0', '2020-03-29 14:11:10', 'test', '2020-03-29 14:11:10', NULL);
INSERT INTO `scan_result` VALUES ('c956ddbb15f34870a6331396a7082e9b', '244d47bfc8ee4da590b97dd7f8bccadf', 'd4df141a59a541f7b9f5654e5c3b0fbe', '613726cf829744d79ad336907ad1e122', '0', '2020-03-23 20:29:25', 'admin', '2020-03-23 20:29:25', NULL);
INSERT INTO `scan_result` VALUES ('cad6f3de8781406e9acab5bdae9c62f0', 'c4aaa0e83a0c401091dc48849ad96874', 'd4df141a59a541f7b9f5654e5c3b0fbe', '613726cf829744d79ad336907ad1e122', '1', '2020-03-23 20:29:25', 'admin', '2020-03-23 20:29:25', NULL);
INSERT INTO `scan_result` VALUES ('cbdc9fbc556143618404c9c88a10a5c3', '96af2f88505f4c98bfaceff48b9bcaf0', '64186ee06d254c5c8a7c734fa43a8cf5', '613726cf829744d79ad336907ad1e122', '1', '2020-03-23 20:29:26', 'admin', '2020-03-23 20:29:26', NULL);
INSERT INTO `scan_result` VALUES ('ce4f645f026d49f5b5963dc2cc6948e0', 'bd61a246e3f24a999ac68ac683a68d51', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'bf8ec64b00a948bd9789397f795156c8', '0', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `scan_result` VALUES ('ce746250336b42088a6aab6285b12571', 'c4aaa0e83a0c401091dc48849ad96874', '090f13633d3d43c5a965531a2045ac41', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:41', 'admin', '2020-06-01 00:01:41', NULL);
INSERT INTO `scan_result` VALUES ('d0c74a0f18f044ddb0d6f9247511919d', '8bc4bd521b0240d794843cd61aaf848f', '64186ee06d254c5c8a7c734fa43a8cf5', '7f61083dcbba4152bec23225a4f33c18', '0', '2020-03-29 14:11:07', 'test', '2020-03-29 14:11:07', NULL);
INSERT INTO `scan_result` VALUES ('d3a51fddf75c468992a67e3eed316101', '8bc4bd521b0240d794843cd61aaf848f', '637b6d51b7e24026a4867c4e0730cbd4', '613726cf829744d79ad336907ad1e122', '1', '2020-03-23 20:29:25', 'admin', '2020-03-23 20:29:25', NULL);
INSERT INTO `scan_result` VALUES ('d3c81b22459743f5aaeef7ad1500754f', '8bc4bd521b0240d794843cd61aaf848f', '637b6d51b7e24026a4867c4e0730cbd4', 'b48a890ef56840ce8c6b2f4ac2e0a060', '0', '2020-03-28 00:39:00', 'admin', '2020-03-28 00:39:00', NULL);
INSERT INTO `scan_result` VALUES ('d480d37d337b4b5090d2027682cd8ebf', 'c035ad6eb29045138cfb17c5973f8782', '637b6d51b7e24026a4867c4e0730cbd4', 'b48a890ef56840ce8c6b2f4ac2e0a060', '0', '2020-03-28 00:39:00', 'admin', '2020-03-28 00:39:00', NULL);
INSERT INTO `scan_result` VALUES ('d57544d825664e208c327b90a22625fe', 'bd61a246e3f24a999ac68ac683a68d51', '94692459005f44489d3c5a03313dcc63', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('d5d63846439a47c1827a9304c1a45109', 'c035ad6eb29045138cfb17c5973f8782', '64186ee06d254c5c8a7c734fa43a8cf5', 'e46818719f774add8c23fd313192b5f4', '0', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('d64586d03a7248ea829becec50d1caea', '8fbf57556139476ca702fb35c88789df', '090f13633d3d43c5a965531a2045ac41', 'bf8ec64b00a948bd9789397f795156c8', '0', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('d6d68a601dd74393b3d455c550b43f8f', '0d9bf6f0a9df47828bde1c80abf3b6bf', '64186ee06d254c5c8a7c734fa43a8cf5', 'b48a890ef56840ce8c6b2f4ac2e0a060', '0', '2020-03-28 00:38:57', 'admin', '2020-03-28 00:38:57', NULL);
INSERT INTO `scan_result` VALUES ('d7ea06bdf45342d98e00fb16437d9226', '8fbf57556139476ca702fb35c88789df', '637b6d51b7e24026a4867c4e0730cbd4', 'b48a890ef56840ce8c6b2f4ac2e0a060', '0', '2020-03-28 00:39:00', 'admin', '2020-03-28 00:39:00', NULL);
INSERT INTO `scan_result` VALUES ('d86e5eacd722437a892f50eca13ce57b', 'c4aaa0e83a0c401091dc48849ad96874', '090f13633d3d43c5a965531a2045ac41', 'b7ec88d044994b909ae44beb11f7f3d8', '0', '2020-03-26 00:12:18', 'admin', '2020-03-26 00:12:18', NULL);
INSERT INTO `scan_result` VALUES ('d8892bf022c34e1da6a73fcd6979f6fd', 'c4aaa0e83a0c401091dc48849ad96874', '637b6d51b7e24026a4867c4e0730cbd4', 'e46818719f774add8c23fd313192b5f4', '1', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('d8aa49605a14405baa21696c02152a1c', '244d47bfc8ee4da590b97dd7f8bccadf', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'bf8ec64b00a948bd9789397f795156c8', '0', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `scan_result` VALUES ('d8e85e9ee1824196ab678bb911730364', 'c4aaa0e83a0c401091dc48849ad96874', '090f13633d3d43c5a965531a2045ac41', 'b48a890ef56840ce8c6b2f4ac2e0a060', '0', '2020-03-28 00:38:57', 'admin', '2020-03-28 00:38:57', NULL);
INSERT INTO `scan_result` VALUES ('da86c4dd6e334297830a8fccbb8168d9', '703589a4f8e5458495ce0c51909b9ca4', '64186ee06d254c5c8a7c734fa43a8cf5', 'b48a890ef56840ce8c6b2f4ac2e0a060', '0', '2020-03-28 00:38:57', 'admin', '2020-03-28 00:38:57', NULL);
INSERT INTO `scan_result` VALUES ('da958d93497745b6bacb20e80fc4e51a', '96af2f88505f4c98bfaceff48b9bcaf0', '637b6d51b7e24026a4867c4e0730cbd4', 'b7ec88d044994b909ae44beb11f7f3d8', '0', '2020-03-26 00:12:22', 'admin', '2020-03-26 00:12:22', NULL);
INSERT INTO `scan_result` VALUES ('db72a5f7d49c418d85288acb2c50b063', '8fbf57556139476ca702fb35c88789df', 'd4df141a59a541f7b9f5654e5c3b0fbe', '7f61083dcbba4152bec23225a4f33c18', '0', '2020-03-29 14:11:10', 'test', '2020-03-29 14:11:10', NULL);
INSERT INTO `scan_result` VALUES ('db8c016eeb6b452ab81200e5ca1e736f', '703589a4f8e5458495ce0c51909b9ca4', 'd4df141a59a541f7b9f5654e5c3b0fbe', '7f61083dcbba4152bec23225a4f33c18', '0', '2020-03-29 14:11:09', 'test', '2020-03-29 14:11:09', NULL);
INSERT INTO `scan_result` VALUES ('dc12cf1dd8684d53aa5f73e0dc6c1c6d', '8bc4bd521b0240d794843cd61aaf848f', '64186ee06d254c5c8a7c734fa43a8cf5', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('dd57f13073f94cb0b3778806240438cc', 'c5ef3796336442f1a092d79fa804403a', '090f13633d3d43c5a965531a2045ac41', '613726cf829744d79ad336907ad1e122', '0', '2020-03-23 20:29:24', 'admin', '2020-03-23 20:29:24', NULL);
INSERT INTO `scan_result` VALUES ('ddbe1c33932245e2a65140cf51d7b0e1', 'bd61a246e3f24a999ac68ac683a68d51', '090f13633d3d43c5a965531a2045ac41', '7f61083dcbba4152bec23225a4f33c18', '1', '2020-03-29 14:11:09', 'test', '2020-03-29 14:11:09', NULL);
INSERT INTO `scan_result` VALUES ('df77e1b07b3745de81c0bb6f7d800a82', '8fbf57556139476ca702fb35c88789df', '637b6d51b7e24026a4867c4e0730cbd4', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('dfba58bc672044c7afa4ced878b8628e', '703589a4f8e5458495ce0c51909b9ca4', '64186ee06d254c5c8a7c734fa43a8cf5', '7f61083dcbba4152bec23225a4f33c18', '1', '2020-03-29 14:11:07', 'test', '2020-03-29 14:11:07', NULL);
INSERT INTO `scan_result` VALUES ('e0c06ed87de74f388eb59b2b535014be', 'c035ad6eb29045138cfb17c5973f8782', 'd4df141a59a541f7b9f5654e5c3b0fbe', '7f61083dcbba4152bec23225a4f33c18', '1', '2020-03-29 14:11:09', 'test', '2020-03-29 14:11:09', NULL);
INSERT INTO `scan_result` VALUES ('e0e2baa18ff64d6ead60443431971923', '244d47bfc8ee4da590b97dd7f8bccadf', '090f13633d3d43c5a965531a2045ac41', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('e145168e0e31413dabd60557b2da1164', '703589a4f8e5458495ce0c51909b9ca4', '637b6d51b7e24026a4867c4e0730cbd4', '7f61083dcbba4152bec23225a4f33c18', '1', '2020-03-29 14:11:10', 'test', '2020-03-29 14:11:10', NULL);
INSERT INTO `scan_result` VALUES ('e168286948654c7a956dca2c999f5b9c', 'c5ef3796336442f1a092d79fa804403a', '64186ee06d254c5c8a7c734fa43a8cf5', 'b48a890ef56840ce8c6b2f4ac2e0a060', '1', '2020-03-28 00:38:56', 'admin', '2020-03-28 00:38:56', NULL);
INSERT INTO `scan_result` VALUES ('e1add6849335438aa7bba4aae38c11a0', '244d47bfc8ee4da590b97dd7f8bccadf', '090f13633d3d43c5a965531a2045ac41', 'b48a890ef56840ce8c6b2f4ac2e0a060', '1', '2020-03-28 00:38:58', 'admin', '2020-03-28 00:38:58', NULL);
INSERT INTO `scan_result` VALUES ('e2f72c2327934be48378371a93be15e1', '0d9bf6f0a9df47828bde1c80abf3b6bf', '090f13633d3d43c5a965531a2045ac41', 'b7ec88d044994b909ae44beb11f7f3d8', '1', '2020-03-26 00:12:19', 'admin', '2020-03-26 00:12:19', NULL);
INSERT INTO `scan_result` VALUES ('e361efe8b53a4eb7832f33aa5e0c4671', '96af2f88505f4c98bfaceff48b9bcaf0', '637b6d51b7e24026a4867c4e0730cbd4', '613726cf829744d79ad336907ad1e122', '0', '2020-03-23 20:29:25', 'admin', '2020-03-23 20:29:25', NULL);
INSERT INTO `scan_result` VALUES ('e3872f13496a4334bfe9f8715202cc35', '96af2f88505f4c98bfaceff48b9bcaf0', '090f13633d3d43c5a965531a2045ac41', 'b48a890ef56840ce8c6b2f4ac2e0a060', '1', '2020-03-28 00:38:58', 'admin', '2020-03-28 00:38:58', NULL);
INSERT INTO `scan_result` VALUES ('e3b065724fb145dbb93c50a4e034ff1d', '8bc4bd521b0240d794843cd61aaf848f', '090f13633d3d43c5a965531a2045ac41', 'bf8ec64b00a948bd9789397f795156c8', '0', '2020-06-01 00:01:41', 'admin', '2020-06-01 00:01:41', NULL);
INSERT INTO `scan_result` VALUES ('e4547d0984a34bec80a2047f752c447a', 'c4aaa0e83a0c401091dc48849ad96874', '94692459005f44489d3c5a03313dcc63', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('e6269e4027c844a1af783b7a49c371b1', '8fbf57556139476ca702fb35c88789df', '64186ee06d254c5c8a7c734fa43a8cf5', 'b48a890ef56840ce8c6b2f4ac2e0a060', '0', '2020-03-28 00:38:57', 'admin', '2020-03-28 00:38:57', NULL);
INSERT INTO `scan_result` VALUES ('e75b452b8df641148078875e1416f084', '703589a4f8e5458495ce0c51909b9ca4', '64186ee06d254c5c8a7c734fa43a8cf5', 'e46818719f774add8c23fd313192b5f4', '1', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('e7baaca801df45bfae7eca394ae27bcc', '0d9bf6f0a9df47828bde1c80abf3b6bf', '64186ee06d254c5c8a7c734fa43a8cf5', '613726cf829744d79ad336907ad1e122', '0', '2020-03-23 20:29:27', 'admin', '2020-03-23 20:29:27', NULL);
INSERT INTO `scan_result` VALUES ('ea3e98e1edae47db80e8fda8eda2b7e4', '244d47bfc8ee4da590b97dd7f8bccadf', '94692459005f44489d3c5a03313dcc63', 'e46818719f774add8c23fd313192b5f4', '0', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('eb320f5c842a433b8595b46e7486eff1', 'c5ef3796336442f1a092d79fa804403a', '64186ee06d254c5c8a7c734fa43a8cf5', '613726cf829744d79ad336907ad1e122', '0', '2020-03-23 20:29:27', 'admin', '2020-03-23 20:29:27', NULL);
INSERT INTO `scan_result` VALUES ('eba8ccf7f1114e37b24344d6735bc721', '96af2f88505f4c98bfaceff48b9bcaf0', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'b48a890ef56840ce8c6b2f4ac2e0a060', '1', '2020-03-28 00:38:59', 'admin', '2020-03-28 00:38:59', NULL);
INSERT INTO `scan_result` VALUES ('ebca6cc3023242d188c91bc64dd0ec07', '244d47bfc8ee4da590b97dd7f8bccadf', '64186ee06d254c5c8a7c734fa43a8cf5', '613726cf829744d79ad336907ad1e122', '0', '2020-03-23 20:29:27', 'admin', '2020-03-23 20:29:27', NULL);
INSERT INTO `scan_result` VALUES ('ecfbdcb6694448909c51e2bbe80d4e89', '8fbf57556139476ca702fb35c88789df', '090f13633d3d43c5a965531a2045ac41', '7f61083dcbba4152bec23225a4f33c18', '1', '2020-03-29 14:11:09', 'test', '2020-03-29 14:11:09', NULL);
INSERT INTO `scan_result` VALUES ('ed5bcd170caa442c8d381a3fac876ceb', 'c4aaa0e83a0c401091dc48849ad96874', 'd4df141a59a541f7b9f5654e5c3b0fbe', '7f61083dcbba4152bec23225a4f33c18', '1', '2020-03-29 14:11:09', 'test', '2020-03-29 14:11:09', NULL);
INSERT INTO `scan_result` VALUES ('ed8b9c3b4653452b917280680b501d1c', 'c5ef3796336442f1a092d79fa804403a', '637b6d51b7e24026a4867c4e0730cbd4', '613726cf829744d79ad336907ad1e122', '0', '2020-03-23 20:29:26', 'admin', '2020-03-23 20:29:26', NULL);
INSERT INTO `scan_result` VALUES ('efc3ec3ec25c4421a6e6c1d257545ef4', 'c4aaa0e83a0c401091dc48849ad96874', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'e46818719f774add8c23fd313192b5f4', '1', '2020-05-31 23:58:55', 'admin', '2020-05-31 23:58:55', NULL);
INSERT INTO `scan_result` VALUES ('f1af1086210c44ed9edbe29ace46eea5', 'c5ef3796336442f1a092d79fa804403a', '64186ee06d254c5c8a7c734fa43a8cf5', 'bf8ec64b00a948bd9789397f795156c8', '0', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `scan_result` VALUES ('f1c34b0d6a5f43ae99d9eb552498a87f', '8bc4bd521b0240d794843cd61aaf848f', '637b6d51b7e24026a4867c4e0730cbd4', 'bf8ec64b00a948bd9789397f795156c8', '0', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('f1ee11b492c14002a6bfde14e07e9d4e', '96af2f88505f4c98bfaceff48b9bcaf0', '64186ee06d254c5c8a7c734fa43a8cf5', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `scan_result` VALUES ('f2db2a17377c4cb98ee5196a5dffa82e', 'c035ad6eb29045138cfb17c5973f8782', '94692459005f44489d3c5a03313dcc63', 'e46818719f774add8c23fd313192b5f4', '1', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('f5a243c9da684aba93232a3d003445e8', '96af2f88505f4c98bfaceff48b9bcaf0', '090f13633d3d43c5a965531a2045ac41', 'e46818719f774add8c23fd313192b5f4', '1', '2020-05-31 23:58:57', 'admin', '2020-05-31 23:58:57', NULL);
INSERT INTO `scan_result` VALUES ('f5a59059b88d4acd84f7b31eb45259ec', '0d9bf6f0a9df47828bde1c80abf3b6bf', 'd4df141a59a541f7b9f5654e5c3b0fbe', 'b7ec88d044994b909ae44beb11f7f3d8', '1', '2020-03-26 00:12:20', 'admin', '2020-03-26 00:12:20', NULL);
INSERT INTO `scan_result` VALUES ('f5f4fb5055664cfabd56d0421a90caba', '244d47bfc8ee4da590b97dd7f8bccadf', '637b6d51b7e24026a4867c4e0730cbd4', 'b48a890ef56840ce8c6b2f4ac2e0a060', '1', '2020-03-28 00:39:00', 'admin', '2020-03-28 00:39:00', NULL);
INSERT INTO `scan_result` VALUES ('f6a98e882ba54ac38ae279684e2bdf4e', '96af2f88505f4c98bfaceff48b9bcaf0', '637b6d51b7e24026a4867c4e0730cbd4', 'e46818719f774add8c23fd313192b5f4', '1', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('f71bacbc7fd544d994445775e500389c', '244d47bfc8ee4da590b97dd7f8bccadf', '090f13633d3d43c5a965531a2045ac41', 'e46818719f774add8c23fd313192b5f4', '0', '2020-05-31 23:58:57', 'admin', '2020-05-31 23:58:57', NULL);
INSERT INTO `scan_result` VALUES ('f86da168248f40a781c6b28c1ddc5fee', 'c5ef3796336442f1a092d79fa804403a', '637b6d51b7e24026a4867c4e0730cbd4', 'e46818719f774add8c23fd313192b5f4', '1', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `scan_result` VALUES ('f8b9a86973dc48338ce2f117c99ada3d', '0d9bf6f0a9df47828bde1c80abf3b6bf', '090f13633d3d43c5a965531a2045ac41', '7f61083dcbba4152bec23225a4f33c18', '1', '2020-03-29 14:11:09', 'test', '2020-03-29 14:11:09', NULL);
INSERT INTO `scan_result` VALUES ('f94bfc7f3ffe4bd6b3dde46128c08bb2', 'c5ef3796336442f1a092d79fa804403a', '637b6d51b7e24026a4867c4e0730cbd4', 'b7ec88d044994b909ae44beb11f7f3d8', '0', '2020-03-26 00:12:21', 'admin', '2020-03-26 00:12:21', NULL);
INSERT INTO `scan_result` VALUES ('f9e19ae1c50c44869c37e0f5258f6b35', 'c035ad6eb29045138cfb17c5973f8782', '090f13633d3d43c5a965531a2045ac41', 'bf8ec64b00a948bd9789397f795156c8', '0', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('fa8bff6b803a44598e521424a469b868', 'c5ef3796336442f1a092d79fa804403a', '090f13633d3d43c5a965531a2045ac41', '7f61083dcbba4152bec23225a4f33c18', '1', '2020-03-29 14:11:08', 'test', '2020-03-29 14:11:08', NULL);
INSERT INTO `scan_result` VALUES ('fb0ff169c93c4e5ab525d5e9d0d9e9b7', '96af2f88505f4c98bfaceff48b9bcaf0', '64186ee06d254c5c8a7c734fa43a8cf5', '7f61083dcbba4152bec23225a4f33c18', '1', '2020-03-29 14:11:07', 'test', '2020-03-29 14:11:07', NULL);
INSERT INTO `scan_result` VALUES ('fb565fad8558419293e85ecac2fc042b', '8fbf57556139476ca702fb35c88789df', '64186ee06d254c5c8a7c734fa43a8cf5', 'b7ec88d044994b909ae44beb11f7f3d8', '1', '2020-03-26 00:12:17', 'admin', '2020-03-26 00:12:17', NULL);
INSERT INTO `scan_result` VALUES ('fbaced0209e84e38a3760b37f481ef70', 'c5ef3796336442f1a092d79fa804403a', '090f13633d3d43c5a965531a2045ac41', 'bf8ec64b00a948bd9789397f795156c8', '1', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('fc18689e19ec42d7ad3e08b01a769331', '703589a4f8e5458495ce0c51909b9ca4', '090f13633d3d43c5a965531a2045ac41', 'b48a890ef56840ce8c6b2f4ac2e0a060', '1', '2020-03-28 00:38:58', 'admin', '2020-03-28 00:38:58', NULL);
INSERT INTO `scan_result` VALUES ('fd5673f376914c63b45ac8f8f3877441', 'c4aaa0e83a0c401091dc48849ad96874', '64186ee06d254c5c8a7c734fa43a8cf5', '613726cf829744d79ad336907ad1e122', '0', '2020-03-23 20:29:26', 'admin', '2020-03-23 20:29:26', NULL);
INSERT INTO `scan_result` VALUES ('febc96381e2d4da9b6c00ae5751dcf8f', '96af2f88505f4c98bfaceff48b9bcaf0', 'd4df141a59a541f7b9f5654e5c3b0fbe', '613726cf829744d79ad336907ad1e122', '0', '2020-03-23 20:29:24', 'admin', '2020-03-23 20:29:24', NULL);
INSERT INTO `scan_result` VALUES ('ff12ecd63e1b413783039104f06a0c0c', 'c4aaa0e83a0c401091dc48849ad96874', '64186ee06d254c5c8a7c734fa43a8cf5', 'bf8ec64b00a948bd9789397f795156c8', '0', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `scan_result` VALUES ('ff93baa670f34dffa3d9425898831d15', '8bc4bd521b0240d794843cd61aaf848f', '637b6d51b7e24026a4867c4e0730cbd4', 'e46818719f774add8c23fd313192b5f4', '0', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task`  (
  `task_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '任务ID',
  `task_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '任务名称',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '任务描述',
  `status` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '任务状态',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`task_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of task
-- ----------------------------
INSERT INTO `task` VALUES ('293a9c05eabd4efea1e23df26ac48d4f', '[2020-03-26 00:11:56]日常任务', '[2020-03-26 00:11:56]日常任务', '1', '2020-03-26 00:12:09', 'admin', '2020-03-26 00:12:09', 'admin', NULL);
INSERT INTO `task` VALUES ('427a91f7a1894a3389c1a06faa303810', '[2020-04-04 21:24:56]日常任务', '[2020-04-04 21:24:56]日常任务', '1', '2020-04-04 21:24:57', 'admin', '2020-04-04 21:24:57', 'admin', NULL);
INSERT INTO `task` VALUES ('42e58066eb654c99a331da386836235c', '[2020-03-22 22:59:18]日常任务', '[2020-03-22 22:59:18]日常任务', '1', '2020-03-22 22:59:38', 'admin', '2020-03-22 22:59:38', 'admin', NULL);
INSERT INTO `task` VALUES ('5a529fba108640f5b8590104d7279825', '[2020-03-22 18:05:38]日常任务', '[2020-03-22 18:05:38]日常任务', '1', '2020-03-22 18:05:47', 'test', '2020-03-22 18:05:47', 'test', NULL);
INSERT INTO `task` VALUES ('5f6ce4a79fe9423fb0c4a1a3c4b61774', '[2020-03-31 00:14:09]日常任务', '[2020-03-31 00:14:09]日常任务', '1', '2020-03-31 00:14:11', 'admin', '2020-03-31 00:14:11', 'admin', NULL);
INSERT INTO `task` VALUES ('6812239f2a304f65954e0384fcbbbf83', '[2020-03-31 00:14:03]日常任务', '[2020-03-31 00:14:03]日常任务', '1', '2020-03-31 00:14:06', 'admin', '2020-03-31 00:14:06', 'admin', NULL);
INSERT INTO `task` VALUES ('7fa93d9177f64b45a8ec72486ee78b21', '[2020-03-31 00:14:12]日常任务', '[2020-03-31 00:14:12]日常任务', '1', '2020-03-31 00:14:16', 'admin', '2020-03-31 00:14:16', 'admin', NULL);
INSERT INTO `task` VALUES ('9dd4a313ed414dfe9e2db85e0de831c3', '[2020-03-31 00:13:58]日常任务', '[2020-03-31 00:13:58]日常任务', '1', '2020-03-31 00:14:00', 'admin', '2020-03-31 00:14:00', 'admin', NULL);
INSERT INTO `task` VALUES ('a2a031ee4e0b41598a91d3652f8dd316', '[2020-04-29 22:17:41]日常任务', '[2020-04-29 22:17:41]日常任务', '1', '2020-04-29 22:17:44', 'admin', '2020-04-29 22:17:44', 'admin', NULL);
INSERT INTO `task` VALUES ('a3ce24ad8d264274a15ec16817b2531c', '[2020-03-31 00:11:01]日常任务', '[2020-03-31 00:11:01]日常任务', '1', '2020-03-31 00:11:02', 'admin', '2020-03-31 00:11:02', 'admin', NULL);
INSERT INTO `task` VALUES ('b3fcf8b630e94f30a789e725bf62fd9c', '[2020-03-31 00:04:21]日常任务', '[2020-03-31 00:04:21]日常任务', '1', '2020-03-31 00:04:46', 'admin', '2020-03-31 00:04:46', 'admin', NULL);
INSERT INTO `task` VALUES ('cb3bb06daaac4ecba4e7b3dda936277f', '[2020-03-22 18:10:19]日常任务', '[2020-03-22 18:10:19]日常任务', '1', '2020-03-22 18:10:23', 'admin', '2020-03-22 18:10:23', 'admin', NULL);
INSERT INTO `task` VALUES ('d9c1cc91b8684c6ebc41fcb954b6ad3e', '[2020-03-31 00:09:41]日常任务', '[2020-03-31 00:09:41]日常任务', '1', '2020-03-31 00:09:43', 'admin', '2020-03-31 00:09:43', 'admin', NULL);
INSERT INTO `task` VALUES ('e93027f592a24854a9d64702d9ff1112', '[2020-03-31 00:14:12]日常任务', '[2020-03-31 00:14:12]日常任务', '1', '2020-03-31 00:14:14', 'admin', '2020-03-31 00:14:14', 'admin', NULL);
INSERT INTO `task` VALUES ('e9315e4527e24400a4d3ceb79870c7c0', '[2020-05-31 23:58:06]日常任务', '[2020-05-31 23:58:06]日常任务', '1', '2020-05-31 23:58:45', 'admin', '2020-05-31 23:58:45', 'admin', NULL);
INSERT INTO `task` VALUES ('f71f316ecbfa4bf395cef4040e265adc', '[2020-03-31 00:14:12]日常任务', '[2020-03-31 00:14:12]日常任务', '1', '2020-03-31 00:14:18', 'admin', '2020-03-31 00:14:18', 'admin', NULL);
INSERT INTO `task` VALUES ('f87638d391a34ca58d6880a77697670d', '[2020-03-31 00:11:07]日常任务', '[2020-03-31 00:11:07]日常任务', '1', '2020-03-31 00:11:09', 'admin', '2020-03-31 00:11:09', 'admin', NULL);

-- ----------------------------
-- Table structure for task_attr
-- ----------------------------
DROP TABLE IF EXISTS `task_attr`;
CREATE TABLE `task_attr`  (
  `task_attr_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务属性ID',
  `task_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务ID',
  `task_attr_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务属性名',
  `task_attr_value` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务属性值',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`task_attr_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of task_attr
-- ----------------------------
INSERT INTO `task_attr` VALUES ('027666272ae843a9afff38ba1399c1c4', 'e9315e4527e24400a4d3ceb79870c7c0', 'asset', 'd4df141a59a541f7b9f5654e5c3b0fbe', '2020-05-31 23:58:45', 'admin', '2020-05-31 23:58:45', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('072f99bc55c341d5a95a9cf0442f682b', '293a9c05eabd4efea1e23df26ac48d4f', 'asset', '64186ee06d254c5c8a7c734fa43a8cf5', '2020-03-26 00:12:09', 'admin', '2020-03-26 00:12:09', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('1722d01a384845dda21f6843886077a1', 'f87638d391a34ca58d6880a77697670d', 'cycle', '0', '2020-03-31 00:11:09', 'admin', '2020-03-31 00:11:09', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('1940660d01e742ba88955090672b0f2e', 'e9315e4527e24400a4d3ceb79870c7c0', 'asset', '64186ee06d254c5c8a7c734fa43a8cf5', '2020-05-31 23:58:45', 'admin', '2020-05-31 23:58:45', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('1ba11760acda42cf97d4500613402712', '293a9c05eabd4efea1e23df26ac48d4f', 'bug', 'c5ef3796336442f1a092d79fa804403a', '2020-03-26 00:12:09', 'admin', '2020-03-26 00:12:09', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('20bb838b847b4806a7aa43624ec225f5', 'cb3bb06daaac4ecba4e7b3dda936277f', 'scan_type', '', '2020-03-22 18:10:23', 'admin', '2020-03-22 18:10:23', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('216e81e991a0474bb125847ea04ed262', 'b3fcf8b630e94f30a789e725bf62fd9c', 'bug', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-03-31 00:04:46', 'admin', '2020-03-31 00:04:46', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('25172fe4158c4e079d47600d65f18f0e', 'b3fcf8b630e94f30a789e725bf62fd9c', 'scan_type', '090f13633d3d43c5a965531a2045ac41,637b6d51b7e24026a4867c4e0730cbd4,64186ee06d254c5c8a7c734fa43a8cf5,94692459005f44489d3c5a03313dcc63,d4df141a59a541f7b9f5654e5c3b0fbe', '2020-03-31 00:04:46', 'admin', '2020-03-31 00:04:46', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('2545d8b7e9084a839f9812b7e0855fd3', '293a9c05eabd4efea1e23df26ac48d4f', 'bug', 'c4aaa0e83a0c401091dc48849ad96874', '2020-03-26 00:12:09', 'admin', '2020-03-26 00:12:09', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('2c30820e00c74c3993416e1df4bde14f', '9dd4a313ed414dfe9e2db85e0de831c3', 'scan_type', '', '2020-03-31 00:14:00', 'admin', '2020-03-31 00:14:00', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('2cae8654e6ad4ec295a68ca40118e3c8', 'e9315e4527e24400a4d3ceb79870c7c0', 'bug', 'bd61a246e3f24a999ac68ac683a68d51', '2020-05-31 23:58:45', 'admin', '2020-05-31 23:58:45', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('2d02b7246205416caf0e067b6996dfb6', 'e9315e4527e24400a4d3ceb79870c7c0', 'asset', '637b6d51b7e24026a4867c4e0730cbd4', '2020-05-31 23:58:45', 'admin', '2020-05-31 23:58:45', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('2e2000c349db46cc8488cb1cda695660', 'f71f316ecbfa4bf395cef4040e265adc', 'scan_type', '', '2020-03-31 00:14:18', 'admin', '2020-03-31 00:14:18', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('305ae07e741d47c3a194e74a3ff0c199', 'b3fcf8b630e94f30a789e725bf62fd9c', 'asset', '090f13633d3d43c5a965531a2045ac41', '2020-03-31 00:04:46', 'admin', '2020-03-31 00:04:46', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('3446fb0a77124c67aa13b9c299ae39e3', '293a9c05eabd4efea1e23df26ac48d4f', 'bug', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-03-26 00:12:09', 'admin', '2020-03-26 00:12:09', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('3987c46ddcee4065afdd45f2ac0192ad', '293a9c05eabd4efea1e23df26ac48d4f', 'bug', '703589a4f8e5458495ce0c51909b9ca4', '2020-03-26 00:12:09', 'admin', '2020-03-26 00:12:09', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('3ae56970a407462788b6534bec318d8a', '42e58066eb654c99a331da386836235c', 'bug', '8fbf57556139476ca702fb35c88789df', '2020-03-22 22:59:38', 'admin', '2020-03-22 22:59:38', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('4efc1b01945a4c0f95af8e5a2c0cff8d', '42e58066eb654c99a331da386836235c', 'bug', '703589a4f8e5458495ce0c51909b9ca4', '2020-03-22 22:59:38', 'admin', '2020-03-22 22:59:38', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('4f2b5107591b497fb62e42b47b27d824', 'a2a031ee4e0b41598a91d3652f8dd316', 'cycle', '0', '2020-04-29 22:17:44', 'admin', '2020-04-29 22:17:44', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('5154780efbad45728827b0ff92c2b6e0', 'a3ce24ad8d264274a15ec16817b2531c', 'report_template', '0', '2020-03-31 00:11:02', 'admin', '2020-03-31 00:11:02', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('51b665fb26734e1d9fc13a9c64e043ce', 'b3fcf8b630e94f30a789e725bf62fd9c', 'bug', 'c5ef3796336442f1a092d79fa804403a', '2020-03-31 00:04:46', 'admin', '2020-03-31 00:04:46', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('570db8ab438040f4b815eb52126db476', '427a91f7a1894a3389c1a06faa303810', 'cycle', '0', '2020-04-04 21:24:57', 'admin', '2020-04-04 21:24:57', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('5a8fe74a29b442bcb04feac9f808c27b', 'e9315e4527e24400a4d3ceb79870c7c0', 'cycle', '0', '2020-05-31 23:58:45', 'admin', '2020-05-31 23:58:45', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('5c907c77975c49a7ac97684dbd983581', 'e9315e4527e24400a4d3ceb79870c7c0', 'bug', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-05-31 23:58:45', 'admin', '2020-05-31 23:58:45', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('5f57ab63eeca42d09e47bd012857cd9d', 'b3fcf8b630e94f30a789e725bf62fd9c', 'bug', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-31 00:04:46', 'admin', '2020-03-31 00:04:46', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('659f893b7fe5456499e12cc34c2dd712', '42e58066eb654c99a331da386836235c', 'bug', '8bc4bd521b0240d794843cd61aaf848f', '2020-03-22 22:59:38', 'admin', '2020-03-22 22:59:38', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('683c215e556c49e4b0d6b38d5fb2c8ac', '5f6ce4a79fe9423fb0c4a1a3c4b61774', 'scan_type', '', '2020-03-31 00:14:11', 'admin', '2020-03-31 00:14:11', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('6938be470d6b4c7889d87ded2adc9097', '42e58066eb654c99a331da386836235c', 'bug', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-03-22 22:59:38', 'admin', '2020-03-22 22:59:38', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('69f3bfd3e195455fb94e1f3d3713eb7b', '293a9c05eabd4efea1e23df26ac48d4f', 'bug', 'c035ad6eb29045138cfb17c5973f8782', '2020-03-26 00:12:09', 'admin', '2020-03-26 00:12:09', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('69f6e25484c947948edf277b923844a6', 'e9315e4527e24400a4d3ceb79870c7c0', 'bug', 'c035ad6eb29045138cfb17c5973f8782', '2020-05-31 23:58:45', 'admin', '2020-05-31 23:58:45', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('6e3e9afd669b414abd9176f418d88a26', 'd9c1cc91b8684c6ebc41fcb954b6ad3e', 'cycle', '0', '2020-03-31 00:09:43', 'admin', '2020-03-31 00:09:43', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('6f060220404d44aa8c4a91aec447e4b9', '6812239f2a304f65954e0384fcbbbf83', 'report_template', '0', '2020-03-31 00:14:06', 'admin', '2020-03-31 00:14:06', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('6f80200be5d5439dbf5e5a2658192d8a', 'cb3bb06daaac4ecba4e7b3dda936277f', 'report_template', '0', '2020-03-22 18:10:23', 'admin', '2020-03-22 18:10:23', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('73d0ab89e62948bbba933e23658709e2', '6812239f2a304f65954e0384fcbbbf83', 'cycle', '0', '2020-03-31 00:14:06', 'admin', '2020-03-31 00:14:06', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('79dd071d78e8492894463ea5d67ee245', '293a9c05eabd4efea1e23df26ac48d4f', 'cycle', '0', '2020-03-26 00:12:09', 'admin', '2020-03-26 00:12:09', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('7ce53e2094224dce8d63a454a1df7f2e', 'b3fcf8b630e94f30a789e725bf62fd9c', 'bug', '703589a4f8e5458495ce0c51909b9ca4', '2020-03-31 00:04:46', 'admin', '2020-03-31 00:04:46', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('7ce63fe367c747dcaadc89f7ff64b174', '7fa93d9177f64b45a8ec72486ee78b21', 'report_template', '0', '2020-03-31 00:14:16', 'admin', '2020-03-31 00:14:16', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('7e30c9c2e89b459ebc26af9eb53b719e', '293a9c05eabd4efea1e23df26ac48d4f', 'asset', '090f13633d3d43c5a965531a2045ac41', '2020-03-26 00:12:09', 'admin', '2020-03-26 00:12:09', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('838333fbcb854be69088c769147dfabd', '293a9c05eabd4efea1e23df26ac48d4f', 'asset', 'd4df141a59a541f7b9f5654e5c3b0fbe', '2020-03-26 00:12:09', 'admin', '2020-03-26 00:12:09', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('846eb883bf57447593fb2da61d7b797f', 'f87638d391a34ca58d6880a77697670d', 'scan_type', '', '2020-03-31 00:11:09', 'admin', '2020-03-31 00:11:09', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('863c6e2eddbc422b94e02be4fd2ae8ef', '9dd4a313ed414dfe9e2db85e0de831c3', 'cycle', '0', '2020-03-31 00:14:00', 'admin', '2020-03-31 00:14:00', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('91fe54f2e33c45128c70c3f41e4e84cf', '42e58066eb654c99a331da386836235c', 'asset', '090f13633d3d43c5a965531a2045ac41', '2020-03-22 22:59:38', 'admin', '2020-03-22 22:59:38', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('96def37676c94761911743481124d0aa', '7fa93d9177f64b45a8ec72486ee78b21', 'cycle', '0', '2020-03-31 00:14:16', 'admin', '2020-03-31 00:14:16', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('9d8c1031b22f4f61abd57b308241307a', 'a2a031ee4e0b41598a91d3652f8dd316', 'report_template', '0', '2020-04-29 22:17:44', 'admin', '2020-04-29 22:17:44', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('a250391dcb3f41ee861b0567f1f3f119', '42e58066eb654c99a331da386836235c', 'asset', 'd4df141a59a541f7b9f5654e5c3b0fbe', '2020-03-22 22:59:38', 'admin', '2020-03-22 22:59:38', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('a34a60d3634f47e086d485e47bac75f8', '42e58066eb654c99a331da386836235c', 'bug', 'c4aaa0e83a0c401091dc48849ad96874', '2020-03-22 22:59:38', 'admin', '2020-03-22 22:59:38', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('a6f32436b92846b99bf701b9f638f7f2', 'b3fcf8b630e94f30a789e725bf62fd9c', 'bug', '8fbf57556139476ca702fb35c88789df', '2020-03-31 00:04:46', 'admin', '2020-03-31 00:04:46', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('a7e0f22dde664bc9b6aef46ea371b531', '42e58066eb654c99a331da386836235c', 'scan_type', '090f13633d3d43c5a965531a2045ac41,637b6d51b7e24026a4867c4e0730cbd4,64186ee06d254c5c8a7c734fa43a8cf5,d4df141a59a541f7b9f5654e5c3b0fbe', '2020-03-22 22:59:38', 'admin', '2020-03-22 22:59:38', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('aa3be46189a74484ad1364f034b40acb', '5a529fba108640f5b8590104d7279825', 'bug', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-22 18:05:47', 'test', '2020-03-22 18:05:47', 'test', NULL);
INSERT INTO `task_attr` VALUES ('aedce9c8eff44f1ba58f50ea40853f06', '293a9c05eabd4efea1e23df26ac48d4f', 'bug', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-03-26 00:12:09', 'admin', '2020-03-26 00:12:09', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('af4e26ecde9248c587926a1cacbfdfdf', '5a529fba108640f5b8590104d7279825', 'asset', 'd4df141a59a541f7b9f5654e5c3b0fbe', '2020-03-22 18:05:47', 'test', '2020-03-22 18:05:47', 'test', NULL);
INSERT INTO `task_attr` VALUES ('b0a850f514464736867cf2d616daf102', 'd9c1cc91b8684c6ebc41fcb954b6ad3e', 'scan_type', '', '2020-03-31 00:09:43', 'admin', '2020-03-31 00:09:43', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('b397ba33beb84fdead4fb79cca6d3028', 'b3fcf8b630e94f30a789e725bf62fd9c', 'asset', '64186ee06d254c5c8a7c734fa43a8cf5', '2020-03-31 00:04:46', 'admin', '2020-03-31 00:04:46', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('b4391e5576bd43d59aeca1e38bcbd44e', '42e58066eb654c99a331da386836235c', 'asset', '637b6d51b7e24026a4867c4e0730cbd4', '2020-03-22 22:59:38', 'admin', '2020-03-22 22:59:38', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('b439f07194d946baa105b6f9ce62336d', '5f6ce4a79fe9423fb0c4a1a3c4b61774', 'report_template', '0', '2020-03-31 00:14:11', 'admin', '2020-03-31 00:14:11', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('b46dd954d4694156aad01744b2b7b31f', 'b3fcf8b630e94f30a789e725bf62fd9c', 'cycle', '0', '2020-03-31 00:04:46', 'admin', '2020-03-31 00:04:46', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('b54aa6eaf226480d89effa79a166dc90', '42e58066eb654c99a331da386836235c', 'bug', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-22 22:59:38', 'admin', '2020-03-22 22:59:38', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('b719c494fcb14569bed15b0e5bfaded3', 'd9c1cc91b8684c6ebc41fcb954b6ad3e', 'report_template', '0', '2020-03-31 00:09:43', 'admin', '2020-03-31 00:09:43', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('b797ea9f4d014f3aabb98c110dba1bc0', '42e58066eb654c99a331da386836235c', 'bug', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-03-22 22:59:38', 'admin', '2020-03-22 22:59:38', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('b8f361cd9a5149fb853a5e836cc55802', '293a9c05eabd4efea1e23df26ac48d4f', 'bug', '8bc4bd521b0240d794843cd61aaf848f', '2020-03-26 00:12:09', 'admin', '2020-03-26 00:12:09', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('bbc81c71f08e44ac86249eed0d4be24b', 'b3fcf8b630e94f30a789e725bf62fd9c', 'bug', 'c035ad6eb29045138cfb17c5973f8782', '2020-03-31 00:04:46', 'admin', '2020-03-31 00:04:46', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('bc4c56d2d229434a95feb7fc018b5029', 'f71f316ecbfa4bf395cef4040e265adc', 'report_template', '0', '2020-03-31 00:14:18', 'admin', '2020-03-31 00:14:18', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('be5a59d7be9547debdee16778cc4700e', '42e58066eb654c99a331da386836235c', 'bug', 'c035ad6eb29045138cfb17c5973f8782', '2020-03-22 22:59:38', 'admin', '2020-03-22 22:59:38', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('beee472af083426ca547fc0ab8d26f64', '293a9c05eabd4efea1e23df26ac48d4f', 'scan_type', '090f13633d3d43c5a965531a2045ac41,637b6d51b7e24026a4867c4e0730cbd4,64186ee06d254c5c8a7c734fa43a8cf5,d4df141a59a541f7b9f5654e5c3b0fbe', '2020-03-26 00:12:09', 'admin', '2020-03-26 00:12:09', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('bf33a78c8fce43388ddb1ac10c09cd81', 'b3fcf8b630e94f30a789e725bf62fd9c', 'bug', 'c4aaa0e83a0c401091dc48849ad96874', '2020-03-31 00:04:46', 'admin', '2020-03-31 00:04:46', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('c0bcd58e8e754b82a970f0a53b96952d', '293a9c05eabd4efea1e23df26ac48d4f', 'bug', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-26 00:12:09', 'admin', '2020-03-26 00:12:09', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('c15430add88248f68b505e239ac3de1f', '6812239f2a304f65954e0384fcbbbf83', 'scan_type', '', '2020-03-31 00:14:06', 'admin', '2020-03-31 00:14:06', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('c16e2fa99b0c49589dbd5af20b2760d4', '9dd4a313ed414dfe9e2db85e0de831c3', 'report_template', '0', '2020-03-31 00:14:00', 'admin', '2020-03-31 00:14:00', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('c1b49b641df248b89543923feb5691eb', 'e9315e4527e24400a4d3ceb79870c7c0', 'bug', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-05-31 23:58:45', 'admin', '2020-05-31 23:58:45', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('c2b7d80ad93445a3b745c0984550c142', '293a9c05eabd4efea1e23df26ac48d4f', 'bug', '8fbf57556139476ca702fb35c88789df', '2020-03-26 00:12:09', 'admin', '2020-03-26 00:12:09', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('c2efa4b4450840dabe93ae306ae3ac1f', 'e9315e4527e24400a4d3ceb79870c7c0', 'bug', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-05-31 23:58:45', 'admin', '2020-05-31 23:58:45', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('c3930a5e0bce4a50a3cb47cc8dab1662', '293a9c05eabd4efea1e23df26ac48d4f', 'bug', 'bd61a246e3f24a999ac68ac683a68d51', '2020-03-26 00:12:09', 'admin', '2020-03-26 00:12:09', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('c6fa92dfd76148abbec1135b8e2b6be3', '5a529fba108640f5b8590104d7279825', 'report_template', '0', '2020-03-22 18:05:47', 'test', '2020-03-22 18:05:47', 'test', NULL);
INSERT INTO `task_attr` VALUES ('c9e074729fe74d3fa55fa609f7b34f8c', 'e9315e4527e24400a4d3ceb79870c7c0', 'report_template', '0', '2020-05-31 23:58:45', 'admin', '2020-05-31 23:58:45', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('cac48b4c9d90447b902010ffe80cbbb5', '427a91f7a1894a3389c1a06faa303810', 'report_template', '0', '2020-04-04 21:24:57', 'admin', '2020-04-04 21:24:57', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('cbbdb6d076124b82977439ec5a8e821b', '293a9c05eabd4efea1e23df26ac48d4f', 'asset', '637b6d51b7e24026a4867c4e0730cbd4', '2020-03-26 00:12:09', 'admin', '2020-03-26 00:12:09', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('ccbbc9b735f745c79b3bd0324088e7e8', '42e58066eb654c99a331da386836235c', 'bug', 'bd61a246e3f24a999ac68ac683a68d51', '2020-03-22 22:59:38', 'admin', '2020-03-22 22:59:38', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('ce80603488f54e5787f3e6c440643bc0', 'b3fcf8b630e94f30a789e725bf62fd9c', 'bug', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-03-31 00:04:46', 'admin', '2020-03-31 00:04:46', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('ceb8939107bb4d58980947522e0b1375', '42e58066eb654c99a331da386836235c', 'bug', 'c5ef3796336442f1a092d79fa804403a', '2020-03-22 22:59:38', 'admin', '2020-03-22 22:59:38', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('ced9bd4c653740e2870fc2ab9a60d4b1', 'f87638d391a34ca58d6880a77697670d', 'report_template', '0', '2020-03-31 00:11:09', 'admin', '2020-03-31 00:11:09', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('d0ab1a11483f414a8d585056cbe95ac7', 'b3fcf8b630e94f30a789e725bf62fd9c', 'report_template', '0', '2020-03-31 00:04:46', 'admin', '2020-03-31 00:04:46', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('d1231d0b09604f199a56c3778122ebcd', '5f6ce4a79fe9423fb0c4a1a3c4b61774', 'cycle', '0', '2020-03-31 00:14:11', 'admin', '2020-03-31 00:14:11', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('d1e2e5e49a824085a2bcd9de6f09ba69', 'e93027f592a24854a9d64702d9ff1112', 'cycle', '0', '2020-03-31 00:14:14', 'admin', '2020-03-31 00:14:14', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('d2ade17a2c5d4722938a112a770c9033', 'b3fcf8b630e94f30a789e725bf62fd9c', 'bug', 'bd61a246e3f24a999ac68ac683a68d51', '2020-03-31 00:04:46', 'admin', '2020-03-31 00:04:46', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('d5ba71feaf2d4c5abab8704f7d8f479c', 'a3ce24ad8d264274a15ec16817b2531c', 'scan_type', '', '2020-03-31 00:11:02', 'admin', '2020-03-31 00:11:02', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('d6990039160d43de96cad3928bba7ab8', '42e58066eb654c99a331da386836235c', 'asset', '64186ee06d254c5c8a7c734fa43a8cf5', '2020-03-22 22:59:38', 'admin', '2020-03-22 22:59:38', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('d7abf4329d5d48bba0abfeae004f48dc', 'a2a031ee4e0b41598a91d3652f8dd316', 'scan_type', '', '2020-04-29 22:17:44', 'admin', '2020-04-29 22:17:44', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('db62d8589bb946a5a12214d9a65b515f', 'e9315e4527e24400a4d3ceb79870c7c0', 'bug', '8fbf57556139476ca702fb35c88789df', '2020-05-31 23:58:45', 'admin', '2020-05-31 23:58:45', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('dc83783b19054d6bb7e28bc095226c4c', 'b3fcf8b630e94f30a789e725bf62fd9c', 'asset', 'd4df141a59a541f7b9f5654e5c3b0fbe', '2020-03-31 00:04:46', 'admin', '2020-03-31 00:04:46', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('de45dad75a654c9e9ef5974dad367714', 'b3fcf8b630e94f30a789e725bf62fd9c', 'asset', '637b6d51b7e24026a4867c4e0730cbd4', '2020-03-31 00:04:46', 'admin', '2020-03-31 00:04:46', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('e2a533df28df4ee4bf0c9cd1210b9bee', '42e58066eb654c99a331da386836235c', 'report_template', '0', '2020-03-22 22:59:38', 'admin', '2020-03-22 22:59:38', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('e640a04aa4824f53831f4cf87112f343', 'e9315e4527e24400a4d3ceb79870c7c0', 'scan_type', '090f13633d3d43c5a965531a2045ac41,637b6d51b7e24026a4867c4e0730cbd4,64186ee06d254c5c8a7c734fa43a8cf5,94692459005f44489d3c5a03313dcc63,d4df141a59a541f7b9f5654e5c3b0fbe', '2020-05-31 23:58:45', 'admin', '2020-05-31 23:58:45', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('e8891aafabc54d0abacf3009a2b32099', 'cb3bb06daaac4ecba4e7b3dda936277f', 'cycle', '0', '2020-03-22 18:10:23', 'admin', '2020-03-22 18:10:23', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('e89a2f43bf9a472e849402125dd131e6', '293a9c05eabd4efea1e23df26ac48d4f', 'report_template', '0', '2020-03-26 00:12:09', 'admin', '2020-03-26 00:12:09', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('e8f08f198ba34434babf5b6b42f5bc15', '42e58066eb654c99a331da386836235c', 'cycle', '0', '2020-03-22 22:59:38', 'admin', '2020-03-22 22:59:38', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('e926890034ed4b73aeef7ebc96df05c1', 'b3fcf8b630e94f30a789e725bf62fd9c', 'asset', '94692459005f44489d3c5a03313dcc63', '2020-03-31 00:04:46', 'admin', '2020-03-31 00:04:46', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('eb2d76c6fd87418aa18ddb7adb82e38d', 'e9315e4527e24400a4d3ceb79870c7c0', 'bug', 'c5ef3796336442f1a092d79fa804403a', '2020-05-31 23:58:45', 'admin', '2020-05-31 23:58:45', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('ee037d4d35da49a99cd9e56ab03f01f5', 'e9315e4527e24400a4d3ceb79870c7c0', 'asset', '94692459005f44489d3c5a03313dcc63', '2020-05-31 23:58:45', 'admin', '2020-05-31 23:58:45', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('ee127261f1c3419fabf487773447b935', '5a529fba108640f5b8590104d7279825', 'cycle', '0', '2020-03-22 18:05:47', 'test', '2020-03-22 18:05:47', 'test', NULL);
INSERT INTO `task_attr` VALUES ('ee97f9daac844e13b3e70811f5ab250c', '5a529fba108640f5b8590104d7279825', 'scan_type', 'd4df141a59a541f7b9f5654e5c3b0fbe', '2020-03-22 18:05:47', 'test', '2020-03-22 18:05:47', 'test', NULL);
INSERT INTO `task_attr` VALUES ('f1c1b0ced1964cdc9ea3c31efae1de02', 'f71f316ecbfa4bf395cef4040e265adc', 'cycle', '0', '2020-03-31 00:14:18', 'admin', '2020-03-31 00:14:18', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('f375b42c5f0b4011ba5216315116eb2d', '7fa93d9177f64b45a8ec72486ee78b21', 'scan_type', '', '2020-03-31 00:14:16', 'admin', '2020-03-31 00:14:16', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('f3f197a56f6a4b508b035bfb1da40661', 'e9315e4527e24400a4d3ceb79870c7c0', 'bug', '703589a4f8e5458495ce0c51909b9ca4', '2020-05-31 23:58:45', 'admin', '2020-05-31 23:58:45', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('f50688dc318a4f9ba0fae90289b8734a', 'e93027f592a24854a9d64702d9ff1112', 'scan_type', '', '2020-03-31 00:14:14', 'admin', '2020-03-31 00:14:14', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('f50c04b3703c41e2b152c014f8be1dd6', '427a91f7a1894a3389c1a06faa303810', 'scan_type', '', '2020-04-04 21:24:57', 'admin', '2020-04-04 21:24:57', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('f6aa49ee5b5f441db568bf97ddb7afef', 'a3ce24ad8d264274a15ec16817b2531c', 'cycle', '0', '2020-03-31 00:11:02', 'admin', '2020-03-31 00:11:02', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('f8c45ab0f4844390b395269402700065', 'e9315e4527e24400a4d3ceb79870c7c0', 'bug', 'c4aaa0e83a0c401091dc48849ad96874', '2020-05-31 23:58:45', 'admin', '2020-05-31 23:58:45', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('ff025d16876a41feb9790d3714e9b2ae', 'e9315e4527e24400a4d3ceb79870c7c0', 'bug', '8bc4bd521b0240d794843cd61aaf848f', '2020-05-31 23:58:45', 'admin', '2020-05-31 23:58:45', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('ff08907d95e04d9196a03904b9a8b720', 'b3fcf8b630e94f30a789e725bf62fd9c', 'bug', '8bc4bd521b0240d794843cd61aaf848f', '2020-03-31 00:04:46', 'admin', '2020-03-31 00:04:46', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('ff7b666d3f7c4653a45431e527a00dc1', 'e9315e4527e24400a4d3ceb79870c7c0', 'asset', '090f13633d3d43c5a965531a2045ac41', '2020-05-31 23:58:45', 'admin', '2020-05-31 23:58:45', 'admin', NULL);
INSERT INTO `task_attr` VALUES ('ffc115775b074515a5a1071b95fba001', 'e93027f592a24854a9d64702d9ff1112', 'report_template', '0', '2020-03-31 00:14:14', 'admin', '2020-03-31 00:14:14', 'admin', NULL);

-- ----------------------------
-- Table structure for task_log
-- ----------------------------
DROP TABLE IF EXISTS `task_log`;
CREATE TABLE `task_log`  (
  `task_log_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '任务日志ID',
  `task_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '任务ID',
  `task_log_status` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '任务日志状态',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `finished_time` datetime(0) NULL DEFAULT NULL COMMENT '完成时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`task_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of task_log
-- ----------------------------
INSERT INTO `task_log` VALUES ('2a01838c7704434c90f420db85166c8c', '42e58066eb654c99a331da386836235c', '3', '2020-03-23 20:22:58', 'admin', '2020-03-23 20:23:02', '扫描总数:40,成功扫描:40');
INSERT INTO `task_log` VALUES ('4b521594eda545b69360ad1ad27e734f', '', '', '2020-05-19 23:08:24', '', NULL, '');
INSERT INTO `task_log` VALUES ('519d8b47bbc547658da66ac6dde8459e', '42e58066eb654c99a331da386836235c', '3', '2020-03-22 22:59:45', 'admin', '2020-03-22 22:59:49', '扫描总数:40,成功扫描:40');
INSERT INTO `task_log` VALUES ('56f8e98919be425d849365c018cc855f', 'a2a031ee4e0b41598a91d3652f8dd316', '3', '2020-04-29 22:17:49', 'admin', '2020-04-29 22:17:49', '扫描总数:0,成功扫描:0');
INSERT INTO `task_log` VALUES ('613726cf829744d79ad336907ad1e122', '42e58066eb654c99a331da386836235c', '3', '2020-03-23 20:29:23', 'admin', '2020-03-23 20:29:27', '扫描总数:40,成功扫描:40');
INSERT INTO `task_log` VALUES ('71f15660065944b1a77430cff75d700e', 'f71f316ecbfa4bf395cef4040e265adc', '3', '2020-03-31 00:14:26', 'admin', '2020-03-31 00:14:27', '扫描总数:0,成功扫描:0');
INSERT INTO `task_log` VALUES ('7f61083dcbba4152bec23225a4f33c18', '293a9c05eabd4efea1e23df26ac48d4f', '3', '2020-03-29 14:11:06', 'test', '2020-03-29 14:11:11', '扫描总数:40,成功扫描:40');
INSERT INTO `task_log` VALUES ('8fc3e36f076044b6b13998f38ff97e6a', '5a529fba108640f5b8590104d7279825', '3', '2020-03-22 18:05:51', 'test', '2020-03-22 18:05:51', '扫描总数:1,成功扫描:1');
INSERT INTO `task_log` VALUES ('b48a890ef56840ce8c6b2f4ac2e0a060', '293a9c05eabd4efea1e23df26ac48d4f', '3', '2020-03-28 00:38:56', 'admin', '2020-03-28 00:39:01', '扫描总数:40,成功扫描:40');
INSERT INTO `task_log` VALUES ('b5065ea22d424b4282ec903ba3b970c7', '427a91f7a1894a3389c1a06faa303810', '3', '2020-04-04 21:25:01', 'admin', '2020-04-04 21:25:02', '扫描总数:0,成功扫描:0');
INSERT INTO `task_log` VALUES ('b7ec88d044994b909ae44beb11f7f3d8', '293a9c05eabd4efea1e23df26ac48d4f', '3', '2020-03-26 00:12:16', 'admin', '2020-03-26 00:12:22', '扫描总数:40,成功扫描:40');
INSERT INTO `task_log` VALUES ('bf8ec64b00a948bd9789397f795156c8', 'e9315e4527e24400a4d3ceb79870c7c0', '3', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:41', '扫描总数:50,成功扫描:50');
INSERT INTO `task_log` VALUES ('da574626d0aa4ea0a1d988aedc193b7a', '5a529fba108640f5b8590104d7279825', '3', '2020-03-29 14:20:48', 'test', '2020-03-29 14:20:49', '扫描总数:1,成功扫描:1');
INSERT INTO `task_log` VALUES ('e46818719f774add8c23fd313192b5f4', 'e9315e4527e24400a4d3ceb79870c7c0', '3', '2020-05-31 23:58:54', 'admin', '2020-05-31 23:58:57', '扫描总数:50,成功扫描:50');
INSERT INTO `task_log` VALUES ('fda31fabacb14937becec6611b49bed4', '', '', '2020-05-19 23:08:09', '', NULL, '');
INSERT INTO `task_log` VALUES ('ffed985f6b3a45e3ab08987f50eab13b', '', '', '2020-05-19 23:08:12', '', NULL, '');

-- ----------------------------
-- Table structure for task_log_det
-- ----------------------------
DROP TABLE IF EXISTS `task_log_det`;
CREATE TABLE `task_log_det`  (
  `task_log_det_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '任务日志详情ID',
  `task_log_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '任务日志ID',
  `task_log_det_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '任务日志详情项',
  `task_log_det_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '任务日志详情值',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`task_log_det_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of task_log_det
-- ----------------------------
INSERT INTO `task_log_det` VALUES ('008220c426a546b5875c6cb969025e08', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-03-26 00:12:19', 'admin', '2020-03-26 00:12:19', NULL);
INSERT INTO `task_log_det` VALUES ('009d917ffccc42e18ac61ab6fe0422af', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-03-28 00:38:58', 'admin', '2020-03-28 00:38:58', NULL);
INSERT INTO `task_log_det` VALUES ('0237e31eb86f49ea93b9ce938e3a8283', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-03-28 00:38:57', 'admin', '2020-03-28 00:38:57', NULL);
INSERT INTO `task_log_det` VALUES ('038f2e0c09234e16a341ff643fcfa1d1', '7f61083dcbba4152bec23225a4f33c18', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-03-29 14:11:09', 'test', '2020-03-29 14:11:09', NULL);
INSERT INTO `task_log_det` VALUES ('05561ca856e849009d290395c300507a', '613726cf829744d79ad336907ad1e122', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-03-23 20:29:26', 'admin', '2020-03-23 20:29:26', NULL);
INSERT INTO `task_log_det` VALUES ('07caa6fea7de4d278ef8d5006ba76cf9', '613726cf829744d79ad336907ad1e122', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-23 20:29:24', 'admin', '2020-03-23 20:29:24', NULL);
INSERT INTO `task_log_det` VALUES ('07da6f52aac64510acb36b08e3160695', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-03-26 00:12:19', 'admin', '2020-03-26 00:12:19', NULL);
INSERT INTO `task_log_det` VALUES ('08d02a2c1dd54252af4d625a16e8dac7', '613726cf829744d79ad336907ad1e122', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-03-23 20:29:24', 'admin', '2020-03-23 20:29:24', NULL);
INSERT INTO `task_log_det` VALUES ('08fe174df01b415e969c1a27f516b6ee', '519d8b47bbc547658da66ac6dde8459e', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-03-22 22:59:48', 'admin', '2020-03-22 22:59:48', NULL);
INSERT INTO `task_log_det` VALUES ('09dbcdef4b5548da8486cd73523a8d16', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-03-26 00:12:17', 'admin', '2020-03-26 00:12:17', NULL);
INSERT INTO `task_log_det` VALUES ('09e192f1ac0d4f1384d5d9b254775446', 'e46818719f774add8c23fd313192b5f4', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('09ef1506f040405d9870fe616624002c', '7f61083dcbba4152bec23225a4f33c18', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-03-29 14:11:10', 'test', '2020-03-29 14:11:10', NULL);
INSERT INTO `task_log_det` VALUES ('0b038201677f4745b7a0dd1266199c02', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('0b1983d08e8343a499dddf37d0d89d35', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-03-28 00:38:59', 'admin', '2020-03-28 00:38:59', NULL);
INSERT INTO `task_log_det` VALUES ('0b933ce0544740ef871d700260fc79c7', '7f61083dcbba4152bec23225a4f33c18', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-03-29 14:11:07', 'test', '2020-03-29 14:11:07', NULL);
INSERT INTO `task_log_det` VALUES ('0c9c543b68b1423ab8c1102634e2869d', '7f61083dcbba4152bec23225a4f33c18', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-03-29 14:11:10', 'test', '2020-03-29 14:11:10', NULL);
INSERT INTO `task_log_det` VALUES ('0dd95ef5d0d147f5b300888362dd0141', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-03-26 00:12:16', 'admin', '2020-03-26 00:12:16', NULL);
INSERT INTO `task_log_det` VALUES ('0e76dbdfe8a541568503dcddd36f37ef', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-03-28 00:38:58', 'admin', '2020-03-28 00:38:58', NULL);
INSERT INTO `task_log_det` VALUES ('0f939baabbe946038144a616b4540931', '7f61083dcbba4152bec23225a4f33c18', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-03-29 14:11:10', 'test', '2020-03-29 14:11:10', NULL);
INSERT INTO `task_log_det` VALUES ('10f7cc14c1004aa99c8a5f131fdfc786', 'e46818719f774add8c23fd313192b5f4', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('12bb42b4a4ab4125b59a3af57d4669cf', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-03-28 00:38:58', 'admin', '2020-03-28 00:38:58', NULL);
INSERT INTO `task_log_det` VALUES ('12cb91fc7daa4637a611432459ac69f9', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('15435fdbc4bc4a6d8cf25aa1b20020b8', '613726cf829744d79ad336907ad1e122', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-03-23 20:29:24', 'admin', '2020-03-23 20:29:24', NULL);
INSERT INTO `task_log_det` VALUES ('15fb84b1caec454e967bf2985401d231', 'e46818719f774add8c23fd313192b5f4', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('1627db43abd74a529f64e55c4ba00488', '613726cf829744d79ad336907ad1e122', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-03-23 20:29:25', 'admin', '2020-03-23 20:29:25', NULL);
INSERT INTO `task_log_det` VALUES ('1653722bec484b229d5bc1d442c66eb4', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('17cc5fe51a89405288bcd41f1db69c3d', '613726cf829744d79ad336907ad1e122', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-03-23 20:29:26', 'admin', '2020-03-23 20:29:26', NULL);
INSERT INTO `task_log_det` VALUES ('18a6376b54fd4471834978753d90f163', 'e46818719f774add8c23fd313192b5f4', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('190b9d3288c64eb99570049393833569', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-03-28 00:38:59', 'admin', '2020-03-28 00:38:59', NULL);
INSERT INTO `task_log_det` VALUES ('199a3a2378494542874e5fb1ffc02e3f', '613726cf829744d79ad336907ad1e122', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-03-23 20:29:25', 'admin', '2020-03-23 20:29:25', NULL);
INSERT INTO `task_log_det` VALUES ('19e418a51bf949d1abc03f4b0a8f38b8', 'e46818719f774add8c23fd313192b5f4', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('1a2a721790cd436d9a4fe47013198047', '7f61083dcbba4152bec23225a4f33c18', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-03-29 14:11:09', 'test', '2020-03-29 14:11:09', NULL);
INSERT INTO `task_log_det` VALUES ('1ae5c246ba274c0b9a1243fd10f38619', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-03-26 00:12:22', 'admin', '2020-03-26 00:12:22', NULL);
INSERT INTO `task_log_det` VALUES ('1b6531685b2d4320ba2edda2858608ac', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-03-28 00:38:57', 'admin', '2020-03-28 00:38:57', NULL);
INSERT INTO `task_log_det` VALUES ('1cfb1df3a4cf40e6aa1d600bbb12081d', '613726cf829744d79ad336907ad1e122', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-03-23 20:29:25', 'admin', '2020-03-23 20:29:25', NULL);
INSERT INTO `task_log_det` VALUES ('1e59f1fa321c47969cd3d985f5964cc9', 'e46818719f774add8c23fd313192b5f4', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('1e617721919f4d25abdf5fc9f4cbbbaf', '613726cf829744d79ad336907ad1e122', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-03-23 20:29:25', 'admin', '2020-03-23 20:29:25', NULL);
INSERT INTO `task_log_det` VALUES ('21ab8606eefa498f9fad220fa1c72930', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-03-28 00:38:59', 'admin', '2020-03-28 00:38:59', NULL);
INSERT INTO `task_log_det` VALUES ('21b6fe75e7094741b4d2c0ee171ac6ad', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-03-28 00:38:58', 'admin', '2020-03-28 00:38:58', NULL);
INSERT INTO `task_log_det` VALUES ('23243d86b4bb4ea7a9590c1ebacc0d1b', '613726cf829744d79ad336907ad1e122', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-03-23 20:29:26', 'admin', '2020-03-23 20:29:26', NULL);
INSERT INTO `task_log_det` VALUES ('2332930ffcaa448c9770afa7914dadc1', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-03-26 00:12:18', 'admin', '2020-03-26 00:12:18', NULL);
INSERT INTO `task_log_det` VALUES ('2391947d5b7a4e11807df1ff9d1ab947', 'e46818719f774add8c23fd313192b5f4', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('259c8534c59f45138327733b0abc7015', '7f61083dcbba4152bec23225a4f33c18', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-29 14:11:11', 'test', '2020-03-29 14:11:11', NULL);
INSERT INTO `task_log_det` VALUES ('261dd000ad564cff852a8b093700dad7', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-03-26 00:12:21', 'admin', '2020-03-26 00:12:21', NULL);
INSERT INTO `task_log_det` VALUES ('28a3348c77204dd09ae45e19e6226a47', '2a01838c7704434c90f420db85166c8c', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-03-23 20:22:59', 'admin', '2020-03-23 20:22:59', NULL);
INSERT INTO `task_log_det` VALUES ('28f8bdff92a5428a819253e22f4b419a', '2a01838c7704434c90f420db85166c8c', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-03-23 20:22:59', 'admin', '2020-03-23 20:22:59', NULL);
INSERT INTO `task_log_det` VALUES ('2b2d18a38e5f4a1287bec1712beefd8e', '613726cf829744d79ad336907ad1e122', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-03-23 20:29:23', 'admin', '2020-03-23 20:29:23', NULL);
INSERT INTO `task_log_det` VALUES ('2b51ec1de6784177a07916b761b710cc', '2a01838c7704434c90f420db85166c8c', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-03-23 20:23:01', 'admin', '2020-03-23 20:23:01', NULL);
INSERT INTO `task_log_det` VALUES ('2bbe15e3805747d6a972a93fec3fbb21', '519d8b47bbc547658da66ac6dde8459e', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-03-22 22:59:46', 'admin', '2020-03-22 22:59:46', NULL);
INSERT INTO `task_log_det` VALUES ('2bce706bab384e0aa7173b7681072365', 'e46818719f774add8c23fd313192b5f4', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('2c1363a7e4e04a22a5014238708d208b', '519d8b47bbc547658da66ac6dde8459e', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-03-22 22:59:49', 'admin', '2020-03-22 22:59:49', NULL);
INSERT INTO `task_log_det` VALUES ('2d614e8952a44becaf9831870461d10a', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('30376140cb494e6caa64dcb307728025', 'e46818719f774add8c23fd313192b5f4', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('315422b2edd845d08838f667613c6eb5', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-28 00:39:00', 'admin', '2020-03-28 00:39:00', NULL);
INSERT INTO `task_log_det` VALUES ('3185796c20ca400b997e88bd39579faf', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('324191bf25124fcb9a8ecc9dffecfaab', '2a01838c7704434c90f420db85166c8c', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-03-23 20:23:02', 'admin', '2020-03-23 20:23:02', NULL);
INSERT INTO `task_log_det` VALUES ('32c70cff2860418aa60afea06f6ba865', '613726cf829744d79ad336907ad1e122', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-03-23 20:29:25', 'admin', '2020-03-23 20:29:25', NULL);
INSERT INTO `task_log_det` VALUES ('32de82fe5c1b412bb331648ef27a2836', '613726cf829744d79ad336907ad1e122', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-23 20:29:25', 'admin', '2020-03-23 20:29:25', NULL);
INSERT INTO `task_log_det` VALUES ('32f254f6163649e4826b26423ae56516', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('334d6dd4426c4a75acd271819fdb77c4', '2a01838c7704434c90f420db85166c8c', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-03-23 20:23:01', 'admin', '2020-03-23 20:23:01', NULL);
INSERT INTO `task_log_det` VALUES ('337cc732737345aeb4bdfb827b5daa9e', '613726cf829744d79ad336907ad1e122', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-03-23 20:29:23', 'admin', '2020-03-23 20:29:23', NULL);
INSERT INTO `task_log_det` VALUES ('3382893bfcf94995b3c6f99773e26faa', '7f61083dcbba4152bec23225a4f33c18', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-03-29 14:11:09', 'test', '2020-03-29 14:11:09', NULL);
INSERT INTO `task_log_det` VALUES ('34061df3508d480e9ee4518b0747da4a', '519d8b47bbc547658da66ac6dde8459e', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-03-22 22:59:45', 'admin', '2020-03-22 22:59:45', NULL);
INSERT INTO `task_log_det` VALUES ('3455597888b847e7bc71580c09551abe', '2a01838c7704434c90f420db85166c8c', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-23 20:23:01', 'admin', '2020-03-23 20:23:01', NULL);
INSERT INTO `task_log_det` VALUES ('348d839ac8ab4bb8bfa0c398d88d614b', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('36a3067ccb824b46870d9e1263f036ed', 'e46818719f774add8c23fd313192b5f4', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('38be2121e5b24b18b7b8b5464729c671', '519d8b47bbc547658da66ac6dde8459e', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-03-22 22:59:46', 'admin', '2020-03-22 22:59:46', NULL);
INSERT INTO `task_log_det` VALUES ('3ac9334bc9654cdea08b983ba13b688a', '519d8b47bbc547658da66ac6dde8459e', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-03-22 22:59:47', 'admin', '2020-03-22 22:59:47', NULL);
INSERT INTO `task_log_det` VALUES ('3b1c75a2d7ff4548b7384a81c04d0c9c', '613726cf829744d79ad336907ad1e122', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-23 20:29:26', 'admin', '2020-03-23 20:29:26', NULL);
INSERT INTO `task_log_det` VALUES ('3b257e88041e4ed292d7cd3211bd216f', '613726cf829744d79ad336907ad1e122', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-03-23 20:29:24', 'admin', '2020-03-23 20:29:24', NULL);
INSERT INTO `task_log_det` VALUES ('3c4c95fea3844d48a681331860e4060d', 'e46818719f774add8c23fd313192b5f4', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('3d8eb436a1b04eb8980c9d977bdf3baa', '7f61083dcbba4152bec23225a4f33c18', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-03-29 14:11:09', 'test', '2020-03-29 14:11:09', NULL);
INSERT INTO `task_log_det` VALUES ('3d9ecf075f3c415396efa53b69a04187', '613726cf829744d79ad336907ad1e122', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-03-23 20:29:27', 'admin', '2020-03-23 20:29:27', NULL);
INSERT INTO `task_log_det` VALUES ('3ec0100b938d4f67be86d38915848a80', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `task_log_det` VALUES ('3f4a115424e04c28a3754883bd314b2d', 'e46818719f774add8c23fd313192b5f4', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('4001ad121b264ae2ac03da0d80af5dc1', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `task_log_det` VALUES ('4109956c4ea04856af804ce945c71e2a', '2a01838c7704434c90f420db85166c8c', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-03-23 20:23:02', 'admin', '2020-03-23 20:23:02', NULL);
INSERT INTO `task_log_det` VALUES ('41edc621913f4347b1f1c9af383edf6c', '2a01838c7704434c90f420db85166c8c', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-03-23 20:23:01', 'admin', '2020-03-23 20:23:01', NULL);
INSERT INTO `task_log_det` VALUES ('42006a8ab3984eca96e87c41b6bd4c6b', '519d8b47bbc547658da66ac6dde8459e', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-03-22 22:59:46', 'admin', '2020-03-22 22:59:46', NULL);
INSERT INTO `task_log_det` VALUES ('429c14ed07b1475abd42711922860332', '2a01838c7704434c90f420db85166c8c', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-03-23 20:23:01', 'admin', '2020-03-23 20:23:01', NULL);
INSERT INTO `task_log_det` VALUES ('450fdb2cc258417394ddfc254570fc12', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-03-26 00:12:22', 'admin', '2020-03-26 00:12:22', NULL);
INSERT INTO `task_log_det` VALUES ('45f8473be7a743538f96102aa83b421f', 'e46818719f774add8c23fd313192b5f4', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-05-31 23:58:55', 'admin', '2020-05-31 23:58:55', NULL);
INSERT INTO `task_log_det` VALUES ('464550d031bc49f682f10df42494fbe6', '7f61083dcbba4152bec23225a4f33c18', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-03-29 14:11:11', 'test', '2020-03-29 14:11:11', NULL);
INSERT INTO `task_log_det` VALUES ('465caea793024d359f78b30174332b8a', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `task_log_det` VALUES ('46638f8f7e1c44b7844c26e97442e6ef', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-03-28 00:38:56', 'admin', '2020-03-28 00:38:56', NULL);
INSERT INTO `task_log_det` VALUES ('46da86df417c4bcfb52d708df690b45b', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-03-28 00:38:58', 'admin', '2020-03-28 00:38:58', NULL);
INSERT INTO `task_log_det` VALUES ('4864a2757f2449e69e86a7f170ff3f84', '7f61083dcbba4152bec23225a4f33c18', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-03-29 14:11:08', 'test', '2020-03-29 14:11:08', NULL);
INSERT INTO `task_log_det` VALUES ('48881d8e7b8a408e9e99542c3a69f8d7', '7f61083dcbba4152bec23225a4f33c18', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-29 14:11:09', 'test', '2020-03-29 14:11:09', NULL);
INSERT INTO `task_log_det` VALUES ('4978ea39470d45128f3841480f4538db', '519d8b47bbc547658da66ac6dde8459e', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-03-22 22:59:47', 'admin', '2020-03-22 22:59:47', NULL);
INSERT INTO `task_log_det` VALUES ('4988485af0e449318fba39c5f0041396', '2a01838c7704434c90f420db85166c8c', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-03-23 20:22:59', 'admin', '2020-03-23 20:22:59', NULL);
INSERT INTO `task_log_det` VALUES ('499cdcb794074e7e845c17d6212617e8', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-03-28 00:39:00', 'admin', '2020-03-28 00:39:00', NULL);
INSERT INTO `task_log_det` VALUES ('4bf7ef4c3c2d469b9b35a191fea3a1a3', '7f61083dcbba4152bec23225a4f33c18', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-03-29 14:11:09', 'test', '2020-03-29 14:11:09', NULL);
INSERT INTO `task_log_det` VALUES ('4cd7275e214c44e0a1eae12c47695c1f', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `task_log_det` VALUES ('4d2cd381db2445d9a7ace958268a8626', '519d8b47bbc547658da66ac6dde8459e', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-03-22 22:59:46', 'admin', '2020-03-22 22:59:46', NULL);
INSERT INTO `task_log_det` VALUES ('4e2ed1001d7f40fbb52cc3afa19bc7bd', '2a01838c7704434c90f420db85166c8c', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-03-23 20:23:02', 'admin', '2020-03-23 20:23:02', NULL);
INSERT INTO `task_log_det` VALUES ('4f0ceaf7f9284bb7b60dd41689494bf8', '613726cf829744d79ad336907ad1e122', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-03-23 20:29:24', 'admin', '2020-03-23 20:29:24', NULL);
INSERT INTO `task_log_det` VALUES ('4f5433a5ff85494db19bc8a4463f82bd', '7f61083dcbba4152bec23225a4f33c18', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-03-29 14:11:07', 'test', '2020-03-29 14:11:07', NULL);
INSERT INTO `task_log_det` VALUES ('4fcb313b6bbf4871ab9dad1eb621152f', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `task_log_det` VALUES ('507e60a402c14db7b69f38beaf394564', 'e46818719f774add8c23fd313192b5f4', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('510bebc2583145c68ed196dd37c35c34', 'e46818719f774add8c23fd313192b5f4', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('51712fd22ce8438cb84825b7e42088b0', '7f61083dcbba4152bec23225a4f33c18', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-29 14:11:10', 'test', '2020-03-29 14:11:10', NULL);
INSERT INTO `task_log_det` VALUES ('517871bda56546f3af1c86ab0138276f', '519d8b47bbc547658da66ac6dde8459e', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-03-22 22:59:45', 'admin', '2020-03-22 22:59:45', NULL);
INSERT INTO `task_log_det` VALUES ('52b78a88c7fa4ea8ae5e09c97c515d46', '2a01838c7704434c90f420db85166c8c', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-03-23 20:23:02', 'admin', '2020-03-23 20:23:02', NULL);
INSERT INTO `task_log_det` VALUES ('536a6a58e49a4349bb9aed70c6057a79', 'e46818719f774add8c23fd313192b5f4', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('55583d2008bb4799a04056407c2e1695', '613726cf829744d79ad336907ad1e122', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-03-23 20:29:27', 'admin', '2020-03-23 20:29:27', NULL);
INSERT INTO `task_log_det` VALUES ('5580db0c5a884827b63ceb3c956904b1', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-03-26 00:12:17', 'admin', '2020-03-26 00:12:17', NULL);
INSERT INTO `task_log_det` VALUES ('559c62d769df4e9a811cf758b8b2ebf9', '519d8b47bbc547658da66ac6dde8459e', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-22 22:59:49', 'admin', '2020-03-22 22:59:49', NULL);
INSERT INTO `task_log_det` VALUES ('55c9c288e26e47febb4d763273cf4dd9', '519d8b47bbc547658da66ac6dde8459e', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-03-22 22:59:46', 'admin', '2020-03-22 22:59:46', NULL);
INSERT INTO `task_log_det` VALUES ('565ccde03a724917a7202c0f6975e369', '7f61083dcbba4152bec23225a4f33c18', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-03-29 14:11:10', 'test', '2020-03-29 14:11:10', NULL);
INSERT INTO `task_log_det` VALUES ('56bbb1902f834bdb98c0f9917e29ecbe', '7f61083dcbba4152bec23225a4f33c18', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-03-29 14:11:09', 'test', '2020-03-29 14:11:09', NULL);
INSERT INTO `task_log_det` VALUES ('56c172d27c2540bd8558d2bd23bb516a', 'e46818719f774add8c23fd313192b5f4', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-05-31 23:58:55', 'admin', '2020-05-31 23:58:55', NULL);
INSERT INTO `task_log_det` VALUES ('58376e03d2ac435e9317426056ca6c11', '613726cf829744d79ad336907ad1e122', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-03-23 20:29:26', 'admin', '2020-03-23 20:29:26', NULL);
INSERT INTO `task_log_det` VALUES ('587752d2df9341318e2b6390c9843fa5', '613726cf829744d79ad336907ad1e122', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-03-23 20:29:27', 'admin', '2020-03-23 20:29:27', NULL);
INSERT INTO `task_log_det` VALUES ('5898277b05d9437fbad171432f2bb9eb', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-03-26 00:12:18', 'admin', '2020-03-26 00:12:18', NULL);
INSERT INTO `task_log_det` VALUES ('5a077c26cf624d068fd4001d43bf456e', '519d8b47bbc547658da66ac6dde8459e', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-03-22 22:59:48', 'admin', '2020-03-22 22:59:48', NULL);
INSERT INTO `task_log_det` VALUES ('5a1c8b6f8c54488a8354efed29f9da7a', '519d8b47bbc547658da66ac6dde8459e', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-03-22 22:59:49', 'admin', '2020-03-22 22:59:49', NULL);
INSERT INTO `task_log_det` VALUES ('5a3903318db74b668b6d0178275e88ef', '613726cf829744d79ad336907ad1e122', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-03-23 20:29:26', 'admin', '2020-03-23 20:29:26', NULL);
INSERT INTO `task_log_det` VALUES ('5aad6c021ef44e2f8910c0b87eff5a52', '613726cf829744d79ad336907ad1e122', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-03-23 20:29:25', 'admin', '2020-03-23 20:29:25', NULL);
INSERT INTO `task_log_det` VALUES ('5abb4bb73efe42478b8b8a77972ac992', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-03-28 00:38:57', 'admin', '2020-03-28 00:38:57', NULL);
INSERT INTO `task_log_det` VALUES ('5ad4d7569b6042259545b9f4a6fc3491', 'e46818719f774add8c23fd313192b5f4', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('5aedc59316f2483280499e53b7e2057d', 'e46818719f774add8c23fd313192b5f4', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-05-31 23:58:55', 'admin', '2020-05-31 23:58:55', NULL);
INSERT INTO `task_log_det` VALUES ('5bab508b5d514cf280dd5cf137788adb', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('5c92848043044506a158c9d71b28c09d', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-26 00:12:17', 'admin', '2020-03-26 00:12:17', NULL);
INSERT INTO `task_log_det` VALUES ('5cfda30ffced4429a45f18f6485836a9', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-03-28 00:39:00', 'admin', '2020-03-28 00:39:00', NULL);
INSERT INTO `task_log_det` VALUES ('5d1450791d35421aa325a734401e9e71', 'e46818719f774add8c23fd313192b5f4', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-05-31 23:58:55', 'admin', '2020-05-31 23:58:55', NULL);
INSERT INTO `task_log_det` VALUES ('5d597b684cb24db2914c0a4a3e6e7843', 'e46818719f774add8c23fd313192b5f4', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('5e84308e41d44259bbd8bb10f0ecc749', 'e46818719f774add8c23fd313192b5f4', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('5f2a227907104fc69ffd17c6c5503e46', 'e46818719f774add8c23fd313192b5f4', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-05-31 23:58:57', 'admin', '2020-05-31 23:58:57', NULL);
INSERT INTO `task_log_det` VALUES ('5f3eaee81e804e9b9063e54c84edfa28', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-26 00:12:22', 'admin', '2020-03-26 00:12:22', NULL);
INSERT INTO `task_log_det` VALUES ('5fd737f449664db0994c5e51686b6b05', '519d8b47bbc547658da66ac6dde8459e', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-03-22 22:59:49', 'admin', '2020-03-22 22:59:49', NULL);
INSERT INTO `task_log_det` VALUES ('5ffc219be99a4a358482a6b6ceda8ac6', '2a01838c7704434c90f420db85166c8c', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-03-23 20:23:00', 'admin', '2020-03-23 20:23:00', NULL);
INSERT INTO `task_log_det` VALUES ('60eee80ca9b74faeb3190f727b2c1c03', '7f61083dcbba4152bec23225a4f33c18', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-03-29 14:11:10', 'test', '2020-03-29 14:11:10', NULL);
INSERT INTO `task_log_det` VALUES ('6278c79958c647eda1f2b435d8767790', 'e46818719f774add8c23fd313192b5f4', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('6433cddcaa574bdeb59412a6760a8e4d', '519d8b47bbc547658da66ac6dde8459e', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-03-22 22:59:48', 'admin', '2020-03-22 22:59:48', NULL);
INSERT INTO `task_log_det` VALUES ('64c816c2dcb24d768b67c0b65f82d53d', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-03-28 00:38:56', 'admin', '2020-03-28 00:38:56', NULL);
INSERT INTO `task_log_det` VALUES ('66752e7d2c054487ae0ba81f35f71739', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-26 00:12:19', 'admin', '2020-03-26 00:12:19', NULL);
INSERT INTO `task_log_det` VALUES ('66e31c8961ab4478891fa7e91d9ef785', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-03-26 00:12:22', 'admin', '2020-03-26 00:12:22', NULL);
INSERT INTO `task_log_det` VALUES ('684ae723da8c434bb7348cf5138ba77b', '2a01838c7704434c90f420db85166c8c', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-03-23 20:23:00', 'admin', '2020-03-23 20:23:00', NULL);
INSERT INTO `task_log_det` VALUES ('6860bfb6ec9848a9a0f081d4177ed78d', '2a01838c7704434c90f420db85166c8c', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-03-23 20:23:00', 'admin', '2020-03-23 20:23:00', NULL);
INSERT INTO `task_log_det` VALUES ('693bff01dfea4304bd33063d3106dda3', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-03-28 00:38:56', 'admin', '2020-03-28 00:38:56', NULL);
INSERT INTO `task_log_det` VALUES ('695b95b77b7a45bb987e0d57088668b1', '2a01838c7704434c90f420db85166c8c', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-03-23 20:23:02', 'admin', '2020-03-23 20:23:02', NULL);
INSERT INTO `task_log_det` VALUES ('69d9c53392524712b16fa92df316c296', '519d8b47bbc547658da66ac6dde8459e', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-03-22 22:59:48', 'admin', '2020-03-22 22:59:48', NULL);
INSERT INTO `task_log_det` VALUES ('6ab9a9d57eda4ee3a0d6bfead1b3102f', '7f61083dcbba4152bec23225a4f33c18', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-03-29 14:11:08', 'test', '2020-03-29 14:11:08', NULL);
INSERT INTO `task_log_det` VALUES ('6afdac3cb76d48f49527decc487730dc', '7f61083dcbba4152bec23225a4f33c18', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-03-29 14:11:08', 'test', '2020-03-29 14:11:08', NULL);
INSERT INTO `task_log_det` VALUES ('6b6879acb51340e98d0cf74755f0b483', '2a01838c7704434c90f420db85166c8c', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-03-23 20:22:58', 'admin', '2020-03-23 20:22:58', NULL);
INSERT INTO `task_log_det` VALUES ('6c97eca4850a4a3a8c00f17232b16107', 'e46818719f774add8c23fd313192b5f4', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('6d0d1a0141d141158b1fb38c3e1c7d6b', '2a01838c7704434c90f420db85166c8c', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-23 20:23:00', 'admin', '2020-03-23 20:23:00', NULL);
INSERT INTO `task_log_det` VALUES ('6d5c10414e14405d811d105bac98daa5', '2a01838c7704434c90f420db85166c8c', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-03-23 20:23:01', 'admin', '2020-03-23 20:23:01', NULL);
INSERT INTO `task_log_det` VALUES ('6d818eb0bd224d3b8cb16f705ee40bdd', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('6e5c5e45d3b54032a8e60b74f843dd57', 'e46818719f774add8c23fd313192b5f4', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-05-31 23:58:57', 'admin', '2020-05-31 23:58:57', NULL);
INSERT INTO `task_log_det` VALUES ('6f1f28e7dba942d78f3cbc9bae204119', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-28 00:38:58', 'admin', '2020-03-28 00:38:58', NULL);
INSERT INTO `task_log_det` VALUES ('7069f1300a4f43b88af2373cb6e64ee0', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-03-26 00:12:21', 'admin', '2020-03-26 00:12:21', NULL);
INSERT INTO `task_log_det` VALUES ('720176b10f3746dab44caf7376a5a1dd', '519d8b47bbc547658da66ac6dde8459e', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-03-22 22:59:47', 'admin', '2020-03-22 22:59:47', NULL);
INSERT INTO `task_log_det` VALUES ('73388a5152934e5fbcbf4cfdde4e6cd0', '519d8b47bbc547658da66ac6dde8459e', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-03-22 22:59:48', 'admin', '2020-03-22 22:59:48', NULL);
INSERT INTO `task_log_det` VALUES ('73600036e97a47a4aee9158970ed4f3d', 'e46818719f774add8c23fd313192b5f4', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('74a0937d9cac42ee837da7bd882ea889', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-03-28 00:38:59', 'admin', '2020-03-28 00:38:59', NULL);
INSERT INTO `task_log_det` VALUES ('750a3d694d4e48199e73bfc265f88de3', '613726cf829744d79ad336907ad1e122', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-03-23 20:29:26', 'admin', '2020-03-23 20:29:26', NULL);
INSERT INTO `task_log_det` VALUES ('77b882d241154eff86f3ea73c02d033e', '2a01838c7704434c90f420db85166c8c', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-03-23 20:22:58', 'admin', '2020-03-23 20:22:58', NULL);
INSERT INTO `task_log_det` VALUES ('78607713641a40b3921d5adc1a962b64', '519d8b47bbc547658da66ac6dde8459e', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-03-22 22:59:49', 'admin', '2020-03-22 22:59:49', NULL);
INSERT INTO `task_log_det` VALUES ('792f8842ff3f4b589cd28b373bb60185', '2a01838c7704434c90f420db85166c8c', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-03-23 20:22:58', 'admin', '2020-03-23 20:22:58', NULL);
INSERT INTO `task_log_det` VALUES ('7c91b9876661451e9680f6f4e3efbe3d', 'e46818719f774add8c23fd313192b5f4', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-05-31 23:58:55', 'admin', '2020-05-31 23:58:55', NULL);
INSERT INTO `task_log_det` VALUES ('7cfa3c4d2c0147958d8c32a0a66377b8', '519d8b47bbc547658da66ac6dde8459e', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-03-22 22:59:46', 'admin', '2020-03-22 22:59:46', NULL);
INSERT INTO `task_log_det` VALUES ('7e52206c0b7f452f9aa05db706b7b9aa', '613726cf829744d79ad336907ad1e122', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-03-23 20:29:24', 'admin', '2020-03-23 20:29:24', NULL);
INSERT INTO `task_log_det` VALUES ('7f21770731d34ebcae18ff42ecede179', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-03-26 00:12:21', 'admin', '2020-03-26 00:12:21', NULL);
INSERT INTO `task_log_det` VALUES ('7f34f72c88344d44bf22feb712986f66', 'e46818719f774add8c23fd313192b5f4', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('7f5e60c73fd3488e9901c14d662132ca', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `task_log_det` VALUES ('804a365e7b504fca95194849c12d1ee6', '2a01838c7704434c90f420db85166c8c', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-03-23 20:23:00', 'admin', '2020-03-23 20:23:00', NULL);
INSERT INTO `task_log_det` VALUES ('80f5cbd766e148c790942747d62a9eb1', '613726cf829744d79ad336907ad1e122', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-03-23 20:29:24', 'admin', '2020-03-23 20:29:24', NULL);
INSERT INTO `task_log_det` VALUES ('819fda7c527e4e80bac1f25c686a5c35', '613726cf829744d79ad336907ad1e122', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-03-23 20:29:25', 'admin', '2020-03-23 20:29:25', NULL);
INSERT INTO `task_log_det` VALUES ('836ac00df1004c709394065a4dc46478', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `task_log_det` VALUES ('83abdd9474b244ccb097611a80f761d6', '2a01838c7704434c90f420db85166c8c', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-23 20:22:59', 'admin', '2020-03-23 20:22:59', NULL);
INSERT INTO `task_log_det` VALUES ('83ef7090c2454659b4e18ea35804837e', 'e46818719f774add8c23fd313192b5f4', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-05-31 23:58:57', 'admin', '2020-05-31 23:58:57', NULL);
INSERT INTO `task_log_det` VALUES ('84511c7410ae4e6589d026508c7ebfe8', '2a01838c7704434c90f420db85166c8c', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-03-23 20:23:01', 'admin', '2020-03-23 20:23:01', NULL);
INSERT INTO `task_log_det` VALUES ('8475621f6e2c4c7f9d5a79eb35d3e1c6', '519d8b47bbc547658da66ac6dde8459e', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-03-22 22:59:45', 'admin', '2020-03-22 22:59:45', NULL);
INSERT INTO `task_log_det` VALUES ('84dff39f20df458ea798d4a36bf34d5d', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `task_log_det` VALUES ('8545c065bf0f4790a9a1583c966ecd76', '2a01838c7704434c90f420db85166c8c', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-03-23 20:23:02', 'admin', '2020-03-23 20:23:02', NULL);
INSERT INTO `task_log_det` VALUES ('86078ed546b24959b1fb05374ef210f2', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-03-26 00:12:20', 'admin', '2020-03-26 00:12:20', NULL);
INSERT INTO `task_log_det` VALUES ('86b4229f310c40a9824db909f2720d5d', '613726cf829744d79ad336907ad1e122', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-03-23 20:29:23', 'admin', '2020-03-23 20:29:23', NULL);
INSERT INTO `task_log_det` VALUES ('872e9f9ae20a416180d4fa99e0f30883', '2a01838c7704434c90f420db85166c8c', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-03-23 20:22:58', 'admin', '2020-03-23 20:22:58', NULL);
INSERT INTO `task_log_det` VALUES ('884ecdd5f6c545ebb1f4a07c3a23a5f5', 'e46818719f774add8c23fd313192b5f4', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('8946dc4671584074a41a251b3f76e627', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-03-28 00:38:59', 'admin', '2020-03-28 00:38:59', NULL);
INSERT INTO `task_log_det` VALUES ('89b3d19df4404d8ba7826b71bc8b92e5', '519d8b47bbc547658da66ac6dde8459e', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-22 22:59:46', 'admin', '2020-03-22 22:59:46', NULL);
INSERT INTO `task_log_det` VALUES ('8a319b6a305a45c2b5ca2cafc0cd1d11', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-03-28 00:38:57', 'admin', '2020-03-28 00:38:57', NULL);
INSERT INTO `task_log_det` VALUES ('8b44514ab96b40288969d81774ab2ded', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('8c2d5d2dc60e4b72844f694f5a8f28c0', '519d8b47bbc547658da66ac6dde8459e', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-03-22 22:59:45', 'admin', '2020-03-22 22:59:45', NULL);
INSERT INTO `task_log_det` VALUES ('8d0f89dbc78e4ba595f3c2d6cc3cd839', '519d8b47bbc547658da66ac6dde8459e', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-03-22 22:59:49', 'admin', '2020-03-22 22:59:49', NULL);
INSERT INTO `task_log_det` VALUES ('8eb0febe20164212964f9a569231f017', '7f61083dcbba4152bec23225a4f33c18', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-03-29 14:11:08', 'test', '2020-03-29 14:11:08', NULL);
INSERT INTO `task_log_det` VALUES ('8f666e9b09c647f18d03e3a972c3c783', '613726cf829744d79ad336907ad1e122', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-03-23 20:29:26', 'admin', '2020-03-23 20:29:26', NULL);
INSERT INTO `task_log_det` VALUES ('8fb529fadf7a432eb60961a6783b49ba', '2a01838c7704434c90f420db85166c8c', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-03-23 20:23:01', 'admin', '2020-03-23 20:23:01', NULL);
INSERT INTO `task_log_det` VALUES ('91cebd38188a4ae38f14a75a67a34427', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-03-26 00:12:17', 'admin', '2020-03-26 00:12:17', NULL);
INSERT INTO `task_log_det` VALUES ('91f49843bb0f478f91146e0479d03548', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-26 00:12:20', 'admin', '2020-03-26 00:12:20', NULL);
INSERT INTO `task_log_det` VALUES ('938dcdc50f624858abc40311d4d81304', '519d8b47bbc547658da66ac6dde8459e', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-03-22 22:59:46', 'admin', '2020-03-22 22:59:46', NULL);
INSERT INTO `task_log_det` VALUES ('948c82e479274c3e8e46549e07793a24', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `task_log_det` VALUES ('94ece80fff944a9e8f7a6b0ee4098661', '519d8b47bbc547658da66ac6dde8459e', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-03-22 22:59:48', 'admin', '2020-03-22 22:59:48', NULL);
INSERT INTO `task_log_det` VALUES ('95280891a2594827b9543ff05f4de3d6', '7f61083dcbba4152bec23225a4f33c18', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-03-29 14:11:09', 'test', '2020-03-29 14:11:09', NULL);
INSERT INTO `task_log_det` VALUES ('97803ce4c0b046c2a6ee5c9fa895010d', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-03-26 00:12:20', 'admin', '2020-03-26 00:12:20', NULL);
INSERT INTO `task_log_det` VALUES ('981b37d6a0e8487087310a62353df3ea', '7f61083dcbba4152bec23225a4f33c18', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-03-29 14:11:10', 'test', '2020-03-29 14:11:10', NULL);
INSERT INTO `task_log_det` VALUES ('988b99d991d141eab6ac9173d76d4a0c', '2a01838c7704434c90f420db85166c8c', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-03-23 20:22:58', 'admin', '2020-03-23 20:22:58', NULL);
INSERT INTO `task_log_det` VALUES ('98b4f6d8066b482f8dd070f257c249d6', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-03-28 00:39:00', 'admin', '2020-03-28 00:39:00', NULL);
INSERT INTO `task_log_det` VALUES ('99b442e3867c409785abd489281a7fcf', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-03-26 00:12:17', 'admin', '2020-03-26 00:12:17', NULL);
INSERT INTO `task_log_det` VALUES ('9a28dafa7ee6445ca22b95668b54a43f', 'e46818719f774add8c23fd313192b5f4', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-05-31 23:58:57', 'admin', '2020-05-31 23:58:57', NULL);
INSERT INTO `task_log_det` VALUES ('9aef783f7be1404b883863cf3a788477', '519d8b47bbc547658da66ac6dde8459e', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-03-22 22:59:48', 'admin', '2020-03-22 22:59:48', NULL);
INSERT INTO `task_log_det` VALUES ('9b5cc02ea9104827b7771eddbae9ec77', '519d8b47bbc547658da66ac6dde8459e', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-03-22 22:59:47', 'admin', '2020-03-22 22:59:47', NULL);
INSERT INTO `task_log_det` VALUES ('9bc4c269d0d84b148a7db1a4aa5bb8b6', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-06-01 00:01:41', 'admin', '2020-06-01 00:01:41', NULL);
INSERT INTO `task_log_det` VALUES ('9bf4834e39bb489eb380f173fc7f47b1', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('9c2f892e2d524c1bb3ca7532180fccaa', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-03-26 00:12:20', 'admin', '2020-03-26 00:12:20', NULL);
INSERT INTO `task_log_det` VALUES ('9cc37ed589f0429487e44d20937b0812', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('9d5a29a98a5744a1940550d193c1b93b', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-03-26 00:12:18', 'admin', '2020-03-26 00:12:18', NULL);
INSERT INTO `task_log_det` VALUES ('9e60218b07e849aa8ca08da47f866df1', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `task_log_det` VALUES ('9ea7ee83e3cf4884841d92a2450e80d4', '7f61083dcbba4152bec23225a4f33c18', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-03-29 14:11:10', 'test', '2020-03-29 14:11:10', NULL);
INSERT INTO `task_log_det` VALUES ('9f1727549ebb49b4be8d39ce8fada0bf', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-03-28 00:38:59', 'admin', '2020-03-28 00:38:59', NULL);
INSERT INTO `task_log_det` VALUES ('9fc4be09d7d148559476d8219c98bf3b', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('9fee8dd3f92f4c1c963d7a338f183578', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-03-26 00:12:18', 'admin', '2020-03-26 00:12:18', NULL);
INSERT INTO `task_log_det` VALUES ('a053e46bc63f4dedafa201c7a1215e6f', '7f61083dcbba4152bec23225a4f33c18', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-29 14:11:07', 'test', '2020-03-29 14:11:07', NULL);
INSERT INTO `task_log_det` VALUES ('a0e5b63389ab42789a201be0ed4c835c', '519d8b47bbc547658da66ac6dde8459e', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-03-22 22:59:46', 'admin', '2020-03-22 22:59:46', NULL);
INSERT INTO `task_log_det` VALUES ('a24c754912c643ec8334095edaf2493b', 'da574626d0aa4ea0a1d988aedc193b7a', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-29 14:20:49', 'test', '2020-03-29 14:20:49', NULL);
INSERT INTO `task_log_det` VALUES ('a2b336e52ae1433ebccb316da408b345', '7f61083dcbba4152bec23225a4f33c18', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-03-29 14:11:07', 'test', '2020-03-29 14:11:07', NULL);
INSERT INTO `task_log_det` VALUES ('a50528d313ae4a83aea9590427b1ce9d', 'e46818719f774add8c23fd313192b5f4', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-05-31 23:58:55', 'admin', '2020-05-31 23:58:55', NULL);
INSERT INTO `task_log_det` VALUES ('a51829fe4f9d4f998b4fb4c996e7b424', '613726cf829744d79ad336907ad1e122', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-03-23 20:29:24', 'admin', '2020-03-23 20:29:24', NULL);
INSERT INTO `task_log_det` VALUES ('a534117437f6439c8516f9be03b9df3c', '613726cf829744d79ad336907ad1e122', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-03-23 20:29:24', 'admin', '2020-03-23 20:29:24', NULL);
INSERT INTO `task_log_det` VALUES ('a66e2d8b1ea2420abd8f62fcce472efc', '519d8b47bbc547658da66ac6dde8459e', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-03-22 22:59:47', 'admin', '2020-03-22 22:59:47', NULL);
INSERT INTO `task_log_det` VALUES ('a6906f41520d40dd9d2ae3d815c6b118', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-03-28 00:38:57', 'admin', '2020-03-28 00:38:57', NULL);
INSERT INTO `task_log_det` VALUES ('a6ca51e8a19e4c08b98707be95f92573', '2a01838c7704434c90f420db85166c8c', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-03-23 20:22:59', 'admin', '2020-03-23 20:22:59', NULL);
INSERT INTO `task_log_det` VALUES ('a737906613b240a2923730b69c574a26', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('a75be09b44ee4b66bb4ca9208aaad0ed', '519d8b47bbc547658da66ac6dde8459e', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-22 22:59:47', 'admin', '2020-03-22 22:59:47', NULL);
INSERT INTO `task_log_det` VALUES ('aabf8cf93f6f4c5ca0a4813d54fd16ec', '519d8b47bbc547658da66ac6dde8459e', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-03-22 22:59:49', 'admin', '2020-03-22 22:59:49', NULL);
INSERT INTO `task_log_det` VALUES ('ab4950353af9476a8f076b2962c023b5', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('ad009ec862384016be0218b83f219b0c', '613726cf829744d79ad336907ad1e122', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-03-23 20:29:23', 'admin', '2020-03-23 20:29:23', NULL);
INSERT INTO `task_log_det` VALUES ('ad70342e308348339e96ca0001b600a8', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-03-26 00:12:16', 'admin', '2020-03-26 00:12:16', NULL);
INSERT INTO `task_log_det` VALUES ('ae32811c697c44e2bf3b14c270878a2c', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-03-26 00:12:17', 'admin', '2020-03-26 00:12:17', NULL);
INSERT INTO `task_log_det` VALUES ('ae7e32f9fe3b48c691f07e2c10de50d1', '613726cf829744d79ad336907ad1e122', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-03-23 20:29:25', 'admin', '2020-03-23 20:29:25', NULL);
INSERT INTO `task_log_det` VALUES ('af52854a61dd43b583274e47e466c10f', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('afcdbde0c7f44a4f9897f05bb955a59a', '7f61083dcbba4152bec23225a4f33c18', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-03-29 14:11:07', 'test', '2020-03-29 14:11:07', NULL);
INSERT INTO `task_log_det` VALUES ('b1161bdf543946ffb0536e2fd58d0f55', '613726cf829744d79ad336907ad1e122', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-03-23 20:29:24', 'admin', '2020-03-23 20:29:24', NULL);
INSERT INTO `task_log_det` VALUES ('b11b98ae180e49e29bdcd20951d4c422', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-03-28 00:38:59', 'admin', '2020-03-28 00:38:59', NULL);
INSERT INTO `task_log_det` VALUES ('b31aca3b8cc444279b750f21e98c63a8', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-03-26 00:12:21', 'admin', '2020-03-26 00:12:21', NULL);
INSERT INTO `task_log_det` VALUES ('b3f1674f183c414cae365c7286c111c0', '519d8b47bbc547658da66ac6dde8459e', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-03-22 22:59:47', 'admin', '2020-03-22 22:59:47', NULL);
INSERT INTO `task_log_det` VALUES ('b452ac8d8dcf45baa208fade28b8067c', 'e46818719f774add8c23fd313192b5f4', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('b50082d74b8048ebb0b3cfccf0028a7f', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-03-28 00:38:58', 'admin', '2020-03-28 00:38:58', NULL);
INSERT INTO `task_log_det` VALUES ('b5440521f0104566aef9971776f21514', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-03-28 00:38:58', 'admin', '2020-03-28 00:38:58', NULL);
INSERT INTO `task_log_det` VALUES ('b5d71d2ce83c468191c0b5fa61009171', '519d8b47bbc547658da66ac6dde8459e', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-03-22 22:59:47', 'admin', '2020-03-22 22:59:47', NULL);
INSERT INTO `task_log_det` VALUES ('b78bf844aea646abb71ead275b29e060', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-03-26 00:12:20', 'admin', '2020-03-26 00:12:20', NULL);
INSERT INTO `task_log_det` VALUES ('b7ace5571b804496bdf8582c5a58609c', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('b836a999517348ec8a6230fda01ffd90', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-03-26 00:12:18', 'admin', '2020-03-26 00:12:18', NULL);
INSERT INTO `task_log_det` VALUES ('b92567e55a3c4b129e02bace19c3999d', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-03-26 00:12:17', 'admin', '2020-03-26 00:12:17', NULL);
INSERT INTO `task_log_det` VALUES ('ba355ab2f27249b8aca64d4964a6f4d7', '7f61083dcbba4152bec23225a4f33c18', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-03-29 14:11:08', 'test', '2020-03-29 14:11:08', NULL);
INSERT INTO `task_log_det` VALUES ('ba81ef35e2e543f7abe02061ec88a0bf', 'e46818719f774add8c23fd313192b5f4', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-05-31 23:58:57', 'admin', '2020-05-31 23:58:57', NULL);
INSERT INTO `task_log_det` VALUES ('bbb66b1346bf4b9085c87e67ab678b0f', 'e46818719f774add8c23fd313192b5f4', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('bc3b9e10bce34deb8367e2d962cf9fe8', 'e46818719f774add8c23fd313192b5f4', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-05-31 23:58:57', 'admin', '2020-05-31 23:58:57', NULL);
INSERT INTO `task_log_det` VALUES ('bcac6620962c40fcb5a60ddf71cf3c50', '7f61083dcbba4152bec23225a4f33c18', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-03-29 14:11:09', 'test', '2020-03-29 14:11:09', NULL);
INSERT INTO `task_log_det` VALUES ('bde916dfa5e44e83b58f624fc74fd656', '519d8b47bbc547658da66ac6dde8459e', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-03-22 22:59:46', 'admin', '2020-03-22 22:59:46', NULL);
INSERT INTO `task_log_det` VALUES ('be3e306c7cfb4e17b0f06a13c90d9608', '613726cf829744d79ad336907ad1e122', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-03-23 20:29:24', 'admin', '2020-03-23 20:29:24', NULL);
INSERT INTO `task_log_det` VALUES ('be40f9ac0ff348c5b9e4b3f8bd40d168', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-03-28 00:39:00', 'admin', '2020-03-28 00:39:00', NULL);
INSERT INTO `task_log_det` VALUES ('be55b7f64a264437a2e81e525eeb7800', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('c0a86610e70c40249e174b5bee6d1eb6', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-03-26 00:12:21', 'admin', '2020-03-26 00:12:21', NULL);
INSERT INTO `task_log_det` VALUES ('c0e9a8a90cfc40a592bcb997544e29f7', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('c1021ccc92594240b81e40bbc396d181', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-03-28 00:38:57', 'admin', '2020-03-28 00:38:57', NULL);
INSERT INTO `task_log_det` VALUES ('c272f08c95544057b0e5e35749765d39', '7f61083dcbba4152bec23225a4f33c18', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-03-29 14:11:11', 'test', '2020-03-29 14:11:11', NULL);
INSERT INTO `task_log_det` VALUES ('c4a0ac2d56bc4d1f8ed532a9649c4b87', 'e46818719f774add8c23fd313192b5f4', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('c5dfc6d79daa43d697a4dbfa30506861', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('c5f3599784b24832be5bacb96fdb80d5', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('c667badcb2bd45f7805b78a3c8482e60', '2a01838c7704434c90f420db85166c8c', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-03-23 20:23:00', 'admin', '2020-03-23 20:23:00', NULL);
INSERT INTO `task_log_det` VALUES ('c67edd7c604b42bb9c9c780c3ecda029', '2a01838c7704434c90f420db85166c8c', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-03-23 20:22:59', 'admin', '2020-03-23 20:22:59', NULL);
INSERT INTO `task_log_det` VALUES ('c6b5540838ce49b69d9b7e62b47bf0f6', '7f61083dcbba4152bec23225a4f33c18', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-03-29 14:11:07', 'test', '2020-03-29 14:11:07', NULL);
INSERT INTO `task_log_det` VALUES ('c7e82da5aef0414ab2ca4417ad805a45', '7f61083dcbba4152bec23225a4f33c18', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-03-29 14:11:07', 'test', '2020-03-29 14:11:07', NULL);
INSERT INTO `task_log_det` VALUES ('c81a277460524e0694cc61fbf466b340', '2a01838c7704434c90f420db85166c8c', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-03-23 20:22:59', 'admin', '2020-03-23 20:22:59', NULL);
INSERT INTO `task_log_det` VALUES ('c8270f34edbd480093777fa53d7c819f', '7f61083dcbba4152bec23225a4f33c18', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-03-29 14:11:08', 'test', '2020-03-29 14:11:08', NULL);
INSERT INTO `task_log_det` VALUES ('c9474388cd5c4a78a307b1409fddd3a1', '2a01838c7704434c90f420db85166c8c', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-03-23 20:22:59', 'admin', '2020-03-23 20:22:59', NULL);
INSERT INTO `task_log_det` VALUES ('c957b7ae197e4f8190c65110818083a1', 'e46818719f774add8c23fd313192b5f4', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-05-31 23:58:57', 'admin', '2020-05-31 23:58:57', NULL);
INSERT INTO `task_log_det` VALUES ('c9ccd47ad3284afbb3bfea0976191923', '2a01838c7704434c90f420db85166c8c', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-03-23 20:23:00', 'admin', '2020-03-23 20:23:00', NULL);
INSERT INTO `task_log_det` VALUES ('caceced5d042446781ae116f153fe90d', '7f61083dcbba4152bec23225a4f33c18', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-03-29 14:11:10', 'test', '2020-03-29 14:11:10', NULL);
INSERT INTO `task_log_det` VALUES ('caedbe07b1d84b798ae7e2f81edc55d8', 'e46818719f774add8c23fd313192b5f4', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('ccb15162b72e4c13970d692829cee4de', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-03-26 00:12:18', 'admin', '2020-03-26 00:12:18', NULL);
INSERT INTO `task_log_det` VALUES ('ce1e4e20b48e447980c89d6b6fbd2296', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-03-28 00:39:00', 'admin', '2020-03-28 00:39:00', NULL);
INSERT INTO `task_log_det` VALUES ('ce8255865fc74d5d99cbab70f0f66f57', 'e46818719f774add8c23fd313192b5f4', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-05-31 23:58:57', 'admin', '2020-05-31 23:58:57', NULL);
INSERT INTO `task_log_det` VALUES ('cf0d433eec364a5da4801b372e297c29', '2a01838c7704434c90f420db85166c8c', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-03-23 20:22:59', 'admin', '2020-03-23 20:22:59', NULL);
INSERT INTO `task_log_det` VALUES ('cf7c3587c25b4d75998b4927f08ef4a9', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `task_log_det` VALUES ('d0fbfebc629a47b9971644594ae9881d', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-03-28 00:39:00', 'admin', '2020-03-28 00:39:00', NULL);
INSERT INTO `task_log_det` VALUES ('d1ae44e734bc4ed0b18865cf34213df9', '613726cf829744d79ad336907ad1e122', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-03-23 20:29:26', 'admin', '2020-03-23 20:29:26', NULL);
INSERT INTO `task_log_det` VALUES ('d1d7b2956dc848589bcb50f09b7ede4a', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-03-26 00:12:21', 'admin', '2020-03-26 00:12:21', NULL);
INSERT INTO `task_log_det` VALUES ('d2dae3726aa4458d9ff9b9c8b26bedd5', '2a01838c7704434c90f420db85166c8c', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-03-23 20:23:01', 'admin', '2020-03-23 20:23:01', NULL);
INSERT INTO `task_log_det` VALUES ('d335450e3d03409b83ecae779eadebc7', '519d8b47bbc547658da66ac6dde8459e', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-03-22 22:59:48', 'admin', '2020-03-22 22:59:48', NULL);
INSERT INTO `task_log_det` VALUES ('d3de3ca4aa0d4625ab903aeebd5216e8', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `task_log_det` VALUES ('d402324cef114b499da78a90c7c732fb', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `task_log_det` VALUES ('d459daec0b4c4b1587b7628cdf7f0ec6', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `task_log_det` VALUES ('d53a8d10550342d6890b5b4ce3362643', '2a01838c7704434c90f420db85166c8c', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-03-23 20:23:00', 'admin', '2020-03-23 20:23:00', NULL);
INSERT INTO `task_log_det` VALUES ('d7a93d48d90644d3beee074f3492205a', '7f61083dcbba4152bec23225a4f33c18', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-03-29 14:11:10', 'test', '2020-03-29 14:11:10', NULL);
INSERT INTO `task_log_det` VALUES ('d92f0942aa3347878cf732f8cb51c0e1', '613726cf829744d79ad336907ad1e122', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-03-23 20:29:26', 'admin', '2020-03-23 20:29:26', NULL);
INSERT INTO `task_log_det` VALUES ('da2c3e2e54d74c9d870dc84a76d11320', '2a01838c7704434c90f420db85166c8c', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-23 20:23:02', 'admin', '2020-03-23 20:23:02', NULL);
INSERT INTO `task_log_det` VALUES ('da6d288970f941c5a2b9ac699e2afb7d', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-03-26 00:12:19', 'admin', '2020-03-26 00:12:19', NULL);
INSERT INTO `task_log_det` VALUES ('da700f6bbc1349418bbb867839ac3e72', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('db85fd29a71e44a19e1085ab6db8f414', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-03-28 00:38:59', 'admin', '2020-03-28 00:38:59', NULL);
INSERT INTO `task_log_det` VALUES ('dcd28ead14f44062860cded88a633a4e', '613726cf829744d79ad336907ad1e122', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-23 20:29:26', 'admin', '2020-03-23 20:29:26', NULL);
INSERT INTO `task_log_det` VALUES ('ddec520ddb6147198500ced2f9b788df', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('de0b0961b8c14bed9845387b0f2c3704', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-03-26 00:12:21', 'admin', '2020-03-26 00:12:21', NULL);
INSERT INTO `task_log_det` VALUES ('de69f1defe514ca181b8c3af761774f4', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('e1cfda1bafe74e7aae64008809fb6b98', '7f61083dcbba4152bec23225a4f33c18', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-03-29 14:11:08', 'test', '2020-03-29 14:11:08', NULL);
INSERT INTO `task_log_det` VALUES ('e22486e3e59d408db8c5d97150fd8110', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-03-28 00:38:58', 'admin', '2020-03-28 00:38:58', NULL);
INSERT INTO `task_log_det` VALUES ('e28a04eec8d64358a911b41b36418c0d', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-03-28 00:38:57', 'admin', '2020-03-28 00:38:57', NULL);
INSERT INTO `task_log_det` VALUES ('e3034093e8b94a0793bbe97a5019a9e3', '519d8b47bbc547658da66ac6dde8459e', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-22 22:59:48', 'admin', '2020-03-22 22:59:48', NULL);
INSERT INTO `task_log_det` VALUES ('e37871f652fa4f1f9345ff8666bfcd34', '7f61083dcbba4152bec23225a4f33c18', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-03-29 14:11:07', 'test', '2020-03-29 14:11:07', NULL);
INSERT INTO `task_log_det` VALUES ('e4e5e4f487484ef996ad55899045a331', 'e46818719f774add8c23fd313192b5f4', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('e583fc30f09046a3a76d32530a23d1a9', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', 'c035ad6eb29045138cfb17c5973f8782', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `task_log_det` VALUES ('e58fb4469749404ea68259dd1265c13d', '7f61083dcbba4152bec23225a4f33c18', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-03-29 14:11:11', 'test', '2020-03-29 14:11:11', NULL);
INSERT INTO `task_log_det` VALUES ('e6f3f8b50eba429a8861dedbf763957a', 'e46818719f774add8c23fd313192b5f4', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('e7079267fb97476298a21688226dea84', '613726cf829744d79ad336907ad1e122', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-03-23 20:29:25', 'admin', '2020-03-23 20:29:25', NULL);
INSERT INTO `task_log_det` VALUES ('e7395f88e88a4e5fbd98364e9ac12f0d', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-03-28 00:39:00', 'admin', '2020-03-28 00:39:00', NULL);
INSERT INTO `task_log_det` VALUES ('e9f2bedaa1094e988b84139be5543cef', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-03-28 00:38:59', 'admin', '2020-03-28 00:38:59', NULL);
INSERT INTO `task_log_det` VALUES ('eacaa3c4fc184ee1bc68f749b2dc6b39', 'e46818719f774add8c23fd313192b5f4', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('ebfb602b5e4f4e8b8cd3f593cb9386f6', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-03-26 00:12:20', 'admin', '2020-03-26 00:12:20', NULL);
INSERT INTO `task_log_det` VALUES ('ec249eef4da641fc89f521e8fae229a5', 'e46818719f774add8c23fd313192b5f4', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('ec300b36ce964e89b88957fa0e7e706e', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-03-26 00:12:19', 'admin', '2020-03-26 00:12:19', NULL);
INSERT INTO `task_log_det` VALUES ('ec897830d75f4c44bc9de241c210d96c', 'e46818719f774add8c23fd313192b5f4', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-05-31 23:58:55', 'admin', '2020-05-31 23:58:55', NULL);
INSERT INTO `task_log_det` VALUES ('ecb2bf1176cd40c99a555c5f3e6e1efd', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', 'c4aaa0e83a0c401091dc48849ad96874', '2020-03-26 00:12:18', 'admin', '2020-03-26 00:12:18', NULL);
INSERT INTO `task_log_det` VALUES ('ece616655a774e229104319e6208658a', 'e46818719f774add8c23fd313192b5f4', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('ed3d9a97917b48ada15e0ac86df09754', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `task_log_det` VALUES ('ee03d151a1794d3cbd3ef5a8e7f7e0c6', 'e46818719f774add8c23fd313192b5f4', 'bugId', '703589a4f8e5458495ce0c51909b9ca4', '2020-05-31 23:58:56', 'admin', '2020-05-31 23:58:56', NULL);
INSERT INTO `task_log_det` VALUES ('ee103d4857ba418a95b623d1aaff756b', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('ef11f090626f4a75bd83f2f90517a5c6', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('ef8e99d564a04d7ba0c7819ffca07d0c', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-03-28 00:38:57', 'admin', '2020-03-28 00:38:57', NULL);
INSERT INTO `task_log_det` VALUES ('efc05d8d4a5548e497568c58a3ec13a6', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-03-26 00:12:19', 'admin', '2020-03-26 00:12:19', NULL);
INSERT INTO `task_log_det` VALUES ('f055a3cc67044740b36d0ce80805a90b', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-28 00:38:57', 'admin', '2020-03-28 00:38:57', NULL);
INSERT INTO `task_log_det` VALUES ('f09d75851c9e446eaf628c1278976463', '519d8b47bbc547658da66ac6dde8459e', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-03-22 22:59:47', 'admin', '2020-03-22 22:59:47', NULL);
INSERT INTO `task_log_det` VALUES ('f1ce39f02d784eb9a4db9e7fc1996429', '7f61083dcbba4152bec23225a4f33c18', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-03-29 14:11:08', 'test', '2020-03-29 14:11:08', NULL);
INSERT INTO `task_log_det` VALUES ('f24724d473eb49f097f84ef05c8534e5', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('f2d6614303814765b0f8449a87f42285', '519d8b47bbc547658da66ac6dde8459e', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-03-22 22:59:46', 'admin', '2020-03-22 22:59:46', NULL);
INSERT INTO `task_log_det` VALUES ('f2d9ef57659b453b8e51636846c80b8b', '8fc3e36f076044b6b13998f38ff97e6a', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-22 18:05:51', 'test', '2020-03-22 18:05:51', NULL);
INSERT INTO `task_log_det` VALUES ('f4a7d1ba1c974c9ea351a51aa38a2699', 'e46818719f774add8c23fd313192b5f4', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-05-31 23:58:55', 'admin', '2020-05-31 23:58:55', NULL);
INSERT INTO `task_log_det` VALUES ('f705a99b8b5f44ff908a1d50efb7d485', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '8bc4bd521b0240d794843cd61aaf848f', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('f7318ce682d9475191753da720ca9f3f', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `task_log_det` VALUES ('f771703171bc460dbe2c56ac19b848d1', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-03-28 00:38:59', 'admin', '2020-03-28 00:38:59', NULL);
INSERT INTO `task_log_det` VALUES ('f8a6ae1bc11b4ca8a6da09fb3acda7f5', '2a01838c7704434c90f420db85166c8c', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-03-23 20:23:00', 'admin', '2020-03-23 20:23:00', NULL);
INSERT INTO `task_log_det` VALUES ('f9588761f5a94db191420e0c58efe1f9', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '244d47bfc8ee4da590b97dd7f8bccadf', '2020-06-01 00:01:39', 'admin', '2020-06-01 00:01:39', NULL);
INSERT INTO `task_log_det` VALUES ('f99b94917a824bea929b88e50ecba909', '2a01838c7704434c90f420db85166c8c', 'bugId', 'c5ef3796336442f1a092d79fa804403a', '2020-03-23 20:23:00', 'admin', '2020-03-23 20:23:00', NULL);
INSERT INTO `task_log_det` VALUES ('f9d4547606414f028b0d1ece7d21e811', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('fa75bdc61fd448348ccd6c76ac2c816e', 'b48a890ef56840ce8c6b2f4ac2e0a060', 'bugId', '0d9bf6f0a9df47828bde1c80abf3b6bf', '2020-03-28 00:38:59', 'admin', '2020-03-28 00:38:59', NULL);
INSERT INTO `task_log_det` VALUES ('fa97c921efa943aaa65218d2de5c7e91', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('fb2cb3ec5aec4826a6488da4b35b434d', '7f61083dcbba4152bec23225a4f33c18', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-03-29 14:11:08', 'test', '2020-03-29 14:11:08', NULL);
INSERT INTO `task_log_det` VALUES ('fbedf3bca642484da3866d31b8f7176c', 'b7ec88d044994b909ae44beb11f7f3d8', 'bugId', '8fbf57556139476ca702fb35c88789df', '2020-03-26 00:12:20', 'admin', '2020-03-26 00:12:20', NULL);
INSERT INTO `task_log_det` VALUES ('fc6664bc13544910b8cec6f21da51cf6', '613726cf829744d79ad336907ad1e122', 'bugId', 'bd61a246e3f24a999ac68ac683a68d51', '2020-03-23 20:29:27', 'admin', '2020-03-23 20:29:27', NULL);
INSERT INTO `task_log_det` VALUES ('fdb16053b4024e5e8ce065423335a61d', 'bf8ec64b00a948bd9789397f795156c8', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-06-01 00:01:40', 'admin', '2020-06-01 00:01:40', NULL);
INSERT INTO `task_log_det` VALUES ('fee9934d5e524eaeb11ca486c328c82c', 'e46818719f774add8c23fd313192b5f4', 'bugId', '96af2f88505f4c98bfaceff48b9bcaf0', '2020-05-31 23:58:55', 'admin', '2020-05-31 23:58:55', NULL);

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `test_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '测试ID',
  `test_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '测试名',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`test_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('01a0e54ec2b5425b83f978b249484b14', '测试143426734', '2018-08-22 00:00:03');
INSERT INTO `test` VALUES ('4b9c7ee627714288831175be110d030e', '测试数据2', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('665c29626ce1400b9983cbbf6540d427', '测试-1345641338', '2018-08-13 00:00:00');
INSERT INTO `test` VALUES ('82c0b5e767b64511ae090898b0df69a6', '测试数据1', '2018-07-09 00:00:00');
INSERT INTO `test` VALUES ('83ae005933d249cb87ab5e6df52434df', '测试', '2018-08-30 10:43:30');
INSERT INTO `test` VALUES ('ae48f4d4b9de4bd588d601f9ecc3657f', '测试1635560001', '2018-08-13 00:00:00');
INSERT INTO `test` VALUES ('ba4db6145a8b466f9be0e72228dcbddd', '测试776799309', '2018-08-12 00:00:00');
INSERT INTO `test` VALUES ('babb8903f31740108fdb303d328852c7', '测试-1788136031', '2018-08-13 00:00:00');
INSERT INTO `test` VALUES ('ca147d48e27743998626bf8a3dd866c9', '测试-1444069085', '2018-08-12 00:00:00');
INSERT INTO `test` VALUES ('cffe7e85244f4811b9763f6ce5885d63', '测试-2064463233', '2018-08-13 00:00:00');
INSERT INTO `test` VALUES ('e0d229e6aa984161a738af1d94fb92fe', '1', '2018-08-11 00:00:00');
INSERT INTO `test` VALUES ('e1350c8c991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e1476f8e991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e153256b991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e162e2be991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e1706c6f991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e178b20b991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e1817e7d991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e18b66c4991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e193cb64991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e1a078a0991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e1a9ca8f991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e1b265f8991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e1bae5df991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e1c4e49f991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e1cd64ae991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e1d5dd35991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e1de2a86991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e1e6a3e8991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e1ef2a22991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e1f94ded991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e201defb991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e20a2a96991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e2127fda991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e21b003e991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e222cb92991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e22a3b2d991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e232c334991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e23b3a2e991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e2439b8f991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e24bede5991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e2560956991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');
INSERT INTO `test` VALUES ('e25e9b86991b11e88384f8a9639f5919', '测试数据', '2018-07-06 00:00:00');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户ID',
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改',
  `try_count` int(11) NULL DEFAULT 0 COMMENT '尝试登录次数',
  `enable` tinyint(4) NULL DEFAULT 0 COMMENT '是否可用',
  `role_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当前角色',
  PRIMARY KEY (`user_id`, `user_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('admin', '管理员', '21232f297a57a5a743894a0e4a801fc3', '2018-07-31 23:34:18', '2018-07-31 23:34:16', 5, 1, 'admin');
INSERT INTO `user` VALUES ('guest', '游客', '2db7dc272caf9844f1677ec0b5be76d9', '2018-08-12 23:08:52', '2018-08-12 23:08:52', 0, 1, 'guest');
INSERT INTO `user` VALUES ('test', '测试账号', '098f6bcd4621d373cade4e832627b4f6', '2018-08-30 10:38:47', '2018-08-30 10:38:47', 2, 1, 'user');
INSERT INTO `user` VALUES ('zhisan', '纸伞', '21232f297a57a5a743894a0e4a801fc3', '2019-09-18 00:18:53', '2019-09-18 00:18:53', 0, 1, 'user');

SET FOREIGN_KEY_CHECKS = 1;

/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : db_client_manage

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2019-10-10 17:51:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_card_bill
-- ----------------------------
DROP TABLE IF EXISTS `t_card_bill`;
CREATE TABLE `t_card_bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientId` int(11) DEFAULT NULL,
  `clientName` varchar(50) DEFAULT NULL,
  `carno` varchar(100) DEFAULT NULL,
  `actual` decimal(10,2) DEFAULT NULL,
  `discounts` decimal(10,0) DEFAULT NULL,
  `money` decimal(10,2) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  `type` int(4) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `createDateTime` datetime DEFAULT NULL,
  `createUserId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_card_bill
-- ----------------------------
INSERT INTO `t_card_bill` VALUES ('11', '1', '李哥', '1001', '1.00', '0', '1.00', '1.00', '1', '首冲', '2019-09-08 22:54:27', '3');
INSERT INTO `t_card_bill` VALUES ('12', '1', '李哥', '1001', '10.00', '1', '11.00', '12.00', '1', '11', '2019-09-11 23:52:27', '1');
INSERT INTO `t_card_bill` VALUES ('13', '2', '赵子飞', '1002', '80.00', '20', '100.00', '100.00', '1', '', '2019-09-12 00:36:03', '1');
INSERT INTO `t_card_bill` VALUES ('14', '1', '李哥', '1001', null, null, '100.00', '-88.00', '2', '消费', '2019-09-15 20:29:51', '1');
INSERT INTO `t_card_bill` VALUES ('15', '5', '李白', '1005', '90.00', '10', '100.00', '100.00', '1', '活动日优惠10元', '2019-09-16 23:58:42', '1');
INSERT INTO `t_card_bill` VALUES ('16', '7', '曾小贤', '1007', '90.00', '10', '100.00', '100.00', '1', '活动日优惠10元。', '2019-09-16 23:59:10', '1');
INSERT INTO `t_card_bill` VALUES ('17', '10', '酷客', '1010', '90.00', '10', '100.00', '100.00', '1', '活动日优惠10元。', '2019-09-16 23:59:21', '1');
INSERT INTO `t_card_bill` VALUES ('18', '11', '张玉华', '1011', '90.00', '10', '100.00', '100.00', '1', '活动日优惠10元。', '2019-09-16 23:59:34', '1');
INSERT INTO `t_card_bill` VALUES ('19', '13', '费晓峰', '1013', '90.00', '10', '100.00', '100.00', '1', '活动日优惠10元。', '2019-09-16 23:59:45', '1');
INSERT INTO `t_card_bill` VALUES ('20', '3', '孙膑', '1003', '500.00', '0', '500.00', '500.00', '1', '正常储值', '2019-09-17 00:01:05', '1');
INSERT INTO `t_card_bill` VALUES ('21', '1', '李哥', '1001', '88.00', '0', '88.00', '0.00', '1', '正常储值', '2019-09-17 00:02:07', '1');
INSERT INTO `t_card_bill` VALUES ('22', '3', '孙膑', '1003', null, null, '250.00', '250.00', '2', '高级消费', '2019-09-17 00:02:44', '1');
INSERT INTO `t_card_bill` VALUES ('23', '9', '李华', '1009', '100.00', '0', '100.00', '100.00', '1', '无', '2019-09-17 00:17:55', '1');
INSERT INTO `t_card_bill` VALUES ('24', '10', '酷客', '1010', null, null, '10.00', '90.00', '2', '随意消费', '2019-09-17 00:19:54', '1');
INSERT INTO `t_card_bill` VALUES ('25', '2', '赵子飞', '1002', null, null, '100.00', '0.00', '2', '花光', '2019-09-17 23:39:55', '1');
INSERT INTO `t_card_bill` VALUES ('26', '3', '孙膑', '1003', null, null, '250.00', '0.00', '2', '花光', '2019-09-17 23:40:05', '1');
INSERT INTO `t_card_bill` VALUES ('27', '5', '李白', '1005', null, null, '100.00', '0.00', '2', '花光', '2019-09-17 23:40:14', '1');
INSERT INTO `t_card_bill` VALUES ('28', '1', '李哥', '1001', '10.00', '0', '10.00', '10.00', '1', '', '2019-09-23 09:54:32', '2');
INSERT INTO `t_card_bill` VALUES ('29', '1', '李哥', '1001', null, null, '5.00', '5.00', '2', '', '2019-09-23 09:54:52', '2');
INSERT INTO `t_card_bill` VALUES ('30', '1', '李哥', '1001', '100.00', '0', '100.00', '105.00', '1', '', '2019-09-23 13:00:11', '1');
INSERT INTO `t_card_bill` VALUES ('31', '1', '李哥', '1001', null, null, '100.00', '5.00', '2', '', '2019-09-23 13:00:33', '1');
INSERT INTO `t_card_bill` VALUES ('32', '1', '李哥', '1001', null, null, '2.00', '7.00', '1', '', '2019-10-03 13:17:02', '1');
INSERT INTO `t_card_bill` VALUES ('33', '1', '李哥', '1001', null, null, '0.00', '7.00', '1', '', '2019-10-03 13:17:13', '1');
INSERT INTO `t_card_bill` VALUES ('34', '1', '李哥', '1001', null, null, '-1.00', '6.00', '1', '', '2019-10-03 13:17:20', '1');
INSERT INTO `t_card_bill` VALUES ('35', '14', '郭芳芳', '1014', null, null, '0.00', '0.00', '2', '', '2019-10-03 13:17:45', '1');
INSERT INTO `t_card_bill` VALUES ('36', '1', '李哥', '1001', null, null, '-1.00', '7.00', '2', '', '2019-10-03 13:17:51', '1');
INSERT INTO `t_card_bill` VALUES ('37', '1', '李哥', '1001', null, null, '8.00', '-1.00', '2', '', '2019-10-03 13:17:57', '1');
INSERT INTO `t_card_bill` VALUES ('38', '1', '李哥', '1001', null, null, '5.00', '4.00', '1', '', '2019-10-03 13:18:02', '1');

-- ----------------------------
-- Table structure for t_client
-- ----------------------------
DROP TABLE IF EXISTS `t_client`;
CREATE TABLE `t_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carno` varchar(250) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sex` int(2) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  `createDateTime` datetime DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  `clientTypeId` int(11) DEFAULT NULL,
  `createUserId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `carno_only_one` (`carno`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_client
-- ----------------------------
INSERT INTO `t_client` VALUES ('1', '1001', '李哥', '1', '15454845143', '江苏省南京市玄武区孝陵卫街道', '4.00', '2019-09-08 22:35:37', null, '1', '3');
INSERT INTO `t_client` VALUES ('2', '1002', '赵子飞', '1', '18885411735', '上海市虹口区四平路591号 ', '0.00', '2019-09-08 22:38:41', null, '1', '3');
INSERT INTO `t_client` VALUES ('3', '1003', '孙膑', '1', '18854588585', '上海市静安区陕西北路105号 ', '0.00', '2019-09-08 22:39:20', null, '1', '3');
INSERT INTO `t_client` VALUES ('4', '1004', '李欣', '2', '18857875558', '江苏省南京市玄武区', '0.00', '2019-09-08 22:44:48', null, '2', '3');
INSERT INTO `t_client` VALUES ('5', '1005', '李白', '1', '18825488547', '江苏省南京市秦淮区', '0.00', '2019-09-08 22:45:40', null, '3', '3');
INSERT INTO `t_client` VALUES ('6', '1006', '胡歌', '1', '18888888888', '江苏省南京市秦淮区', '0.00', '2019-09-08 22:46:43', null, '4', '3');
INSERT INTO `t_client` VALUES ('7', '1007', '曾小贤', '1', '18858588888', '江苏省南京市鼓楼区', '100.00', '2019-09-08 22:47:31', null, '5', '3');
INSERT INTO `t_client` VALUES ('8', '1008', '胡一菲', '2', '18852569858', '江苏省南京市建邺区', '0.00', '2019-09-08 22:48:32', null, '6', '3');
INSERT INTO `t_client` VALUES ('9', '1009', '李华', '2', '18598588888', '江苏省南京市秦淮区', '100.00', '2019-09-08 22:49:48', '', '7', '3');
INSERT INTO `t_client` VALUES ('10', '1010', '酷客', '1', '18858585888', '上海市浦东新区乳山路72号 ', '90.00', '2019-09-08 22:50:37', null, '8', '3');
INSERT INTO `t_client` VALUES ('11', '1011', '张玉华', '2', '18898589888', '上海市虹口区武昌路579号 ', '100.00', '2019-09-08 22:51:09', null, '9', '3');
INSERT INTO `t_client` VALUES ('12', '1012', '周瑜', '1', '18858589988', '上海市浦东新区陆家嘴西路168号正大广场7楼 ', '0.00', '2019-09-08 22:51:39', null, '10', '3');
INSERT INTO `t_client` VALUES ('13', '1013', '费晓峰', '1', '15445558545', '贵州省贵阳市观山湖区', '100.00', '2019-09-16 21:52:19', '', '1', '1');
INSERT INTO `t_client` VALUES ('14', '1014', '郭芳芳', '2', '15585454588', '江苏省南京市玄武区', '0.00', '2019-09-16 22:12:55', '无', '1', '1');
INSERT INTO `t_client` VALUES ('15', '1015', '李欧', '2', '17554544455', '江苏省南京市玄武区', '0.00', '2019-09-16 22:13:32', '无', '1', '1');
INSERT INTO `t_client` VALUES ('16', '1016', '李以', '2', '15857855556', '江苏省南京市玄武区', '0.00', '2019-09-16 22:13:59', '无', '1', '1');
INSERT INTO `t_client` VALUES ('17', '1017', '张一线', '2', '1858457588', '江苏省南京市玄武区', '0.00', '2019-09-16 23:53:46', '', '1', '1');
INSERT INTO `t_client` VALUES ('19', '1018', '张少康', '1', '18858545888', '江苏省南京市玄武区', '0.00', '2019-09-16 23:53:55', '', '1', '1');
INSERT INTO `t_client` VALUES ('20', '1019', '鹿特丹', '2', '18854541114', '江苏省南京市玄武区', '0.00', '2019-09-16 23:54:02', null, '1', '1');
INSERT INTO `t_client` VALUES ('22', '1020', '刘天', '1', '18854541114', '江苏省南京市玄武区', '0.00', '2019-09-16 23:54:13', '', '3', '1');
INSERT INTO `t_client` VALUES ('23', '1021', '李飞腾', '1', '18854144445', '江苏省南京市玄武区', '0.00', '2019-09-16 23:54:19', '', '1', '1');
INSERT INTO `t_client` VALUES ('24', '1022', '王大超', '1', '18854114544', '江苏省南京市玄武区', '0.00', '2019-09-16 23:54:32', null, '1', '1');
INSERT INTO `t_client` VALUES ('25', '1023', '王大姨', '2', '19854545552', '江苏省南京市玄武区', '0.00', '2019-09-16 23:54:55', '', '1', '1');
INSERT INTO `t_client` VALUES ('26', '1024', '黄甜', '2', '15474445447', '江苏省南京市玄武区', '0.00', '2019-09-17 23:36:52', '', '1', '1');
INSERT INTO `t_client` VALUES ('27', '1025', '张华', '1', '15525455555', '江苏省南京市玄武区', '0.00', '2019-09-17 23:37:15', null, '1', '1');
INSERT INTO `t_client` VALUES ('28', '1026', '朱茵', '2', '18888888888', '江苏省南京市玄武区', '0.00', '2019-09-17 23:37:48', null, '1', '1');
INSERT INTO `t_client` VALUES ('29', '1027', '至尊宝', '1', '18854541112', '江苏省南京市玄武区', '0.00', '2019-09-17 23:38:09', null, '1', '1');
INSERT INTO `t_client` VALUES ('30', '1028', '梨花', '2', '15555555454', '江苏省南京市玄武区', '0.00', '2019-09-17 23:38:29', '', '1', '1');

-- ----------------------------
-- Table structure for t_client_type
-- ----------------------------
DROP TABLE IF EXISTS `t_client_type`;
CREATE TABLE `t_client_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_client_type
-- ----------------------------
INSERT INTO `t_client_type` VALUES ('1', '10000', '普通用户');
INSERT INTO `t_client_type` VALUES ('2', '10001', '九折客户');
INSERT INTO `t_client_type` VALUES ('3', '10002', '八折客户');
INSERT INTO `t_client_type` VALUES ('4', '10003', '七折客户');
INSERT INTO `t_client_type` VALUES ('5', '10004', ' 六折客户');
INSERT INTO `t_client_type` VALUES ('6', '10005', '五折客户');
INSERT INTO `t_client_type` VALUES ('7', '10006', '四折客户');
INSERT INTO `t_client_type` VALUES ('8', '10007', '三折客户');
INSERT INTO `t_client_type` VALUES ('9', '10008', '二折客户');
INSERT INTO `t_client_type` VALUES ('10', '10009', '一折客户');
INSERT INTO `t_client_type` VALUES ('11', '10010', '八五折客户');

-- ----------------------------
-- Table structure for t_config
-- ----------------------------
DROP TABLE IF EXISTS `t_config`;
CREATE TABLE `t_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain_name` varchar(100) DEFAULT NULL,
  `web_site` varchar(200) DEFAULT NULL,
  `headStr` text,
  `layuiStr` text,
  `init_money` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_config
-- ----------------------------
INSERT INTO `t_config` VALUES ('1', '客户管理系统', 'www.baidu.com', '<!-- 强制  高速模式 渲染网页    -->\n<meta NAME=”renderer” content=”webkit”>\n<!-- 强制  高速模式 渲染网页    -->\n\n<link href=\"/static/favicon.ico\" rel=\"shortcut icon\" />\n\n<!--添加  jq  支持加载-->\n<script	src=\"/static/easy-ui/jquery.min.js\"></script>\n<!--添加  jq  支持加载-->\n', '<!--添加 layui  支持加载-->\n<link rel=\"stylesheet\"	href=\"/static/layui-v2.2.5/layui/css/layui.css\">\n<script	src=\"/static/layui-v2.2.5/layui/layui.js\"></script>\n<!--添加 layui  支持加载-->\n', '0');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '超级管理员', '拥有任何权限');
INSERT INTO `t_role` VALUES ('2', '管理员', '根据分配');

-- ----------------------------
-- Table structure for t_tree
-- ----------------------------
DROP TABLE IF EXISTS `t_tree`;
CREATE TABLE `t_tree` (
  `id` int(11) NOT NULL,
  `text` varchar(46) DEFAULT NULL,
  `father` int(11) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `state` varchar(46) DEFAULT NULL,
  `iconCls` varchar(46) DEFAULT NULL,
  `permissions` varchar(100) DEFAULT NULL,
  `dd_id` varchar(46) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_tree
-- ----------------------------
INSERT INTO `t_tree` VALUES ('6', '用户功能', '-1', null, 'close', null, null, null);
INSERT INTO `t_tree` VALUES ('17', '客户功能', '-1', null, 'close', null, null, null);
INSERT INTO `t_tree` VALUES ('3535', '35', '53', '53', '53', '53', '53', '53');
INSERT INTO `t_tree` VALUES ('61010', '用户信息管理', '6', '/houtai/user/manage', 'opend', '&#xe63c;', null, 'clientType');
INSERT INTO `t_tree` VALUES ('171000', '客户类型管理', '17', '/houtai/clientType/manage', 'opend', '&#xe612;', null, 'clienttype');
INSERT INTO `t_tree` VALUES ('171005', '客户信息管理', '17', '/houtai/client/manage', 'opend', '&#xe612;', null, 'client');
INSERT INTO `t_tree` VALUES ('171009', '客户储值记录', '17', '/houtai/deposit/trade/manage', 'opend', '&#xe612;', null, 'DepositTrade');
INSERT INTO `t_tree` VALUES ('171011', '客户消费记录', '17', '/houtai/consumption/manage', 'opend', '&#xe612;', null, 'consumption');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(46) DEFAULT NULL,
  `password` varchar(46) DEFAULT NULL,
  `createDateTime` datetime DEFAULT NULL,
  `menuIds` varchar(1000) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `trueName` varchar(46) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `weiyi` (`name`),
  KEY `user_ibfk_1` (`roleId`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', 'b893fa70a4ee782d0861cd98ea00d35b', '2019-09-08 11:25:32', '6,61010,17,171000,171005,171009,171011', '192.168.1.55', '店主', 'admin', '1');
INSERT INTO `t_user` VALUES ('2', '123456', '0680d00353f3555fe7c01f11ed89bf8b', '2019-09-05 21:48:40', '17,171000,171005,171009,171011', '0:0:0:0:0:0:0:1', '客户主要负责人', '店员', '2');
INSERT INTO `t_user` VALUES ('3', 'tellsea', 'e40ee48b3cc57db769d503502abde0b7', '2019-09-08 20:46:26', '17,171009', '0:0:0:0:0:0:0:1', '负责查看客户储值记录', '小海绵', '2');
INSERT INTO `t_user` VALUES ('4', 'spring', '33bfc2e2f6362b3d11470f1a98fa055a', '2019-09-08 22:58:13', '17,171011', '192.168.1.55', '负责查看客户消费记录', 'spring', '2');
INSERT INTO `t_user` VALUES ('5', 'coding', '24cb7d412f9ab73c7c44c877cce9168a', '2019-09-08 23:05:46', '17,171000', '0:0:0:0:0:0:0:1', '负责客户管理类型', 'coding', '2');
INSERT INTO `t_user` VALUES ('6', 'springboot', '33bfc2e2f6362b3d11470f1a98fa055a', '2019-09-12 00:18:02', '17,171005', '0:0:0:0:0:0:0:1', '负责客户信息管理.', 'springboot', '2');
INSERT INTO `t_user` VALUES ('7', 'springcloud', '903defe9c0acf96811a43c169ea0a5a1', '2019-09-22 18:19:56', '17,171000,171005', '0:0:0:0:0:0:0:1', 'springcloud', 'springcloud', '2');
INSERT INTO `t_user` VALUES ('8', 'Auturn', '444d01e50437fa341bdadab16d929467', '2019-09-22 18:49:49', '17,171009,171011', '0:0:0:0:0:0:0:1', 'Auturn', 'Auturn', '2');
INSERT INTO `t_user` VALUES ('9', 'mybatis', 'c0c37924e3c6b44a2e41a4e9ce0b2e4b', '2019-09-22 18:59:38', '6,61010,17,171000,171005,171009,171011', '192.168.245.1', 'mybatis', 'mybatis', '2');
INSERT INTO `t_user` VALUES ('10', 'springmvc', 'f74808bf75cacadd7813bf8550d57677', '2019-09-23 12:56:18', '17,171000', '192.168.245.1', 'springmvc', 'springmvc', '2');

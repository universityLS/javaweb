/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : swzl

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-05-31 00:06:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for stu_user
-- ----------------------------
DROP TABLE IF EXISTS `stu_user`;
CREATE TABLE `stu_user` (
  `StudentId` int(12) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `perm_num` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu_user
-- ----------------------------
INSERT INTO `stu_user` VALUES ('2014354145', '郑仲寅', '2014354145', '1');
INSERT INTO `stu_user` VALUES ('2014354130', '庄铭南', '2014354130', '1');
INSERT INTO `stu_user` VALUES ('2014354118', '谢飞龙', '2014354118', '1');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `textarea` varchar(100) DEFAULT NULL,
  `id` int(10) DEFAULT NULL,
  `imgsrc` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('测试标题1，测试内容1', '1', 'img/qianbao.jpg', '湛江', '15626798607', '22805754');
INSERT INTO `test` VALUES ('测试标题2，测试内容2', '2', 'img/xiaoyuan.jpg', '广州', '18875954304', '450601128');
INSERT INTO `test` VALUES ('测试标题3，测试内容3', '3', 'img/upan.jpg', '深圳', '16414920314', '450601122');

-- ----------------------------
-- Table structure for thingsmess
-- ----------------------------
DROP TABLE IF EXISTS `thingsmess`;
CREATE TABLE `thingsmess` (
  `myid` int(4) NOT NULL,
  `imgsrc` varchar(32) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `myarticle` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`myid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thingsmess
-- ----------------------------
INSERT INTO `thingsmess` VALUES ('1', 'img/book.jpg', '丢失公仔', '在去泽园吃饭的桌子公仔一不小心就飞走了');
INSERT INTO `thingsmess` VALUES ('2', 'img/bottle.jpg', '丢失钥匙', '去逛街时候在不行街丢的');
INSERT INTO `thingsmess` VALUES ('3', 'img/computer.jpg', '电脑', '在宿舍玩游戏时不见了电脑');
INSERT INTO `thingsmess` VALUES ('4', 'img/gongzai.jpg', '唇膏', '上课的路上不见了唇膏一支');
INSERT INTO `thingsmess` VALUES ('5', 'img/cungao.jpg', '唇膏', '上课的路上不见了唇膏一支');
INSERT INTO `thingsmess` VALUES ('6', 'img/key.jpg', '钥匙', '上课的路上不见了唇膏一支');
INSERT INTO `thingsmess` VALUES ('7', 'img/key.jpg', '钥匙', '上课的路上不见了唇膏一支');
INSERT INTO `thingsmess` VALUES ('8', 'img/key.jpg', '钥匙', '上课的路上不见了唇膏一');
INSERT INTO `thingsmess` VALUES ('9', 'img/key.jpg', '钥匙', '上课的路上不见了唇膏一支');
INSERT INTO `thingsmess` VALUES ('10', 'img/key.jpg', '钥匙', '上课的路上不见了唇膏一支');
INSERT INTO `thingsmess` VALUES ('11', 'img/key.jpg', '钥匙', '上课的路上不见了唇膏一支');
INSERT INTO `thingsmess` VALUES ('12', 'img/key.jpg', '钥匙', '上课的路上不见了唇膏一支');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(4) DEFAULT NULL,
  `password` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', 'czl', '123');
INSERT INTO `userinfo` VALUES ('2', 'hhh', '124');
INSERT INTO `userinfo` VALUES ('3', 'zzy', '110');
INSERT INTO `userinfo` VALUES ('4', 'zzy', '110');

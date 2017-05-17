/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : ecampus

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-05-16 18:29:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `landline` varchar(30) DEFAULT NULL COMMENT '固定电话',
  `mobile` varchar(30) DEFAULT NULL COMMENT '手机号码',
  `qq_num` varchar(30) DEFAULT NULL COMMENT 'QQ号码',
  `wechat` varchar(50) DEFAULT NULL COMMENT '微信号',
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮件',
  `other` varchar(255) DEFAULT NULL COMMENT '其他',
  `user_id` int(11) unsigned NOT NULL COMMENT '用户id',
  PRIMARY KEY (`contact_id`),
  UNIQUE KEY `contactIdIndex` (`contact_id`) USING HASH,
  KEY `contact_belong_userId` (`user_id`),
  CONSTRAINT `contact_belong_userId` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户联系方式';

-- ----------------------------
-- Records of contact
-- ----------------------------

-- ----------------------------
-- Table structure for goodscategory
-- ----------------------------
DROP TABLE IF EXISTS `goodscategory`;
CREATE TABLE `goodscategory` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '物品类别id',
  `name` varchar(255) NOT NULL COMMENT '物品种类名称',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品类别表';

-- ----------------------------
-- Records of goodscategory
-- ----------------------------

-- ----------------------------
-- Table structure for goodscomment
-- ----------------------------
DROP TABLE IF EXISTS `goodscomment`;
CREATE TABLE `goodscomment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `from_account` int(11) unsigned DEFAULT NULL COMMENT '发布者id',
  `ref_goods_id` int(11) unsigned DEFAULT '0' COMMENT '评论相关记录id',
  `publish_time` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`comment_id`),
  KEY `comment_belong_user` (`from_account`),
  KEY `comment_belong_goodsrecord` (`ref_goods_id`),
  CONSTRAINT `comment_belong_goodsrecord` FOREIGN KEY (`ref_goods_id`) REFERENCES `goodsrecord` (`goods_id`) ON DELETE CASCADE,
  CONSTRAINT `comment_belong_user` FOREIGN KEY (`from_account`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品记录评论表';

-- ----------------------------
-- Records of goodscomment
-- ----------------------------

-- ----------------------------
-- Table structure for goodsrecord
-- ----------------------------
DROP TABLE IF EXISTS `goodsrecord`;
CREATE TABLE `goodsrecord` (
  `goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '物品名称',
  `title` varchar(255) NOT NULL COMMENT '物品记录标题',
  `address` varchar(255) DEFAULT NULL COMMENT '物品拾获/丢失地址',
  `content` varchar(255) NOT NULL COMMENT '物品记录内容',
  `pic_path` varchar(255) DEFAULT NULL COMMENT '记录图片',
  `publish_time` datetime DEFAULT NULL COMMENT '发布时间',
  `lostorfound` varchar(255) DEFAULT NULL COMMENT '丢失/拾获标志，0丢失1拾获',
  `from_account` int(11) unsigned DEFAULT NULL COMMENT '发布用户id',
  `category_id` int(11) unsigned DEFAULT NULL COMMENT '所属类别id',
  PRIMARY KEY (`goods_id`),
  UNIQUE KEY `goods_idIndex` (`goods_id`) USING HASH,
  KEY `goods_belong_category` (`category_id`),
  KEY `record_belong_user` (`from_account`),
  CONSTRAINT `goods_belong_category` FOREIGN KEY (`category_id`) REFERENCES `goodscategory` (`category_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `record_belong_user` FOREIGN KEY (`from_account`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品记录表';

-- ----------------------------
-- Records of goodsrecord
-- ----------------------------

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `message_id` int(11) NOT NULL COMMENT '用户发信id',
  `content` varchar(255) NOT NULL COMMENT '信息内容',
  `isread` int(1) NOT NULL DEFAULT '0' COMMENT '是否已读？0未读1已读',
  `from_user` int(11) unsigned NOT NULL COMMENT '发送者',
  `to_user` int(11) unsigned NOT NULL COMMENT '接收者',
  `publish_time` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`message_id`),
  UNIQUE KEY `message_id` (`message_id`) USING HASH,
  KEY `message_from` (`from_user`),
  KEY `message_to` (`to_user`),
  CONSTRAINT `message_from` FOREIGN KEY (`from_user`) REFERENCES `user` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `message_to` FOREIGN KEY (`to_user`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='存储用户所发信息的信息表';

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户的ID，唯一值',
  `account` varchar(50) NOT NULL COMMENT '用户账号，登陆系统使用',
  `password` varchar(255) NOT NULL COMMENT '用户密码，加密存储',
  `signature` varchar(255) DEFAULT NULL COMMENT '个性签名',
  `pic_path` varchar(255) DEFAULT NULL COMMENT '用户头像图片路径',
  `power` int(1) unsigned DEFAULT '0' COMMENT '用户权限',
  `profile` text COMMENT '个人简介',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `userIdIndex` (`user_id`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='登陆系统的用户表，根据power不同判断用户权限';

-- ----------------------------
-- Records of user
-- ----------------------------

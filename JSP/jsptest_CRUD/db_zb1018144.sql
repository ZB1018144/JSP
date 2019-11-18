/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : db_zb1018144

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2019-11-18 21:55:57
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `car`
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `brand` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `price` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO car VALUES ('1', '奥迪', '奔驰新型', '300000');
INSERT INTO car VALUES ('2', '宝马', '宝马1系', '150000');
INSERT INTO car VALUES ('3', '大众', '桑塔纳', '100000');
INSERT INTO car VALUES ('5', '宝马', 's3', '400000');
INSERT INTO car VALUES ('6', '宝马', 'x3', '300000');
INSERT INTO car VALUES ('7', '大众', 'v4', '30000');
INSERT INTO car VALUES ('8', '奥迪', 's7', '30000');
INSERT INTO car VALUES ('10', '宝马', 'x5', '30000');
INSERT INTO car VALUES ('11', '大众', 'D5', '30000');
INSERT INTO car VALUES ('12', '奥迪', 'S3', '30000');

/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : yer

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-03-24 09:50:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bycms_course
-- ----------------------------
DROP TABLE IF EXISTS `bycms_course`;
CREATE TABLE `bycms_course` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `name` varchar(225) DEFAULT '' COMMENT '标志',
  `title` varchar(225) NOT NULL DEFAULT '' COMMENT '标题',
  `url` varchar(225) NOT NULL DEFAULT '' COMMENT '链接',
  `meta_title` varchar(225) NOT NULL DEFAULT '',
  `place` varchar(225) NOT NULL DEFAULT '' COMMENT '位置',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) DEFAULT '1' COMMENT '数据状态',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '广告图片',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='广告表';

-- ----------------------------
-- Records of bycms_course
-- ----------------------------

-- ----------------------------
-- Table structure for yershop_account_log
-- ----------------------------
DROP TABLE IF EXISTS `yershop_account_log`;
CREATE TABLE `yershop_account_log` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id,自增主键',
  `money` decimal(50,2) NOT NULL DEFAULT '0.00',
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1+,0-',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `total` decimal(50,2) NOT NULL DEFAULT '0.00',
  `content` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yershop_account_log
-- ----------------------------

-- ----------------------------
-- Table structure for yershop_ad
-- ----------------------------
DROP TABLE IF EXISTS `yershop_ad`;
CREATE TABLE `yershop_ad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `title` varchar(225) NOT NULL DEFAULT '' COMMENT '标题',
  `url` varchar(225) NOT NULL DEFAULT '' COMMENT '链接',
  `place` varchar(225) NOT NULL DEFAULT '' COMMENT '位置',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) DEFAULT '1' COMMENT '数据状态',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '广告图片',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='广告表';

-- ----------------------------
-- Records of yershop_ad
-- ----------------------------
INSERT INTO `yershop_ad` VALUES ('1', '广告1', 'goods/lists?id=107', '1', '0', '0', '1', '218', '0');
INSERT INTO `yershop_ad` VALUES ('2', '广告2', 'goods/lists?id=107', '2', '0', '0', '1', '220', '0');
INSERT INTO `yershop_ad` VALUES ('3', '广告3', 'goods/lists?id=107', '3', '0', '0', '1', '221', '0');
INSERT INTO `yershop_ad` VALUES ('4', '广告4', 'goods/lists?id=107', '4', '0', '0', '1', '222', '0');
INSERT INTO `yershop_ad` VALUES ('5', '广告5', 'goods/lists?id=107', '5', '0', '0', '1', '223', '0');
INSERT INTO `yershop_ad` VALUES ('6', '手机数码广告1', 'goods/lists?id=52', '1', '0', '0', '1', '234', '107');
INSERT INTO `yershop_ad` VALUES ('7', '手机数码2', 'goods/lists?id=52', '2', '0', '0', '1', '235', '107');
INSERT INTO `yershop_ad` VALUES ('8', '手机数码广告3', 'goods/lists?id=107', '2', '0', '0', '1', '236', '107');
INSERT INTO `yershop_ad` VALUES ('9', '食品饮料', 'goods/lists?id=107', '33', '0', '0', '1', '237', '52');
INSERT INTO `yershop_ad` VALUES ('10', '头部banner', 'goods/detail?id=177', '99', '0', '0', '1', '281', '0');
INSERT INTO `yershop_ad` VALUES ('11', '手机端广告1', 'http://demo.yershop.com/wap/goods/detail/id/168.html', '9', '0', '0', '1', '365', '0');
INSERT INTO `yershop_ad` VALUES ('12', '手机端广告2', 'http://demo.yershop.com/wap/goods/detail/id/203.html', '10', '0', '0', '1', '366', '0');
INSERT INTO `yershop_ad` VALUES ('13', '手机端广告位1', 'goods/detail?id=203', '100', '0', '0', '1', '367', '0');
INSERT INTO `yershop_ad` VALUES ('14', '手机端广告位2', 'goods/detail?id=166', '101', '0', '0', '1', '368', '0');
INSERT INTO `yershop_ad` VALUES ('15', '手机端广告位3	', 'http://wx.bycms.cn/weixin/weixin/index/id/1.html', '102', '0', '0', '1', '369', '0');

-- ----------------------------
-- Table structure for yershop_address
-- ----------------------------
DROP TABLE IF EXISTS `yershop_address`;
CREATE TABLE `yershop_address` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(225) DEFAULT NULL,
  `mobile` varchar(225) DEFAULT NULL,
  `province` varchar(225) DEFAULT NULL,
  `city` varchar(225) DEFAULT NULL,
  `area` varchar(225) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `username` varchar(225) DEFAULT NULL,
  `phone` varchar(225) DEFAULT NULL,
  `zipcode` varchar(225) DEFAULT NULL,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '数据状态',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='收件人地址表';

-- ----------------------------
-- Records of yershop_address
-- ----------------------------
INSERT INTO `yershop_address` VALUES ('42', null, '456546', '山东', '德州市', '德城区', '4564', '54', '', null, '0', '0', '1');

-- ----------------------------
-- Table structure for yershop_area
-- ----------------------------
DROP TABLE IF EXISTS `yershop_area`;
CREATE TABLE `yershop_area` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(225) DEFAULT NULL,
  `pid` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=820002 DEFAULT CHARSET=utf8 COMMENT='地址联动表';

-- ----------------------------
-- Records of yershop_area
-- ----------------------------
INSERT INTO `yershop_area` VALUES ('110101', '东城区', '820001');
INSERT INTO `yershop_area` VALUES ('110102', '西城区', '820001');
INSERT INTO `yershop_area` VALUES ('110103', '崇文区', '820001');
INSERT INTO `yershop_area` VALUES ('110104', '宣武区', '820001');
INSERT INTO `yershop_area` VALUES ('110105', '朝阳区', '820001');
INSERT INTO `yershop_area` VALUES ('110106', '丰台区', '820001');
INSERT INTO `yershop_area` VALUES ('110107', '石景山区', '820001');
INSERT INTO `yershop_area` VALUES ('110108', '海淀区', '820001');
INSERT INTO `yershop_area` VALUES ('110109', '门头沟区', '820001');
INSERT INTO `yershop_area` VALUES ('110111', '房山区', '820001');
INSERT INTO `yershop_area` VALUES ('110112', '通州区', '820001');
INSERT INTO `yershop_area` VALUES ('110113', '顺义区', '820001');
INSERT INTO `yershop_area` VALUES ('110114', '昌平区', '820001');
INSERT INTO `yershop_area` VALUES ('110115', '大兴区', '820001');
INSERT INTO `yershop_area` VALUES ('110116', '怀柔区', '820001');
INSERT INTO `yershop_area` VALUES ('110117', '平谷区', '820001');
INSERT INTO `yershop_area` VALUES ('110228', '密云县', '820001');
INSERT INTO `yershop_area` VALUES ('110229', '延庆县', '820001');
INSERT INTO `yershop_area` VALUES ('120101', '和平区', '120100');
INSERT INTO `yershop_area` VALUES ('120102', '河东区', '120100');
INSERT INTO `yershop_area` VALUES ('120103', '河西区', '120100');
INSERT INTO `yershop_area` VALUES ('120104', '南开区', '120100');
INSERT INTO `yershop_area` VALUES ('120105', '河北区', '120100');
INSERT INTO `yershop_area` VALUES ('120106', '红桥区', '120100');
INSERT INTO `yershop_area` VALUES ('120107', '塘沽区', '120100');
INSERT INTO `yershop_area` VALUES ('120108', '汉沽区', '120100');
INSERT INTO `yershop_area` VALUES ('120109', '大港区', '120100');
INSERT INTO `yershop_area` VALUES ('120110', '东丽区', '120100');
INSERT INTO `yershop_area` VALUES ('120111', '西青区', '120100');
INSERT INTO `yershop_area` VALUES ('120112', '津南区', '120100');
INSERT INTO `yershop_area` VALUES ('120113', '北辰区', '120100');
INSERT INTO `yershop_area` VALUES ('120114', '武清区', '120100');
INSERT INTO `yershop_area` VALUES ('120115', '宝坻区', '120100');
INSERT INTO `yershop_area` VALUES ('120221', '宁河县', '120100');
INSERT INTO `yershop_area` VALUES ('120223', '静海县', '120100');
INSERT INTO `yershop_area` VALUES ('120225', '蓟　县', '120100');
INSERT INTO `yershop_area` VALUES ('130101', '市辖区', '130100');
INSERT INTO `yershop_area` VALUES ('130102', '长安区', '130100');
INSERT INTO `yershop_area` VALUES ('130103', '桥东区', '130100');
INSERT INTO `yershop_area` VALUES ('130104', '桥西区', '130100');
INSERT INTO `yershop_area` VALUES ('130105', '新华区', '130100');
INSERT INTO `yershop_area` VALUES ('130107', '井陉矿区', '130100');
INSERT INTO `yershop_area` VALUES ('130108', '裕华区', '130100');
INSERT INTO `yershop_area` VALUES ('130121', '井陉县', '130100');
INSERT INTO `yershop_area` VALUES ('130123', '正定县', '130100');
INSERT INTO `yershop_area` VALUES ('130124', '栾城县', '130100');
INSERT INTO `yershop_area` VALUES ('130125', '行唐县', '130100');
INSERT INTO `yershop_area` VALUES ('130126', '灵寿县', '130100');
INSERT INTO `yershop_area` VALUES ('130127', '高邑县', '130100');
INSERT INTO `yershop_area` VALUES ('130128', '深泽县', '130100');
INSERT INTO `yershop_area` VALUES ('130129', '赞皇县', '130100');
INSERT INTO `yershop_area` VALUES ('130130', '无极县', '130100');
INSERT INTO `yershop_area` VALUES ('130131', '平山县', '130100');
INSERT INTO `yershop_area` VALUES ('130132', '元氏县', '130100');
INSERT INTO `yershop_area` VALUES ('130133', '赵　县', '130100');
INSERT INTO `yershop_area` VALUES ('130181', '辛集市', '130100');
INSERT INTO `yershop_area` VALUES ('130182', '藁城市', '130100');
INSERT INTO `yershop_area` VALUES ('130183', '晋州市', '130100');
INSERT INTO `yershop_area` VALUES ('130184', '新乐市', '130100');
INSERT INTO `yershop_area` VALUES ('130185', '鹿泉市', '130100');
INSERT INTO `yershop_area` VALUES ('130201', '市辖区', '130200');
INSERT INTO `yershop_area` VALUES ('130202', '路南区', '130200');
INSERT INTO `yershop_area` VALUES ('130203', '路北区', '130200');
INSERT INTO `yershop_area` VALUES ('130204', '古冶区', '130200');
INSERT INTO `yershop_area` VALUES ('130205', '开平区', '130200');
INSERT INTO `yershop_area` VALUES ('130207', '丰南区', '130200');
INSERT INTO `yershop_area` VALUES ('130208', '丰润区', '130200');
INSERT INTO `yershop_area` VALUES ('130223', '滦　县', '130200');
INSERT INTO `yershop_area` VALUES ('130224', '滦南县', '130200');
INSERT INTO `yershop_area` VALUES ('130225', '乐亭县', '130200');
INSERT INTO `yershop_area` VALUES ('130227', '迁西县', '130200');
INSERT INTO `yershop_area` VALUES ('130229', '玉田县', '130200');
INSERT INTO `yershop_area` VALUES ('130230', '唐海县', '130200');
INSERT INTO `yershop_area` VALUES ('130281', '遵化市', '130200');
INSERT INTO `yershop_area` VALUES ('130283', '迁安市', '130200');
INSERT INTO `yershop_area` VALUES ('130301', '市辖区', '130300');
INSERT INTO `yershop_area` VALUES ('130302', '海港区', '130300');
INSERT INTO `yershop_area` VALUES ('130303', '山海关区', '130300');
INSERT INTO `yershop_area` VALUES ('130304', '北戴河区', '130300');
INSERT INTO `yershop_area` VALUES ('130321', '青龙满族自治县', '130300');
INSERT INTO `yershop_area` VALUES ('130322', '昌黎县', '130300');
INSERT INTO `yershop_area` VALUES ('130323', '抚宁县', '130300');
INSERT INTO `yershop_area` VALUES ('130324', '卢龙县', '130300');
INSERT INTO `yershop_area` VALUES ('130401', '市辖区', '130400');
INSERT INTO `yershop_area` VALUES ('130402', '邯山区', '130400');
INSERT INTO `yershop_area` VALUES ('130403', '丛台区', '130400');
INSERT INTO `yershop_area` VALUES ('130404', '复兴区', '130400');
INSERT INTO `yershop_area` VALUES ('130406', '峰峰矿区', '130400');
INSERT INTO `yershop_area` VALUES ('130421', '邯郸县', '130400');
INSERT INTO `yershop_area` VALUES ('130423', '临漳县', '130400');
INSERT INTO `yershop_area` VALUES ('130424', '成安县', '130400');
INSERT INTO `yershop_area` VALUES ('130425', '大名县', '130400');
INSERT INTO `yershop_area` VALUES ('130426', '涉　县', '130400');
INSERT INTO `yershop_area` VALUES ('130427', '磁　县', '130400');
INSERT INTO `yershop_area` VALUES ('130428', '肥乡县', '130400');
INSERT INTO `yershop_area` VALUES ('130429', '永年县', '130400');
INSERT INTO `yershop_area` VALUES ('130430', '邱　县', '130400');
INSERT INTO `yershop_area` VALUES ('130431', '鸡泽县', '130400');
INSERT INTO `yershop_area` VALUES ('130432', '广平县', '130400');
INSERT INTO `yershop_area` VALUES ('130433', '馆陶县', '130400');
INSERT INTO `yershop_area` VALUES ('130434', '魏　县', '130400');
INSERT INTO `yershop_area` VALUES ('130435', '曲周县', '130400');
INSERT INTO `yershop_area` VALUES ('130481', '武安市', '130400');
INSERT INTO `yershop_area` VALUES ('130501', '市辖区', '130500');
INSERT INTO `yershop_area` VALUES ('130502', '桥东区', '130500');
INSERT INTO `yershop_area` VALUES ('130503', '桥西区', '130500');
INSERT INTO `yershop_area` VALUES ('130521', '邢台县', '130500');
INSERT INTO `yershop_area` VALUES ('130522', '临城县', '130500');
INSERT INTO `yershop_area` VALUES ('130523', '内丘县', '130500');
INSERT INTO `yershop_area` VALUES ('130524', '柏乡县', '130500');
INSERT INTO `yershop_area` VALUES ('130525', '隆尧县', '130500');
INSERT INTO `yershop_area` VALUES ('130526', '任　县', '130500');
INSERT INTO `yershop_area` VALUES ('130527', '南和县', '130500');
INSERT INTO `yershop_area` VALUES ('130528', '宁晋县', '130500');
INSERT INTO `yershop_area` VALUES ('130529', '巨鹿县', '130500');
INSERT INTO `yershop_area` VALUES ('130530', '新河县', '130500');
INSERT INTO `yershop_area` VALUES ('130531', '广宗县', '130500');
INSERT INTO `yershop_area` VALUES ('130532', '平乡县', '130500');
INSERT INTO `yershop_area` VALUES ('130533', '威　县', '130500');
INSERT INTO `yershop_area` VALUES ('130534', '清河县', '130500');
INSERT INTO `yershop_area` VALUES ('130535', '临西县', '130500');
INSERT INTO `yershop_area` VALUES ('130581', '南宫市', '130500');
INSERT INTO `yershop_area` VALUES ('130582', '沙河市', '130500');
INSERT INTO `yershop_area` VALUES ('130601', '市辖区', '130600');
INSERT INTO `yershop_area` VALUES ('130602', '新市区', '130600');
INSERT INTO `yershop_area` VALUES ('130603', '北市区', '130600');
INSERT INTO `yershop_area` VALUES ('130604', '南市区', '130600');
INSERT INTO `yershop_area` VALUES ('130621', '满城县', '130600');
INSERT INTO `yershop_area` VALUES ('130622', '清苑县', '130600');
INSERT INTO `yershop_area` VALUES ('130623', '涞水县', '130600');
INSERT INTO `yershop_area` VALUES ('130624', '阜平县', '130600');
INSERT INTO `yershop_area` VALUES ('130625', '徐水县', '130600');
INSERT INTO `yershop_area` VALUES ('130626', '定兴县', '130600');
INSERT INTO `yershop_area` VALUES ('130627', '唐　县', '130600');
INSERT INTO `yershop_area` VALUES ('130628', '高阳县', '130600');
INSERT INTO `yershop_area` VALUES ('130629', '容城县', '130600');
INSERT INTO `yershop_area` VALUES ('130630', '涞源县', '130600');
INSERT INTO `yershop_area` VALUES ('130631', '望都县', '130600');
INSERT INTO `yershop_area` VALUES ('130632', '安新县', '130600');
INSERT INTO `yershop_area` VALUES ('130633', '易　县', '130600');
INSERT INTO `yershop_area` VALUES ('130634', '曲阳县', '130600');
INSERT INTO `yershop_area` VALUES ('130635', '蠡　县', '130600');
INSERT INTO `yershop_area` VALUES ('130636', '顺平县', '130600');
INSERT INTO `yershop_area` VALUES ('130637', '博野县', '130600');
INSERT INTO `yershop_area` VALUES ('130638', '雄　县', '130600');
INSERT INTO `yershop_area` VALUES ('130681', '涿州市', '130600');
INSERT INTO `yershop_area` VALUES ('130682', '定州市', '130600');
INSERT INTO `yershop_area` VALUES ('130683', '安国市', '130600');
INSERT INTO `yershop_area` VALUES ('130684', '高碑店市', '130600');
INSERT INTO `yershop_area` VALUES ('130701', '市辖区', '130700');
INSERT INTO `yershop_area` VALUES ('130702', '桥东区', '130700');
INSERT INTO `yershop_area` VALUES ('130703', '桥西区', '130700');
INSERT INTO `yershop_area` VALUES ('130705', '宣化区', '130700');
INSERT INTO `yershop_area` VALUES ('130706', '下花园区', '130700');
INSERT INTO `yershop_area` VALUES ('130721', '宣化县', '130700');
INSERT INTO `yershop_area` VALUES ('130722', '张北县', '130700');
INSERT INTO `yershop_area` VALUES ('130723', '康保县', '130700');
INSERT INTO `yershop_area` VALUES ('130724', '沽源县', '130700');
INSERT INTO `yershop_area` VALUES ('130725', '尚义县', '130700');
INSERT INTO `yershop_area` VALUES ('130726', '蔚　县', '130700');
INSERT INTO `yershop_area` VALUES ('130727', '阳原县', '130700');
INSERT INTO `yershop_area` VALUES ('130728', '怀安县', '130700');
INSERT INTO `yershop_area` VALUES ('130729', '万全县', '130700');
INSERT INTO `yershop_area` VALUES ('130730', '怀来县', '130700');
INSERT INTO `yershop_area` VALUES ('130731', '涿鹿县', '130700');
INSERT INTO `yershop_area` VALUES ('130732', '赤城县', '130700');
INSERT INTO `yershop_area` VALUES ('130733', '崇礼县', '130700');
INSERT INTO `yershop_area` VALUES ('130801', '市辖区', '130800');
INSERT INTO `yershop_area` VALUES ('130802', '双桥区', '130800');
INSERT INTO `yershop_area` VALUES ('130803', '双滦区', '130800');
INSERT INTO `yershop_area` VALUES ('130804', '鹰手营子矿区', '130800');
INSERT INTO `yershop_area` VALUES ('130821', '承德县', '130800');
INSERT INTO `yershop_area` VALUES ('130822', '兴隆县', '130800');
INSERT INTO `yershop_area` VALUES ('130823', '平泉县', '130800');
INSERT INTO `yershop_area` VALUES ('130824', '滦平县', '130800');
INSERT INTO `yershop_area` VALUES ('130825', '隆化县', '130800');
INSERT INTO `yershop_area` VALUES ('130826', '丰宁满族自治县', '130800');
INSERT INTO `yershop_area` VALUES ('130827', '宽城满族自治县', '130800');
INSERT INTO `yershop_area` VALUES ('130828', '围场满族蒙古族自治县', '130800');
INSERT INTO `yershop_area` VALUES ('130901', '市辖区', '130900');
INSERT INTO `yershop_area` VALUES ('130902', '新华区', '130900');
INSERT INTO `yershop_area` VALUES ('130903', '运河区', '130900');
INSERT INTO `yershop_area` VALUES ('130921', '沧　县', '130900');
INSERT INTO `yershop_area` VALUES ('130922', '青　县', '130900');
INSERT INTO `yershop_area` VALUES ('130923', '东光县', '130900');
INSERT INTO `yershop_area` VALUES ('130924', '海兴县', '130900');
INSERT INTO `yershop_area` VALUES ('130925', '盐山县', '130900');
INSERT INTO `yershop_area` VALUES ('130926', '肃宁县', '130900');
INSERT INTO `yershop_area` VALUES ('130927', '南皮县', '130900');
INSERT INTO `yershop_area` VALUES ('130928', '吴桥县', '130900');
INSERT INTO `yershop_area` VALUES ('130929', '献　县', '130900');
INSERT INTO `yershop_area` VALUES ('130930', '孟村回族自治县', '130900');
INSERT INTO `yershop_area` VALUES ('130981', '泊头市', '130900');
INSERT INTO `yershop_area` VALUES ('130982', '任丘市', '130900');
INSERT INTO `yershop_area` VALUES ('130983', '黄骅市', '130900');
INSERT INTO `yershop_area` VALUES ('130984', '河间市', '130900');
INSERT INTO `yershop_area` VALUES ('131001', '市辖区', '131000');
INSERT INTO `yershop_area` VALUES ('131002', '安次区', '131000');
INSERT INTO `yershop_area` VALUES ('131003', '广阳区', '131000');
INSERT INTO `yershop_area` VALUES ('131022', '固安县', '131000');
INSERT INTO `yershop_area` VALUES ('131023', '永清县', '131000');
INSERT INTO `yershop_area` VALUES ('131024', '香河县', '131000');
INSERT INTO `yershop_area` VALUES ('131025', '大城县', '131000');
INSERT INTO `yershop_area` VALUES ('131026', '文安县', '131000');
INSERT INTO `yershop_area` VALUES ('131028', '大厂回族自治县', '131000');
INSERT INTO `yershop_area` VALUES ('131081', '霸州市', '131000');
INSERT INTO `yershop_area` VALUES ('131082', '三河市', '131000');
INSERT INTO `yershop_area` VALUES ('131101', '市辖区', '131100');
INSERT INTO `yershop_area` VALUES ('131102', '桃城区', '131100');
INSERT INTO `yershop_area` VALUES ('131121', '枣强县', '131100');
INSERT INTO `yershop_area` VALUES ('131122', '武邑县', '131100');
INSERT INTO `yershop_area` VALUES ('131123', '武强县', '131100');
INSERT INTO `yershop_area` VALUES ('131124', '饶阳县', '131100');
INSERT INTO `yershop_area` VALUES ('131125', '安平县', '131100');
INSERT INTO `yershop_area` VALUES ('131126', '故城县', '131100');
INSERT INTO `yershop_area` VALUES ('131127', '景　县', '131100');
INSERT INTO `yershop_area` VALUES ('131128', '阜城县', '131100');
INSERT INTO `yershop_area` VALUES ('131181', '冀州市', '131100');
INSERT INTO `yershop_area` VALUES ('131182', '深州市', '131100');
INSERT INTO `yershop_area` VALUES ('140101', '市辖区', '140100');
INSERT INTO `yershop_area` VALUES ('140105', '小店区', '140100');
INSERT INTO `yershop_area` VALUES ('140106', '迎泽区', '140100');
INSERT INTO `yershop_area` VALUES ('140107', '杏花岭区', '140100');
INSERT INTO `yershop_area` VALUES ('140108', '尖草坪区', '140100');
INSERT INTO `yershop_area` VALUES ('140109', '万柏林区', '140100');
INSERT INTO `yershop_area` VALUES ('140110', '晋源区', '140100');
INSERT INTO `yershop_area` VALUES ('140121', '清徐县', '140100');
INSERT INTO `yershop_area` VALUES ('140122', '阳曲县', '140100');
INSERT INTO `yershop_area` VALUES ('140123', '娄烦县', '140100');
INSERT INTO `yershop_area` VALUES ('140181', '古交市', '140100');
INSERT INTO `yershop_area` VALUES ('140201', '市辖区', '140200');
INSERT INTO `yershop_area` VALUES ('140202', '城　区', '140200');
INSERT INTO `yershop_area` VALUES ('140203', '矿　区', '140200');
INSERT INTO `yershop_area` VALUES ('140211', '南郊区', '140200');
INSERT INTO `yershop_area` VALUES ('140212', '新荣区', '140200');
INSERT INTO `yershop_area` VALUES ('140221', '阳高县', '140200');
INSERT INTO `yershop_area` VALUES ('140222', '天镇县', '140200');
INSERT INTO `yershop_area` VALUES ('140223', '广灵县', '140200');
INSERT INTO `yershop_area` VALUES ('140224', '灵丘县', '140200');
INSERT INTO `yershop_area` VALUES ('140225', '浑源县', '140200');
INSERT INTO `yershop_area` VALUES ('140226', '左云县', '140200');
INSERT INTO `yershop_area` VALUES ('140227', '大同县', '140200');
INSERT INTO `yershop_area` VALUES ('140301', '市辖区', '140300');
INSERT INTO `yershop_area` VALUES ('140302', '城　区', '140300');
INSERT INTO `yershop_area` VALUES ('140303', '矿　区', '140300');
INSERT INTO `yershop_area` VALUES ('140311', '郊　区', '140300');
INSERT INTO `yershop_area` VALUES ('140321', '平定县', '140300');
INSERT INTO `yershop_area` VALUES ('140322', '盂　县', '140300');
INSERT INTO `yershop_area` VALUES ('140401', '市辖区', '140400');
INSERT INTO `yershop_area` VALUES ('140402', '城　区', '140400');
INSERT INTO `yershop_area` VALUES ('140411', '郊　区', '140400');
INSERT INTO `yershop_area` VALUES ('140421', '长治县', '140400');
INSERT INTO `yershop_area` VALUES ('140423', '襄垣县', '140400');
INSERT INTO `yershop_area` VALUES ('140424', '屯留县', '140400');
INSERT INTO `yershop_area` VALUES ('140425', '平顺县', '140400');
INSERT INTO `yershop_area` VALUES ('140426', '黎城县', '140400');
INSERT INTO `yershop_area` VALUES ('140427', '壶关县', '140400');
INSERT INTO `yershop_area` VALUES ('140428', '长子县', '140400');
INSERT INTO `yershop_area` VALUES ('140429', '武乡县', '140400');
INSERT INTO `yershop_area` VALUES ('140430', '沁　县', '140400');
INSERT INTO `yershop_area` VALUES ('140431', '沁源县', '140400');
INSERT INTO `yershop_area` VALUES ('140481', '潞城市', '140400');
INSERT INTO `yershop_area` VALUES ('140501', '市辖区', '140500');
INSERT INTO `yershop_area` VALUES ('140502', '城　区', '140500');
INSERT INTO `yershop_area` VALUES ('140521', '沁水县', '140500');
INSERT INTO `yershop_area` VALUES ('140522', '阳城县', '140500');
INSERT INTO `yershop_area` VALUES ('140524', '陵川县', '140500');
INSERT INTO `yershop_area` VALUES ('140525', '泽州县', '140500');
INSERT INTO `yershop_area` VALUES ('140581', '高平市', '140500');
INSERT INTO `yershop_area` VALUES ('140601', '市辖区', '140600');
INSERT INTO `yershop_area` VALUES ('140602', '朔城区', '140600');
INSERT INTO `yershop_area` VALUES ('140603', '平鲁区', '140600');
INSERT INTO `yershop_area` VALUES ('140621', '山阴县', '140600');
INSERT INTO `yershop_area` VALUES ('140622', '应　县', '140600');
INSERT INTO `yershop_area` VALUES ('140623', '右玉县', '140600');
INSERT INTO `yershop_area` VALUES ('140624', '怀仁县', '140600');
INSERT INTO `yershop_area` VALUES ('140701', '市辖区', '140700');
INSERT INTO `yershop_area` VALUES ('140702', '榆次区', '140700');
INSERT INTO `yershop_area` VALUES ('140721', '榆社县', '140700');
INSERT INTO `yershop_area` VALUES ('140722', '左权县', '140700');
INSERT INTO `yershop_area` VALUES ('140723', '和顺县', '140700');
INSERT INTO `yershop_area` VALUES ('140724', '昔阳县', '140700');
INSERT INTO `yershop_area` VALUES ('140725', '寿阳县', '140700');
INSERT INTO `yershop_area` VALUES ('140726', '太谷县', '140700');
INSERT INTO `yershop_area` VALUES ('140727', '祁　县', '140700');
INSERT INTO `yershop_area` VALUES ('140728', '平遥县', '140700');
INSERT INTO `yershop_area` VALUES ('140729', '灵石县', '140700');
INSERT INTO `yershop_area` VALUES ('140781', '介休市', '140700');
INSERT INTO `yershop_area` VALUES ('140801', '市辖区', '140800');
INSERT INTO `yershop_area` VALUES ('140802', '盐湖区', '140800');
INSERT INTO `yershop_area` VALUES ('140821', '临猗县', '140800');
INSERT INTO `yershop_area` VALUES ('140822', '万荣县', '140800');
INSERT INTO `yershop_area` VALUES ('140823', '闻喜县', '140800');
INSERT INTO `yershop_area` VALUES ('140824', '稷山县', '140800');
INSERT INTO `yershop_area` VALUES ('140825', '新绛县', '140800');
INSERT INTO `yershop_area` VALUES ('140826', '绛　县', '140800');
INSERT INTO `yershop_area` VALUES ('140827', '垣曲县', '140800');
INSERT INTO `yershop_area` VALUES ('140828', '夏　县', '140800');
INSERT INTO `yershop_area` VALUES ('140829', '平陆县', '140800');
INSERT INTO `yershop_area` VALUES ('140830', '芮城县', '140800');
INSERT INTO `yershop_area` VALUES ('140881', '永济市', '140800');
INSERT INTO `yershop_area` VALUES ('140882', '河津市', '140800');
INSERT INTO `yershop_area` VALUES ('140901', '市辖区', '140900');
INSERT INTO `yershop_area` VALUES ('140902', '忻府区', '140900');
INSERT INTO `yershop_area` VALUES ('140921', '定襄县', '140900');
INSERT INTO `yershop_area` VALUES ('140922', '五台县', '140900');
INSERT INTO `yershop_area` VALUES ('140923', '代　县', '140900');
INSERT INTO `yershop_area` VALUES ('140924', '繁峙县', '140900');
INSERT INTO `yershop_area` VALUES ('140925', '宁武县', '140900');
INSERT INTO `yershop_area` VALUES ('140926', '静乐县', '140900');
INSERT INTO `yershop_area` VALUES ('140927', '神池县', '140900');
INSERT INTO `yershop_area` VALUES ('140928', '五寨县', '140900');
INSERT INTO `yershop_area` VALUES ('140929', '岢岚县', '140900');
INSERT INTO `yershop_area` VALUES ('140930', '河曲县', '140900');
INSERT INTO `yershop_area` VALUES ('140931', '保德县', '140900');
INSERT INTO `yershop_area` VALUES ('140932', '偏关县', '140900');
INSERT INTO `yershop_area` VALUES ('140981', '原平市', '140900');
INSERT INTO `yershop_area` VALUES ('141001', '市辖区', '141000');
INSERT INTO `yershop_area` VALUES ('141002', '尧都区', '141000');
INSERT INTO `yershop_area` VALUES ('141021', '曲沃县', '141000');
INSERT INTO `yershop_area` VALUES ('141022', '翼城县', '141000');
INSERT INTO `yershop_area` VALUES ('141023', '襄汾县', '141000');
INSERT INTO `yershop_area` VALUES ('141024', '洪洞县', '141000');
INSERT INTO `yershop_area` VALUES ('141025', '古　县', '141000');
INSERT INTO `yershop_area` VALUES ('141026', '安泽县', '141000');
INSERT INTO `yershop_area` VALUES ('141027', '浮山县', '141000');
INSERT INTO `yershop_area` VALUES ('141028', '吉　县', '141000');
INSERT INTO `yershop_area` VALUES ('141029', '乡宁县', '141000');
INSERT INTO `yershop_area` VALUES ('141030', '大宁县', '141000');
INSERT INTO `yershop_area` VALUES ('141031', '隰　县', '141000');
INSERT INTO `yershop_area` VALUES ('141032', '永和县', '141000');
INSERT INTO `yershop_area` VALUES ('141033', '蒲　县', '141000');
INSERT INTO `yershop_area` VALUES ('141034', '汾西县', '141000');
INSERT INTO `yershop_area` VALUES ('141081', '侯马市', '141000');
INSERT INTO `yershop_area` VALUES ('141082', '霍州市', '141000');
INSERT INTO `yershop_area` VALUES ('141101', '市辖区', '141100');
INSERT INTO `yershop_area` VALUES ('141102', '离石区', '141100');
INSERT INTO `yershop_area` VALUES ('141121', '文水县', '141100');
INSERT INTO `yershop_area` VALUES ('141122', '交城县', '141100');
INSERT INTO `yershop_area` VALUES ('141123', '兴　县', '141100');
INSERT INTO `yershop_area` VALUES ('141124', '临　县', '141100');
INSERT INTO `yershop_area` VALUES ('141125', '柳林县', '141100');
INSERT INTO `yershop_area` VALUES ('141126', '石楼县', '141100');
INSERT INTO `yershop_area` VALUES ('141127', '岚　县', '141100');
INSERT INTO `yershop_area` VALUES ('141128', '方山县', '141100');
INSERT INTO `yershop_area` VALUES ('141129', '中阳县', '141100');
INSERT INTO `yershop_area` VALUES ('141130', '交口县', '141100');
INSERT INTO `yershop_area` VALUES ('141181', '孝义市', '141100');
INSERT INTO `yershop_area` VALUES ('141182', '汾阳市', '141100');
INSERT INTO `yershop_area` VALUES ('150101', '市辖区', '150100');
INSERT INTO `yershop_area` VALUES ('150102', '新城区', '150100');
INSERT INTO `yershop_area` VALUES ('150103', '回民区', '150100');
INSERT INTO `yershop_area` VALUES ('150104', '玉泉区', '150100');
INSERT INTO `yershop_area` VALUES ('150105', '赛罕区', '150100');
INSERT INTO `yershop_area` VALUES ('150121', '土默特左旗', '150100');
INSERT INTO `yershop_area` VALUES ('150122', '托克托县', '150100');
INSERT INTO `yershop_area` VALUES ('150123', '和林格尔县', '150100');
INSERT INTO `yershop_area` VALUES ('150124', '清水河县', '150100');
INSERT INTO `yershop_area` VALUES ('150125', '武川县', '150100');
INSERT INTO `yershop_area` VALUES ('150201', '市辖区', '150200');
INSERT INTO `yershop_area` VALUES ('150202', '东河区', '150200');
INSERT INTO `yershop_area` VALUES ('150203', '昆都仑区', '150200');
INSERT INTO `yershop_area` VALUES ('150204', '青山区', '150200');
INSERT INTO `yershop_area` VALUES ('150205', '石拐区', '150200');
INSERT INTO `yershop_area` VALUES ('150206', '白云矿区', '150200');
INSERT INTO `yershop_area` VALUES ('150207', '九原区', '150200');
INSERT INTO `yershop_area` VALUES ('150221', '土默特右旗', '150200');
INSERT INTO `yershop_area` VALUES ('150222', '固阳县', '150200');
INSERT INTO `yershop_area` VALUES ('150223', '达尔罕茂明安联合旗', '150200');
INSERT INTO `yershop_area` VALUES ('150301', '市辖区', '150300');
INSERT INTO `yershop_area` VALUES ('150302', '海勃湾区', '150300');
INSERT INTO `yershop_area` VALUES ('150303', '海南区', '150300');
INSERT INTO `yershop_area` VALUES ('150304', '乌达区', '150300');
INSERT INTO `yershop_area` VALUES ('150401', '市辖区', '150400');
INSERT INTO `yershop_area` VALUES ('150402', '红山区', '150400');
INSERT INTO `yershop_area` VALUES ('150403', '元宝山区', '150400');
INSERT INTO `yershop_area` VALUES ('150404', '松山区', '150400');
INSERT INTO `yershop_area` VALUES ('150421', '阿鲁科尔沁旗', '150400');
INSERT INTO `yershop_area` VALUES ('150422', '巴林左旗', '150400');
INSERT INTO `yershop_area` VALUES ('150423', '巴林右旗', '150400');
INSERT INTO `yershop_area` VALUES ('150424', '林西县', '150400');
INSERT INTO `yershop_area` VALUES ('150425', '克什克腾旗', '150400');
INSERT INTO `yershop_area` VALUES ('150426', '翁牛特旗', '150400');
INSERT INTO `yershop_area` VALUES ('150428', '喀喇沁旗', '150400');
INSERT INTO `yershop_area` VALUES ('150429', '宁城县', '150400');
INSERT INTO `yershop_area` VALUES ('150430', '敖汉旗', '150400');
INSERT INTO `yershop_area` VALUES ('150501', '市辖区', '150500');
INSERT INTO `yershop_area` VALUES ('150502', '科尔沁区', '150500');
INSERT INTO `yershop_area` VALUES ('150521', '科尔沁左翼中旗', '150500');
INSERT INTO `yershop_area` VALUES ('150522', '科尔沁左翼后旗', '150500');
INSERT INTO `yershop_area` VALUES ('150523', '开鲁县', '150500');
INSERT INTO `yershop_area` VALUES ('150524', '库伦旗', '150500');
INSERT INTO `yershop_area` VALUES ('150525', '奈曼旗', '150500');
INSERT INTO `yershop_area` VALUES ('150526', '扎鲁特旗', '150500');
INSERT INTO `yershop_area` VALUES ('150581', '霍林郭勒市', '150500');
INSERT INTO `yershop_area` VALUES ('150602', '东胜区', '150600');
INSERT INTO `yershop_area` VALUES ('150621', '达拉特旗', '150600');
INSERT INTO `yershop_area` VALUES ('150622', '准格尔旗', '150600');
INSERT INTO `yershop_area` VALUES ('150623', '鄂托克前旗', '150600');
INSERT INTO `yershop_area` VALUES ('150624', '鄂托克旗', '150600');
INSERT INTO `yershop_area` VALUES ('150625', '杭锦旗', '150600');
INSERT INTO `yershop_area` VALUES ('150626', '乌审旗', '150600');
INSERT INTO `yershop_area` VALUES ('150627', '伊金霍洛旗', '150600');
INSERT INTO `yershop_area` VALUES ('150701', '市辖区', '150700');
INSERT INTO `yershop_area` VALUES ('150702', '海拉尔区', '150700');
INSERT INTO `yershop_area` VALUES ('150721', '阿荣旗', '150700');
INSERT INTO `yershop_area` VALUES ('150722', '莫力达瓦达斡尔族自治旗', '150700');
INSERT INTO `yershop_area` VALUES ('150723', '鄂伦春自治旗', '150700');
INSERT INTO `yershop_area` VALUES ('150724', '鄂温克族自治旗', '150700');
INSERT INTO `yershop_area` VALUES ('150725', '陈巴尔虎旗', '150700');
INSERT INTO `yershop_area` VALUES ('150726', '新巴尔虎左旗', '150700');
INSERT INTO `yershop_area` VALUES ('150727', '新巴尔虎右旗', '150700');
INSERT INTO `yershop_area` VALUES ('150781', '满洲里市', '150700');
INSERT INTO `yershop_area` VALUES ('150782', '牙克石市', '150700');
INSERT INTO `yershop_area` VALUES ('150783', '扎兰屯市', '150700');
INSERT INTO `yershop_area` VALUES ('150784', '额尔古纳市', '150700');
INSERT INTO `yershop_area` VALUES ('150785', '根河市', '150700');
INSERT INTO `yershop_area` VALUES ('150801', '市辖区', '150800');
INSERT INTO `yershop_area` VALUES ('150802', '临河区', '150800');
INSERT INTO `yershop_area` VALUES ('150821', '五原县', '150800');
INSERT INTO `yershop_area` VALUES ('150822', '磴口县', '150800');
INSERT INTO `yershop_area` VALUES ('150823', '乌拉特前旗', '150800');
INSERT INTO `yershop_area` VALUES ('150824', '乌拉特中旗', '150800');
INSERT INTO `yershop_area` VALUES ('150825', '乌拉特后旗', '150800');
INSERT INTO `yershop_area` VALUES ('150826', '杭锦后旗', '150800');
INSERT INTO `yershop_area` VALUES ('150901', '市辖区', '150900');
INSERT INTO `yershop_area` VALUES ('150902', '集宁区', '150900');
INSERT INTO `yershop_area` VALUES ('150921', '卓资县', '150900');
INSERT INTO `yershop_area` VALUES ('150922', '化德县', '150900');
INSERT INTO `yershop_area` VALUES ('150923', '商都县', '150900');
INSERT INTO `yershop_area` VALUES ('150924', '兴和县', '150900');
INSERT INTO `yershop_area` VALUES ('150925', '凉城县', '150900');
INSERT INTO `yershop_area` VALUES ('150926', '察哈尔右翼前旗', '150900');
INSERT INTO `yershop_area` VALUES ('150927', '察哈尔右翼中旗', '150900');
INSERT INTO `yershop_area` VALUES ('150928', '察哈尔右翼后旗', '150900');
INSERT INTO `yershop_area` VALUES ('150929', '四子王旗', '150900');
INSERT INTO `yershop_area` VALUES ('150981', '丰镇市', '150900');
INSERT INTO `yershop_area` VALUES ('152201', '乌兰浩特市', '152200');
INSERT INTO `yershop_area` VALUES ('152202', '阿尔山市', '152200');
INSERT INTO `yershop_area` VALUES ('152221', '科尔沁右翼前旗', '152200');
INSERT INTO `yershop_area` VALUES ('152222', '科尔沁右翼中旗', '152200');
INSERT INTO `yershop_area` VALUES ('152223', '扎赉特旗', '152200');
INSERT INTO `yershop_area` VALUES ('152224', '突泉县', '152200');
INSERT INTO `yershop_area` VALUES ('152501', '二连浩特市', '152500');
INSERT INTO `yershop_area` VALUES ('152502', '锡林浩特市', '152500');
INSERT INTO `yershop_area` VALUES ('152522', '阿巴嘎旗', '152500');
INSERT INTO `yershop_area` VALUES ('152523', '苏尼特左旗', '152500');
INSERT INTO `yershop_area` VALUES ('152524', '苏尼特右旗', '152500');
INSERT INTO `yershop_area` VALUES ('152525', '东乌珠穆沁旗', '152500');
INSERT INTO `yershop_area` VALUES ('152526', '西乌珠穆沁旗', '152500');
INSERT INTO `yershop_area` VALUES ('152527', '太仆寺旗', '152500');
INSERT INTO `yershop_area` VALUES ('152528', '镶黄旗', '152500');
INSERT INTO `yershop_area` VALUES ('152529', '正镶白旗', '152500');
INSERT INTO `yershop_area` VALUES ('152530', '正蓝旗', '152500');
INSERT INTO `yershop_area` VALUES ('152531', '多伦县', '152500');
INSERT INTO `yershop_area` VALUES ('152921', '阿拉善左旗', '152900');
INSERT INTO `yershop_area` VALUES ('152922', '阿拉善右旗', '152900');
INSERT INTO `yershop_area` VALUES ('152923', '额济纳旗', '152900');
INSERT INTO `yershop_area` VALUES ('210101', '市辖区', '210100');
INSERT INTO `yershop_area` VALUES ('210102', '和平区', '210100');
INSERT INTO `yershop_area` VALUES ('210103', '沈河区', '210100');
INSERT INTO `yershop_area` VALUES ('210104', '大东区', '210100');
INSERT INTO `yershop_area` VALUES ('210105', '皇姑区', '210100');
INSERT INTO `yershop_area` VALUES ('210106', '铁西区', '210100');
INSERT INTO `yershop_area` VALUES ('210111', '苏家屯区', '210100');
INSERT INTO `yershop_area` VALUES ('210112', '东陵区', '210100');
INSERT INTO `yershop_area` VALUES ('210113', '新城子区', '210100');
INSERT INTO `yershop_area` VALUES ('210114', '于洪区', '210100');
INSERT INTO `yershop_area` VALUES ('210122', '辽中县', '210100');
INSERT INTO `yershop_area` VALUES ('210123', '康平县', '210100');
INSERT INTO `yershop_area` VALUES ('210124', '法库县', '210100');
INSERT INTO `yershop_area` VALUES ('210181', '新民市', '210100');
INSERT INTO `yershop_area` VALUES ('210201', '市辖区', '210200');
INSERT INTO `yershop_area` VALUES ('210202', '中山区', '210200');
INSERT INTO `yershop_area` VALUES ('210203', '西岗区', '210200');
INSERT INTO `yershop_area` VALUES ('210204', '沙河口区', '210200');
INSERT INTO `yershop_area` VALUES ('210211', '甘井子区', '210200');
INSERT INTO `yershop_area` VALUES ('210212', '旅顺口区', '210200');
INSERT INTO `yershop_area` VALUES ('210213', '金州区', '210200');
INSERT INTO `yershop_area` VALUES ('210224', '长海县', '210200');
INSERT INTO `yershop_area` VALUES ('210281', '瓦房店市', '210200');
INSERT INTO `yershop_area` VALUES ('210282', '普兰店市', '210200');
INSERT INTO `yershop_area` VALUES ('210283', '庄河市', '210200');
INSERT INTO `yershop_area` VALUES ('210301', '市辖区', '210300');
INSERT INTO `yershop_area` VALUES ('210302', '铁东区', '210300');
INSERT INTO `yershop_area` VALUES ('210303', '铁西区', '210300');
INSERT INTO `yershop_area` VALUES ('210304', '立山区', '210300');
INSERT INTO `yershop_area` VALUES ('210311', '千山区', '210300');
INSERT INTO `yershop_area` VALUES ('210321', '台安县', '210300');
INSERT INTO `yershop_area` VALUES ('210323', '岫岩满族自治县', '210300');
INSERT INTO `yershop_area` VALUES ('210381', '海城市', '210300');
INSERT INTO `yershop_area` VALUES ('210401', '市辖区', '210400');
INSERT INTO `yershop_area` VALUES ('210402', '新抚区', '210400');
INSERT INTO `yershop_area` VALUES ('210403', '东洲区', '210400');
INSERT INTO `yershop_area` VALUES ('210404', '望花区', '210400');
INSERT INTO `yershop_area` VALUES ('210411', '顺城区', '210400');
INSERT INTO `yershop_area` VALUES ('210421', '抚顺县', '210400');
INSERT INTO `yershop_area` VALUES ('210422', '新宾满族自治县', '210400');
INSERT INTO `yershop_area` VALUES ('210423', '清原满族自治县', '210400');
INSERT INTO `yershop_area` VALUES ('210501', '市辖区', '210500');
INSERT INTO `yershop_area` VALUES ('210502', '平山区', '210500');
INSERT INTO `yershop_area` VALUES ('210503', '溪湖区', '210500');
INSERT INTO `yershop_area` VALUES ('210504', '明山区', '210500');
INSERT INTO `yershop_area` VALUES ('210505', '南芬区', '210500');
INSERT INTO `yershop_area` VALUES ('210521', '本溪满族自治县', '210500');
INSERT INTO `yershop_area` VALUES ('210522', '桓仁满族自治县', '210500');
INSERT INTO `yershop_area` VALUES ('210601', '市辖区', '210600');
INSERT INTO `yershop_area` VALUES ('210602', '元宝区', '210600');
INSERT INTO `yershop_area` VALUES ('210603', '振兴区', '210600');
INSERT INTO `yershop_area` VALUES ('210604', '振安区', '210600');
INSERT INTO `yershop_area` VALUES ('210624', '宽甸满族自治县', '210600');
INSERT INTO `yershop_area` VALUES ('210681', '东港市', '210600');
INSERT INTO `yershop_area` VALUES ('210682', '凤城市', '210600');
INSERT INTO `yershop_area` VALUES ('210701', '市辖区', '210700');
INSERT INTO `yershop_area` VALUES ('210702', '古塔区', '210700');
INSERT INTO `yershop_area` VALUES ('210703', '凌河区', '210700');
INSERT INTO `yershop_area` VALUES ('210711', '太和区', '210700');
INSERT INTO `yershop_area` VALUES ('210726', '黑山县', '210700');
INSERT INTO `yershop_area` VALUES ('210727', '义　县', '210700');
INSERT INTO `yershop_area` VALUES ('210781', '凌海市', '210700');
INSERT INTO `yershop_area` VALUES ('210782', '北宁市', '210700');
INSERT INTO `yershop_area` VALUES ('210801', '市辖区', '210800');
INSERT INTO `yershop_area` VALUES ('210802', '站前区', '210800');
INSERT INTO `yershop_area` VALUES ('210803', '西市区', '210800');
INSERT INTO `yershop_area` VALUES ('210804', '鲅鱼圈区', '210800');
INSERT INTO `yershop_area` VALUES ('210811', '老边区', '210800');
INSERT INTO `yershop_area` VALUES ('210881', '盖州市', '210800');
INSERT INTO `yershop_area` VALUES ('210882', '大石桥市', '210800');
INSERT INTO `yershop_area` VALUES ('210901', '市辖区', '210900');
INSERT INTO `yershop_area` VALUES ('210902', '海州区', '210900');
INSERT INTO `yershop_area` VALUES ('210903', '新邱区', '210900');
INSERT INTO `yershop_area` VALUES ('210904', '太平区', '210900');
INSERT INTO `yershop_area` VALUES ('210905', '清河门区', '210900');
INSERT INTO `yershop_area` VALUES ('210911', '细河区', '210900');
INSERT INTO `yershop_area` VALUES ('210921', '阜新蒙古族自治县', '210900');
INSERT INTO `yershop_area` VALUES ('210922', '彰武县', '210900');
INSERT INTO `yershop_area` VALUES ('211001', '市辖区', '211000');
INSERT INTO `yershop_area` VALUES ('211002', '白塔区', '211000');
INSERT INTO `yershop_area` VALUES ('211003', '文圣区', '211000');
INSERT INTO `yershop_area` VALUES ('211004', '宏伟区', '211000');
INSERT INTO `yershop_area` VALUES ('211005', '弓长岭区', '211000');
INSERT INTO `yershop_area` VALUES ('211011', '太子河区', '211000');
INSERT INTO `yershop_area` VALUES ('211021', '辽阳县', '211000');
INSERT INTO `yershop_area` VALUES ('211081', '灯塔市', '211000');
INSERT INTO `yershop_area` VALUES ('211101', '市辖区', '211100');
INSERT INTO `yershop_area` VALUES ('211102', '双台子区', '211100');
INSERT INTO `yershop_area` VALUES ('211103', '兴隆台区', '211100');
INSERT INTO `yershop_area` VALUES ('211121', '大洼县', '211100');
INSERT INTO `yershop_area` VALUES ('211122', '盘山县', '211100');
INSERT INTO `yershop_area` VALUES ('211201', '市辖区', '211200');
INSERT INTO `yershop_area` VALUES ('211202', '银州区', '211200');
INSERT INTO `yershop_area` VALUES ('211204', '清河区', '211200');
INSERT INTO `yershop_area` VALUES ('211221', '铁岭县', '211200');
INSERT INTO `yershop_area` VALUES ('211223', '西丰县', '211200');
INSERT INTO `yershop_area` VALUES ('211224', '昌图县', '211200');
INSERT INTO `yershop_area` VALUES ('211281', '调兵山市', '211200');
INSERT INTO `yershop_area` VALUES ('211282', '开原市', '211200');
INSERT INTO `yershop_area` VALUES ('211301', '市辖区', '211300');
INSERT INTO `yershop_area` VALUES ('211302', '双塔区', '211300');
INSERT INTO `yershop_area` VALUES ('211303', '龙城区', '211300');
INSERT INTO `yershop_area` VALUES ('211321', '朝阳县', '211300');
INSERT INTO `yershop_area` VALUES ('211322', '建平县', '211300');
INSERT INTO `yershop_area` VALUES ('211324', '喀喇沁左翼蒙古族自治县', '211300');
INSERT INTO `yershop_area` VALUES ('211381', '北票市', '211300');
INSERT INTO `yershop_area` VALUES ('211382', '凌源市', '211300');
INSERT INTO `yershop_area` VALUES ('211401', '市辖区', '211400');
INSERT INTO `yershop_area` VALUES ('211402', '连山区', '211400');
INSERT INTO `yershop_area` VALUES ('211403', '龙港区', '211400');
INSERT INTO `yershop_area` VALUES ('211404', '南票区', '211400');
INSERT INTO `yershop_area` VALUES ('211421', '绥中县', '211400');
INSERT INTO `yershop_area` VALUES ('211422', '建昌县', '211400');
INSERT INTO `yershop_area` VALUES ('211481', '兴城市', '211400');
INSERT INTO `yershop_area` VALUES ('220101', '市辖区', '220100');
INSERT INTO `yershop_area` VALUES ('220102', '南关区', '220100');
INSERT INTO `yershop_area` VALUES ('220103', '宽城区', '220100');
INSERT INTO `yershop_area` VALUES ('220104', '朝阳区', '220100');
INSERT INTO `yershop_area` VALUES ('220105', '二道区', '220100');
INSERT INTO `yershop_area` VALUES ('220106', '绿园区', '220100');
INSERT INTO `yershop_area` VALUES ('220112', '双阳区', '220100');
INSERT INTO `yershop_area` VALUES ('220122', '农安县', '220100');
INSERT INTO `yershop_area` VALUES ('220181', '九台市', '220100');
INSERT INTO `yershop_area` VALUES ('220182', '榆树市', '220100');
INSERT INTO `yershop_area` VALUES ('220183', '德惠市', '220100');
INSERT INTO `yershop_area` VALUES ('220201', '市辖区', '220200');
INSERT INTO `yershop_area` VALUES ('220202', '昌邑区', '220200');
INSERT INTO `yershop_area` VALUES ('220203', '龙潭区', '220200');
INSERT INTO `yershop_area` VALUES ('220204', '船营区', '220200');
INSERT INTO `yershop_area` VALUES ('220211', '丰满区', '220200');
INSERT INTO `yershop_area` VALUES ('220221', '永吉县', '220200');
INSERT INTO `yershop_area` VALUES ('220281', '蛟河市', '220200');
INSERT INTO `yershop_area` VALUES ('220282', '桦甸市', '220200');
INSERT INTO `yershop_area` VALUES ('220283', '舒兰市', '220200');
INSERT INTO `yershop_area` VALUES ('220284', '磐石市', '220200');
INSERT INTO `yershop_area` VALUES ('220301', '市辖区', '220300');
INSERT INTO `yershop_area` VALUES ('220302', '铁西区', '220300');
INSERT INTO `yershop_area` VALUES ('220303', '铁东区', '220300');
INSERT INTO `yershop_area` VALUES ('220322', '梨树县', '220300');
INSERT INTO `yershop_area` VALUES ('220323', '伊通满族自治县', '220300');
INSERT INTO `yershop_area` VALUES ('220381', '公主岭市', '220300');
INSERT INTO `yershop_area` VALUES ('220382', '双辽市', '220300');
INSERT INTO `yershop_area` VALUES ('220401', '市辖区', '220400');
INSERT INTO `yershop_area` VALUES ('220402', '龙山区', '220400');
INSERT INTO `yershop_area` VALUES ('220403', '西安区', '220400');
INSERT INTO `yershop_area` VALUES ('220421', '东丰县', '220400');
INSERT INTO `yershop_area` VALUES ('220422', '东辽县', '220400');
INSERT INTO `yershop_area` VALUES ('220501', '市辖区', '220500');
INSERT INTO `yershop_area` VALUES ('220502', '东昌区', '220500');
INSERT INTO `yershop_area` VALUES ('220503', '二道江区', '220500');
INSERT INTO `yershop_area` VALUES ('220521', '通化县', '220500');
INSERT INTO `yershop_area` VALUES ('220523', '辉南县', '220500');
INSERT INTO `yershop_area` VALUES ('220524', '柳河县', '220500');
INSERT INTO `yershop_area` VALUES ('220581', '梅河口市', '220500');
INSERT INTO `yershop_area` VALUES ('220582', '集安市', '220500');
INSERT INTO `yershop_area` VALUES ('220601', '市辖区', '220600');
INSERT INTO `yershop_area` VALUES ('220602', '八道江区', '220600');
INSERT INTO `yershop_area` VALUES ('220621', '抚松县', '220600');
INSERT INTO `yershop_area` VALUES ('220622', '靖宇县', '220600');
INSERT INTO `yershop_area` VALUES ('220623', '长白朝鲜族自治县', '220600');
INSERT INTO `yershop_area` VALUES ('220625', '江源县', '220600');
INSERT INTO `yershop_area` VALUES ('220681', '临江市', '220600');
INSERT INTO `yershop_area` VALUES ('220701', '市辖区', '220700');
INSERT INTO `yershop_area` VALUES ('220702', '宁江区', '220700');
INSERT INTO `yershop_area` VALUES ('220721', '前郭尔罗斯蒙古族自治县', '220700');
INSERT INTO `yershop_area` VALUES ('220722', '长岭县', '220700');
INSERT INTO `yershop_area` VALUES ('220723', '乾安县', '220700');
INSERT INTO `yershop_area` VALUES ('220724', '扶余县', '220700');
INSERT INTO `yershop_area` VALUES ('220801', '市辖区', '220800');
INSERT INTO `yershop_area` VALUES ('220802', '洮北区', '220800');
INSERT INTO `yershop_area` VALUES ('220821', '镇赉县', '220800');
INSERT INTO `yershop_area` VALUES ('220822', '通榆县', '220800');
INSERT INTO `yershop_area` VALUES ('220881', '洮南市', '220800');
INSERT INTO `yershop_area` VALUES ('220882', '大安市', '220800');
INSERT INTO `yershop_area` VALUES ('222401', '延吉市', '222400');
INSERT INTO `yershop_area` VALUES ('222402', '图们市', '222400');
INSERT INTO `yershop_area` VALUES ('222403', '敦化市', '222400');
INSERT INTO `yershop_area` VALUES ('222404', '珲春市', '222400');
INSERT INTO `yershop_area` VALUES ('222405', '龙井市', '222400');
INSERT INTO `yershop_area` VALUES ('222406', '和龙市', '222400');
INSERT INTO `yershop_area` VALUES ('222424', '汪清县', '222400');
INSERT INTO `yershop_area` VALUES ('222426', '安图县', '222400');
INSERT INTO `yershop_area` VALUES ('230101', '市辖区', '230100');
INSERT INTO `yershop_area` VALUES ('230102', '道里区', '230100');
INSERT INTO `yershop_area` VALUES ('230103', '南岗区', '230100');
INSERT INTO `yershop_area` VALUES ('230104', '道外区', '230100');
INSERT INTO `yershop_area` VALUES ('230106', '香坊区', '230100');
INSERT INTO `yershop_area` VALUES ('230107', '动力区', '230100');
INSERT INTO `yershop_area` VALUES ('230108', '平房区', '230100');
INSERT INTO `yershop_area` VALUES ('230109', '松北区', '230100');
INSERT INTO `yershop_area` VALUES ('230111', '呼兰区', '230100');
INSERT INTO `yershop_area` VALUES ('230123', '依兰县', '230100');
INSERT INTO `yershop_area` VALUES ('230124', '方正县', '230100');
INSERT INTO `yershop_area` VALUES ('230125', '宾　县', '230100');
INSERT INTO `yershop_area` VALUES ('230126', '巴彦县', '230100');
INSERT INTO `yershop_area` VALUES ('230127', '木兰县', '230100');
INSERT INTO `yershop_area` VALUES ('230128', '通河县', '230100');
INSERT INTO `yershop_area` VALUES ('230129', '延寿县', '230100');
INSERT INTO `yershop_area` VALUES ('230181', '阿城市', '230100');
INSERT INTO `yershop_area` VALUES ('230182', '双城市', '230100');
INSERT INTO `yershop_area` VALUES ('230183', '尚志市', '230100');
INSERT INTO `yershop_area` VALUES ('230184', '五常市', '230100');
INSERT INTO `yershop_area` VALUES ('230201', '市辖区', '230200');
INSERT INTO `yershop_area` VALUES ('230202', '龙沙区', '230200');
INSERT INTO `yershop_area` VALUES ('230203', '建华区', '230200');
INSERT INTO `yershop_area` VALUES ('230204', '铁锋区', '230200');
INSERT INTO `yershop_area` VALUES ('230205', '昂昂溪区', '230200');
INSERT INTO `yershop_area` VALUES ('230206', '富拉尔基区', '230200');
INSERT INTO `yershop_area` VALUES ('230207', '碾子山区', '230200');
INSERT INTO `yershop_area` VALUES ('230208', '梅里斯达斡尔族区', '230200');
INSERT INTO `yershop_area` VALUES ('230221', '龙江县', '230200');
INSERT INTO `yershop_area` VALUES ('230223', '依安县', '230200');
INSERT INTO `yershop_area` VALUES ('230224', '泰来县', '230200');
INSERT INTO `yershop_area` VALUES ('230225', '甘南县', '230200');
INSERT INTO `yershop_area` VALUES ('230227', '富裕县', '230200');
INSERT INTO `yershop_area` VALUES ('230229', '克山县', '230200');
INSERT INTO `yershop_area` VALUES ('230230', '克东县', '230200');
INSERT INTO `yershop_area` VALUES ('230231', '拜泉县', '230200');
INSERT INTO `yershop_area` VALUES ('230281', '讷河市', '230200');
INSERT INTO `yershop_area` VALUES ('230301', '市辖区', '230300');
INSERT INTO `yershop_area` VALUES ('230302', '鸡冠区', '230300');
INSERT INTO `yershop_area` VALUES ('230303', '恒山区', '230300');
INSERT INTO `yershop_area` VALUES ('230304', '滴道区', '230300');
INSERT INTO `yershop_area` VALUES ('230305', '梨树区', '230300');
INSERT INTO `yershop_area` VALUES ('230306', '城子河区', '230300');
INSERT INTO `yershop_area` VALUES ('230307', '麻山区', '230300');
INSERT INTO `yershop_area` VALUES ('230321', '鸡东县', '230300');
INSERT INTO `yershop_area` VALUES ('230381', '虎林市', '230300');
INSERT INTO `yershop_area` VALUES ('230382', '密山市', '230300');
INSERT INTO `yershop_area` VALUES ('230401', '市辖区', '230400');
INSERT INTO `yershop_area` VALUES ('230402', '向阳区', '230400');
INSERT INTO `yershop_area` VALUES ('230403', '工农区', '230400');
INSERT INTO `yershop_area` VALUES ('230404', '南山区', '230400');
INSERT INTO `yershop_area` VALUES ('230405', '兴安区', '230400');
INSERT INTO `yershop_area` VALUES ('230406', '东山区', '230400');
INSERT INTO `yershop_area` VALUES ('230407', '兴山区', '230400');
INSERT INTO `yershop_area` VALUES ('230421', '萝北县', '230400');
INSERT INTO `yershop_area` VALUES ('230422', '绥滨县', '230400');
INSERT INTO `yershop_area` VALUES ('230501', '市辖区', '230500');
INSERT INTO `yershop_area` VALUES ('230502', '尖山区', '230500');
INSERT INTO `yershop_area` VALUES ('230503', '岭东区', '230500');
INSERT INTO `yershop_area` VALUES ('230505', '四方台区', '230500');
INSERT INTO `yershop_area` VALUES ('230506', '宝山区', '230500');
INSERT INTO `yershop_area` VALUES ('230521', '集贤县', '230500');
INSERT INTO `yershop_area` VALUES ('230522', '友谊县', '230500');
INSERT INTO `yershop_area` VALUES ('230523', '宝清县', '230500');
INSERT INTO `yershop_area` VALUES ('230524', '饶河县', '230500');
INSERT INTO `yershop_area` VALUES ('230601', '市辖区', '230600');
INSERT INTO `yershop_area` VALUES ('230602', '萨尔图区', '230600');
INSERT INTO `yershop_area` VALUES ('230603', '龙凤区', '230600');
INSERT INTO `yershop_area` VALUES ('230604', '让胡路区', '230600');
INSERT INTO `yershop_area` VALUES ('230605', '红岗区', '230600');
INSERT INTO `yershop_area` VALUES ('230606', '大同区', '230600');
INSERT INTO `yershop_area` VALUES ('230621', '肇州县', '230600');
INSERT INTO `yershop_area` VALUES ('230622', '肇源县', '230600');
INSERT INTO `yershop_area` VALUES ('230623', '林甸县', '230600');
INSERT INTO `yershop_area` VALUES ('230624', '杜尔伯特蒙古族自治县', '230600');
INSERT INTO `yershop_area` VALUES ('230701', '市辖区', '230700');
INSERT INTO `yershop_area` VALUES ('230702', '伊春区', '230700');
INSERT INTO `yershop_area` VALUES ('230703', '南岔区', '230700');
INSERT INTO `yershop_area` VALUES ('230704', '友好区', '230700');
INSERT INTO `yershop_area` VALUES ('230705', '西林区', '230700');
INSERT INTO `yershop_area` VALUES ('230706', '翠峦区', '230700');
INSERT INTO `yershop_area` VALUES ('230707', '新青区', '230700');
INSERT INTO `yershop_area` VALUES ('230708', '美溪区', '230700');
INSERT INTO `yershop_area` VALUES ('230709', '金山屯区', '230700');
INSERT INTO `yershop_area` VALUES ('230710', '五营区', '230700');
INSERT INTO `yershop_area` VALUES ('230711', '乌马河区', '230700');
INSERT INTO `yershop_area` VALUES ('230712', '汤旺河区', '230700');
INSERT INTO `yershop_area` VALUES ('230713', '带岭区', '230700');
INSERT INTO `yershop_area` VALUES ('230714', '乌伊岭区', '230700');
INSERT INTO `yershop_area` VALUES ('230715', '红星区', '230700');
INSERT INTO `yershop_area` VALUES ('230716', '上甘岭区', '230700');
INSERT INTO `yershop_area` VALUES ('230722', '嘉荫县', '230700');
INSERT INTO `yershop_area` VALUES ('230781', '铁力市', '230700');
INSERT INTO `yershop_area` VALUES ('230801', '市辖区', '230800');
INSERT INTO `yershop_area` VALUES ('230802', '永红区', '230800');
INSERT INTO `yershop_area` VALUES ('230803', '向阳区', '230800');
INSERT INTO `yershop_area` VALUES ('230804', '前进区', '230800');
INSERT INTO `yershop_area` VALUES ('230805', '东风区', '230800');
INSERT INTO `yershop_area` VALUES ('230811', '郊　区', '230800');
INSERT INTO `yershop_area` VALUES ('230822', '桦南县', '230800');
INSERT INTO `yershop_area` VALUES ('230826', '桦川县', '230800');
INSERT INTO `yershop_area` VALUES ('230828', '汤原县', '230800');
INSERT INTO `yershop_area` VALUES ('230833', '抚远县', '230800');
INSERT INTO `yershop_area` VALUES ('230881', '同江市', '230800');
INSERT INTO `yershop_area` VALUES ('230882', '富锦市', '230800');
INSERT INTO `yershop_area` VALUES ('230901', '市辖区', '230900');
INSERT INTO `yershop_area` VALUES ('230902', '新兴区', '230900');
INSERT INTO `yershop_area` VALUES ('230903', '桃山区', '230900');
INSERT INTO `yershop_area` VALUES ('230904', '茄子河区', '230900');
INSERT INTO `yershop_area` VALUES ('230921', '勃利县', '230900');
INSERT INTO `yershop_area` VALUES ('231001', '市辖区', '231000');
INSERT INTO `yershop_area` VALUES ('231002', '东安区', '231000');
INSERT INTO `yershop_area` VALUES ('231003', '阳明区', '231000');
INSERT INTO `yershop_area` VALUES ('231004', '爱民区', '231000');
INSERT INTO `yershop_area` VALUES ('231005', '西安区', '231000');
INSERT INTO `yershop_area` VALUES ('231024', '东宁县', '231000');
INSERT INTO `yershop_area` VALUES ('231025', '林口县', '231000');
INSERT INTO `yershop_area` VALUES ('231081', '绥芬河市', '231000');
INSERT INTO `yershop_area` VALUES ('231083', '海林市', '231000');
INSERT INTO `yershop_area` VALUES ('231084', '宁安市', '231000');
INSERT INTO `yershop_area` VALUES ('231085', '穆棱市', '231000');
INSERT INTO `yershop_area` VALUES ('231101', '市辖区', '231100');
INSERT INTO `yershop_area` VALUES ('231102', '爱辉区', '231100');
INSERT INTO `yershop_area` VALUES ('231121', '嫩江县', '231100');
INSERT INTO `yershop_area` VALUES ('231123', '逊克县', '231100');
INSERT INTO `yershop_area` VALUES ('231124', '孙吴县', '231100');
INSERT INTO `yershop_area` VALUES ('231181', '北安市', '231100');
INSERT INTO `yershop_area` VALUES ('231182', '五大连池市', '231100');
INSERT INTO `yershop_area` VALUES ('231201', '市辖区', '231200');
INSERT INTO `yershop_area` VALUES ('231202', '北林区', '231200');
INSERT INTO `yershop_area` VALUES ('231221', '望奎县', '231200');
INSERT INTO `yershop_area` VALUES ('231222', '兰西县', '231200');
INSERT INTO `yershop_area` VALUES ('231223', '青冈县', '231200');
INSERT INTO `yershop_area` VALUES ('231224', '庆安县', '231200');
INSERT INTO `yershop_area` VALUES ('231225', '明水县', '231200');
INSERT INTO `yershop_area` VALUES ('231226', '绥棱县', '231200');
INSERT INTO `yershop_area` VALUES ('231281', '安达市', '231200');
INSERT INTO `yershop_area` VALUES ('231282', '肇东市', '231200');
INSERT INTO `yershop_area` VALUES ('231283', '海伦市', '231200');
INSERT INTO `yershop_area` VALUES ('232721', '呼玛县', '232700');
INSERT INTO `yershop_area` VALUES ('232722', '塔河县', '232700');
INSERT INTO `yershop_area` VALUES ('232723', '漠河县', '232700');
INSERT INTO `yershop_area` VALUES ('310101', '黄浦区', '310100');
INSERT INTO `yershop_area` VALUES ('310103', '卢湾区', '310100');
INSERT INTO `yershop_area` VALUES ('310104', '徐汇区', '310100');
INSERT INTO `yershop_area` VALUES ('310105', '长宁区', '310100');
INSERT INTO `yershop_area` VALUES ('310106', '静安区', '310100');
INSERT INTO `yershop_area` VALUES ('310107', '普陀区', '310100');
INSERT INTO `yershop_area` VALUES ('310108', '闸北区', '310100');
INSERT INTO `yershop_area` VALUES ('310109', '虹口区', '310100');
INSERT INTO `yershop_area` VALUES ('310110', '杨浦区', '310100');
INSERT INTO `yershop_area` VALUES ('310112', '闵行区', '310100');
INSERT INTO `yershop_area` VALUES ('310113', '宝山区', '310100');
INSERT INTO `yershop_area` VALUES ('310114', '嘉定区', '310100');
INSERT INTO `yershop_area` VALUES ('310115', '浦东新区', '310100');
INSERT INTO `yershop_area` VALUES ('310116', '金山区', '310100');
INSERT INTO `yershop_area` VALUES ('310117', '松江区', '310100');
INSERT INTO `yershop_area` VALUES ('310118', '青浦区', '310100');
INSERT INTO `yershop_area` VALUES ('310119', '南汇区', '310100');
INSERT INTO `yershop_area` VALUES ('310120', '奉贤区', '310100');
INSERT INTO `yershop_area` VALUES ('310230', '崇明县', '310100');
INSERT INTO `yershop_area` VALUES ('320101', '市辖区', '320100');
INSERT INTO `yershop_area` VALUES ('320102', '玄武区', '320100');
INSERT INTO `yershop_area` VALUES ('320103', '白下区', '320100');
INSERT INTO `yershop_area` VALUES ('320104', '秦淮区', '320100');
INSERT INTO `yershop_area` VALUES ('320105', '建邺区', '320100');
INSERT INTO `yershop_area` VALUES ('320106', '鼓楼区', '320100');
INSERT INTO `yershop_area` VALUES ('320107', '下关区', '320100');
INSERT INTO `yershop_area` VALUES ('320111', '浦口区', '320100');
INSERT INTO `yershop_area` VALUES ('320113', '栖霞区', '320100');
INSERT INTO `yershop_area` VALUES ('320114', '雨花台区', '320100');
INSERT INTO `yershop_area` VALUES ('320115', '江宁区', '320100');
INSERT INTO `yershop_area` VALUES ('320116', '六合区', '320100');
INSERT INTO `yershop_area` VALUES ('320124', '溧水县', '320100');
INSERT INTO `yershop_area` VALUES ('320125', '高淳县', '320100');
INSERT INTO `yershop_area` VALUES ('320201', '市辖区', '320200');
INSERT INTO `yershop_area` VALUES ('320202', '崇安区', '320200');
INSERT INTO `yershop_area` VALUES ('320203', '南长区', '320200');
INSERT INTO `yershop_area` VALUES ('320204', '北塘区', '320200');
INSERT INTO `yershop_area` VALUES ('320205', '锡山区', '320200');
INSERT INTO `yershop_area` VALUES ('320206', '惠山区', '320200');
INSERT INTO `yershop_area` VALUES ('320211', '滨湖区', '320200');
INSERT INTO `yershop_area` VALUES ('320281', '江阴市', '320200');
INSERT INTO `yershop_area` VALUES ('320282', '宜兴市', '320200');
INSERT INTO `yershop_area` VALUES ('320301', '市辖区', '320300');
INSERT INTO `yershop_area` VALUES ('320302', '鼓楼区', '320300');
INSERT INTO `yershop_area` VALUES ('320303', '云龙区', '320300');
INSERT INTO `yershop_area` VALUES ('320304', '九里区', '320300');
INSERT INTO `yershop_area` VALUES ('320305', '贾汪区', '320300');
INSERT INTO `yershop_area` VALUES ('320311', '泉山区', '320300');
INSERT INTO `yershop_area` VALUES ('320321', '丰　县', '320300');
INSERT INTO `yershop_area` VALUES ('320322', '沛　县', '320300');
INSERT INTO `yershop_area` VALUES ('320323', '铜山县', '320300');
INSERT INTO `yershop_area` VALUES ('320324', '睢宁县', '320300');
INSERT INTO `yershop_area` VALUES ('320381', '新沂市', '320300');
INSERT INTO `yershop_area` VALUES ('320382', '邳州市', '320300');
INSERT INTO `yershop_area` VALUES ('320401', '市辖区', '320400');
INSERT INTO `yershop_area` VALUES ('320402', '天宁区', '320400');
INSERT INTO `yershop_area` VALUES ('320404', '钟楼区', '320400');
INSERT INTO `yershop_area` VALUES ('320405', '戚墅堰区', '320400');
INSERT INTO `yershop_area` VALUES ('320411', '新北区', '320400');
INSERT INTO `yershop_area` VALUES ('320412', '武进区', '320400');
INSERT INTO `yershop_area` VALUES ('320481', '溧阳市', '320400');
INSERT INTO `yershop_area` VALUES ('320482', '金坛市', '320400');
INSERT INTO `yershop_area` VALUES ('320501', '市辖区', '320500');
INSERT INTO `yershop_area` VALUES ('320502', '沧浪区', '320500');
INSERT INTO `yershop_area` VALUES ('320503', '平江区', '320500');
INSERT INTO `yershop_area` VALUES ('320504', '金阊区', '320500');
INSERT INTO `yershop_area` VALUES ('320505', '虎丘区', '320500');
INSERT INTO `yershop_area` VALUES ('320506', '吴中区', '320500');
INSERT INTO `yershop_area` VALUES ('320507', '相城区', '320500');
INSERT INTO `yershop_area` VALUES ('320581', '常熟市', '320500');
INSERT INTO `yershop_area` VALUES ('320582', '张家港市', '320500');
INSERT INTO `yershop_area` VALUES ('320583', '昆山市', '320500');
INSERT INTO `yershop_area` VALUES ('320584', '吴江市', '320500');
INSERT INTO `yershop_area` VALUES ('320585', '太仓市', '320500');
INSERT INTO `yershop_area` VALUES ('320601', '市辖区', '320600');
INSERT INTO `yershop_area` VALUES ('320602', '崇川区', '320600');
INSERT INTO `yershop_area` VALUES ('320611', '港闸区', '320600');
INSERT INTO `yershop_area` VALUES ('320621', '海安县', '320600');
INSERT INTO `yershop_area` VALUES ('320623', '如东县', '320600');
INSERT INTO `yershop_area` VALUES ('320681', '启东市', '320600');
INSERT INTO `yershop_area` VALUES ('320682', '如皋市', '320600');
INSERT INTO `yershop_area` VALUES ('320683', '通州市', '320600');
INSERT INTO `yershop_area` VALUES ('320684', '海门市', '320600');
INSERT INTO `yershop_area` VALUES ('320701', '市辖区', '320700');
INSERT INTO `yershop_area` VALUES ('320703', '连云区', '320700');
INSERT INTO `yershop_area` VALUES ('320705', '新浦区', '320700');
INSERT INTO `yershop_area` VALUES ('320706', '海州区', '320700');
INSERT INTO `yershop_area` VALUES ('320721', '赣榆县', '320700');
INSERT INTO `yershop_area` VALUES ('320722', '东海县', '320700');
INSERT INTO `yershop_area` VALUES ('320723', '灌云县', '320700');
INSERT INTO `yershop_area` VALUES ('320724', '灌南县', '320700');
INSERT INTO `yershop_area` VALUES ('320801', '市辖区', '320800');
INSERT INTO `yershop_area` VALUES ('320802', '清河区', '320800');
INSERT INTO `yershop_area` VALUES ('320803', '楚州区', '320800');
INSERT INTO `yershop_area` VALUES ('320804', '淮阴区', '320800');
INSERT INTO `yershop_area` VALUES ('320811', '清浦区', '320800');
INSERT INTO `yershop_area` VALUES ('320826', '涟水县', '320800');
INSERT INTO `yershop_area` VALUES ('320829', '洪泽县', '320800');
INSERT INTO `yershop_area` VALUES ('320830', '盱眙县', '320800');
INSERT INTO `yershop_area` VALUES ('320831', '金湖县', '320800');
INSERT INTO `yershop_area` VALUES ('320901', '市辖区', '320900');
INSERT INTO `yershop_area` VALUES ('320902', '亭湖区', '320900');
INSERT INTO `yershop_area` VALUES ('320903', '盐都区', '320900');
INSERT INTO `yershop_area` VALUES ('320921', '响水县', '320900');
INSERT INTO `yershop_area` VALUES ('320922', '滨海县', '320900');
INSERT INTO `yershop_area` VALUES ('320923', '阜宁县', '320900');
INSERT INTO `yershop_area` VALUES ('320924', '射阳县', '320900');
INSERT INTO `yershop_area` VALUES ('320925', '建湖县', '320900');
INSERT INTO `yershop_area` VALUES ('320981', '东台市', '320900');
INSERT INTO `yershop_area` VALUES ('320982', '大丰市', '320900');
INSERT INTO `yershop_area` VALUES ('321001', '市辖区', '321000');
INSERT INTO `yershop_area` VALUES ('321002', '广陵区', '321000');
INSERT INTO `yershop_area` VALUES ('321003', '邗江区', '321000');
INSERT INTO `yershop_area` VALUES ('321011', '郊　区', '321000');
INSERT INTO `yershop_area` VALUES ('321023', '宝应县', '321000');
INSERT INTO `yershop_area` VALUES ('321081', '仪征市', '321000');
INSERT INTO `yershop_area` VALUES ('321084', '高邮市', '321000');
INSERT INTO `yershop_area` VALUES ('321088', '江都市', '321000');
INSERT INTO `yershop_area` VALUES ('321101', '市辖区', '321100');
INSERT INTO `yershop_area` VALUES ('321102', '京口区', '321100');
INSERT INTO `yershop_area` VALUES ('321111', '润州区', '321100');
INSERT INTO `yershop_area` VALUES ('321112', '丹徒区', '321100');
INSERT INTO `yershop_area` VALUES ('321181', '丹阳市', '321100');
INSERT INTO `yershop_area` VALUES ('321182', '扬中市', '321100');
INSERT INTO `yershop_area` VALUES ('321183', '句容市', '321100');
INSERT INTO `yershop_area` VALUES ('321201', '市辖区', '321200');
INSERT INTO `yershop_area` VALUES ('321202', '海陵区', '321200');
INSERT INTO `yershop_area` VALUES ('321203', '高港区', '321200');
INSERT INTO `yershop_area` VALUES ('321281', '兴化市', '321200');
INSERT INTO `yershop_area` VALUES ('321282', '靖江市', '321200');
INSERT INTO `yershop_area` VALUES ('321283', '泰兴市', '321200');
INSERT INTO `yershop_area` VALUES ('321284', '姜堰市', '321200');
INSERT INTO `yershop_area` VALUES ('321301', '市辖区', '321300');
INSERT INTO `yershop_area` VALUES ('321302', '宿城区', '321300');
INSERT INTO `yershop_area` VALUES ('321311', '宿豫区', '321300');
INSERT INTO `yershop_area` VALUES ('321322', '沭阳县', '321300');
INSERT INTO `yershop_area` VALUES ('321323', '泗阳县', '321300');
INSERT INTO `yershop_area` VALUES ('321324', '泗洪县', '321300');
INSERT INTO `yershop_area` VALUES ('330101', '市辖区', '330100');
INSERT INTO `yershop_area` VALUES ('330102', '上城区', '330100');
INSERT INTO `yershop_area` VALUES ('330103', '下城区', '330100');
INSERT INTO `yershop_area` VALUES ('330104', '江干区', '330100');
INSERT INTO `yershop_area` VALUES ('330105', '拱墅区', '330100');
INSERT INTO `yershop_area` VALUES ('330106', '西湖区', '330100');
INSERT INTO `yershop_area` VALUES ('330108', '滨江区', '330100');
INSERT INTO `yershop_area` VALUES ('330109', '萧山区', '330100');
INSERT INTO `yershop_area` VALUES ('330110', '余杭区', '330100');
INSERT INTO `yershop_area` VALUES ('330122', '桐庐县', '330100');
INSERT INTO `yershop_area` VALUES ('330127', '淳安县', '330100');
INSERT INTO `yershop_area` VALUES ('330182', '建德市', '330100');
INSERT INTO `yershop_area` VALUES ('330183', '富阳市', '330100');
INSERT INTO `yershop_area` VALUES ('330185', '临安市', '330100');
INSERT INTO `yershop_area` VALUES ('330201', '市辖区', '330200');
INSERT INTO `yershop_area` VALUES ('330203', '海曙区', '330200');
INSERT INTO `yershop_area` VALUES ('330204', '江东区', '330200');
INSERT INTO `yershop_area` VALUES ('330205', '江北区', '330200');
INSERT INTO `yershop_area` VALUES ('330206', '北仑区', '330200');
INSERT INTO `yershop_area` VALUES ('330211', '镇海区', '330200');
INSERT INTO `yershop_area` VALUES ('330212', '鄞州区', '330200');
INSERT INTO `yershop_area` VALUES ('330225', '象山县', '330200');
INSERT INTO `yershop_area` VALUES ('330226', '宁海县', '330200');
INSERT INTO `yershop_area` VALUES ('330281', '余姚市', '330200');
INSERT INTO `yershop_area` VALUES ('330282', '慈溪市', '330200');
INSERT INTO `yershop_area` VALUES ('330283', '奉化市', '330200');
INSERT INTO `yershop_area` VALUES ('330301', '市辖区', '330300');
INSERT INTO `yershop_area` VALUES ('330302', '鹿城区', '330300');
INSERT INTO `yershop_area` VALUES ('330303', '龙湾区', '330300');
INSERT INTO `yershop_area` VALUES ('330304', '瓯海区', '330300');
INSERT INTO `yershop_area` VALUES ('330322', '洞头县', '330300');
INSERT INTO `yershop_area` VALUES ('330324', '永嘉县', '330300');
INSERT INTO `yershop_area` VALUES ('330326', '平阳县', '330300');
INSERT INTO `yershop_area` VALUES ('330327', '苍南县', '330300');
INSERT INTO `yershop_area` VALUES ('330328', '文成县', '330300');
INSERT INTO `yershop_area` VALUES ('330329', '泰顺县', '330300');
INSERT INTO `yershop_area` VALUES ('330381', '瑞安市', '330300');
INSERT INTO `yershop_area` VALUES ('330382', '乐清市', '330300');
INSERT INTO `yershop_area` VALUES ('330401', '市辖区', '330400');
INSERT INTO `yershop_area` VALUES ('330402', '秀城区', '330400');
INSERT INTO `yershop_area` VALUES ('330411', '秀洲区', '330400');
INSERT INTO `yershop_area` VALUES ('330421', '嘉善县', '330400');
INSERT INTO `yershop_area` VALUES ('330424', '海盐县', '330400');
INSERT INTO `yershop_area` VALUES ('330481', '海宁市', '330400');
INSERT INTO `yershop_area` VALUES ('330482', '平湖市', '330400');
INSERT INTO `yershop_area` VALUES ('330483', '桐乡市', '330400');
INSERT INTO `yershop_area` VALUES ('330501', '市辖区', '330500');
INSERT INTO `yershop_area` VALUES ('330502', '吴兴区', '330500');
INSERT INTO `yershop_area` VALUES ('330503', '南浔区', '330500');
INSERT INTO `yershop_area` VALUES ('330521', '德清县', '330500');
INSERT INTO `yershop_area` VALUES ('330522', '长兴县', '330500');
INSERT INTO `yershop_area` VALUES ('330523', '安吉县', '330500');
INSERT INTO `yershop_area` VALUES ('330601', '市辖区', '330600');
INSERT INTO `yershop_area` VALUES ('330602', '越城区', '330600');
INSERT INTO `yershop_area` VALUES ('330621', '绍兴县', '330600');
INSERT INTO `yershop_area` VALUES ('330624', '新昌县', '330600');
INSERT INTO `yershop_area` VALUES ('330681', '诸暨市', '330600');
INSERT INTO `yershop_area` VALUES ('330682', '上虞市', '330600');
INSERT INTO `yershop_area` VALUES ('330683', '嵊州市', '330600');
INSERT INTO `yershop_area` VALUES ('330701', '市辖区', '330700');
INSERT INTO `yershop_area` VALUES ('330702', '婺城区', '330700');
INSERT INTO `yershop_area` VALUES ('330703', '金东区', '330700');
INSERT INTO `yershop_area` VALUES ('330723', '武义县', '330700');
INSERT INTO `yershop_area` VALUES ('330726', '浦江县', '330700');
INSERT INTO `yershop_area` VALUES ('330727', '磐安县', '330700');
INSERT INTO `yershop_area` VALUES ('330781', '兰溪市', '330700');
INSERT INTO `yershop_area` VALUES ('330782', '义乌市', '330700');
INSERT INTO `yershop_area` VALUES ('330783', '东阳市', '330700');
INSERT INTO `yershop_area` VALUES ('330784', '永康市', '330700');
INSERT INTO `yershop_area` VALUES ('330801', '市辖区', '330800');
INSERT INTO `yershop_area` VALUES ('330802', '柯城区', '330800');
INSERT INTO `yershop_area` VALUES ('330803', '衢江区', '330800');
INSERT INTO `yershop_area` VALUES ('330822', '常山县', '330800');
INSERT INTO `yershop_area` VALUES ('330824', '开化县', '330800');
INSERT INTO `yershop_area` VALUES ('330825', '龙游县', '330800');
INSERT INTO `yershop_area` VALUES ('330881', '江山市', '330800');
INSERT INTO `yershop_area` VALUES ('330901', '市辖区', '330900');
INSERT INTO `yershop_area` VALUES ('330902', '定海区', '330900');
INSERT INTO `yershop_area` VALUES ('330903', '普陀区', '330900');
INSERT INTO `yershop_area` VALUES ('330921', '岱山县', '330900');
INSERT INTO `yershop_area` VALUES ('330922', '嵊泗县', '330900');
INSERT INTO `yershop_area` VALUES ('331001', '市辖区', '331000');
INSERT INTO `yershop_area` VALUES ('331002', '椒江区', '331000');
INSERT INTO `yershop_area` VALUES ('331003', '黄岩区', '331000');
INSERT INTO `yershop_area` VALUES ('331004', '路桥区', '331000');
INSERT INTO `yershop_area` VALUES ('331021', '玉环县', '331000');
INSERT INTO `yershop_area` VALUES ('331022', '三门县', '331000');
INSERT INTO `yershop_area` VALUES ('331023', '天台县', '331000');
INSERT INTO `yershop_area` VALUES ('331024', '仙居县', '331000');
INSERT INTO `yershop_area` VALUES ('331081', '温岭市', '331000');
INSERT INTO `yershop_area` VALUES ('331082', '临海市', '331000');
INSERT INTO `yershop_area` VALUES ('331101', '市辖区', '331100');
INSERT INTO `yershop_area` VALUES ('331102', '莲都区', '331100');
INSERT INTO `yershop_area` VALUES ('331121', '青田县', '331100');
INSERT INTO `yershop_area` VALUES ('331122', '缙云县', '331100');
INSERT INTO `yershop_area` VALUES ('331123', '遂昌县', '331100');
INSERT INTO `yershop_area` VALUES ('331124', '松阳县', '331100');
INSERT INTO `yershop_area` VALUES ('331125', '云和县', '331100');
INSERT INTO `yershop_area` VALUES ('331126', '庆元县', '331100');
INSERT INTO `yershop_area` VALUES ('331127', '景宁畲族自治县', '331100');
INSERT INTO `yershop_area` VALUES ('331181', '龙泉市', '331100');
INSERT INTO `yershop_area` VALUES ('340101', '市辖区', '340100');
INSERT INTO `yershop_area` VALUES ('340102', '瑶海区', '340100');
INSERT INTO `yershop_area` VALUES ('340103', '庐阳区', '340100');
INSERT INTO `yershop_area` VALUES ('340104', '蜀山区', '340100');
INSERT INTO `yershop_area` VALUES ('340111', '包河区', '340100');
INSERT INTO `yershop_area` VALUES ('340121', '长丰县', '340100');
INSERT INTO `yershop_area` VALUES ('340122', '肥东县', '340100');
INSERT INTO `yershop_area` VALUES ('340123', '肥西县', '340100');
INSERT INTO `yershop_area` VALUES ('340201', '市辖区', '340200');
INSERT INTO `yershop_area` VALUES ('340202', '镜湖区', '340200');
INSERT INTO `yershop_area` VALUES ('340203', '马塘区', '340200');
INSERT INTO `yershop_area` VALUES ('340204', '新芜区', '340200');
INSERT INTO `yershop_area` VALUES ('340207', '鸠江区', '340200');
INSERT INTO `yershop_area` VALUES ('340221', '芜湖县', '340200');
INSERT INTO `yershop_area` VALUES ('340222', '繁昌县', '340200');
INSERT INTO `yershop_area` VALUES ('340223', '南陵县', '340200');
INSERT INTO `yershop_area` VALUES ('340301', '市辖区', '340300');
INSERT INTO `yershop_area` VALUES ('340302', '龙子湖区', '340300');
INSERT INTO `yershop_area` VALUES ('340303', '蚌山区', '340300');
INSERT INTO `yershop_area` VALUES ('340304', '禹会区', '340300');
INSERT INTO `yershop_area` VALUES ('340311', '淮上区', '340300');
INSERT INTO `yershop_area` VALUES ('340321', '怀远县', '340300');
INSERT INTO `yershop_area` VALUES ('340322', '五河县', '340300');
INSERT INTO `yershop_area` VALUES ('340323', '固镇县', '340300');
INSERT INTO `yershop_area` VALUES ('340401', '市辖区', '340400');
INSERT INTO `yershop_area` VALUES ('340402', '大通区', '340400');
INSERT INTO `yershop_area` VALUES ('340403', '田家庵区', '340400');
INSERT INTO `yershop_area` VALUES ('340404', '谢家集区', '340400');
INSERT INTO `yershop_area` VALUES ('340405', '八公山区', '340400');
INSERT INTO `yershop_area` VALUES ('340406', '潘集区', '340400');
INSERT INTO `yershop_area` VALUES ('340421', '凤台县', '340400');
INSERT INTO `yershop_area` VALUES ('340501', '市辖区', '340500');
INSERT INTO `yershop_area` VALUES ('340502', '金家庄区', '340500');
INSERT INTO `yershop_area` VALUES ('340503', '花山区', '340500');
INSERT INTO `yershop_area` VALUES ('340504', '雨山区', '340500');
INSERT INTO `yershop_area` VALUES ('340521', '当涂县', '340500');
INSERT INTO `yershop_area` VALUES ('340601', '市辖区', '340600');
INSERT INTO `yershop_area` VALUES ('340602', '杜集区', '340600');
INSERT INTO `yershop_area` VALUES ('340603', '相山区', '340600');
INSERT INTO `yershop_area` VALUES ('340604', '烈山区', '340600');
INSERT INTO `yershop_area` VALUES ('340621', '濉溪县', '340600');
INSERT INTO `yershop_area` VALUES ('340701', '市辖区', '340700');
INSERT INTO `yershop_area` VALUES ('340702', '铜官山区', '340700');
INSERT INTO `yershop_area` VALUES ('340703', '狮子山区', '340700');
INSERT INTO `yershop_area` VALUES ('340711', '郊　区', '340700');
INSERT INTO `yershop_area` VALUES ('340721', '铜陵县', '340700');
INSERT INTO `yershop_area` VALUES ('340801', '市辖区', '340800');
INSERT INTO `yershop_area` VALUES ('340802', '迎江区', '340800');
INSERT INTO `yershop_area` VALUES ('340803', '大观区', '340800');
INSERT INTO `yershop_area` VALUES ('340811', '郊　区', '340800');
INSERT INTO `yershop_area` VALUES ('340822', '怀宁县', '340800');
INSERT INTO `yershop_area` VALUES ('340823', '枞阳县', '340800');
INSERT INTO `yershop_area` VALUES ('340824', '潜山县', '340800');
INSERT INTO `yershop_area` VALUES ('340825', '太湖县', '340800');
INSERT INTO `yershop_area` VALUES ('340826', '宿松县', '340800');
INSERT INTO `yershop_area` VALUES ('340827', '望江县', '340800');
INSERT INTO `yershop_area` VALUES ('340828', '岳西县', '340800');
INSERT INTO `yershop_area` VALUES ('340881', '桐城市', '340800');
INSERT INTO `yershop_area` VALUES ('341001', '市辖区', '341000');
INSERT INTO `yershop_area` VALUES ('341002', '屯溪区', '341000');
INSERT INTO `yershop_area` VALUES ('341003', '黄山区', '341000');
INSERT INTO `yershop_area` VALUES ('341004', '徽州区', '341000');
INSERT INTO `yershop_area` VALUES ('341021', '歙　县', '341000');
INSERT INTO `yershop_area` VALUES ('341022', '休宁县', '341000');
INSERT INTO `yershop_area` VALUES ('341023', '黟　县', '341000');
INSERT INTO `yershop_area` VALUES ('341024', '祁门县', '341000');
INSERT INTO `yershop_area` VALUES ('341101', '市辖区', '341100');
INSERT INTO `yershop_area` VALUES ('341102', '琅琊区', '341100');
INSERT INTO `yershop_area` VALUES ('341103', '南谯区', '341100');
INSERT INTO `yershop_area` VALUES ('341122', '来安县', '341100');
INSERT INTO `yershop_area` VALUES ('341124', '全椒县', '341100');
INSERT INTO `yershop_area` VALUES ('341125', '定远县', '341100');
INSERT INTO `yershop_area` VALUES ('341126', '凤阳县', '341100');
INSERT INTO `yershop_area` VALUES ('341181', '天长市', '341100');
INSERT INTO `yershop_area` VALUES ('341182', '明光市', '341100');
INSERT INTO `yershop_area` VALUES ('341201', '市辖区', '341200');
INSERT INTO `yershop_area` VALUES ('341202', '颍州区', '341200');
INSERT INTO `yershop_area` VALUES ('341203', '颍东区', '341200');
INSERT INTO `yershop_area` VALUES ('341204', '颍泉区', '341200');
INSERT INTO `yershop_area` VALUES ('341221', '临泉县', '341200');
INSERT INTO `yershop_area` VALUES ('341222', '太和县', '341200');
INSERT INTO `yershop_area` VALUES ('341225', '阜南县', '341200');
INSERT INTO `yershop_area` VALUES ('341226', '颍上县', '341200');
INSERT INTO `yershop_area` VALUES ('341282', '界首市', '341200');
INSERT INTO `yershop_area` VALUES ('341301', '市辖区', '341300');
INSERT INTO `yershop_area` VALUES ('341302', '墉桥区', '341300');
INSERT INTO `yershop_area` VALUES ('341321', '砀山县', '341300');
INSERT INTO `yershop_area` VALUES ('341322', '萧　县', '341300');
INSERT INTO `yershop_area` VALUES ('341323', '灵璧县', '341300');
INSERT INTO `yershop_area` VALUES ('341324', '泗　县', '341300');
INSERT INTO `yershop_area` VALUES ('341401', '市辖区', '341400');
INSERT INTO `yershop_area` VALUES ('341402', '居巢区', '341400');
INSERT INTO `yershop_area` VALUES ('341421', '庐江县', '341400');
INSERT INTO `yershop_area` VALUES ('341422', '无为县', '341400');
INSERT INTO `yershop_area` VALUES ('341423', '含山县', '341400');
INSERT INTO `yershop_area` VALUES ('341424', '和　县', '341400');
INSERT INTO `yershop_area` VALUES ('341501', '市辖区', '341500');
INSERT INTO `yershop_area` VALUES ('341502', '金安区', '341500');
INSERT INTO `yershop_area` VALUES ('341503', '裕安区', '341500');
INSERT INTO `yershop_area` VALUES ('341521', '寿　县', '341500');
INSERT INTO `yershop_area` VALUES ('341522', '霍邱县', '341500');
INSERT INTO `yershop_area` VALUES ('341523', '舒城县', '341500');
INSERT INTO `yershop_area` VALUES ('341524', '金寨县', '341500');
INSERT INTO `yershop_area` VALUES ('341525', '霍山县', '341500');
INSERT INTO `yershop_area` VALUES ('341601', '市辖区', '341600');
INSERT INTO `yershop_area` VALUES ('341602', '谯城区', '341600');
INSERT INTO `yershop_area` VALUES ('341621', '涡阳县', '341600');
INSERT INTO `yershop_area` VALUES ('341622', '蒙城县', '341600');
INSERT INTO `yershop_area` VALUES ('341623', '利辛县', '341600');
INSERT INTO `yershop_area` VALUES ('341701', '市辖区', '341700');
INSERT INTO `yershop_area` VALUES ('341702', '贵池区', '341700');
INSERT INTO `yershop_area` VALUES ('341721', '东至县', '341700');
INSERT INTO `yershop_area` VALUES ('341722', '石台县', '341700');
INSERT INTO `yershop_area` VALUES ('341723', '青阳县', '341700');
INSERT INTO `yershop_area` VALUES ('341801', '市辖区', '341800');
INSERT INTO `yershop_area` VALUES ('341802', '宣州区', '341800');
INSERT INTO `yershop_area` VALUES ('341821', '郎溪县', '341800');
INSERT INTO `yershop_area` VALUES ('341822', '广德县', '341800');
INSERT INTO `yershop_area` VALUES ('341823', '泾　县', '341800');
INSERT INTO `yershop_area` VALUES ('341824', '绩溪县', '341800');
INSERT INTO `yershop_area` VALUES ('341825', '旌德县', '341800');
INSERT INTO `yershop_area` VALUES ('341881', '宁国市', '341800');
INSERT INTO `yershop_area` VALUES ('350101', '市辖区', '350100');
INSERT INTO `yershop_area` VALUES ('350102', '鼓楼区', '350100');
INSERT INTO `yershop_area` VALUES ('350103', '台江区', '350100');
INSERT INTO `yershop_area` VALUES ('350104', '仓山区', '350100');
INSERT INTO `yershop_area` VALUES ('350105', '马尾区', '350100');
INSERT INTO `yershop_area` VALUES ('350111', '晋安区', '350100');
INSERT INTO `yershop_area` VALUES ('350121', '闽侯县', '350100');
INSERT INTO `yershop_area` VALUES ('350122', '连江县', '350100');
INSERT INTO `yershop_area` VALUES ('350123', '罗源县', '350100');
INSERT INTO `yershop_area` VALUES ('350124', '闽清县', '350100');
INSERT INTO `yershop_area` VALUES ('350125', '永泰县', '350100');
INSERT INTO `yershop_area` VALUES ('350128', '平潭县', '350100');
INSERT INTO `yershop_area` VALUES ('350181', '福清市', '350100');
INSERT INTO `yershop_area` VALUES ('350182', '长乐市', '350100');
INSERT INTO `yershop_area` VALUES ('350201', '市辖区', '350200');
INSERT INTO `yershop_area` VALUES ('350203', '思明区', '350200');
INSERT INTO `yershop_area` VALUES ('350205', '海沧区', '350200');
INSERT INTO `yershop_area` VALUES ('350206', '湖里区', '350200');
INSERT INTO `yershop_area` VALUES ('350211', '集美区', '350200');
INSERT INTO `yershop_area` VALUES ('350212', '同安区', '350200');
INSERT INTO `yershop_area` VALUES ('350213', '翔安区', '350200');
INSERT INTO `yershop_area` VALUES ('350301', '市辖区', '350300');
INSERT INTO `yershop_area` VALUES ('350302', '城厢区', '350300');
INSERT INTO `yershop_area` VALUES ('350303', '涵江区', '350300');
INSERT INTO `yershop_area` VALUES ('350304', '荔城区', '350300');
INSERT INTO `yershop_area` VALUES ('350305', '秀屿区', '350300');
INSERT INTO `yershop_area` VALUES ('350322', '仙游县', '350300');
INSERT INTO `yershop_area` VALUES ('350401', '市辖区', '350400');
INSERT INTO `yershop_area` VALUES ('350402', '梅列区', '350400');
INSERT INTO `yershop_area` VALUES ('350403', '三元区', '350400');
INSERT INTO `yershop_area` VALUES ('350421', '明溪县', '350400');
INSERT INTO `yershop_area` VALUES ('350423', '清流县', '350400');
INSERT INTO `yershop_area` VALUES ('350424', '宁化县', '350400');
INSERT INTO `yershop_area` VALUES ('350425', '大田县', '350400');
INSERT INTO `yershop_area` VALUES ('350426', '尤溪县', '350400');
INSERT INTO `yershop_area` VALUES ('350427', '沙　县', '350400');
INSERT INTO `yershop_area` VALUES ('350428', '将乐县', '350400');
INSERT INTO `yershop_area` VALUES ('350429', '泰宁县', '350400');
INSERT INTO `yershop_area` VALUES ('350430', '建宁县', '350400');
INSERT INTO `yershop_area` VALUES ('350481', '永安市', '350400');
INSERT INTO `yershop_area` VALUES ('350501', '市辖区', '350500');
INSERT INTO `yershop_area` VALUES ('350502', '鲤城区', '350500');
INSERT INTO `yershop_area` VALUES ('350503', '丰泽区', '350500');
INSERT INTO `yershop_area` VALUES ('350504', '洛江区', '350500');
INSERT INTO `yershop_area` VALUES ('350505', '泉港区', '350500');
INSERT INTO `yershop_area` VALUES ('350521', '惠安县', '350500');
INSERT INTO `yershop_area` VALUES ('350524', '安溪县', '350500');
INSERT INTO `yershop_area` VALUES ('350525', '永春县', '350500');
INSERT INTO `yershop_area` VALUES ('350526', '德化县', '350500');
INSERT INTO `yershop_area` VALUES ('350527', '金门县', '350500');
INSERT INTO `yershop_area` VALUES ('350581', '石狮市', '350500');
INSERT INTO `yershop_area` VALUES ('350582', '晋江市', '350500');
INSERT INTO `yershop_area` VALUES ('350583', '南安市', '350500');
INSERT INTO `yershop_area` VALUES ('350601', '市辖区', '350600');
INSERT INTO `yershop_area` VALUES ('350602', '芗城区', '350600');
INSERT INTO `yershop_area` VALUES ('350603', '龙文区', '350600');
INSERT INTO `yershop_area` VALUES ('350622', '云霄县', '350600');
INSERT INTO `yershop_area` VALUES ('350623', '漳浦县', '350600');
INSERT INTO `yershop_area` VALUES ('350624', '诏安县', '350600');
INSERT INTO `yershop_area` VALUES ('350625', '长泰县', '350600');
INSERT INTO `yershop_area` VALUES ('350626', '东山县', '350600');
INSERT INTO `yershop_area` VALUES ('350627', '南靖县', '350600');
INSERT INTO `yershop_area` VALUES ('350628', '平和县', '350600');
INSERT INTO `yershop_area` VALUES ('350629', '华安县', '350600');
INSERT INTO `yershop_area` VALUES ('350681', '龙海市', '350600');
INSERT INTO `yershop_area` VALUES ('350701', '市辖区', '350700');
INSERT INTO `yershop_area` VALUES ('350702', '延平区', '350700');
INSERT INTO `yershop_area` VALUES ('350721', '顺昌县', '350700');
INSERT INTO `yershop_area` VALUES ('350722', '浦城县', '350700');
INSERT INTO `yershop_area` VALUES ('350723', '光泽县', '350700');
INSERT INTO `yershop_area` VALUES ('350724', '松溪县', '350700');
INSERT INTO `yershop_area` VALUES ('350725', '政和县', '350700');
INSERT INTO `yershop_area` VALUES ('350781', '邵武市', '350700');
INSERT INTO `yershop_area` VALUES ('350782', '武夷山市', '350700');
INSERT INTO `yershop_area` VALUES ('350783', '建瓯市', '350700');
INSERT INTO `yershop_area` VALUES ('350784', '建阳市', '350700');
INSERT INTO `yershop_area` VALUES ('350801', '市辖区', '350800');
INSERT INTO `yershop_area` VALUES ('350802', '新罗区', '350800');
INSERT INTO `yershop_area` VALUES ('350821', '长汀县', '350800');
INSERT INTO `yershop_area` VALUES ('350822', '永定县', '350800');
INSERT INTO `yershop_area` VALUES ('350823', '上杭县', '350800');
INSERT INTO `yershop_area` VALUES ('350824', '武平县', '350800');
INSERT INTO `yershop_area` VALUES ('350825', '连城县', '350800');
INSERT INTO `yershop_area` VALUES ('350881', '漳平市', '350800');
INSERT INTO `yershop_area` VALUES ('350901', '市辖区', '350900');
INSERT INTO `yershop_area` VALUES ('350902', '蕉城区', '350900');
INSERT INTO `yershop_area` VALUES ('350921', '霞浦县', '350900');
INSERT INTO `yershop_area` VALUES ('350922', '古田县', '350900');
INSERT INTO `yershop_area` VALUES ('350923', '屏南县', '350900');
INSERT INTO `yershop_area` VALUES ('350924', '寿宁县', '350900');
INSERT INTO `yershop_area` VALUES ('350925', '周宁县', '350900');
INSERT INTO `yershop_area` VALUES ('350926', '柘荣县', '350900');
INSERT INTO `yershop_area` VALUES ('350981', '福安市', '350900');
INSERT INTO `yershop_area` VALUES ('350982', '福鼎市', '350900');
INSERT INTO `yershop_area` VALUES ('360101', '市辖区', '360100');
INSERT INTO `yershop_area` VALUES ('360102', '东湖区', '360100');
INSERT INTO `yershop_area` VALUES ('360103', '西湖区', '360100');
INSERT INTO `yershop_area` VALUES ('360104', '青云谱区', '360100');
INSERT INTO `yershop_area` VALUES ('360105', '湾里区', '360100');
INSERT INTO `yershop_area` VALUES ('360111', '青山湖区', '360100');
INSERT INTO `yershop_area` VALUES ('360121', '南昌县', '360100');
INSERT INTO `yershop_area` VALUES ('360122', '新建县', '360100');
INSERT INTO `yershop_area` VALUES ('360123', '安义县', '360100');
INSERT INTO `yershop_area` VALUES ('360124', '进贤县', '360100');
INSERT INTO `yershop_area` VALUES ('360201', '市辖区', '360200');
INSERT INTO `yershop_area` VALUES ('360202', '昌江区', '360200');
INSERT INTO `yershop_area` VALUES ('360203', '珠山区', '360200');
INSERT INTO `yershop_area` VALUES ('360222', '浮梁县', '360200');
INSERT INTO `yershop_area` VALUES ('360281', '乐平市', '360200');
INSERT INTO `yershop_area` VALUES ('360301', '市辖区', '360300');
INSERT INTO `yershop_area` VALUES ('360302', '安源区', '360300');
INSERT INTO `yershop_area` VALUES ('360313', '湘东区', '360300');
INSERT INTO `yershop_area` VALUES ('360321', '莲花县', '360300');
INSERT INTO `yershop_area` VALUES ('360322', '上栗县', '360300');
INSERT INTO `yershop_area` VALUES ('360323', '芦溪县', '360300');
INSERT INTO `yershop_area` VALUES ('360401', '市辖区', '360400');
INSERT INTO `yershop_area` VALUES ('360402', '庐山区', '360400');
INSERT INTO `yershop_area` VALUES ('360403', '浔阳区', '360400');
INSERT INTO `yershop_area` VALUES ('360421', '九江县', '360400');
INSERT INTO `yershop_area` VALUES ('360423', '武宁县', '360400');
INSERT INTO `yershop_area` VALUES ('360424', '修水县', '360400');
INSERT INTO `yershop_area` VALUES ('360425', '永修县', '360400');
INSERT INTO `yershop_area` VALUES ('360426', '德安县', '360400');
INSERT INTO `yershop_area` VALUES ('360427', '星子县', '360400');
INSERT INTO `yershop_area` VALUES ('360428', '都昌县', '360400');
INSERT INTO `yershop_area` VALUES ('360429', '湖口县', '360400');
INSERT INTO `yershop_area` VALUES ('360430', '彭泽县', '360400');
INSERT INTO `yershop_area` VALUES ('360481', '瑞昌市', '360400');
INSERT INTO `yershop_area` VALUES ('360501', '市辖区', '360500');
INSERT INTO `yershop_area` VALUES ('360502', '渝水区', '360500');
INSERT INTO `yershop_area` VALUES ('360521', '分宜县', '360500');
INSERT INTO `yershop_area` VALUES ('360601', '市辖区', '360600');
INSERT INTO `yershop_area` VALUES ('360602', '月湖区', '360600');
INSERT INTO `yershop_area` VALUES ('360622', '余江县', '360600');
INSERT INTO `yershop_area` VALUES ('360681', '贵溪市', '360600');
INSERT INTO `yershop_area` VALUES ('360701', '市辖区', '360700');
INSERT INTO `yershop_area` VALUES ('360702', '章贡区', '360700');
INSERT INTO `yershop_area` VALUES ('360721', '赣　县', '360700');
INSERT INTO `yershop_area` VALUES ('360722', '信丰县', '360700');
INSERT INTO `yershop_area` VALUES ('360723', '大余县', '360700');
INSERT INTO `yershop_area` VALUES ('360724', '上犹县', '360700');
INSERT INTO `yershop_area` VALUES ('360725', '崇义县', '360700');
INSERT INTO `yershop_area` VALUES ('360726', '安远县', '360700');
INSERT INTO `yershop_area` VALUES ('360727', '龙南县', '360700');
INSERT INTO `yershop_area` VALUES ('360728', '定南县', '360700');
INSERT INTO `yershop_area` VALUES ('360729', '全南县', '360700');
INSERT INTO `yershop_area` VALUES ('360730', '宁都县', '360700');
INSERT INTO `yershop_area` VALUES ('360731', '于都县', '360700');
INSERT INTO `yershop_area` VALUES ('360732', '兴国县', '360700');
INSERT INTO `yershop_area` VALUES ('360733', '会昌县', '360700');
INSERT INTO `yershop_area` VALUES ('360734', '寻乌县', '360700');
INSERT INTO `yershop_area` VALUES ('360735', '石城县', '360700');
INSERT INTO `yershop_area` VALUES ('360781', '瑞金市', '360700');
INSERT INTO `yershop_area` VALUES ('360782', '南康市', '360700');
INSERT INTO `yershop_area` VALUES ('360801', '市辖区', '360800');
INSERT INTO `yershop_area` VALUES ('360802', '吉州区', '360800');
INSERT INTO `yershop_area` VALUES ('360803', '青原区', '360800');
INSERT INTO `yershop_area` VALUES ('360821', '吉安县', '360800');
INSERT INTO `yershop_area` VALUES ('360822', '吉水县', '360800');
INSERT INTO `yershop_area` VALUES ('360823', '峡江县', '360800');
INSERT INTO `yershop_area` VALUES ('360824', '新干县', '360800');
INSERT INTO `yershop_area` VALUES ('360825', '永丰县', '360800');
INSERT INTO `yershop_area` VALUES ('360826', '泰和县', '360800');
INSERT INTO `yershop_area` VALUES ('360827', '遂川县', '360800');
INSERT INTO `yershop_area` VALUES ('360828', '万安县', '360800');
INSERT INTO `yershop_area` VALUES ('360829', '安福县', '360800');
INSERT INTO `yershop_area` VALUES ('360830', '永新县', '360800');
INSERT INTO `yershop_area` VALUES ('360881', '井冈山市', '360800');
INSERT INTO `yershop_area` VALUES ('360901', '市辖区', '360900');
INSERT INTO `yershop_area` VALUES ('360902', '袁州区', '360900');
INSERT INTO `yershop_area` VALUES ('360921', '奉新县', '360900');
INSERT INTO `yershop_area` VALUES ('360922', '万载县', '360900');
INSERT INTO `yershop_area` VALUES ('360923', '上高县', '360900');
INSERT INTO `yershop_area` VALUES ('360924', '宜丰县', '360900');
INSERT INTO `yershop_area` VALUES ('360925', '靖安县', '360900');
INSERT INTO `yershop_area` VALUES ('360926', '铜鼓县', '360900');
INSERT INTO `yershop_area` VALUES ('360981', '丰城市', '360900');
INSERT INTO `yershop_area` VALUES ('360982', '樟树市', '360900');
INSERT INTO `yershop_area` VALUES ('360983', '高安市', '360900');
INSERT INTO `yershop_area` VALUES ('361001', '市辖区', '361000');
INSERT INTO `yershop_area` VALUES ('361002', '临川区', '361000');
INSERT INTO `yershop_area` VALUES ('361021', '南城县', '361000');
INSERT INTO `yershop_area` VALUES ('361022', '黎川县', '361000');
INSERT INTO `yershop_area` VALUES ('361023', '南丰县', '361000');
INSERT INTO `yershop_area` VALUES ('361024', '崇仁县', '361000');
INSERT INTO `yershop_area` VALUES ('361025', '乐安县', '361000');
INSERT INTO `yershop_area` VALUES ('361026', '宜黄县', '361000');
INSERT INTO `yershop_area` VALUES ('361027', '金溪县', '361000');
INSERT INTO `yershop_area` VALUES ('361028', '资溪县', '361000');
INSERT INTO `yershop_area` VALUES ('361029', '东乡县', '361000');
INSERT INTO `yershop_area` VALUES ('361030', '广昌县', '361000');
INSERT INTO `yershop_area` VALUES ('361101', '市辖区', '361100');
INSERT INTO `yershop_area` VALUES ('361102', '信州区', '361100');
INSERT INTO `yershop_area` VALUES ('361121', '上饶县', '361100');
INSERT INTO `yershop_area` VALUES ('361122', '广丰县', '361100');
INSERT INTO `yershop_area` VALUES ('361123', '玉山县', '361100');
INSERT INTO `yershop_area` VALUES ('361124', '铅山县', '361100');
INSERT INTO `yershop_area` VALUES ('361125', '横峰县', '361100');
INSERT INTO `yershop_area` VALUES ('361126', '弋阳县', '361100');
INSERT INTO `yershop_area` VALUES ('361127', '余干县', '361100');
INSERT INTO `yershop_area` VALUES ('361128', '鄱阳县', '361100');
INSERT INTO `yershop_area` VALUES ('361129', '万年县', '361100');
INSERT INTO `yershop_area` VALUES ('361130', '婺源县', '361100');
INSERT INTO `yershop_area` VALUES ('361181', '德兴市', '361100');
INSERT INTO `yershop_area` VALUES ('370101', '市辖区', '370100');
INSERT INTO `yershop_area` VALUES ('370102', '历下区', '370100');
INSERT INTO `yershop_area` VALUES ('370103', '市中区', '370100');
INSERT INTO `yershop_area` VALUES ('370104', '槐荫区', '370100');
INSERT INTO `yershop_area` VALUES ('370105', '天桥区', '370100');
INSERT INTO `yershop_area` VALUES ('370112', '历城区', '370100');
INSERT INTO `yershop_area` VALUES ('370113', '长清区', '370100');
INSERT INTO `yershop_area` VALUES ('370124', '平阴县', '370100');
INSERT INTO `yershop_area` VALUES ('370125', '济阳县', '370100');
INSERT INTO `yershop_area` VALUES ('370126', '商河县', '370100');
INSERT INTO `yershop_area` VALUES ('370181', '章丘市', '370100');
INSERT INTO `yershop_area` VALUES ('370201', '市辖区', '370200');
INSERT INTO `yershop_area` VALUES ('370202', '市南区', '370200');
INSERT INTO `yershop_area` VALUES ('370203', '市北区', '370200');
INSERT INTO `yershop_area` VALUES ('370205', '四方区', '370200');
INSERT INTO `yershop_area` VALUES ('370211', '黄岛区', '370200');
INSERT INTO `yershop_area` VALUES ('370212', '崂山区', '370200');
INSERT INTO `yershop_area` VALUES ('370213', '李沧区', '370200');
INSERT INTO `yershop_area` VALUES ('370214', '城阳区', '370200');
INSERT INTO `yershop_area` VALUES ('370281', '胶州市', '370200');
INSERT INTO `yershop_area` VALUES ('370282', '即墨市', '370200');
INSERT INTO `yershop_area` VALUES ('370283', '平度市', '370200');
INSERT INTO `yershop_area` VALUES ('370284', '胶南市', '370200');
INSERT INTO `yershop_area` VALUES ('370285', '莱西市', '370200');
INSERT INTO `yershop_area` VALUES ('370301', '市辖区', '370300');
INSERT INTO `yershop_area` VALUES ('370302', '淄川区', '370300');
INSERT INTO `yershop_area` VALUES ('370303', '张店区', '370300');
INSERT INTO `yershop_area` VALUES ('370304', '博山区', '370300');
INSERT INTO `yershop_area` VALUES ('370305', '临淄区', '370300');
INSERT INTO `yershop_area` VALUES ('370306', '周村区', '370300');
INSERT INTO `yershop_area` VALUES ('370321', '桓台县', '370300');
INSERT INTO `yershop_area` VALUES ('370322', '高青县', '370300');
INSERT INTO `yershop_area` VALUES ('370323', '沂源县', '370300');
INSERT INTO `yershop_area` VALUES ('370401', '市辖区', '370400');
INSERT INTO `yershop_area` VALUES ('370402', '市中区', '370400');
INSERT INTO `yershop_area` VALUES ('370403', '薛城区', '370400');
INSERT INTO `yershop_area` VALUES ('370404', '峄城区', '370400');
INSERT INTO `yershop_area` VALUES ('370405', '台儿庄区', '370400');
INSERT INTO `yershop_area` VALUES ('370406', '山亭区', '370400');
INSERT INTO `yershop_area` VALUES ('370481', '滕州市', '370400');
INSERT INTO `yershop_area` VALUES ('370501', '市辖区', '370500');
INSERT INTO `yershop_area` VALUES ('370502', '东营区', '370500');
INSERT INTO `yershop_area` VALUES ('370503', '河口区', '370500');
INSERT INTO `yershop_area` VALUES ('370521', '垦利县', '370500');
INSERT INTO `yershop_area` VALUES ('370522', '利津县', '370500');
INSERT INTO `yershop_area` VALUES ('370523', '广饶县', '370500');
INSERT INTO `yershop_area` VALUES ('370601', '市辖区', '370600');
INSERT INTO `yershop_area` VALUES ('370602', '芝罘区', '370600');
INSERT INTO `yershop_area` VALUES ('370611', '福山区', '370600');
INSERT INTO `yershop_area` VALUES ('370612', '牟平区', '370600');
INSERT INTO `yershop_area` VALUES ('370613', '莱山区', '370600');
INSERT INTO `yershop_area` VALUES ('370634', '长岛县', '370600');
INSERT INTO `yershop_area` VALUES ('370681', '龙口市', '370600');
INSERT INTO `yershop_area` VALUES ('370682', '莱阳市', '370600');
INSERT INTO `yershop_area` VALUES ('370683', '莱州市', '370600');
INSERT INTO `yershop_area` VALUES ('370684', '蓬莱市', '370600');
INSERT INTO `yershop_area` VALUES ('370685', '招远市', '370600');
INSERT INTO `yershop_area` VALUES ('370686', '栖霞市', '370600');
INSERT INTO `yershop_area` VALUES ('370687', '海阳市', '370600');
INSERT INTO `yershop_area` VALUES ('370701', '市辖区', '370700');
INSERT INTO `yershop_area` VALUES ('370702', '潍城区', '370700');
INSERT INTO `yershop_area` VALUES ('370703', '寒亭区', '370700');
INSERT INTO `yershop_area` VALUES ('370704', '坊子区', '370700');
INSERT INTO `yershop_area` VALUES ('370705', '奎文区', '370700');
INSERT INTO `yershop_area` VALUES ('370724', '临朐县', '370700');
INSERT INTO `yershop_area` VALUES ('370725', '昌乐县', '370700');
INSERT INTO `yershop_area` VALUES ('370781', '青州市', '370700');
INSERT INTO `yershop_area` VALUES ('370782', '诸城市', '370700');
INSERT INTO `yershop_area` VALUES ('370783', '寿光市', '370700');
INSERT INTO `yershop_area` VALUES ('370784', '安丘市', '370700');
INSERT INTO `yershop_area` VALUES ('370785', '高密市', '370700');
INSERT INTO `yershop_area` VALUES ('370786', '昌邑市', '370700');
INSERT INTO `yershop_area` VALUES ('370801', '市辖区', '370800');
INSERT INTO `yershop_area` VALUES ('370802', '市中区', '370800');
INSERT INTO `yershop_area` VALUES ('370811', '任城区', '370800');
INSERT INTO `yershop_area` VALUES ('370826', '微山县', '370800');
INSERT INTO `yershop_area` VALUES ('370827', '鱼台县', '370800');
INSERT INTO `yershop_area` VALUES ('370828', '金乡县', '370800');
INSERT INTO `yershop_area` VALUES ('370829', '嘉祥县', '370800');
INSERT INTO `yershop_area` VALUES ('370830', '汶上县', '370800');
INSERT INTO `yershop_area` VALUES ('370831', '泗水县', '370800');
INSERT INTO `yershop_area` VALUES ('370832', '梁山县', '370800');
INSERT INTO `yershop_area` VALUES ('370881', '曲阜市', '370800');
INSERT INTO `yershop_area` VALUES ('370882', '兖州市', '370800');
INSERT INTO `yershop_area` VALUES ('370883', '邹城市', '370800');
INSERT INTO `yershop_area` VALUES ('370901', '市辖区', '370900');
INSERT INTO `yershop_area` VALUES ('370902', '泰山区', '370900');
INSERT INTO `yershop_area` VALUES ('370903', '岱岳区', '370900');
INSERT INTO `yershop_area` VALUES ('370921', '宁阳县', '370900');
INSERT INTO `yershop_area` VALUES ('370923', '东平县', '370900');
INSERT INTO `yershop_area` VALUES ('370982', '新泰市', '370900');
INSERT INTO `yershop_area` VALUES ('370983', '肥城市', '370900');
INSERT INTO `yershop_area` VALUES ('371001', '市辖区', '371000');
INSERT INTO `yershop_area` VALUES ('371002', '环翠区', '371000');
INSERT INTO `yershop_area` VALUES ('371081', '文登市', '371000');
INSERT INTO `yershop_area` VALUES ('371082', '荣成市', '371000');
INSERT INTO `yershop_area` VALUES ('371083', '乳山市', '371000');
INSERT INTO `yershop_area` VALUES ('371101', '市辖区', '371100');
INSERT INTO `yershop_area` VALUES ('371102', '东港区', '371100');
INSERT INTO `yershop_area` VALUES ('371103', '岚山区', '371100');
INSERT INTO `yershop_area` VALUES ('371121', '五莲县', '371100');
INSERT INTO `yershop_area` VALUES ('371122', '莒　县', '371100');
INSERT INTO `yershop_area` VALUES ('371201', '市辖区', '371200');
INSERT INTO `yershop_area` VALUES ('371202', '莱城区', '371200');
INSERT INTO `yershop_area` VALUES ('371203', '钢城区', '371200');
INSERT INTO `yershop_area` VALUES ('371301', '市辖区', '371300');
INSERT INTO `yershop_area` VALUES ('371302', '兰山区', '371300');
INSERT INTO `yershop_area` VALUES ('371311', '罗庄区', '371300');
INSERT INTO `yershop_area` VALUES ('371312', '河东区', '371300');
INSERT INTO `yershop_area` VALUES ('371321', '沂南县', '371300');
INSERT INTO `yershop_area` VALUES ('371322', '郯城县', '371300');
INSERT INTO `yershop_area` VALUES ('371323', '沂水县', '371300');
INSERT INTO `yershop_area` VALUES ('371324', '苍山县', '371300');
INSERT INTO `yershop_area` VALUES ('371325', '费　县', '371300');
INSERT INTO `yershop_area` VALUES ('371326', '平邑县', '371300');
INSERT INTO `yershop_area` VALUES ('371327', '莒南县', '371300');
INSERT INTO `yershop_area` VALUES ('371328', '蒙阴县', '371300');
INSERT INTO `yershop_area` VALUES ('371329', '临沭县', '371300');
INSERT INTO `yershop_area` VALUES ('371401', '市辖区', '371400');
INSERT INTO `yershop_area` VALUES ('371402', '德城区', '371400');
INSERT INTO `yershop_area` VALUES ('371421', '陵　县', '371400');
INSERT INTO `yershop_area` VALUES ('371422', '宁津县', '371400');
INSERT INTO `yershop_area` VALUES ('371423', '庆云县', '371400');
INSERT INTO `yershop_area` VALUES ('371424', '临邑县', '371400');
INSERT INTO `yershop_area` VALUES ('371425', '齐河县', '371400');
INSERT INTO `yershop_area` VALUES ('371426', '平原县', '371400');
INSERT INTO `yershop_area` VALUES ('371427', '夏津县', '371400');
INSERT INTO `yershop_area` VALUES ('371428', '武城县', '371400');
INSERT INTO `yershop_area` VALUES ('371481', '乐陵市', '371400');
INSERT INTO `yershop_area` VALUES ('371482', '禹城市', '371400');
INSERT INTO `yershop_area` VALUES ('371501', '市辖区', '371500');
INSERT INTO `yershop_area` VALUES ('371502', '东昌府区', '371500');
INSERT INTO `yershop_area` VALUES ('371521', '阳谷县', '371500');
INSERT INTO `yershop_area` VALUES ('371522', '莘　县', '371500');
INSERT INTO `yershop_area` VALUES ('371523', '茌平县', '371500');
INSERT INTO `yershop_area` VALUES ('371524', '东阿县', '371500');
INSERT INTO `yershop_area` VALUES ('371525', '冠　县', '371500');
INSERT INTO `yershop_area` VALUES ('371526', '高唐县', '371500');
INSERT INTO `yershop_area` VALUES ('371581', '临清市', '371500');
INSERT INTO `yershop_area` VALUES ('371601', '市辖区', '371600');
INSERT INTO `yershop_area` VALUES ('371602', '滨城区', '371600');
INSERT INTO `yershop_area` VALUES ('371621', '惠民县', '371600');
INSERT INTO `yershop_area` VALUES ('371622', '阳信县', '371600');
INSERT INTO `yershop_area` VALUES ('371623', '无棣县', '371600');
INSERT INTO `yershop_area` VALUES ('371624', '沾化县', '371600');
INSERT INTO `yershop_area` VALUES ('371625', '博兴县', '371600');
INSERT INTO `yershop_area` VALUES ('371626', '邹平县', '371600');
INSERT INTO `yershop_area` VALUES ('371701', '市辖区', '371700');
INSERT INTO `yershop_area` VALUES ('371702', '牡丹区', '371700');
INSERT INTO `yershop_area` VALUES ('371721', '曹　县', '371700');
INSERT INTO `yershop_area` VALUES ('371722', '单　县', '371700');
INSERT INTO `yershop_area` VALUES ('371723', '成武县', '371700');
INSERT INTO `yershop_area` VALUES ('371724', '巨野县', '371700');
INSERT INTO `yershop_area` VALUES ('371725', '郓城县', '371700');
INSERT INTO `yershop_area` VALUES ('371726', '鄄城县', '371700');
INSERT INTO `yershop_area` VALUES ('371727', '定陶县', '371700');
INSERT INTO `yershop_area` VALUES ('371728', '东明县', '371700');
INSERT INTO `yershop_area` VALUES ('410101', '市辖区', '410100');
INSERT INTO `yershop_area` VALUES ('410102', '中原区', '410100');
INSERT INTO `yershop_area` VALUES ('410103', '二七区', '410100');
INSERT INTO `yershop_area` VALUES ('410104', '管城回族区', '410100');
INSERT INTO `yershop_area` VALUES ('410105', '金水区', '410100');
INSERT INTO `yershop_area` VALUES ('410106', '上街区', '410100');
INSERT INTO `yershop_area` VALUES ('410108', '邙山区', '410100');
INSERT INTO `yershop_area` VALUES ('410122', '中牟县', '410100');
INSERT INTO `yershop_area` VALUES ('410181', '巩义市', '410100');
INSERT INTO `yershop_area` VALUES ('410182', '荥阳市', '410100');
INSERT INTO `yershop_area` VALUES ('410183', '新密市', '410100');
INSERT INTO `yershop_area` VALUES ('410184', '新郑市', '410100');
INSERT INTO `yershop_area` VALUES ('410185', '登封市', '410100');
INSERT INTO `yershop_area` VALUES ('410201', '市辖区', '410200');
INSERT INTO `yershop_area` VALUES ('410202', '龙亭区', '410200');
INSERT INTO `yershop_area` VALUES ('410203', '顺河回族区', '410200');
INSERT INTO `yershop_area` VALUES ('410204', '鼓楼区', '410200');
INSERT INTO `yershop_area` VALUES ('410205', '南关区', '410200');
INSERT INTO `yershop_area` VALUES ('410211', '郊　区', '410200');
INSERT INTO `yershop_area` VALUES ('410221', '杞　县', '410200');
INSERT INTO `yershop_area` VALUES ('410222', '通许县', '410200');
INSERT INTO `yershop_area` VALUES ('410223', '尉氏县', '410200');
INSERT INTO `yershop_area` VALUES ('410224', '开封县', '410200');
INSERT INTO `yershop_area` VALUES ('410225', '兰考县', '410200');
INSERT INTO `yershop_area` VALUES ('410301', '市辖区', '410300');
INSERT INTO `yershop_area` VALUES ('410302', '老城区', '410300');
INSERT INTO `yershop_area` VALUES ('410303', '西工区', '410300');
INSERT INTO `yershop_area` VALUES ('410304', '廛河回族区', '410300');
INSERT INTO `yershop_area` VALUES ('410305', '涧西区', '410300');
INSERT INTO `yershop_area` VALUES ('410306', '吉利区', '410300');
INSERT INTO `yershop_area` VALUES ('410307', '洛龙区', '410300');
INSERT INTO `yershop_area` VALUES ('410322', '孟津县', '410300');
INSERT INTO `yershop_area` VALUES ('410323', '新安县', '410300');
INSERT INTO `yershop_area` VALUES ('410324', '栾川县', '410300');
INSERT INTO `yershop_area` VALUES ('410325', '嵩　县', '410300');
INSERT INTO `yershop_area` VALUES ('410326', '汝阳县', '410300');
INSERT INTO `yershop_area` VALUES ('410327', '宜阳县', '410300');
INSERT INTO `yershop_area` VALUES ('410328', '洛宁县', '410300');
INSERT INTO `yershop_area` VALUES ('410329', '伊川县', '410300');
INSERT INTO `yershop_area` VALUES ('410381', '偃师市', '410300');
INSERT INTO `yershop_area` VALUES ('410401', '市辖区', '410400');
INSERT INTO `yershop_area` VALUES ('410402', '新华区', '410400');
INSERT INTO `yershop_area` VALUES ('410403', '卫东区', '410400');
INSERT INTO `yershop_area` VALUES ('410404', '石龙区', '410400');
INSERT INTO `yershop_area` VALUES ('410411', '湛河区', '410400');
INSERT INTO `yershop_area` VALUES ('410421', '宝丰县', '410400');
INSERT INTO `yershop_area` VALUES ('410422', '叶　县', '410400');
INSERT INTO `yershop_area` VALUES ('410423', '鲁山县', '410400');
INSERT INTO `yershop_area` VALUES ('410425', '郏　县', '410400');
INSERT INTO `yershop_area` VALUES ('410481', '舞钢市', '410400');
INSERT INTO `yershop_area` VALUES ('410482', '汝州市', '410400');
INSERT INTO `yershop_area` VALUES ('410501', '市辖区', '410500');
INSERT INTO `yershop_area` VALUES ('410502', '文峰区', '410500');
INSERT INTO `yershop_area` VALUES ('410503', '北关区', '410500');
INSERT INTO `yershop_area` VALUES ('410505', '殷都区', '410500');
INSERT INTO `yershop_area` VALUES ('410506', '龙安区', '410500');
INSERT INTO `yershop_area` VALUES ('410522', '安阳县', '410500');
INSERT INTO `yershop_area` VALUES ('410523', '汤阴县', '410500');
INSERT INTO `yershop_area` VALUES ('410526', '滑　县', '410500');
INSERT INTO `yershop_area` VALUES ('410527', '内黄县', '410500');
INSERT INTO `yershop_area` VALUES ('410581', '林州市', '410500');
INSERT INTO `yershop_area` VALUES ('410601', '市辖区', '410600');
INSERT INTO `yershop_area` VALUES ('410602', '鹤山区', '410600');
INSERT INTO `yershop_area` VALUES ('410603', '山城区', '410600');
INSERT INTO `yershop_area` VALUES ('410611', '淇滨区', '410600');
INSERT INTO `yershop_area` VALUES ('410621', '浚　县', '410600');
INSERT INTO `yershop_area` VALUES ('410622', '淇　县', '410600');
INSERT INTO `yershop_area` VALUES ('410701', '市辖区', '410700');
INSERT INTO `yershop_area` VALUES ('410702', '红旗区', '410700');
INSERT INTO `yershop_area` VALUES ('410703', '卫滨区', '410700');
INSERT INTO `yershop_area` VALUES ('410704', '凤泉区', '410700');
INSERT INTO `yershop_area` VALUES ('410711', '牧野区', '410700');
INSERT INTO `yershop_area` VALUES ('410721', '新乡县', '410700');
INSERT INTO `yershop_area` VALUES ('410724', '获嘉县', '410700');
INSERT INTO `yershop_area` VALUES ('410725', '原阳县', '410700');
INSERT INTO `yershop_area` VALUES ('410726', '延津县', '410700');
INSERT INTO `yershop_area` VALUES ('410727', '封丘县', '410700');
INSERT INTO `yershop_area` VALUES ('410728', '长垣县', '410700');
INSERT INTO `yershop_area` VALUES ('410781', '卫辉市', '410700');
INSERT INTO `yershop_area` VALUES ('410782', '辉县市', '410700');
INSERT INTO `yershop_area` VALUES ('410801', '市辖区', '410800');
INSERT INTO `yershop_area` VALUES ('410802', '解放区', '410800');
INSERT INTO `yershop_area` VALUES ('410803', '中站区', '410800');
INSERT INTO `yershop_area` VALUES ('410804', '马村区', '410800');
INSERT INTO `yershop_area` VALUES ('410811', '山阳区', '410800');
INSERT INTO `yershop_area` VALUES ('410821', '修武县', '410800');
INSERT INTO `yershop_area` VALUES ('410822', '博爱县', '410800');
INSERT INTO `yershop_area` VALUES ('410823', '武陟县', '410800');
INSERT INTO `yershop_area` VALUES ('410825', '温　县', '410800');
INSERT INTO `yershop_area` VALUES ('410881', '济源市', '410800');
INSERT INTO `yershop_area` VALUES ('410882', '沁阳市', '410800');
INSERT INTO `yershop_area` VALUES ('410883', '孟州市', '410800');
INSERT INTO `yershop_area` VALUES ('410901', '市辖区', '410900');
INSERT INTO `yershop_area` VALUES ('410902', '华龙区', '410900');
INSERT INTO `yershop_area` VALUES ('410922', '清丰县', '410900');
INSERT INTO `yershop_area` VALUES ('410923', '南乐县', '410900');
INSERT INTO `yershop_area` VALUES ('410926', '范　县', '410900');
INSERT INTO `yershop_area` VALUES ('410927', '台前县', '410900');
INSERT INTO `yershop_area` VALUES ('410928', '濮阳县', '410900');
INSERT INTO `yershop_area` VALUES ('411001', '市辖区', '411000');
INSERT INTO `yershop_area` VALUES ('411002', '魏都区', '411000');
INSERT INTO `yershop_area` VALUES ('411023', '许昌县', '411000');
INSERT INTO `yershop_area` VALUES ('411024', '鄢陵县', '411000');
INSERT INTO `yershop_area` VALUES ('411025', '襄城县', '411000');
INSERT INTO `yershop_area` VALUES ('411081', '禹州市', '411000');
INSERT INTO `yershop_area` VALUES ('411082', '长葛市', '411000');
INSERT INTO `yershop_area` VALUES ('411101', '市辖区', '411100');
INSERT INTO `yershop_area` VALUES ('411102', '源汇区', '411100');
INSERT INTO `yershop_area` VALUES ('411103', '郾城区', '411100');
INSERT INTO `yershop_area` VALUES ('411104', '召陵区', '411100');
INSERT INTO `yershop_area` VALUES ('411121', '舞阳县', '411100');
INSERT INTO `yershop_area` VALUES ('411122', '临颍县', '411100');
INSERT INTO `yershop_area` VALUES ('411201', '市辖区', '411200');
INSERT INTO `yershop_area` VALUES ('411202', '湖滨区', '411200');
INSERT INTO `yershop_area` VALUES ('411221', '渑池县', '411200');
INSERT INTO `yershop_area` VALUES ('411222', '陕　县', '411200');
INSERT INTO `yershop_area` VALUES ('411224', '卢氏县', '411200');
INSERT INTO `yershop_area` VALUES ('411281', '义马市', '411200');
INSERT INTO `yershop_area` VALUES ('411282', '灵宝市', '411200');
INSERT INTO `yershop_area` VALUES ('411301', '市辖区', '411300');
INSERT INTO `yershop_area` VALUES ('411302', '宛城区', '411300');
INSERT INTO `yershop_area` VALUES ('411303', '卧龙区', '411300');
INSERT INTO `yershop_area` VALUES ('411321', '南召县', '411300');
INSERT INTO `yershop_area` VALUES ('411322', '方城县', '411300');
INSERT INTO `yershop_area` VALUES ('411323', '西峡县', '411300');
INSERT INTO `yershop_area` VALUES ('411324', '镇平县', '411300');
INSERT INTO `yershop_area` VALUES ('411325', '内乡县', '411300');
INSERT INTO `yershop_area` VALUES ('411326', '淅川县', '411300');
INSERT INTO `yershop_area` VALUES ('411327', '社旗县', '411300');
INSERT INTO `yershop_area` VALUES ('411328', '唐河县', '411300');
INSERT INTO `yershop_area` VALUES ('411329', '新野县', '411300');
INSERT INTO `yershop_area` VALUES ('411330', '桐柏县', '411300');
INSERT INTO `yershop_area` VALUES ('411381', '邓州市', '411300');
INSERT INTO `yershop_area` VALUES ('411401', '市辖区', '411400');
INSERT INTO `yershop_area` VALUES ('411402', '梁园区', '411400');
INSERT INTO `yershop_area` VALUES ('411403', '睢阳区', '411400');
INSERT INTO `yershop_area` VALUES ('411421', '民权县', '411400');
INSERT INTO `yershop_area` VALUES ('411422', '睢　县', '411400');
INSERT INTO `yershop_area` VALUES ('411423', '宁陵县', '411400');
INSERT INTO `yershop_area` VALUES ('411424', '柘城县', '411400');
INSERT INTO `yershop_area` VALUES ('411425', '虞城县', '411400');
INSERT INTO `yershop_area` VALUES ('411426', '夏邑县', '411400');
INSERT INTO `yershop_area` VALUES ('411481', '永城市', '411400');
INSERT INTO `yershop_area` VALUES ('411501', '市辖区', '411500');
INSERT INTO `yershop_area` VALUES ('411502', '师河区', '411500');
INSERT INTO `yershop_area` VALUES ('411503', '平桥区', '411500');
INSERT INTO `yershop_area` VALUES ('411521', '罗山县', '411500');
INSERT INTO `yershop_area` VALUES ('411522', '光山县', '411500');
INSERT INTO `yershop_area` VALUES ('411523', '新　县', '411500');
INSERT INTO `yershop_area` VALUES ('411524', '商城县', '411500');
INSERT INTO `yershop_area` VALUES ('411525', '固始县', '411500');
INSERT INTO `yershop_area` VALUES ('411526', '潢川县', '411500');
INSERT INTO `yershop_area` VALUES ('411527', '淮滨县', '411500');
INSERT INTO `yershop_area` VALUES ('411528', '息　县', '411500');
INSERT INTO `yershop_area` VALUES ('411601', '市辖区', '411600');
INSERT INTO `yershop_area` VALUES ('411602', '川汇区', '411600');
INSERT INTO `yershop_area` VALUES ('411621', '扶沟县', '411600');
INSERT INTO `yershop_area` VALUES ('411622', '西华县', '411600');
INSERT INTO `yershop_area` VALUES ('411623', '商水县', '411600');
INSERT INTO `yershop_area` VALUES ('411624', '沈丘县', '411600');
INSERT INTO `yershop_area` VALUES ('411625', '郸城县', '411600');
INSERT INTO `yershop_area` VALUES ('411626', '淮阳县', '411600');
INSERT INTO `yershop_area` VALUES ('411627', '太康县', '411600');
INSERT INTO `yershop_area` VALUES ('411628', '鹿邑县', '411600');
INSERT INTO `yershop_area` VALUES ('411681', '项城市', '411600');
INSERT INTO `yershop_area` VALUES ('411701', '市辖区', '411700');
INSERT INTO `yershop_area` VALUES ('411702', '驿城区', '411700');
INSERT INTO `yershop_area` VALUES ('411721', '西平县', '411700');
INSERT INTO `yershop_area` VALUES ('411722', '上蔡县', '411700');
INSERT INTO `yershop_area` VALUES ('411723', '平舆县', '411700');
INSERT INTO `yershop_area` VALUES ('411724', '正阳县', '411700');
INSERT INTO `yershop_area` VALUES ('411725', '确山县', '411700');
INSERT INTO `yershop_area` VALUES ('411726', '泌阳县', '411700');
INSERT INTO `yershop_area` VALUES ('411727', '汝南县', '411700');
INSERT INTO `yershop_area` VALUES ('411728', '遂平县', '411700');
INSERT INTO `yershop_area` VALUES ('411729', '新蔡县', '411700');
INSERT INTO `yershop_area` VALUES ('420101', '市辖区', '420100');
INSERT INTO `yershop_area` VALUES ('420102', '江岸区', '420100');
INSERT INTO `yershop_area` VALUES ('420103', '江汉区', '420100');
INSERT INTO `yershop_area` VALUES ('420104', '乔口区', '420100');
INSERT INTO `yershop_area` VALUES ('420105', '汉阳区', '420100');
INSERT INTO `yershop_area` VALUES ('420106', '武昌区', '420100');
INSERT INTO `yershop_area` VALUES ('420107', '青山区', '420100');
INSERT INTO `yershop_area` VALUES ('420111', '洪山区', '420100');
INSERT INTO `yershop_area` VALUES ('420112', '东西湖区', '420100');
INSERT INTO `yershop_area` VALUES ('420113', '汉南区', '420100');
INSERT INTO `yershop_area` VALUES ('420114', '蔡甸区', '420100');
INSERT INTO `yershop_area` VALUES ('420115', '江夏区', '420100');
INSERT INTO `yershop_area` VALUES ('420116', '黄陂区', '420100');
INSERT INTO `yershop_area` VALUES ('420117', '新洲区', '420100');
INSERT INTO `yershop_area` VALUES ('420201', '市辖区', '420200');
INSERT INTO `yershop_area` VALUES ('420202', '黄石港区', '420200');
INSERT INTO `yershop_area` VALUES ('420203', '西塞山区', '420200');
INSERT INTO `yershop_area` VALUES ('420204', '下陆区', '420200');
INSERT INTO `yershop_area` VALUES ('420205', '铁山区', '420200');
INSERT INTO `yershop_area` VALUES ('420222', '阳新县', '420200');
INSERT INTO `yershop_area` VALUES ('420281', '大冶市', '420200');
INSERT INTO `yershop_area` VALUES ('420301', '市辖区', '420300');
INSERT INTO `yershop_area` VALUES ('420302', '茅箭区', '420300');
INSERT INTO `yershop_area` VALUES ('420303', '张湾区', '420300');
INSERT INTO `yershop_area` VALUES ('420321', '郧　县', '420300');
INSERT INTO `yershop_area` VALUES ('420322', '郧西县', '420300');
INSERT INTO `yershop_area` VALUES ('420323', '竹山县', '420300');
INSERT INTO `yershop_area` VALUES ('420324', '竹溪县', '420300');
INSERT INTO `yershop_area` VALUES ('420325', '房　县', '420300');
INSERT INTO `yershop_area` VALUES ('420381', '丹江口市', '420300');
INSERT INTO `yershop_area` VALUES ('420501', '市辖区', '420500');
INSERT INTO `yershop_area` VALUES ('420502', '西陵区', '420500');
INSERT INTO `yershop_area` VALUES ('420503', '伍家岗区', '420500');
INSERT INTO `yershop_area` VALUES ('420504', '点军区', '420500');
INSERT INTO `yershop_area` VALUES ('420505', '猇亭区', '420500');
INSERT INTO `yershop_area` VALUES ('420506', '夷陵区', '420500');
INSERT INTO `yershop_area` VALUES ('420525', '远安县', '420500');
INSERT INTO `yershop_area` VALUES ('420526', '兴山县', '420500');
INSERT INTO `yershop_area` VALUES ('420527', '秭归县', '420500');
INSERT INTO `yershop_area` VALUES ('420528', '长阳土家族自治县', '420500');
INSERT INTO `yershop_area` VALUES ('420529', '五峰土家族自治县', '420500');
INSERT INTO `yershop_area` VALUES ('420581', '宜都市', '420500');
INSERT INTO `yershop_area` VALUES ('420582', '当阳市', '420500');
INSERT INTO `yershop_area` VALUES ('420583', '枝江市', '420500');
INSERT INTO `yershop_area` VALUES ('420601', '市辖区', '420600');
INSERT INTO `yershop_area` VALUES ('420602', '襄城区', '420600');
INSERT INTO `yershop_area` VALUES ('420606', '樊城区', '420600');
INSERT INTO `yershop_area` VALUES ('420607', '襄阳区', '420600');
INSERT INTO `yershop_area` VALUES ('420624', '南漳县', '420600');
INSERT INTO `yershop_area` VALUES ('420625', '谷城县', '420600');
INSERT INTO `yershop_area` VALUES ('420626', '保康县', '420600');
INSERT INTO `yershop_area` VALUES ('420682', '老河口市', '420600');
INSERT INTO `yershop_area` VALUES ('420683', '枣阳市', '420600');
INSERT INTO `yershop_area` VALUES ('420684', '宜城市', '420600');
INSERT INTO `yershop_area` VALUES ('420701', '市辖区', '420700');
INSERT INTO `yershop_area` VALUES ('420702', '梁子湖区', '420700');
INSERT INTO `yershop_area` VALUES ('420703', '华容区', '420700');
INSERT INTO `yershop_area` VALUES ('420704', '鄂城区', '420700');
INSERT INTO `yershop_area` VALUES ('420801', '市辖区', '420800');
INSERT INTO `yershop_area` VALUES ('420802', '东宝区', '420800');
INSERT INTO `yershop_area` VALUES ('420804', '掇刀区', '420800');
INSERT INTO `yershop_area` VALUES ('420821', '京山县', '420800');
INSERT INTO `yershop_area` VALUES ('420822', '沙洋县', '420800');
INSERT INTO `yershop_area` VALUES ('420881', '钟祥市', '420800');
INSERT INTO `yershop_area` VALUES ('420901', '市辖区', '420900');
INSERT INTO `yershop_area` VALUES ('420902', '孝南区', '420900');
INSERT INTO `yershop_area` VALUES ('420921', '孝昌县', '420900');
INSERT INTO `yershop_area` VALUES ('420922', '大悟县', '420900');
INSERT INTO `yershop_area` VALUES ('420923', '云梦县', '420900');
INSERT INTO `yershop_area` VALUES ('420981', '应城市', '420900');
INSERT INTO `yershop_area` VALUES ('420982', '安陆市', '420900');
INSERT INTO `yershop_area` VALUES ('420984', '汉川市', '420900');
INSERT INTO `yershop_area` VALUES ('421001', '市辖区', '421000');
INSERT INTO `yershop_area` VALUES ('421002', '沙市区', '421000');
INSERT INTO `yershop_area` VALUES ('421003', '荆州区', '421000');
INSERT INTO `yershop_area` VALUES ('421022', '公安县', '421000');
INSERT INTO `yershop_area` VALUES ('421023', '监利县', '421000');
INSERT INTO `yershop_area` VALUES ('421024', '江陵县', '421000');
INSERT INTO `yershop_area` VALUES ('421081', '石首市', '421000');
INSERT INTO `yershop_area` VALUES ('421083', '洪湖市', '421000');
INSERT INTO `yershop_area` VALUES ('421087', '松滋市', '421000');
INSERT INTO `yershop_area` VALUES ('421101', '市辖区', '421100');
INSERT INTO `yershop_area` VALUES ('421102', '黄州区', '421100');
INSERT INTO `yershop_area` VALUES ('421121', '团风县', '421100');
INSERT INTO `yershop_area` VALUES ('421122', '红安县', '421100');
INSERT INTO `yershop_area` VALUES ('421123', '罗田县', '421100');
INSERT INTO `yershop_area` VALUES ('421124', '英山县', '421100');
INSERT INTO `yershop_area` VALUES ('421125', '浠水县', '421100');
INSERT INTO `yershop_area` VALUES ('421126', '蕲春县', '421100');
INSERT INTO `yershop_area` VALUES ('421127', '黄梅县', '421100');
INSERT INTO `yershop_area` VALUES ('421181', '麻城市', '421100');
INSERT INTO `yershop_area` VALUES ('421182', '武穴市', '421100');
INSERT INTO `yershop_area` VALUES ('421201', '市辖区', '421200');
INSERT INTO `yershop_area` VALUES ('421202', '咸安区', '421200');
INSERT INTO `yershop_area` VALUES ('421221', '嘉鱼县', '421200');
INSERT INTO `yershop_area` VALUES ('421222', '通城县', '421200');
INSERT INTO `yershop_area` VALUES ('421223', '崇阳县', '421200');
INSERT INTO `yershop_area` VALUES ('421224', '通山县', '421200');
INSERT INTO `yershop_area` VALUES ('421281', '赤壁市', '421200');
INSERT INTO `yershop_area` VALUES ('421301', '市辖区', '421300');
INSERT INTO `yershop_area` VALUES ('421302', '曾都区', '421300');
INSERT INTO `yershop_area` VALUES ('421381', '广水市', '421300');
INSERT INTO `yershop_area` VALUES ('422801', '恩施市', '422800');
INSERT INTO `yershop_area` VALUES ('422802', '利川市', '422800');
INSERT INTO `yershop_area` VALUES ('422822', '建始县', '422800');
INSERT INTO `yershop_area` VALUES ('422823', '巴东县', '422800');
INSERT INTO `yershop_area` VALUES ('422825', '宣恩县', '422800');
INSERT INTO `yershop_area` VALUES ('422826', '咸丰县', '422800');
INSERT INTO `yershop_area` VALUES ('422827', '来凤县', '422800');
INSERT INTO `yershop_area` VALUES ('422828', '鹤峰县', '422800');
INSERT INTO `yershop_area` VALUES ('429004', '仙桃市', '429000');
INSERT INTO `yershop_area` VALUES ('429005', '潜江市', '429000');
INSERT INTO `yershop_area` VALUES ('429006', '天门市', '429000');
INSERT INTO `yershop_area` VALUES ('429021', '神农架林区', '429000');
INSERT INTO `yershop_area` VALUES ('430101', '市辖区', '430100');
INSERT INTO `yershop_area` VALUES ('430102', '芙蓉区', '430100');
INSERT INTO `yershop_area` VALUES ('430103', '天心区', '430100');
INSERT INTO `yershop_area` VALUES ('430104', '岳麓区', '430100');
INSERT INTO `yershop_area` VALUES ('430105', '开福区', '430100');
INSERT INTO `yershop_area` VALUES ('430111', '雨花区', '430100');
INSERT INTO `yershop_area` VALUES ('430121', '长沙县', '430100');
INSERT INTO `yershop_area` VALUES ('430122', '望城县', '430100');
INSERT INTO `yershop_area` VALUES ('430124', '宁乡县', '430100');
INSERT INTO `yershop_area` VALUES ('430181', '浏阳市', '430100');
INSERT INTO `yershop_area` VALUES ('430201', '市辖区', '430200');
INSERT INTO `yershop_area` VALUES ('430202', '荷塘区', '430200');
INSERT INTO `yershop_area` VALUES ('430203', '芦淞区', '430200');
INSERT INTO `yershop_area` VALUES ('430204', '石峰区', '430200');
INSERT INTO `yershop_area` VALUES ('430211', '天元区', '430200');
INSERT INTO `yershop_area` VALUES ('430221', '株洲县', '430200');
INSERT INTO `yershop_area` VALUES ('430223', '攸　县', '430200');
INSERT INTO `yershop_area` VALUES ('430224', '茶陵县', '430200');
INSERT INTO `yershop_area` VALUES ('430225', '炎陵县', '430200');
INSERT INTO `yershop_area` VALUES ('430281', '醴陵市', '430200');
INSERT INTO `yershop_area` VALUES ('430301', '市辖区', '430300');
INSERT INTO `yershop_area` VALUES ('430302', '雨湖区', '430300');
INSERT INTO `yershop_area` VALUES ('430304', '岳塘区', '430300');
INSERT INTO `yershop_area` VALUES ('430321', '湘潭县', '430300');
INSERT INTO `yershop_area` VALUES ('430381', '湘乡市', '430300');
INSERT INTO `yershop_area` VALUES ('430382', '韶山市', '430300');
INSERT INTO `yershop_area` VALUES ('430401', '市辖区', '430400');
INSERT INTO `yershop_area` VALUES ('430405', '珠晖区', '430400');
INSERT INTO `yershop_area` VALUES ('430406', '雁峰区', '430400');
INSERT INTO `yershop_area` VALUES ('430407', '石鼓区', '430400');
INSERT INTO `yershop_area` VALUES ('430408', '蒸湘区', '430400');
INSERT INTO `yershop_area` VALUES ('430412', '南岳区', '430400');
INSERT INTO `yershop_area` VALUES ('430421', '衡阳县', '430400');
INSERT INTO `yershop_area` VALUES ('430422', '衡南县', '430400');
INSERT INTO `yershop_area` VALUES ('430423', '衡山县', '430400');
INSERT INTO `yershop_area` VALUES ('430424', '衡东县', '430400');
INSERT INTO `yershop_area` VALUES ('430426', '祁东县', '430400');
INSERT INTO `yershop_area` VALUES ('430481', '耒阳市', '430400');
INSERT INTO `yershop_area` VALUES ('430482', '常宁市', '430400');
INSERT INTO `yershop_area` VALUES ('430501', '市辖区', '430500');
INSERT INTO `yershop_area` VALUES ('430502', '双清区', '430500');
INSERT INTO `yershop_area` VALUES ('430503', '大祥区', '430500');
INSERT INTO `yershop_area` VALUES ('430511', '北塔区', '430500');
INSERT INTO `yershop_area` VALUES ('430521', '邵东县', '430500');
INSERT INTO `yershop_area` VALUES ('430522', '新邵县', '430500');
INSERT INTO `yershop_area` VALUES ('430523', '邵阳县', '430500');
INSERT INTO `yershop_area` VALUES ('430524', '隆回县', '430500');
INSERT INTO `yershop_area` VALUES ('430525', '洞口县', '430500');
INSERT INTO `yershop_area` VALUES ('430527', '绥宁县', '430500');
INSERT INTO `yershop_area` VALUES ('430528', '新宁县', '430500');
INSERT INTO `yershop_area` VALUES ('430529', '城步苗族自治县', '430500');
INSERT INTO `yershop_area` VALUES ('430581', '武冈市', '430500');
INSERT INTO `yershop_area` VALUES ('430601', '市辖区', '430600');
INSERT INTO `yershop_area` VALUES ('430602', '岳阳楼区', '430600');
INSERT INTO `yershop_area` VALUES ('430603', '云溪区', '430600');
INSERT INTO `yershop_area` VALUES ('430611', '君山区', '430600');
INSERT INTO `yershop_area` VALUES ('430621', '岳阳县', '430600');
INSERT INTO `yershop_area` VALUES ('430623', '华容县', '430600');
INSERT INTO `yershop_area` VALUES ('430624', '湘阴县', '430600');
INSERT INTO `yershop_area` VALUES ('430626', '平江县', '430600');
INSERT INTO `yershop_area` VALUES ('430681', '汨罗市', '430600');
INSERT INTO `yershop_area` VALUES ('430682', '临湘市', '430600');
INSERT INTO `yershop_area` VALUES ('430701', '市辖区', '430700');
INSERT INTO `yershop_area` VALUES ('430702', '武陵区', '430700');
INSERT INTO `yershop_area` VALUES ('430703', '鼎城区', '430700');
INSERT INTO `yershop_area` VALUES ('430721', '安乡县', '430700');
INSERT INTO `yershop_area` VALUES ('430722', '汉寿县', '430700');
INSERT INTO `yershop_area` VALUES ('430723', '澧　县', '430700');
INSERT INTO `yershop_area` VALUES ('430724', '临澧县', '430700');
INSERT INTO `yershop_area` VALUES ('430725', '桃源县', '430700');
INSERT INTO `yershop_area` VALUES ('430726', '石门县', '430700');
INSERT INTO `yershop_area` VALUES ('430781', '津市市', '430700');
INSERT INTO `yershop_area` VALUES ('430801', '市辖区', '430800');
INSERT INTO `yershop_area` VALUES ('430802', '永定区', '430800');
INSERT INTO `yershop_area` VALUES ('430811', '武陵源区', '430800');
INSERT INTO `yershop_area` VALUES ('430821', '慈利县', '430800');
INSERT INTO `yershop_area` VALUES ('430822', '桑植县', '430800');
INSERT INTO `yershop_area` VALUES ('430901', '市辖区', '430900');
INSERT INTO `yershop_area` VALUES ('430902', '资阳区', '430900');
INSERT INTO `yershop_area` VALUES ('430903', '赫山区', '430900');
INSERT INTO `yershop_area` VALUES ('430921', '南　县', '430900');
INSERT INTO `yershop_area` VALUES ('430922', '桃江县', '430900');
INSERT INTO `yershop_area` VALUES ('430923', '安化县', '430900');
INSERT INTO `yershop_area` VALUES ('430981', '沅江市', '430900');
INSERT INTO `yershop_area` VALUES ('431001', '市辖区', '431000');
INSERT INTO `yershop_area` VALUES ('431002', '北湖区', '431000');
INSERT INTO `yershop_area` VALUES ('431003', '苏仙区', '431000');
INSERT INTO `yershop_area` VALUES ('431021', '桂阳县', '431000');
INSERT INTO `yershop_area` VALUES ('431022', '宜章县', '431000');
INSERT INTO `yershop_area` VALUES ('431023', '永兴县', '431000');
INSERT INTO `yershop_area` VALUES ('431024', '嘉禾县', '431000');
INSERT INTO `yershop_area` VALUES ('431025', '临武县', '431000');
INSERT INTO `yershop_area` VALUES ('431026', '汝城县', '431000');
INSERT INTO `yershop_area` VALUES ('431027', '桂东县', '431000');
INSERT INTO `yershop_area` VALUES ('431028', '安仁县', '431000');
INSERT INTO `yershop_area` VALUES ('431081', '资兴市', '431000');
INSERT INTO `yershop_area` VALUES ('431101', '市辖区', '431100');
INSERT INTO `yershop_area` VALUES ('431102', '芝山区', '431100');
INSERT INTO `yershop_area` VALUES ('431103', '冷水滩区', '431100');
INSERT INTO `yershop_area` VALUES ('431121', '祁阳县', '431100');
INSERT INTO `yershop_area` VALUES ('431122', '东安县', '431100');
INSERT INTO `yershop_area` VALUES ('431123', '双牌县', '431100');
INSERT INTO `yershop_area` VALUES ('431124', '道　县', '431100');
INSERT INTO `yershop_area` VALUES ('431125', '江永县', '431100');
INSERT INTO `yershop_area` VALUES ('431126', '宁远县', '431100');
INSERT INTO `yershop_area` VALUES ('431127', '蓝山县', '431100');
INSERT INTO `yershop_area` VALUES ('431128', '新田县', '431100');
INSERT INTO `yershop_area` VALUES ('431129', '江华瑶族自治县', '431100');
INSERT INTO `yershop_area` VALUES ('431201', '市辖区', '431200');
INSERT INTO `yershop_area` VALUES ('431202', '鹤城区', '431200');
INSERT INTO `yershop_area` VALUES ('431221', '中方县', '431200');
INSERT INTO `yershop_area` VALUES ('431222', '沅陵县', '431200');
INSERT INTO `yershop_area` VALUES ('431223', '辰溪县', '431200');
INSERT INTO `yershop_area` VALUES ('431224', '溆浦县', '431200');
INSERT INTO `yershop_area` VALUES ('431225', '会同县', '431200');
INSERT INTO `yershop_area` VALUES ('431226', '麻阳苗族自治县', '431200');
INSERT INTO `yershop_area` VALUES ('431227', '新晃侗族自治县', '431200');
INSERT INTO `yershop_area` VALUES ('431228', '芷江侗族自治县', '431200');
INSERT INTO `yershop_area` VALUES ('431229', '靖州苗族侗族自治县', '431200');
INSERT INTO `yershop_area` VALUES ('431230', '通道侗族自治县', '431200');
INSERT INTO `yershop_area` VALUES ('431281', '洪江市', '431200');
INSERT INTO `yershop_area` VALUES ('431301', '市辖区', '431300');
INSERT INTO `yershop_area` VALUES ('431302', '娄星区', '431300');
INSERT INTO `yershop_area` VALUES ('431321', '双峰县', '431300');
INSERT INTO `yershop_area` VALUES ('431322', '新化县', '431300');
INSERT INTO `yershop_area` VALUES ('431381', '冷水江市', '431300');
INSERT INTO `yershop_area` VALUES ('431382', '涟源市', '431300');
INSERT INTO `yershop_area` VALUES ('433101', '吉首市', '433100');
INSERT INTO `yershop_area` VALUES ('433122', '泸溪县', '433100');
INSERT INTO `yershop_area` VALUES ('433123', '凤凰县', '433100');
INSERT INTO `yershop_area` VALUES ('433124', '花垣县', '433100');
INSERT INTO `yershop_area` VALUES ('433125', '保靖县', '433100');
INSERT INTO `yershop_area` VALUES ('433126', '古丈县', '433100');
INSERT INTO `yershop_area` VALUES ('433127', '永顺县', '433100');
INSERT INTO `yershop_area` VALUES ('433130', '龙山县', '433100');
INSERT INTO `yershop_area` VALUES ('440101', '市辖区', '440100');
INSERT INTO `yershop_area` VALUES ('440102', '东山区', '440100');
INSERT INTO `yershop_area` VALUES ('440103', '荔湾区', '440100');
INSERT INTO `yershop_area` VALUES ('440104', '越秀区', '440100');
INSERT INTO `yershop_area` VALUES ('440105', '海珠区', '440100');
INSERT INTO `yershop_area` VALUES ('440106', '天河区', '440100');
INSERT INTO `yershop_area` VALUES ('440107', '芳村区', '440100');
INSERT INTO `yershop_area` VALUES ('440111', '白云区', '440100');
INSERT INTO `yershop_area` VALUES ('440112', '黄埔区', '440100');
INSERT INTO `yershop_area` VALUES ('440113', '番禺区', '440100');
INSERT INTO `yershop_area` VALUES ('440114', '花都区', '440100');
INSERT INTO `yershop_area` VALUES ('440183', '增城市', '440100');
INSERT INTO `yershop_area` VALUES ('440184', '从化市', '440100');
INSERT INTO `yershop_area` VALUES ('440201', '市辖区', '440200');
INSERT INTO `yershop_area` VALUES ('440203', '武江区', '440200');
INSERT INTO `yershop_area` VALUES ('440204', '浈江区', '440200');
INSERT INTO `yershop_area` VALUES ('440205', '曲江区', '440200');
INSERT INTO `yershop_area` VALUES ('440222', '始兴县', '440200');
INSERT INTO `yershop_area` VALUES ('440224', '仁化县', '440200');
INSERT INTO `yershop_area` VALUES ('440229', '翁源县', '440200');
INSERT INTO `yershop_area` VALUES ('440232', '乳源瑶族自治县', '440200');
INSERT INTO `yershop_area` VALUES ('440233', '新丰县', '440200');
INSERT INTO `yershop_area` VALUES ('440281', '乐昌市', '440200');
INSERT INTO `yershop_area` VALUES ('440282', '南雄市', '440200');
INSERT INTO `yershop_area` VALUES ('440301', '市辖区', '440300');
INSERT INTO `yershop_area` VALUES ('440303', '罗湖区', '440300');
INSERT INTO `yershop_area` VALUES ('440304', '福田区', '440300');
INSERT INTO `yershop_area` VALUES ('440305', '南山区', '440300');
INSERT INTO `yershop_area` VALUES ('440306', '宝安区', '440300');
INSERT INTO `yershop_area` VALUES ('440307', '龙岗区', '440300');
INSERT INTO `yershop_area` VALUES ('440308', '盐田区', '440300');
INSERT INTO `yershop_area` VALUES ('440401', '市辖区', '440400');
INSERT INTO `yershop_area` VALUES ('440402', '香洲区', '440400');
INSERT INTO `yershop_area` VALUES ('440403', '斗门区', '440400');
INSERT INTO `yershop_area` VALUES ('440404', '金湾区', '440400');
INSERT INTO `yershop_area` VALUES ('440501', '市辖区', '440500');
INSERT INTO `yershop_area` VALUES ('440507', '龙湖区', '440500');
INSERT INTO `yershop_area` VALUES ('440511', '金平区', '440500');
INSERT INTO `yershop_area` VALUES ('440512', '濠江区', '440500');
INSERT INTO `yershop_area` VALUES ('440513', '潮阳区', '440500');
INSERT INTO `yershop_area` VALUES ('440514', '潮南区', '440500');
INSERT INTO `yershop_area` VALUES ('440515', '澄海区', '440500');
INSERT INTO `yershop_area` VALUES ('440523', '南澳县', '440500');
INSERT INTO `yershop_area` VALUES ('440601', '市辖区', '440600');
INSERT INTO `yershop_area` VALUES ('440604', '禅城区', '440600');
INSERT INTO `yershop_area` VALUES ('440605', '南海区', '440600');
INSERT INTO `yershop_area` VALUES ('440606', '顺德区', '440600');
INSERT INTO `yershop_area` VALUES ('440607', '三水区', '440600');
INSERT INTO `yershop_area` VALUES ('440608', '高明区', '440600');
INSERT INTO `yershop_area` VALUES ('440701', '市辖区', '440700');
INSERT INTO `yershop_area` VALUES ('440703', '蓬江区', '440700');
INSERT INTO `yershop_area` VALUES ('440704', '江海区', '440700');
INSERT INTO `yershop_area` VALUES ('440705', '新会区', '440700');
INSERT INTO `yershop_area` VALUES ('440781', '台山市', '440700');
INSERT INTO `yershop_area` VALUES ('440783', '开平市', '440700');
INSERT INTO `yershop_area` VALUES ('440784', '鹤山市', '440700');
INSERT INTO `yershop_area` VALUES ('440785', '恩平市', '440700');
INSERT INTO `yershop_area` VALUES ('440801', '市辖区', '440800');
INSERT INTO `yershop_area` VALUES ('440802', '赤坎区', '440800');
INSERT INTO `yershop_area` VALUES ('440803', '霞山区', '440800');
INSERT INTO `yershop_area` VALUES ('440804', '坡头区', '440800');
INSERT INTO `yershop_area` VALUES ('440811', '麻章区', '440800');
INSERT INTO `yershop_area` VALUES ('440823', '遂溪县', '440800');
INSERT INTO `yershop_area` VALUES ('440825', '徐闻县', '440800');
INSERT INTO `yershop_area` VALUES ('440881', '廉江市', '440800');
INSERT INTO `yershop_area` VALUES ('440882', '雷州市', '440800');
INSERT INTO `yershop_area` VALUES ('440883', '吴川市', '440800');
INSERT INTO `yershop_area` VALUES ('440901', '市辖区', '440900');
INSERT INTO `yershop_area` VALUES ('440902', '茂南区', '440900');
INSERT INTO `yershop_area` VALUES ('440903', '茂港区', '440900');
INSERT INTO `yershop_area` VALUES ('440923', '电白县', '440900');
INSERT INTO `yershop_area` VALUES ('440981', '高州市', '440900');
INSERT INTO `yershop_area` VALUES ('440982', '化州市', '440900');
INSERT INTO `yershop_area` VALUES ('440983', '信宜市', '440900');
INSERT INTO `yershop_area` VALUES ('441201', '市辖区', '441200');
INSERT INTO `yershop_area` VALUES ('441202', '端州区', '441200');
INSERT INTO `yershop_area` VALUES ('441203', '鼎湖区', '441200');
INSERT INTO `yershop_area` VALUES ('441223', '广宁县', '441200');
INSERT INTO `yershop_area` VALUES ('441224', '怀集县', '441200');
INSERT INTO `yershop_area` VALUES ('441225', '封开县', '441200');
INSERT INTO `yershop_area` VALUES ('441226', '德庆县', '441200');
INSERT INTO `yershop_area` VALUES ('441283', '高要市', '441200');
INSERT INTO `yershop_area` VALUES ('441284', '四会市', '441200');
INSERT INTO `yershop_area` VALUES ('441301', '市辖区', '441300');
INSERT INTO `yershop_area` VALUES ('441302', '惠城区', '441300');
INSERT INTO `yershop_area` VALUES ('441303', '惠阳区', '441300');
INSERT INTO `yershop_area` VALUES ('441322', '博罗县', '441300');
INSERT INTO `yershop_area` VALUES ('441323', '惠东县', '441300');
INSERT INTO `yershop_area` VALUES ('441324', '龙门县', '441300');
INSERT INTO `yershop_area` VALUES ('441401', '市辖区', '441400');
INSERT INTO `yershop_area` VALUES ('441402', '梅江区', '441400');
INSERT INTO `yershop_area` VALUES ('441421', '梅　县', '441400');
INSERT INTO `yershop_area` VALUES ('441422', '大埔县', '441400');
INSERT INTO `yershop_area` VALUES ('441423', '丰顺县', '441400');
INSERT INTO `yershop_area` VALUES ('441424', '五华县', '441400');
INSERT INTO `yershop_area` VALUES ('441426', '平远县', '441400');
INSERT INTO `yershop_area` VALUES ('441427', '蕉岭县', '441400');
INSERT INTO `yershop_area` VALUES ('441481', '兴宁市', '441400');
INSERT INTO `yershop_area` VALUES ('441501', '市辖区', '441500');
INSERT INTO `yershop_area` VALUES ('441502', '城　区', '441500');
INSERT INTO `yershop_area` VALUES ('441521', '海丰县', '441500');
INSERT INTO `yershop_area` VALUES ('441523', '陆河县', '441500');
INSERT INTO `yershop_area` VALUES ('441581', '陆丰市', '441500');
INSERT INTO `yershop_area` VALUES ('441601', '市辖区', '441600');
INSERT INTO `yershop_area` VALUES ('441602', '源城区', '441600');
INSERT INTO `yershop_area` VALUES ('441621', '紫金县', '441600');
INSERT INTO `yershop_area` VALUES ('441622', '龙川县', '441600');
INSERT INTO `yershop_area` VALUES ('441623', '连平县', '441600');
INSERT INTO `yershop_area` VALUES ('441624', '和平县', '441600');
INSERT INTO `yershop_area` VALUES ('441625', '东源县', '441600');
INSERT INTO `yershop_area` VALUES ('441701', '市辖区', '441700');
INSERT INTO `yershop_area` VALUES ('441702', '江城区', '441700');
INSERT INTO `yershop_area` VALUES ('441721', '阳西县', '441700');
INSERT INTO `yershop_area` VALUES ('441723', '阳东县', '441700');
INSERT INTO `yershop_area` VALUES ('441781', '阳春市', '441700');
INSERT INTO `yershop_area` VALUES ('441801', '市辖区', '441800');
INSERT INTO `yershop_area` VALUES ('441802', '清城区', '441800');
INSERT INTO `yershop_area` VALUES ('441821', '佛冈县', '441800');
INSERT INTO `yershop_area` VALUES ('441823', '阳山县', '441800');
INSERT INTO `yershop_area` VALUES ('441825', '连山壮族瑶族自治县', '441800');
INSERT INTO `yershop_area` VALUES ('441826', '连南瑶族自治县', '441800');
INSERT INTO `yershop_area` VALUES ('441827', '清新县', '441800');
INSERT INTO `yershop_area` VALUES ('441881', '英德市', '441800');
INSERT INTO `yershop_area` VALUES ('441882', '连州市', '441800');
INSERT INTO `yershop_area` VALUES ('445101', '市辖区', '445100');
INSERT INTO `yershop_area` VALUES ('445102', '湘桥区', '445100');
INSERT INTO `yershop_area` VALUES ('445121', '潮安县', '445100');
INSERT INTO `yershop_area` VALUES ('445122', '饶平县', '445100');
INSERT INTO `yershop_area` VALUES ('445201', '市辖区', '445200');
INSERT INTO `yershop_area` VALUES ('445202', '榕城区', '445200');
INSERT INTO `yershop_area` VALUES ('445221', '揭东县', '445200');
INSERT INTO `yershop_area` VALUES ('445222', '揭西县', '445200');
INSERT INTO `yershop_area` VALUES ('445224', '惠来县', '445200');
INSERT INTO `yershop_area` VALUES ('445281', '普宁市', '445200');
INSERT INTO `yershop_area` VALUES ('445301', '市辖区', '445300');
INSERT INTO `yershop_area` VALUES ('445302', '云城区', '445300');
INSERT INTO `yershop_area` VALUES ('445321', '新兴县', '445300');
INSERT INTO `yershop_area` VALUES ('445322', '郁南县', '445300');
INSERT INTO `yershop_area` VALUES ('445323', '云安县', '445300');
INSERT INTO `yershop_area` VALUES ('445381', '罗定市', '445300');
INSERT INTO `yershop_area` VALUES ('450101', '市辖区', '450100');
INSERT INTO `yershop_area` VALUES ('450102', '兴宁区', '450100');
INSERT INTO `yershop_area` VALUES ('450103', '青秀区', '450100');
INSERT INTO `yershop_area` VALUES ('450105', '江南区', '450100');
INSERT INTO `yershop_area` VALUES ('450107', '西乡塘区', '450100');
INSERT INTO `yershop_area` VALUES ('450108', '良庆区', '450100');
INSERT INTO `yershop_area` VALUES ('450109', '邕宁区', '450100');
INSERT INTO `yershop_area` VALUES ('450122', '武鸣县', '450100');
INSERT INTO `yershop_area` VALUES ('450123', '隆安县', '450100');
INSERT INTO `yershop_area` VALUES ('450124', '马山县', '450100');
INSERT INTO `yershop_area` VALUES ('450125', '上林县', '450100');
INSERT INTO `yershop_area` VALUES ('450126', '宾阳县', '450100');
INSERT INTO `yershop_area` VALUES ('450127', '横　县', '450100');
INSERT INTO `yershop_area` VALUES ('450201', '市辖区', '450200');
INSERT INTO `yershop_area` VALUES ('450202', '城中区', '450200');
INSERT INTO `yershop_area` VALUES ('450203', '鱼峰区', '450200');
INSERT INTO `yershop_area` VALUES ('450204', '柳南区', '450200');
INSERT INTO `yershop_area` VALUES ('450205', '柳北区', '450200');
INSERT INTO `yershop_area` VALUES ('450221', '柳江县', '450200');
INSERT INTO `yershop_area` VALUES ('450222', '柳城县', '450200');
INSERT INTO `yershop_area` VALUES ('450223', '鹿寨县', '450200');
INSERT INTO `yershop_area` VALUES ('450224', '融安县', '450200');
INSERT INTO `yershop_area` VALUES ('450225', '融水苗族自治县', '450200');
INSERT INTO `yershop_area` VALUES ('450226', '三江侗族自治县', '450200');
INSERT INTO `yershop_area` VALUES ('450301', '市辖区', '450300');
INSERT INTO `yershop_area` VALUES ('450302', '秀峰区', '450300');
INSERT INTO `yershop_area` VALUES ('450303', '叠彩区', '450300');
INSERT INTO `yershop_area` VALUES ('450304', '象山区', '450300');
INSERT INTO `yershop_area` VALUES ('450305', '七星区', '450300');
INSERT INTO `yershop_area` VALUES ('450311', '雁山区', '450300');
INSERT INTO `yershop_area` VALUES ('450321', '阳朔县', '450300');
INSERT INTO `yershop_area` VALUES ('450322', '临桂县', '450300');
INSERT INTO `yershop_area` VALUES ('450323', '灵川县', '450300');
INSERT INTO `yershop_area` VALUES ('450324', '全州县', '450300');
INSERT INTO `yershop_area` VALUES ('450325', '兴安县', '450300');
INSERT INTO `yershop_area` VALUES ('450326', '永福县', '450300');
INSERT INTO `yershop_area` VALUES ('450327', '灌阳县', '450300');
INSERT INTO `yershop_area` VALUES ('450328', '龙胜各族自治县', '450300');
INSERT INTO `yershop_area` VALUES ('450329', '资源县', '450300');
INSERT INTO `yershop_area` VALUES ('450330', '平乐县', '450300');
INSERT INTO `yershop_area` VALUES ('450331', '荔蒲县', '450300');
INSERT INTO `yershop_area` VALUES ('450332', '恭城瑶族自治县', '450300');
INSERT INTO `yershop_area` VALUES ('450401', '市辖区', '450400');
INSERT INTO `yershop_area` VALUES ('450403', '万秀区', '450400');
INSERT INTO `yershop_area` VALUES ('450404', '蝶山区', '450400');
INSERT INTO `yershop_area` VALUES ('450405', '长洲区', '450400');
INSERT INTO `yershop_area` VALUES ('450421', '苍梧县', '450400');
INSERT INTO `yershop_area` VALUES ('450422', '藤　县', '450400');
INSERT INTO `yershop_area` VALUES ('450423', '蒙山县', '450400');
INSERT INTO `yershop_area` VALUES ('450481', '岑溪市', '450400');
INSERT INTO `yershop_area` VALUES ('450501', '市辖区', '450500');
INSERT INTO `yershop_area` VALUES ('450502', '海城区', '450500');
INSERT INTO `yershop_area` VALUES ('450503', '银海区', '450500');
INSERT INTO `yershop_area` VALUES ('450512', '铁山港区', '450500');
INSERT INTO `yershop_area` VALUES ('450521', '合浦县', '450500');
INSERT INTO `yershop_area` VALUES ('450601', '市辖区', '450600');
INSERT INTO `yershop_area` VALUES ('450602', '港口区', '450600');
INSERT INTO `yershop_area` VALUES ('450603', '防城区', '450600');
INSERT INTO `yershop_area` VALUES ('450621', '上思县', '450600');
INSERT INTO `yershop_area` VALUES ('450681', '东兴市', '450600');
INSERT INTO `yershop_area` VALUES ('450701', '市辖区', '450700');
INSERT INTO `yershop_area` VALUES ('450702', '钦南区', '450700');
INSERT INTO `yershop_area` VALUES ('450703', '钦北区', '450700');
INSERT INTO `yershop_area` VALUES ('450721', '灵山县', '450700');
INSERT INTO `yershop_area` VALUES ('450722', '浦北县', '450700');
INSERT INTO `yershop_area` VALUES ('450801', '市辖区', '450800');
INSERT INTO `yershop_area` VALUES ('450802', '港北区', '450800');
INSERT INTO `yershop_area` VALUES ('450803', '港南区', '450800');
INSERT INTO `yershop_area` VALUES ('450804', '覃塘区', '450800');
INSERT INTO `yershop_area` VALUES ('450821', '平南县', '450800');
INSERT INTO `yershop_area` VALUES ('450881', '桂平市', '450800');
INSERT INTO `yershop_area` VALUES ('450901', '市辖区', '450900');
INSERT INTO `yershop_area` VALUES ('450902', '玉州区', '450900');
INSERT INTO `yershop_area` VALUES ('450921', '容　县', '450900');
INSERT INTO `yershop_area` VALUES ('450922', '陆川县', '450900');
INSERT INTO `yershop_area` VALUES ('450923', '博白县', '450900');
INSERT INTO `yershop_area` VALUES ('450924', '兴业县', '450900');
INSERT INTO `yershop_area` VALUES ('450981', '北流市', '450900');
INSERT INTO `yershop_area` VALUES ('451001', '市辖区', '451000');
INSERT INTO `yershop_area` VALUES ('451002', '右江区', '451000');
INSERT INTO `yershop_area` VALUES ('451021', '田阳县', '451000');
INSERT INTO `yershop_area` VALUES ('451022', '田东县', '451000');
INSERT INTO `yershop_area` VALUES ('451023', '平果县', '451000');
INSERT INTO `yershop_area` VALUES ('451024', '德保县', '451000');
INSERT INTO `yershop_area` VALUES ('451025', '靖西县', '451000');
INSERT INTO `yershop_area` VALUES ('451026', '那坡县', '451000');
INSERT INTO `yershop_area` VALUES ('451027', '凌云县', '451000');
INSERT INTO `yershop_area` VALUES ('451028', '乐业县', '451000');
INSERT INTO `yershop_area` VALUES ('451029', '田林县', '451000');
INSERT INTO `yershop_area` VALUES ('451030', '西林县', '451000');
INSERT INTO `yershop_area` VALUES ('451031', '隆林各族自治县', '451000');
INSERT INTO `yershop_area` VALUES ('451101', '市辖区', '451100');
INSERT INTO `yershop_area` VALUES ('451102', '八步区', '451100');
INSERT INTO `yershop_area` VALUES ('451121', '昭平县', '451100');
INSERT INTO `yershop_area` VALUES ('451122', '钟山县', '451100');
INSERT INTO `yershop_area` VALUES ('451123', '富川瑶族自治县', '451100');
INSERT INTO `yershop_area` VALUES ('451201', '市辖区', '451200');
INSERT INTO `yershop_area` VALUES ('451202', '金城江区', '451200');
INSERT INTO `yershop_area` VALUES ('451221', '南丹县', '451200');
INSERT INTO `yershop_area` VALUES ('451222', '天峨县', '451200');
INSERT INTO `yershop_area` VALUES ('451223', '凤山县', '451200');
INSERT INTO `yershop_area` VALUES ('451224', '东兰县', '451200');
INSERT INTO `yershop_area` VALUES ('451225', '罗城仫佬族自治县', '451200');
INSERT INTO `yershop_area` VALUES ('451226', '环江毛南族自治县', '451200');
INSERT INTO `yershop_area` VALUES ('451227', '巴马瑶族自治县', '451200');
INSERT INTO `yershop_area` VALUES ('451228', '都安瑶族自治县', '451200');
INSERT INTO `yershop_area` VALUES ('451229', '大化瑶族自治县', '451200');
INSERT INTO `yershop_area` VALUES ('451281', '宜州市', '451200');
INSERT INTO `yershop_area` VALUES ('451301', '市辖区', '451300');
INSERT INTO `yershop_area` VALUES ('451302', '兴宾区', '451300');
INSERT INTO `yershop_area` VALUES ('451321', '忻城县', '451300');
INSERT INTO `yershop_area` VALUES ('451322', '象州县', '451300');
INSERT INTO `yershop_area` VALUES ('451323', '武宣县', '451300');
INSERT INTO `yershop_area` VALUES ('451324', '金秀瑶族自治县', '451300');
INSERT INTO `yershop_area` VALUES ('451381', '合山市', '451300');
INSERT INTO `yershop_area` VALUES ('451401', '市辖区', '451400');
INSERT INTO `yershop_area` VALUES ('451402', '江洲区', '451400');
INSERT INTO `yershop_area` VALUES ('451421', '扶绥县', '451400');
INSERT INTO `yershop_area` VALUES ('451422', '宁明县', '451400');
INSERT INTO `yershop_area` VALUES ('451423', '龙州县', '451400');
INSERT INTO `yershop_area` VALUES ('451424', '大新县', '451400');
INSERT INTO `yershop_area` VALUES ('451425', '天等县', '451400');
INSERT INTO `yershop_area` VALUES ('451481', '凭祥市', '451400');
INSERT INTO `yershop_area` VALUES ('460101', '市辖区', '460100');
INSERT INTO `yershop_area` VALUES ('460105', '秀英区', '460100');
INSERT INTO `yershop_area` VALUES ('460106', '龙华区', '460100');
INSERT INTO `yershop_area` VALUES ('460107', '琼山区', '460100');
INSERT INTO `yershop_area` VALUES ('460108', '美兰区', '460100');
INSERT INTO `yershop_area` VALUES ('460201', '市辖区', '460200');
INSERT INTO `yershop_area` VALUES ('469001', '五指山市', '469000');
INSERT INTO `yershop_area` VALUES ('469002', '琼海市', '469000');
INSERT INTO `yershop_area` VALUES ('469003', '儋州市', '469000');
INSERT INTO `yershop_area` VALUES ('469005', '文昌市', '469000');
INSERT INTO `yershop_area` VALUES ('469006', '万宁市', '469000');
INSERT INTO `yershop_area` VALUES ('469007', '东方市', '469000');
INSERT INTO `yershop_area` VALUES ('469025', '定安县', '469000');
INSERT INTO `yershop_area` VALUES ('469026', '屯昌县', '469000');
INSERT INTO `yershop_area` VALUES ('469027', '澄迈县', '469000');
INSERT INTO `yershop_area` VALUES ('469028', '临高县', '469000');
INSERT INTO `yershop_area` VALUES ('469030', '白沙黎族自治县', '469000');
INSERT INTO `yershop_area` VALUES ('469031', '昌江黎族自治县', '469000');
INSERT INTO `yershop_area` VALUES ('469033', '乐东黎族自治县', '469000');
INSERT INTO `yershop_area` VALUES ('469034', '陵水黎族自治县', '469000');
INSERT INTO `yershop_area` VALUES ('469035', '保亭黎族苗族自治县', '469000');
INSERT INTO `yershop_area` VALUES ('469036', '琼中黎族苗族自治县', '469000');
INSERT INTO `yershop_area` VALUES ('469037', '西沙群岛', '469000');
INSERT INTO `yershop_area` VALUES ('469038', '南沙群岛', '469000');
INSERT INTO `yershop_area` VALUES ('469039', '中沙群岛的岛礁及其海域', '469000');
INSERT INTO `yershop_area` VALUES ('500101', '万州区', '500100');
INSERT INTO `yershop_area` VALUES ('500102', '涪陵区', '500100');
INSERT INTO `yershop_area` VALUES ('500103', '渝中区', '500100');
INSERT INTO `yershop_area` VALUES ('500104', '大渡口区', '500100');
INSERT INTO `yershop_area` VALUES ('500105', '江北区', '500100');
INSERT INTO `yershop_area` VALUES ('500106', '沙坪坝区', '500100');
INSERT INTO `yershop_area` VALUES ('500107', '九龙坡区', '500100');
INSERT INTO `yershop_area` VALUES ('500108', '南岸区', '500100');
INSERT INTO `yershop_area` VALUES ('500109', '北碚区', '500100');
INSERT INTO `yershop_area` VALUES ('500110', '万盛区', '500100');
INSERT INTO `yershop_area` VALUES ('500111', '双桥区', '500100');
INSERT INTO `yershop_area` VALUES ('500112', '渝北区', '500100');
INSERT INTO `yershop_area` VALUES ('500113', '巴南区', '500100');
INSERT INTO `yershop_area` VALUES ('500114', '黔江区', '500100');
INSERT INTO `yershop_area` VALUES ('500115', '长寿区', '500100');
INSERT INTO `yershop_area` VALUES ('500222', '綦江县', '500200');
INSERT INTO `yershop_area` VALUES ('500223', '潼南县', '500200');
INSERT INTO `yershop_area` VALUES ('500224', '铜梁县', '500200');
INSERT INTO `yershop_area` VALUES ('500225', '大足县', '500200');
INSERT INTO `yershop_area` VALUES ('500226', '荣昌县', '500200');
INSERT INTO `yershop_area` VALUES ('500227', '璧山县', '500200');
INSERT INTO `yershop_area` VALUES ('500228', '梁平县', '500200');
INSERT INTO `yershop_area` VALUES ('500229', '城口县', '500200');
INSERT INTO `yershop_area` VALUES ('500230', '丰都县', '500200');
INSERT INTO `yershop_area` VALUES ('500231', '垫江县', '500200');
INSERT INTO `yershop_area` VALUES ('500232', '武隆县', '500200');
INSERT INTO `yershop_area` VALUES ('500233', '忠　县', '500200');
INSERT INTO `yershop_area` VALUES ('500234', '开　县', '500200');
INSERT INTO `yershop_area` VALUES ('500235', '云阳县', '500200');
INSERT INTO `yershop_area` VALUES ('500236', '奉节县', '500200');
INSERT INTO `yershop_area` VALUES ('500237', '巫山县', '500200');
INSERT INTO `yershop_area` VALUES ('500238', '巫溪县', '500200');
INSERT INTO `yershop_area` VALUES ('500240', '石柱土家族自治县', '500200');
INSERT INTO `yershop_area` VALUES ('500241', '秀山土家族苗族自治县', '500200');
INSERT INTO `yershop_area` VALUES ('500242', '酉阳土家族苗族自治县', '500200');
INSERT INTO `yershop_area` VALUES ('500243', '彭水苗族土家族自治县', '500200');
INSERT INTO `yershop_area` VALUES ('500381', '江津市', '500300');
INSERT INTO `yershop_area` VALUES ('500382', '合川市', '500300');
INSERT INTO `yershop_area` VALUES ('500383', '永川市', '500300');
INSERT INTO `yershop_area` VALUES ('500384', '南川市', '500300');
INSERT INTO `yershop_area` VALUES ('510101', '市辖区', '510100');
INSERT INTO `yershop_area` VALUES ('510104', '锦江区', '510100');
INSERT INTO `yershop_area` VALUES ('510105', '青羊区', '510100');
INSERT INTO `yershop_area` VALUES ('510106', '金牛区', '510100');
INSERT INTO `yershop_area` VALUES ('510107', '武侯区', '510100');
INSERT INTO `yershop_area` VALUES ('510108', '成华区', '510100');
INSERT INTO `yershop_area` VALUES ('510112', '龙泉驿区', '510100');
INSERT INTO `yershop_area` VALUES ('510113', '青白江区', '510100');
INSERT INTO `yershop_area` VALUES ('510114', '新都区', '510100');
INSERT INTO `yershop_area` VALUES ('510115', '温江区', '510100');
INSERT INTO `yershop_area` VALUES ('510121', '金堂县', '510100');
INSERT INTO `yershop_area` VALUES ('510122', '双流县', '510100');
INSERT INTO `yershop_area` VALUES ('510124', '郫　县', '510100');
INSERT INTO `yershop_area` VALUES ('510129', '大邑县', '510100');
INSERT INTO `yershop_area` VALUES ('510131', '蒲江县', '510100');
INSERT INTO `yershop_area` VALUES ('510132', '新津县', '510100');
INSERT INTO `yershop_area` VALUES ('510181', '都江堰市', '510100');
INSERT INTO `yershop_area` VALUES ('510182', '彭州市', '510100');
INSERT INTO `yershop_area` VALUES ('510183', '邛崃市', '510100');
INSERT INTO `yershop_area` VALUES ('510184', '崇州市', '510100');
INSERT INTO `yershop_area` VALUES ('510301', '市辖区', '510300');
INSERT INTO `yershop_area` VALUES ('510302', '自流井区', '510300');
INSERT INTO `yershop_area` VALUES ('510303', '贡井区', '510300');
INSERT INTO `yershop_area` VALUES ('510304', '大安区', '510300');
INSERT INTO `yershop_area` VALUES ('510311', '沿滩区', '510300');
INSERT INTO `yershop_area` VALUES ('510321', '荣　县', '510300');
INSERT INTO `yershop_area` VALUES ('510322', '富顺县', '510300');
INSERT INTO `yershop_area` VALUES ('510401', '市辖区', '510400');
INSERT INTO `yershop_area` VALUES ('510402', '东　区', '510400');
INSERT INTO `yershop_area` VALUES ('510403', '西　区', '510400');
INSERT INTO `yershop_area` VALUES ('510411', '仁和区', '510400');
INSERT INTO `yershop_area` VALUES ('510421', '米易县', '510400');
INSERT INTO `yershop_area` VALUES ('510422', '盐边县', '510400');
INSERT INTO `yershop_area` VALUES ('510501', '市辖区', '510500');
INSERT INTO `yershop_area` VALUES ('510502', '江阳区', '510500');
INSERT INTO `yershop_area` VALUES ('510503', '纳溪区', '510500');
INSERT INTO `yershop_area` VALUES ('510504', '龙马潭区', '510500');
INSERT INTO `yershop_area` VALUES ('510521', '泸　县', '510500');
INSERT INTO `yershop_area` VALUES ('510522', '合江县', '510500');
INSERT INTO `yershop_area` VALUES ('510524', '叙永县', '510500');
INSERT INTO `yershop_area` VALUES ('510525', '古蔺县', '510500');
INSERT INTO `yershop_area` VALUES ('510601', '市辖区', '510600');
INSERT INTO `yershop_area` VALUES ('510603', '旌阳区', '510600');
INSERT INTO `yershop_area` VALUES ('510623', '中江县', '510600');
INSERT INTO `yershop_area` VALUES ('510626', '罗江县', '510600');
INSERT INTO `yershop_area` VALUES ('510681', '广汉市', '510600');
INSERT INTO `yershop_area` VALUES ('510682', '什邡市', '510600');
INSERT INTO `yershop_area` VALUES ('510683', '绵竹市', '510600');
INSERT INTO `yershop_area` VALUES ('510701', '市辖区', '510700');
INSERT INTO `yershop_area` VALUES ('510703', '涪城区', '510700');
INSERT INTO `yershop_area` VALUES ('510704', '游仙区', '510700');
INSERT INTO `yershop_area` VALUES ('510722', '三台县', '510700');
INSERT INTO `yershop_area` VALUES ('510723', '盐亭县', '510700');
INSERT INTO `yershop_area` VALUES ('510724', '安　县', '510700');
INSERT INTO `yershop_area` VALUES ('510725', '梓潼县', '510700');
INSERT INTO `yershop_area` VALUES ('510726', '北川羌族自治县', '510700');
INSERT INTO `yershop_area` VALUES ('510727', '平武县', '510700');
INSERT INTO `yershop_area` VALUES ('510781', '江油市', '510700');
INSERT INTO `yershop_area` VALUES ('510801', '市辖区', '510800');
INSERT INTO `yershop_area` VALUES ('510802', '市中区', '510800');
INSERT INTO `yershop_area` VALUES ('510811', '元坝区', '510800');
INSERT INTO `yershop_area` VALUES ('510812', '朝天区', '510800');
INSERT INTO `yershop_area` VALUES ('510821', '旺苍县', '510800');
INSERT INTO `yershop_area` VALUES ('510822', '青川县', '510800');
INSERT INTO `yershop_area` VALUES ('510823', '剑阁县', '510800');
INSERT INTO `yershop_area` VALUES ('510824', '苍溪县', '510800');
INSERT INTO `yershop_area` VALUES ('510901', '市辖区', '510900');
INSERT INTO `yershop_area` VALUES ('510903', '船山区', '510900');
INSERT INTO `yershop_area` VALUES ('510904', '安居区', '510900');
INSERT INTO `yershop_area` VALUES ('510921', '蓬溪县', '510900');
INSERT INTO `yershop_area` VALUES ('510922', '射洪县', '510900');
INSERT INTO `yershop_area` VALUES ('510923', '大英县', '510900');
INSERT INTO `yershop_area` VALUES ('511001', '市辖区', '511000');
INSERT INTO `yershop_area` VALUES ('511002', '市中区', '511000');
INSERT INTO `yershop_area` VALUES ('511011', '东兴区', '511000');
INSERT INTO `yershop_area` VALUES ('511024', '威远县', '511000');
INSERT INTO `yershop_area` VALUES ('511025', '资中县', '511000');
INSERT INTO `yershop_area` VALUES ('511028', '隆昌县', '511000');
INSERT INTO `yershop_area` VALUES ('511101', '市辖区', '511100');
INSERT INTO `yershop_area` VALUES ('511102', '市中区', '511100');
INSERT INTO `yershop_area` VALUES ('511111', '沙湾区', '511100');
INSERT INTO `yershop_area` VALUES ('511112', '五通桥区', '511100');
INSERT INTO `yershop_area` VALUES ('511113', '金口河区', '511100');
INSERT INTO `yershop_area` VALUES ('511123', '犍为县', '511100');
INSERT INTO `yershop_area` VALUES ('511124', '井研县', '511100');
INSERT INTO `yershop_area` VALUES ('511126', '夹江县', '511100');
INSERT INTO `yershop_area` VALUES ('511129', '沐川县', '511100');
INSERT INTO `yershop_area` VALUES ('511132', '峨边彝族自治县', '511100');
INSERT INTO `yershop_area` VALUES ('511133', '马边彝族自治县', '511100');
INSERT INTO `yershop_area` VALUES ('511181', '峨眉山市', '511100');
INSERT INTO `yershop_area` VALUES ('511301', '市辖区', '511300');
INSERT INTO `yershop_area` VALUES ('511302', '顺庆区', '511300');
INSERT INTO `yershop_area` VALUES ('511303', '高坪区', '511300');
INSERT INTO `yershop_area` VALUES ('511304', '嘉陵区', '511300');
INSERT INTO `yershop_area` VALUES ('511321', '南部县', '511300');
INSERT INTO `yershop_area` VALUES ('511322', '营山县', '511300');
INSERT INTO `yershop_area` VALUES ('511323', '蓬安县', '511300');
INSERT INTO `yershop_area` VALUES ('511324', '仪陇县', '511300');
INSERT INTO `yershop_area` VALUES ('511325', '西充县', '511300');
INSERT INTO `yershop_area` VALUES ('511381', '阆中市', '511300');
INSERT INTO `yershop_area` VALUES ('511401', '市辖区', '511400');
INSERT INTO `yershop_area` VALUES ('511402', '东坡区', '511400');
INSERT INTO `yershop_area` VALUES ('511421', '仁寿县', '511400');
INSERT INTO `yershop_area` VALUES ('511422', '彭山县', '511400');
INSERT INTO `yershop_area` VALUES ('511423', '洪雅县', '511400');
INSERT INTO `yershop_area` VALUES ('511424', '丹棱县', '511400');
INSERT INTO `yershop_area` VALUES ('511425', '青神县', '511400');
INSERT INTO `yershop_area` VALUES ('511501', '市辖区', '511500');
INSERT INTO `yershop_area` VALUES ('511502', '翠屏区', '511500');
INSERT INTO `yershop_area` VALUES ('511521', '宜宾县', '511500');
INSERT INTO `yershop_area` VALUES ('511522', '南溪县', '511500');
INSERT INTO `yershop_area` VALUES ('511523', '江安县', '511500');
INSERT INTO `yershop_area` VALUES ('511524', '长宁县', '511500');
INSERT INTO `yershop_area` VALUES ('511525', '高　县', '511500');
INSERT INTO `yershop_area` VALUES ('511526', '珙　县', '511500');
INSERT INTO `yershop_area` VALUES ('511527', '筠连县', '511500');
INSERT INTO `yershop_area` VALUES ('511528', '兴文县', '511500');
INSERT INTO `yershop_area` VALUES ('511529', '屏山县', '511500');
INSERT INTO `yershop_area` VALUES ('511601', '市辖区', '511600');
INSERT INTO `yershop_area` VALUES ('511602', '广安区', '511600');
INSERT INTO `yershop_area` VALUES ('511621', '岳池县', '511600');
INSERT INTO `yershop_area` VALUES ('511622', '武胜县', '511600');
INSERT INTO `yershop_area` VALUES ('511623', '邻水县', '511600');
INSERT INTO `yershop_area` VALUES ('511681', '华莹市', '511600');
INSERT INTO `yershop_area` VALUES ('511701', '市辖区', '511700');
INSERT INTO `yershop_area` VALUES ('511702', '通川区', '511700');
INSERT INTO `yershop_area` VALUES ('511721', '达　县', '511700');
INSERT INTO `yershop_area` VALUES ('511722', '宣汉县', '511700');
INSERT INTO `yershop_area` VALUES ('511723', '开江县', '511700');
INSERT INTO `yershop_area` VALUES ('511724', '大竹县', '511700');
INSERT INTO `yershop_area` VALUES ('511725', '渠　县', '511700');
INSERT INTO `yershop_area` VALUES ('511781', '万源市', '511700');
INSERT INTO `yershop_area` VALUES ('511801', '市辖区', '511800');
INSERT INTO `yershop_area` VALUES ('511802', '雨城区', '511800');
INSERT INTO `yershop_area` VALUES ('511821', '名山县', '511800');
INSERT INTO `yershop_area` VALUES ('511822', '荥经县', '511800');
INSERT INTO `yershop_area` VALUES ('511823', '汉源县', '511800');
INSERT INTO `yershop_area` VALUES ('511824', '石棉县', '511800');
INSERT INTO `yershop_area` VALUES ('511825', '天全县', '511800');
INSERT INTO `yershop_area` VALUES ('511826', '芦山县', '511800');
INSERT INTO `yershop_area` VALUES ('511827', '宝兴县', '511800');
INSERT INTO `yershop_area` VALUES ('511901', '市辖区', '511900');
INSERT INTO `yershop_area` VALUES ('511902', '巴州区', '511900');
INSERT INTO `yershop_area` VALUES ('511921', '通江县', '511900');
INSERT INTO `yershop_area` VALUES ('511922', '南江县', '511900');
INSERT INTO `yershop_area` VALUES ('511923', '平昌县', '511900');
INSERT INTO `yershop_area` VALUES ('512001', '市辖区', '512000');
INSERT INTO `yershop_area` VALUES ('512002', '雁江区', '512000');
INSERT INTO `yershop_area` VALUES ('512021', '安岳县', '512000');
INSERT INTO `yershop_area` VALUES ('512022', '乐至县', '512000');
INSERT INTO `yershop_area` VALUES ('512081', '简阳市', '512000');
INSERT INTO `yershop_area` VALUES ('513221', '汶川县', '513200');
INSERT INTO `yershop_area` VALUES ('513222', '理　县', '513200');
INSERT INTO `yershop_area` VALUES ('513223', '茂　县', '513200');
INSERT INTO `yershop_area` VALUES ('513224', '松潘县', '513200');
INSERT INTO `yershop_area` VALUES ('513225', '九寨沟县', '513200');
INSERT INTO `yershop_area` VALUES ('513226', '金川县', '513200');
INSERT INTO `yershop_area` VALUES ('513227', '小金县', '513200');
INSERT INTO `yershop_area` VALUES ('513228', '黑水县', '513200');
INSERT INTO `yershop_area` VALUES ('513229', '马尔康县', '513200');
INSERT INTO `yershop_area` VALUES ('513230', '壤塘县', '513200');
INSERT INTO `yershop_area` VALUES ('513231', '阿坝县', '513200');
INSERT INTO `yershop_area` VALUES ('513232', '若尔盖县', '513200');
INSERT INTO `yershop_area` VALUES ('513233', '红原县', '513200');
INSERT INTO `yershop_area` VALUES ('513321', '康定县', '513300');
INSERT INTO `yershop_area` VALUES ('513322', '泸定县', '513300');
INSERT INTO `yershop_area` VALUES ('513323', '丹巴县', '513300');
INSERT INTO `yershop_area` VALUES ('513324', '九龙县', '513300');
INSERT INTO `yershop_area` VALUES ('513325', '雅江县', '513300');
INSERT INTO `yershop_area` VALUES ('513326', '道孚县', '513300');
INSERT INTO `yershop_area` VALUES ('513327', '炉霍县', '513300');
INSERT INTO `yershop_area` VALUES ('513328', '甘孜县', '513300');
INSERT INTO `yershop_area` VALUES ('513329', '新龙县', '513300');
INSERT INTO `yershop_area` VALUES ('513330', '德格县', '513300');
INSERT INTO `yershop_area` VALUES ('513331', '白玉县', '513300');
INSERT INTO `yershop_area` VALUES ('513332', '石渠县', '513300');
INSERT INTO `yershop_area` VALUES ('513333', '色达县', '513300');
INSERT INTO `yershop_area` VALUES ('513334', '理塘县', '513300');
INSERT INTO `yershop_area` VALUES ('513335', '巴塘县', '513300');
INSERT INTO `yershop_area` VALUES ('513336', '乡城县', '513300');
INSERT INTO `yershop_area` VALUES ('513337', '稻城县', '513300');
INSERT INTO `yershop_area` VALUES ('513338', '得荣县', '513300');
INSERT INTO `yershop_area` VALUES ('513401', '西昌市', '513400');
INSERT INTO `yershop_area` VALUES ('513422', '木里藏族自治县', '513400');
INSERT INTO `yershop_area` VALUES ('513423', '盐源县', '513400');
INSERT INTO `yershop_area` VALUES ('513424', '德昌县', '513400');
INSERT INTO `yershop_area` VALUES ('513425', '会理县', '513400');
INSERT INTO `yershop_area` VALUES ('513426', '会东县', '513400');
INSERT INTO `yershop_area` VALUES ('513427', '宁南县', '513400');
INSERT INTO `yershop_area` VALUES ('513428', '普格县', '513400');
INSERT INTO `yershop_area` VALUES ('513429', '布拖县', '513400');
INSERT INTO `yershop_area` VALUES ('513430', '金阳县', '513400');
INSERT INTO `yershop_area` VALUES ('513431', '昭觉县', '513400');
INSERT INTO `yershop_area` VALUES ('513432', '喜德县', '513400');
INSERT INTO `yershop_area` VALUES ('513433', '冕宁县', '513400');
INSERT INTO `yershop_area` VALUES ('513434', '越西县', '513400');
INSERT INTO `yershop_area` VALUES ('513435', '甘洛县', '513400');
INSERT INTO `yershop_area` VALUES ('513436', '美姑县', '513400');
INSERT INTO `yershop_area` VALUES ('513437', '雷波县', '513400');
INSERT INTO `yershop_area` VALUES ('520101', '市辖区', '520100');
INSERT INTO `yershop_area` VALUES ('520102', '南明区', '520100');
INSERT INTO `yershop_area` VALUES ('520103', '云岩区', '520100');
INSERT INTO `yershop_area` VALUES ('520111', '花溪区', '520100');
INSERT INTO `yershop_area` VALUES ('520112', '乌当区', '520100');
INSERT INTO `yershop_area` VALUES ('520113', '白云区', '520100');
INSERT INTO `yershop_area` VALUES ('520114', '小河区', '520100');
INSERT INTO `yershop_area` VALUES ('520121', '开阳县', '520100');
INSERT INTO `yershop_area` VALUES ('520122', '息烽县', '520100');
INSERT INTO `yershop_area` VALUES ('520123', '修文县', '520100');
INSERT INTO `yershop_area` VALUES ('520181', '清镇市', '520100');
INSERT INTO `yershop_area` VALUES ('520201', '钟山区', '520200');
INSERT INTO `yershop_area` VALUES ('520203', '六枝特区', '520200');
INSERT INTO `yershop_area` VALUES ('520221', '水城县', '520200');
INSERT INTO `yershop_area` VALUES ('520222', '盘　县', '520200');
INSERT INTO `yershop_area` VALUES ('520301', '市辖区', '520300');
INSERT INTO `yershop_area` VALUES ('520302', '红花岗区', '520300');
INSERT INTO `yershop_area` VALUES ('520303', '汇川区', '520300');
INSERT INTO `yershop_area` VALUES ('520321', '遵义县', '520300');
INSERT INTO `yershop_area` VALUES ('520322', '桐梓县', '520300');
INSERT INTO `yershop_area` VALUES ('520323', '绥阳县', '520300');
INSERT INTO `yershop_area` VALUES ('520324', '正安县', '520300');
INSERT INTO `yershop_area` VALUES ('520325', '道真仡佬族苗族自治县', '520300');
INSERT INTO `yershop_area` VALUES ('520326', '务川仡佬族苗族自治县', '520300');
INSERT INTO `yershop_area` VALUES ('520327', '凤冈县', '520300');
INSERT INTO `yershop_area` VALUES ('520328', '湄潭县', '520300');
INSERT INTO `yershop_area` VALUES ('520329', '余庆县', '520300');
INSERT INTO `yershop_area` VALUES ('520330', '习水县', '520300');
INSERT INTO `yershop_area` VALUES ('520381', '赤水市', '520300');
INSERT INTO `yershop_area` VALUES ('520382', '仁怀市', '520300');
INSERT INTO `yershop_area` VALUES ('520401', '市辖区', '520400');
INSERT INTO `yershop_area` VALUES ('520402', '西秀区', '520400');
INSERT INTO `yershop_area` VALUES ('520421', '平坝县', '520400');
INSERT INTO `yershop_area` VALUES ('520422', '普定县', '520400');
INSERT INTO `yershop_area` VALUES ('520423', '镇宁布依族苗族自治县', '520400');
INSERT INTO `yershop_area` VALUES ('520424', '关岭布依族苗族自治县', '520400');
INSERT INTO `yershop_area` VALUES ('520425', '紫云苗族布依族自治县', '520400');
INSERT INTO `yershop_area` VALUES ('522201', '铜仁市', '522200');
INSERT INTO `yershop_area` VALUES ('522222', '江口县', '522200');
INSERT INTO `yershop_area` VALUES ('522223', '玉屏侗族自治县', '522200');
INSERT INTO `yershop_area` VALUES ('522224', '石阡县', '522200');
INSERT INTO `yershop_area` VALUES ('522225', '思南县', '522200');
INSERT INTO `yershop_area` VALUES ('522226', '印江土家族苗族自治县', '522200');
INSERT INTO `yershop_area` VALUES ('522227', '德江县', '522200');
INSERT INTO `yershop_area` VALUES ('522228', '沿河土家族自治县', '522200');
INSERT INTO `yershop_area` VALUES ('522229', '松桃苗族自治县', '522200');
INSERT INTO `yershop_area` VALUES ('522230', '万山特区', '522200');
INSERT INTO `yershop_area` VALUES ('522301', '兴义市', '522300');
INSERT INTO `yershop_area` VALUES ('522322', '兴仁县', '522300');
INSERT INTO `yershop_area` VALUES ('522323', '普安县', '522300');
INSERT INTO `yershop_area` VALUES ('522324', '晴隆县', '522300');
INSERT INTO `yershop_area` VALUES ('522325', '贞丰县', '522300');
INSERT INTO `yershop_area` VALUES ('522326', '望谟县', '522300');
INSERT INTO `yershop_area` VALUES ('522327', '册亨县', '522300');
INSERT INTO `yershop_area` VALUES ('522328', '安龙县', '522300');
INSERT INTO `yershop_area` VALUES ('522401', '毕节市', '522400');
INSERT INTO `yershop_area` VALUES ('522422', '大方县', '522400');
INSERT INTO `yershop_area` VALUES ('522423', '黔西县', '522400');
INSERT INTO `yershop_area` VALUES ('522424', '金沙县', '522400');
INSERT INTO `yershop_area` VALUES ('522425', '织金县', '522400');
INSERT INTO `yershop_area` VALUES ('522426', '纳雍县', '522400');
INSERT INTO `yershop_area` VALUES ('522427', '威宁彝族回族苗族自治县', '522400');
INSERT INTO `yershop_area` VALUES ('522428', '赫章县', '522400');
INSERT INTO `yershop_area` VALUES ('522601', '凯里市', '522600');
INSERT INTO `yershop_area` VALUES ('522622', '黄平县', '522600');
INSERT INTO `yershop_area` VALUES ('522623', '施秉县', '522600');
INSERT INTO `yershop_area` VALUES ('522624', '三穗县', '522600');
INSERT INTO `yershop_area` VALUES ('522625', '镇远县', '522600');
INSERT INTO `yershop_area` VALUES ('522626', '岑巩县', '522600');
INSERT INTO `yershop_area` VALUES ('522627', '天柱县', '522600');
INSERT INTO `yershop_area` VALUES ('522628', '锦屏县', '522600');
INSERT INTO `yershop_area` VALUES ('522629', '剑河县', '522600');
INSERT INTO `yershop_area` VALUES ('522630', '台江县', '522600');
INSERT INTO `yershop_area` VALUES ('522631', '黎平县', '522600');
INSERT INTO `yershop_area` VALUES ('522632', '榕江县', '522600');
INSERT INTO `yershop_area` VALUES ('522633', '从江县', '522600');
INSERT INTO `yershop_area` VALUES ('522634', '雷山县', '522600');
INSERT INTO `yershop_area` VALUES ('522635', '麻江县', '522600');
INSERT INTO `yershop_area` VALUES ('522636', '丹寨县', '522600');
INSERT INTO `yershop_area` VALUES ('522701', '都匀市', '522700');
INSERT INTO `yershop_area` VALUES ('522702', '福泉市', '522700');
INSERT INTO `yershop_area` VALUES ('522722', '荔波县', '522700');
INSERT INTO `yershop_area` VALUES ('522723', '贵定县', '522700');
INSERT INTO `yershop_area` VALUES ('522725', '瓮安县', '522700');
INSERT INTO `yershop_area` VALUES ('522726', '独山县', '522700');
INSERT INTO `yershop_area` VALUES ('522727', '平塘县', '522700');
INSERT INTO `yershop_area` VALUES ('522728', '罗甸县', '522700');
INSERT INTO `yershop_area` VALUES ('522729', '长顺县', '522700');
INSERT INTO `yershop_area` VALUES ('522730', '龙里县', '522700');
INSERT INTO `yershop_area` VALUES ('522731', '惠水县', '522700');
INSERT INTO `yershop_area` VALUES ('522732', '三都水族自治县', '522700');
INSERT INTO `yershop_area` VALUES ('530101', '市辖区', '530100');
INSERT INTO `yershop_area` VALUES ('530102', '五华区', '530100');
INSERT INTO `yershop_area` VALUES ('530103', '盘龙区', '530100');
INSERT INTO `yershop_area` VALUES ('530111', '官渡区', '530100');
INSERT INTO `yershop_area` VALUES ('530112', '西山区', '530100');
INSERT INTO `yershop_area` VALUES ('530113', '东川区', '530100');
INSERT INTO `yershop_area` VALUES ('530121', '呈贡县', '530100');
INSERT INTO `yershop_area` VALUES ('530122', '晋宁县', '530100');
INSERT INTO `yershop_area` VALUES ('530124', '富民县', '530100');
INSERT INTO `yershop_area` VALUES ('530125', '宜良县', '530100');
INSERT INTO `yershop_area` VALUES ('530126', '石林彝族自治县', '530100');
INSERT INTO `yershop_area` VALUES ('530127', '嵩明县', '530100');
INSERT INTO `yershop_area` VALUES ('530128', '禄劝彝族苗族自治县', '530100');
INSERT INTO `yershop_area` VALUES ('530129', '寻甸回族彝族自治县', '530100');
INSERT INTO `yershop_area` VALUES ('530181', '安宁市', '530100');
INSERT INTO `yershop_area` VALUES ('530301', '市辖区', '530300');
INSERT INTO `yershop_area` VALUES ('530302', '麒麟区', '530300');
INSERT INTO `yershop_area` VALUES ('530321', '马龙县', '530300');
INSERT INTO `yershop_area` VALUES ('530322', '陆良县', '530300');
INSERT INTO `yershop_area` VALUES ('530323', '师宗县', '530300');
INSERT INTO `yershop_area` VALUES ('530324', '罗平县', '530300');
INSERT INTO `yershop_area` VALUES ('530325', '富源县', '530300');
INSERT INTO `yershop_area` VALUES ('530326', '会泽县', '530300');
INSERT INTO `yershop_area` VALUES ('530328', '沾益县', '530300');
INSERT INTO `yershop_area` VALUES ('530381', '宣威市', '530300');
INSERT INTO `yershop_area` VALUES ('530401', '市辖区', '530400');
INSERT INTO `yershop_area` VALUES ('530402', '红塔区', '530400');
INSERT INTO `yershop_area` VALUES ('530421', '江川县', '530400');
INSERT INTO `yershop_area` VALUES ('530422', '澄江县', '530400');
INSERT INTO `yershop_area` VALUES ('530423', '通海县', '530400');
INSERT INTO `yershop_area` VALUES ('530424', '华宁县', '530400');
INSERT INTO `yershop_area` VALUES ('530425', '易门县', '530400');
INSERT INTO `yershop_area` VALUES ('530426', '峨山彝族自治县', '530400');
INSERT INTO `yershop_area` VALUES ('530427', '新平彝族傣族自治县', '530400');
INSERT INTO `yershop_area` VALUES ('530428', '元江哈尼族彝族傣族自治县', '530400');
INSERT INTO `yershop_area` VALUES ('530501', '市辖区', '530500');
INSERT INTO `yershop_area` VALUES ('530502', '隆阳区', '530500');
INSERT INTO `yershop_area` VALUES ('530521', '施甸县', '530500');
INSERT INTO `yershop_area` VALUES ('530522', '腾冲县', '530500');
INSERT INTO `yershop_area` VALUES ('530523', '龙陵县', '530500');
INSERT INTO `yershop_area` VALUES ('530524', '昌宁县', '530500');
INSERT INTO `yershop_area` VALUES ('530601', '市辖区', '530600');
INSERT INTO `yershop_area` VALUES ('530602', '昭阳区', '530600');
INSERT INTO `yershop_area` VALUES ('530621', '鲁甸县', '530600');
INSERT INTO `yershop_area` VALUES ('530622', '巧家县', '530600');
INSERT INTO `yershop_area` VALUES ('530623', '盐津县', '530600');
INSERT INTO `yershop_area` VALUES ('530624', '大关县', '530600');
INSERT INTO `yershop_area` VALUES ('530625', '永善县', '530600');
INSERT INTO `yershop_area` VALUES ('530626', '绥江县', '530600');
INSERT INTO `yershop_area` VALUES ('530627', '镇雄县', '530600');
INSERT INTO `yershop_area` VALUES ('530628', '彝良县', '530600');
INSERT INTO `yershop_area` VALUES ('530629', '威信县', '530600');
INSERT INTO `yershop_area` VALUES ('530630', '水富县', '530600');
INSERT INTO `yershop_area` VALUES ('530701', '市辖区', '530700');
INSERT INTO `yershop_area` VALUES ('530702', '古城区', '530700');
INSERT INTO `yershop_area` VALUES ('530721', '玉龙纳西族自治县', '530700');
INSERT INTO `yershop_area` VALUES ('530722', '永胜县', '530700');
INSERT INTO `yershop_area` VALUES ('530723', '华坪县', '530700');
INSERT INTO `yershop_area` VALUES ('530724', '宁蒗彝族自治县', '530700');
INSERT INTO `yershop_area` VALUES ('530801', '市辖区', '530800');
INSERT INTO `yershop_area` VALUES ('530802', '翠云区', '530800');
INSERT INTO `yershop_area` VALUES ('530821', '普洱哈尼族彝族自治县', '530800');
INSERT INTO `yershop_area` VALUES ('530822', '墨江哈尼族自治县', '530800');
INSERT INTO `yershop_area` VALUES ('530823', '景东彝族自治县', '530800');
INSERT INTO `yershop_area` VALUES ('530824', '景谷傣族彝族自治县', '530800');
INSERT INTO `yershop_area` VALUES ('530825', '镇沅彝族哈尼族拉祜族自治县', '530800');
INSERT INTO `yershop_area` VALUES ('530826', '江城哈尼族彝族自治县', '530800');
INSERT INTO `yershop_area` VALUES ('530827', '孟连傣族拉祜族佤族自治县', '530800');
INSERT INTO `yershop_area` VALUES ('530828', '澜沧拉祜族自治县', '530800');
INSERT INTO `yershop_area` VALUES ('530829', '西盟佤族自治县', '530800');
INSERT INTO `yershop_area` VALUES ('530901', '市辖区', '530900');
INSERT INTO `yershop_area` VALUES ('530902', '临翔区', '530900');
INSERT INTO `yershop_area` VALUES ('530921', '凤庆县', '530900');
INSERT INTO `yershop_area` VALUES ('530922', '云　县', '530900');
INSERT INTO `yershop_area` VALUES ('530923', '永德县', '530900');
INSERT INTO `yershop_area` VALUES ('530924', '镇康县', '530900');
INSERT INTO `yershop_area` VALUES ('530925', '双江拉祜族佤族布朗族傣族自治县', '530900');
INSERT INTO `yershop_area` VALUES ('530926', '耿马傣族佤族自治县', '530900');
INSERT INTO `yershop_area` VALUES ('530927', '沧源佤族自治县', '530900');
INSERT INTO `yershop_area` VALUES ('532301', '楚雄市', '532300');
INSERT INTO `yershop_area` VALUES ('532322', '双柏县', '532300');
INSERT INTO `yershop_area` VALUES ('532323', '牟定县', '532300');
INSERT INTO `yershop_area` VALUES ('532324', '南华县', '532300');
INSERT INTO `yershop_area` VALUES ('532325', '姚安县', '532300');
INSERT INTO `yershop_area` VALUES ('532326', '大姚县', '532300');
INSERT INTO `yershop_area` VALUES ('532327', '永仁县', '532300');
INSERT INTO `yershop_area` VALUES ('532328', '元谋县', '532300');
INSERT INTO `yershop_area` VALUES ('532329', '武定县', '532300');
INSERT INTO `yershop_area` VALUES ('532331', '禄丰县', '532300');
INSERT INTO `yershop_area` VALUES ('532501', '个旧市', '532500');
INSERT INTO `yershop_area` VALUES ('532502', '开远市', '532500');
INSERT INTO `yershop_area` VALUES ('532522', '蒙自县', '532500');
INSERT INTO `yershop_area` VALUES ('532523', '屏边苗族自治县', '532500');
INSERT INTO `yershop_area` VALUES ('532524', '建水县', '532500');
INSERT INTO `yershop_area` VALUES ('532525', '石屏县', '532500');
INSERT INTO `yershop_area` VALUES ('532526', '弥勒县', '532500');
INSERT INTO `yershop_area` VALUES ('532527', '泸西县', '532500');
INSERT INTO `yershop_area` VALUES ('532528', '元阳县', '532500');
INSERT INTO `yershop_area` VALUES ('532529', '红河县', '532500');
INSERT INTO `yershop_area` VALUES ('532530', '金平苗族瑶族傣族自治县', '532500');
INSERT INTO `yershop_area` VALUES ('532531', '绿春县', '532500');
INSERT INTO `yershop_area` VALUES ('532532', '河口瑶族自治县', '532500');
INSERT INTO `yershop_area` VALUES ('532621', '文山县', '532600');
INSERT INTO `yershop_area` VALUES ('532622', '砚山县', '532600');
INSERT INTO `yershop_area` VALUES ('532623', '西畴县', '532600');
INSERT INTO `yershop_area` VALUES ('532624', '麻栗坡县', '532600');
INSERT INTO `yershop_area` VALUES ('532625', '马关县', '532600');
INSERT INTO `yershop_area` VALUES ('532626', '丘北县', '532600');
INSERT INTO `yershop_area` VALUES ('532627', '广南县', '532600');
INSERT INTO `yershop_area` VALUES ('532628', '富宁县', '532600');
INSERT INTO `yershop_area` VALUES ('532801', '景洪市', '532800');
INSERT INTO `yershop_area` VALUES ('532822', '勐海县', '532800');
INSERT INTO `yershop_area` VALUES ('532823', '勐腊县', '532800');
INSERT INTO `yershop_area` VALUES ('532901', '大理市', '532900');
INSERT INTO `yershop_area` VALUES ('532922', '漾濞彝族自治县', '532900');
INSERT INTO `yershop_area` VALUES ('532923', '祥云县', '532900');
INSERT INTO `yershop_area` VALUES ('532924', '宾川县', '532900');
INSERT INTO `yershop_area` VALUES ('532925', '弥渡县', '532900');
INSERT INTO `yershop_area` VALUES ('532926', '南涧彝族自治县', '532900');
INSERT INTO `yershop_area` VALUES ('532927', '巍山彝族回族自治县', '532900');
INSERT INTO `yershop_area` VALUES ('532928', '永平县', '532900');
INSERT INTO `yershop_area` VALUES ('532929', '云龙县', '532900');
INSERT INTO `yershop_area` VALUES ('532930', '洱源县', '532900');
INSERT INTO `yershop_area` VALUES ('532931', '剑川县', '532900');
INSERT INTO `yershop_area` VALUES ('532932', '鹤庆县', '532900');
INSERT INTO `yershop_area` VALUES ('533102', '瑞丽市', '533100');
INSERT INTO `yershop_area` VALUES ('533103', '潞西市', '533100');
INSERT INTO `yershop_area` VALUES ('533122', '梁河县', '533100');
INSERT INTO `yershop_area` VALUES ('533123', '盈江县', '533100');
INSERT INTO `yershop_area` VALUES ('533124', '陇川县', '533100');
INSERT INTO `yershop_area` VALUES ('533321', '泸水县', '533300');
INSERT INTO `yershop_area` VALUES ('533323', '福贡县', '533300');
INSERT INTO `yershop_area` VALUES ('533324', '贡山独龙族怒族自治县', '533300');
INSERT INTO `yershop_area` VALUES ('533325', '兰坪白族普米族自治县', '533300');
INSERT INTO `yershop_area` VALUES ('533421', '香格里拉县', '533400');
INSERT INTO `yershop_area` VALUES ('533422', '德钦县', '533400');
INSERT INTO `yershop_area` VALUES ('533423', '维西傈僳族自治县', '533400');
INSERT INTO `yershop_area` VALUES ('540101', '市辖区', '540100');
INSERT INTO `yershop_area` VALUES ('540102', '城关区', '540100');
INSERT INTO `yershop_area` VALUES ('540121', '林周县', '540100');
INSERT INTO `yershop_area` VALUES ('540122', '当雄县', '540100');
INSERT INTO `yershop_area` VALUES ('540123', '尼木县', '540100');
INSERT INTO `yershop_area` VALUES ('540124', '曲水县', '540100');
INSERT INTO `yershop_area` VALUES ('540125', '堆龙德庆县', '540100');
INSERT INTO `yershop_area` VALUES ('540126', '达孜县', '540100');
INSERT INTO `yershop_area` VALUES ('540127', '墨竹工卡县', '540100');
INSERT INTO `yershop_area` VALUES ('542121', '昌都县', '542100');
INSERT INTO `yershop_area` VALUES ('542122', '江达县', '542100');
INSERT INTO `yershop_area` VALUES ('542123', '贡觉县', '542100');
INSERT INTO `yershop_area` VALUES ('542124', '类乌齐县', '542100');
INSERT INTO `yershop_area` VALUES ('542125', '丁青县', '542100');
INSERT INTO `yershop_area` VALUES ('542126', '察雅县', '542100');
INSERT INTO `yershop_area` VALUES ('542127', '八宿县', '542100');
INSERT INTO `yershop_area` VALUES ('542128', '左贡县', '542100');
INSERT INTO `yershop_area` VALUES ('542129', '芒康县', '542100');
INSERT INTO `yershop_area` VALUES ('542132', '洛隆县', '542100');
INSERT INTO `yershop_area` VALUES ('542133', '边坝县', '542100');
INSERT INTO `yershop_area` VALUES ('542221', '乃东县', '542200');
INSERT INTO `yershop_area` VALUES ('542222', '扎囊县', '542200');
INSERT INTO `yershop_area` VALUES ('542223', '贡嘎县', '542200');
INSERT INTO `yershop_area` VALUES ('542224', '桑日县', '542200');
INSERT INTO `yershop_area` VALUES ('542225', '琼结县', '542200');
INSERT INTO `yershop_area` VALUES ('542226', '曲松县', '542200');
INSERT INTO `yershop_area` VALUES ('542227', '措美县', '542200');
INSERT INTO `yershop_area` VALUES ('542228', '洛扎县', '542200');
INSERT INTO `yershop_area` VALUES ('542229', '加查县', '542200');
INSERT INTO `yershop_area` VALUES ('542231', '隆子县', '542200');
INSERT INTO `yershop_area` VALUES ('542232', '错那县', '542200');
INSERT INTO `yershop_area` VALUES ('542233', '浪卡子县', '542200');
INSERT INTO `yershop_area` VALUES ('542301', '日喀则市', '542300');
INSERT INTO `yershop_area` VALUES ('542322', '南木林县', '542300');
INSERT INTO `yershop_area` VALUES ('542323', '江孜县', '542300');
INSERT INTO `yershop_area` VALUES ('542324', '定日县', '542300');
INSERT INTO `yershop_area` VALUES ('542325', '萨迦县', '542300');
INSERT INTO `yershop_area` VALUES ('542326', '拉孜县', '542300');
INSERT INTO `yershop_area` VALUES ('542327', '昂仁县', '542300');
INSERT INTO `yershop_area` VALUES ('542328', '谢通门县', '542300');
INSERT INTO `yershop_area` VALUES ('542329', '白朗县', '542300');
INSERT INTO `yershop_area` VALUES ('542330', '仁布县', '542300');
INSERT INTO `yershop_area` VALUES ('542331', '康马县', '542300');
INSERT INTO `yershop_area` VALUES ('542332', '定结县', '542300');
INSERT INTO `yershop_area` VALUES ('542333', '仲巴县', '542300');
INSERT INTO `yershop_area` VALUES ('542334', '亚东县', '542300');
INSERT INTO `yershop_area` VALUES ('542335', '吉隆县', '542300');
INSERT INTO `yershop_area` VALUES ('542336', '聂拉木县', '542300');
INSERT INTO `yershop_area` VALUES ('542337', '萨嘎县', '542300');
INSERT INTO `yershop_area` VALUES ('542338', '岗巴县', '542300');
INSERT INTO `yershop_area` VALUES ('542421', '那曲县', '542400');
INSERT INTO `yershop_area` VALUES ('542422', '嘉黎县', '542400');
INSERT INTO `yershop_area` VALUES ('542423', '比如县', '542400');
INSERT INTO `yershop_area` VALUES ('542424', '聂荣县', '542400');
INSERT INTO `yershop_area` VALUES ('542425', '安多县', '542400');
INSERT INTO `yershop_area` VALUES ('542426', '申扎县', '542400');
INSERT INTO `yershop_area` VALUES ('542427', '索　县', '542400');
INSERT INTO `yershop_area` VALUES ('542428', '班戈县', '542400');
INSERT INTO `yershop_area` VALUES ('542429', '巴青县', '542400');
INSERT INTO `yershop_area` VALUES ('542430', '尼玛县', '542400');
INSERT INTO `yershop_area` VALUES ('542521', '普兰县', '542500');
INSERT INTO `yershop_area` VALUES ('542522', '札达县', '542500');
INSERT INTO `yershop_area` VALUES ('542523', '噶尔县', '542500');
INSERT INTO `yershop_area` VALUES ('542524', '日土县', '542500');
INSERT INTO `yershop_area` VALUES ('542525', '革吉县', '542500');
INSERT INTO `yershop_area` VALUES ('542526', '改则县', '542500');
INSERT INTO `yershop_area` VALUES ('542527', '措勤县', '542500');
INSERT INTO `yershop_area` VALUES ('542621', '林芝县', '542600');
INSERT INTO `yershop_area` VALUES ('542622', '工布江达县', '542600');
INSERT INTO `yershop_area` VALUES ('542623', '米林县', '542600');
INSERT INTO `yershop_area` VALUES ('542624', '墨脱县', '542600');
INSERT INTO `yershop_area` VALUES ('542625', '波密县', '542600');
INSERT INTO `yershop_area` VALUES ('542626', '察隅县', '542600');
INSERT INTO `yershop_area` VALUES ('542627', '朗　县', '542600');
INSERT INTO `yershop_area` VALUES ('610101', '市辖区', '610100');
INSERT INTO `yershop_area` VALUES ('610102', '新城区', '610100');
INSERT INTO `yershop_area` VALUES ('610103', '碑林区', '610100');
INSERT INTO `yershop_area` VALUES ('610104', '莲湖区', '610100');
INSERT INTO `yershop_area` VALUES ('610111', '灞桥区', '610100');
INSERT INTO `yershop_area` VALUES ('610112', '未央区', '610100');
INSERT INTO `yershop_area` VALUES ('610113', '雁塔区', '610100');
INSERT INTO `yershop_area` VALUES ('610114', '阎良区', '610100');
INSERT INTO `yershop_area` VALUES ('610115', '临潼区', '610100');
INSERT INTO `yershop_area` VALUES ('610116', '长安区', '610100');
INSERT INTO `yershop_area` VALUES ('610122', '蓝田县', '610100');
INSERT INTO `yershop_area` VALUES ('610124', '周至县', '610100');
INSERT INTO `yershop_area` VALUES ('610125', '户　县', '610100');
INSERT INTO `yershop_area` VALUES ('610126', '高陵县', '610100');
INSERT INTO `yershop_area` VALUES ('610201', '市辖区', '610200');
INSERT INTO `yershop_area` VALUES ('610202', '王益区', '610200');
INSERT INTO `yershop_area` VALUES ('610203', '印台区', '610200');
INSERT INTO `yershop_area` VALUES ('610204', '耀州区', '610200');
INSERT INTO `yershop_area` VALUES ('610222', '宜君县', '610200');
INSERT INTO `yershop_area` VALUES ('610301', '市辖区', '610300');
INSERT INTO `yershop_area` VALUES ('610302', '渭滨区', '610300');
INSERT INTO `yershop_area` VALUES ('610303', '金台区', '610300');
INSERT INTO `yershop_area` VALUES ('610304', '陈仓区', '610300');
INSERT INTO `yershop_area` VALUES ('610322', '凤翔县', '610300');
INSERT INTO `yershop_area` VALUES ('610323', '岐山县', '610300');
INSERT INTO `yershop_area` VALUES ('610324', '扶风县', '610300');
INSERT INTO `yershop_area` VALUES ('610326', '眉　县', '610300');
INSERT INTO `yershop_area` VALUES ('610327', '陇　县', '610300');
INSERT INTO `yershop_area` VALUES ('610328', '千阳县', '610300');
INSERT INTO `yershop_area` VALUES ('610329', '麟游县', '610300');
INSERT INTO `yershop_area` VALUES ('610330', '凤　县', '610300');
INSERT INTO `yershop_area` VALUES ('610331', '太白县', '610300');
INSERT INTO `yershop_area` VALUES ('610401', '市辖区', '610400');
INSERT INTO `yershop_area` VALUES ('610402', '秦都区', '610400');
INSERT INTO `yershop_area` VALUES ('610403', '杨凌区', '610400');
INSERT INTO `yershop_area` VALUES ('610404', '渭城区', '610400');
INSERT INTO `yershop_area` VALUES ('610422', '三原县', '610400');
INSERT INTO `yershop_area` VALUES ('610423', '泾阳县', '610400');
INSERT INTO `yershop_area` VALUES ('610424', '乾　县', '610400');
INSERT INTO `yershop_area` VALUES ('610425', '礼泉县', '610400');
INSERT INTO `yershop_area` VALUES ('610426', '永寿县', '610400');
INSERT INTO `yershop_area` VALUES ('610427', '彬　县', '610400');
INSERT INTO `yershop_area` VALUES ('610428', '长武县', '610400');
INSERT INTO `yershop_area` VALUES ('610429', '旬邑县', '610400');
INSERT INTO `yershop_area` VALUES ('610430', '淳化县', '610400');
INSERT INTO `yershop_area` VALUES ('610431', '武功县', '610400');
INSERT INTO `yershop_area` VALUES ('610481', '兴平市', '610400');
INSERT INTO `yershop_area` VALUES ('610501', '市辖区', '610500');
INSERT INTO `yershop_area` VALUES ('610502', '临渭区', '610500');
INSERT INTO `yershop_area` VALUES ('610521', '华　县', '610500');
INSERT INTO `yershop_area` VALUES ('610522', '潼关县', '610500');
INSERT INTO `yershop_area` VALUES ('610523', '大荔县', '610500');
INSERT INTO `yershop_area` VALUES ('610524', '合阳县', '610500');
INSERT INTO `yershop_area` VALUES ('610525', '澄城县', '610500');
INSERT INTO `yershop_area` VALUES ('610526', '蒲城县', '610500');
INSERT INTO `yershop_area` VALUES ('610527', '白水县', '610500');
INSERT INTO `yershop_area` VALUES ('610528', '富平县', '610500');
INSERT INTO `yershop_area` VALUES ('610581', '韩城市', '610500');
INSERT INTO `yershop_area` VALUES ('610582', '华阴市', '610500');
INSERT INTO `yershop_area` VALUES ('610601', '市辖区', '610600');
INSERT INTO `yershop_area` VALUES ('610602', '宝塔区', '610600');
INSERT INTO `yershop_area` VALUES ('610621', '延长县', '610600');
INSERT INTO `yershop_area` VALUES ('610622', '延川县', '610600');
INSERT INTO `yershop_area` VALUES ('610623', '子长县', '610600');
INSERT INTO `yershop_area` VALUES ('610624', '安塞县', '610600');
INSERT INTO `yershop_area` VALUES ('610625', '志丹县', '610600');
INSERT INTO `yershop_area` VALUES ('610626', '吴旗县', '610600');
INSERT INTO `yershop_area` VALUES ('610627', '甘泉县', '610600');
INSERT INTO `yershop_area` VALUES ('610628', '富　县', '610600');
INSERT INTO `yershop_area` VALUES ('610629', '洛川县', '610600');
INSERT INTO `yershop_area` VALUES ('610630', '宜川县', '610600');
INSERT INTO `yershop_area` VALUES ('610631', '黄龙县', '610600');
INSERT INTO `yershop_area` VALUES ('610632', '黄陵县', '610600');
INSERT INTO `yershop_area` VALUES ('610701', '市辖区', '610700');
INSERT INTO `yershop_area` VALUES ('610702', '汉台区', '610700');
INSERT INTO `yershop_area` VALUES ('610721', '南郑县', '610700');
INSERT INTO `yershop_area` VALUES ('610722', '城固县', '610700');
INSERT INTO `yershop_area` VALUES ('610723', '洋　县', '610700');
INSERT INTO `yershop_area` VALUES ('610724', '西乡县', '610700');
INSERT INTO `yershop_area` VALUES ('610725', '勉　县', '610700');
INSERT INTO `yershop_area` VALUES ('610726', '宁强县', '610700');
INSERT INTO `yershop_area` VALUES ('610727', '略阳县', '610700');
INSERT INTO `yershop_area` VALUES ('610728', '镇巴县', '610700');
INSERT INTO `yershop_area` VALUES ('610729', '留坝县', '610700');
INSERT INTO `yershop_area` VALUES ('610730', '佛坪县', '610700');
INSERT INTO `yershop_area` VALUES ('610801', '市辖区', '610800');
INSERT INTO `yershop_area` VALUES ('610802', '榆阳区', '610800');
INSERT INTO `yershop_area` VALUES ('610821', '神木县', '610800');
INSERT INTO `yershop_area` VALUES ('610822', '府谷县', '610800');
INSERT INTO `yershop_area` VALUES ('610823', '横山县', '610800');
INSERT INTO `yershop_area` VALUES ('610824', '靖边县', '610800');
INSERT INTO `yershop_area` VALUES ('610825', '定边县', '610800');
INSERT INTO `yershop_area` VALUES ('610826', '绥德县', '610800');
INSERT INTO `yershop_area` VALUES ('610827', '米脂县', '610800');
INSERT INTO `yershop_area` VALUES ('610828', '佳　县', '610800');
INSERT INTO `yershop_area` VALUES ('610829', '吴堡县', '610800');
INSERT INTO `yershop_area` VALUES ('610830', '清涧县', '610800');
INSERT INTO `yershop_area` VALUES ('610831', '子洲县', '610800');
INSERT INTO `yershop_area` VALUES ('610901', '市辖区', '610900');
INSERT INTO `yershop_area` VALUES ('610902', '汉滨区', '610900');
INSERT INTO `yershop_area` VALUES ('610921', '汉阴县', '610900');
INSERT INTO `yershop_area` VALUES ('610922', '石泉县', '610900');
INSERT INTO `yershop_area` VALUES ('610923', '宁陕县', '610900');
INSERT INTO `yershop_area` VALUES ('610924', '紫阳县', '610900');
INSERT INTO `yershop_area` VALUES ('610925', '岚皋县', '610900');
INSERT INTO `yershop_area` VALUES ('610926', '平利县', '610900');
INSERT INTO `yershop_area` VALUES ('610927', '镇坪县', '610900');
INSERT INTO `yershop_area` VALUES ('610928', '旬阳县', '610900');
INSERT INTO `yershop_area` VALUES ('610929', '白河县', '610900');
INSERT INTO `yershop_area` VALUES ('611001', '市辖区', '611000');
INSERT INTO `yershop_area` VALUES ('611002', '商州区', '611000');
INSERT INTO `yershop_area` VALUES ('611021', '洛南县', '611000');
INSERT INTO `yershop_area` VALUES ('611022', '丹凤县', '611000');
INSERT INTO `yershop_area` VALUES ('611023', '商南县', '611000');
INSERT INTO `yershop_area` VALUES ('611024', '山阳县', '611000');
INSERT INTO `yershop_area` VALUES ('611025', '镇安县', '611000');
INSERT INTO `yershop_area` VALUES ('611026', '柞水县', '611000');
INSERT INTO `yershop_area` VALUES ('620101', '市辖区', '620100');
INSERT INTO `yershop_area` VALUES ('620102', '城关区', '620100');
INSERT INTO `yershop_area` VALUES ('620103', '七里河区', '620100');
INSERT INTO `yershop_area` VALUES ('620104', '西固区', '620100');
INSERT INTO `yershop_area` VALUES ('620105', '安宁区', '620100');
INSERT INTO `yershop_area` VALUES ('620111', '红古区', '620100');
INSERT INTO `yershop_area` VALUES ('620121', '永登县', '620100');
INSERT INTO `yershop_area` VALUES ('620122', '皋兰县', '620100');
INSERT INTO `yershop_area` VALUES ('620123', '榆中县', '620100');
INSERT INTO `yershop_area` VALUES ('620201', '市辖区', '620200');
INSERT INTO `yershop_area` VALUES ('620301', '市辖区', '620300');
INSERT INTO `yershop_area` VALUES ('620302', '金川区', '620300');
INSERT INTO `yershop_area` VALUES ('620321', '永昌县', '620300');
INSERT INTO `yershop_area` VALUES ('620401', '市辖区', '620400');
INSERT INTO `yershop_area` VALUES ('620402', '白银区', '620400');
INSERT INTO `yershop_area` VALUES ('620403', '平川区', '620400');
INSERT INTO `yershop_area` VALUES ('620421', '靖远县', '620400');
INSERT INTO `yershop_area` VALUES ('620422', '会宁县', '620400');
INSERT INTO `yershop_area` VALUES ('620423', '景泰县', '620400');
INSERT INTO `yershop_area` VALUES ('620501', '市辖区', '620500');
INSERT INTO `yershop_area` VALUES ('620502', '秦城区', '620500');
INSERT INTO `yershop_area` VALUES ('620503', '北道区', '620500');
INSERT INTO `yershop_area` VALUES ('620521', '清水县', '620500');
INSERT INTO `yershop_area` VALUES ('620522', '秦安县', '620500');
INSERT INTO `yershop_area` VALUES ('620523', '甘谷县', '620500');
INSERT INTO `yershop_area` VALUES ('620524', '武山县', '620500');
INSERT INTO `yershop_area` VALUES ('620525', '张家川回族自治县', '620500');
INSERT INTO `yershop_area` VALUES ('620601', '市辖区', '620600');
INSERT INTO `yershop_area` VALUES ('620602', '凉州区', '620600');
INSERT INTO `yershop_area` VALUES ('620621', '民勤县', '620600');
INSERT INTO `yershop_area` VALUES ('620622', '古浪县', '620600');
INSERT INTO `yershop_area` VALUES ('620623', '天祝藏族自治县', '620600');
INSERT INTO `yershop_area` VALUES ('620701', '市辖区', '620700');
INSERT INTO `yershop_area` VALUES ('620702', '甘州区', '620700');
INSERT INTO `yershop_area` VALUES ('620721', '肃南裕固族自治县', '620700');
INSERT INTO `yershop_area` VALUES ('620722', '民乐县', '620700');
INSERT INTO `yershop_area` VALUES ('620723', '临泽县', '620700');
INSERT INTO `yershop_area` VALUES ('620724', '高台县', '620700');
INSERT INTO `yershop_area` VALUES ('620725', '山丹县', '620700');
INSERT INTO `yershop_area` VALUES ('620801', '市辖区', '620800');
INSERT INTO `yershop_area` VALUES ('620802', '崆峒区', '620800');
INSERT INTO `yershop_area` VALUES ('620821', '泾川县', '620800');
INSERT INTO `yershop_area` VALUES ('620822', '灵台县', '620800');
INSERT INTO `yershop_area` VALUES ('620823', '崇信县', '620800');
INSERT INTO `yershop_area` VALUES ('620824', '华亭县', '620800');
INSERT INTO `yershop_area` VALUES ('620825', '庄浪县', '620800');
INSERT INTO `yershop_area` VALUES ('620826', '静宁县', '620800');
INSERT INTO `yershop_area` VALUES ('620901', '市辖区', '620900');
INSERT INTO `yershop_area` VALUES ('620902', '肃州区', '620900');
INSERT INTO `yershop_area` VALUES ('620921', '金塔县', '620900');
INSERT INTO `yershop_area` VALUES ('620922', '安西县', '620900');
INSERT INTO `yershop_area` VALUES ('620923', '肃北蒙古族自治县', '620900');
INSERT INTO `yershop_area` VALUES ('620924', '阿克塞哈萨克族自治县', '620900');
INSERT INTO `yershop_area` VALUES ('620981', '玉门市', '620900');
INSERT INTO `yershop_area` VALUES ('620982', '敦煌市', '620900');
INSERT INTO `yershop_area` VALUES ('621001', '市辖区', '621000');
INSERT INTO `yershop_area` VALUES ('621002', '西峰区', '621000');
INSERT INTO `yershop_area` VALUES ('621021', '庆城县', '621000');
INSERT INTO `yershop_area` VALUES ('621022', '环　县', '621000');
INSERT INTO `yershop_area` VALUES ('621023', '华池县', '621000');
INSERT INTO `yershop_area` VALUES ('621024', '合水县', '621000');
INSERT INTO `yershop_area` VALUES ('621025', '正宁县', '621000');
INSERT INTO `yershop_area` VALUES ('621026', '宁　县', '621000');
INSERT INTO `yershop_area` VALUES ('621027', '镇原县', '621000');
INSERT INTO `yershop_area` VALUES ('621101', '市辖区', '621100');
INSERT INTO `yershop_area` VALUES ('621102', '安定区', '621100');
INSERT INTO `yershop_area` VALUES ('621121', '通渭县', '621100');
INSERT INTO `yershop_area` VALUES ('621122', '陇西县', '621100');
INSERT INTO `yershop_area` VALUES ('621123', '渭源县', '621100');
INSERT INTO `yershop_area` VALUES ('621124', '临洮县', '621100');
INSERT INTO `yershop_area` VALUES ('621125', '漳　县', '621100');
INSERT INTO `yershop_area` VALUES ('621126', '岷　县', '621100');
INSERT INTO `yershop_area` VALUES ('621201', '市辖区', '621200');
INSERT INTO `yershop_area` VALUES ('621202', '武都区', '621200');
INSERT INTO `yershop_area` VALUES ('621221', '成　县', '621200');
INSERT INTO `yershop_area` VALUES ('621222', '文　县', '621200');
INSERT INTO `yershop_area` VALUES ('621223', '宕昌县', '621200');
INSERT INTO `yershop_area` VALUES ('621224', '康　县', '621200');
INSERT INTO `yershop_area` VALUES ('621225', '西和县', '621200');
INSERT INTO `yershop_area` VALUES ('621226', '礼　县', '621200');
INSERT INTO `yershop_area` VALUES ('621227', '徽　县', '621200');
INSERT INTO `yershop_area` VALUES ('621228', '两当县', '621200');
INSERT INTO `yershop_area` VALUES ('622901', '临夏市', '622900');
INSERT INTO `yershop_area` VALUES ('622921', '临夏县', '622900');
INSERT INTO `yershop_area` VALUES ('622922', '康乐县', '622900');
INSERT INTO `yershop_area` VALUES ('622923', '永靖县', '622900');
INSERT INTO `yershop_area` VALUES ('622924', '广河县', '622900');
INSERT INTO `yershop_area` VALUES ('622925', '和政县', '622900');
INSERT INTO `yershop_area` VALUES ('622926', '东乡族自治县', '622900');
INSERT INTO `yershop_area` VALUES ('622927', '积石山保安族东乡族撒拉族自治县', '622900');
INSERT INTO `yershop_area` VALUES ('623001', '合作市', '623000');
INSERT INTO `yershop_area` VALUES ('623021', '临潭县', '623000');
INSERT INTO `yershop_area` VALUES ('623022', '卓尼县', '623000');
INSERT INTO `yershop_area` VALUES ('623023', '舟曲县', '623000');
INSERT INTO `yershop_area` VALUES ('623024', '迭部县', '623000');
INSERT INTO `yershop_area` VALUES ('623025', '玛曲县', '623000');
INSERT INTO `yershop_area` VALUES ('623026', '碌曲县', '623000');
INSERT INTO `yershop_area` VALUES ('623027', '夏河县', '623000');
INSERT INTO `yershop_area` VALUES ('630101', '市辖区', '630100');
INSERT INTO `yershop_area` VALUES ('630102', '城东区', '630100');
INSERT INTO `yershop_area` VALUES ('630103', '城中区', '630100');
INSERT INTO `yershop_area` VALUES ('630104', '城西区', '630100');
INSERT INTO `yershop_area` VALUES ('630105', '城北区', '630100');
INSERT INTO `yershop_area` VALUES ('630121', '大通回族土族自治县', '630100');
INSERT INTO `yershop_area` VALUES ('630122', '湟中县', '630100');
INSERT INTO `yershop_area` VALUES ('630123', '湟源县', '630100');
INSERT INTO `yershop_area` VALUES ('632121', '平安县', '632100');
INSERT INTO `yershop_area` VALUES ('632122', '民和回族土族自治县', '632100');
INSERT INTO `yershop_area` VALUES ('632123', '乐都县', '632100');
INSERT INTO `yershop_area` VALUES ('632126', '互助土族自治县', '632100');
INSERT INTO `yershop_area` VALUES ('632127', '化隆回族自治县', '632100');
INSERT INTO `yershop_area` VALUES ('632128', '循化撒拉族自治县', '632100');
INSERT INTO `yershop_area` VALUES ('632221', '门源回族自治县', '632200');
INSERT INTO `yershop_area` VALUES ('632222', '祁连县', '632200');
INSERT INTO `yershop_area` VALUES ('632223', '海晏县', '632200');
INSERT INTO `yershop_area` VALUES ('632224', '刚察县', '632200');
INSERT INTO `yershop_area` VALUES ('632321', '同仁县', '632300');
INSERT INTO `yershop_area` VALUES ('632322', '尖扎县', '632300');
INSERT INTO `yershop_area` VALUES ('632323', '泽库县', '632300');
INSERT INTO `yershop_area` VALUES ('632324', '河南蒙古族自治县', '632300');
INSERT INTO `yershop_area` VALUES ('632521', '共和县', '632500');
INSERT INTO `yershop_area` VALUES ('632522', '同德县', '632500');
INSERT INTO `yershop_area` VALUES ('632523', '贵德县', '632500');
INSERT INTO `yershop_area` VALUES ('632524', '兴海县', '632500');
INSERT INTO `yershop_area` VALUES ('632525', '贵南县', '632500');
INSERT INTO `yershop_area` VALUES ('632621', '玛沁县', '632600');
INSERT INTO `yershop_area` VALUES ('632622', '班玛县', '632600');
INSERT INTO `yershop_area` VALUES ('632623', '甘德县', '632600');
INSERT INTO `yershop_area` VALUES ('632624', '达日县', '632600');
INSERT INTO `yershop_area` VALUES ('632625', '久治县', '632600');
INSERT INTO `yershop_area` VALUES ('632626', '玛多县', '632600');
INSERT INTO `yershop_area` VALUES ('632721', '玉树县', '632700');
INSERT INTO `yershop_area` VALUES ('632722', '杂多县', '632700');
INSERT INTO `yershop_area` VALUES ('632723', '称多县', '632700');
INSERT INTO `yershop_area` VALUES ('632724', '治多县', '632700');
INSERT INTO `yershop_area` VALUES ('632725', '囊谦县', '632700');
INSERT INTO `yershop_area` VALUES ('632726', '曲麻莱县', '632700');
INSERT INTO `yershop_area` VALUES ('632801', '格尔木市', '632800');
INSERT INTO `yershop_area` VALUES ('632802', '德令哈市', '632800');
INSERT INTO `yershop_area` VALUES ('632821', '乌兰县', '632800');
INSERT INTO `yershop_area` VALUES ('632822', '都兰县', '632800');
INSERT INTO `yershop_area` VALUES ('632823', '天峻县', '632800');
INSERT INTO `yershop_area` VALUES ('640101', '市辖区', '640100');
INSERT INTO `yershop_area` VALUES ('640104', '兴庆区', '640100');
INSERT INTO `yershop_area` VALUES ('640105', '西夏区', '640100');
INSERT INTO `yershop_area` VALUES ('640106', '金凤区', '640100');
INSERT INTO `yershop_area` VALUES ('640121', '永宁县', '640100');
INSERT INTO `yershop_area` VALUES ('640122', '贺兰县', '640100');
INSERT INTO `yershop_area` VALUES ('640181', '灵武市', '640100');
INSERT INTO `yershop_area` VALUES ('640201', '市辖区', '640200');
INSERT INTO `yershop_area` VALUES ('640202', '大武口区', '640200');
INSERT INTO `yershop_area` VALUES ('640205', '惠农区', '640200');
INSERT INTO `yershop_area` VALUES ('640221', '平罗县', '640200');
INSERT INTO `yershop_area` VALUES ('640301', '市辖区', '640300');
INSERT INTO `yershop_area` VALUES ('640302', '利通区', '640300');
INSERT INTO `yershop_area` VALUES ('640323', '盐池县', '640300');
INSERT INTO `yershop_area` VALUES ('640324', '同心县', '640300');
INSERT INTO `yershop_area` VALUES ('640381', '青铜峡市', '640300');
INSERT INTO `yershop_area` VALUES ('640401', '市辖区', '640400');
INSERT INTO `yershop_area` VALUES ('640402', '原州区', '640400');
INSERT INTO `yershop_area` VALUES ('640422', '西吉县', '640400');
INSERT INTO `yershop_area` VALUES ('640423', '隆德县', '640400');
INSERT INTO `yershop_area` VALUES ('640424', '泾源县', '640400');
INSERT INTO `yershop_area` VALUES ('640425', '彭阳县', '640400');
INSERT INTO `yershop_area` VALUES ('640501', '市辖区', '640500');
INSERT INTO `yershop_area` VALUES ('640502', '沙坡头区', '640500');
INSERT INTO `yershop_area` VALUES ('640521', '中宁县', '640500');
INSERT INTO `yershop_area` VALUES ('640522', '海原县', '640500');
INSERT INTO `yershop_area` VALUES ('650101', '市辖区', '650100');
INSERT INTO `yershop_area` VALUES ('650102', '天山区', '650100');
INSERT INTO `yershop_area` VALUES ('650103', '沙依巴克区', '650100');
INSERT INTO `yershop_area` VALUES ('650104', '新市区', '650100');
INSERT INTO `yershop_area` VALUES ('650105', '水磨沟区', '650100');
INSERT INTO `yershop_area` VALUES ('650106', '头屯河区', '650100');
INSERT INTO `yershop_area` VALUES ('650107', '达坂城区', '650100');
INSERT INTO `yershop_area` VALUES ('650108', '东山区', '650100');
INSERT INTO `yershop_area` VALUES ('650121', '乌鲁木齐县', '650100');
INSERT INTO `yershop_area` VALUES ('650201', '市辖区', '650200');
INSERT INTO `yershop_area` VALUES ('650202', '独山子区', '650200');
INSERT INTO `yershop_area` VALUES ('650203', '克拉玛依区', '650200');
INSERT INTO `yershop_area` VALUES ('650204', '白碱滩区', '650200');
INSERT INTO `yershop_area` VALUES ('650205', '乌尔禾区', '650200');
INSERT INTO `yershop_area` VALUES ('652101', '吐鲁番市', '652100');
INSERT INTO `yershop_area` VALUES ('652122', '鄯善县', '652100');
INSERT INTO `yershop_area` VALUES ('652123', '托克逊县', '652100');
INSERT INTO `yershop_area` VALUES ('652201', '哈密市', '652200');
INSERT INTO `yershop_area` VALUES ('652222', '巴里坤哈萨克自治县', '652200');
INSERT INTO `yershop_area` VALUES ('652223', '伊吾县', '652200');
INSERT INTO `yershop_area` VALUES ('652301', '昌吉市', '652300');
INSERT INTO `yershop_area` VALUES ('652302', '阜康市', '652300');
INSERT INTO `yershop_area` VALUES ('652303', '米泉市', '652300');
INSERT INTO `yershop_area` VALUES ('652323', '呼图壁县', '652300');
INSERT INTO `yershop_area` VALUES ('652324', '玛纳斯县', '652300');
INSERT INTO `yershop_area` VALUES ('652325', '奇台县', '652300');
INSERT INTO `yershop_area` VALUES ('652327', '吉木萨尔县', '652300');
INSERT INTO `yershop_area` VALUES ('652328', '木垒哈萨克自治县', '652300');
INSERT INTO `yershop_area` VALUES ('652701', '博乐市', '652700');
INSERT INTO `yershop_area` VALUES ('652722', '精河县', '652700');
INSERT INTO `yershop_area` VALUES ('652723', '温泉县', '652700');
INSERT INTO `yershop_area` VALUES ('652801', '库尔勒市', '652800');
INSERT INTO `yershop_area` VALUES ('652822', '轮台县', '652800');
INSERT INTO `yershop_area` VALUES ('652823', '尉犁县', '652800');
INSERT INTO `yershop_area` VALUES ('652824', '若羌县', '652800');
INSERT INTO `yershop_area` VALUES ('652825', '且末县', '652800');
INSERT INTO `yershop_area` VALUES ('652826', '焉耆回族自治县', '652800');
INSERT INTO `yershop_area` VALUES ('652827', '和静县', '652800');
INSERT INTO `yershop_area` VALUES ('652828', '和硕县', '652800');
INSERT INTO `yershop_area` VALUES ('652829', '博湖县', '652800');
INSERT INTO `yershop_area` VALUES ('652901', '阿克苏市', '652900');
INSERT INTO `yershop_area` VALUES ('652922', '温宿县', '652900');
INSERT INTO `yershop_area` VALUES ('652923', '库车县', '652900');
INSERT INTO `yershop_area` VALUES ('652924', '沙雅县', '652900');
INSERT INTO `yershop_area` VALUES ('652925', '新和县', '652900');
INSERT INTO `yershop_area` VALUES ('652926', '拜城县', '652900');
INSERT INTO `yershop_area` VALUES ('652927', '乌什县', '652900');
INSERT INTO `yershop_area` VALUES ('652928', '阿瓦提县', '652900');
INSERT INTO `yershop_area` VALUES ('652929', '柯坪县', '652900');
INSERT INTO `yershop_area` VALUES ('653001', '阿图什市', '653000');
INSERT INTO `yershop_area` VALUES ('653022', '阿克陶县', '653000');
INSERT INTO `yershop_area` VALUES ('653023', '阿合奇县', '653000');
INSERT INTO `yershop_area` VALUES ('653024', '乌恰县', '653000');
INSERT INTO `yershop_area` VALUES ('653101', '喀什市', '653100');
INSERT INTO `yershop_area` VALUES ('653121', '疏附县', '653100');
INSERT INTO `yershop_area` VALUES ('653122', '疏勒县', '653100');
INSERT INTO `yershop_area` VALUES ('653123', '英吉沙县', '653100');
INSERT INTO `yershop_area` VALUES ('653124', '泽普县', '653100');
INSERT INTO `yershop_area` VALUES ('653125', '莎车县', '653100');
INSERT INTO `yershop_area` VALUES ('653126', '叶城县', '653100');
INSERT INTO `yershop_area` VALUES ('653127', '麦盖提县', '653100');
INSERT INTO `yershop_area` VALUES ('653128', '岳普湖县', '653100');
INSERT INTO `yershop_area` VALUES ('653129', '伽师县', '653100');
INSERT INTO `yershop_area` VALUES ('653130', '巴楚县', '653100');
INSERT INTO `yershop_area` VALUES ('653131', '塔什库尔干塔吉克自治县', '653100');
INSERT INTO `yershop_area` VALUES ('653201', '和田市', '653200');
INSERT INTO `yershop_area` VALUES ('653221', '和田县', '653200');
INSERT INTO `yershop_area` VALUES ('653222', '墨玉县', '653200');
INSERT INTO `yershop_area` VALUES ('653223', '皮山县', '653200');
INSERT INTO `yershop_area` VALUES ('653224', '洛浦县', '653200');
INSERT INTO `yershop_area` VALUES ('653225', '策勒县', '653200');
INSERT INTO `yershop_area` VALUES ('653226', '于田县', '653200');
INSERT INTO `yershop_area` VALUES ('653227', '民丰县', '653200');
INSERT INTO `yershop_area` VALUES ('654002', '伊宁市', '654000');
INSERT INTO `yershop_area` VALUES ('654003', '奎屯市', '654000');
INSERT INTO `yershop_area` VALUES ('654021', '伊宁县', '654000');
INSERT INTO `yershop_area` VALUES ('654022', '察布查尔锡伯自治县', '654000');
INSERT INTO `yershop_area` VALUES ('654023', '霍城县', '654000');
INSERT INTO `yershop_area` VALUES ('654024', '巩留县', '654000');
INSERT INTO `yershop_area` VALUES ('654025', '新源县', '654000');
INSERT INTO `yershop_area` VALUES ('654026', '昭苏县', '654000');
INSERT INTO `yershop_area` VALUES ('654027', '特克斯县', '654000');
INSERT INTO `yershop_area` VALUES ('654028', '尼勒克县', '654000');
INSERT INTO `yershop_area` VALUES ('654201', '塔城市', '654200');
INSERT INTO `yershop_area` VALUES ('654202', '乌苏市', '654200');
INSERT INTO `yershop_area` VALUES ('654221', '额敏县', '654200');
INSERT INTO `yershop_area` VALUES ('654223', '沙湾县', '654200');
INSERT INTO `yershop_area` VALUES ('654224', '托里县', '654200');
INSERT INTO `yershop_area` VALUES ('654225', '裕民县', '654200');
INSERT INTO `yershop_area` VALUES ('654226', '和布克赛尔蒙古自治县', '654200');
INSERT INTO `yershop_area` VALUES ('654301', '阿勒泰市', '654300');
INSERT INTO `yershop_area` VALUES ('654321', '布尔津县', '654300');
INSERT INTO `yershop_area` VALUES ('654322', '富蕴县', '654300');
INSERT INTO `yershop_area` VALUES ('654323', '福海县', '654300');
INSERT INTO `yershop_area` VALUES ('654324', '哈巴河县', '654300');
INSERT INTO `yershop_area` VALUES ('654325', '青河县', '654300');
INSERT INTO `yershop_area` VALUES ('654326', '吉木乃县', '654300');
INSERT INTO `yershop_area` VALUES ('659001', '石河子市', '659000');
INSERT INTO `yershop_area` VALUES ('659002', '阿拉尔市', '659000');
INSERT INTO `yershop_area` VALUES ('659003', '图木舒克市', '659000');
INSERT INTO `yershop_area` VALUES ('659004', '五家渠市', '659000');
INSERT INTO `yershop_area` VALUES ('120100', '天津市', '120000');
INSERT INTO `yershop_area` VALUES ('130100', '石家庄市', '130000');
INSERT INTO `yershop_area` VALUES ('130200', '唐山市', '130000');
INSERT INTO `yershop_area` VALUES ('130300', '秦皇岛市', '130000');
INSERT INTO `yershop_area` VALUES ('130400', '邯郸市', '130000');
INSERT INTO `yershop_area` VALUES ('130500', '邢台市', '130000');
INSERT INTO `yershop_area` VALUES ('130600', '保定市', '130000');
INSERT INTO `yershop_area` VALUES ('130700', '张家口市', '130000');
INSERT INTO `yershop_area` VALUES ('130800', '承德市', '130000');
INSERT INTO `yershop_area` VALUES ('130900', '沧州市', '130000');
INSERT INTO `yershop_area` VALUES ('131000', '廊坊市', '130000');
INSERT INTO `yershop_area` VALUES ('131100', '衡水市', '130000');
INSERT INTO `yershop_area` VALUES ('140100', '太原市', '140000');
INSERT INTO `yershop_area` VALUES ('140200', '大同市', '140000');
INSERT INTO `yershop_area` VALUES ('140300', '阳泉市', '140000');
INSERT INTO `yershop_area` VALUES ('140400', '长治市', '140000');
INSERT INTO `yershop_area` VALUES ('140500', '晋城市', '140000');
INSERT INTO `yershop_area` VALUES ('140600', '朔州市', '140000');
INSERT INTO `yershop_area` VALUES ('140700', '晋中市', '140000');
INSERT INTO `yershop_area` VALUES ('140800', '运城市', '140000');
INSERT INTO `yershop_area` VALUES ('140900', '忻州市', '140000');
INSERT INTO `yershop_area` VALUES ('141000', '临汾市', '140000');
INSERT INTO `yershop_area` VALUES ('141100', '吕梁市', '140000');
INSERT INTO `yershop_area` VALUES ('150100', '呼和浩特市', '150000');
INSERT INTO `yershop_area` VALUES ('150200', '包头市', '150000');
INSERT INTO `yershop_area` VALUES ('150300', '乌海市', '150000');
INSERT INTO `yershop_area` VALUES ('150400', '赤峰市', '150000');
INSERT INTO `yershop_area` VALUES ('150500', '通辽市', '150000');
INSERT INTO `yershop_area` VALUES ('150600', '鄂尔多斯市', '150000');
INSERT INTO `yershop_area` VALUES ('150700', '呼伦贝尔市', '150000');
INSERT INTO `yershop_area` VALUES ('150800', '巴彦淖尔市', '150000');
INSERT INTO `yershop_area` VALUES ('150900', '乌兰察布市', '150000');
INSERT INTO `yershop_area` VALUES ('152200', '兴安盟', '150000');
INSERT INTO `yershop_area` VALUES ('152500', '锡林郭勒盟', '150000');
INSERT INTO `yershop_area` VALUES ('152900', '阿拉善盟', '150000');
INSERT INTO `yershop_area` VALUES ('210100', '沈阳市', '210000');
INSERT INTO `yershop_area` VALUES ('210200', '大连市', '210000');
INSERT INTO `yershop_area` VALUES ('210300', '鞍山市', '210000');
INSERT INTO `yershop_area` VALUES ('210400', '抚顺市', '210000');
INSERT INTO `yershop_area` VALUES ('210500', '本溪市', '210000');
INSERT INTO `yershop_area` VALUES ('210600', '丹东市', '210000');
INSERT INTO `yershop_area` VALUES ('210700', '锦州市', '210000');
INSERT INTO `yershop_area` VALUES ('210800', '营口市', '210000');
INSERT INTO `yershop_area` VALUES ('210900', '阜新市', '210000');
INSERT INTO `yershop_area` VALUES ('211000', '辽阳市', '210000');
INSERT INTO `yershop_area` VALUES ('211100', '盘锦市', '210000');
INSERT INTO `yershop_area` VALUES ('211200', '铁岭市', '210000');
INSERT INTO `yershop_area` VALUES ('211300', '朝阳市', '210000');
INSERT INTO `yershop_area` VALUES ('211400', '葫芦岛市', '210000');
INSERT INTO `yershop_area` VALUES ('220100', '长春市', '220000');
INSERT INTO `yershop_area` VALUES ('220200', '吉林市', '220000');
INSERT INTO `yershop_area` VALUES ('220300', '四平市', '220000');
INSERT INTO `yershop_area` VALUES ('220400', '辽源市', '220000');
INSERT INTO `yershop_area` VALUES ('220500', '通化市', '220000');
INSERT INTO `yershop_area` VALUES ('220600', '白山市', '220000');
INSERT INTO `yershop_area` VALUES ('220700', '松原市', '220000');
INSERT INTO `yershop_area` VALUES ('220800', '白城市', '220000');
INSERT INTO `yershop_area` VALUES ('222400', '延边朝鲜族自治州', '220000');
INSERT INTO `yershop_area` VALUES ('230100', '哈尔滨市', '230000');
INSERT INTO `yershop_area` VALUES ('230200', '齐齐哈尔市', '230000');
INSERT INTO `yershop_area` VALUES ('230300', '鸡西市', '230000');
INSERT INTO `yershop_area` VALUES ('230400', '鹤岗市', '230000');
INSERT INTO `yershop_area` VALUES ('230500', '双鸭山市', '230000');
INSERT INTO `yershop_area` VALUES ('230600', '大庆市', '230000');
INSERT INTO `yershop_area` VALUES ('230700', '伊春市', '230000');
INSERT INTO `yershop_area` VALUES ('230800', '佳木斯市', '230000');
INSERT INTO `yershop_area` VALUES ('230900', '七台河市', '230000');
INSERT INTO `yershop_area` VALUES ('231000', '牡丹江市', '230000');
INSERT INTO `yershop_area` VALUES ('231100', '黑河市', '230000');
INSERT INTO `yershop_area` VALUES ('231200', '绥化市', '230000');
INSERT INTO `yershop_area` VALUES ('232700', '大兴安岭地区', '230000');
INSERT INTO `yershop_area` VALUES ('310100', '上海市', '310000');
INSERT INTO `yershop_area` VALUES ('320100', '南京市', '320000');
INSERT INTO `yershop_area` VALUES ('320200', '无锡市', '320000');
INSERT INTO `yershop_area` VALUES ('320300', '徐州市', '320000');
INSERT INTO `yershop_area` VALUES ('320400', '常州市', '320000');
INSERT INTO `yershop_area` VALUES ('320500', '苏州市', '320000');
INSERT INTO `yershop_area` VALUES ('320600', '南通市', '320000');
INSERT INTO `yershop_area` VALUES ('320700', '连云港市', '320000');
INSERT INTO `yershop_area` VALUES ('320800', '淮安市', '320000');
INSERT INTO `yershop_area` VALUES ('320900', '盐城市', '320000');
INSERT INTO `yershop_area` VALUES ('321000', '扬州市', '320000');
INSERT INTO `yershop_area` VALUES ('321100', '镇江市', '320000');
INSERT INTO `yershop_area` VALUES ('321200', '泰州市', '320000');
INSERT INTO `yershop_area` VALUES ('321300', '宿迁市', '320000');
INSERT INTO `yershop_area` VALUES ('330100', '杭州市', '330000');
INSERT INTO `yershop_area` VALUES ('330200', '宁波市', '330000');
INSERT INTO `yershop_area` VALUES ('330300', '温州市', '330000');
INSERT INTO `yershop_area` VALUES ('330400', '嘉兴市', '330000');
INSERT INTO `yershop_area` VALUES ('330500', '湖州市', '330000');
INSERT INTO `yershop_area` VALUES ('330600', '绍兴市', '330000');
INSERT INTO `yershop_area` VALUES ('330700', '金华市', '330000');
INSERT INTO `yershop_area` VALUES ('330800', '衢州市', '330000');
INSERT INTO `yershop_area` VALUES ('330900', '舟山市', '330000');
INSERT INTO `yershop_area` VALUES ('331000', '台州市', '330000');
INSERT INTO `yershop_area` VALUES ('331100', '丽水市', '330000');
INSERT INTO `yershop_area` VALUES ('340100', '合肥市', '340000');
INSERT INTO `yershop_area` VALUES ('340200', '芜湖市', '340000');
INSERT INTO `yershop_area` VALUES ('340300', '蚌埠市', '340000');
INSERT INTO `yershop_area` VALUES ('340400', '淮南市', '340000');
INSERT INTO `yershop_area` VALUES ('340500', '马鞍山市', '340000');
INSERT INTO `yershop_area` VALUES ('340600', '淮北市', '340000');
INSERT INTO `yershop_area` VALUES ('340700', '铜陵市', '340000');
INSERT INTO `yershop_area` VALUES ('340800', '安庆市', '340000');
INSERT INTO `yershop_area` VALUES ('341000', '黄山市', '340000');
INSERT INTO `yershop_area` VALUES ('341100', '滁州市', '340000');
INSERT INTO `yershop_area` VALUES ('341200', '阜阳市', '340000');
INSERT INTO `yershop_area` VALUES ('341300', '宿州市', '340000');
INSERT INTO `yershop_area` VALUES ('341400', '巢湖市', '340000');
INSERT INTO `yershop_area` VALUES ('341500', '六安市', '340000');
INSERT INTO `yershop_area` VALUES ('341600', '亳州市', '340000');
INSERT INTO `yershop_area` VALUES ('341700', '池州市', '340000');
INSERT INTO `yershop_area` VALUES ('341800', '宣城市', '340000');
INSERT INTO `yershop_area` VALUES ('350100', '福州市', '350000');
INSERT INTO `yershop_area` VALUES ('350200', '厦门市', '350000');
INSERT INTO `yershop_area` VALUES ('350300', '莆田市', '350000');
INSERT INTO `yershop_area` VALUES ('350400', '三明市', '350000');
INSERT INTO `yershop_area` VALUES ('350500', '泉州市', '350000');
INSERT INTO `yershop_area` VALUES ('350600', '漳州市', '350000');
INSERT INTO `yershop_area` VALUES ('350700', '南平市', '350000');
INSERT INTO `yershop_area` VALUES ('350800', '龙岩市', '350000');
INSERT INTO `yershop_area` VALUES ('350900', '宁德市', '350000');
INSERT INTO `yershop_area` VALUES ('360100', '南昌市', '360000');
INSERT INTO `yershop_area` VALUES ('360200', '景德镇市', '360000');
INSERT INTO `yershop_area` VALUES ('360300', '萍乡市', '360000');
INSERT INTO `yershop_area` VALUES ('360400', '九江市', '360000');
INSERT INTO `yershop_area` VALUES ('360500', '新余市', '360000');
INSERT INTO `yershop_area` VALUES ('360600', '鹰潭市', '360000');
INSERT INTO `yershop_area` VALUES ('360700', '赣州市', '360000');
INSERT INTO `yershop_area` VALUES ('360800', '吉安市', '360000');
INSERT INTO `yershop_area` VALUES ('360900', '宜春市', '360000');
INSERT INTO `yershop_area` VALUES ('361000', '抚州市', '360000');
INSERT INTO `yershop_area` VALUES ('361100', '上饶市', '360000');
INSERT INTO `yershop_area` VALUES ('370100', '济南市', '370000');
INSERT INTO `yershop_area` VALUES ('370200', '青岛市', '370000');
INSERT INTO `yershop_area` VALUES ('370300', '淄博市', '370000');
INSERT INTO `yershop_area` VALUES ('370400', '枣庄市', '370000');
INSERT INTO `yershop_area` VALUES ('370500', '东营市', '370000');
INSERT INTO `yershop_area` VALUES ('370600', '烟台市', '370000');
INSERT INTO `yershop_area` VALUES ('370700', '潍坊市', '370000');
INSERT INTO `yershop_area` VALUES ('370800', '济宁市', '370000');
INSERT INTO `yershop_area` VALUES ('370900', '泰安市', '370000');
INSERT INTO `yershop_area` VALUES ('371000', '威海市', '370000');
INSERT INTO `yershop_area` VALUES ('371100', '日照市', '370000');
INSERT INTO `yershop_area` VALUES ('371200', '莱芜市', '370000');
INSERT INTO `yershop_area` VALUES ('371300', '临沂市', '370000');
INSERT INTO `yershop_area` VALUES ('371400', '德州市', '370000');
INSERT INTO `yershop_area` VALUES ('371500', '聊城市', '370000');
INSERT INTO `yershop_area` VALUES ('371600', '滨州市', '370000');
INSERT INTO `yershop_area` VALUES ('371700', '荷泽市', '370000');
INSERT INTO `yershop_area` VALUES ('410100', '郑州市', '410000');
INSERT INTO `yershop_area` VALUES ('410200', '开封市', '410000');
INSERT INTO `yershop_area` VALUES ('410300', '洛阳市', '410000');
INSERT INTO `yershop_area` VALUES ('410400', '平顶山市', '410000');
INSERT INTO `yershop_area` VALUES ('410500', '安阳市', '410000');
INSERT INTO `yershop_area` VALUES ('410600', '鹤壁市', '410000');
INSERT INTO `yershop_area` VALUES ('410700', '新乡市', '410000');
INSERT INTO `yershop_area` VALUES ('410800', '焦作市', '410000');
INSERT INTO `yershop_area` VALUES ('410900', '濮阳市', '410000');
INSERT INTO `yershop_area` VALUES ('411000', '许昌市', '410000');
INSERT INTO `yershop_area` VALUES ('411100', '漯河市', '410000');
INSERT INTO `yershop_area` VALUES ('411200', '三门峡市', '410000');
INSERT INTO `yershop_area` VALUES ('411300', '南阳市', '410000');
INSERT INTO `yershop_area` VALUES ('411400', '商丘市', '410000');
INSERT INTO `yershop_area` VALUES ('411500', '信阳市', '410000');
INSERT INTO `yershop_area` VALUES ('411600', '周口市', '410000');
INSERT INTO `yershop_area` VALUES ('411700', '驻马店市', '410000');
INSERT INTO `yershop_area` VALUES ('420100', '武汉市', '420000');
INSERT INTO `yershop_area` VALUES ('420200', '黄石市', '420000');
INSERT INTO `yershop_area` VALUES ('420300', '十堰市', '420000');
INSERT INTO `yershop_area` VALUES ('420500', '宜昌市', '420000');
INSERT INTO `yershop_area` VALUES ('420600', '襄樊市', '420000');
INSERT INTO `yershop_area` VALUES ('420700', '鄂州市', '420000');
INSERT INTO `yershop_area` VALUES ('420800', '荆门市', '420000');
INSERT INTO `yershop_area` VALUES ('420900', '孝感市', '420000');
INSERT INTO `yershop_area` VALUES ('421000', '荆州市', '420000');
INSERT INTO `yershop_area` VALUES ('421100', '黄冈市', '420000');
INSERT INTO `yershop_area` VALUES ('421200', '咸宁市', '420000');
INSERT INTO `yershop_area` VALUES ('421300', '随州市', '420000');
INSERT INTO `yershop_area` VALUES ('422800', '恩施土家族苗族自治州', '420000');
INSERT INTO `yershop_area` VALUES ('429000', '省直辖行政单位', '420000');
INSERT INTO `yershop_area` VALUES ('430100', '长沙市', '430000');
INSERT INTO `yershop_area` VALUES ('430200', '株洲市', '430000');
INSERT INTO `yershop_area` VALUES ('430300', '湘潭市', '430000');
INSERT INTO `yershop_area` VALUES ('430400', '衡阳市', '430000');
INSERT INTO `yershop_area` VALUES ('430500', '邵阳市', '430000');
INSERT INTO `yershop_area` VALUES ('430600', '岳阳市', '430000');
INSERT INTO `yershop_area` VALUES ('430700', '常德市', '430000');
INSERT INTO `yershop_area` VALUES ('430800', '张家界市', '430000');
INSERT INTO `yershop_area` VALUES ('430900', '益阳市', '430000');
INSERT INTO `yershop_area` VALUES ('431000', '郴州市', '430000');
INSERT INTO `yershop_area` VALUES ('431100', '永州市', '430000');
INSERT INTO `yershop_area` VALUES ('431200', '怀化市', '430000');
INSERT INTO `yershop_area` VALUES ('431300', '娄底市', '430000');
INSERT INTO `yershop_area` VALUES ('433100', '湘西土家族苗族自治州', '430000');
INSERT INTO `yershop_area` VALUES ('440100', '广州市', '440000');
INSERT INTO `yershop_area` VALUES ('440200', '韶关市', '440000');
INSERT INTO `yershop_area` VALUES ('440300', '深圳市', '440000');
INSERT INTO `yershop_area` VALUES ('440400', '珠海市', '440000');
INSERT INTO `yershop_area` VALUES ('440500', '汕头市', '440000');
INSERT INTO `yershop_area` VALUES ('440600', '佛山市', '440000');
INSERT INTO `yershop_area` VALUES ('440700', '江门市', '440000');
INSERT INTO `yershop_area` VALUES ('440800', '湛江市', '440000');
INSERT INTO `yershop_area` VALUES ('440900', '茂名市', '440000');
INSERT INTO `yershop_area` VALUES ('441200', '肇庆市', '440000');
INSERT INTO `yershop_area` VALUES ('441300', '惠州市', '440000');
INSERT INTO `yershop_area` VALUES ('441400', '梅州市', '440000');
INSERT INTO `yershop_area` VALUES ('441500', '汕尾市', '440000');
INSERT INTO `yershop_area` VALUES ('441600', '河源市', '440000');
INSERT INTO `yershop_area` VALUES ('441700', '阳江市', '440000');
INSERT INTO `yershop_area` VALUES ('441800', '清远市', '440000');
INSERT INTO `yershop_area` VALUES ('441900', '东莞市', '440000');
INSERT INTO `yershop_area` VALUES ('442000', '中山市', '440000');
INSERT INTO `yershop_area` VALUES ('445100', '潮州市', '440000');
INSERT INTO `yershop_area` VALUES ('445200', '揭阳市', '440000');
INSERT INTO `yershop_area` VALUES ('445300', '云浮市', '440000');
INSERT INTO `yershop_area` VALUES ('450100', '南宁市', '450000');
INSERT INTO `yershop_area` VALUES ('450200', '柳州市', '450000');
INSERT INTO `yershop_area` VALUES ('450300', '桂林市', '450000');
INSERT INTO `yershop_area` VALUES ('450400', '梧州市', '450000');
INSERT INTO `yershop_area` VALUES ('450500', '北海市', '450000');
INSERT INTO `yershop_area` VALUES ('450600', '防城港市', '450000');
INSERT INTO `yershop_area` VALUES ('450700', '钦州市', '450000');
INSERT INTO `yershop_area` VALUES ('450800', '贵港市', '450000');
INSERT INTO `yershop_area` VALUES ('450900', '玉林市', '450000');
INSERT INTO `yershop_area` VALUES ('451000', '百色市', '450000');
INSERT INTO `yershop_area` VALUES ('451100', '贺州市', '450000');
INSERT INTO `yershop_area` VALUES ('451200', '河池市', '450000');
INSERT INTO `yershop_area` VALUES ('451300', '来宾市', '450000');
INSERT INTO `yershop_area` VALUES ('451400', '崇左市', '450000');
INSERT INTO `yershop_area` VALUES ('460100', '海口市', '460000');
INSERT INTO `yershop_area` VALUES ('460200', '三亚市', '460000');
INSERT INTO `yershop_area` VALUES ('469000', '省直辖县级行政单位', '460000');
INSERT INTO `yershop_area` VALUES ('500100', '市辖区', '500000');
INSERT INTO `yershop_area` VALUES ('500200', '县', '500000');
INSERT INTO `yershop_area` VALUES ('500300', '市', '500000');
INSERT INTO `yershop_area` VALUES ('510100', '成都市', '510000');
INSERT INTO `yershop_area` VALUES ('510300', '自贡市', '510000');
INSERT INTO `yershop_area` VALUES ('510400', '攀枝花市', '510000');
INSERT INTO `yershop_area` VALUES ('510500', '泸州市', '510000');
INSERT INTO `yershop_area` VALUES ('510600', '德阳市', '510000');
INSERT INTO `yershop_area` VALUES ('510700', '绵阳市', '510000');
INSERT INTO `yershop_area` VALUES ('510800', '广元市', '510000');
INSERT INTO `yershop_area` VALUES ('510900', '遂宁市', '510000');
INSERT INTO `yershop_area` VALUES ('511000', '内江市', '510000');
INSERT INTO `yershop_area` VALUES ('511100', '乐山市', '510000');
INSERT INTO `yershop_area` VALUES ('511300', '南充市', '510000');
INSERT INTO `yershop_area` VALUES ('511400', '眉山市', '510000');
INSERT INTO `yershop_area` VALUES ('511500', '宜宾市', '510000');
INSERT INTO `yershop_area` VALUES ('511600', '广安市', '510000');
INSERT INTO `yershop_area` VALUES ('511700', '达州市', '510000');
INSERT INTO `yershop_area` VALUES ('511800', '雅安市', '510000');
INSERT INTO `yershop_area` VALUES ('511900', '巴中市', '510000');
INSERT INTO `yershop_area` VALUES ('512000', '资阳市', '510000');
INSERT INTO `yershop_area` VALUES ('513200', '阿坝藏族羌族自治州', '510000');
INSERT INTO `yershop_area` VALUES ('513300', '甘孜藏族自治州', '510000');
INSERT INTO `yershop_area` VALUES ('513400', '凉山彝族自治州', '510000');
INSERT INTO `yershop_area` VALUES ('520100', '贵阳市', '520000');
INSERT INTO `yershop_area` VALUES ('520200', '六盘水市', '520000');
INSERT INTO `yershop_area` VALUES ('520300', '遵义市', '520000');
INSERT INTO `yershop_area` VALUES ('520400', '安顺市', '520000');
INSERT INTO `yershop_area` VALUES ('522200', '铜仁地区', '520000');
INSERT INTO `yershop_area` VALUES ('522300', '黔西南布依族苗族自治州', '520000');
INSERT INTO `yershop_area` VALUES ('522400', '毕节地区', '520000');
INSERT INTO `yershop_area` VALUES ('522600', '黔东南苗族侗族自治州', '520000');
INSERT INTO `yershop_area` VALUES ('522700', '黔南布依族苗族自治州', '520000');
INSERT INTO `yershop_area` VALUES ('530100', '昆明市', '530000');
INSERT INTO `yershop_area` VALUES ('530300', '曲靖市', '530000');
INSERT INTO `yershop_area` VALUES ('530400', '玉溪市', '530000');
INSERT INTO `yershop_area` VALUES ('530500', '保山市', '530000');
INSERT INTO `yershop_area` VALUES ('530600', '昭通市', '530000');
INSERT INTO `yershop_area` VALUES ('530700', '丽江市', '530000');
INSERT INTO `yershop_area` VALUES ('530800', '思茅市', '530000');
INSERT INTO `yershop_area` VALUES ('530900', '临沧市', '530000');
INSERT INTO `yershop_area` VALUES ('532300', '楚雄彝族自治州', '530000');
INSERT INTO `yershop_area` VALUES ('532500', '红河哈尼族彝族自治州', '530000');
INSERT INTO `yershop_area` VALUES ('532600', '文山壮族苗族自治州', '530000');
INSERT INTO `yershop_area` VALUES ('532800', '西双版纳傣族自治州', '530000');
INSERT INTO `yershop_area` VALUES ('532900', '大理白族自治州', '530000');
INSERT INTO `yershop_area` VALUES ('533100', '德宏傣族景颇族自治州', '530000');
INSERT INTO `yershop_area` VALUES ('533300', '怒江傈僳族自治州', '530000');
INSERT INTO `yershop_area` VALUES ('533400', '迪庆藏族自治州', '530000');
INSERT INTO `yershop_area` VALUES ('540100', '拉萨市', '540000');
INSERT INTO `yershop_area` VALUES ('542100', '昌都地区', '540000');
INSERT INTO `yershop_area` VALUES ('542200', '山南地区', '540000');
INSERT INTO `yershop_area` VALUES ('542300', '日喀则地区', '540000');
INSERT INTO `yershop_area` VALUES ('542400', '那曲地区', '540000');
INSERT INTO `yershop_area` VALUES ('542500', '阿里地区', '540000');
INSERT INTO `yershop_area` VALUES ('542600', '林芝地区', '540000');
INSERT INTO `yershop_area` VALUES ('610100', '西安市', '610000');
INSERT INTO `yershop_area` VALUES ('610200', '铜川市', '610000');
INSERT INTO `yershop_area` VALUES ('610300', '宝鸡市', '610000');
INSERT INTO `yershop_area` VALUES ('610400', '咸阳市', '610000');
INSERT INTO `yershop_area` VALUES ('610500', '渭南市', '610000');
INSERT INTO `yershop_area` VALUES ('610600', '延安市', '610000');
INSERT INTO `yershop_area` VALUES ('610700', '汉中市', '610000');
INSERT INTO `yershop_area` VALUES ('610800', '榆林市', '610000');
INSERT INTO `yershop_area` VALUES ('610900', '安康市', '610000');
INSERT INTO `yershop_area` VALUES ('611000', '商洛市', '610000');
INSERT INTO `yershop_area` VALUES ('620100', '兰州市', '620000');
INSERT INTO `yershop_area` VALUES ('620200', '嘉峪关市', '620000');
INSERT INTO `yershop_area` VALUES ('620300', '金昌市', '620000');
INSERT INTO `yershop_area` VALUES ('620400', '白银市', '620000');
INSERT INTO `yershop_area` VALUES ('620500', '天水市', '620000');
INSERT INTO `yershop_area` VALUES ('620600', '武威市', '620000');
INSERT INTO `yershop_area` VALUES ('620700', '张掖市', '620000');
INSERT INTO `yershop_area` VALUES ('620800', '平凉市', '620000');
INSERT INTO `yershop_area` VALUES ('620900', '酒泉市', '620000');
INSERT INTO `yershop_area` VALUES ('621000', '庆阳市', '620000');
INSERT INTO `yershop_area` VALUES ('621100', '定西市', '620000');
INSERT INTO `yershop_area` VALUES ('621200', '陇南市', '620000');
INSERT INTO `yershop_area` VALUES ('622900', '临夏回族自治州', '620000');
INSERT INTO `yershop_area` VALUES ('623000', '甘南藏族自治州', '620000');
INSERT INTO `yershop_area` VALUES ('630100', '西宁市', '630000');
INSERT INTO `yershop_area` VALUES ('632100', '海东地区', '630000');
INSERT INTO `yershop_area` VALUES ('632200', '海北藏族自治州', '630000');
INSERT INTO `yershop_area` VALUES ('632300', '黄南藏族自治州', '630000');
INSERT INTO `yershop_area` VALUES ('632500', '海南藏族自治州', '630000');
INSERT INTO `yershop_area` VALUES ('632600', '果洛藏族自治州', '630000');
INSERT INTO `yershop_area` VALUES ('632700', '玉树藏族自治州', '630000');
INSERT INTO `yershop_area` VALUES ('632800', '海西蒙古族藏族自治州', '630000');
INSERT INTO `yershop_area` VALUES ('640100', '银川市', '640000');
INSERT INTO `yershop_area` VALUES ('640200', '石嘴山市', '640000');
INSERT INTO `yershop_area` VALUES ('640300', '吴忠市', '640000');
INSERT INTO `yershop_area` VALUES ('640400', '固原市', '640000');
INSERT INTO `yershop_area` VALUES ('640500', '中卫市', '640000');
INSERT INTO `yershop_area` VALUES ('650100', '乌鲁木齐市', '650000');
INSERT INTO `yershop_area` VALUES ('650200', '克拉玛依市', '650000');
INSERT INTO `yershop_area` VALUES ('652100', '吐鲁番地区', '650000');
INSERT INTO `yershop_area` VALUES ('652200', '哈密地区', '650000');
INSERT INTO `yershop_area` VALUES ('652300', '昌吉回族自治州', '650000');
INSERT INTO `yershop_area` VALUES ('652700', '博尔塔拉蒙古自治州', '650000');
INSERT INTO `yershop_area` VALUES ('652800', '巴音郭楞蒙古自治州', '650000');
INSERT INTO `yershop_area` VALUES ('652900', '阿克苏地区', '650000');
INSERT INTO `yershop_area` VALUES ('653000', '克孜勒苏柯尔克孜自治州', '650000');
INSERT INTO `yershop_area` VALUES ('653100', '喀什地区', '650000');
INSERT INTO `yershop_area` VALUES ('653200', '和田地区', '650000');
INSERT INTO `yershop_area` VALUES ('654000', '伊犁哈萨克自治州', '650000');
INSERT INTO `yershop_area` VALUES ('654200', '塔城地区', '650000');
INSERT INTO `yershop_area` VALUES ('654300', '阿勒泰地区', '650000');
INSERT INTO `yershop_area` VALUES ('659000', '省直辖行政单位', '650000');
INSERT INTO `yershop_area` VALUES ('110000', '北京', '0');
INSERT INTO `yershop_area` VALUES ('120000', '天津', '0');
INSERT INTO `yershop_area` VALUES ('130000', '河北', '0');
INSERT INTO `yershop_area` VALUES ('140000', '山西', '0');
INSERT INTO `yershop_area` VALUES ('150000', '内蒙古', '0');
INSERT INTO `yershop_area` VALUES ('210000', '辽宁', '0');
INSERT INTO `yershop_area` VALUES ('220000', '吉林', '0');
INSERT INTO `yershop_area` VALUES ('230000', '黑龙江', '0');
INSERT INTO `yershop_area` VALUES ('310000', '上海', '0');
INSERT INTO `yershop_area` VALUES ('320000', '江苏', '0');
INSERT INTO `yershop_area` VALUES ('330000', '浙江', '0');
INSERT INTO `yershop_area` VALUES ('340000', '安徽', '0');
INSERT INTO `yershop_area` VALUES ('350000', '福建', '0');
INSERT INTO `yershop_area` VALUES ('360000', '江西', '0');
INSERT INTO `yershop_area` VALUES ('370000', '山东', '0');
INSERT INTO `yershop_area` VALUES ('410000', '河南', '0');
INSERT INTO `yershop_area` VALUES ('420000', '湖北', '0');
INSERT INTO `yershop_area` VALUES ('430000', '湖南', '0');
INSERT INTO `yershop_area` VALUES ('440000', '广东', '0');
INSERT INTO `yershop_area` VALUES ('450000', '广西', '0');
INSERT INTO `yershop_area` VALUES ('460000', '海南', '0');
INSERT INTO `yershop_area` VALUES ('500000', '重庆', '0');
INSERT INTO `yershop_area` VALUES ('510000', '四川', '0');
INSERT INTO `yershop_area` VALUES ('520000', '贵州', '0');
INSERT INTO `yershop_area` VALUES ('530000', '云南', '0');
INSERT INTO `yershop_area` VALUES ('540000', '西藏', '0');
INSERT INTO `yershop_area` VALUES ('610000', '陕西', '0');
INSERT INTO `yershop_area` VALUES ('620000', '甘肃', '0');
INSERT INTO `yershop_area` VALUES ('630000', '青海', '0');
INSERT INTO `yershop_area` VALUES ('640000', '宁夏', '0');
INSERT INTO `yershop_area` VALUES ('650000', '新疆', '0');
INSERT INTO `yershop_area` VALUES ('710000', '台湾', '0');
INSERT INTO `yershop_area` VALUES ('810000', '香港', '0');
INSERT INTO `yershop_area` VALUES ('820000', '澳门', '0');
INSERT INTO `yershop_area` VALUES ('820001', '北京市', '110000');

-- ----------------------------
-- Table structure for yershop_attachment
-- ----------------------------
DROP TABLE IF EXISTS `yershop_attachment`;
CREATE TABLE `yershop_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id自增',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '路径',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '图片链接',
  `md5` char(32) NOT NULL DEFAULT '' COMMENT '文件md5',
  `sha1` char(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `exts` varchar(225) DEFAULT NULL,
  `type` smallint(2) NOT NULL DEFAULT '0',
  `size` varchar(225) DEFAULT NULL,
  `oldname` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=395 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yershop_attachment
-- ----------------------------
INSERT INTO `yershop_attachment` VALUES ('1', '/public/uploads/picture/2014-09-02/5405e0f3b1705.png', '', '36d077267c76901835c07eb98f43647f', '0f7ce26261cb7a81dcfb14e057982ec60fa3a6e0', '1', '1409671411', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('118', '/public/uploads/picture/2015-09-18/55faf2ac353a5.png', '', '02273f1c88dd109270b8658aaa50adb7', '03072f5a6ad8edebed49f2a2aaab0946fee911dc', '1', '1442509483', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('119', '/public/uploads/picture/2015-09-18/55faf2b05d1f7.jpg', '', 'f19560a9dce4d5856f8bd94ec4f94f7c', 'df47fefa04680b0f94333f73538369ac1a02a705', '1', '1442509488', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('120', '/public/uploads/picture/2015-09-18/55fbea25cce43.png', '', 'db6d75524ce0adbe0aa392e89db2c967', 'd5c00b55590a673c72f32bfef5f248eea2541b48', '1', '1442572836', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('121', '/public/uploads/picture/2015-09-18/55fbed7b89833.jpg', '', '85e8b28767fb07b93c2f0325c885890d', '680153590e2abd8b0751758b0b10fe488d8a132a', '1', '1442573691', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('122', '/public/uploads/picture/2015-09-18/55fbfa12f0583.jpg', '', '165a1f4c326e02c467e56017eb31341e', 'a41ebd344dc020cd14d49b45d48b05c0b5a014ae', '1', '1442576914', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('123', '/public/uploads/picture/2015-09-18/55fbfb43e5845.jpg', '', '75e3a97a6bf974893c19b188d5952eca', '192bffee7bcb4ff8682a4ebf0bc97cf6f1cfcdc4', '1', '1442577219', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('124', '/public/uploads/picture/2015-09-18/55fbfba4b5a30.jpg', '', '29e0e481e4642156586f85de4a56f241', '077944d495a9e2a9106ae86a4bed7b36a3200183', '1', '1442577316', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('125', '/public/uploads/picture/2015-09-18/55fbfbd2a1254.png', '', 'ce4df64ea0cf6ea03b1814ba39c9ac14', 'd4ac154920c0c2ec9bc37735066a38baf9b35042', '1', '1442577362', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('126', '/public/uploads/picture/2015-09-18/55fbfbfea4cec.jpg', '', '5750a2e4be1eabb48c387c1701285c19', 'bc2fad2962e2ed53ef9c7fd1d54ea2f183e3744b', '1', '1442577406', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('127', '/public/uploads/picture/2015-09-18/55fbfca553025.jpg', '', 'e5897ab5d0968219417382de088c9b51', 'fe762a96ec7b66522a573397aef54dfac790efb4', '1', '1442577572', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('128', '/public/uploads/picture/2015-09-18/55fbfefe3b46c.jpg', '', '9d63a525c72228392bc9995a2dccb804', '1128a13c77f928305aa74250c73849e0fdb66baa', '1', '1442578173', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('129', '/public/uploads/picture/2015-09-18/55fc06d81d259.png', '', 'c74ead772a7ef411298074a2cfda3b00', 'f81103f81942d48c7a08da5a7b902ae73c0d032f', '1', '1442580183', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('130', '/public/uploads/picture/2015-09-18/55fc0db08a573.png', '', '74e827839f9878de5ee040f501d44e24', '64da8dfcdeb5c91f21ef8c8d4e28e16c0988ec99', '1', '1442581936', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('131', '/public/uploads/picture/2015-09-18/55fc14f557c2b.jpg', '', 'febb770b7148c2554c89dc8f2aad47ef', '58e1fff98127903f37d0034ad4bfb89e1b24220b', '1', '1442583797', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('132', '/public/uploads/picture/2015-09-18/55fc25884bc20.jpg', '', '7ffeea044ed576b6c399aea469013995', '2491a13692bffc0ba29dcac65d0a51cb81870ec3', '1', '1442588039', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('133', '/public/uploads/picture/2015-09-18/55fc268046052.jpg', '', '2c2884ec3ad9671595f2c8ba7ec83e61', '208e93d8b664ad2c6cb0ed6613b85cb17d15735c', '1', '1442588287', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('134', '/public/uploads/picture/2015-09-18/55fc26c302c6c.jpg', '', 'cd8289f0b5e2cce081e64cf728a3dad9', '77359403d19d2d7758a38816ffc25e92de6f5071', '1', '1442588354', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('135', '/public/uploads/picture/2015-09-19/55fd2ce92c34a.png', '', 'beee2b89375a6b029a82fa8ca5ba6a07', '96f52b0bdb148e5bc82c9a195a36a7592784ae7c', '1', '1442655464', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('136', '/public/uploads/picture/2015-09-19/55fd2d31abbfb.png', '', '54529b60a5b44ae3551a316c51c5c732', 'a9b4dd9e304d61b8b0af4eed2204899b360d3958', '1', '1442655537', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('137', '/public/uploads/picture/2015-09-19/55fd2d7a24d4d.jpg', '', '8258766e1b790fb7c1fe5a2a9caa65d0', 'd6ded094cff01419050eeb23c39ce85812bf2ce8', '1', '1442655609', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('138', '/public/uploads/picture/2015-09-19/55fd2da7b3e38.jpg', '', 'fc9680b79fdb0a6b4cef1973f2b3e975', '9ea0bdb5c85eb2bbf31a2ea68f40b11b1e1e9363', '1', '1442655655', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('139', '/public/uploads/picture/2015-09-19/55fd2e824761b.png', '', '460076b755fda8aeab55b154d878eb2b', 'e06d5861fa44e30f3f74f912bf43b45039a4c9a1', '1', '1442655873', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('140', '/public/uploads/picture/2015-09-19/55fd2ea40f9eb.jpg', '', 'd82b42da9052d7d0c9941607966bd68b', '89e4ce2c36bcd3fb0ba08675d6193ef49a7018cc', '1', '1442655907', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('141', '/public/uploads/picture/2015-09-19/55fd2ed346ca2.jpg', '', '325a5b1e756187740de7876ee8217624', 'edb5db598f9e88235113d1238d882572b01b99fc', '1', '1442655954', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('142', '/public/uploads/picture/2015-09-19/55fd2f09a9c17.png', '', 'a0be05f9d4637a9369f21ec2a350a3d8', '05428eced8ae43f41d59a3ed1d616473a1c35e39', '1', '1442656009', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('143', '/public/uploads/picture/2015-09-19/55fd2f35c4d1b.png', '', 'cb5e8cc8a5e7835b1ce44cfe070c10d7', '3ba85af092c0a04b70fe5625f7bae675158c3fc2', '1', '1442656047', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('144', '/public/uploads/picture/2015-09-19/55fd2f63de016.jpg', '', '46b06af357db9e001e210da953943cad', '69310227d7099372e31924f6d0405489e52eb492', '1', '1442656099', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('145', '/public/uploads/picture/2015-09-19/55fd30a01fb76.png', '', 'e18a8be03a63aaf98309caeebcbb3ff6', '7143023f23da57142f4b2129201d65d06a0320ed', '1', '1442656415', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('146', '/public/uploads/picture/2015-09-19/55fd3107afdb4.png', '', '5f0924eb289d82e72956f98d5782cf34', 'b64e99156213aba7cec70a52796cac7c535aaf46', '1', '1442656519', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('147', '/public/uploads/picture/2015-09-21/55fef291d180a.jpg', '', '6bfa43f557fd45417a7332a1c76b9d0c', '4f5fc0d9bb35b82c7ed3524eb94cb00b9f0efb80', '1', '1442771601', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('148', '/public/uploads/picture/2015-09-21/55ff9daf421da.jpg', '', '8aa0ca20041c70a3a7ed52439ad17e87', '2104acbddfb7896074262f06629cd531eb051f44', '1', '1442815398', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('149', '/public/uploads/picture/2015-10-01/560c353d68810.jpg', '', 'd368c2e6e97c5ef8d3c5a28f9ff86272', '2ea38906b4184f9f3040ae2ca4e46ec057aac4a1', '1', '1443640636', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('150', '/public/uploads/picture/2015-10-01/560c36d681ed7.png', '', '89f9dc5aba8d7c17e33b54f8820113c8', '6d16bcd39d6af6cbca714833dd003ade7753f196', '1', '1443641046', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('151', '/public/uploads/picture/2015-10-01/560c398857058.jpg', '', 'cf14018177659b6cebc315af384e557d', '0bc0eccb7a8c0e41ec199adf74f42ca29b9426f2', '1', '1443641735', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('152', '/public/uploads/picture/2015-10-01/560c482057eb2.jpg', '', '0b79878d6e22f05624dc67c924a1403f', '4001e0b6b42b7e643dce002ec5825a22322e1518', '1', '1443645472', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('153', '/public/uploads/picture/2015-10-01/560c497ba8fab.jpg', '', '3cb499f3f19b59a4f764f854ffda13fd', 'a9c334d0aa35040fbb6eb5c87055557cd22f3899', '1', '1443645819', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('154', '/public/uploads/picture/2015-10-01/560c4c6a574dd.jpg', '', 'dbaa89d809c1f11a6be878a901cc6ef3', 'ee8a749b0cfe74f315710d08293499c104ccebc6', '1', '1443646570', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('155', '/public/uploads/picture/2015-10-01/560c4fbe38b7e.jpg', '', '3f6be98ec909bd442df7f3bdec87837d', '2febfa649830eaa2347dc78f3dcb3fc9f1ab0b31', '1', '1443647422', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('156', '/public/uploads/picture/2017-03-18/1489833130.jpg', '', '', '', '1', '1489833130', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('157', '/public/uploads/picture/2017-03-18/1489833193.jpg', '', '', '', '1', '1489833193', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('158', '/public/uploads/picture/2017-03-18/1489833237.jpg', '', '', '', '1', '1489833237', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('159', '/public/uploads/picture/2017-04-10/58ea728da93d6.jpg', '', 'fbe492e4129c37da9108def74891ffd3', '', '0', '0', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('160', '/public/uploads/picture/2017-04-10/58ea72ad6b7b5.jpg', '', 'e772bdc47334739991c6e0ed7b883044', '', '0', '0', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('161', '/public/uploads/picture/2017-04-10/58ea7344ba5bb.jpg', '', 'e772bdc47334739991c6e0ed7b883044', '', '0', '0', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('162', '/public/uploads/picture/2017-04-10/58ea7373323c6.jpg', '', 'e772bdc47334739991c6e0ed7b883044', '', '0', '0', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('163', '/public/uploads/picture/2017-04-10/58ea739e5b426.jpg', '', 'e772bdc47334739991c6e0ed7b883044', '', '0', '0', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('164', '/public/uploads/picture/2017-04-10/58ea741c3c765.jpg', '', '3f2f102f8b1de130101378eb6e6f523c', '', '0', '0', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('165', '/public/uploads/picture/2017-04-10/58ea74c57144b.png', '', 'a9e8476c71652114c1a8485948bc2eb3', '', '0', '0', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('166', '/public/uploads/picture/2017-04-10/58ea750990423.jpg', '', '60be787ff19aacedca764129855f883d', '', '0', '0', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('167', '/public/uploads/picture/2017-04-10/58ea755252f92.jpg', '', 'e772bdc47334739991c6e0ed7b883044', '', '0', '0', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('168', '/public/uploads/picture/2017-04-10/58ea75e593ffa.png', '', 'a9e8476c71652114c1a8485948bc2eb3', '', '0', '0', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('169', '/public/uploads/picture/2017-04-10/58ea76457e34b.jpg', '', 'e772bdc47334739991c6e0ed7b883044', '', '0', '0', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('170', '/public/uploads/picture/2017-04-10/58ea76f647856.jpg', '', 'e772bdc47334739991c6e0ed7b883044', '', '0', '0', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('171', '/public/uploads/picture/2017-04-10/58ea77613b2e9.jpg', '', 'e772bdc47334739991c6e0ed7b883044', '', '0', '0', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('172', '/public/uploads/picture/2017-04-10/58ea7889a445b.jpg', '', 'e772bdc47334739991c6e0ed7b883044', '', '0', '0', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('173', '/public/uploads/picture/2017-04-10/58ea78f890081.png', '', 'a9e8476c71652114c1a8485948bc2eb3', '', '0', '0', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('174', '/public/uploads/picture/2017-04-10/58ea7bf470e88.jpg', '', 'e772bdc47334739991c6e0ed7b883044', '', '0', '0', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('175', '/public/uploads/picture/2017-04-27/59015a64a416f.png', '', 'aad4be71840752d8dbbc39e74c9acaef', '1533a5279b892edc075dd6413c7aa08ad2cd2978', '0', '1493260900', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('176', '/public/uploads/picture/2017-04-27/59015ab2ae242.png', '', '3c15c452b0634481b5ed31ece7fe8476', 'b941e181d8ac55a3229f9606f6b5589444bee74c', '0', '1493260978', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('177', '/public/uploads/picture/2017-04-27/59015ade4a915.jpg', '', '8258766e1b790fb7c1fe5a2a9caa65d0', 'd6ded094cff01419050eeb23c39ce85812bf2ce8', '0', '1493261022', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('178', '/public/uploads/picture/2017-04-27/59015b313731d.jpg', '', '8258766e1b790fb7c1fe5a2a9caa65d0', 'd6ded094cff01419050eeb23c39ce85812bf2ce8', '0', '1493261105', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('179', '/public/uploads/picture/2017-04-27/59015c4f2bbc7.png', '', 'e0f4a9ff4018d01a8ea9f372405426e7', 'e05fa3c0980421692ac72d712deb92e6f84b026a', '0', '1493261391', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('180', '/public/uploads/picture/2017-04-27/59015d2658d3a.jpg', '', '29e0e481e4642156586f85de4a56f241', '077944d495a9e2a9106ae86a4bed7b36a3200183', '0', '1493261606', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('181', '/public/uploads/picture/2017-04-27/590160abd4107.png', '', 'f7946d29cd2293bcef37768578592624', '4907c286571625da4bc04eb817513425a1eff329', '0', '1493262507', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('182', '/public/uploads/picture/2017-04-27/5901af9262172.jpg', '', 'd82b42da9052d7d0c9941607966bd68b', '89e4ce2c36bcd3fb0ba08675d6193ef49a7018cc', '0', '1493282706', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('183', '/public/uploads/picture/2017-04-27/5901afa1842a0.png', '', 'f7946d29cd2293bcef37768578592624', '4907c286571625da4bc04eb817513425a1eff329', '0', '1493282721', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('184', '/public/uploads/picture/2017-04-27/5901b05425217.png', '', 'f7946d29cd2293bcef37768578592624', '4907c286571625da4bc04eb817513425a1eff329', '0', '1493282900', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('185', '/public/uploads/picture/2017-04-27/5901b0cc729e2.png', '', 'f7946d29cd2293bcef37768578592624', '4907c286571625da4bc04eb817513425a1eff329', '0', '1493283020', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('186', '/public/uploads/picture/2017-04-27/5901b3c6051cc.jpg', '', '59895df03becec239632a8fa0c36b8d3', '90e3e6767eb9e6fa375fe4c0f6fc3fd62e4e5fc4', '0', '1493283782', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('187', '/public/uploads/picture/2017-06-03/593246bab5b4e.jpg', '', 'df18e2fba1ea9d775b62898993896f09', 'ea848e85275b794cddedac4605e1da14ab3fa980', '0', '1496467130', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('188', '/public/uploads/picture/2017-06-03/593246f20b365.png', '', '3db4a9c86c87941e35f64bada2989012', 'a2d9fd4a194ba1867f73aeb9e3e298e3844f1328', '0', '1496467186', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('189', '/public/uploads/picture/2017-06-03/59324718d315d.jpg', '', '12f46a2077e8613d9b7e0bd707f9e281', 'f7865b97e36f4c7e0a46a6ccc82ad3f0cc5a1006', '0', '1496467224', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('190', '/public/uploads/picture/2017-06-03/5932473a94475.png', '', 'dba4ab759283ce84a2f3db1c38a0251a', '0c58990f7e2dd14d866d8aa71acd3ad8cca2a3cb', '0', '1496467258', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('191', '/public/uploads/picture/2017-06-03/59324765b3951.png', '', 'dba4ab759283ce84a2f3db1c38a0251a', '0c58990f7e2dd14d866d8aa71acd3ad8cca2a3cb', '0', '1496467301', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('192', '/public/uploads/picture/2017-06-03/5932476f2b323.jpg', '', '92ebda32af67ee222a8761c039235f16', 'ad41c51ed019bbb7c5d1b341025098c0e82d2fab', '0', '1496467311', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('193', '/public/uploads/picture/2017-06-03/593247cf5672d.jpg', '', '12f46a2077e8613d9b7e0bd707f9e281', 'f7865b97e36f4c7e0a46a6ccc82ad3f0cc5a1006', '0', '1496467407', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('194', '/public/uploads/picture/2017-06-03/593247d5aff74.png', '', 'a658f9e720b91e0ea69d99b978bed497', '8e8a697972a17ceebc85367230c4516eac977dc9', '0', '1496467413', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('195', '/public/uploads/picture/2017-06-03/5932481da3fc0.jpg', '', 'df18e2fba1ea9d775b62898993896f09', 'ea848e85275b794cddedac4605e1da14ab3fa980', '0', '1496467485', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('196', '/public/uploads/picture/2017-06-03/593248237106d.jpg', '', '92ebda32af67ee222a8761c039235f16', 'ad41c51ed019bbb7c5d1b341025098c0e82d2fab', '0', '1496467491', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('197', '/public/uploads/picture/2017-06-03/593251449e0b3.jpg', '', '12f46a2077e8613d9b7e0bd707f9e281', 'f7865b97e36f4c7e0a46a6ccc82ad3f0cc5a1006', '0', '1496469828', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('198', '/public/uploads/picture/2017-06-03/5932514c5e670.png', '', '3db4a9c86c87941e35f64bada2989012', 'a2d9fd4a194ba1867f73aeb9e3e298e3844f1328', '0', '1496469836', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('199', '/public/uploads/picture/2017-06-03/593252a70d3ca.jpg', '', '92ebda32af67ee222a8761c039235f16', 'ad41c51ed019bbb7c5d1b341025098c0e82d2fab', '0', '1496470183', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('200', '/public/uploads/picture/2017-06-03/593252ab19939.jpg', '', 'df18e2fba1ea9d775b62898993896f09', 'ea848e85275b794cddedac4605e1da14ab3fa980', '0', '1496470187', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('201', '/public/uploads/picture/2017-06-04/59339aaf30f7e.jpg', '', 'df18e2fba1ea9d775b62898993896f09', 'ea848e85275b794cddedac4605e1da14ab3fa980', '0', '1496554159', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('202', '/public/uploads/picture/2017-06-04/59339ab4443fe.png', '', '3db4a9c86c87941e35f64bada2989012', 'a2d9fd4a194ba1867f73aeb9e3e298e3844f1328', '0', '1496554164', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('203', '/public/uploads/picture/2017-06-04/59339abc39975.jpg', '', 'e91d7b93dd88d79eb1ab6029b9420e87', '4f15a3484196aabef7996f514ec9079ff815a4b3', '0', '1496554172', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('204', '/public/uploads/picture/2017-06-08/59382de1f0c4d.png', '', 'ade99d895ebc71b9a9e52a08a451c1f6', 'b363746196da6d7a37ae7bb6cc79157dc0118b40', '0', '1496853985', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('205', '/public/uploads/picture/2017-06-08/59382e6989c21.jpg', '', 'df18e2fba1ea9d775b62898993896f09', 'ea848e85275b794cddedac4605e1da14ab3fa980', '0', '1496854121', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('206', '/public/uploads/picture/2017-06-08/5938321d1a0b8.jpg', '', 'df18e2fba1ea9d775b62898993896f09', 'ea848e85275b794cddedac4605e1da14ab3fa980', '0', '1496855069', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('207', '/public/uploads/picture/2017-06-10/593af2721c9df.jpg', '', '5332d77768534c1863d87e4660ee207b', '3c21386aa1f23038b1240680b079bed2f2a12097', '0', '1497035378', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('208', '/public/uploads/picture/2017-06-10/593af2ab73069.jpg', '', '618f425810aaee83564b2d5384c43500', '176ed5bdbf544fe8a67a1c53480b0d3a546fdb4b', '0', '1497035435', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('209', '/public/uploads/picture/2017-06-10/593b473d21a8d.jpg', '', 'f40309d6e909e5475c063c8502c9776c', '38f96bd641cdf99db3b5ce3e9fe568c98439f517', '0', '1497057085', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('210', '/public/uploads/picture/2017-06-10/593b4858b844a.jpg', '', 'a57729b797ee17917c3e5436d6d31e6d', '432e8e755ae89588dfd074f2dddb7f9829cde2af', '0', '1497057368', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('211', '/public/uploads/picture/2017-06-10/593b48aa7b751.jpg', '', '536c08c0a5cb10edaf1bac707c55025a', 'a26fb784f006c0a7192ed30ba87390c1a98e7c68', '0', '1497057450', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('212', '/public/uploads/picture/2017-06-10/593b48c2917d3.jpg', '', '38affd4dcca613daba37db6a9f91b204', 'e6c87d94ad2051d2072dbfc3f3c5108fc8195a21', '0', '1497057474', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('213', '/public/uploads/picture/2017-06-10/593b48cf7a6a4.jpg', '', '536c08c0a5cb10edaf1bac707c55025a', 'a26fb784f006c0a7192ed30ba87390c1a98e7c68', '0', '1497057487', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('214', '/public/uploads/picture/2017-06-10/593b48dfd1488.jpg', '', '244b2e7c149af541900f5c9cb3c17e0a', '5ba16ece19ec85058ee5ee62d6bd153305d0afbd', '0', '1497057503', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('215', '/public/uploads/picture/2017-06-10/593b49029c41a.jpg', '', '83ca6fb33e1164d3e4699849237bff10', 'de3c7e6e0ed67243daafa611c4b15d97a90789be', '0', '1497057538', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('216', '/public/uploads/picture/2017-06-10/593b492a3f651.jpg', '', 'f3e60ab5a1c41f282080c306301cc354', '6df99acc50de9fa7e48d1d274a9a0b3d4da14e32', '0', '1497057578', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('217', '/public/uploads/picture/2017-06-10/593b49652e774.jpg', '', '9633a7a94a30bb85ee65feb7745fd074', '93974ac32e0aa464213b5429827101606f251158', '0', '1497057637', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('218', '/public/uploads/picture/2017-06-10/593b49da4be8a.png', '', '6a42de2dc1c015959b6876fd0091bd99', 'acb907a5ef5c6310b526dd6f999d59b73147b164', '0', '1497057754', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('219', '/public/uploads/picture/2017-06-10/593b4a23873de.jpg', '', '536c08c0a5cb10edaf1bac707c55025a', 'a26fb784f006c0a7192ed30ba87390c1a98e7c68', '0', '1497057827', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('220', '/public/uploads/picture/2017-06-10/593b4be76841c.png', '', '4b34ceeb1a62296ac07c69542fc60ccc', 'e05700fdb4425424464cdfb551e7351b7ec76dbd', '0', '1497058279', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('221', '/public/uploads/picture/2017-06-10/593b4ca5b86a6.jpg', '', '570c2bc96240f2868469caebaee43565', 'b0c7aefc53eed5851f2c535d6df315ecd450e791', '0', '1497058469', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('222', '/public/uploads/picture/2017-06-10/593b4cc8b89ee.jpg', '', '8895b46e241808531b52238a66261e34', '8a775a65ac498e52c1277d9fc7c5de2659b906f1', '0', '1497058504', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('223', '/public/uploads/picture/2017-06-10/593b4cf227b4e.jpg', '', '0af856cabcfb15c409defd5a90900494', 'f5e0c8518d74761f4284c7dc6438b996e7f33817', '0', '1497058546', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('224', '/public/uploads/picture/2017-06-10/593b4e639e660.jpg', '', 'ece3884ec7bf17a0580b8856dde247aa', 'd5f0ce295385e2c2e8b546ccd55d1ceb29e69507', '0', '1497058915', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('225', '/public/uploads/picture/2017-06-10/593b50055245a.jpg', '', '239769d731a5eb504f1183722cde4d09', 'f53c5cf8f1300a5a247fff354a111d7008c56a4b', '0', '1497059333', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('226', '/public/uploads/picture/2017-06-10/593b5029f0f5c.jpg', '', '8f6dee1b82487959a34961811d6871f6', 'eed689df64393a45ab645b7b1299fe4486fd53b9', '0', '1497059369', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('227', '/public/uploads/picture/2017-06-10/593b505453a4c.jpg', '', 'fc13447d9ea4269f9067c68e0fa86eef', 'd80d828010ed09799809ae2b7c37f7aea33cdac9', '0', '1497059412', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('228', '/public/uploads/picture/2017-06-10/593b508b77396.jpg', '', '50d4f43e24ad56331fc41f05cf51699c', '55da9adddc17420b24832675704806babd21fcf6', '0', '1497059467', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('229', '/public/uploads/picture/2017-06-10/593b533ad646a.jpg', '', '2f6d092829f2dbe171479fae26dc7e02', '4368a3051dd1c35f3c60deacc9490004a28320f9', '0', '1497060154', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('230', '/public/uploads/picture/2017-06-10/593b56975d266.jpg', '', 'ece3884ec7bf17a0580b8856dde247aa', 'd5f0ce295385e2c2e8b546ccd55d1ceb29e69507', '0', '1497061015', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('231', '/public/uploads/picture/2017-06-11/593c6f8d00bae.jpg', '', 'eacd46878b826fc8f377282eced38a5f', '350435aff3cf87b546781320f3c67de752d0a88e', '0', '1497132941', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('232', '/public/uploads/picture/2017-06-11/593c7095e1a73.jpg', '', '205670ac324cd1516da2928cb4dbdebe', '58b847589eeeab811402f2047458a63d38197f45', '0', '1497133205', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('233', '/public/uploads/picture/2017-06-11/593c71358b2f8.jpg', '', '1268ecb74cdb78e9a00c3a7bd9f07cbb', '36664122deddb0965ad78f2263b69f85c273cde4', '0', '1497133365', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('234', '/public/uploads/picture/2017-06-11/593c71d37866e.jpg', '', '24d12a976c2b0387ed6582dd87f5dfd9', '0795b56a9ad6cf91ad98cbde4ba78243c864921b', '0', '1497133523', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('235', '/public/uploads/picture/2017-06-11/593c71e910c8f.jpg', '', '85e921f8946870510435ebc9d9cb073b', '8511e201fca9fc8561373d1c63bfc57b45043438', '0', '1497133545', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('236', '/public/uploads/picture/2017-06-11/593c722b21ce0.jpg', '', '8f6c1ab8a368c4608ad88b6f2e3d990a', 'd6971cef2494d08a9e2374b23df8f03228061579', '0', '1497133611', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('237', '/public/uploads/picture/2017-06-11/593c73c59ba63.jpg', '', '2643aad1795d84a1ddd4651584888533', 'f5481198541d4facc063c113d19cb24256369139', '0', '1497134021', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('238', '/public/uploads/picture/2017-06-11/593d619bc1557.png', '', '8a0e828202dc55abb32d581a650a499b', '7b2d18fc2c9970997fd65d8bc8fef11973b108ba', '0', '1497194907', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('239', '/public/uploads/picture/2017-06-11/593d66418184d.jpg', '', 'cd8289f0b5e2cce081e64cf728a3dad9', '77359403d19d2d7758a38816ffc25e92de6f5071', '0', '1497196097', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('240', '/public/uploads/picture/2017-06-11/593d668a0b335.jpg', '', '8258766e1b790fb7c1fe5a2a9caa65d0', 'd6ded094cff01419050eeb23c39ce85812bf2ce8', '0', '1497196170', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('241', '/public/uploads/picture/2017-06-11/593d66b13441e.png', '', '642eb204ee46c475e3663ee66412a064', 'a065eca31d835a10ad0739990aef1833858ed57c', '0', '1497196209', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('252', '/public/uploads/picture/2017-11-04/1509764207.jpg', '', '', '', '1', '1509764207', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('253', '/public/uploads/picture/2017-11-04/1509764309.jpg', '', '', '', '1', '1509764309', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('243', '/public/uploads/picture/2017-06-12/593d720ba26b3.jpg', '', 'cc40bf13003b952c6cb8fe128522ec21', '21984feb63ba59495d667e2ed765e0e4d90dbd94', '0', '1497199115', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('244', '/public/uploads/picture/2017-06-18/594565c199a91.jpg', '', '685b1133c2fb45479218b2acd6a8b852', 'd8145cf3becdf9e0fdeb24b43cd0cee1518a4699', '0', '1497720257', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('245', '/public/uploads/picture/2017-06-18/5945725f48956.png', '', 'a16a431bbb61e642b18b940b1473dfd3', 'f4398e7803c4a9bf6430e44be134f335f46a0914', '0', '1497723487', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('260', '/public/uploads/picture/2017-11-04/1509767146.jpg', '', '', '', '1', '1509767146', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('261', '/public/uploads/picture/2017-11-04/1509767152.jpg', '', '', '', '1', '1509767152', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('258', '/public/uploads/picture/2017-11-04/1509766137.jpg', '', '', '', '1', '1509766137', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('259', '/public/uploads/picture/2017-11-04/1509767121.jpg', '', '', '', '1', '1509767121', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('256', '/public/uploads/picture/2017-11-04/1509764517.jpg', '', '', '', '1', '1509764517', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('257', '/public/uploads/picture/2017-11-04/1509764709.jpg', '', '', '', '1', '1509764709', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('254', '/public/uploads/picture/2017-11-04/1509764326.jpg', '', '', '', '1', '1509764326', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('255', '/public/uploads/picture/2017-11-04/1509764474.jpg', '', '', '', '1', '1509764474', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('250', '/public/uploads/picture/2017-10-04/59d49d19e995b.png', '', 'e52be7fe9f76f0b2d20440d01c75b51a', 'b9294fe039b5daedf352ef1c9d0a4dc269c4f423', '0', '1507106073', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('251', '/public/uploads/picture/2017-10-07/59d88b31c73ea.gif', '', '927d4a2ecfc5380f4b35efe256104c9f', '14644b7ff9b25cd5ec113e3ab7659290b7c81f6a', '0', '1507363633', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('262', '/public/uploads/picture/2017-11-04/1509767768.jpg', '', '', '', '1', '1509767768', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('263', '/public/uploads/picture/2017-11-04/1509767785.jpg', '', '', '', '1', '1509767785', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('264', '/public/uploads/picture/2017-11-04/1509767848.jpg', '', '', '', '1', '1509767848', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('265', '/public/uploads/picture/2017-11-04/1509767938.jpg', '', '', '', '1', '1509767938', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('266', '/public/uploads/picture/2017-11-04/1509768029.jpg', '', '', '', '1', '1509768029', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('267', '/public/uploads/picture/2017-11-04/1509768183.jpg', '', '', '', '1', '1509768183', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('268', '/public/uploads/picture/2017-11-04/1509768213.jpg', '', '', '', '1', '1509768213', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('269', '/public/uploads/picture/2017-11-04/1509768258.jpg', '', '', '', '1', '1509768258', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('270', '/public/uploads/picture/2017-11-04/1509768364.jpg', '', '', '', '1', '1509768364', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('271', '/public/uploads/picture/2017-11-04/1509768371.jpg', '', '', '', '1', '1509768371', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('272', '/public/uploads/picture/2017-11-04/1509768375.jpg', '', '', '', '1', '1509768375', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('273', '/public/uploads/picture/2017-11-04/1509768484.jpg', '', '', '', '1', '1509768484', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('274', '/public/uploads/picture/2017-11-04/1509768556.jpg', '', '', '', '1', '1509768556', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('275', '/public/uploads/picture/2017-11-04/1509768616.jpg', '', '', '', '1', '1509768616', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('276', '/public/uploads/picture/2017-11-04/1509768733.jpg', '', '', '', '1', '1509768733', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('277', '/public/uploads/picture/2017-11-04/1509768791.jpg', '', '', '', '1', '1509768791', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('278', '/public/uploads/picture/2017-11-04/1509768797.jpg', '', '', '', '1', '1509768797', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('279', '/public/uploads/picture/2017-11-04/1509768842.jpg', '', '', '', '1', '1509768842', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('280', '/public/uploads/picture/2017-11-04/1509768864.jpg', '', '', '', '1', '1509768864', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('281', '/public/uploads/picture/2017-11-04/1509768989.jpg', '', '', '', '1', '1509768989', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('282', '/public/uploads/picture/2017-11-04/1509774996.jpg', '', '', '', '1', '1509774996', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('283', '/public/uploads/picture/2017-11-04/1509775088.jpg', '', '', '', '1', '1509775088', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('284', '/public/uploads/picture/2017-11-04/1509775098.jpg', '', '', '', '1', '1509775098', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('285', '/public/uploads/picture/2017-11-04/1509776126.jpg', '', '', '', '1', '1509776126', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('286', '/public/uploads/picture/2017-11-04/1509776284.jpg', '', '', '', '1', '1509776284', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('287', '/public/uploads/picture/2017-11-04/1509776887.jpg', '', '', '', '1', '1509776887', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('288', '/public/uploads/picture/2017-11-04/1509776974.jpg', '', '', '', '1', '1509776974', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('289', '/public/uploads/picture/2017-11-04/1509776995.jpg', '', '', '', '1', '1509776995', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('290', '/public/uploads/picture/2017-11-04/1509777008.jpg', '', '', '', '1', '1509777008', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('291', '/public/uploads/picture/2017-11-04/1509777060.jpg', '', '', '', '1', '1509777060', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('292', '/public/uploads/picture/2017-11-04/1509777944.jpg', '', '', '', '1', '1509777944', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('293', '/public/uploads/picture/2017-11-04/1509778821.jpg', '', '', '', '1', '1509778821', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('294', '/public/uploads/picture/2017-11-04/1509778828.jpg', '', '', '', '1', '1509778828', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('295', '/public/uploads/picture/2017-11-04/1509788391.jpg', '', '', '', '1', '1509788391', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('296', '/public/uploads/picture/2017-11-04/1509788398.jpg', '', '', '', '1', '1509788398', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('297', '/public/uploads/picture/2017-11-04/1509788431.jpg', '', '', '', '1', '1509788431', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('298', '/public/uploads/picture/2017-11-04/1509788440.jpg', '', '', '', '1', '1509788440', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('299', '/public/uploads/picture/2017-11-04/1509788469.jpg', '', '', '', '1', '1509788469', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('300', '/public/uploads/picture/2017-11-04/1509788610.jpg', '', '', '', '1', '1509788610', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('301', '/public/uploads/picture/2017-11-04/1509788628.jpg', '', '', '', '1', '1509788628', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('302', '/public/uploads/picture/2017-11-04/1509788835.jpg', '', '', '', '1', '1509788835', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('303', '/public/uploads/picture/2017-11-04/1509788851.jpg', '', '', '', '1', '1509788851', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('304', '/public/uploads/picture/2017-11-04/1509788982.jpg', '', '', '', '1', '1509788982', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('305', '/public/uploads/picture/2017-11-04/1509789038.jpg', '', '', '', '1', '1509789038', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('306', '/public/uploads/picture/2017-11-04/1509789055.jpg', '', '', '', '1', '1509789055', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('307', '/public/uploads/picture/2017-11-04/1509789339.jpg', '', '', '', '1', '1509789339', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('308', '/public/uploads/picture/2017-11-04/1509789347.jpg', '', '', '', '1', '1509789347', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('309', '/public/uploads/picture/2017-11-04/1509789494.jpg', '', '', '', '1', '1509789494', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('310', '/public/uploads/picture/2017-11-04/1509790026.jpg', '', '', '', '1', '1509790026', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('311', '/public/uploads/picture/2017-11-04/1509790033.jpg', '', '', '', '1', '1509790033', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('312', '/public/uploads/picture/2017-11-04/1509790249.jpg', '', '', '', '1', '1509790249', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('313', '/public/uploads/picture/2017-11-04/1509790257.jpg', '', '', '', '1', '1509790257', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('314', '/public/uploads/picture/2017-11-04/1509793893.jpg', '', '', '', '1', '1509793893', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('315', '/public/uploads/picture/2017-11-04/1509793969.jpg', '', '', '', '1', '1509793969', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('316', '/public/uploads/picture/2017-11-04/1509794136.jpg', '', '', '', '1', '1509794136', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('317', '/public/uploads/picture/2017-11-04/1509794168.jpg', '', '', '', '1', '1509794168', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('318', '/public/uploads/picture/2017-11-04/1509794190.jpg', '', '', '', '1', '1509794190', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('319', '/public/uploads/picture/2017-11-04/1509794471.jpg', '', '', '', '1', '1509794471', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('320', '/public/uploads/picture/2017-11-04/1509794559.jpg', '', '', '', '1', '1509794559', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('321', '/public/uploads/picture/2017-11-04/1509794563.jpg', '', '', '', '1', '1509794563', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('322', '/public/uploads/picture/2017-11-04/1509794567.jpg', '', '', '', '1', '1509794567', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('323', '/public/uploads/picture/2017-11-04/1509794971.jpg', '', '', '', '1', '1509794971', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('324', '/public/uploads/picture/2017-11-04/1509794984.jpg', '', '', '', '1', '1509794984', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('325', '/public/uploads/picture/2017-11-04/1509795815.jpg', '', '', '', '1', '1509795815', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('326', '/public/uploads/picture/2017-11-04/1509796230.jpg', '', '', '', '1', '1509796230', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('327', '/public/uploads/picture/2017-11-04/1509796692.jpg', '', '', '', '1', '1509796692', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('328', '/public/uploads/picture/2017-11-06/1509907313.jpg', '', '', '', '1', '1509907313', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('329', '/public/uploads/picture/2017-11-06/1509907337.jpg', '', '', '', '1', '1509907337', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('330', '/public/uploads/picture/2017-11-06/1509907467.jpg', '', '', '', '1', '1509907467', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('331', '/public/uploads/picture/2017-11-06/1509907531.jpg', '', '', '', '1', '1509907531', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('332', '/public/uploads/picture/2017-11-06/1509907751.jpg', '', '', '', '1', '1509907751', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('333', '/public/uploads/picture/2017-11-06/1509907987.jpg', '', '', '', '1', '1509907987', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('334', '/public/uploads/picture/2017-11-06/1509908117.jpg', '', '', '', '1', '1509908117', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('335', '/public/uploads/picture/2017-11-06/1509908203.jpg', '', '', '', '1', '1509908203', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('336', '/public/uploads/picture/2017-11-06/1509908206.jpg', '', '', '', '1', '1509908206', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('337', '/public/uploads/picture/2017-11-06/1509908277.jpg', '', '', '', '1', '1509908277', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('338', '/public/uploads/picture/2017-11-06/1509909114.jpg', '', '', '', '1', '1509909114', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('339', '/public/uploads/picture/2017-11-06/1509909120.jpg', '', '', '', '1', '1509909120', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('340', '/public/uploads/picture/2017-11-06/1509909193.jpg', '', '', '', '1', '1509909193', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('341', '/public/uploads/picture/2017-11-06/1509909295.jpg', '', '', '', '1', '1509909295', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('342', '/public/uploads/picture/2017-11-06/1509909380.jpg', '', '', '', '1', '1509909380', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('343', '/public/uploads/picture/2017-11-06/1509909396.jpg', '', '', '', '1', '1509909396', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('344', '/public/uploads/picture/2017-11-06/1509909486.jpg', '', '', '', '1', '1509909486', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('345', '/public/uploads/picture/2017-11-06/1509909558.jpg', '', '', '', '1', '1509909558', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('346', '/public/uploads/picture/2017-11-06/1509909638.jpg', '', '', '', '1', '1509909638', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('347', '/public/uploads/picture/2017-11-06/1509909645.jpg', '', '', '', '1', '1509909645', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('348', '/public/uploads/picture/2017-11-06/1509909698.jpg', '', '', '', '1', '1509909698', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('349', '/public/uploads/picture/2017-11-06/1509910076.jpg', '', '', '', '1', '1509910076', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('350', '/public/uploads/picture/2017-11-06/1509936498.jpg', '', '', '', '1', '1509936498', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('351', '/public/uploads/picture/2017-11-06/1509936564.jpg', '', '', '', '1', '1509936564', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('352', '/public/uploads/picture/2017-11-06/1509936614.jpg', '', '', '', '1', '1509936614', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('353', '/public/uploads/picture/2017-11-06/1509936698.jpg', '', '', '', '1', '1509936698', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('354', '/public/uploads/picture/2017-11-06/1509936841.jpg', '', '', '', '1', '1509936841', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('355', '/public/uploads/picture/2017-11-06/1509937018.jpg', '', '', '', '1', '1509937018', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('356', '/public/uploads/picture/2017-11-06/1509937133.jpg', '', '', '', '1', '1509937133', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('357', '/public/uploads/picture/2017-11-06/1509937244.jpg', '', '', '', '1', '1509937244', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('358', '/public/uploads/picture/2017-11-19/1511030221.jpg', '', '', '', '1', '1511030221', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('359', '/public/uploads/picture/2017-11-27/1511717517.jpg', '', '', '', '1', '1511717517', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('360', '/public/uploads/picture/2017-11-27/1511717612.jpg', '', '', '', '1', '1511717612', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('361', '/public/uploads/picture/2017-11-27/1511717656.jpg', '', '', '', '1', '1511717656', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('362', '/public/uploads/picture/2017-11-27/1511722538.jpg', '', '', '', '1', '1511722538', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('363', '/public/uploads/picture/2017-11-27/1511722690.jpg', '', '', '', '1', '1511722690', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('364', '/public/uploads/picture/2017-11-27/1511723165.jpg', '', '', '', '1', '1511723165', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('365', '/public/uploads/picture/2017-11-27/1511724412.jpg', '', '', '', '1', '1511724412', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('366', '/public/uploads/picture/2017-11-27/1511724464.jpg', '', '', '', '1', '1511724464', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('367', '/public/uploads/picture/2017-12-05/1512476667.jpg', '', '', '', '1', '1512476667', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('368', '/public/uploads/picture/2017-12-05/1512476751.jpg', '', '', '', '1', '1512476751', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('369', '/public/uploads/picture/2017-12-05/1512476796.jpg', '', '', '', '1', '1512476796', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('370', '/public/uploads/picture/2017-12-13/1513112743.jpg', '', '', '', '1', '1513112743', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('371', '/public/uploads/picture/2017-12-13/1513113066.jpg', '', '', '', '1', '1513113066', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('372', '/public/uploads/picture/2017-12-13/1513113397.jpg', '', '', '', '1', '1513113397', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('373', '/public/uploads/picture/2017-12-13/1513113513.jpg', '', '', '', '1', '1513113513', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('374', '/public/uploads/picture/2017-12-13/1513113938.jpg', '', '', '', '1', '1513113938', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('375', '/public/uploads/picture/2017-12-13/1513113981.jpg', '', '', '', '1', '1513113981', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('376', '/public/uploads/picture/2017-12-13/1513114264.jpg', '', '', '', '1', '1513114264', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('377', '/public/uploads/picture/2017-12-13/1513114393.jpg', '', '', '', '1', '1513114393', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('378', '/public/uploads/picture/2017-12-13/1513114409.jpg', '', '', '', '1', '1513114409', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('379', '/public/uploads/picture/2017-12-13/1513114476.jpg', '', '', '', '1', '1513114476', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('380', '/public/uploads/picture/2017-12-13/1513120326.jpg', '', '', '', '1', '1513120326', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('381', '/public/uploads/picture/2017-12-13/1513120363.jpg', '', '', '', '1', '1513120363', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('382', '/public/uploads/picture/2017-12-13/1513120464.jpg', '', '', '', '1', '1513120464', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('383', '/public/uploads/picture/2017-12-13/1513120596.jpg', '', '', '', '1', '1513120596', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('384', '/public/uploads/picture/2017-12-13/1513120740.jpg', '', '', '', '1', '1513120740', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('385', '/public/uploads/picture/2017-12-13/1513120854.jpg', '', '', '', '1', '1513120854', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('386', '/public/uploads/picture/2017-12-13/1513121077.jpg', '', '', '', '1', '1513121077', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('387', '/public/uploads/picture/2017-12-31/1514712571.jpg', '', '', '', '1', '1514712571', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('388', '/public/uploads/picture/2017-12-31/1514712577.jpg', '', '', '', '1', '1514712577', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('389', '/public/uploads/picture/2017-12-31/1514712584.jpg', '', '', '', '1', '1514712584', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('390', '/public/uploads/picture/2017-12-31/1514712588.jpg', '', '', '', '1', '1514712588', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('391', '/public/uploads/picture/2017-12-31/1514713465.jpg', '', '', '', '1', '1514713465', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('392', '/public/uploads/picture/2017-12-31/1514713482.jpg', '', '', '', '1', '1514713482', null, '0', null, null);
INSERT INTO `yershop_attachment` VALUES ('393', '/public/uploads/picture/20180323/acbad249da651b0d33f71117873e8c9c.jpg', '', '', '', '1', '1521764062', 'jpg', '1', '15416', '5717a95ae4b0a3162509557b.230x230.jpg');
INSERT INTO `yershop_attachment` VALUES ('394', '/public/uploads/picture/20180323/47c63440b95cae2352fc4e49f0fcdedf.jpg', '', '', '', '1', '1521767405', 'jpg', '1', '15416', '5717a95ae4b0a3162509557b.230x230.jpg');

-- ----------------------------
-- Table structure for yershop_attributes
-- ----------------------------
DROP TABLE IF EXISTS `yershop_attributes`;
CREATE TABLE `yershop_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(225) CHARACTER SET utf8 DEFAULT NULL,
  `sort` int(10) NOT NULL DEFAULT '0',
  `model_id` int(10) NOT NULL DEFAULT '0',
  `type` int(2) DEFAULT '0',
  `value` varchar(225) CHARACTER SET utf8 DEFAULT NULL,
  `is_show` int(2) NOT NULL DEFAULT '1',
  `short_title` varchar(225) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=270 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of yershop_attributes
-- ----------------------------
INSERT INTO `yershop_attributes` VALUES ('24', '0', '笔记本定位', '1', '44', '0', ' 商务办公、高清游戏、学生', '1', null);
INSERT INTO `yershop_attributes` VALUES ('75', '24', '学生', '0', '44', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('72', '24', ' 商务办公', '0', '44', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('73', '24', '高清游戏', '0', '44', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('74', '24', 'kk', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('76', '0', '颜色', '0', '42', '0', '红色、白色、橙色、绿色', '1', null);
INSERT INTO `yershop_attributes` VALUES ('80', '76', '红色', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('81', '76', '白色', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('82', '76', '橙色', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('83', '76', '绿色', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('84', '0', '人群', '0', '42', '0', '青年、青少年、老年、情侣装、大码人群、中年', '1', null);
INSERT INTO `yershop_attributes` VALUES ('85', '84', '青年', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('86', '84', '青少年', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('87', '84', '老年', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('88', '84', '情侣装', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('89', '84', '大码人群', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('90', '84', '中年', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('91', '0', '版型', '0', '42', '0', '超修身、标准型、宽松型', '1', null);
INSERT INTO `yershop_attributes` VALUES ('92', '91', '超修身', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('93', '91', '标准型', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('94', '91', '宽松型', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('95', '0', '上市时间', '0', '42', '0', '2016春季、2016夏季、往季、2017冬季、2017夏季、2017春季', '1', null);
INSERT INTO `yershop_attributes` VALUES ('96', '95', '2016春季', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('97', '95', '2016夏季', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('98', '95', '往季', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('99', '95', '2017冬季', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('100', '95', '2017夏季', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('101', '95', '2017春季', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('102', '0', '领型', '0', '42', '0', '扣领、尖领、撞色领、方领、礼服领、立领、翻领、连帽', '1', null);
INSERT INTO `yershop_attributes` VALUES ('103', '102', '扣领', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('104', '102', '尖领', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('105', '102', '撞色领', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('106', '102', '方领', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('107', '102', '礼服领', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('108', '102', '立领', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('109', '102', '翻领', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('110', '102', '连帽', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('111', '0', '风格', '0', '42', '0', '清新日系、欧美风格、青春休闲、运动休闲、英伦风格、精致韩风、嘻哈风格、商务正装、商务休闲、时尚休闲', '1', null);
INSERT INTO `yershop_attributes` VALUES ('112', '111', '清新日系', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('113', '111', '欧美风格', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('114', '111', '青春休闲', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('115', '111', '运动休闲', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('116', '111', '英伦风格', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('117', '111', '精致韩风', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('118', '111', '嘻哈风格', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('119', '111', '商务正装', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('120', '111', '商务休闲', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('121', '111', '时尚休闲', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('122', '0', '分类', '0', '41', '0', '每日坚果、长寿果/碧根果、夏威夷果、开心果、腰果、松子、巴西松子、杏仁/巴旦木、核桃', '1', null);
INSERT INTO `yershop_attributes` VALUES ('123', '122', '每日坚果', '0', '41', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('124', '122', '长寿果/碧根果', '0', '41', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('125', '122', '夏威夷果', '0', '41', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('126', '122', '开心果', '0', '41', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('127', '122', '腰果', '0', '41', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('128', '122', '松子', '0', '41', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('129', '122', '巴西松子', '0', '41', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('130', '122', '杏仁/巴旦木', '0', '41', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('131', '122', '核桃', '0', '41', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('132', '0', '产地', '0', '41', '0', '中国大陆、美国、马来西亚、泰国、港澳台、韩国、澳洲 、其它', '1', null);
INSERT INTO `yershop_attributes` VALUES ('133', '132', '中国大陆', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('134', '132', '美国', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('135', '132', '马来西亚', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('136', '132', '泰国', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('137', '132', '港澳台', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('138', '132', '韩国', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('139', '132', '澳洲 ', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('140', '132', '其它', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('141', '0', '口味', '0', '41', '0', '原味、炭烧、奶油味、五香味、麻辣味、椒盐味、盐焗味、蒜香味、芥末味、紫薯味', '1', null);
INSERT INTO `yershop_attributes` VALUES ('142', '141', '原味', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('143', '141', '炭烧', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('144', '141', '奶油味', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('145', '141', '五香味', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('146', '141', '麻辣味', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('147', '141', '椒盐味', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('148', '141', '盐焗味', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('149', '141', '蒜香味', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('150', '141', '芥末味', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('151', '141', '紫薯味', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('152', '0', '国产/进口', '0', '41', '0', '国产、进口', '1', null);
INSERT INTO `yershop_attributes` VALUES ('153', '152', '国产', '0', '41', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('154', '152', '进口', '0', '41', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('155', '0', '包装', '0', '41', '0', '礼盒装、组合装、独立小包装、袋装、罐装', '1', null);
INSERT INTO `yershop_attributes` VALUES ('156', '155', '礼盒装', '0', '41', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('157', '155', '组合装', '0', '41', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('158', '155', '独立小包装', '0', '41', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('159', '155', '袋装', '0', '41', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('160', '155', '罐装', '0', '41', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('161', '0', '特性', '0', '41', '0', '带皮、果仁', '1', null);
INSERT INTO `yershop_attributes` VALUES ('162', '161', '带皮', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('163', '161', '果仁', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('164', '0', '系统', '0', '43', '0', '安卓、苹果、微软、基础功能机', '1', null);
INSERT INTO `yershop_attributes` VALUES ('177', '164', '微软', '0', '43', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('176', '164', '苹果', '0', '43', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('175', '164', '安卓', '0', '43', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('169', '0', '屏幕尺寸', '0', '43', '0', '5.6英寸及以上、5.5-5.1英寸、5.0-4.6英寸、4.5-3.1英寸、3.0英寸及以下', '1', null);
INSERT INTO `yershop_attributes` VALUES ('170', '169', '5.6英寸及以上', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('171', '169', '5.5-5.1英寸', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('172', '169', '5.0-4.6英寸', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('173', '169', '4.5-3.1英寸', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('174', '169', '3.0英寸及以下', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('180', '0', '材质', '0', '43', '0', '塑料、合金、木制', '1', null);
INSERT INTO `yershop_attributes` VALUES ('179', '164', '基础功能机', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('181', '180', '塑料', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('182', '180', '合金', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('183', '180', '木制', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('184', '0', '热点', '0', '42', '0', '以旧换新、功能机、儿童手机、合约机、全面屏、直板键盘、翻盖、商务手机、安全手机', '1', null);
INSERT INTO `yershop_attributes` VALUES ('185', '184', '以旧换新', '0', '42', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('186', '184', '功能机', '0', '42', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('187', '184', '儿童手机', '0', '42', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('188', '184', '合约机', '0', '42', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('189', '184', '全面屏', '0', '42', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('190', '184', '直板键盘', '0', '42', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('191', '184', '翻盖', '0', '42', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('192', '184', '商务手机', '0', '42', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('193', '184', '安全手机', '0', '42', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('194', '0', '网络', '0', '43', '0', '移动4G/联通4G/电信4G、移动4G+、移动4G、联通4G、电信4G、双卡单4G、双卡双4G、双卡2G网络', '1', null);
INSERT INTO `yershop_attributes` VALUES ('195', '194', '移动4G/联通4G/电信4G', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('196', '194', '移动4G+', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('197', '194', '移动4G', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('198', '194', '联通4G', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('199', '194', '电信4G', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('200', '194', '双卡单4G', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('201', '194', '双卡双4G', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('202', '194', '双卡2G网络', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('203', '0', '运行内存', '0', '43', '0', '8GB、6GB、4GB、3GB、2GB、2GB以下', '1', null);
INSERT INTO `yershop_attributes` VALUES ('211', '0', '购买方式', '0', '43', '0', '移动合约、联通合约、电信合约', '1', null);
INSERT INTO `yershop_attributes` VALUES ('205', '203', '8GB', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('206', '203', '6GB', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('207', '203', '4GB', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('208', '203', '3GB', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('209', '203', '2GB', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('210', '203', '2GB以下', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('212', '211', '移动合约', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('213', '211', '联通合约', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('214', '211', '电信合约', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('215', '0', '前置摄像头像素', '0', '43', '0', '1600万及以上、800万-1599万、500万-799万、200万-499万120万-199万、120万以下', '1', null);
INSERT INTO `yershop_attributes` VALUES ('216', '215', '1600万及以上', '0', '43', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('217', '215', '800万-1599万', '0', '43', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('218', '215', '500万-799万', '0', '43', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('219', '215', '200万-499万120万-199万', '0', '43', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('220', '215', '120万以下', '0', '43', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('221', '0', '分类', '0', '45', '0', '微型车、小型车、紧凑型车、中型车、中大型车、豪华车、MPV', '1', null);
INSERT INTO `yershop_attributes` VALUES ('222', '221', '微型车', '0', '45', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('223', '221', '小型车', '0', '45', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('224', '221', '紧凑型车', '0', '45', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('225', '221', '中型车', '0', '45', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('226', '221', '中大型车', '0', '45', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('227', '221', '豪华车', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('228', '221', 'MPV', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('229', '0', '国别', '0', '45', '0', '不限、自主、合资', '1', null);
INSERT INTO `yershop_attributes` VALUES ('230', '229', '不限', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('231', '229', '自主', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('232', '229', '合资', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('233', '0', '级别', '0', '45', '0', '微型车、小型车、紧凑型车、中型车、中大型车、SUV、MPV 皮卡', '1', null);
INSERT INTO `yershop_attributes` VALUES ('234', '233', 'SUV', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('235', '233', 'MPV 皮卡', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('236', '0', '相关分类', '0', '46', '0', '市场营销、企业管理与培训、管理学、项目管理、经济计划与管理、管理/电子商务、参考工具书', '1', null);
INSERT INTO `yershop_attributes` VALUES ('237', '236', '市场营销', '0', '46', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('238', '236', '企业管理与培训', '0', '46', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('239', '236', '管理学', '0', '46', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('240', '236', '项目管理', '0', '46', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('241', '236', '经济计划与管理', '0', '46', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('242', '236', '管理/电子商务', '0', '46', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('243', '236', '参考工具书', '0', '46', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('244', '0', '出版社', '0', '46', '0', '电子工业出版社、机械工业出版社、人民邮电出版社、科学出版社、中国社会科学出版社、清华大学出版社、北京大学出版社、东南大学出版社、武汉大学出版社', '1', null);
INSERT INTO `yershop_attributes` VALUES ('245', '244', '电子工业出版社', '0', '46', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('246', '244', '机械工业出版社', '0', '46', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('247', '244', '人民邮电出版社', '0', '46', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('248', '244', '科学出版社', '0', '46', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('249', '244', '中国社会科学出版社', '0', '46', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('250', '244', '清华大学出版社', '0', '46', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('251', '244', '北京大学出版社', '0', '46', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('252', '244', '东南大学出版社', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('253', '244', '武汉大学出版社', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('254', '0', '市场营销类型', '0', '46', '0', '销售管理、广告管理、品牌管理、产品管理、渠道管理、价格管理、客户服务、公共关系、国际市场、互联网', '1', null);
INSERT INTO `yershop_attributes` VALUES ('255', '254', '销售管理', '0', '46', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('256', '254', '广告管理', '0', '46', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('257', '254', '品牌管理', '0', '46', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('258', '254', '产品管理', '0', '46', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('259', '254', '渠道管理', '0', '46', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('260', '254', '价格管理', '0', '46', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('261', '254', '客户服务', '0', '46', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('262', '254', '公共关系', '0', '46', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('263', '254', '国际市场', '0', '46', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('265', '264', '876', '0', '47', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('266', '264', '7687', '0', '47', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('268', '264', '567', '0', '47', '0', null, '1', null);
INSERT INTO `yershop_attributes` VALUES ('269', '254', '互联网', '0', '46', '0', null, '1', null);

-- ----------------------------
-- Table structure for yershop_auth_extend
-- ----------------------------
DROP TABLE IF EXISTS `yershop_auth_extend`;
CREATE TABLE `yershop_auth_extend` (
  `group_id` mediumint(10) unsigned NOT NULL COMMENT '用户id',
  `extend_id` mediumint(8) unsigned NOT NULL COMMENT '扩展表中数据的id',
  `type` tinyint(1) unsigned NOT NULL COMMENT '扩展类型标识 1:栏目分类权限;2:模型权限',
  UNIQUE KEY `group_extend_type` (`group_id`,`extend_id`,`type`),
  KEY `uid` (`group_id`),
  KEY `group_id` (`extend_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户组与分类的对应关系表';

-- ----------------------------
-- Records of yershop_auth_extend
-- ----------------------------
INSERT INTO `yershop_auth_extend` VALUES ('1', '1', '1');
INSERT INTO `yershop_auth_extend` VALUES ('1', '1', '2');
INSERT INTO `yershop_auth_extend` VALUES ('1', '2', '1');
INSERT INTO `yershop_auth_extend` VALUES ('1', '2', '2');
INSERT INTO `yershop_auth_extend` VALUES ('1', '3', '1');
INSERT INTO `yershop_auth_extend` VALUES ('1', '3', '2');
INSERT INTO `yershop_auth_extend` VALUES ('1', '4', '1');
INSERT INTO `yershop_auth_extend` VALUES ('1', '37', '1');

-- ----------------------------
-- Table structure for yershop_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `yershop_auth_group`;
CREATE TABLE `yershop_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组id,自增主键',
  `module` varchar(20) NOT NULL DEFAULT '' COMMENT '用户组所属模块',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '组类型',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '用户组中文名称',
  `description` varchar(80) NOT NULL DEFAULT '' COMMENT '描述信息',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户组状态：为1正常，为0禁用,-1为删除',
  `rules` varchar(500) NOT NULL DEFAULT '' COMMENT '用户组拥有的规则id，多个规则 , 隔开',
  `group_id` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yershop_auth_group
-- ----------------------------
INSERT INTO `yershop_auth_group` VALUES ('6', 'admin', '1', '文员', '', '1', '74,77', '0');
INSERT INTO `yershop_auth_group` VALUES ('7', 'admin', '1', '美工', '', '1', '74,77,78,127,128,129,133', '0');
INSERT INTO `yershop_auth_group` VALUES ('8', 'admin', '1', '程序员', '', '1', '', '0');
INSERT INTO `yershop_auth_group` VALUES ('4', 'admin', '1', '客服', '', '1', '', '0');
INSERT INTO `yershop_auth_group` VALUES ('5', 'admin', '1', '售后', '', '1', '', '0');

-- ----------------------------
-- Table structure for yershop_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `yershop_auth_group_access`;
CREATE TABLE `yershop_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `group_id` mediumint(8) unsigned NOT NULL COMMENT '用户组id',
  `id` int(10) NOT NULL DEFAULT '0',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yershop_auth_group_access
-- ----------------------------
INSERT INTO `yershop_auth_group_access` VALUES ('6', '3', '0');
INSERT INTO `yershop_auth_group_access` VALUES ('6', '2', '0');

-- ----------------------------
-- Table structure for yershop_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `yershop_auth_rule`;
CREATE TABLE `yershop_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '规则所属module',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1-url;2-主菜单',
  `name` char(80) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`status`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=259 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yershop_auth_rule
-- ----------------------------
INSERT INTO `yershop_auth_rule` VALUES ('1', 'admin', '2', 'Admin/Index/index', '首页', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('2', 'admin', '2', 'Admin/Article/index', '文章', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('3', 'admin', '2', 'Admin/User/index', '用户', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('4', 'admin', '2', 'Admin/Addons/index', '扩展', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('5', 'admin', '2', 'Admin/Config/group', '系统', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('7', 'admin', '1', 'Admin/article/add', '新增', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('8', 'admin', '1', 'Admin/article/edit', '编辑', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('9', 'admin', '1', 'Admin/article/setStatus', '改变状态', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('10', 'admin', '1', 'Admin/article/update', '保存', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('11', 'admin', '1', 'Admin/article/autoSave', '保存草稿', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('12', 'admin', '1', 'Admin/article/move', '移动', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('13', 'admin', '1', 'Admin/article/copy', '复制', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('14', 'admin', '1', 'Admin/article/paste', '粘贴', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('15', 'admin', '1', 'Admin/article/permit', '还原', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('16', 'admin', '1', 'Admin/article/clear', '清空', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('17', 'admin', '1', 'Admin/Article/examine', '审核列表', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('18', 'admin', '1', 'Admin/article/recycle', '回收站', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('19', 'admin', '1', 'Admin/User/addaction', '新增用户行为', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('20', 'admin', '1', 'Admin/User/editaction', '编辑用户行为', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('21', 'admin', '1', 'Admin/User/saveAction', '保存用户行为', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('22', 'admin', '1', 'Admin/User/setStatus', '变更行为状态', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('23', 'admin', '1', 'Admin/User/changeStatus?method=forbidUser', '禁用会员', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('24', 'admin', '1', 'Admin/User/changeStatus?method=resumeUser', '启用会员', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('25', 'admin', '1', 'Admin/User/changeStatus?method=deleteUser', '删除会员', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('26', 'admin', '1', 'Admin/User/index', '用户信息', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('27', 'admin', '1', 'Admin/User/action', '用户行为', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('28', 'admin', '1', 'Admin/AuthManager/changeStatus?method=deleteGroup', '删除', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('29', 'admin', '1', 'Admin/AuthManager/changeStatus?method=forbidGroup', '禁用', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('30', 'admin', '1', 'Admin/AuthManager/changeStatus?method=resumeGroup', '恢复', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('31', 'admin', '1', 'Admin/AuthManager/createGroup', '新增', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('32', 'admin', '1', 'Admin/AuthManager/editGroup', '编辑', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('33', 'admin', '1', 'Admin/AuthManager/writeGroup', '保存用户组', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('34', 'admin', '1', 'Admin/AuthManager/group', '授权', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('35', 'admin', '1', 'Admin/AuthManager/access', '访问授权', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('36', 'admin', '1', 'Admin/AuthManager/user', '成员授权', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('37', 'admin', '1', 'Admin/AuthManager/removeFromGroup', '解除授权', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('38', 'admin', '1', 'Admin/AuthManager/addToGroup', '保存成员授权', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('39', 'admin', '1', 'Admin/AuthManager/category', '分类授权', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('40', 'admin', '1', 'Admin/AuthManager/addToCategory', '保存分类授权', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('41', 'admin', '1', 'Admin/AuthManager/index', '权限管理', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('42', 'admin', '1', 'Admin/Addons/create', '创建', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('43', 'admin', '1', 'Admin/Addons/checkForm', '检测创建', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('44', 'admin', '1', 'Admin/Addons/preview', '预览', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('45', 'admin', '1', 'Admin/Addons/build', '快速生成插件', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('46', 'admin', '1', 'Admin/Addons/config', '设置', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('47', 'admin', '1', 'Admin/Addons/disable', '禁用', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('48', 'admin', '1', 'Admin/Addons/enable', '启用', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('49', 'admin', '1', 'Admin/Addons/install', '安装', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('50', 'admin', '1', 'Admin/Addons/uninstall', '卸载', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('51', 'admin', '1', 'Admin/Addons/saveconfig', '更新配置', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('52', 'admin', '1', 'Admin/Addons/adminList', '插件后台列表', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('53', 'admin', '1', 'Admin/Addons/execute', 'URL方式访问插件', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('54', 'admin', '1', 'Admin/Addons/index', '插件管理', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('55', 'admin', '1', 'Admin/Addons/hooks', '钩子管理', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('56', 'admin', '1', 'Admin/model/add', '新增', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('57', 'admin', '1', 'Admin/model/edit', '编辑', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('58', 'admin', '1', 'Admin/model/setStatus', '改变状态', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('59', 'admin', '1', 'Admin/model/update', '保存数据', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('60', 'admin', '1', 'Admin/Model/index', '模型管理', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('61', 'admin', '1', 'Admin/Config/edit', '编辑', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('62', 'admin', '1', 'Admin/Config/del', '删除', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('63', 'admin', '1', 'Admin/Config/add', '新增', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('64', 'admin', '1', 'Admin/Config/save', '保存', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('65', 'admin', '1', 'Admin/Config/group', '网站设置', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('66', 'admin', '1', 'Admin/Config/index', '配置管理', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('67', 'admin', '1', 'Admin/Channel/add', '新增', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('68', 'admin', '1', 'Admin/Channel/edit', '编辑', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('69', 'admin', '1', 'Admin/Channel/del', '删除', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('70', 'admin', '1', 'Admin/Channel/index', '导航管理', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('71', 'admin', '1', 'Admin/Category/edit', '编辑', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('72', 'admin', '1', 'Admin/Category/add', '新增', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('73', 'admin', '1', 'Admin/Category/remove', '删除', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('74', 'admin', '1', 'Admin/Category/index', '商品分类', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('75', 'admin', '1', 'Admin/file/upload', '上传控件', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('76', 'admin', '1', 'Admin/file/uploadPicture', '上传图片', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('77', 'admin', '1', 'Admin/file/download', '下载', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('94', 'admin', '1', 'Admin/AuthManager/modelauth', '模型授权', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('79', 'admin', '1', 'Admin/article/batchOperate', '导入', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('80', 'admin', '1', 'Admin/Database/index?type=export', '备份数据库', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('81', 'admin', '1', 'Admin/Database/index?type=import', '还原数据库', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('82', 'admin', '1', 'Admin/Database/export', '备份', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('83', 'admin', '1', 'Admin/Database/optimize', '优化表', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('84', 'admin', '1', 'Admin/Database/repair', '修复表', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('86', 'admin', '1', 'Admin/Database/import', '恢复', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('87', 'admin', '1', 'Admin/Database/del', '删除', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('88', 'admin', '1', 'Admin/User/add', '新增用户', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('89', 'admin', '1', 'Admin/Attribute/index', '属性管理', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('90', 'admin', '1', 'Admin/Attribute/add', '新增', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('91', 'admin', '1', 'Admin/Attribute/edit', '编辑', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('92', 'admin', '1', 'Admin/Attribute/setStatus', '改变状态', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('93', 'admin', '1', 'Admin/Attribute/update', '保存数据', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('95', 'admin', '1', 'Admin/AuthManager/addToModel', '保存模型授权', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('96', 'admin', '1', 'Admin/Category/move', '移动', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('97', 'admin', '1', 'Admin/Category/merge', '合并', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('98', 'admin', '1', 'Admin/Config/menu', '后台菜单管理', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('99', 'admin', '1', 'Admin/Article/mydocument', '内容', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('100', 'admin', '1', 'Admin/Menu/index', '菜单管理', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('101', 'admin', '1', 'Admin/other', '其他', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('102', 'admin', '1', 'Admin/Menu/add', '新增', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('103', 'admin', '1', 'Admin/Menu/edit', '编辑', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('104', 'admin', '1', 'Admin/Think/lists?model=article', '文章管理', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('105', 'admin', '1', 'Admin/Think/lists?model=download', '下载管理', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('106', 'admin', '1', 'Admin/Think/lists?model=config', '配置管理', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('107', 'admin', '1', 'Admin/Action/actionlog', '行为日志', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('108', 'admin', '1', 'Admin/User/updatePassword', '修改密码', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('109', 'admin', '1', 'Admin/User/updateNickname', '修改昵称', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('110', 'admin', '1', 'Admin/action/edit', '查看行为日志', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('205', 'admin', '1', 'Admin/think/add', '新增数据', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('111', 'admin', '2', 'Admin/article/index', '文档列表', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('112', 'admin', '2', 'Admin/article/add', '新增', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('113', 'admin', '2', 'Admin/article/edit', '编辑', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('114', 'admin', '2', 'Admin/article/setStatus', '改变状态', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('115', 'admin', '2', 'Admin/article/update', '保存', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('116', 'admin', '2', 'Admin/article/autoSave', '保存草稿', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('117', 'admin', '2', 'Admin/article/move', '移动', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('118', 'admin', '2', 'Admin/article/copy', '复制', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('119', 'admin', '2', 'Admin/article/paste', '粘贴', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('120', 'admin', '2', 'Admin/article/batchOperate', '导入', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('121', 'admin', '2', 'Admin/article/recycle', '回收站', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('122', 'admin', '2', 'Admin/article/permit', '还原', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('123', 'admin', '2', 'Admin/article/clear', '清空', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('124', 'admin', '2', 'Admin/User/add', '新增用户', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('125', 'admin', '2', 'Admin/User/action', '用户行为', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('126', 'admin', '2', 'Admin/User/addAction', '新增用户行为', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('127', 'admin', '2', 'Admin/User/editAction', '编辑用户行为', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('128', 'admin', '2', 'Admin/User/saveAction', '保存用户行为', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('129', 'admin', '2', 'Admin/User/setStatus', '变更行为状态', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('130', 'admin', '2', 'Admin/User/changeStatus?method=forbidUser', '禁用会员', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('131', 'admin', '2', 'Admin/User/changeStatus?method=resumeUser', '启用会员', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('132', 'admin', '2', 'Admin/User/changeStatus?method=deleteUser', '删除会员', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('133', 'admin', '2', 'Admin/AuthManager/index', '权限管理', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('134', 'admin', '2', 'Admin/AuthManager/changeStatus?method=deleteGroup', '删除', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('135', 'admin', '2', 'Admin/AuthManager/changeStatus?method=forbidGroup', '禁用', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('136', 'admin', '2', 'Admin/AuthManager/changeStatus?method=resumeGroup', '恢复', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('137', 'admin', '2', 'Admin/AuthManager/createGroup', '新增', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('138', 'admin', '2', 'Admin/AuthManager/editGroup', '编辑', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('139', 'admin', '2', 'Admin/AuthManager/writeGroup', '保存用户组', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('140', 'admin', '2', 'Admin/AuthManager/group', '授权', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('141', 'admin', '2', 'Admin/AuthManager/access', '访问授权', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('142', 'admin', '2', 'Admin/AuthManager/user', '成员授权', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('143', 'admin', '2', 'Admin/AuthManager/removeFromGroup', '解除授权', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('144', 'admin', '2', 'Admin/AuthManager/addToGroup', '保存成员授权', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('145', 'admin', '2', 'Admin/AuthManager/category', '分类授权', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('146', 'admin', '2', 'Admin/AuthManager/addToCategory', '保存分类授权', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('147', 'admin', '2', 'Admin/AuthManager/modelauth', '模型授权', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('148', 'admin', '2', 'Admin/AuthManager/addToModel', '保存模型授权', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('149', 'admin', '2', 'Admin/Addons/create', '创建', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('150', 'admin', '2', 'Admin/Addons/checkForm', '检测创建', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('151', 'admin', '2', 'Admin/Addons/preview', '预览', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('152', 'admin', '2', 'Admin/Addons/build', '快速生成插件', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('153', 'admin', '2', 'Admin/Addons/config', '设置', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('154', 'admin', '2', 'Admin/Addons/disable', '禁用', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('155', 'admin', '2', 'Admin/Addons/enable', '启用', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('156', 'admin', '2', 'Admin/Addons/install', '安装', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('157', 'admin', '2', 'Admin/Addons/uninstall', '卸载', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('158', 'admin', '2', 'Admin/Addons/saveconfig', '更新配置', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('159', 'admin', '2', 'Admin/Addons/adminList', '插件后台列表', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('160', 'admin', '2', 'Admin/Addons/execute', 'URL方式访问插件', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('161', 'admin', '2', 'Admin/Addons/hooks', '钩子管理', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('162', 'admin', '2', 'Admin/Model/index', '模型管理', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('163', 'admin', '2', 'Admin/model/add', '新增', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('164', 'admin', '2', 'Admin/model/edit', '编辑', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('165', 'admin', '2', 'Admin/model/setStatus', '改变状态', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('166', 'admin', '2', 'Admin/model/update', '保存数据', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('167', 'admin', '2', 'Admin/Attribute/index', '属性管理', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('168', 'admin', '2', 'Admin/Attribute/add', '新增', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('169', 'admin', '2', 'Admin/Attribute/edit', '编辑', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('170', 'admin', '2', 'Admin/Attribute/setStatus', '改变状态', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('171', 'admin', '2', 'Admin/Attribute/update', '保存数据', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('172', 'admin', '2', 'Admin/Config/index', '配置管理', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('173', 'admin', '2', 'Admin/Config/edit', '编辑', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('174', 'admin', '2', 'Admin/Config/del', '删除', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('175', 'admin', '2', 'Admin/Config/add', '新增', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('176', 'admin', '2', 'Admin/Config/save', '保存', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('177', 'admin', '2', 'Admin/Menu/index', '菜单管理', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('178', 'admin', '2', 'Admin/Channel/index', '导航管理', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('179', 'admin', '2', 'Admin/Channel/add', '新增', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('180', 'admin', '2', 'Admin/Channel/edit', '编辑', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('181', 'admin', '2', 'Admin/Channel/del', '删除', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('182', 'admin', '2', 'Admin/Category/index', '分类管理', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('183', 'admin', '2', 'Admin/Category/edit', '编辑', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('184', 'admin', '2', 'Admin/Category/add', '新增', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('185', 'admin', '2', 'Admin/Category/remove', '删除', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('186', 'admin', '2', 'Admin/Category/move', '移动', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('187', 'admin', '2', 'Admin/Category/merge', '合并', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('188', 'admin', '2', 'Admin/Database/index?type=export', '备份数据库', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('189', 'admin', '2', 'Admin/Database/export', '备份', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('190', 'admin', '2', 'Admin/Database/optimize', '优化表', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('191', 'admin', '2', 'Admin/Database/repair', '修复表', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('192', 'admin', '2', 'Admin/Database/index?type=import', '还原数据库', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('193', 'admin', '2', 'Admin/Database/import', '恢复', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('194', 'admin', '2', 'Admin/Database/del', '删除', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('195', 'admin', '2', 'Admin/other', '其他', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('196', 'admin', '2', 'Admin/Menu/add', '新增', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('197', 'admin', '2', 'Admin/Menu/edit', '编辑', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('198', 'admin', '2', 'Admin/Think/lists?model=article', '应用', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('199', 'admin', '2', 'Admin/Think/lists?model=download', '下载管理', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('200', 'admin', '2', 'Admin/Think/lists?model=config', '应用', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('201', 'admin', '2', 'Admin/Action/actionlog', '行为日志', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('202', 'admin', '2', 'Admin/User/updatePassword', '修改密码', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('203', 'admin', '2', 'Admin/User/updateNickname', '修改昵称', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('204', 'admin', '2', 'Admin/action/edit', '查看行为日志', '-1', '');
INSERT INTO `yershop_auth_rule` VALUES ('206', 'admin', '1', 'Admin/think/edit', '编辑数据', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('207', 'admin', '1', 'Admin/Menu/import', '导入', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('208', 'admin', '1', 'Admin/Model/generate', '生成', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('209', 'admin', '1', 'Admin/Addons/addHook', '新增钩子', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('210', 'admin', '1', 'Admin/Addons/edithook', '编辑钩子', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('211', 'admin', '1', 'Admin/Article/sort', '文档排序', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('212', 'admin', '1', 'Admin/Config/sort', '排序', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('213', 'admin', '1', 'Admin/Menu/sort', '排序', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('214', 'admin', '1', 'Admin/Channel/sort', '排序', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('215', 'admin', '1', 'Admin/Category/operate/type/move', '移动', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('216', 'admin', '1', 'Admin/Category/operate/type/merge', '合并', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('217', 'admin', '1', 'Admin/article/index', '文档列表', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('218', 'admin', '1', 'Admin/think/lists', '数据列表', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('219', 'admin', '1', 'Admin/Attributes/index', '属性配置', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('220', 'admin', '1', 'Admin/Brand/index', '品牌管理', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('221', 'admin', '1', 'Admin/Slide/index', '幻灯片', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('222', 'admin', '1', 'Admin/Ad/index', '广告', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('223', 'admin', '1', 'Admin/Check/index', '商家审核', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('224', 'admin', '1', 'Admin/SellerMenu/index', '后台菜单', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('225', 'admin', '1', 'Admin/Types/index', ' 商品类型', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('226', 'admin', '1', 'Admin/Order/index', '提交订单', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('227', 'admin', '1', 'Admin/GoodsAttributes/index', '商品属性', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('228', 'admin', '1', 'Admin/Cancel/index', '取消管理', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('229', 'admin', '1', 'Admin/Catearticle/index', '文章分类', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('230', 'admin', '1', 'Admin/Goods/index', '商品列表', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('231', 'admin', '1', 'Admin/Back/index', '正退货订单', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('232', 'admin', '1', 'Admin/Stock/index', '库存sku', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('233', 'admin', '1', 'Admin/Fcoupon/index', '优惠券', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('234', 'admin', '1', 'Admin/Change/index', '换货管理', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('235', 'admin', '2', 'Admin/Goods/index', '商品', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('236', 'admin', '1', 'Admin/Backrefuse/index', '拒绝退货订单', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('237', 'admin', '2', 'Admin/Order/index', '订单', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('238', 'admin', '1', 'Admin/UserLog/index', '日志管理', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('239', 'admin', '1', 'Admin/Backon/index', '退货中订单', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('240', 'admin', '1', 'Admin/Email/index', '邮件管理', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('241', 'admin', '1', 'Admin/Backagree/index', '同意退货订单', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('242', 'admin', '1', 'Admin/Sms/index', '短信管理', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('243', 'admin', '1', 'Admin/Reserve/index', '预约列表', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('244', 'admin', '1', 'Admin/Backover/index', '已退货订单', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('245', 'admin', '1', 'Admin/Pay/index', '支付管理', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('246', 'admin', '1', 'Admin/Envelope/index', '站内信管理', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('247', 'admin', '1', 'Admin/Express/index', ' 快递管理', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('248', 'admin', '2', 'Admin/Slide/index', '广告', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('249', 'admin', '1', 'Admin/Message/index', '留言管理', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('250', 'admin', '1', 'Admin/Reply/index', '回复管理', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('251', 'admin', '2', 'Admin/Check/index', '商家', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('252', 'admin', '1', 'Admin/Statistics/index', '今日销量统计', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('253', 'admin', '1', 'Admin/Statistics/week', '本周销量统计', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('254', 'admin', '1', 'Admin/Statistics/month', '本月销量统计', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('255', 'admin', '1', 'Admin/Report/index', '每日数据', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('256', 'admin', '1', 'Admin/Report/week', '每周数据', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('257', 'admin', '1', 'Admin/Report/month', '每月统计', '1', '');
INSERT INTO `yershop_auth_rule` VALUES ('258', 'admin', '1', 'Admin/Lookup/index', '流量统计', '1', '');

-- ----------------------------
-- Table structure for yershop_brand
-- ----------------------------
DROP TABLE IF EXISTS `yershop_brand`;
CREATE TABLE `yershop_brand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '标志',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `price` varchar(50) NOT NULL DEFAULT '' COMMENT '金额',
  `code` varchar(255) NOT NULL COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `meta_title` varchar(100) NOT NULL DEFAULT '',
  `allow_publish` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许发布内容',
  `display` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '可见性',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '数据状态',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '图标',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `goodid` varchar(225) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `uk_name` (`name`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='表';

-- ----------------------------
-- Records of yershop_brand
-- ----------------------------
INSERT INTO `yershop_brand` VALUES ('1', 'Maxwell', '麦斯威尔', '', '', '', '', '0', '1', '1442509490', '1442572614', '1', '119', '52', '');
INSERT INTO `yershop_brand` VALUES ('4', 'ylrh\'', '元朗荣华', '', '', '', '', '0', '1', '1442576731', '1442576731', '1', '120', '57', '');
INSERT INTO `yershop_brand` VALUES ('5', 'jrkj', '肌肉科技', '', '', '', '', '0', '1', '1442576899', '1442576899', '1', '121', '57', '');
INSERT INTO `yershop_brand` VALUES ('6', 'ychdzx', '阳澄湖大闸蟹', '', '', '', '', '0', '1', '1442576947', '1442576947', '1', '122', '52', '');
INSERT INTO `yershop_brand` VALUES ('7', 'hennessy', 'hennessy', '', '', '', '', '0', '1', '1442577280', '1442577280', '1', '123', '52', '');
INSERT INTO `yershop_brand` VALUES ('8', 'dxc', '稻香村', '', '', '', '', '0', '1', '1442577327', '1442577327', '1', '124', '57', '');
INSERT INTO `yershop_brand` VALUES ('9', 'gzmt', '贵州茅台', '', '', '', '', '0', '1', '1442577383', '1442577383', '1', '125', '52', '');
INSERT INTO `yershop_brand` VALUES ('10', 'lafei', '拉菲', '', '', '', '', '0', '1', '1442577421', '1442577421', '1', '126', '52', '');
INSERT INTO `yershop_brand` VALUES ('11', 'bsl', '博士伦', '', '', '', '', '0', '1', '1442577594', '1442577594', '1', '127', '57', '');
INSERT INTO `yershop_brand` VALUES ('12', 'qhsj', '奇华世家', '', '', '', '', '0', '1', '1442588150', '1442588150', '1', '132', '52', '');
INSERT INTO `yershop_brand` VALUES ('13', 'lppz', '良品铺子', '', '', '', '', '0', '1', '1442588302', '1442588302', '1', '133', '52', '');
INSERT INTO `yershop_brand` VALUES ('14', 'dzph', '德州扒鹤', '', '', '', '', '0', '1', '1442588386', '1442588386', '1', '134', '57', '');
INSERT INTO `yershop_brand` VALUES ('15', 'AOC', '冠捷', '', '', '', '', '0', '1', '1442655509', '1442655509', '1', '135', '107', '');
INSERT INTO `yershop_brand` VALUES ('16', 'lenovo', '联想', '', '', '', '', '0', '1', '1442655587', '1442655587', '1', '136', '107', '');
INSERT INTO `yershop_brand` VALUES ('17', 'hp', '惠普打印', '', '', '', '', '0', '1', '1442655629', '1442655629', '1', '137', '107', '');
INSERT INTO `yershop_brand` VALUES ('18', 'leishen', '雷神', '', '', '', '', '0', '1', '1442655789', '1442655789', '1', '138', '107', '');
INSERT INTO `yershop_brand` VALUES ('19', 'acer', '宏碁', '', '', '', '', '0', '1', '1442655887', '1442655887', '1', '139', '107', '');
INSERT INTO `yershop_brand` VALUES ('20', 'samsung', '三星', '', '', '', '', '0', '1', '1442655930', '1442655930', '1', '140', '107', '');
INSERT INTO `yershop_brand` VALUES ('21', 'midea', '美的', '', '', '', '', '0', '1', '1442655970', '1442655970', '1', '141', '107', '');
INSERT INTO `yershop_brand` VALUES ('22', 'apple', '苹果', '', '', '', '', '0', '1', '1442656023', '1442656023', '1', '142', '107', '');
INSERT INTO `yershop_brand` VALUES ('23', 'flyco', '飞科', '', '', '', '', '0', '1', '1442656073', '1442656073', '1', '143', '107', '');
INSERT INTO `yershop_brand` VALUES ('24', 'blueair', '布鲁雅尔', '', '', '', '', '0', '1', '1442656143', '1442656143', '1', '144', '107', '');
INSERT INTO `yershop_brand` VALUES ('25', 'LG', 'LG', '', '', '', '', '0', '1', '1442656437', '1442656437', '1', '145', '107', '');
INSERT INTO `yershop_brand` VALUES ('26', 'chinaunicom', '联通', '', '', '', '', '0', '1', '1442656602', '1442656602', '1', '146', '107', '');

-- ----------------------------
-- Table structure for yershop_cart
-- ----------------------------
DROP TABLE IF EXISTS `yershop_cart`;
CREATE TABLE `yershop_cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `num` int(50) DEFAULT NULL COMMENT '商品数量',
  `price` varchar(225) NOT NULL DEFAULT '' COMMENT '商品价格',
  `title` varchar(225) NOT NULL DEFAULT '' COMMENT '商品名称',
  `sku_id` varchar(225) NOT NULL DEFAULT '' COMMENT '库存序号',
  `specifications` varchar(225) NOT NULL DEFAULT '' COMMENT '商品参数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `path` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 COMMENT='购物车表';

-- ----------------------------
-- Records of yershop_cart
-- ----------------------------
INSERT INTO `yershop_cart` VALUES ('47', '203', '28', '1', '12', '', '313', '&nbsp;1kg&nbsp;优惠套装1', '0', '80,83');
INSERT INTO `yershop_cart` VALUES ('51', '206', '29', '9', '234', '', '319', '&nbsp;', '0', '');
INSERT INTO `yershop_cart` VALUES ('52', '162', '1', '1', '39', '', '214', '&nbsp;', '0', '');
INSERT INTO `yershop_cart` VALUES ('50', '209', '29', '1', '3245', '', '322', '&nbsp;', '0', '');
INSERT INTO `yershop_cart` VALUES ('48', '168', '28', '1', '99', '', '220', '&nbsp;', '0', '');
INSERT INTO `yershop_cart` VALUES ('56', '182', '1', '1', '233', '', '283', '&nbsp;', '0', '');
INSERT INTO `yershop_cart` VALUES ('60', '203', '1', '1', '18', '', '314', '&nbsp;1kg&nbsp;优惠套装2', '0', '80,84');
INSERT INTO `yershop_cart` VALUES ('134', '203', '1', '7', '12.00', '', '313', '&nbsp;1kg&nbsp;优惠套装1', '0', '80,83');
INSERT INTO `yershop_cart` VALUES ('62', '185', '1', '1', '534', '', '291', '&nbsp;蓝色&nbsp;x', '0', '64,66');
INSERT INTO `yershop_cart` VALUES ('63', '203', '1', '1', '20', '', '315', '&nbsp;2kg&nbsp;优惠套装1', '0', '81,83');
INSERT INTO `yershop_cart` VALUES ('65', '171', '1', '4', '5675', '', '234', '&nbsp;2G&nbsp;16G', '0', '74,87');
INSERT INTO `yershop_cart` VALUES ('66', '185', '1', '1', '235', '', '290', '&nbsp;红色&nbsp;xl', '0', '63,67');
INSERT INTO `yershop_cart` VALUES ('67', '179', '1', '2', '4456', '', '277', '&nbsp;白&nbsp;官方标配&nbsp;1g', '0', '92,95,101');
INSERT INTO `yershop_cart` VALUES ('69', '179', '1', '1', '3456', '', '274', '&nbsp;黑&nbsp;官方标配&nbsp;2G', '0', null);
INSERT INTO `yershop_cart` VALUES ('70', '179', '1', '2', '3456', '', '274', '&nbsp;黑&nbsp;官方标配&nbsp;2G', '0', '91,95,74');
INSERT INTO `yershop_cart` VALUES ('72', '200', '1', '1', '234', '', '310', '&nbsp;', '0', '200');
INSERT INTO `yershop_cart` VALUES ('73', '169', '1', '5', '77', '', '221', '&nbsp;', '0', '');
INSERT INTO `yershop_cart` VALUES ('144', '209', '1', '2', '3245.00', '', '322', '&nbsp;', '0', '');
INSERT INTO `yershop_cart` VALUES ('132', '208', '1', '3', '23.00', '', '321', '&nbsp;', '0', '');
INSERT INTO `yershop_cart` VALUES ('131', '193', '1', '13', '454.00', '', '300', '&nbsp;普装&nbsp;16开', '0', '113,116');
INSERT INTO `yershop_cart` VALUES ('142', '205', '1', '2', '2342.00', '', '318', '&nbsp;', '0', '');
INSERT INTO `yershop_cart` VALUES ('143', '206', '1', '3', '234.00', '', '319', '&nbsp;', '0', '');
INSERT INTO `yershop_cart` VALUES ('141', '185', '1', '16', '124.00', '', '289', '&nbsp;红色&nbsp;x', '0', '63,66');
INSERT INTO `yershop_cart` VALUES ('140', '179', '1', '3', '5465.00', '', '273', '&nbsp;黑&nbsp;官方标配&nbsp;1g', '0', '91,95,101');

-- ----------------------------
-- Table structure for yershop_cate
-- ----------------------------
DROP TABLE IF EXISTS `yershop_cate`;
CREATE TABLE `yershop_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sort` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `name` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yershop_cate
-- ----------------------------
INSERT INTO `yershop_cate` VALUES ('5', '0', '新手入门', '0', '1', null);
INSERT INTO `yershop_cate` VALUES ('2', '1', '购物流程', '0', '1', null);
INSERT INTO `yershop_cate` VALUES ('3', '0', '支付方式', '1', '0', null);
INSERT INTO `yershop_cate` VALUES ('6', '5', '购物流程', '0', '1', null);
INSERT INTO `yershop_cate` VALUES ('8', '5', '会员制度', '0', '1', null);
INSERT INTO `yershop_cate` VALUES ('9', '5', '订单查询', '0', '1', null);
INSERT INTO `yershop_cate` VALUES ('10', '5', '发票制度', '0', '1', null);
INSERT INTO `yershop_cate` VALUES ('19', '13', '211限时达', '0', '1', null);
INSERT INTO `yershop_cate` VALUES ('12', '3', '货到付款', '0', '1', null);
INSERT INTO `yershop_cate` VALUES ('13', '0', '配送服务', '0', '1', null);
INSERT INTO `yershop_cate` VALUES ('14', '13', '配送范围及运费', '0', '1', null);
INSERT INTO `yershop_cate` VALUES ('15', '0', '售后保障', '0', '1', null);
INSERT INTO `yershop_cate` VALUES ('16', '15', '退换货政策', '0', '1', null);
INSERT INTO `yershop_cate` VALUES ('17', '0', '购物指南', '0', '1', null);
INSERT INTO `yershop_cate` VALUES ('30', '17', '常见问题', '0', '1', null);
INSERT INTO `yershop_cate` VALUES ('20', '13', '上门自提', '0', '1', null);
INSERT INTO `yershop_cate` VALUES ('21', '13', '配送费收取标准', '0', '1', null);
INSERT INTO `yershop_cate` VALUES ('22', '15', '价格保证', '0', '1', null);
INSERT INTO `yershop_cate` VALUES ('23', '15', '退款说明', '0', '1', null);
INSERT INTO `yershop_cate` VALUES ('24', '15', '取消订单', '0', '1', null);
INSERT INTO `yershop_cate` VALUES ('25', '3', '在线支付', '0', '1', null);
INSERT INTO `yershop_cate` VALUES ('26', '3', '邮局汇款', '0', '1', null);
INSERT INTO `yershop_cate` VALUES ('27', '3', '公司转账', '0', '1', null);
INSERT INTO `yershop_cate` VALUES ('28', '17', '购物流程', '0', '1', null);
INSERT INTO `yershop_cate` VALUES ('29', '17', '会员介绍', '0', '1', null);
INSERT INTO `yershop_cate` VALUES ('31', '17', '联系客服', '0', '1', null);

-- ----------------------------
-- Table structure for yershop_category
-- ----------------------------
DROP TABLE IF EXISTS `yershop_category`;
CREATE TABLE `yershop_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `name` varchar(30) NOT NULL COMMENT '标志',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `list_row` tinyint(3) unsigned NOT NULL DEFAULT '10' COMMENT '列表每页行数',
  `meta_title` varchar(50) NOT NULL DEFAULT '' COMMENT 'SEO的网页标题',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `template_index` varchar(100) NOT NULL COMMENT '频道页模板',
  `template_lists` varchar(100) NOT NULL COMMENT '列表页模板',
  `template_detail` varchar(100) NOT NULL COMMENT '详情页模板',
  `template_edit` varchar(100) NOT NULL COMMENT '编辑页模板',
  `model` varchar(100) NOT NULL DEFAULT '' COMMENT '列表绑定模型',
  `model_sub` varchar(100) NOT NULL DEFAULT '' COMMENT '子文档绑定模型',
  `type` varchar(100) NOT NULL DEFAULT '' COMMENT '允许发布的内容类型',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '外链',
  `allow_publish` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许发布内容',
  `display` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '可见性',
  `reply` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许回复',
  `check` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '发布的文章是否需要审核',
  `reply_model` varchar(100) NOT NULL DEFAULT '',
  `extend` text NOT NULL COMMENT '扩展设置',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '数据状态',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类图标',
  `ismenu` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类是否调用',
  `model_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=172 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of yershop_category
-- ----------------------------
INSERT INTO `yershop_category` VALUES ('52', 'fruit', '食品饮料、酒类生鲜', '0', '7', '10', '', '', '', '', '', '', '', '5', '5', '2', '0', '1', '1', '0', '0', '', '\"\"', '1411925214', '1489562378', '1', '209', '1', '41');
INSERT INTO `yershop_category` VALUES ('58', 'j_fruit', '进口水果', '52', '0', '10', '', '', '', '', '', '', '', '5', '5', '2', '0', '1', '1', '0', '0', '', '', '1411935041', '1421425884', '1', '0', '1', '39');
INSERT INTO `yershop_category` VALUES ('57', 'c_fruit', '国内水果', '52', '0', '10', '', '', '', '', '', '', '', '5', '2,5', '2,1,3', '0', '1', '1', '0', '0', '', '', '1411934874', '1422719396', '1', '0', '1', '39');
INSERT INTO `yershop_category` VALUES ('71', 'tushu', '图书音像、数字商品', '0', '4', '10', '', '', '', '', '', '', '', '7', '7', '2', '0', '1', '1', '0', '0', '', '', '1414344085', '1420956824', '1', '210', '1', '46');
INSERT INTO `yershop_category` VALUES ('72', 'xie', '珠宝、钟表', '0', '0', '10', '', '', '', '', '', '', '', '5', '5', '2,1,3', '0', '1', '1', '0', '0', '', '', '1414674812', '1421415890', '1', '211', '1', '39');
INSERT INTO `yershop_category` VALUES ('73', 'car', '整车、汽车用品', '0', '0', '10', '', '', '', '', '', '', '', '5', '5', '2,1,3', '0', '1', '1', '0', '0', '', '', '1414674847', '1421388297', '1', '212', '1', '45');
INSERT INTO `yershop_category` VALUES ('75', 'fushi', '男装、女装、鞋包', '0', '5', '10', '', '', '', '', '', '', '', '8', '5', '2', '0', '1', '1', '0', '0', '', '', '1414674964', '1421391978', '1', '219', '1', '42');
INSERT INTO `yershop_category` VALUES ('76', 'jiaju', '母婴、玩具乐器', '0', '0', '10', '', '', '', '', '', '', '', '5', '5', '2,1,3', '0', '1', '1', '0', '0', '', '\"\"', '1414675003', '1438934343', '1', '214', '1', '39');
INSERT INTO `yershop_category` VALUES ('126', 'apple', '苹果', '57', '0', '10', '', '', '', '', '', '', '', '5', '5', '2', '0', '1', '1', '0', '0', '', '', '1421502954', '1421502954', '1', '0', '1', '39');
INSERT INTO `yershop_category` VALUES ('81', 'ebook', '电子书', '71', '0', '10', '', '', '', '', '', '', '', '7', '', '', '0', '1', '1', '0', '0', '', '', '1420956858', '1420956858', '1', '0', '1', '39');
INSERT INTO `yershop_category` VALUES ('82', 'mianfei', '免费', '81', '0', '10', '', '', '', '', '', '', '', '7', '5', '2', '0', '1', '1', '0', '0', '', '', '1420956901', '1420956901', '1', '0', '1', '38');
INSERT INTO `yershop_category` VALUES ('83', 'emusic', '数字音乐', '81', '0', '10', '', '', '', '', '', '', '', '7', '5', '2', '0', '1', '1', '0', '0', '', '', '1420959330', '1420960517', '1', '0', '1', '46');
INSERT INTO `yershop_category` VALUES ('84', 'yinxiang', '  音像', '81', '0', '10', '', '', '', '', '', '', '', '7', '5', '2', '0', '1', '1', '0', '0', '', '', '1420960144', '1420960144', '1', '0', '1', '39');
INSERT INTO `yershop_category` VALUES ('86', 'renwensheke', '人文社科', '71', '0', '10', '', '', '', '', '', '', '', '7', '5', '2', '0', '1', '1', '0', '0', '', '', '1420960622', '1420960622', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('87', 'history', '历史', '86', '0', '10', '', '', '', '', '', '', '', '7', '7', '2', '0', '1', '1', '0', '0', '', '', '1420960661', '1420960661', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('88', 'xinli', '心理学', '86', '0', '10', '', '', '', '', '', '', '', '7', '7', '2', '0', '1', '1', '0', '0', '', '', '1420960700', '1420960711', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('108', 'qingjie', '清洁', '106', '0', '10', '', '', '', '', '', '', '', '5', '5', '2', '0', '1', '1', '0', '0', '', '', '1420963449', '1420963449', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('92', 'nvxie', '女鞋', '72', '0', '10', '', '', '', '', '', '', '', '8', '8', '2', '0', '1', '1', '0', '0', '', '', '1420961778', '1420961778', '1', '0', '1', '39');
INSERT INTO `yershop_category` VALUES ('90', 'gex', '个护化妆', '0', '0', '10', '', '', '', '', '', '', '', '5', '5', '2,1,3', '0', '1', '1', '0', '0', '', '', '1420961431', '1421388355', '1', '216', '1', '40');
INSERT INTO `yershop_category` VALUES ('93', 'nvxue', '女靴', '92', '0', '10', '', '', '', '', '', '', '', '8', '5', '2', '0', '1', '1', '0', '0', '', '', '1420961856', '1420961856', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('94', 'nanxie', '男鞋', '72', '0', '10', '', '', '', '', '', '', '', '8', '8', '2', '0', '1', '1', '0', '0', '', '', '1420961909', '1420961909', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('96', 'yundongxie', '运动鞋', '94', '0', '10', '', '', '', '', '', '', '', '5', '5', '2', '0', '1', '1', '0', '0', '', '', '1420962056', '1420962056', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('97', 'quanbuche', '全部整车', '73', '0', '10', '', '', '', '', '', '', '', '5', '5', '2', '0', '1', '1', '0', '0', '', '', '1420962156', '1420962156', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('98', 'xiaoxingche', '小型车', '97', '0', '10', '', '', '', '', '', '', '', '5', '5', '2', '0', '1', '1', '0', '0', '', '', '1420962208', '1420962208', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('99', 'nvbao', '女包', '72', '0', '10', '', '', '', '', '', '', '', '8', '5', '2', '0', '1', '1', '0', '0', '', '', '1420962320', '1420962320', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('100', 'danjianbao', '单肩包', '99', '0', '10', '', '', '', '', '', '', '', '5', '8', '2', '0', '1', '1', '0', '0', '', '', '1420962475', '1420962475', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('101', 'shoutibao', '手提包', '99', '0', '10', '', '', '', '', '', '', '', '5', '8', '2', '0', '1', '1', '0', '0', '', '', '1420962560', '1420962560', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('102', 'weixiubaoyang', '维修保养', '73', '0', '10', '', '', '', '', '', '', '', '5', '5', '2', '0', '1', '1', '0', '0', '', '', '1420962736', '1420962736', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('103', 'yunhuayou', '润滑油', '102', '0', '10', '', '', '', '', '', '', '', '5', '5', '2', '0', '1', '1', '0', '0', '', '', '1420962815', '1420962815', '1', '213', '1', '40');
INSERT INTO `yershop_category` VALUES ('109', 'dianchi', '电池', '105', '0', '10', '', '', '', '', '', '', '', '2,5', '6', '2', '0', '1', '1', '0', '0', '', '', '1420963534', '1421426883', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('104', 'shoujitx', '手机通信', '107', '0', '10', '', '', '', '', '', '', '', '5', '6', '2', '0', '1', '1', '0', '0', '', '', '1420963032', '1420963107', '1', '0', '1', '38');
INSERT INTO `yershop_category` VALUES ('105', 'shoujipj', '手机配件', '107', '0', '10', '', '', '', '', '', '', '', '5', '6', '2', '0', '1', '1', '0', '0', '', '', '1420963151', '1420963151', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('106', 'mbhli', '面部护肤', '90', '0', '10', '', '', '', '', '', '', '', '5', '', '2', '0', '1', '1', '0', '0', '', '', '1420963200', '1420963200', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('107', 'sjsmtx', '手机、数码、通信', '0', '6', '10', '', '', '', '', '', '', '', '6', '6', '2', '0', '1', '1', '0', '0', '', '', '1420963286', '1421388202', '1', '215', '1', '43');
INSERT INTO `yershop_category` VALUES ('110', 'mobilephone', '手机', '104', '0', '10', '', '', '', '', '', '', '', '6', '6', '2', '0', '1', '1', '0', '0', '', '\"\"', '1420963589', '1428684577', '1', '0', '1', '43');
INSERT INTO `yershop_category` VALUES ('111', 'jiajujiaz', '家居、家具、家装', '0', '0', '10', '', '', '', '', '', '', '', '5', '5', '2', '0', '1', '1', '0', '0', '', '', '1420963642', '1421388233', '1', '217', '1', '40');
INSERT INTO `yershop_category` VALUES ('112', 'chuju', '厨具', '111', '0', '10', '', '', '', '', '', '', '', '5', '5', '2', '0', '1', '1', '0', '0', '', '', '1420963698', '1420963698', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('114', 'daojiancb', '刀剪菜板', '112', '0', '10', '', '', '', '', '', '', '', '5', '5', '2', '0', '1', '1', '0', '0', '', '', '1420963850', '1420963850', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('115', 'nanzhuang', '男装', '75', '0', '10', '', '', '', '', '', '', '', '8', '5', '2', '0', '1', '1', '0', '0', '', '', '1420964463', '1420964463', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('116', 'chenshan', '衬衫', '115', '0', '10', '', '', '', '', '', '', '', '8', '5', '2', '0', '1', '1', '0', '0', '', '', '1420964510', '1420964510', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('117', 'nvzhuang', '女装', '75', '0', '10', '', '', '', '', '', '', '', '8', '5', '2', '0', '1', '1', '0', '0', '', '', '1420964548', '1420964548', '1', '0', '1', '39');
INSERT INTO `yershop_category` VALUES ('118', 'fushipj', '服饰配件', '75', '0', '10', '', '', '', '', '', '', '', '8', '5', '2', '0', '1', '1', '0', '0', '', '', '1420964671', '1420964671', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('119', 'zbss', '珠宝首饰', '75', '0', '10', '', '', '', '', '', '', '', '5', '5', '2', '0', '1', '1', '0', '0', '', '', '1420964736', '1420964736', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('120', 'milk', '奶粉', '76', '0', '10', '', '', '', '', '', '', '', '5', '5', '2', '0', '1', '1', '0', '0', '', '', '1420965368', '1420965391', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('121', 'yyfs', '营养辅食', '76', '0', '10', '', '', '', '', '', '', '', '5', '5', '2', '0', '1', '1', '0', '0', '', '', '1420965451', '1420965451', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('122', 'dha', 'DHA', '121', '0', '10', '', '', '', '', '', '', '', '5', '5', '2', '0', '1', '1', '0', '0', '', '', '1420965492', '1420965492', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('123', 'tyj', '太阳镜', '118', '0', '10', '', '', '', '', '', '', '', '5', '5', '2', '0', '1', '1', '0', '0', '', '', '1420965553', '1420965553', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('124', 'clz', '车厘子', '58', '0', '10', '', '', '', '', '', '', '', '5', '5', '2', '0', '1', '1', '0', '0', '', '', '1420965600', '1420965600', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('129', 'yurf', '羽绒服', '115', '0', '10', '', '', '', '', '', '', '', '8', '5', '2', '0', '1', '1', '0', '0', '', '', '1421591035', '1421591035', '1', '0', '1', '42');
INSERT INTO `yershop_category` VALUES ('150', 'lysx', '粮油生鲜', '52', '0', '30', '', '', '', '', '', '', '', '5', '', '2', '0', '1', '1', '0', '0', '', '\"\"', '1442675312', '1442675312', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('151', 'ylnn', '饮料牛奶', '52', '0', '30', '', '', '', '', '', '', '', '5', '', '2', '0', '1', '1', '0', '0', '', '\"\"', '1442675533', '1442675533', '1', '0', '1', '47');
INSERT INTO `yershop_category` VALUES ('152', 'xxsp', '休闲食品', '52', '0', '30', '', '', '', '', '', '', '', '5', '5', '2', '0', '1', '1', '0', '0', '', '\"\"', '1442675864', '1442675864', '1', '0', '1', '41');
INSERT INTO `yershop_category` VALUES ('153', 'djmj', '鼎极名酒', '52', '0', '30', '', '', '', '', '', '', '', '5', '', '2', '0', '1', '1', '0', '0', '', '\"\"', '1442742276', '1442946577', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('154', 'clyy', '潮流影音', '107', '0', '30', '', '', '', '', '', '', '', '5', '', '2', '0', '1', '1', '0', '0', '', '\"\"', '1442754697', '1442754697', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('155', 'divyj', 'DIV硬件', '107', '0', '30', '', '', '', '', '', '', '', '5', '', '2', '0', '1', '1', '0', '0', '', '\"\"', '1442754780', '1442754780', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('156', 'djyx', '电竞游戏', '107', '0', '30', '', '', '', '', '', '', '', '5', '', '2', '0', '1', '1', '0', '0', '', '\"\"', '1442754842', '1442754842', '1', '0', '1', '44');
INSERT INTO `yershop_category` VALUES ('157', 'bgwl', '办公网络', '107', '0', '30', '', '', '', '', '', '', '', '5', '', '2', '0', '1', '1', '0', '0', '', '\"\"', '1442754922', '1442754922', '1', '0', '1', '44');
INSERT INTO `yershop_category` VALUES ('158', 'ejem', '耳机耳麦', '154', '0', '30', '', '', '', '', '', '', '', '5', '', '2', '0', '1', '1', '0', '0', '', '\"\"', '1442771388', '1442771388', '1', '0', '1', '40');
INSERT INTO `yershop_category` VALUES ('159', '', '长袖', '117', '0', '10', '', '', '', '', '', '', '', '', '', '', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '39');
INSERT INTO `yershop_category` VALUES ('160', '', '笔记本', '157', '0', '0', '', '', '', '', '', '', '', '', '', '2', '0', '0', '0', '0', '0', '', '', '0', '0', '1', '0', '0', '44');
INSERT INTO `yershop_category` VALUES ('161', '', '坚果', '152', '0', '0', '', '', '', '', '', '', '', '', '', '2', '0', '0', '0', '0', '0', '', '', '0', '0', '1', '0', '0', '40');
INSERT INTO `yershop_category` VALUES ('162', '', '糖果', '152', '0', '0', '', '', '', '', '', '', '', '', '', '2', '0', '0', '0', '0', '0', '', '', '0', '0', '1', '0', '0', '40');
INSERT INTO `yershop_category` VALUES ('163', '', '下装', '115', '0', '0', '', '', '', '', '', '', '', '', '', '2', '0', '0', '0', '0', '0', '', '', '0', '0', '1', '0', '0', '42');
INSERT INTO `yershop_category` VALUES ('164', '', '秒杀', '0', '0', '0', '', '', '', '', '', '', '', '', '', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '48');
INSERT INTO `yershop_category` VALUES ('165', '', '手机端', '164', '0', '0', '', '', '', '', '', '', '', '', '', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '1', '0', '0', '48');
INSERT INTO `yershop_category` VALUES ('167', '', '10点场', '165', '0', '0', '', '', '', '', '', '', '', '', '', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '1', '0', '0', '48');
INSERT INTO `yershop_category` VALUES ('168', '', '15点场', '165', '0', '0', '', '', '', '', '', '', '', '', '', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '1', '0', '0', '48');
INSERT INTO `yershop_category` VALUES ('169', '', '20点场', '165', '0', '0', '', '', '', '', '', '', '', '', '', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '1', '0', '0', '48');
INSERT INTO `yershop_category` VALUES ('170', '', '22点场', '165', '0', '0', '', '', '', '', '', '', '', '', '', '2', '0', '0', '0', '0', '0', '', '', '0', '0', '1', '0', '0', '48');
INSERT INTO `yershop_category` VALUES ('171', '', '0点场', '165', '0', '0', '', '', '', '', '', '', '', '', '', '2', '0', '0', '0', '0', '0', '', '', '0', '0', '1', '0', '0', '48');

-- ----------------------------
-- Table structure for yershop_change
-- ----------------------------
DROP TABLE IF EXISTS `yershop_change`;
CREATE TABLE `yershop_change` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `goodid` int(10) unsigned NOT NULL DEFAULT '0',
  `num` int(10) unsigned NOT NULL DEFAULT '0',
  `tool` varchar(225) NOT NULL DEFAULT '' COMMENT '订单号',
  `toolid` varchar(225) NOT NULL DEFAULT '' COMMENT '订单号',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `info` varchar(225) NOT NULL DEFAULT '',
  `total` decimal(50,2) NOT NULL DEFAULT '0.00',
  `backinfo` varchar(225) NOT NULL DEFAULT '',
  `shopid` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `assistant` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(225) NOT NULL DEFAULT '',
  `reason` varchar(225) NOT NULL DEFAULT '',
  `changetool` varchar(225) NOT NULL DEFAULT '',
  `changetoolid` varchar(225) NOT NULL DEFAULT '',
  `address` varchar(225) NOT NULL DEFAULT '',
  `contact` varchar(225) NOT NULL DEFAULT '',
  `parameters` varchar(225) NOT NULL DEFAULT '',
  `backname` varchar(225) NOT NULL DEFAULT '',
  `acceptname` varchar(255) NOT NULL DEFAULT '',
  `acceptphone` varchar(225) NOT NULL DEFAULT '',
  `acceptaddress` varchar(225) NOT NULL DEFAULT '',
  `username` varchar(255) NOT NULL DEFAULT '' COMMENT '联系人',
  `userphone` varchar(225) NOT NULL DEFAULT '' COMMENT '联系方式',
  `useraddress` varchar(225) NOT NULL DEFAULT '' COMMENT '联系地址',
  `partnerid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='表';

-- ----------------------------
-- Records of yershop_change
-- ----------------------------

-- ----------------------------
-- Table structure for yershop_channel
-- ----------------------------
DROP TABLE IF EXISTS `yershop_channel`;
CREATE TABLE `yershop_channel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '频道ID',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级频道ID',
  `title` char(30) NOT NULL COMMENT '频道标题',
  `url` char(100) NOT NULL COMMENT '频道连接',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '导航排序',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `target` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '新窗口打开',
  `uid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yershop_channel
-- ----------------------------
INSERT INTO `yershop_channel` VALUES ('1', '0', '首页', 'Index/index', '1', '1379475111', '1379923177', '1', '0', '0');

-- ----------------------------
-- Table structure for yershop_collect
-- ----------------------------
DROP TABLE IF EXISTS `yershop_collect`;
CREATE TABLE `yershop_collect` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1-可见 -1-无效',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of yershop_collect
-- ----------------------------

-- ----------------------------
-- Table structure for yershop_comment
-- ----------------------------
DROP TABLE IF EXISTS `yershop_comment`;
CREATE TABLE `yershop_comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `goods_id` int(100) unsigned NOT NULL DEFAULT '0',
  `sales_id` int(100) unsigned NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `score` varchar(225) DEFAULT NULL,
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `des` int(5) unsigned NOT NULL DEFAULT '0',
  `service` int(5) unsigned NOT NULL DEFAULT '0',
  `delivery` int(5) unsigned NOT NULL DEFAULT '0',
  `content` varchar(225) DEFAULT NULL,
  `tag` varchar(225) DEFAULT NULL,
  `is_over` int(2) DEFAULT '0',
  `cover_id` varchar(225) DEFAULT NULL COMMENT '图片',
  `status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1-可见 -1-无效',
  `uid` int(10) DEFAULT '0',
  `is_picture` int(2) NOT NULL DEFAULT '0',
  `not_empty` int(2) NOT NULL DEFAULT '1',
  `hide` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of yershop_comment
-- ----------------------------
INSERT INTO `yershop_comment` VALUES ('10', '201', '0', '0', '1', '1', '1', '1', '0', '233...', null, '1', null, '1', '1', '1', '1', '1');
INSERT INTO `yershop_comment` VALUES ('11', '133', '0', '0', '1', '1', '1', '1', '0', '233...', null, '1', null, '1', null, '1', '1', '1');
INSERT INTO `yershop_comment` VALUES ('12', '133', '0', '0', '1', '1', '1', '1', '0', '233...', null, '1', null, '1', null, '1', '1', '1');
INSERT INTO `yershop_comment` VALUES ('13', '133', '0', '0', '1', '1', '1', '1', '0', '233...', null, '1', '1', '1', null, '1', '1', '1');
INSERT INTO `yershop_comment` VALUES ('14', '133', '0', '0', '1', '1', '1', '1', '0', '202,203', null, '1', '202,203', '1', null, '1', '1', '1');
INSERT INTO `yershop_comment` VALUES ('15', '133', '0', '0', '1', '1', '1', '1', '0', '233...', null, '1', null, '1', null, '1', '1', '1');
INSERT INTO `yershop_comment` VALUES ('16', '133', '0', '0', '1', '1', '1', '1', '0', '233...', null, '1', null, '1', null, '1', '1', '1');
INSERT INTO `yershop_comment` VALUES ('17', '133', '0', '0', '1', '1', '1', '1', '0', '233...', null, '1', null, '1', null, '1', '1', '1');
INSERT INTO `yershop_comment` VALUES ('18', '133', '0', '0', '1', '1', '1', '1', '0', '233...', null, '1', null, '1', null, '1', '1', '1');
INSERT INTO `yershop_comment` VALUES ('19', '133', '0', '0', '1', '1', '1', '1', '0', '233...', null, '1', null, '1', null, '1', '1', '1');
INSERT INTO `yershop_comment` VALUES ('20', '133', '0', '0', '1', '1', '1', '1', '0', '233...', null, '1', null, '1', null, '1', '1', '1');
INSERT INTO `yershop_comment` VALUES ('21', '133', '0', '0', '1', '1', '1', '1', '0', '233...', null, '1', null, '1', null, '1', '1', '1');
INSERT INTO `yershop_comment` VALUES ('22', '133', '0', '0', '1', '1', '1', '1', '0', '202,203', null, '1', null, '1', null, '1', '1', '1');
INSERT INTO `yershop_comment` VALUES ('23', '133', '0', '0', '1', '1', '1', '1', '0', '233...', null, '1', '202,203', '1', null, '1', '1', '1');
INSERT INTO `yershop_comment` VALUES ('24', '129', '0', '1511624160', '4', '0', '0', '0', '0', ' $data[&quotcontent&quot]=safe_replace(input(content)) ', null, '0', null, '1', '1', '0', '1', '1');
INSERT INTO `yershop_comment` VALUES ('25', '129', '28', '1511624225', '5', '0', '0', '0', '0', 'db(sales)-&gtwhere($map)-&gtsetField(&quotcomment_status&quot,&quot2&quot)', null, '0', null, '1', '1', '0', '1', '1');

-- ----------------------------
-- Table structure for yershop_comment_tag
-- ----------------------------
DROP TABLE IF EXISTS `yershop_comment_tag`;
CREATE TABLE `yershop_comment_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attr_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(64) NOT NULL,
  `category_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yershop_comment_tag
-- ----------------------------

-- ----------------------------
-- Table structure for yershop_config
-- ----------------------------
DROP TABLE IF EXISTS `yershop_config`;
CREATE TABLE `yershop_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '配置名称',
  `type` varchar(225) NOT NULL DEFAULT '0' COMMENT '配置类型',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '配置说明',
  `group` varchar(225) DEFAULT '0' COMMENT '配置分组',
  `extra` varchar(255) NOT NULL DEFAULT '' COMMENT '配置值',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '配置说明',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `value` text COMMENT '配置值',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yershop_config
-- ----------------------------
INSERT INTO `yershop_config` VALUES ('1', 'WEB_SITE_TITLE', 'text', '网站标题', '0', '', '网站标题前台显示标题', '1378898976', '1379235274', '1', 'yershop商城系统', '0');
INSERT INTO `yershop_config` VALUES ('2', 'DESCRIPTION', 'textarea', '网站描述', '0', '', '网站搜索引擎描述', '1378898976', '1379235841', '1', 'yershop商城系统,567575', '1');
INSERT INTO `yershop_config` VALUES ('3', 'KEYWORD', 'textarea', '网站关键字', '1', '', '网站搜索引擎关键字', '1378898976', '1381390100', '1', 'yershop,OneThink商城，thinkphp商城系统', '8');
INSERT INTO `yershop_config` VALUES ('4', 'WEB_SITE_CLOSE', 'select', '关闭站点', '0', '0:关闭,1:开启', '站点关闭后其他用户不能访问，管理员可以正常访问', '1378898976', '1379235296', '1', '1', '1');
INSERT INTO `yershop_config` VALUES ('100', 'QQKEY', 'text', 'QqKEY', '2', '', 'qq登录key', '0', '0', '0', '7897', '0');
INSERT INTO `yershop_config` VALUES ('101', 'QQSECRET', 'text', 'QqSecret', '2', '', 'qq登录密钥', '0', '0', '0', '', '0');
INSERT INTO `yershop_config` VALUES ('99', 'ISDES', 'select', '是否视图切换', '1', '0:否,1:是', '', '0', '0', '0', '1', '0');
INSERT INTO `yershop_config` VALUES ('92', 'LOGO', 'picture', '网站logo', '0', '', '网站logo', '0', '0', '0', '251', '0');
INSERT INTO `yershop_config` VALUES ('116', 'BTN', 'color', '按钮背景色', '1', '', '', '0', '0', '0', '#db2a2f', '0');
INSERT INTO `yershop_config` VALUES ('91', 'GROUP', 'text', '配置分组', '-1', '', '', '0', '0', '0', '基本|高级|接口|参数|商城|支付|上传', '0');
INSERT INTO `yershop_config` VALUES ('102', 'DIALOG_STYLE', 'select', '提示框弹窗类型', '1', '0:旧式风格,\r\n1:改进型easyDialog风格', '处理成功后弹出类型', '0', '0', '0', '0', '0');
INSERT INTO `yershop_config` VALUES ('106', 'USER_ALLOW_REGISTER', 'select', '是否开启会员注册', '1', '0:关闭,1:开启', '0:关闭,1:开启', '0', '0', '0', '1', '0');
INSERT INTO `yershop_config` VALUES ('107', 'INVOICE_CONTENT', 'text', '发票内容', '3', '', '', '0', '0', '0', '', '0');
INSERT INTO `yershop_config` VALUES ('108', 'REFUND', 'text', '退款原因', '3', '', '', '0', '0', '0', '未收到货|商品严重损坏', '0');
INSERT INTO `yershop_config` VALUES ('109', 'REFUND_STYLE', 'text', '退款方式', '3', '', '', '0', '0', '0', '仅退款|退货退款', '0');
INSERT INTO `yershop_config` VALUES ('110', 'PHONE', 'text', '联系方式', '4', '', '', '0', '0', '0', '027-88125684', '0');
INSERT INTO `yershop_config` VALUES ('111', 'ALI', 'text', '阿里旺旺号', '4', '', '', '0', '0', '0', '234234', '0');
INSERT INTO `yershop_config` VALUES ('112', 'STAR', 'textarea', '星座配置', '3', '', '', '0', '0', '0', '巨蟹座|狮子座|双鱼座|处女座|双子座|天蝎座 |射手座|水瓶座', '0');
INSERT INTO `yershop_config` VALUES ('113', 'APPID', 'text', '微信AppID', '2', '', '微信开放平台AppID', '0', '0', '0', '', '0');
INSERT INTO `yershop_config` VALUES ('114', 'APPSECRET', 'text', '微信AppSecret', '2', '', '微信开放平台AppSecret', '0', '0', '0', '', '0');
INSERT INTO `yershop_config` VALUES ('115', 'COLOR', 'color', '后台主题颜色', '1', '', '#357eca,#e8303f,#40AB7E，#00CC99\r\n', '0', '0', '0', '#357eca', '0');
INSERT INTO `yershop_config` VALUES ('117', 'ALIPAYPARTNER', 'text', '支付宝合作身份者ID', '5', '', '合作身份者ID，签约账号，以2088开头由16位纯数字组成的字符串，查看地址：https://b.alipay.com/order/pidAndKey.htm', '0', '0', '0', '', '0');
INSERT INTO `yershop_config` VALUES ('118', 'ALIPAYSELLERID', 'text', '收款支付宝账号', '5', '', '收款支付宝账号，以2088开头由16位纯数字组成的字符串，一般情况下收款账号就是签约账号', '0', '0', '0', '', '0');
INSERT INTO `yershop_config` VALUES ('119', 'ALIPAYKEY', 'text', '支付宝MD5密钥', '5', '', 'MD5密钥，安全检验码，由数字和字母组成的32位字符串，查看地址：https://b.alipay.com/order/pidAndKey.htm', '0', '0', '0', '', '0');
INSERT INTO `yershop_config` VALUES ('120', 'HUYIUSERNAME', 'text', '互亿短信账号', '2', '', '申请后获得，申请地址http://www.ihuyi.com/', '0', '0', '0', '', '0');
INSERT INTO `yershop_config` VALUES ('121', 'HUYIPASSWORD', 'text', '互亿短信密码', '2', '', '申请后获得，申请地址http://www.ihuyi.com/', '0', '0', '0', '', '0');
INSERT INTO `yershop_config` VALUES ('122', 'SINAAPPID', 'text', '新浪微博appid', '2', '', '申请后获得，申请地址http://open.weibo.com/', '0', '0', '0', '', '0');
INSERT INTO `yershop_config` VALUES ('123', 'SINASECRET', 'text', '新浪微博secret', '2', '', '申请后获得，申请地址http://open.weibo.com/', '0', '0', '0', '', '0');
INSERT INTO `yershop_config` VALUES ('124', 'MOBILE-COLOR', 'color', '手机版配色', '1', '', '', '0', '0', '0', '#FF0000', '0');
INSERT INTO `yershop_config` VALUES ('125', 'PC-COLOR', 'color', '电脑板主题', '1', '', '', '0', '0', '0', '#E31939', '0');
INSERT INTO `yershop_config` VALUES ('126', 'REKEWORD', 'text', '热门搜索', '0', '', '', '0', '0', '0', '手机|电脑|笔记本|yershop|苹果|梨|启赋4|黑色酱油|mk包|烟机|康佳电视', '0');
INSERT INTO `yershop_config` VALUES ('127', 'upload_type', 'select', '上传驱动', '6', '0:本地上传\r\n1:阿里云oss', '', '0', '0', '0', '', '0');
INSERT INTO `yershop_config` VALUES ('128', 'ACCESSID', 'text', '阿里云AccessId', '6', '', '阿里云OSS AccessId', '0', '0', '0', '', '0');
INSERT INTO `yershop_config` VALUES ('129', 'ACCESSKEY', 'text', '阿里云AccessKey', '6', '', '阿里云AccessKey', '0', '0', '0', '', '0');
INSERT INTO `yershop_config` VALUES ('130', 'SERVERURL', 'text', '阿里云服务器地址', '6', '', '以\"/\"结尾', '0', '0', '0', '', '0');

-- ----------------------------
-- Table structure for yershop_consult
-- ----------------------------
DROP TABLE IF EXISTS `yershop_consult`;
CREATE TABLE `yershop_consult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `uid` int(10) NOT NULL DEFAULT '0',
  `reply` varchar(225) DEFAULT NULL,
  `goods_id` int(10) NOT NULL DEFAULT '0',
  `is_hide` int(10) NOT NULL DEFAULT '0',
  `type` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=283 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yershop_consult
-- ----------------------------
INSERT INTO `yershop_consult` VALUES ('1', '1491292996', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('2', '1491293239', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('3', '1491293310', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('4', '1491293734', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('5', '1491293746', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('6', '1491293752', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('7', '1491293754', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('8', '1491293756', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('9', '1491293756', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('10', '1491293757', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('11', '1491293806', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('12', '1491293808', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('13', '1491293823', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('14', '1491293825', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('15', '1491293827', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('16', '1491294160', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('17', '1491294172', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('18', '1491294173', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('19', '1491294187', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('20', '1491294189', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('21', '1491294361', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('22', '1491294379', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('23', '1491294419', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('24', '1491294428', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('25', '1491294434', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('26', '1491304325', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('27', '1491304372', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('28', '1491304415', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('29', '1491304863', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('30', '1491304894', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('31', '1491304939', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('32', '1491305002', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('33', '1491305080', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('34', '1491305131', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('35', '1491305148', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('36', '1491305179', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('37', '1491305277', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('38', '1491305303', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('39', '1491306295', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('40', '1491306318', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('41', '1491306401', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('42', '1491306413', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('43', '1491306525', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('44', '1491306557', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('45', '1491306596', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('46', '1491306637', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('47', '1491306702', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('48', '1491306727', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('49', '1491306762', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('50', '1491306977', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('51', '1491306980', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('52', '1491307001', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('53', '1491307169', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('54', '1491307180', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('55', '1491307190', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('56', '1491308467', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('57', '1491308534', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('58', '1491308568', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('59', '1491308803', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('60', '1491308847', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('61', '1491308871', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('62', '1491308909', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('63', '1491308930', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('64', '1491308947', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('65', '1491308975', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('66', '1491309030', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('67', '1491309091', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('68', '1491309092', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('69', '1491309093', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('70', '1491309093', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('71', '1491309094', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('72', '1491309094', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('73', '1491309095', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('74', '1491309095', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('75', '1491309096', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('76', '1491309096', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('77', '1491309097', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('78', '1491309097', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('79', '1491309098', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('80', '1491309098', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('81', '1491309099', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('82', '1491309099', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('83', '1491309100', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('84', '1491309100', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('85', '1491309101', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('86', '1491309101', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('87', '1491309102', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('88', '1491309138', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('89', '1491309169', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('90', '1491309173', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('91', '1491309174', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('92', '1491309174', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('93', '1491309175', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('94', '1491309175', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('95', '1491309176', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('96', '1491309176', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('97', '1491309177', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('98', '1491309177', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('99', '1491309178', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('100', '1491309178', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('101', '1491309179', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('102', '1491309179', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('103', '1491309180', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('104', '1491309180', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('105', '1491309181', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('106', '1491309181', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('107', '1491309182', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('108', '1491309182', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('109', '1491309183', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('110', '1491310064', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('111', '1491310065', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('112', '1491310066', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('113', '1491310066', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('114', '1491310067', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('115', '1491310067', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('116', '1491310068', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('117', '1491310068', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('118', '1491310069', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('119', '1491310069', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('120', '1491310070', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('121', '1491310070', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('122', '1491310071', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('123', '1491310071', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('124', '1491310072', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('125', '1491310072', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('126', '1491310073', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('127', '1491310073', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('128', '1491310074', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('129', '1491310074', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('130', '1491310076', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('131', '1491310076', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('132', '1491310132', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('133', '1491310297', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('134', '1491310656', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('135', '1491310730', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('136', '1491310731', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('137', '1491310731', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('138', '1491310736', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('139', '1491310736', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('140', '1491310737', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('141', '1491310737', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('142', '1491310738', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('143', '1491310738', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('144', '1491310739', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('145', '1491310739', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('146', '1491310740', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('147', '1491310740', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('148', '1491310741', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('149', '1491310741', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('150', '1491310742', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('151', '1491310742', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('152', '1491310743', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('153', '1491310743', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('154', '1491310744', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('155', '1491310744', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('156', '1491310753', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('157', '1491310772', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('158', '1491310773', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('159', '1491310773', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('160', '1491310774', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('161', '1491310775', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('162', '1491310775', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('163', '1491310776', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('164', '1491310776', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('165', '1491310777', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('166', '1491310777', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('167', '1491310778', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('168', '1491310778', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('169', '1491310779', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('170', '1491310779', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('171', '1491310780', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('172', '1491310781', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('173', '1491310781', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('174', '1491310782', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('175', '1491310782', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('176', '1491310782', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('177', '1491310783', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('178', '1491310810', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('179', '1491310995', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('180', '1491311004', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('181', '1491311028', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('182', '1491313343', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('183', '1491323726', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('184', '1491323764', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('185', '1491323868', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('186', '1491324006', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('187', '1491325901', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('188', '1491329529', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('189', '1491329740', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('190', '1491329868', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('191', '1491330800', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('192', '1491331388', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('193', '1491331447', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('194', '1491331455', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('195', '1491331894', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('196', '1491331917', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('197', '1491331963', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('198', '1491373985', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('199', '1491373994', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('200', '1491373996', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('201', '1491374097', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('202', '1491374101', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('203', '1491374115', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('204', '1491374138', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('205', '1491374155', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('206', '1491374161', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('207', '1491374924', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('208', '1491374994', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('209', '1491375006', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('210', '1491375012', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('211', '1491375128', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('212', '1491375814', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('213', '1491377436', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('214', '1491388277', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('215', '1491388311', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('216', '1491388327', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('217', '1491388332', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('218', '1491388731', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('219', '1491388750', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('220', '1491388756', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('221', '1491420959', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('222', '1491421059', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('223', '1491421107', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('224', '1491421122', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('225', '1491423565', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('226', '1491423917', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('227', '1491423941', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('228', '1491423961', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('229', '1491424233', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('230', '1491424622', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('231', '1491424706', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('232', '1491424707', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('233', '1491424708', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('234', '1491424710', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('235', '1491424712', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('236', '1491489834', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('237', '1491493967', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('238', '1491494007', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('239', '1491563982', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('240', '1491564012', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('241', '1491564057', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('242', '1491620468', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('243', '1491620529', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('244', '1491620627', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('245', '1491620687', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('246', '1491648796', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('247', '1491648807', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('248', '1491648820', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('249', '1491649214', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('250', '1491655005', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('251', '1491673388', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('252', '1491673623', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('253', '1491673819', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('254', '1491676980', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('255', '1491677479', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('256', '1491677489', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('257', '1491681428', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('258', '1491686180', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('259', '1491686563', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('260', '1491724406', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('261', '1491724510', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('262', '1491725750', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('263', '1491725765', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('264', '1491732126', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('265', '1491732223', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('266', '1491734249', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('267', '1491734402', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('268', '1491734647', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('269', '1491734721', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('270', '1491736059', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('271', '1491736653', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('272', '1491736991', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('273', '1491738736', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('274', '1491740969', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('275', '1491742060', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('276', '1491742091', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('277', '1491742244', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('278', '1491742276', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('279', '1491742295', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('280', '1491742638', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('281', '1491742807', '22', '3', null, '2', '0', '2');
INSERT INTO `yershop_consult` VALUES ('282', '1491746601', '22', '3', null, '2', '0', '2');

-- ----------------------------
-- Table structure for yershop_count
-- ----------------------------
DROP TABLE IF EXISTS `yershop_count`;
CREATE TABLE `yershop_count` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组id,自增主键',
  `mark` text NOT NULL COMMENT '名称',
  `num` tinyint(11) NOT NULL DEFAULT '1' COMMENT '数量',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `model` varchar(225) DEFAULT NULL,
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yershop_count
-- ----------------------------
INSERT INTO `yershop_count` VALUES ('3', '访客数+1', '67', '1495735475', '0', 'visitor', '20170526');
INSERT INTO `yershop_count` VALUES ('2', '访客数+1', '39', '1495650488', '0', 'visitor', '20170525');
INSERT INTO `yershop_count` VALUES ('4', '访客数+1', '40', '1495816863', '0', 'visitor', '20170527');
INSERT INTO `yershop_count` VALUES ('5', '访客数+1', '127', '1495904307', '0', 'visitor', '20170528');
INSERT INTO `yershop_count` VALUES ('6', '访客数+1', '127', '1495989967', '0', 'visitor', '20170529');
INSERT INTO `yershop_count` VALUES ('7', '访客数+1', '68', '1496075914', '0', 'visitor', '20170530');
INSERT INTO `yershop_count` VALUES ('8', '访客数+1', '3', '1496243612', '0', 'visitor', '20170531');

-- ----------------------------
-- Table structure for yershop_document
-- ----------------------------
DROP TABLE IF EXISTS `yershop_document`;
CREATE TABLE `yershop_document` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `title` char(80) NOT NULL DEFAULT '' COMMENT '标题',
  `category_id` int(10) unsigned NOT NULL COMMENT '所属分类',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '封面',
  `view` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览量',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '数据状态',
  `content` text NOT NULL,
  `sort` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_category_status` (`category_id`,`status`) USING BTREE,
  KEY `idx_status_type_pid` (`status`,`uid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COMMENT='文档模型基础表';

-- ----------------------------
-- Records of yershop_document
-- ----------------------------

-- ----------------------------
-- Table structure for yershop_drawback
-- ----------------------------
DROP TABLE IF EXISTS `yershop_drawback`;
CREATE TABLE `yershop_drawback` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sales_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sku_id` int(10) unsigned NOT NULL DEFAULT '0',
  `num` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned DEFAULT '0',
  `express` varchar(225) NOT NULL DEFAULT '' COMMENT '订单号',
  `express_code` varchar(225) NOT NULL DEFAULT '' COMMENT '订单号',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '数据状态0-已取消1-申请2-同意3-拒绝4-退货5-退款6-完成',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `complete_time` int(10) unsigned NOT NULL DEFAULT '0',
  `info` varchar(225) NOT NULL DEFAULT '',
  `money` decimal(50,2) NOT NULL DEFAULT '0.00',
  `description` varchar(225) NOT NULL DEFAULT '',
  `address` varchar(225) NOT NULL DEFAULT '',
  `parameters` varchar(225) NOT NULL DEFAULT '',
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(225) NOT NULL DEFAULT '',
  `cover_id` varchar(225) DEFAULT NULL,
  `reason` varchar(225) DEFAULT NULL,
  `style` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='退货表';

-- ----------------------------
-- Records of yershop_drawback
-- ----------------------------

-- ----------------------------
-- Table structure for yershop_email
-- ----------------------------
DROP TABLE IF EXISTS `yershop_email`;
CREATE TABLE `yershop_email` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(225) DEFAULT NULL COMMENT '标题',
  `domain` varchar(225) DEFAULT NULL COMMENT '链接',
  `account` varchar(225) DEFAULT NULL COMMENT '邮箱',
  `username` varchar(225) DEFAULT NULL COMMENT '用户名',
  `sendname` varchar(225) DEFAULT NULL COMMENT '发件人',
  `content` varchar(225) DEFAULT NULL COMMENT '回复内容',
  `msg` varchar(225) DEFAULT NULL COMMENT '备注',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1已发送 -1禁用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `group` varchar(225) DEFAULT NULL COMMENT '分组',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='发送邮件记录表';

-- ----------------------------
-- Records of yershop_email
-- ----------------------------

-- ----------------------------
-- Table structure for yershop_envelope
-- ----------------------------
DROP TABLE IF EXISTS `yershop_envelope`;
CREATE TABLE `yershop_envelope` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(225) DEFAULT NULL COMMENT '用户名',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `sendname` varchar(225) DEFAULT NULL COMMENT '发件人',
  `title` varchar(225) DEFAULT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '发送内容',
  `status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1-未读2-已读',
  `view` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '阅读数量',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `group` varchar(225) DEFAULT NULL COMMENT '分组',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='站内信表';

-- ----------------------------
-- Records of yershop_envelope
-- ----------------------------

-- ----------------------------
-- Table structure for yershop_express
-- ----------------------------
DROP TABLE IF EXISTS `yershop_express`;
CREATE TABLE `yershop_express` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `title` varchar(225) NOT NULL DEFAULT '' COMMENT '标题',
  `code` varchar(225) NOT NULL DEFAULT '' COMMENT '链接',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) DEFAULT '1' COMMENT '数据状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='快递表';

-- ----------------------------
-- Records of yershop_express
-- ----------------------------
INSERT INTO `yershop_express` VALUES ('1', '2', '332', '0', '0', '1');

-- ----------------------------
-- Table structure for yershop_goods
-- ----------------------------
DROP TABLE IF EXISTS `yershop_goods`;
CREATE TABLE `yershop_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `create_time` int(10) NOT NULL DEFAULT '0',
  `is_specs` tinyint(2) NOT NULL DEFAULT '0',
  `num` int(10) NOT NULL DEFAULT '0',
  `status` int(10) NOT NULL DEFAULT '1',
  `content` text CHARACTER SET utf8 NOT NULL,
  `category_id` int(10) NOT NULL DEFAULT '110',
  `brand_id` int(10) NOT NULL DEFAULT '0',
  `cover_id` int(10) NOT NULL DEFAULT '1',
  `price` decimal(50,2) NOT NULL DEFAULT '0.00',
  `sales` int(10) NOT NULL DEFAULT '0',
  `profit` decimal(50,2) NOT NULL DEFAULT '0.00',
  `j_price` decimal(50,2) NOT NULL DEFAULT '0.00',
  `attributes` varchar(225) DEFAULT '',
  `view` int(10) NOT NULL DEFAULT '0',
  `comments` int(10) NOT NULL DEFAULT '0',
  `baoyou` tinyint(2) NOT NULL DEFAULT '0',
  `has` tinyint(2) NOT NULL DEFAULT '1',
  `attrs` varchar(255) DEFAULT NULL,
  `spress` int(10) DEFAULT '0',
  `collect` int(10) NOT NULL DEFAULT '0',
  `covers` varchar(225) DEFAULT NULL,
  `specs` varchar(225) CHARACTER SET utf8 DEFAULT NULL,
  `update_time` int(10) NOT NULL DEFAULT '0',
  `uid` int(10) NOT NULL DEFAULT '0',
  `start_time` int(10) NOT NULL DEFAULT '0',
  `end_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=212 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of yershop_goods
-- ----------------------------
INSERT INTO `yershop_goods` VALUES ('163', '陕西精品红富士1kg 80-85mm 苹果 水果', '0', '0', '666', '1', '<img src=\"https://img.alicdn.com/imgextra/i1/1910146537/TB2CB72sl8lpuFjSspaXXXJKpXa_!!1910146537.jpg\" />', '126', '0', '285', '23.80', '0', '0.00', '0.00', '', '33', '0', '0', '1', null, '0', '0', '286,287,290,291', null, '0', '0', '0', '0');
INSERT INTO `yershop_goods` VALUES ('162', '澳大利亚晚季脐橙10个140g以上/个橙子水果', '0', '0', '100', '1', '<img src=\"https://img.alicdn.com/imgextra/i2/1910146537/TB26vh4afNNTKJjSspcXXb4KVXa_!!1910146537.jpg\" />', '58', '0', '282', '38.90', '0', '0.00', '0.00', '', '43', '0', '0', '1', null, '0', '0', '283,284', null, '0', '0', '0', '0');
INSERT INTO `yershop_goods` VALUES ('164', '泰国龙眼1kg 热带桂圆 进口水果', '0', '0', '122', '1', '<div class=\"col-main tm-clear clearfix\" style=\"margin:0px;padding:0px;color:#404040;font-family:tahoma, arial, 微软雅黑, sans-serif;background-color:#FFFFFF;\">\r\n	<div id=\"mainwrap\" class=\"main-wrap\" style=\"margin:0px 0px 0px 200px;padding:0px;\">\r\n		<div id=\"attributes\" class=\"attributes\" style=\"margin:0px;padding:0px;\">\r\n			<div class=\"j-mdv tm-detail-slide\" style=\"margin:0px 0px 10px;padding:0px;\">\r\n				<ol class=\"ks-switchable-content\">\r\n					<li class=\"ks-switchable-panel-internal581\">\r\n						<a href=\"https://pages.tmall.com/wow/chaoshi/act/dhua?pos=2&amp;acm=201505273.1003.2.2452416&amp;scm=1003.2.201505273.OTHER_1509619719966_2452416\" target=\"_blank\"><img alt=\"\" src=\"https://img.alicdn.com/tfs/TB1xYG8XS_I8KJjy0FoXXaFnVXa-750-291.jpg\" style=\"width:790px;height:305px;\" /></a>\r\n					</li>\r\n					<li class=\"ks-switchable-panel-internal581\">\r\n						<a href=\"https://pages.tmall.com/wow/chaoshi/act/jpde?pos=3&amp;acm=201505273.1003.2.2452416&amp;scm=1003.2.201505273.OTHER_1508089941480_2452416\" target=\"_blank\"><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i4/1752136151/TB2vvxSa9_I8KJjy0FoXXaFnVXa_!!1752136151.jpg\" style=\"width:790px;height:305px;\" /></a>\r\n					</li>\r\n					<li class=\"ks-switchable-panel-internal581\">\r\n						<a href=\"https://pages.tmall.com/wow/chaoshi/act/shuang11tiqianhaidi2?pos=4&amp;acm=201505273.1003.2.2452416&amp;scm=1003.2.201505273.OTHER_1510671412227_2452416\" target=\"_blank\"><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i1/2102356460/TB2t4eqXkfb_uJkSnb4XXXCrXXa_!!2102356460.jpg\" style=\"width:790px;height:305px;\" /></a>\r\n					</li>\r\n					<li class=\"ks-switchable-panel-internal581\">\r\n						<a href=\"https://chaoshi.tmall.com/activity/hubV2.do?activityKey=6618812d23976bd49e3a5b4a25a6069a&amp;pos=5&amp;acm=201505273.1003.2.2452416&amp;scm=1003.2.201505273.OTHER_1509092263691_2452416\" target=\"_blank\"><img alt=\"\" src=\"https://gw.alicdn.com/tfs/TB1nvrtXLDH8KJjy1XcXXcpdXXa-750-291.jpg\" style=\"width:790px;height:305px;\" /></a>\r\n					</li>\r\n					<li class=\"ks-switchable-panel-internal581\">\r\n						<a href=\"https://chaoshi.tmall.com/activity/hubV2.do?activityKey=3250542978ea34ce3ff0a332ad2ae657&amp;pos=6&amp;acm=201505273.1003.2.2452416&amp;scm=1003.2.201505273.OTHER_1509497270317_2452416\" target=\"_blank\"><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i2/1910146537/TB2aJeqXgvD8KJjSsplXXaIEFXa_!!1910146537.jpg\" style=\"width:790px;height:305px;\" /></a>\r\n					</li>\r\n				</ol>\r\n				<ul class=\"ks-switchable-nav\">\r\n					<li class=\"ks-switchable-trigger-internal580\" style=\"font-size:14px;background:#716564;text-align:center;color:#FFFFFF;\">\r\n						1\r\n					</li>\r\n					<li class=\"ks-switchable-trigger-internal580 ks-active\" style=\"font-size:14px;background:#B91919;text-align:center;color:#FFFFFF;\">\r\n						2\r\n					</li>\r\n					<li class=\"ks-switchable-trigger-internal580\" style=\"font-size:14px;background:#716564;text-align:center;color:#FFFFFF;\">\r\n						3\r\n					</li>\r\n					<li class=\"ks-switchable-trigger-internal580\" style=\"font-size:14px;background:#716564;text-align:center;color:#FFFFFF;\">\r\n						4\r\n					</li>\r\n					<li class=\"ks-switchable-trigger-internal580\" style=\"font-size:14px;background:#716564;text-align:center;color:#FFFFFF;\">\r\n						5\r\n					</li>\r\n					<li class=\"ks-switchable-trigger-internal580\" style=\"font-size:14px;background:#716564;text-align:center;color:#FFFFFF;\">\r\n						6\r\n					</li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n		<div id=\"mall-banner\" style=\"margin:0px;padding:0px;\">\r\n		</div>\r\n		<div id=\"J_DcTopRightWrap\" style=\"margin:0px;padding:0px;\">\r\n			<div id=\"J_DcTopRight\" class=\"J_DcAsyn tb-shop\" style=\"margin:0px;padding:0px;\">\r\n			</div>\r\n		</div>\r\n		<div id=\"description\" class=\"J_DetailSection tshop-psm tshop-psm-bdetaildes\" style=\"margin:0px;padding:0px;\">\r\n			<div class=\"content ke-post\" style=\"margin:10px 0px 0px;padding:0px;font-size:14px;font-family:tahoma, arial, 宋体, sans-serif;\">\r\n				<div style=\"margin:0px;padding:0px;\">\r\n					<a name=\"maijsoft_s1_145813_start\"></a>\r\n				</div>\r\n				<p>\r\n					<a target=\"_blank\" href=\"https://taoquan.taobao.com/coupon/unify_apply.htm?sellerId=1910146537&amp;activityId=04f6b0278d824691924bd57eaaa44e71\"><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i1/1910146537/TB2w026aS_I8KJjy0FoXXaFnVXa_!!1910146537.jpg\" class=\"img-ks-lazyload\" /></a>\r\n				</p>\r\n				<div style=\"margin:0px;padding:0px;\">\r\n					<a name=\"maijsoft_s1_145813_end\"></a>\r\n				</div>\r\n				<p>\r\n					<img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i2/1910146537/TB2dpfvXxbxQeBjy1XdXXXVBFXa_!!1910146537.jpg\" class=\"img-ks-lazyload\" />\r\n				</p>\r\n				<p>\r\n					<img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i2/1910146537/TB2w7ZLsbBkpuFjy1zkXXbSpFXa_!!1910146537.jpg\" class=\"img-ks-lazyload\" /><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i2/1910146537/TB2GA0QsB0kpuFjSsppXXcGTXXa_!!1910146537.jpg\" class=\"img-ks-lazyload\" /><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i3/1910146537/TB24KI8sbXlpuFjSszfXXcSGXXa_!!1910146537.jpg\" class=\"img-ks-lazyload\" /><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i1/1910146537/TB2dFVbsB0kpuFjy1zdXXXuUVXa_!!1910146537.jpg\" class=\"img-ks-lazyload\" /><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i1/1910146537/TB2MD38sl0kpuFjSsziXXa.oVXa_!!1910146537.jpg\" class=\"img-ks-lazyload\" /><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i2/1910146537/TB28x4GsrVkpuFjSspcXXbSMVXa_!!1910146537.jpg\" class=\"img-ks-lazyload\" />\r\n				</p>\r\n				<p>\r\n					<img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i3/1910146537/TB2z2wsaVXXXXaJXpXXXXXXXXXX_!!1910146537.jpg\" class=\"img-ks-lazyload\" />\r\n				</p>\r\n				<div style=\"margin:0px;padding:0px;\">\r\n					<a name=\"hlg_list_5_17546621_start\"></a>\r\n				</div>\r\n				<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"margin:0px auto;padding:0px;border-collapse:separate;\" class=\"ke-zeroborder\">\r\n					<tbody>\r\n						<tr>\r\n							<td>\r\n								<div style=\"margin:0px;padding:0px;\">\r\n									<div style=\"margin:0px;padding:0px;\">\r\n										<img alt=\"自定义 20171025\" src=\"https://img.alicdn.com/imgextra/i1/1910146537/TB28Gn8m6uhSKJjSspdXXc11XXa_!!1910146537.jpg\" class=\"img-ks-lazyload\" />\r\n									</div>\r\n								</div>\r\n							</td>\r\n						</tr>\r\n					</tbody>\r\n				</table>\r\n				<div style=\"margin:0px;padding:0px;\">\r\n					<a name=\"hlg_list_5_17546621_end\"></a>\r\n				</div>\r\n				<div style=\"margin:0px;padding:0px;\">\r\n					<a name=\"hlg_list_6_17546631_start\"></a>\r\n				</div>\r\n				<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"margin:0px auto;padding:0px;border-collapse:separate;\" class=\"ke-zeroborder\">\r\n					<tbody>\r\n						<tr>\r\n							<td>\r\n								<div style=\"margin:0px;padding:0px;\">\r\n									<div style=\"margin:0px;padding:0px;\">\r\n										<img alt=\"自定义 20171025\" src=\"https://img.alicdn.com/imgextra/i2/1910146537/TB2GV53rgoQMeJjy0FoXXcShVXa_!!1910146537.jpg\" class=\"img-ks-lazyload\" />\r\n									</div>\r\n								</div>\r\n							</td>\r\n						</tr>\r\n					</tbody>\r\n				</table>\r\n				<div style=\"margin:0px;padding:0px;\">\r\n					<a name=\"hlg_list_6_17546631_end\"></a>\r\n				</div>\r\n			</div>\r\n		</div>\r\n		<div id=\"J_DcBottomRightWrap\" style=\"margin:0px;padding:0px;\">\r\n			<div id=\"J_DcBottomRight\" class=\"J_DcAsyn tb-shop\" style=\"margin:0px;padding:0px;\">\r\n			</div>\r\n			<div id=\"J_ZebraPriceDesc\" class=\"j-mdv\" style=\"margin:0px;padding:0px;\">\r\n			</div>\r\n		</div>\r\n		<div id=\"J_Detail\" style=\"margin:0px;padding:0px;\">\r\n			<div id=\"J_Reviews\" class=\"J_DetailSection\" style=\"margin:0px;padding:0px;\">\r\n				<h4 class=\"hd\" style=\"font-weight:400;background-color:#FF0036;color:#FFFFFF;\">\r\n					累计评价\r\n				</h4>\r\n			</div>\r\n			<div id=\"J_SellerInfo\" class=\"J_DetailSection tb-sellerinfo\" style=\"margin:0px;padding:0px;\">\r\n				<h5 class=\"hd\" style=\"font-size:12px;font-weight:400;background-color:#FF0036;color:#FFFFFF;\">\r\n					店铺30天服务情况\r\n				</h5>\r\n			</div>\r\n			<div id=\"J_chaoshiService\" class=\"j-mdv J_DetailSection\" style=\"margin:0px;padding:0px;\">\r\n				<h4 class=\"hd\" style=\"font-weight:400;background-color:#FF0036;color:#FFFFFF;\">\r\n					售后服务\r\n				</h4>\r\n			</div>\r\n			<div id=\"official-remind\" class=\"j-mdv\" style=\"margin:20px 0px 0px;padding:10px;background-color:#FFFFE5;border:1px solid #FFCC7F;\">\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<div class=\"col-sub\" style=\"margin:0px 0px 0px -1190px;padding:0px;background:0px 0px #FFFFFF;color:#404040;font-family:tahoma, arial, 微软雅黑, sans-serif;\">\r\n	<div class=\"j-mdv tm-detail-chaoshibanner\" style=\"margin:0px;padding:0px;\">\r\n		<div style=\"margin:0px 0px 10px;padding:0px;\">\r\n			<a href=\"https://pages.tmall.com/wow/chaoshi/act/miyou?spm=a312d.7832034.0.0.6bbc9edbVDoCjX&amp;pos=1&amp;acm=201505271.1003.2.2452353&amp;scm=1003.2.201505271.OTHER_1509048545563_2452353\" target=\"_blank\"><img src=\"https://img.alicdn.com/imgextra/i3/771510470/TB2kiHYdbglyKJjSZFuXXaE6FXa-771510470.jpg\" alt=\"\" /></a>\r\n		</div>\r\n		<div style=\"margin:0px 0px 10px;padding:0px;\">\r\n			<a href=\"https://content.tmall.com/wow/pegasus/subject/1/725677994/8599322?site=ALL&amp;pos=2&amp;channel=chaoshi&amp;acm=201505271.1003.2.2452353&amp;id=8599322&amp;scm=1003.2.201505271.OTHER_1511483250704_2452353&amp;gccpm=0.815.2.subject-chaoshi-2004.709074&amp;wh_channel=chaoshi4\" target=\"_blank\"><img src=\"https://img.alicdn.com/imgextra/i2/52660971/TB2D6RdrwoQMeJjy0FoXXcShVXa_!!52660971.jpg\" alt=\"\" /></a>\r\n		</div>\r\n		<div style=\"margin:0px 0px 10px;padding:0px;\">\r\n			<a href=\"https://pages.tmall.com/wow/chaoshi/act/jiunuanxaingrong?spm=a312d.7832034.0.0.3106884fxCrxi0&amp;pos=3&amp;acm=201505271.1003.2.2452353&amp;scm=1003.2.201505271.OTHER_1510582082862_2452353\" target=\"_blank\"><img src=\"https://img.alicdn.com/tfs/TB1aPAaXL2H8KJjy0FcXXaDlFXa-188-170.jpg\" alt=\"\" /></a>\r\n		</div>\r\n		<div>\r\n			<br />\r\n		</div>\r\n	</div>\r\n	<div class=\"tm-chaoshi-hot J_CSRecommend\" style=\"margin:33px 0px 0px;padding:0px;\">\r\n	</div>\r\n</div>', '58', '0', '292', '19.90', '0', '0.00', '0.00', '', '17', '0', '0', '1', null, '0', '0', '', null, '0', '0', '0', '0');
INSERT INTO `yershop_goods` VALUES ('165', '新农哥五香花生136g 坚果炒货小吃 办公零食', '0', '0', '234', '1', '<img src=\"https://img.alicdn.com/imgextra/i1/725677994/TB2htJEmHVkpuFjSspcXXbSMVXa_!!725677994.jpg\" />', '161', '0', '293', '8.90', '0', '0.00', '0.00', '', '46', '0', '0', '1', null, '0', '0', '294', null, '0', '0', '0', '0');
INSERT INTO `yershop_goods` VALUES ('166', '费列罗巧克力零食48粒 3*16条 休闲零食 香浓美味', '0', '0', '23', '1', '<p>\r\n	<img src=\"https://img.alicdn.com/imgextra/i2/725677994/TB2XBSkXr5K.eBjy0FfXXbApVXa_!!725677994.jpg\" />\r\n</p>\r\n<p>\r\n	<img src=\"https://img.alicdn.com/imgextra/i1/725677994/TB2LB13gsPRfKJjSZFOXXbKEVXa_!!725677994.jpg\" />\r\n</p>', '162', '0', '295', '30.00', '0', '0.00', '0.00', '', '65', '0', '0', '1', null, '0', '0', '296,297,298,299', null, '0', '0', '0', '0');
INSERT INTO `yershop_goods` VALUES ('167', '德芙巧克力礼盒 香浓黑巧252g碗装 新老包装随机发货', '0', '0', '333', '1', '<img src=\"https://img.alicdn.com/imgextra/i1/725677994/TB2i3kzbvBNTKJjy0FdXXcPpVXa_!!725677994.jpg\" />', '161', '0', '300', '34.00', '0', '0.00', '0.00', '', '54', '0', '0', '1', null, '0', '0', '301', null, '0', '0', '0', '0');
INSERT INTO `yershop_goods` VALUES ('168', '费列罗榛果威化巧克力零食30粒 休闲零食香浓美味', '0', '0', '10', '1', '<div class=\"tm-chaoshi-nav nav-float\" style=\"margin:0px;padding:0px;background-color:#FFFFFF;color:#404040;font-family:tahoma, arial, 微软雅黑, sans-serif;\">\r\n	<div class=\"layout\" style=\"margin:0px auto;padding:0px;\">\r\n		<div id=\"nav-bar\" style=\"margin:0px;padding:0px;\">\r\n			<div class=\"nav-cont\" style=\"margin:0px;padding:0px;\">\r\n				<ul>\r\n					<li class=\"qc\">\r\n						<div class=\"col-main tm-clear clearfix\" style=\"margin:0px;padding:0px;color:#404040;font-family:tahoma, arial, 微软雅黑, sans-serif;background-color:#FFFFFF;\">\r\n							<div id=\"mainwrap\" class=\"main-wrap\" style=\"margin:0px 0px 0px 200px;padding:0px;\">\r\n								<div id=\"description\" class=\"J_DetailSection tshop-psm tshop-psm-bdetaildes\" style=\"margin:0px;padding:0px;\">\r\n									<div class=\"content ke-post\" style=\"margin:10px 0px 0px;padding:0px;font-size:14px;font-family:tahoma, arial, 宋体, sans-serif;\">\r\n										<p>\r\n											<img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i3/725677994/TB2gluhXraI.eBjSszdXXaB6XXa_!!725677994.jpg\" class=\"img-ks-lazyload\" /><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i1/725677994/TB2ptqkXB9J.eBjy0FoXXXyvpXa_!!725677994.jpg\" class=\"img-ks-lazyload\" /><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i4/725677994/TB2sXGZXxaK.eBjSZFBXXagMXXa_!!725677994.jpg\" class=\"img-ks-lazyload\" /><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i4/725677994/TB23XaiXr1J.eBjSspnXXbUeXXa_!!725677994.jpg\" class=\"img-ks-lazyload\" />\r\n										</p>\r\n									</div>\r\n								</div>\r\n								<div id=\"J_DcBottomRightWrap\" style=\"margin:0px;padding:0px;\">\r\n									<div id=\"J_DcBottomRight\" class=\"J_DcAsyn tb-shop\" style=\"margin:0px;padding:0px;\">\r\n									</div>\r\n									<div id=\"J_ZebraPriceDesc\" class=\"j-mdv\" style=\"margin:0px;padding:0px;\">\r\n										<img width=\"790\" src=\"https://img.alicdn.com/tfs/TB1H9BARpXXXXc1XpXXXXXXXXXX-1420-274.png\" />\r\n									</div>\r\n								</div>\r\n								<div id=\"J_Detail\" style=\"margin:0px;padding:0px;\">\r\n									<div id=\"J_Reviews\" class=\"J_DetailSection\" style=\"margin:0px;padding:0px;\">\r\n										<h4 class=\"hd\" style=\"font-weight:400;background-color:#FF0036;color:#FFFFFF;\">\r\n											累计评价&nbsp;<span class=\"J_ReviewsCount\">9932</span>\r\n										</h4>\r\n										<div class=\"tm-rate\" style=\"margin:0px;padding:0px;\">\r\n											<div class=\"rate-header rate-header-tags\" style=\"margin:0px;padding:10px 0px;border:1px solid #C8C8C8;\">\r\n												<div class=\"rate-score\" style=\"margin:0px;padding:0px 20px;vertical-align:top;text-align:center;\">\r\n													<h4 style=\"font-weight:100;\">\r\n														与描述相符\r\n													</h4>\r\n<span style=\"color:#FF6600;font-family:arial;font-size:32px;line-height:32px;\">4.8</span>\r\n													<p style=\"text-align:left;\">\r\n														<span class=\"score-value-no score-value-4d8\" style=\"background:url(&quot;\"><span style=\"background:url(&quot;\"></span></span>\r\n													</p>\r\n												</div>\r\n												<div class=\"rate-tag-box\" style=\"margin:0px;padding:0px;vertical-align:top;\">\r\n													<div class=\"rate-tag-label\" style=\"margin:4px 0px 0px;padding:0px 12px 0px 25px;vertical-align:top;color:#CCCCCC;font-size:11px;background:url(&quot;\">\r\n														<span>大家都写到</span>\r\n													</div>\r\n													<div class=\"rate-tag-list\" style=\"margin:0px;padding:0px;vertical-align:top;\">\r\n														<div class=\"rate-tag-inner\" style=\"margin:0px;padding:0px;\">\r\n															<span class=\"tag-posi\"><a id=\"ratetag807_420a\" href=\"https://chaoshi.detail.tmall.com/item.htm?spm=a3204.7933263.0.0.1d2958ffOFfu0J&amp;id=16106006756&amp;rewcatid=50504021#\">物流快(8)<s></s></a></span><span class=\"tag-posi\"><a id=\"ratetag807_620a\" href=\"https://chaoshi.detail.tmall.com/item.htm?spm=a3204.7933263.0.0.1d2958ffOFfu0J&amp;id=16106006756&amp;rewcatid=50504021#\">质量好(4)<s></s></a></span><span class=\"tag-posi\"><a id=\"ratetag807_520a\" href=\"https://chaoshi.detail.tmall.com/item.htm?spm=a3204.7933263.0.0.1d2958ffOFfu0J&amp;id=16106006756&amp;rewcatid=50504021#\">便宜(3)<s></s></a></span><span class=\"tag-posi\"><a id=\"ratetag807_10420a\" href=\"https://chaoshi.detail.tmall.com/item.htm?spm=a3204.7933263.0.0.1d2958ffOFfu0J&amp;id=16106006756&amp;rewcatid=50504021#\">发货快(3)<s></s></a></span><span class=\"tag-posi\"><a id=\"ratetag807_637a\" href=\"https://chaoshi.detail.tmall.com/item.htm?spm=a3204.7933263.0.0.1d2958ffOFfu0J&amp;id=16106006756&amp;rewcatid=50504021#\">保质期(3)<s></s></a></span>\r\n														</div>\r\n													</div>\r\n<span class=\"rate-tag-toggle\" style=\"vertical-align:top;background:url(&quot;\"></span>\r\n												</div>\r\n											</div>\r\n											<div class=\"rate-compose\" style=\"margin:0px;padding:0px;\">\r\n											</div>\r\n											<div class=\"rate-charts\" style=\"margin:0px;padding:0px;background:#F4F4F4;\">\r\n											</div>\r\n											<div class=\"rate-toolbar\" style=\"margin:0px;padding:5px 10px;background:#EFEFEF;border:1px solid #C8C8C8;text-align:right;\">\r\n												<span class=\"rate-filter\">全部追评 (15)图片 (136)</span><span class=\"tm-toolbar-lft\"><span class=\"tm-rate-addin\"></span>有内容\r\n												<div class=\"rate-sort \" style=\"margin:0px;padding:0px;\">\r\n													<div class=\"tm-selectbtn tm-rate-sort\" style=\"margin:0px;padding:0px 5px;text-align:center;\">\r\n														<span class=\"tm-current\" style=\"background:url(&quot;line-height:20px;\">按默认</span>\r\n													</div>\r\n												</div>\r\n</span>\r\n											</div>\r\n											<div class=\"rate-grid\" style=\"margin:0px;padding:0px;\">\r\n												<table style=\"margin:0px;padding:0px;width:790px;\">\r\n													<tbody>\r\n														<tr>\r\n															<td class=\"tm-col-master\">\r\n																<div class=\"tm-rate-content\" style=\"margin:0px;padding:0px;color:#333333;\">\r\n																	<div class=\"tm-rate-fulltxt\" style=\"margin:0px;padding:0px;\">\r\n																		家中常备巧克力，快递给力，满意\r\n																	</div>\r\n																	<div class=\"tm-m-photos\" style=\"margin:0px;padding:0px;\">\r\n																		<ul class=\"tm-m-photos-thumb\">\r\n																			<li>\r\n																				<img src=\"https://img.alicdn.com/bao/uploaded/i1/0/TB29YYYXSfD8KJjSszhXXbIJFXa_!!0-rate.jpg_40x40.jpg\" style=\"width:40px;height:40px;\" /><b class=\"tm-photos-arrow\"></b>\r\n																			</li>\r\n																		</ul>\r\n																	</div>\r\n																</div>\r\n																<div class=\"tm-rate-date\" style=\"margin:0px;padding:0px;color:#CCCCCC;\">\r\n																	10.30\r\n																</div>\r\n															</td>\r\n															<td class=\"col-meta\" style=\"color:#999999;\">\r\n																<div class=\"rate-sku\" style=\"margin:0px 0px 3px;padding:0px;\">\r\n																</div>\r\n																<div class=\"rate-user-profile\" style=\"margin:0px;padding:0px;\">\r\n																</div>\r\n															</td>\r\n															<td class=\"col-author\">\r\n																<div class=\"rate-user-info\" style=\"margin:0px;padding:0px;\">\r\n																	n***n（匿名）\r\n																</div>\r\n																<div class=\"rate-user-grade\" style=\"margin:0px;padding:0px;\">\r\n																	<p class=\"gold-user\" style=\"color:#C09459;\">\r\n																		超级会员\r\n																	</p>\r\n																</div>\r\n															</td>\r\n														</tr>\r\n														<tr>\r\n															<td class=\"tm-col-master\">\r\n																<div class=\"tm-rate-content\" style=\"margin:0px;padding:0px;color:#333333;\">\r\n																	<div class=\"tm-rate-fulltxt\" style=\"margin:0px;padding:0px;\">\r\n																		九月份生产的，挺新鲜的。\r\n																	</div>\r\n																</div>\r\n																<div class=\"tm-rate-date\" style=\"margin:0px;padding:0px;color:#CCCCCC;\">\r\n																	10.31\r\n																</div>\r\n															</td>\r\n															<td class=\"col-meta\" style=\"color:#999999;\">\r\n																<div class=\"rate-sku\" style=\"margin:0px 0px 3px;padding:0px;\">\r\n																</div>\r\n																<div class=\"rate-user-profile\" style=\"margin:0px;padding:0px;\">\r\n																</div>\r\n															</td>\r\n															<td class=\"col-author\">\r\n																<div class=\"rate-user-info\" style=\"margin:0px;padding:0px;\">\r\n																	老***0（匿名）\r\n																</div>\r\n																<div class=\"rate-user-grade\" style=\"margin:0px;padding:0px;\">\r\n																	<p class=\"gold-user\" style=\"color:#C09459;\">\r\n																		超级会员\r\n																	</p>\r\n																</div>\r\n															</td>\r\n														</tr>\r\n														<tr>\r\n															<td class=\"tm-col-master\">\r\n																<div class=\"tm-rate-content\" style=\"margin:0px;padding:0px;color:#333333;\">\r\n																	<div class=\"tm-rate-fulltxt\" style=\"margin:0px;padding:0px;\">\r\n																		很快，不错，跟超市价格一样\r\n																	</div>\r\n																</div>\r\n																<div class=\"tm-rate-date\" style=\"margin:0px;padding:0px;color:#CCCCCC;\">\r\n																	10.29\r\n																</div>\r\n															</td>\r\n															<td class=\"col-meta\" style=\"color:#999999;\">\r\n																<div class=\"rate-sku\" style=\"margin:0px 0px 3px;padding:0px;\">\r\n																</div>\r\n																<div class=\"rate-user-profile\" style=\"margin:0px;padding:0px;\">\r\n																</div>\r\n															</td>\r\n															<td class=\"col-author\">\r\n																<div class=\"rate-user-info\" style=\"margin:0px;padding:0px;\">\r\n																	武***7（匿名）\r\n																</div>\r\n															</td>\r\n														</tr>\r\n														<tr>\r\n															<td class=\"tm-col-master\">\r\n																<div class=\"tm-rate-content\" style=\"margin:0px;padding:0px;color:#333333;\">\r\n																	<div class=\"tm-rate-fulltxt\" style=\"margin:0px;padding:0px;\">\r\n																		巧克力很好吃，日期是最近的新日期，店家很用心包装裹了厚厚的泡沫塑料来保护盒子。感谢老板。祝你生意兴隆。\r\n																	</div>\r\n																</div>\r\n																<div class=\"tm-rate-date\" style=\"margin:0px;padding:0px;color:#CCCCCC;\">\r\n																	10.25\r\n																</div>\r\n															</td>\r\n															<td class=\"col-meta\" style=\"color:#999999;\">\r\n																<div class=\"rate-sku\" style=\"margin:0px 0px 3px;padding:0px;\">\r\n																</div>\r\n																<div class=\"rate-user-profile\" style=\"margin:0px;padding:0px;\">\r\n																</div>\r\n															</td>\r\n															<td class=\"col-author\">\r\n																<div class=\"rate-user-info\" style=\"margin:0px;padding:0px;\">\r\n																	t***3（匿名）\r\n																</div>\r\n															</td>\r\n														</tr>\r\n														<tr>\r\n															<td class=\"tm-col-master\">\r\n																<div class=\"tm-rate-content\" style=\"margin:0px;padding:0px;color:#333333;\">\r\n																	<div class=\"tm-rate-fulltxt\" style=\"margin:0px;padding:0px;\">\r\n																		很不错哦，买给朋友的小礼物\r\n																	</div>\r\n																</div>\r\n																<div class=\"tm-rate-date\" style=\"margin:0px;padding:0px;color:#CCCCCC;\">\r\n																	11.02\r\n																</div>\r\n															</td>\r\n															<td class=\"col-meta\" style=\"color:#999999;\">\r\n																<div class=\"rate-sku\" style=\"margin:0px 0px 3px;padding:0px;\">\r\n																</div>\r\n																<div class=\"rate-user-profile\" style=\"margin:0px;padding:0px;\">\r\n																</div>\r\n															</td>\r\n															<td class=\"col-author\">\r\n																<div class=\"rate-user-info\" style=\"margin:0px;padding:0px;\">\r\n																	1***c（匿名）\r\n																</div>\r\n															</td>\r\n														</tr>\r\n														<tr>\r\n															<td class=\"tm-col-master\">\r\n																<div class=\"tm-rate-content\" style=\"margin:0px;padding:0px;color:#333333;\">\r\n																	<div class=\"tm-rate-fulltxt\" style=\"margin:0px;padding:0px;\">\r\n																		口感不错 发货速度快\r\n																	</div>\r\n																</div>\r\n																<div class=\"tm-rate-date\" style=\"margin:0px;padding:0px;color:#CCCCCC;\">\r\n																	10.30\r\n																</div>\r\n															</td>\r\n															<td class=\"col-meta\" style=\"color:#999999;\">\r\n																<div class=\"rate-sku\" style=\"margin:0px 0px 3px;padding:0px;\">\r\n																</div>\r\n																<div class=\"rate-user-profile\" style=\"margin:0px;padding:0px;\">\r\n																</div>\r\n															</td>\r\n															<td class=\"col-author\">\r\n																<div class=\"rate-user-info\" style=\"margin:0px;padding:0px;\">\r\n																	小***怀（匿名）\r\n																</div>\r\n															</td>\r\n														</tr>\r\n														<tr>\r\n															<td class=\"tm-col-master\">\r\n																<div class=\"tm-rate-content\" style=\"margin:0px;padding:0px;color:#333333;\">\r\n																	<div class=\"tm-rate-fulltxt\" style=\"margin:0px;padding:0px;\">\r\n																		包裹包装的很好 东西送人的 量也比较足 很好\r\n																	</div>\r\n																</div>\r\n																<div class=\"tm-rate-date\" style=\"margin:0px;padding:0px;color:#CCCCCC;\">\r\n																	10.25\r\n																</div>\r\n															</td>\r\n															<td class=\"col-meta\" style=\"color:#999999;\">\r\n																<div class=\"rate-sku\" style=\"margin:0px 0px 3px;padding:0px;\">\r\n																</div>\r\n																<div class=\"rate-user-profile\" style=\"margin:0px;padding:0px;\">\r\n																</div>\r\n															</td>\r\n															<td class=\"col-author\">\r\n																<div class=\"rate-user-info\" style=\"margin:0px;padding:0px;\">\r\n																	高***1（匿名）\r\n																</div>\r\n															</td>\r\n														</tr>\r\n														<tr>\r\n															<td class=\"tm-col-master\">\r\n																<div class=\"tm-rate-content\" style=\"margin:0px;padding:0px;color:#333333;\">\r\n																	<div class=\"tm-rate-fulltxt\" style=\"margin:0px;padding:0px;\">\r\n																		送女朋友的。看着很不错的\r\n																	</div>\r\n																</div>\r\n																<div class=\"tm-rate-date\" style=\"margin:0px;padding:0px;color:#CCCCCC;\">\r\n																	10.26\r\n																</div>\r\n															</td>\r\n															<td class=\"col-meta\" style=\"color:#999999;\">\r\n																<div class=\"rate-sku\" style=\"margin:0px 0px 3px;padding:0px;\">\r\n																</div>\r\n																<div class=\"rate-user-profile\" style=\"margin:0px;padding:0px;\">\r\n																</div>\r\n															</td>\r\n															<td class=\"col-author\">\r\n																<div class=\"rate-user-info\" style=\"margin:0px;padding:0px;\">\r\n																	赵***4（匿名）\r\n																</div>\r\n															</td>\r\n														</tr>\r\n														<tr>\r\n															<td class=\"tm-col-master\">\r\n																<div class=\"tm-rate-content\" style=\"margin:0px;padding:0px;color:#333333;\">\r\n																	<div class=\"tm-rate-fulltxt\" style=\"margin:0px;padding:0px;\">\r\n																		送人不知道礼盒坏没有\r\n																	</div>\r\n																</div>\r\n																<div class=\"tm-rate-date\" style=\"margin:0px;padding:0px;color:#CCCCCC;\">\r\n																	11.01\r\n																</div>\r\n															</td>\r\n															<td class=\"col-meta\" style=\"color:#999999;\">\r\n																<div class=\"rate-sku\" style=\"margin:0px 0px 3px;padding:0px;\">\r\n																</div>\r\n																<div class=\"rate-user-profile\" style=\"margin:0px;padding:0px;\">\r\n																</div>\r\n															</td>\r\n															<td class=\"col-author\">\r\n																<div class=\"rate-user-info\" style=\"margin:0px;padding:0px;\">\r\n																	j***v（匿名）\r\n																</div>\r\n															</td>\r\n														</tr>\r\n														<tr>\r\n															<td class=\"tm-col-master\">\r\n																<div class=\"tm-rate-content\" style=\"margin:0px;padding:0px;color:#333333;\">\r\n																	<div class=\"tm-rate-fulltxt\" style=\"margin:0px;padding:0px;\">\r\n																		今天去家乐福超市看到了相同的巧克力，没有特价和任何活动卖105，天猫卖115还不参加满减活动，原来价格比超市贵那么多啊～真是长经验了\r\n																	</div>\r\n																</div>\r\n																<div class=\"tm-rate-date\" style=\"margin:0px;padding:0px;color:#CCCCCC;\">\r\n																	10.16\r\n																</div>\r\n															</td>\r\n															<td class=\"col-meta\" style=\"color:#999999;\">\r\n																<div class=\"rate-sku\" style=\"margin:0px 0px 3px;padding:0px;\">\r\n																</div>\r\n																<div class=\"rate-user-profile\" style=\"margin:0px;padding:0px;\">\r\n																</div>\r\n															</td>\r\n															<td class=\"col-author\">\r\n																<div class=\"rate-user-info\" style=\"margin:0px;padding:0px;\">\r\n																	生***彩（匿名）\r\n																</div>\r\n																<div class=\"rate-user-grade\" style=\"margin:0px;padding:0px;\">\r\n																	<p class=\"gold-user\" style=\"color:#C09459;\">\r\n																		超级会员\r\n																	</p>\r\n																</div>\r\n															</td>\r\n														</tr>\r\n														<tr>\r\n															<td class=\"tm-col-master\">\r\n																<div class=\"tm-rate-content\" style=\"margin:0px;padding:0px;color:#333333;\">\r\n																	<div class=\"tm-rate-fulltxt\" style=\"margin:0px;padding:0px;\">\r\n																		口味不错，送给我爱的她！\r\n																	</div>\r\n																</div>\r\n																<div class=\"tm-rate-date\" style=\"margin:0px;padding:0px;color:#CCCCCC;\">\r\n																	10.26\r\n																</div>\r\n															</td>\r\n															<td class=\"col-meta\" style=\"color:#999999;\">\r\n																<div class=\"rate-sku\" style=\"margin:0px 0px 3px;padding:0px;\">\r\n																</div>\r\n																<div class=\"rate-user-profile\" style=\"margin:0px;padding:0px;\">\r\n																</div>\r\n															</td>\r\n															<td class=\"col-author\">\r\n																<div class=\"rate-user-info\" style=\"margin:0px;padding:0px;\">\r\n																	脱***光（匿名）\r\n																</div>\r\n															</td>\r\n														</tr>\r\n														<tr>\r\n															<td class=\"tm-col-master\">\r\n																<div class=\"tm-rate-content\" style=\"margin:0px;padding:0px;color:#333333;\">\r\n																	<div class=\"tm-rate-fulltxt\" style=\"margin:0px;padding:0px;\">\r\n																		中秋节当天，上午9点多才下单，下午4点就收到了，买了很多东西正好赶上能送人，不耽误事，太好了。\r\n																	</div>\r\n																</div>\r\n																<div class=\"tm-rate-date\" style=\"margin:0px;padding:0px;color:#CCCCCC;\">\r\n																	10.17\r\n																</div>\r\n															</td>\r\n															<td class=\"col-meta\" style=\"color:#999999;\">\r\n																<div class=\"rate-sku\" style=\"margin:0px 0px 3px;padding:0px;\">\r\n																</div>\r\n																<div class=\"rate-user-profile\" style=\"margin:0px;padding:0px;\">\r\n																</div>\r\n															</td>\r\n															<td class=\"col-author\">\r\n																<div class=\"rate-user-info\" style=\"margin:0px;padding:0px;\">\r\n																	m***6（匿名）\r\n																</div>\r\n																<div class=\"rate-user-grade\" style=\"margin:0px;padding:0px;\">\r\n																	<p class=\"gold-user\" style=\"color:#C09459;\">\r\n																		超级会员\r\n																	</p>\r\n																</div>\r\n															</td>\r\n														</tr>\r\n														<tr>\r\n															<td class=\"tm-col-master\">\r\n																<div class=\"tm-rate-content\" style=\"margin:0px;padding:0px;color:#333333;\">\r\n																	<div class=\"tm-rate-fulltxt\" style=\"margin:0px;padding:0px;\">\r\n																		天猫超市太方便啦\r\n																	</div>\r\n																</div>\r\n																<div class=\"tm-rate-date\" style=\"margin:0px;padding:0px;color:#CCCCCC;\">\r\n																	10.21\r\n																</div>\r\n															</td>\r\n															<td class=\"col-meta\" style=\"color:#999999;\">\r\n																<div class=\"rate-sku\" style=\"margin:0px 0px 3px;padding:0px;\">\r\n																</div>\r\n																<div class=\"rate-user-profile\" style=\"margin:0px;padding:0px;\">\r\n																</div>\r\n															</td>\r\n															<td class=\"col-author\">\r\n																<div class=\"rate-user-info\" style=\"margin:0px;padding:0px;\">\r\n																	c***y（匿名）\r\n																</div>\r\n																<div class=\"rate-user-grade\" style=\"margin:0px;padding:0px;\">\r\n																	<p class=\"gold-user\" style=\"color:#C09459;\">\r\n																		超级会员\r\n																	</p>\r\n																</div>\r\n															</td>\r\n														</tr>\r\n														<tr>\r\n															<td class=\"tm-col-master\">\r\n																<div class=\"tm-rate-content\" style=\"margin:0px;padding:0px;color:#333333;\">\r\n																	<div class=\"tm-rate-fulltxt\" style=\"margin:0px;padding:0px;\">\r\n																		天猫超市几乎每个月都必须买点东西，快捷方便，适合现在的生活，超市没有啥竞争力了，感谢天猫给我们带来的便捷。东西都很好\r\n																	</div>\r\n																</div>\r\n																<div class=\"tm-rate-date\" style=\"margin:0px;padding:0px;color:#CCCCCC;\">\r\n																	10.09\r\n																</div>\r\n															</td>\r\n															<td class=\"col-meta\" style=\"color:#999999;\">\r\n																<div class=\"rate-sku\" style=\"margin:0px 0px 3px;padding:0px;\">\r\n																</div>\r\n																<div class=\"rate-user-profile\" style=\"margin:0px;padding:0px;\">\r\n																</div>\r\n															</td>\r\n															<td class=\"col-author\">\r\n																<div class=\"rate-user-info\" style=\"margin:0px;padding:0px;\">\r\n																	s***公（匿名）\r\n																</div>\r\n															</td>\r\n														</tr>\r\n														<tr>\r\n															<td class=\"tm-col-master\">\r\n																<div class=\"tm-rate-content\" style=\"margin:0px;padding:0px;color:#333333;\">\r\n																	<div class=\"tm-rate-fulltxt\" style=\"margin:0px;padding:0px;\">\r\n																		很好……一会儿吃没了\r\n																	</div>\r\n																</div>\r\n																<div class=\"tm-rate-date\" style=\"margin:0px;padding:0px;color:#CCCCCC;\">\r\n																	10.16\r\n																</div>\r\n															</td>\r\n															<td class=\"col-meta\" style=\"color:#999999;\">\r\n																<div class=\"rate-sku\" style=\"margin:0px 0px 3px;padding:0px;\">\r\n																</div>\r\n																<div class=\"rate-user-profile\" style=\"margin:0px;padding:0px;\">\r\n																</div>\r\n															</td>\r\n															<td class=\"col-author\">\r\n																<div class=\"rate-user-info\" style=\"margin:0px;padding:0px;\">\r\n																	t***6（匿名）\r\n																</div>\r\n															</td>\r\n														</tr>\r\n														<tr>\r\n															<td class=\"tm-col-master\">\r\n																<div class=\"tm-rate-content\" style=\"margin:0px;padding:0px;color:#333333;\">\r\n																	<div class=\"tm-rate-fulltxt\" style=\"margin:0px;padding:0px;\">\r\n																		不错，很好\r\n																	</div>\r\n																</div>\r\n																<div class=\"tm-rate-date\" style=\"margin:0px;padding:0px;color:#CCCCCC;\">\r\n																	10.16\r\n																</div>\r\n															</td>\r\n															<td class=\"col-meta\" style=\"color:#999999;\">\r\n																<div class=\"rate-sku\" style=\"margin:0px 0px 3px;padding:0px;\">\r\n																</div>\r\n																<div class=\"rate-user-profile\" style=\"margin:0px;padding:0px;\">\r\n																</div>\r\n															</td>\r\n															<td class=\"col-author\">\r\n																<div class=\"rate-user-info\" style=\"margin:0px;padding:0px;\">\r\n																	j***9（匿名）\r\n																</div>\r\n															</td>\r\n														</tr>\r\n														<tr>\r\n															<td class=\"tm-col-master\">\r\n																<div class=\"tm-rate-content\" style=\"margin:0px;padding:0px;color:#333333;\">\r\n																	<div class=\"tm-rate-fulltxt\" style=\"margin:0px;padding:0px;\">\r\n																		日期比较新鲜\r\n																	</div>\r\n																</div>\r\n																<div class=\"tm-rate-date\" style=\"margin:0px;padding:0px;color:#CCCCCC;\">\r\n																	10.15\r\n																</div>\r\n															</td>\r\n															<td class=\"col-meta\" style=\"color:#999999;\">\r\n																<div class=\"rate-sku\" style=\"margin:0px 0px 3px;padding:0px;\">\r\n																</div>\r\n																<div class=\"rate-user-profile\" style=\"margin:0px;padding:0px;\">\r\n																</div>\r\n															</td>\r\n															<td class=\"col-author\">\r\n																<div class=\"rate-user-info\" style=\"margin:0px;padding:0px;\">\r\n																	高***9（匿名）\r\n																</div>\r\n																<div class=\"rate-user-grade\" style=\"margin:0px;padding:0px;\">\r\n																	<p class=\"gold-user\" style=\"color:#C09459;\">\r\n																		超级会员\r\n																	</p>\r\n																</div>\r\n															</td>\r\n														</tr>\r\n														<tr>\r\n															<td class=\"tm-col-master\">\r\n																<div class=\"tm-rate-content\" style=\"margin:0px;padding:0px;color:#333333;\">\r\n																	<div class=\"tm-rate-fulltxt\" style=\"margin:0px;padding:0px;\">\r\n																		给别人买的，具体不详，应该还不错\r\n																	</div>\r\n																</div>\r\n																<div class=\"tm-rate-date\" style=\"margin:0px;padding:0px;color:#CCCCCC;\">\r\n																	10.11\r\n																</div>\r\n															</td>\r\n															<td class=\"col-meta\" style=\"color:#999999;\">\r\n																<div class=\"rate-sku\" style=\"margin:0px 0px 3px;padding:0px;\">\r\n																</div>\r\n																<div class=\"rate-user-profile\" style=\"margin:0px;padding:0px;\">\r\n																</div>\r\n															</td>\r\n															<td class=\"col-author\">\r\n																<div class=\"rate-user-info\" style=\"margin:0px;padding:0px;\">\r\n																	a***f（匿名）\r\n																</div>\r\n															</td>\r\n														</tr>\r\n														<tr>\r\n															<td class=\"tm-col-master\">\r\n																<div class=\"tm-rate-content\" style=\"margin:0px;padding:0px;color:#333333;\">\r\n																	<div class=\"tm-rate-fulltxt\" style=\"margin:0px;padding:0px;\">\r\n																		还是那个味道！\r\n																	</div>\r\n																</div>\r\n																<div class=\"tm-rate-date\" style=\"margin:0px;padding:0px;color:#CCCCCC;\">\r\n																	10.25\r\n																</div>\r\n															</td>\r\n															<td class=\"col-meta\" style=\"color:#999999;\">\r\n																<div class=\"rate-sku\" style=\"margin:0px 0px 3px;padding:0px;\">\r\n																</div>\r\n																<div class=\"rate-user-profile\" style=\"margin:0px;padding:0px;\">\r\n																</div>\r\n															</td>\r\n															<td class=\"col-author\">\r\n																<div class=\"rate-user-info\" style=\"margin:0px;padding:0px;\">\r\n																	调***苗（匿名）\r\n																</div>\r\n															</td>\r\n														</tr>\r\n														<tr>\r\n															<td class=\"tm-col-master\">\r\n																<div class=\"tm-rate-content\" style=\"margin:0px;padding:0px;color:#333333;\">\r\n																	<div class=\"tm-rate-fulltxt\" style=\"margin:0px;padding:0px;\">\r\n																		味道很好！\r\n																	</div>\r\n																</div>\r\n																<div class=\"tm-rate-date\" style=\"margin:0px;padding:0px;color:#CCCCCC;\">\r\n																	10.10\r\n																</div>\r\n															</td>\r\n															<td class=\"col-meta\" style=\"color:#999999;\">\r\n																<div class=\"rate-sku\" style=\"margin:0px 0px 3px;padding:0px;\">\r\n																</div>\r\n																<div class=\"rate-user-profile\" style=\"margin:0px;padding:0px;\">\r\n																</div>\r\n															</td>\r\n															<td class=\"col-author\">\r\n																<div class=\"rate-user-info\" style=\"margin:0px;padding:0px;\">\r\n																	亲***9（匿名）\r\n																</div>\r\n															</td>\r\n														</tr>\r\n													</tbody>\r\n												</table>\r\n											</div>\r\n											<div class=\"rate-page\" style=\"margin:0px;padding:0px;\">\r\n												<div class=\"rate-paginator\" style=\"margin:20px 30px 0px 0px;padding:20px 0px 10px;text-align:right;background:url(&quot;\">\r\n													<span class=\"rate-page-prev\" style=\"vertical-align:top;line-height:27px;color:#999999;font-size:14px;\">&lt;&lt;上一页</span><span style=\"vertical-align:top;line-height:27px;color:#999999;font-size:14px;\">1</span><a href=\"https://chaoshi.detail.tmall.com/item.htm?page=2\">2</a><a href=\"https://chaoshi.detail.tmall.com/item.htm?page=3\">3</a><span class=\"rate-page-break\" style=\"vertical-align:top;line-height:20px;color:#999999;font-size:14px;\">...</span><a href=\"https://chaoshi.detail.tmall.com/item.htm?page=2\">下一页&gt;&gt;</a>\r\n												</div>\r\n											</div>\r\n											<div class=\"rate-tryreport\" style=\"margin:0px;padding:0px;\">\r\n												<div class=\"tm-trygrid\" style=\"margin:0px;padding:0px;\">\r\n												</div>\r\n												<div class=\"tm-trypage\" style=\"margin:0px;padding:0px;\">\r\n												</div>\r\n											</div>\r\n										</div>\r\n									</div>\r\n									<div id=\"J_SellerInfo\" class=\"J_DetailSection tb-sellerinfo\" style=\"margin:0px;padding:0px;\">\r\n										<h5 class=\"hd\" style=\"font-size:12px;font-weight:400;background-color:#FF0036;color:#FFFFFF;\">\r\n											店铺30天服务情况\r\n										</h5>\r\n									</div>\r\n									<div id=\"J_chaoshiService\" class=\"j-mdv J_DetailSection\" style=\"margin:0px;padding:0px;\">\r\n										<h4 class=\"hd\" style=\"font-weight:400;background-color:#FF0036;color:#FFFFFF;\">\r\n											售后服务\r\n										</h4>\r\n									</div>\r\n									<div id=\"official-remind\" class=\"j-mdv\" style=\"margin:20px 0px 0px;padding:10px;background-color:#FFFFE5;border:1px solid #FFCC7F;\">\r\n									</div>\r\n								</div>\r\n							</div>\r\n						</div>\r\n						<div class=\"col-sub\" style=\"margin:0px 0px 0px -1190px;padding:0px;background:0px 0px #FFFFFF;color:#404040;font-family:tahoma, arial, 微软雅黑, sans-serif;\">\r\n							<div class=\"j-mdv tm-detail-chaoshibanner\" style=\"margin:0px;padding:0px;\">\r\n								<div style=\"margin:0px 0px 10px;padding:0px;\">\r\n									<a href=\"https://pages.tmall.com/wow/chaoshi/act/miyou?spm=a312d.7832034.0.0.6bbc9edbVDoCjX&amp;pos=1&amp;acm=201505271.1003.2.2452353&amp;scm=1003.2.201505271.OTHER_1509048545563_2452353\" target=\"_blank\"><img src=\"https://img.alicdn.com/imgextra/i3/771510470/TB2kiHYdbglyKJjSZFuXXaE6FXa-771510470.jpg\" alt=\"\" /></a>\r\n								</div>\r\n								<div style=\"margin:0px 0px 10px;padding:0px;\">\r\n									<a href=\"https://content.tmall.com/wow/pegasus/subject/1/725677994/8599322?site=ALL&amp;pos=2&amp;channel=chaoshi&amp;acm=201505271.1003.2.2452353&amp;id=8599322&amp;scm=1003.2.201505271.OTHER_1511483250704_2452353&amp;gccpm=0.815.2.subject-chaoshi-2004.709074&amp;wh_channel=chaoshi4\" target=\"_blank\"><img src=\"https://img.alicdn.com/imgextra/i2/52660971/TB2D6RdrwoQMeJjy0FoXXcShVXa_!!52660971.jpg\" alt=\"\" /></a>\r\n								</div>\r\n								<div style=\"margin:0px 0px 10px;padding:0px;\">\r\n									<a href=\"https://pages.tmall.com/wow/chaoshi/act/jiunuanxaingrong?spm=a312d.7832034.0.0.3106884fxCrxi0&amp;pos=3&amp;acm=201505271.1003.2.2452353&amp;scm=1003.2.201505271.OTHER_1510582082862_2452353\" target=\"_blank\"><img src=\"https://img.alicdn.com/tfs/TB1aPAaXL2H8KJjy0FcXXaDlFXa-188-170.jpg\" alt=\"\" /></a>\r\n								</div>\r\n								<div>\r\n									<br />\r\n								</div>\r\n							</div>\r\n							<div class=\"tm-chaoshi-hot J_CSRecommend\" style=\"margin:33px 0px 0px;padding:0px;\">\r\n							</div>\r\n						</div>\r\n<br />\r\n					</li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>', '162', '0', '302', '99.00', '0', '0.00', '0.00', '', '57', '0', '0', '1', null, '0', '0', '303', null, '0', '0', '0', '0');
INSERT INTO `yershop_goods` VALUES ('169', '良品铺子猪肉脯100g芝麻味自然片猪肉干零食小吃特产休闲食品', '0', '0', '77', '1', '<img src=\"https://img.alicdn.com/imgextra/i4/725677994/TB2zoRnXwL8F1JjSspjXXbZgpXa_!!725677994.jpg\" /><br />\r\n<p>\r\n	<img src=\"https://img.alicdn.com/imgextra/i1/725677994/TB2Zfb9XC69F1JjSZFOXXXK.VXa_!!725677994.jpg\" />\r\n</p>', '161', '0', '304', '77.00', '0', '0.00', '0.00', '', '93', '0', '0', '1', null, '0', '1', '305,306', null, '0', '0', '0', '0');
INSERT INTO `yershop_goods` VALUES ('170', '【低至5488元】Apple/苹果iPhone 8 Plus 64G全网通手机苹果8', '0', '0', '5675', '1', '<img src=\"https://img.alicdn.com/imgextra/i1/2616970884/TB2giEVgU3IL1JjSZFMXXajrFXa-2616970884.jpg\" />', '110', '0', '307', '5488.00', '0', '0.00', '0.00', '176,171', '24', '0', '0', '1', '164,169', '0', '0', '309', '2G,3G,16G,32G,64G', '0', '0', '0', '0');
INSERT INTO `yershop_goods` VALUES ('171', '华为honor/荣耀 畅玩7X全网通全面屏官方手机', '0', '0', '5677', '1', '<img src=\"https://img.alicdn.com/imgextra/i4/1114511827/TB2sogiXTnI8KJjSszbXXb4KFXa_!!1114511827.jpg\" />', '110', '0', '310', '5676.00', '0', '0.00', '0.00', '', '13', '0', '0', '1', null, '0', '0', '311', '2G,4G,16G,32G,64G', '0', '0', '0', '0');
INSERT INTO `yershop_goods` VALUES ('172', 'Xiaomi/小米 红米手机4A 超长待机双卡智能手机', '0', '0', '343', '1', 'Xiaomi/小米 红米手机4A 超长待机双卡智能手机', '110', '0', '313', '34.00', '0', '0.00', '0.00', '175,171,182,195,208', '39', '0', '0', '1', '164,169,180,194,203', '0', '0', '312', '2G,3G,4G,6G,16G', '0', '0', '0', '0');
INSERT INTO `yershop_goods` VALUES ('173', 'Huawei/华为 Mate 10 4G+64G年度旗舰手机', '0', '0', '345', '1', '<img src=\"https://gdp.alicdn.com/imgextra/i2/2838892713/TB2wSW3hO0TMKJjSZFNXXa_1FXa_!!2838892713.jpg\" alt=\"\" class=\"img-ks-lazyload\" border=\"0\" />', '110', '0', '314', '345.00', '0', '0.00', '0.00', '', '48', '0', '0', '1', null, '0', '0', '315', '4G,16G,32G,64G', '0', '0', '0', '0');
INSERT INTO `yershop_goods` VALUES ('174', 'OPPO R11S全面屏拍照4G手机oppor11s', '0', '0', '56', '1', '<img alt=\"\" src=\"https://img.alicdn.com/imgextra/i2/901409638/TB2yUIiaDnI8KJjSszbXXb4KFXa_!!901409638.jpg\" class=\"img-ks-lazyload\" />', '110', '0', '316', '345.00', '0', '0.00', '0.00', '175,171', '10', '0', '0', '1', '164,169', '0', '0', '317,318', '2G,16G,32G,64G', '0', '0', '0', '0');
INSERT INTO `yershop_goods` VALUES ('175', 'GXG男装冬季保暖中长款连帽羽绒服外套男174811205 ', '0', '0', '345', '1', '<h1>\r\n	<img src=\"https://img.alicdn.com/imgextra/i1/454291526/TB2TMxQXx685uJjSZFHXXc49pXa-454291526.jpg\" class=\"img-ks-lazyload\" />\r\n</h1>', '129', '0', '320', '34.00', '0', '0.00', '0.00', '', '8', '0', '0', '1', null, '0', '0', '321,322', '红色,蓝色,x,xl,xxl', '0', '0', '0', '0');
INSERT INTO `yershop_goods` VALUES ('176', '冬季新款中长款纯色加厚棉袄棉服保暖外套 ', '0', '0', '1232', '1', '<img alt=\"217309501_G01.jpg\" src=\"https://img.alicdn.com/imgextra/i1/305358018/TB2fHPhXtLO8KJjSZFxXXaGEVXa-305358018.jpg\" class=\"img-ks-lazyload\" />', '129', '0', '323', '21.00', '0', '0.00', '0.00', '85', '15', '0', '0', '1', '84', '0', '0', '324', '红色,白色,xl,xxl', '0', '0', '0', '0');
INSERT INTO `yershop_goods` VALUES ('177', 'HP/惠普 PAVILION -14 畅游人笔记本电脑超薄 轻薄便携 商务办公', '0', '0', '345', '1', '<h1>\r\n	<br />\r\n</h1>\r\n<h1>\r\n	<table width=\"876\" class=\"ke-zeroborder\" style=\"border-collapse:collapse;font-size:12.0px;font-family:微软雅黑;text-align:center;color:#ff0000;width:790.0px;font-weight:bold;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody>\r\n			<tr>\r\n				<td width=\"79\" style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span><span style=\"font-size:14.0px;\"><strong>套餐</strong></span></span> \r\n				</td>\r\n				<td width=\"92\" style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span><span style=\"font-size:14.0px;\">处理器</span></span> \r\n				</td>\r\n				<td width=\"54\" style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span><span style=\"font-size:14.0px;\"><strong>内存</strong></span></span> \r\n				</td>\r\n				<td width=\"97\" style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span><span style=\"font-size:14.0px;\"><strong>硬盘</strong></span></span> \r\n				</td>\r\n				<td width=\"167\" style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span><span style=\"font-size:14.0px;\"><strong>显卡</strong></span></span> \r\n				</td>\r\n				<td width=\"108\" style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"font-size:14.0px;\">分辨率</span> \r\n				</td>\r\n				<td width=\"90\" style=\"color:#ff0000;\" bgcolor=\"#ffffff\">\r\n					<span style=\"font-size:14.0px;\">银色/金色<br />\r\n新品价</span> \r\n				</td>\r\n				<td width=\"102\" bgcolor=\"#ffffff\">\r\n					<p>\r\n						<span style=\"color:#ff0000;\"><span style=\"font-size:14.0px;\">粉色<br />\r\n<span style=\"color:#ff0000;font-family:微软雅黑;font-weight:bold;line-height:28.0px;\">新品</span>价</span></span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span><span style=\"color:#000000;\"><span style=\"font-size:14.0px;\">官方标配</span></span></span> \r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span><span style=\"color:#000000;\"><span style=\"font-size:14.0px;\">i5-7200U</span></span></span> \r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span><span style=\"color:#000000;\"><span style=\"font-size:14.0px;\">4G</span></span></span> \r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span><span style=\"color:#000000;\"><span style=\"font-size:14.0px;\">500G机械</span></span></span> \r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span><span style=\"color:#000000;\"><span style=\"font-size:14.0px;\"> \r\n					<div>\r\n						&nbsp;GeForce&nbsp;940MX\r\n					</div>\r\n</span></span></span><span style=\"color:#000000;\"><strong><span style=\"font-size:14.0px;\"><span style=\"font-size:16.0px;\">2G独显</span></span></strong></span> \r\n				</td>\r\n				<td style=\"color:#333333;font-weight:normal;\" bgcolor=\"#ffffff\">\r\n					<span><span style=\"color:#000000;\"><span style=\"font-size:14.0px;\"><strong>14英寸<br />\r\n1920*1080<br />\r\n</strong></span></span></span> \r\n				</td>\r\n				<td bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\">￥4799</span></span> \r\n				</td>\r\n				<td style=\"color:#333333;font-weight:normal;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\"><strong>￥5099</strong></span></span> \r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\">标准套餐</span></span> \r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\">i5-7200U</span></span> \r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\">4G</span></span> \r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\">128G固态</span></span> \r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span><span style=\"color:#000000;\"><span style=\"font-size:14.0px;\"> \r\n					<div>\r\n						&nbsp;GeForce&nbsp;940MX\r\n					</div>\r\n</span></span></span><span style=\"color:#000000;\"><strong><span style=\"font-size:14.0px;\"><span style=\"font-size:16.0px;\">2G独显</span></span></strong></span> \r\n				</td>\r\n				<td style=\"color:#333333;font-weight:normal;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\"><strong><span style=\"font-family:微软雅黑;font-weight:bold;line-height:20.0px;\">14英寸</span><br />\r\n<span style=\"font-family:微软雅黑;font-weight:bold;line-height:20.0px;\">1920*1080</span></strong><strong><br />\r\n</strong></span></span> \r\n				</td>\r\n				<td bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\">￥5099</span></span> \r\n				</td>\r\n				<td style=\"color:#333333;font-weight:normal;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\"><strong>￥5399</strong></span></span> \r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#ff0000;\"><span style=\"font-size:14.0px;\"><span style=\"font-family:微软雅黑;font-weight:bold;line-height:20.0px;\">套餐一</span><br />\r\n</span></span> \r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#ff0000;\"><span style=\"font-size:14.0px;\">i5-7200U</span></span> \r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#ff0000;\"><span style=\"font-size:14.0px;\">4G</span></span> \r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#ff0000;\"><span style=\"font-size:14.0px;\">256G固态</span></span> \r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#ff0000;\"><span style=\"font-size:14.0px;\"><span style=\"font-family:微软雅黑;font-weight:bold;line-height:20.0px;\">GeForce&nbsp;940MX</span><br />\r\n<span style=\"font-size:16.0px;\">2G独显</span></span></span> \r\n				</td>\r\n				<td style=\"color:#333333;font-weight:normal;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#ff0000;\"><span style=\"font-size:14.0px;\"><strong>14英寸<br />\r\n1920*1080<br />\r\n</strong></span></span> \r\n				</td>\r\n				<td style=\"color:#ff0000;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#ff0000;\"><span style=\"font-size:14.0px;\"><span style=\"font-family:微软雅黑;font-weight:bold;line-height:20.0px;\">特惠</span><br />\r\n<span style=\"font-family:微软雅黑;font-weight:bold;line-height:20.0px;\">￥5349</span><br />\r\n</span></span> \r\n				</td>\r\n				<td style=\"color:#333333;font-weight:normal;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#ff0000;\"><span style=\"font-size:14.0px;\"><strong><span style=\"font-family:微软雅黑;font-weight:bold;line-height:20.0px;\">特惠</span><br />\r\n<span style=\"font-family:微软雅黑;font-weight:bold;line-height:20.0px;\">￥5649</span></strong></span></span> \r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\"><span style=\"font-family:微软雅黑;font-weight:bold;line-height:20.0px;\">套餐二</span><br />\r\n</span></span> \r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\">i5-7200U</span></span> \r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\">4G</span></span> \r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<p style=\"color:#000000;\">\r\n						<span style=\"font-size:14.0px;\"><span style=\"color:#000000;font-family:微软雅黑;font-weight:bold;line-height:28.0px;\">128G固态</span></span>\r\n					</p>\r\n					<p style=\"color:#000000;\">\r\n						<span style=\"font-size:14.0px;\"><span style=\"color:#000000;font-family:微软雅黑;font-weight:bold;line-height:28.0px;\">+</span>500G机械<br />\r\n</span>\r\n					</p>\r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\"><span style=\"font-family:微软雅黑;font-weight:bold;line-height:20.0px;\">GeForce&nbsp;940MX</span><br />\r\n<span style=\"font-size:16.0px;\">2G独显</span></span></span> \r\n				</td>\r\n				<td style=\"color:#333333;font-weight:normal;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\"><strong>14英寸<br />\r\n1920*1080<br />\r\n</strong></span></span> \r\n				</td>\r\n				<td style=\"color:#ff0000;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\"><span style=\"font-weight:bold;line-height:20.0px;\">￥5349</span><br />\r\n</span></span> \r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\">￥5649</span></span> \r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\"><span style=\"font-family:微软雅黑;font-weight:bold;line-height:20.0px;\">套餐三</span><br />\r\n</span></span> \r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\">i5-7200U</span></span> \r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\">8G</span></span> \r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\">256G固态</span></span> \r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\"><span style=\"font-family:微软雅黑;font-weight:bold;line-height:20.0px;\">GeForce&nbsp;940MX</span><br />\r\n<span style=\"font-size:16.0px;\">2G独显</span></span></span> \r\n				</td>\r\n				<td style=\"color:#333333;font-weight:normal;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\"><strong>14英寸<br />\r\n1920*1080<br />\r\n</strong></span></span> \r\n				</td>\r\n				<td style=\"color:#ff0000;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\">￥5549</span></span> \r\n				</td>\r\n				<td style=\"color:#0000ff;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\">￥5849</span></span> \r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#0000ff;\"><span style=\"font-size:14.0px;\"><span style=\"font-family:微软雅黑;font-weight:bold;line-height:20.0px;\">套餐四</span><br />\r\n</span></span> \r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#0000ff;\"><span style=\"font-size:14.0px;\">i5-7200U</span></span> \r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#0000ff;\"><span style=\"font-size:14.0px;\">8G</span></span> \r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<p style=\"color:#0000ff;\">\r\n						<span style=\"font-size:14.0px;\"><span style=\"color:#0000ff;font-family:微软雅黑;font-weight:bold;line-height:28.0px;\">128G固态</span></span>\r\n					</p>\r\n					<p style=\"color:#0000ff;\">\r\n						<span style=\"font-size:14.0px;\"><span style=\"color:#0000ff;font-family:微软雅黑;font-weight:bold;line-height:28.0px;\">+</span>500G机械<br />\r\n</span>\r\n					</p>\r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#0000ff;\"><span style=\"font-size:14.0px;\"><span style=\"font-family:微软雅黑;font-weight:bold;line-height:20.0px;\">GeForce&nbsp;940MX</span><br />\r\n<span style=\"font-size:16.0px;\">2G独显</span></span></span> \r\n				</td>\r\n				<td style=\"color:#333333;font-weight:normal;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#0000ff;\"><span style=\"font-size:14.0px;\"><strong>14英寸<br />\r\n1920*1080<br />\r\n</strong></span></span> \r\n				</td>\r\n				<td style=\"color:#ff0000;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#0000ff;\"><span style=\"font-size:14.0px;\">玩家推荐</span><span style=\"font-size:14.0px;\"><span style=\"font-weight:bold;line-height:20.0px;\"><br />\r\n￥5549</span></span></span> \r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#0000ff;\"><span style=\"font-size:14.0px;\">玩家推荐<br />\r\n￥5849</span></span> \r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#0000ff;\"><span style=\"font-size:14.0px;\"><span style=\"color:#000000;font-family:微软雅黑;font-weight:bold;line-height:20.0px;\">套餐五</span><br />\r\n</span></span> \r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\">i5-7200U</span></span> \r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\">8G</span></span> \r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<p style=\"font-size:14.0px;\">\r\n						<span style=\"color:#333333;font-family:微软雅黑;font-weight:bold;line-height:28.0px;\">240G固态</span>\r\n					</p>\r\n					<p style=\"font-size:14.0px;\">\r\n						<span style=\"color:#333333;font-family:微软雅黑;font-weight:bold;line-height:28.0px;\">+</span>500G机械\r\n					</p>\r\n				</td>\r\n				<td style=\"color:#333333;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\"><span style=\"font-family:微软雅黑;font-weight:bold;line-height:20.0px;\">GeForce&nbsp;940MX</span><br />\r\n<span style=\"font-size:16.0px;\">2G独显</span></span></span> \r\n				</td>\r\n				<td style=\"color:#333333;font-weight:normal;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\"><strong>14英寸<br />\r\n1920*1080<br />\r\n</strong></span></span> \r\n				</td>\r\n				<td style=\"color:#ff0000;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\">￥5749</span></span> \r\n				</td>\r\n				<td style=\"color:#0000ff;\" bgcolor=\"#ffffff\">\r\n					<span style=\"color:#000000;\"><span style=\"font-size:14.0px;\">￥6049</span></span> \r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"color:#333333;text-align:left;\" bgcolor=\"#ffffff\" colspan=\"8\">\r\n					<ul style=\"color:#ff0000;\">\r\n						<li>\r\n							注：1.（升级内存/硬盘为买家个人定制需求，升级后可能与原标识配置不一样）~~~~~【详情请咨询客服】<br />\r\n2.网页链接默认为官方标配，根据买家购买配置不同，实际发货以套餐为准，敬请谅解！\r\n						</li>\r\n					</ul>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</h1>\r\n<h1>\r\n	<br />\r\n</h1>\r\n<h1>\r\n	<img align=\"absmiddle\" class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i2/133668489/TB2Xn2Ybyb_F1JjSZFzXXc6KXXa_!!133668489.jpg\" />\r\n</h1>', '160', '0', '325', '34.00', '0', '0.00', '0.00', '', '31', '0', '0', '1', null, '0', '0', '', '黑,白,金,官方标配,套餐1,套餐2', '0', '0', '0', '0');
INSERT INTO `yershop_goods` VALUES ('178', 'OPPO耳机原装正品OPPO MH133 R9s R11 A57 R7 R9耳机入耳式耳塞式', '1509832095', '0', '100', '1', '567', '158', '0', '326', '39.90', '0', '0.00', '0.00', '', '44', '0', '0', '1', null, '0', '0', '', null, '1509832095', '1', '0', '0');
INSERT INTO `yershop_goods` VALUES ('179', 'HP/惠普 暗影精灵 光影精灵3代游戏本 暗夜精灵2Pro笔记本电脑 i7 ', '1521765481', '0', '657', '1', '<img align=\"absmiddle\" class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i4/2736964691/TB2PLy_tmBjpuFjSsplXXa5MVXa_!!2736964691.jpg\" />', '156', '0', '327', '5399.00', '0', '0.00', '0.00', null, '575', '0', '0', '1', null, '0', '0', '', '黑,白,官方标配,套餐1,1g,2g', '1521765481', '1', '1521765481', '1521765481');
INSERT INTO `yershop_goods` VALUES ('180', 'ZARA 男装 黑色热封短版连帽夹克外套 棉衣01966330800', '1509907402', '0', '122', '1', '<img src=\"https://img.alicdn.com/imgextra/i2/2228361831/TB2wBjGboF7MKJjSZFLXXcMBVXa_!!2228361831.jpg\" />', '118', '0', '329', '34.00', '0', '0.00', '0.00', '', '5', '0', '0', '1', null, '0', '0', '', null, '1509907402', '1', '0', '0');
INSERT INTO `yershop_goods` VALUES ('181', 'ZARA 新品 男装 细针美丽诺针织衫 00693300500', '1509907480', '0', '23', '1', '<img src=\"https://img.alicdn.com/imgextra/i2/2228361831/TB2SZHaqlUSMeJjy1zkXXaWmpXa_!!2228361831.jpg\" />', '118', '0', '330', '223.00', '0', '0.00', '0.00', '', '17', '0', '0', '1', null, '0', '0', '', null, '1509907480', '1', '0', '0');
INSERT INTO `yershop_goods` VALUES ('182', 'ZARA 男装 绒面质感裤子 06706310707', '1509907548', '0', '123', '1', '<img src=\"https://img.alicdn.com/imgextra/i3/2228361831/TB2Iy1_XPqhSKJjSspnXXc79XXa_!!2228361831.jpg\" />', '118', '0', '331', '233.00', '0', '0.00', '0.00', '', '5', '0', '0', '1', null, '0', '0', '', null, '1509907548', '1', '0', '0');
INSERT INTO `yershop_goods` VALUES ('183', 'PUMA彪马男鞋女鞋2017秋季SUEDE复古杨洋低帮休闲板鞋352634-03', '1509907754', '0', '234', '1', '<img src=\"https://img.alicdn.com/imgextra/i3/133227658/TB2BHApdbVkpuFjSspcXXbSMVXa_!!133227658.gif\" />', '118', '0', '332', '234.00', '0', '0.00', '0.00', '', '4', '0', '0', '1', null, '0', '0', '', null, '1509907754', '1', '0', '0');
INSERT INTO `yershop_goods` VALUES ('184', '阿迪达斯男裤2017冬季小脚运动裤保暖加绒收口休闲卫裤长裤BK7433', '1509908052', '0', '123', '1', '<img src=\"https://img.alicdn.com/imgextra/i3/133227658/TB250MNmbwTMeJjSszfXXXbtFXa_!!133227658.jpg\" /><img src=\"https://img.alicdn.com/imgextra/i3/133227658/TB250MNmbwTMeJjSszfXXXbtFXa_!!133227658.jpg\" /><img src=\"https://img.alicdn.com/imgextra/i1/133227658/TB2vgBrmrsTMeJjSszhXXcGCFXa_!!133227658.jpg\" />', '163', '0', '333', '123.00', '0', '0.00', '0.00', '', '10', '0', '0', '1', null, '0', '0', '', '蓝色,白色,xl,xxl', '1509908052', '1', '0', '0');
INSERT INTO `yershop_goods` VALUES ('185', '阿迪达斯长裤男 2017秋季新款运动裤针织跑步休闲小脚裤子BS2884', '1509908153', '0', '234', '1', '<img src=\"https://img.alicdn.com/imgextra/i2/1993730769/TB2R2ZaXz2lJKJjSszcXXaopVXa_!!1993730769.gif\" />', '163', '0', '334', '234.00', '0', '0.00', '0.00', '', '319', '0', '0', '1', null, '0', '0', '335,336', '红色,蓝色,x,xl', '1509908153', '1', '0', '0');
INSERT INTO `yershop_goods` VALUES ('186', '正版书籍包邮 龙应台人生三书', '1509909138', '0', '234', '1', '<img src=\"https://img.alicdn.com/imgextra/i4/750751837/TB21C._krtlpuFjSspoXXbcDpXa_!!750751837.jpg\" />', '88', '0', '338', '234.00', '0', '0.00', '0.00', '', '3', '0', '0', '1', null, '0', '0', '339', null, '1509909138', '1', '0', '0');
INSERT INTO `yershop_goods` VALUES ('187', '正版现货 白夜行(精装典藏版)东野圭吾小说集', '1509909317', '0', '234', '1', '<img src=\"https://img.alicdn.com/imgextra/i4/1049653664/TB2CpM4kXXXXXbjXpXXXXXXXXXX_!!1049653664.jpg\" />', '88', '0', '341', '234.00', '0', '0.00', '0.00', '', '2', '0', '0', '1', null, '0', '0', '', null, '1509909317', '1', '0', '0');
INSERT INTO `yershop_goods` VALUES ('188', '国家图书奖朱自清散文集徐志摩经典大全集', '1509909415', '0', '234', '1', '<img src=\"https://img.alicdn.com/imgextra/i1/2374668160/TB2dsI4lr_0UKFjy1XaXXbKfXXa_!!2374668160.jpg\" />', '88', '0', '343', '234.00', '0', '0.00', '0.00', '', '3', '0', '0', '1', null, '0', '0', '', null, '1509909415', '1', '0', '0');
INSERT INTO `yershop_goods` VALUES ('189', '罗辑思维官方 今天故事书 作文宝典 书书籍畅销书 亲子图书 罗胖跨年演讲推荐书童书 正版', '1509909506', '0', '234', '1', '<img src=\"https://img.alicdn.com/imgextra/i2/2760223904/TB2pUYZbZtnpuFjSZFKXXalFFXa-2760223904.png\" />', '88', '0', '344', '234.00', '0', '0.00', '0.00', '', '10', '0', '0', '1', null, '0', '0', '', null, '1509909506', '1', '0', '0');
INSERT INTO `yershop_goods` VALUES ('190', '【亚马逊图书】王小波文集：黄金时代+青铜时代+', '1509909593', '0', '324', '1', '<img src=\"https://img.alicdn.com/bao/uploaded/TB1NZwQorsTMeJjSszhXXcGCFXa_!!0-item_pic.jpg_250x250.jpg\" />', '88', '0', '345', '34.00', '0', '0.00', '0.00', '', '5', '0', '0', '1', null, '0', '0', '', null, '1509909593', '1', '0', '0');
INSERT INTO `yershop_goods` VALUES ('191', '布鲁克林有棵树正版包邮(美)史密斯著', '1509909668', '0', '123', '1', '<span style=\"color:#666666;font-family:tahoma, arial, 宋体, sans-serif;background-color:#FFFFFF;\">第一章 宁静这个词用于纽约布鲁克林恰如其分。尤其是在1912年的夏天。沉静这个词大概更好些，只是对布鲁克林的威廉斯堡不大合适。大草原的可爱，雪兰多的悦耳，用于布鲁克林都不合适。只能用宁静这个词，特别是夏日的一个星期六下午。 下午的斜阳照在弗兰西·诺兰家爬满苔藓的院子里，把破旧的木篱笆晒得暖暖的。看着斜射下来的一缕缕阳光，弗兰西心头涌出一种美好的感觉来。这样的感觉，她回忆起一首诗歌时也有过。这诗她在学校里背诵过，是这样的： 这里是原始森林 松树和铁杉，低语阵阵 苔藓如须，翠绿满身 黄昏中伫立，依稀朦胧 如一个个德鲁伊老僧 弗兰西院子里的树既不是松树，也不是铁杉。树上的绿色枝条从树干向四周发散，枝条上长满了尖尖的叶子，整棵树看起来如同无数撑开的绿伞。有人称之为天堂树。不管它的种子落到什么地方，都会长出一棵树来，向着天空，努力生长。这树长在四周围满木篱的空场子里，或是从无人留意的垃圾堆里钻出来；它也是唯一能在水泥地里长出来的树。它长得很茂盛，而且只在居民区长。 星期天下午，你去散散步，走到一个不错的居民区，挺高档的居民区。你会从通往人家院子的铁门中看见这样一棵小树，这时候你就知道，布鲁克林这一带会变成居民区了。树懂。树会打前站。到了后来，渐渐会有些贫穷的外国人跑过来，把破旧的褐砂石房子修理成平房。他们把羽毛褥垫从窗户里推出来晒。天堂树长得郁郁葱葱。这种树就这习性。它喜欢穷人。 弗兰西院子里长的就是这种树。在她的三楼太平梯附近，树上的小“伞”一个个蜷曲过来。一个坐在太平梯上的十一岁女孩会觉得自己住在树上。夏天的每个星期六下午，弗兰西都是这么想象的。 啊，布鲁克林的星期六多么美好。啊，到处都是那么美好！人们星期六照样能领薪水。星期六是个周末假日，却又不要守星期天那些清规戒律。人们有钱出去买东西。他们这一天会好好吃上一顿饭，喝醉，约会，做爱，熬夜，唱歌，放音乐，打架，跳舞，因为次日会有自由自在的一天，可以睡个懒觉，至少可以睡到晚场的弥撒。 星期天，大部分人会挤着去参加十一点钟的弥撒。怎么说呢，也有一些人，很少一些，会去参加六点钟的那一场。人们夸他们赶得早，其实他们不配这样的夸奖，因为他们本来是在外头呆得太久，回到家的时候，都是早晨了。他们于是去这场弥撒，应付过去，把罪给洗了，然后回家安安心心睡一天大觉。 弗兰西的星期六，是从去垃圾回收站开始的。和其他布鲁克林小孩一样，她和弟弟尼雷会在外头捡些布头、纸张、金属、橡胶等破烂，藏在地下室的箱子里，上着锁，或是藏在床底下。从星期一到星期五，每天放学回家的路上，弗兰西会慢慢走，边走边看排水沟，希望找到烟盒的锡纸，或是口香糖的包装纸。回头她会将这些放在一个小罐子的盖子里头熔化。垃圾站不收没有熔化的锡球，因为很多孩子会将铁垫圈放在中间抵重量。有时候，尼雷会找到一个苏打水壶。弗兰西会帮他把壶嘴弄下来，熔化出其中的铅来。垃圾站的人怕苏打水公司的人找麻烦，不敢回收完整的壶嘴。壶嘴是好货。化掉后，能卖五分钱。 弗兰西和尼雷每天晚上都到地下室，把升降机架子上当日收的破烂全倒出来。弗兰西和尼雷的妈妈是清洁工，所以两个孩子享有这项特权，能下到地下室去。他们会把架子上的纸张、布头和能回收的瓶子全都拿走。纸张不值什么钱，十磅才能卖一分钱。布头一磅两分钱，铁是一磅四分钱。铜是好货，一磅能卖一毛钱。有时候，弗兰西会撞上大运，找到废弃的煮衣锅锅底。她会用开罐器将它掰下来，折起，捶打，再折，再捶打。 星期六早晨九点一过，孩子们就从大街小巷钻出来，纷纷涌到主干道曼哈顿大道上。他们沿着曼哈顿大道，慢慢走到斯科尔斯街。有的孩子把破烂直接拿在手上。有的拖着木头做的肥皂包装盒，盒子下头装有很稳当的木头轮子。还有几个推着童车，里面装得满满的。 弗兰西和尼雷两个人把破烂装进一只麻袋里，一人拎一只角，在街上拖着走，沿着曼啥顿大道，路过茂吉街、滕·艾耶克街、斯塔格街，最后来到斯科尔斯街。这都是些丑陋的街道，名字倒是很漂亮。每条偏街陋巷里都会有衣衫褴褛的小孩子钻出来，汇入破烂大军，前往卡尼的垃圾站。他们去的路上，会遇到空手而归的孩子们。这些孩子已经把破烂卖掉，钱也都花得一个子儿都不剩了。现在，他们大摇大摆走回来，还嘲笑起其他小孩来。 “捡破烂的！捡破烂的！” 听到这种骂声，弗兰西的脸立刻就涨红了。她知道这些骂人的人自己也捡破烂，可是这也无济于事。其实过一会儿弟弟也会和他的小伙伴们一起，空着手，大摇大摆走回来，同样嘲笑着后来的人，可是这也安慰不了她。她就是害臊得慌。 卡尼在一个摇摇欲坠的马棚里，经营起垃圾回收的生意来。转过街角，弗兰西就看到那两扇大门被钩子钩住，友善地敞开着；那个样子平淡的指针式磅秤的指针晃了一下，弗兰西想象那是欢迎的手势。她看到了卡尼，铁锈色的头发，铁锈色的胡须，铁锈色的眼睛，守在磅秤边。卡尼对女孩子更喜欢些。他伸手去捏女孩子脸蛋的时候，要是对方不退缩，他会多给一分钱。 鉴于有可能拿到这额外好处，尼雷就闪到一边，让弗兰西把麻袋拖进马棚。卡尼跳上前，把袋子里的东西倒在地上，然后先在弗兰西脸上捏了一把。当他将破烂堆上磅秤的时候，弗兰西的眼睛不习惯这里头的黑暗，眨了一眨，想适应过来。她能闻到空气中的苔藓味和湿布头的臭味。卡尼眼睛朝磅秤指针瞟了一眼，然后说了两个字，也就是他的出价。弗兰西知道讨价还价他是不允许的，只好点头称是。卡尼把磅秤上的破烂掀了下去，叫她等着。他自己把废纸码到一个角落，布头扔往另外一个角落，然后把金属分拣出来。这一切都弄完了，他才把手伸进口袋，扯出一个用蜡线拴着的旧皮袋子，掏出一枚枚分币来。分币都发绿了，本身就像破烂似的。她低声说了句：“谢谢您。”这时候卡尼贱贱地看了她一眼，然后伸手狠狠捏了她的脸蛋一把。她坚持着没作什么反应。他笑了，又多给了她一分钱。然后他的举止陡然一变，嘴上咋咋呼呼，手脚敏捷麻利。 “过来，”他冲排队的下一个男孩叫道，“把铅拿出来！”他等着孩子们发笑。“我可不是说破烂啊！”孩子们十分配合地笑了起来。这笑声听来如同迷失羔羊的咩咩叫唤，不过卡尼似乎心满意足了。 弗兰西走了出去，向弟弟汇报情况。“他给了我一毛六，还有捏脸给的一分钱。” “那一分钱归你。”他说。这都是二人之间很早就有的协定了。 她把这一分钱放进衣服口袋，把余下的交给弟弟。尼雷才十岁，比弗兰西小一岁。不过他是男孩，钱的事情归他管。他将这些分币小心翼翼地分好。 “八分钱放进储蓄罐。”这是规定。他们不管在哪里挣到的钱，都将一半存入储蓄罐里。这个储蓄罐是个锡罐子，钉在衣橱间最阴暗的角落里。“四分钱归你，四分钱归我。” 弗兰西把归储蓄罐的钱用手帕包好，打上结。她看着自己的五分钱，很高兴这钱能换成一个五分硬币。 尼雷把麻袋卷起来，用胳膊夹着，冲进查理便宜店里，弗兰西就跟在他身后。查理便宜店是一家廉价糖果店，紧挨着卡尼的垃圾回收站，也是专门为了垃圾站这边的生意而开的。星期六结束后，糖果店的钱柜里会装满发绿的分币。根据某个不成文的规定，这店只有男孩才能进去。所以弗兰西并没有进去，而是靠在门口。 男孩子们的年龄从八岁到十四岁不等，看上去都差不多，都穿着松松垮垮的灯笼裤，戴着鸭舌帽，帽檐都是破破烂烂的。他们到处站着，手插在口袋里，瘦瘦的肩膀用力朝前弓着。他们长大后也会是这样，也会在各样扎堆的地方这么站着。唯一不同的是，长大后，他们嘴边总叼着香烟，就像是永远粘在嘴上一般。他们带着口音说起话来，嘴角的烟就跟着一起一伏。 孩子们惴惴不安地在那里呆着，瘦瘦的脸一会儿面向查理，</span>', '88', '0', '347', '123.00', '0', '0.00', '0.00', '', '4', '0', '0', '1', null, '0', '0', '', null, '1509909668', '1', '0', '0');
INSERT INTO `yershop_goods` VALUES ('192', '【国家图书奖】鲁迅散文选集', '1509909712', '0', '123', '1', '<img src=\"https://img.alicdn.com/imgextra/i2/2374668160/TB2._4wkUUIL1JjSZFrXXb3xFXa_!!2374668160.jpg\" />', '88', '0', '348', '213.00', '0', '0.00', '0.00', '', '25', '0', '0', '1', null, '0', '0', '', null, '1509909712', '1', '0', '0');
INSERT INTO `yershop_goods` VALUES ('193', '正版 小老虎图书 初等英语3-6级词汇速记手册 天津科学技术出版社', '1509910093', '0', '234', '1', '<img src=\"https://img.alicdn.com/imgextra/i2/2378431138/TB2jo9RXiGfF1Jjy0FjXXXZdVXa_!!2378431138.jpg\" />', '83', '0', '349', '43.00', '0', '0.00', '0.00', '', '146', '0', '0', '1', null, '0', '0', '', '普装,精装,16开,32开', '1509910093', '1', '0', '0');
INSERT INTO `yershop_goods` VALUES ('194', '欧神诺瓷砖 特权订金10元抵500元 ELB11880S新塞纳河客厅地砖', '1509936513', '0', '324', '1', '<img src=\"https://img.alicdn.com/imgextra/i2/651798426/TB2wEwJcR8lpuFjSspaXXXJKpXa-651798426.jpg\" />', '114', '0', '350', '434.00', '0', '0.00', '0.00', '', '3', '0', '0', '1', null, '0', '0', '', null, '1509936513', '1', '0', '0');
INSERT INTO `yershop_goods` VALUES ('195', '北欧无缝无纺布壁画 电视背景墙简约现代沙发客厅卧室', '1509936578', '0', '234', '1', '<img src=\"https://img.alicdn.com/imgextra/i4/414749207/TB2E2cIbxwlyKJjSZFsXXar3XXa_!!414749207.jpg\" />', '114', '0', '351', '324.00', '0', '0.00', '0.00', '', '2', '0', '0', '1', null, '0', '0', '', null, '1509936578', '1', '0', '0');
INSERT INTO `yershop_goods` VALUES ('196', '百安居 699精致全包装修套餐 室内家装全案装修施工房屋装潢公司', '1509936626', '0', '234', '1', '<img src=\"https://img.alicdn.com/imgextra/i4/2670771506/TB25jVhbKkJL1JjSZFmXXcw0XXa_!!2670771506.jpg\" />', '114', '0', '352', '324.00', '0', '0.00', '0.00', '', '4', '0', '0', '1', null, '0', '0', '', null, '1509936626', '1', '0', '0');
INSERT INTO `yershop_goods` VALUES ('197', '捷阳 电动晾衣架 遥控升降智能自动晾衣机', '1509936714', '0', '234', '1', '<img src=\"https://img.alicdn.com/imgextra/i1/2712564245/TB2YdWzXJzJ8KJjSspkXXbF7VXa_!!2712564245.jpg\" />', '114', '0', '353', '234.00', '0', '0.00', '0.00', '', '8', '0', '0', '1', null, '0', '0', '', null, '1509936714', '1', '0', '0');
INSERT INTO `yershop_goods` VALUES ('198', 'TATA木门 简约静音门室内门 卧室房门实木复合木门全屋定制门@057', '1509936856', '0', '435', '1', '<img src=\"https://img.alicdn.com/imgextra/i2/826813153/TB2mIw3lV9gSKJjSspbXXbeNXXa_!!826813153.jpg\" />', '114', '0', '354', '345.00', '0', '0.00', '0.00', '', '11', '0', '0', '1', null, '0', '0', '', null, '1509936856', '1', '0', '0');
INSERT INTO `yershop_goods` VALUES ('199', '简约转角书桌实木书架书柜组合一体电脑桌台式家用学生拐角写字台', '1509937022', '0', '234', '1', '<img src=\"https://img.alicdn.com/imgextra/i3/1657682766/TB2fieyzctnpuFjSZFKXXalFFXa_!!1657682766.jpg\" />', '114', '0', '355', '3245.00', '0', '0.00', '0.00', '', '3', '0', '0', '1', null, '0', '0', '', null, '1509937022', '1', '0', '0');
INSERT INTO `yershop_goods` VALUES ('200', '厨房置物架 壁挂 304不锈钢刀架厨具收纳厨房挂架挂件厨房用品', '1509937154', '0', '234', '1', '<img src=\"https://img.alicdn.com/imgextra/i3/1692257579/TB2x6boaMnH8KJjSspcXXb3QFXa_!!1692257579.jpg\" />', '114', '0', '356', '234.00', '0', '0.00', '0.00', '', '3', '0', '0', '1', null, '0', '0', '', null, '1509937154', '1', '0', '0');
INSERT INTO `yershop_goods` VALUES ('201', '耐夫刀具套装厨房组合全套不锈钢德国菜刀套装家用厨具水果刀套刀', '1509937256', '0', '345', '1', '<img src=\"https://img.alicdn.com/imgextra/i4/2818590914/TB2jnwnhuALL1JjSZFjXXasqXXa_!!2818590914.jpg_q90.jpg\" />', '114', '0', '357', '34554.00', '0', '0.00', '0.00', '', '48', '0', '0', '1', null, '0', '0', '', null, '1509937256', '1', '0', '0');
INSERT INTO `yershop_goods` VALUES ('203', '伊利 安慕希 205g*16盒 原味 常温酸奶 12盒+4盒', '1511030273', '0', '121', '1', '<p>\r\n	<img src=\"https://img.alicdn.com/imgextra/i3/700459267/TB2MEntayqAXuNjy1XdXXaYcVXa_!!700459267.jpg\" /> \r\n</p>\r\n<p>\r\n	<img src=\"https://img.alicdn.com/imgextra/i1/299244686/TB2pKXYcMFkpuFjSspnXXb4qFXa-299244686.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '151', '0', '358', '12.00', '0', '0.00', '0.00', '', '345', '0', '0', '1', null, '0', '0', '', '1kg,2kg,优惠套装1,优惠套装2', '1511030273', '1', '0', '0');
INSERT INTO `yershop_goods` VALUES ('204', '套餐】Apple iPad 32G 银+intermail 保护膜 钢化膜 透明', '1511717535', '0', '123', '1', '<img src=\"https://image.suning.cn/uimg/sop/commodity/881497240158799213071490_x.jpg\" />', '171', '0', '359', '7213.00', '0', '0.00', '0.00', '', '10', '0', '0', '1', null, '0', '0', '', null, '1511717535', '1', '0', '0');
INSERT INTO `yershop_goods` VALUES ('205', 'Apple iPad mini 4 7.9英寸 平板电脑（128GB WLAN版 MK9P2CH A 银色', '1511717623', '0', '23', '1', '<img src=\"https://image.suning.cn/uimg/BTC/PDI/134162973_20150910095419.jpg\" />', '171', '0', '360', '2342.00', '10', '0.00', '0.00', null, '35', '0', '0', '1', null, '0', '0', '', null, '1511717623', '1', '1511719000', '1511744200');
INSERT INTO `yershop_goods` VALUES ('206', '惠普（HP）ENVY 13-ad109TU笔记本电脑（i5-8250U 4G 256G SSD 金）', '1511717677', '0', '23432', '1', '<img src=\"https://image.suning.cn/uimg/sop/commodity/156254755313200260630300_x.jpg\" />', '171', '0', '361', '234.00', '0', '0.00', '0.00', null, '65', '0', '0', '1', null, '0', '0', '', null, '1511717677', '1', '2017', '1516149218');
INSERT INTO `yershop_goods` VALUES ('207', '美的（Midea）M3-L253C 智能微波炉 光波烧烤', '1511722560', '0', '344', '1', '<img class=\"err-product\" alt=\"\" src=\"https://image.suning.cn/uimg/sop/commodity/187782841565914587180800_x.jpg\" />', '168', '0', '362', '599.00', '0', '0.00', '0.00', null, '21', '0', '0', '1', null, '0', '0', '', null, '1511722560', '1', '1511722560', '1511722560');
INSERT INTO `yershop_goods` VALUES ('208', '永赢一路发一苏宁银车挂 银色', '1511722710', '0', '234', '0', '<img src=\"https://image.suning.cn/uimg/sop/commodity/849064331912942412454000_x.jpg\" />', '169', '0', '363', '23.00', '0', '0.00', '0.00', null, '23', '0', '0', '1', null, '0', '0', '', null, '1511722710', '1', '1511722710', '1511722710');
INSERT INTO `yershop_goods` VALUES ('209', 'Xiaomi/小米 小米手机Note3 6GB+64GB 亮黑色 双摄智能拍照手机', '1511723191', '0', '234', '1', '<img src=\"https://image.suning.cn/uimg/sop/commodity/659360312923674112540000_x.jpg\" />', '170', '0', '364', '3245.00', '0', '0.00', '0.00', null, '52', '0', '0', '1', null, '0', '0', '', null, '1511723191', '1', '1511723191', '1511723191');

-- ----------------------------
-- Table structure for yershop_group
-- ----------------------------
DROP TABLE IF EXISTS `yershop_group`;
CREATE TABLE `yershop_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `url` char(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `hide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `module` varchar(225) DEFAULT NULL,
  `icon` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yershop_group
-- ----------------------------
INSERT INTO `yershop_group` VALUES ('1', '系统', '0', '1', 'systems/index', '0', '1', null, null);
INSERT INTO `yershop_group` VALUES ('7', '文章', '40', '3', 'document/index', '0', '1', null, null);
INSERT INTO `yershop_group` VALUES ('15', '订单', '0', '3', 'order/index', '0', '1', null, null);
INSERT INTO `yershop_group` VALUES ('16', '用户', '0', '4', 'ucenter/index', '0', '1', null, null);
INSERT INTO `yershop_group` VALUES ('19', '广告', '0', '5', 'ad/index', '0', '1', null, null);
INSERT INTO `yershop_group` VALUES ('20', '商品', '0', '1', 'goods/index', '0', '1', null, null);

-- ----------------------------
-- Table structure for yershop_message
-- ----------------------------
DROP TABLE IF EXISTS `yershop_message`;
CREATE TABLE `yershop_message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `goodid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(225) DEFAULT NULL COMMENT '标题',
  `content` varchar(225) DEFAULT NULL COMMENT '留言内容',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '默认null-未提交订单1-未读2-已读',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `group` varchar(225) DEFAULT NULL COMMENT '分组',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='留言表';

-- ----------------------------
-- Records of yershop_message
-- ----------------------------

-- ----------------------------
-- Table structure for yershop_models
-- ----------------------------
DROP TABLE IF EXISTS `yershop_models`;
CREATE TABLE `yershop_models` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) CHARACTER SET utf8 NOT NULL,
  `sort` int(1) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `tags` varchar(226) CHARACTER SET utf8 DEFAULT NULL,
  `type` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of yershop_models
-- ----------------------------
INSERT INTO `yershop_models` VALUES ('42', '服装', '0', '1', null, '0');
INSERT INTO `yershop_models` VALUES ('41', '零食', '0', '1', null, '0');
INSERT INTO `yershop_models` VALUES ('40', '普通商品', '0', '1', null, '0');
INSERT INTO `yershop_models` VALUES ('43', '手机', '0', '1', null, '0');
INSERT INTO `yershop_models` VALUES ('44', '笔记本', '0', '1', null, '0');
INSERT INTO `yershop_models` VALUES ('45', '汽车', '0', '1', null, '0');
INSERT INTO `yershop_models` VALUES ('46', '图书', '0', '1', null, '0');
INSERT INTO `yershop_models` VALUES ('47', '牛奶', '0', '1', null, '0');
INSERT INTO `yershop_models` VALUES ('48', '秒杀', '0', '1', null, '0');

-- ----------------------------
-- Table structure for yershop_module
-- ----------------------------
DROP TABLE IF EXISTS `yershop_module`;
CREATE TABLE `yershop_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `url` char(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `group_id` int(2) DEFAULT '0',
  `name` varchar(225) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=179 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yershop_module
-- ----------------------------
INSERT INTO `yershop_module` VALUES ('1', '系统管理', '0', '2', '', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('3', '模块管理', '1', '0', 'module/index', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('7', '商品分类', '40', '1', 'category/index', '20', '', '1');
INSERT INTO `yershop_module` VALUES ('8', '文章分类', '1', '0', 'cate/index', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('9', '文章管理', '43', '0', 'document/index', '7', '', '1');
INSERT INTO `yershop_module` VALUES ('143', '增加', '142', '0', 'slide/add', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('135', '用户组授权', '74', '0', 'auth/group', '16', '', '1');
INSERT INTO `yershop_module` VALUES ('134', '删除', '74', '0', 'auth/del', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('14', '商品属性', '40', '0', 'attributes/index', '20', '', '1');
INSERT INTO `yershop_module` VALUES ('141', '删除', '9', '0', 'document/del', '7', '', '1');
INSERT INTO `yershop_module` VALUES ('16', '订单管理', '41', '0', 'order/index', '15', '', '1');
INSERT INTO `yershop_module` VALUES ('140', '编辑', '9', '0', 'document/edit', '7', '', '1');
INSERT INTO `yershop_module` VALUES ('18', '商品类型', '40', '0', 'models/index', '20', '', '1');
INSERT INTO `yershop_module` VALUES ('139', '增加', '9', '0', 'document/add', '7', '', '1');
INSERT INTO `yershop_module` VALUES ('138', '删除', '8', '0', 'cate/del', '7', '', '1');
INSERT INTO `yershop_module` VALUES ('21', '退款管理', '166', '0', 'drawback/index', '15', '', '1');
INSERT INTO `yershop_module` VALUES ('22', '支付管理', '41', '0', 'pay/index', '15', '', '1');
INSERT INTO `yershop_module` VALUES ('137', '编辑', '8', '0', 'cate/edit', '7', '', '1');
INSERT INTO `yershop_module` VALUES ('151', '规格属性', '40', '0', 'specs/index', '20', '', '1');
INSERT INTO `yershop_module` VALUES ('136', '增加', '8', '0', 'cate/add', '7', '', '1');
INSERT INTO `yershop_module` VALUES ('68', '配置管理', '1', '2', 'config/index', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('40', '商品管理', '0', '1', '', '20', '', '1');
INSERT INTO `yershop_module` VALUES ('41', '订单管理', '0', '0', '', '15', '', '1');
INSERT INTO `yershop_module` VALUES ('43', '文章管理', '0', '0', '', '7', '', '1');
INSERT INTO `yershop_module` VALUES ('133', '写入用户组', '74', '0', 'auth/writeGrou', '0', '', '1');
INSERT INTO `yershop_module` VALUES ('132', '访问授权', '74', '0', 'auth/access', '16', '', '1');
INSERT INTO `yershop_module` VALUES ('131', '编辑', '74', '0', 'auth/edit', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('130', '增加', '74', '0', 'auth/add', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('129', '删除', '78', '0', 'ucenter/del', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('128', '编辑', '78', '0', 'ucenter/edit', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('127', '增加', '78', '0', 'ucenter/add', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('60', '奖品管理', '58', '0', 'ScratchPrize/index', '0', '', '1');
INSERT INTO `yershop_module` VALUES ('73', '分组管理', '1', '0', 'group/index', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('72', 'sku管理', '40', '0', 'sku/index', '20', '', '1');
INSERT INTO `yershop_module` VALUES ('65', '奖品管理', '63', '0', 'SmashingPrize/index', '0', '', '1');
INSERT INTO `yershop_module` VALUES ('70', '系统设置', '1', '3', 'systems/index', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('172', '商品列表', '40', '1', 'goods/index', '20', '', '1');
INSERT INTO `yershop_module` VALUES ('74', '角色管理', '77', '0', 'auth/index', '16', '', '1');
INSERT INTO `yershop_module` VALUES ('75', '增加', '3', '0', 'module/add', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('76', '编辑', '3', '2', 'module/edit', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('77', '用户管理', '0', '0', '', '16', '', '1');
INSERT INTO `yershop_module` VALUES ('78', '用户列表', '77', '0', 'ucenter/index', '16', '', '1');
INSERT INTO `yershop_module` VALUES ('79', '广告管理', '148', '0', 'ad/index', '19', '', '1');
INSERT INTO `yershop_module` VALUES ('152', '增加', '151', '0', 'specs/add', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('81', '删除', '3', '0', 'module/del', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('82', '增加', '68', '0', 'config/add', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('83', '编辑', '68', '0', 'config/edit', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('84', '删除', '68', '0', 'config/del', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('85', '增加', '73', '0', 'group/add', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('86', '编辑', '73', '0', 'group/edit', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('87', '删除', '73', '0', 'group/del', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('88', '增加', '79', '0', 'ad/add', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('89', '编辑', '79', '0', 'ad/edit', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('90', '删除', '79', '0', 'ad/del', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('91', '增加', '7', '0', 'category/add', '3', '', '1');
INSERT INTO `yershop_module` VALUES ('92', '编辑', '7', '0', 'category/edit', '3', '', '1');
INSERT INTO `yershop_module` VALUES ('93', '删除', '7', '0', 'category/del', '3', '', '1');
INSERT INTO `yershop_module` VALUES ('94', '增加', '14', '0', 'attributes/add', '3', '', '1');
INSERT INTO `yershop_module` VALUES ('95', '编辑', '14', '0', 'attributes/edit', '3', '', '1');
INSERT INTO `yershop_module` VALUES ('96', '删除', '14', '0', 'attributes/del', '3', '', '1');
INSERT INTO `yershop_module` VALUES ('97', '增加', '18', '0', 'types/add', '3', '', '1');
INSERT INTO `yershop_module` VALUES ('98', '编辑', '18', '0', '	types/edit', '3', '', '1');
INSERT INTO `yershop_module` VALUES ('99', '删除', '18', '0', '	types/del', '3', '', '1');
INSERT INTO `yershop_module` VALUES ('154', '删除', '151', '0', 'specs/del', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('153', '编辑', '151', '0', 'specs/edit', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('102', '增加', '71', '0', 'goods/add', '3', '', '1');
INSERT INTO `yershop_module` VALUES ('103', '创建sku', '71', '0', 'goods/add_stock', '3', '', '1');
INSERT INTO `yershop_module` VALUES ('104', '更新sku', '71', '0', 'goods/update_stock', '3', '', '1');
INSERT INTO `yershop_module` VALUES ('105', '增加排列组合', '71', '0', 'goods/ addsu', '3', '', '1');
INSERT INTO `yershop_module` VALUES ('106', '更新排列组合', '71', '0', 'goods/updatesu', '3', '', '1');
INSERT INTO `yershop_module` VALUES ('107', '获取规格属性', '71', '0', 'goods/getalltypes', '3', '', '1');
INSERT INTO `yershop_module` VALUES ('108', '编辑', '71', '0', 'goods/edit', '3', '', '1');
INSERT INTO `yershop_module` VALUES ('109', '切换分类', '71', '0', 'goods/change', '3', '', '1');
INSERT INTO `yershop_module` VALUES ('110', '删除', '71', '0', 'goods/del', '3', '', '1');
INSERT INTO `yershop_module` VALUES ('111', '增加', '72', '0', 'sku/add', '3', '', '1');
INSERT INTO `yershop_module` VALUES ('112', '编辑', '72', '0', 'sku/edit', '3', '', '1');
INSERT INTO `yershop_module` VALUES ('113', '删除', '72', '0', 'sku/del', '3', '', '1');
INSERT INTO `yershop_module` VALUES ('114', '增加', '16', '0', 'order/add', '15', '', '1');
INSERT INTO `yershop_module` VALUES ('115', '编辑', '16', '0', 'order/edit', '15', '', '1');
INSERT INTO `yershop_module` VALUES ('116', '导出订单', '16', '0', 'order/out', '15', '', '1');
INSERT INTO `yershop_module` VALUES ('117', '删除', '16', '0', 'order/del', '15', '', '1');
INSERT INTO `yershop_module` VALUES ('118', '增加', '21', '0', 'drawback/add', '15', '', '1');
INSERT INTO `yershop_module` VALUES ('119', '编辑', '21', '0', 'drawback/edit', '15', '', '1');
INSERT INTO `yershop_module` VALUES ('120', '删除', '21', '0', 'drawback/del', '15', '', '1');
INSERT INTO `yershop_module` VALUES ('121', '增加', '22', '0', 'pay/add', '15', '', '1');
INSERT INTO `yershop_module` VALUES ('122', '编辑', '22', '0', 'pay/edit', '15', '', '1');
INSERT INTO `yershop_module` VALUES ('123', '删除', '22', '0', 'rank/del', '15', '', '1');
INSERT INTO `yershop_module` VALUES ('142', '幻灯片管理', '148', '0', 'slide/index', '19', '', '1');
INSERT INTO `yershop_module` VALUES ('144', '编辑', '142', '0', 'slide/edit', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('145', '删除', '142', '0', 'slide/del', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('146', '切换分类', '142', '0', 'slide/change', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('147', '导航管理', '1', '0', 'channel/index', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('148', '图片管理', '0', '0', '', '19', '', '1');
INSERT INTO `yershop_module` VALUES ('149', '资源管理', '148', '0', 'picture/index', '19', '', '1');
INSERT INTO `yershop_module` VALUES ('150', '地区管理', '40', '0', 'area/index', '20', '', '1');
INSERT INTO `yershop_module` VALUES ('155', '增加', '147', '0', 'channel/add', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('156', '编辑', '147', '0', 'channel/edit', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('157', '删除', '147', '0', 'channel/del', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('158', '评价管理', '41', '0', 'comment/index', '15', '', '1');
INSERT INTO `yershop_module` VALUES ('159', '增加', '158', '0', 'comment/add', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('160', '编辑', '158', '0', 'comment/edit', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('161', '删除', '158', '0', 'comment/del', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('162', '商品品牌', '40', '0', 'brand/index', '20', '', '1');
INSERT INTO `yershop_module` VALUES ('163', '增加', '162', '0', 'brand/add', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('164', '编辑', '162', '0', 'brand/edit', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('165', '删除', '162', '0', 'brand/del', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('166', '售后管理', '0', '0', '', '15', '', '1');
INSERT INTO `yershop_module` VALUES ('167', '用户行为', '0', '0', '', '16', '', '1');
INSERT INTO `yershop_module` VALUES ('168', '操作日志', '167', '0', 'log/index', '16', '', '1');
INSERT INTO `yershop_module` VALUES ('169', '增加', '168', '0', 'log/add', '16', '', '1');
INSERT INTO `yershop_module` VALUES ('170', '编辑', '168', '0', 'log/edit', '16', '', '1');
INSERT INTO `yershop_module` VALUES ('171', '删除', '168', '0', 'log/del', '16', '', '1');
INSERT INTO `yershop_module` VALUES ('173', '快递管理', '41', '0', 'Express/index', '15', '', '1');
INSERT INTO `yershop_module` VALUES ('174', '销售记录', '41', '0', 'sales/index', '15', '', '1');
INSERT INTO `yershop_module` VALUES ('175', '代码生成器', '176', '0', 'Code/index', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('176', '快捷工具', '0', '0', '', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('177', 'Sql执行', '176', '0', 'Sql/index', '1', '', '1');
INSERT INTO `yershop_module` VALUES ('178', '新增', '172', '0', 'goods/add', '20', '', '1');

-- ----------------------------
-- Table structure for yershop_order
-- ----------------------------
DROP TABLE IF EXISTS `yershop_order`;
CREATE TABLE `yershop_order` (
  `id` int(225) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `order_sn` varchar(225) DEFAULT NULL,
  `total_money` decimal(50,2) NOT NULL DEFAULT '0.00',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0-系统生成完成1-用户已提交订单2-3系统处理进入物流配送',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `ship_price` decimal(50,2) NOT NULL DEFAULT '0.00',
  `ispay` tinyint(2) NOT NULL DEFAULT '0' COMMENT '1在线支付未完成2在线支付完成3-货到付款',
  `total` decimal(50,2) NOT NULL DEFAULT '0.00',
  `express` varchar(225) DEFAULT NULL COMMENT '是否默认地址',
  `address_id` int(10) unsigned NOT NULL DEFAULT '0',
  `shipway` varchar(225) DEFAULT NULL COMMENT '送货方式',
  `invoice_header` varchar(225) DEFAULT NULL COMMENT '发票抬头',
  `message` varchar(225) DEFAULT NULL COMMENT '留言',
  `score` int(10) unsigned NOT NULL DEFAULT '0',
  `coupon` varchar(225) DEFAULT NULL,
  `score_money` decimal(50,2) NOT NULL DEFAULT '0.00',
  `username` varchar(225) DEFAULT NULL,
  `mobile` varchar(225) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `express_code` varchar(225) DEFAULT NULL,
  `arrive_time` decimal(50,2) DEFAULT '0.00',
  `isdao` int(10) NOT NULL DEFAULT '0',
  `saleslist` text NOT NULL,
  `invoice_content` varchar(225) DEFAULT NULL COMMENT '发票内容',
  `invoice_type` varchar(225) DEFAULT NULL,
  `is_invoice` varchar(225) DEFAULT NULL,
  `is_mobile` tinyint(2) NOT NULL DEFAULT '0',
  `type` tinyint(2) DEFAULT '0',
  `paytype` int(2) NOT NULL DEFAULT '0',
  `send_time` int(10) NOT NULL DEFAULT '0',
  `confirm_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of yershop_order
-- ----------------------------
INSERT INTO `yershop_order` VALUES ('13', '2017121915136450071', '43964.00', '1513645007', '0', '0', '1', '0.00', '0', '43964.00', null, '0', null, null, null, '0', null, '0.00', null, null, null, null, '0.00', '0', '阿迪达斯长裤男 2017秋季新款运动裤针织跑步休闲小脚裤子BS2884 &nbsp;红色&nbsp;x 数量1 单价124.00 小计124</br>HP/惠普 暗影精灵 光影精灵3代游戏本 暗夜精灵2Pro笔记本电脑 i7  &nbsp;黑&nbsp;官方标配&nbsp;1g 数量8 单价5465.00 小计43720</br>OPPO耳机原装正品OPPO MH133 R9s R11 A57 R7 R9耳机入耳式耳塞式 &nbsp; 数量3 单价40 小计120</br>', null, null, null, '0', '0', '0', '0', '0');
INSERT INTO `yershop_order` VALUES ('12', '2017121715134932391', '599383.00', '1513493239', '0', '0', '1', '0.00', '0', '599383.00', null, '0', null, null, null, '0', null, '0.00', null, null, null, null, '0.00', '0', 'HP/惠普 暗影精灵 光影精灵3代游戏本 暗夜精灵2Pro笔记本电脑 i7  &nbsp;黑&nbsp;官方标配&nbsp;1g 数量95 单价5465 小计519175</br>阿迪达斯长裤男 2017秋季新款运动裤针织跑步休闲小脚裤子BS2884 &nbsp;红色&nbsp;x 数量1 单价124.00 小计124</br>耐夫刀具套装厨房组合全套不锈钢德国菜刀套装家用厨具水果刀套刀 &nbsp; 数量2 单价34554.00 小计69108</br>【低至5488元】Apple/苹果iPhone 8 Plus 64G全网通手机苹果8 &nbsp;2G&nbsp;16G 数量2 单价5488.00 小计10976</br>', null, null, null, '0', '0', '0', '0', '0');
INSERT INTO `yershop_order` VALUES ('11', '2017121415132420691', '13579.00', '1513242069', '1', '1513242076', '1', '0.00', '1', '13579.00', null, '42', null, '个人', '', '0', null, '0.00', '54', '456546', '山东德州市德城区4564', null, '0.00', '0', '美的（Midea）M3-L253C 智能微波炉 光波烧烤 &nbsp; 数量1 单价599.00 小计599</br>Xiaomi/小米 小米手机Note3 6GB+64GB 亮黑色 双摄智能拍照手机 &nbsp; 数量4 单价3245 小计12980</br>', '明细', '普通发票', '是', '0', '0', '5', '0', '0');
INSERT INTO `yershop_order` VALUES ('8', '2017121415132416101', '5332.00', '1513241610', '1', '1513241615', '1', '0.00', '1', '5332.00', null, '42', null, '个人', '', '0', null, '0.00', '54', '456546', '山东德州市德城区4564', null, '0.00', '0', '阿迪达斯长裤男 2017秋季新款运动裤针织跑步休闲小脚裤子BS2884 &nbsp;红色&nbsp;x 数量43 单价124 小计5332</br>', '明细', '普通发票', '是', '0', '0', '5', '0', '0');
INSERT INTO `yershop_order` VALUES ('9', '2017121415132417841', '5332.00', '1513241784', '1', '1513241789', '1', '0.00', '1', '5332.00', null, '42', null, '个人', '', '0', null, '0.00', '54', '456546', '山东德州市德城区4564', null, '0.00', '0', '阿迪达斯长裤男 2017秋季新款运动裤针织跑步休闲小脚裤子BS2884 &nbsp;红色&nbsp;x 数量43 单价124 小计5332</br>', '明细', '普通发票', '是', '0', '0', '5', '0', '0');
INSERT INTO `yershop_order` VALUES ('10', '2017121415132420231', '528.00', '1513242023', '0', '0', '1', '0.00', '0', '528.00', null, '0', null, null, null, '0', null, '0.00', null, null, null, null, '0.00', '0', '伊利 安慕希 205g*16盒 原味 常温酸奶 12盒+4盒 &nbsp;1kg&nbsp;优惠套装1 数量44 单价12 小计528</br>', null, null, null, '0', '0', '0', '0', '0');
INSERT INTO `yershop_order` VALUES ('25', '2018032315217631001', '348064.00', '1521763100', '0', '0', '1', '0.00', '0', '348064.00', null, '0', null, null, null, '0', null, '0.00', null, null, null, null, '0.00', '0', '阿迪达斯长裤男 2017秋季新款运动裤针织跑步休闲小脚裤子BS2884 &nbsp;红色&nbsp;x 数量12 单价124.00 小计1488</br>耐夫刀具套装厨房组合全套不锈钢德国菜刀套装家用厨具水果刀套刀 &nbsp; 数量6 单价34554.00 小计207324</br>德芙巧克力礼盒 香浓黑巧252g碗装 新老包装随机发货 &nbsp; 数量7 单价34 小计238</br>HP/惠普 暗影精灵 光影精灵3代游戏本 暗夜精灵2Pro笔记本电脑 i7  &nbsp;黑&nbsp;官方标配&nbsp;1g 数量25 单价5465.00 小计136625</br>澳大利亚进口 德亚全脂牛奶（澳洲甄选）250ml*24/箱 &nbsp;1kg&nbsp;优惠套装1 数量1 单价23.00 小计23</br>陕西精品红富士1kg 80-85mm 苹果 水果 &nbsp; 数量1 单价24.00 小计24</br>Apple iPad mini 4 7.9英寸 平板电脑（128GB WLAN版 MK9P2CH A 银色 &nbsp; 数量1 单价2342.00 小计2342</br>', null, null, null, '0', '0', '0', '0', '0');
INSERT INTO `yershop_order` VALUES ('26', '2018032315217631181', '2342.00', '1521763118', '0', '0', '1', '0.00', '0', '2342.00', null, '0', null, null, null, '0', null, '0.00', null, null, null, null, '0.00', '0', 'Apple iPad mini 4 7.9英寸 平板电脑（128GB WLAN版 MK9P2CH A 银色 &nbsp; 数量1 单价2342.00 小计2342</br>', null, null, null, '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for yershop_pay
-- ----------------------------
DROP TABLE IF EXISTS `yershop_pay`;
CREATE TABLE `yershop_pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `out_trade_no` varchar(225) DEFAULT NULL,
  `total_money` decimal(50,2) NOT NULL DEFAULT '0.00' COMMENT '优惠后的总金额',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '数据状态',
  `paytype` int(10) NOT NULL DEFAULT '0' COMMENT '付款类型1-货到付款2-在线支付',
  `uid` int(10) NOT NULL DEFAULT '0',
  `partnerid` int(10) NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `model` varchar(225) DEFAULT NULL,
  `trade_no` varchar(225) DEFAULT NULL,
  `trade_status` varchar(225) DEFAULT NULL,
  `remark` varchar(225) DEFAULT NULL,
  `order_id` int(10) NOT NULL DEFAULT '0',
  `type` tinyint(2) NOT NULL DEFAULT '1',
  `score` int(10) NOT NULL DEFAULT '0',
  `score_money` decimal(50,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='在线支付表';

-- ----------------------------
-- Records of yershop_pay
-- ----------------------------

-- ----------------------------
-- Table structure for yershop_picture
-- ----------------------------
DROP TABLE IF EXISTS `yershop_picture`;
CREATE TABLE `yershop_picture` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id自增',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '路径',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '图片链接',
  `md5` char(32) NOT NULL DEFAULT '' COMMENT '文件md5',
  `sha1` char(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=393 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yershop_picture
-- ----------------------------
INSERT INTO `yershop_picture` VALUES ('1', '/Uploads/Picture/2014-09-02/5405e0f3b1705.png', '', '36d077267c76901835c07eb98f43647f', '0f7ce26261cb7a81dcfb14e057982ec60fa3a6e0', '1', '1409671411');
INSERT INTO `yershop_picture` VALUES ('118', '/Uploads/Picture/2015-09-18/55faf2ac353a5.png', '', '02273f1c88dd109270b8658aaa50adb7', '03072f5a6ad8edebed49f2a2aaab0946fee911dc', '1', '1442509483');
INSERT INTO `yershop_picture` VALUES ('119', '/Uploads/Picture/2015-09-18/55faf2b05d1f7.jpg', '', 'f19560a9dce4d5856f8bd94ec4f94f7c', 'df47fefa04680b0f94333f73538369ac1a02a705', '1', '1442509488');
INSERT INTO `yershop_picture` VALUES ('120', '/Uploads/Picture/2015-09-18/55fbea25cce43.png', '', 'db6d75524ce0adbe0aa392e89db2c967', 'd5c00b55590a673c72f32bfef5f248eea2541b48', '1', '1442572836');
INSERT INTO `yershop_picture` VALUES ('121', '/Uploads/Picture/2015-09-18/55fbed7b89833.jpg', '', '85e8b28767fb07b93c2f0325c885890d', '680153590e2abd8b0751758b0b10fe488d8a132a', '1', '1442573691');
INSERT INTO `yershop_picture` VALUES ('122', '/Uploads/Picture/2015-09-18/55fbfa12f0583.jpg', '', '165a1f4c326e02c467e56017eb31341e', 'a41ebd344dc020cd14d49b45d48b05c0b5a014ae', '1', '1442576914');
INSERT INTO `yershop_picture` VALUES ('123', '/Uploads/Picture/2015-09-18/55fbfb43e5845.jpg', '', '75e3a97a6bf974893c19b188d5952eca', '192bffee7bcb4ff8682a4ebf0bc97cf6f1cfcdc4', '1', '1442577219');
INSERT INTO `yershop_picture` VALUES ('124', '/Uploads/Picture/2015-09-18/55fbfba4b5a30.jpg', '', '29e0e481e4642156586f85de4a56f241', '077944d495a9e2a9106ae86a4bed7b36a3200183', '1', '1442577316');
INSERT INTO `yershop_picture` VALUES ('125', '/Uploads/Picture/2015-09-18/55fbfbd2a1254.png', '', 'ce4df64ea0cf6ea03b1814ba39c9ac14', 'd4ac154920c0c2ec9bc37735066a38baf9b35042', '1', '1442577362');
INSERT INTO `yershop_picture` VALUES ('126', '/Uploads/Picture/2015-09-18/55fbfbfea4cec.jpg', '', '5750a2e4be1eabb48c387c1701285c19', 'bc2fad2962e2ed53ef9c7fd1d54ea2f183e3744b', '1', '1442577406');
INSERT INTO `yershop_picture` VALUES ('127', '/Uploads/Picture/2015-09-18/55fbfca553025.jpg', '', 'e5897ab5d0968219417382de088c9b51', 'fe762a96ec7b66522a573397aef54dfac790efb4', '1', '1442577572');
INSERT INTO `yershop_picture` VALUES ('128', '/Uploads/Picture/2015-09-18/55fbfefe3b46c.jpg', '', '9d63a525c72228392bc9995a2dccb804', '1128a13c77f928305aa74250c73849e0fdb66baa', '1', '1442578173');
INSERT INTO `yershop_picture` VALUES ('129', '/Uploads/Picture/2015-09-18/55fc06d81d259.png', '', 'c74ead772a7ef411298074a2cfda3b00', 'f81103f81942d48c7a08da5a7b902ae73c0d032f', '1', '1442580183');
INSERT INTO `yershop_picture` VALUES ('130', '/Uploads/Picture/2015-09-18/55fc0db08a573.png', '', '74e827839f9878de5ee040f501d44e24', '64da8dfcdeb5c91f21ef8c8d4e28e16c0988ec99', '1', '1442581936');
INSERT INTO `yershop_picture` VALUES ('131', '/Uploads/Picture/2015-09-18/55fc14f557c2b.jpg', '', 'febb770b7148c2554c89dc8f2aad47ef', '58e1fff98127903f37d0034ad4bfb89e1b24220b', '1', '1442583797');
INSERT INTO `yershop_picture` VALUES ('132', '/Uploads/Picture/2015-09-18/55fc25884bc20.jpg', '', '7ffeea044ed576b6c399aea469013995', '2491a13692bffc0ba29dcac65d0a51cb81870ec3', '1', '1442588039');
INSERT INTO `yershop_picture` VALUES ('133', '/Uploads/Picture/2015-09-18/55fc268046052.jpg', '', '2c2884ec3ad9671595f2c8ba7ec83e61', '208e93d8b664ad2c6cb0ed6613b85cb17d15735c', '1', '1442588287');
INSERT INTO `yershop_picture` VALUES ('134', '/Uploads/Picture/2015-09-18/55fc26c302c6c.jpg', '', 'cd8289f0b5e2cce081e64cf728a3dad9', '77359403d19d2d7758a38816ffc25e92de6f5071', '1', '1442588354');
INSERT INTO `yershop_picture` VALUES ('135', '/Uploads/Picture/2015-09-19/55fd2ce92c34a.png', '', 'beee2b89375a6b029a82fa8ca5ba6a07', '96f52b0bdb148e5bc82c9a195a36a7592784ae7c', '1', '1442655464');
INSERT INTO `yershop_picture` VALUES ('136', '/Uploads/Picture/2015-09-19/55fd2d31abbfb.png', '', '54529b60a5b44ae3551a316c51c5c732', 'a9b4dd9e304d61b8b0af4eed2204899b360d3958', '1', '1442655537');
INSERT INTO `yershop_picture` VALUES ('137', '/Uploads/Picture/2015-09-19/55fd2d7a24d4d.jpg', '', '8258766e1b790fb7c1fe5a2a9caa65d0', 'd6ded094cff01419050eeb23c39ce85812bf2ce8', '1', '1442655609');
INSERT INTO `yershop_picture` VALUES ('138', '/Uploads/Picture/2015-09-19/55fd2da7b3e38.jpg', '', 'fc9680b79fdb0a6b4cef1973f2b3e975', '9ea0bdb5c85eb2bbf31a2ea68f40b11b1e1e9363', '1', '1442655655');
INSERT INTO `yershop_picture` VALUES ('139', '/Uploads/Picture/2015-09-19/55fd2e824761b.png', '', '460076b755fda8aeab55b154d878eb2b', 'e06d5861fa44e30f3f74f912bf43b45039a4c9a1', '1', '1442655873');
INSERT INTO `yershop_picture` VALUES ('140', '/Uploads/Picture/2015-09-19/55fd2ea40f9eb.jpg', '', 'd82b42da9052d7d0c9941607966bd68b', '89e4ce2c36bcd3fb0ba08675d6193ef49a7018cc', '1', '1442655907');
INSERT INTO `yershop_picture` VALUES ('141', '/Uploads/Picture/2015-09-19/55fd2ed346ca2.jpg', '', '325a5b1e756187740de7876ee8217624', 'edb5db598f9e88235113d1238d882572b01b99fc', '1', '1442655954');
INSERT INTO `yershop_picture` VALUES ('142', '/Uploads/Picture/2015-09-19/55fd2f09a9c17.png', '', 'a0be05f9d4637a9369f21ec2a350a3d8', '05428eced8ae43f41d59a3ed1d616473a1c35e39', '1', '1442656009');
INSERT INTO `yershop_picture` VALUES ('143', '/Uploads/Picture/2015-09-19/55fd2f35c4d1b.png', '', 'cb5e8cc8a5e7835b1ce44cfe070c10d7', '3ba85af092c0a04b70fe5625f7bae675158c3fc2', '1', '1442656047');
INSERT INTO `yershop_picture` VALUES ('144', '/Uploads/Picture/2015-09-19/55fd2f63de016.jpg', '', '46b06af357db9e001e210da953943cad', '69310227d7099372e31924f6d0405489e52eb492', '1', '1442656099');
INSERT INTO `yershop_picture` VALUES ('145', '/Uploads/Picture/2015-09-19/55fd30a01fb76.png', '', 'e18a8be03a63aaf98309caeebcbb3ff6', '7143023f23da57142f4b2129201d65d06a0320ed', '1', '1442656415');
INSERT INTO `yershop_picture` VALUES ('146', '/Uploads/Picture/2015-09-19/55fd3107afdb4.png', '', '5f0924eb289d82e72956f98d5782cf34', 'b64e99156213aba7cec70a52796cac7c535aaf46', '1', '1442656519');
INSERT INTO `yershop_picture` VALUES ('147', '/Uploads/Picture/2015-09-21/55fef291d180a.jpg', '', '6bfa43f557fd45417a7332a1c76b9d0c', '4f5fc0d9bb35b82c7ed3524eb94cb00b9f0efb80', '1', '1442771601');
INSERT INTO `yershop_picture` VALUES ('148', '/Uploads/Picture/2015-09-21/55ff9daf421da.jpg', '', '8aa0ca20041c70a3a7ed52439ad17e87', '2104acbddfb7896074262f06629cd531eb051f44', '1', '1442815398');
INSERT INTO `yershop_picture` VALUES ('149', '/Uploads/Picture/2015-10-01/560c353d68810.jpg', '', 'd368c2e6e97c5ef8d3c5a28f9ff86272', '2ea38906b4184f9f3040ae2ca4e46ec057aac4a1', '1', '1443640636');
INSERT INTO `yershop_picture` VALUES ('150', '/Uploads/Picture/2015-10-01/560c36d681ed7.png', '', '89f9dc5aba8d7c17e33b54f8820113c8', '6d16bcd39d6af6cbca714833dd003ade7753f196', '1', '1443641046');
INSERT INTO `yershop_picture` VALUES ('151', '/Uploads/Picture/2015-10-01/560c398857058.jpg', '', 'cf14018177659b6cebc315af384e557d', '0bc0eccb7a8c0e41ec199adf74f42ca29b9426f2', '1', '1443641735');
INSERT INTO `yershop_picture` VALUES ('152', '/Uploads/Picture/2015-10-01/560c482057eb2.jpg', '', '0b79878d6e22f05624dc67c924a1403f', '4001e0b6b42b7e643dce002ec5825a22322e1518', '1', '1443645472');
INSERT INTO `yershop_picture` VALUES ('153', '/Uploads/Picture/2015-10-01/560c497ba8fab.jpg', '', '3cb499f3f19b59a4f764f854ffda13fd', 'a9c334d0aa35040fbb6eb5c87055557cd22f3899', '1', '1443645819');
INSERT INTO `yershop_picture` VALUES ('154', '/Uploads/Picture/2015-10-01/560c4c6a574dd.jpg', '', 'dbaa89d809c1f11a6be878a901cc6ef3', 'ee8a749b0cfe74f315710d08293499c104ccebc6', '1', '1443646570');
INSERT INTO `yershop_picture` VALUES ('155', '/Uploads/Picture/2015-10-01/560c4fbe38b7e.jpg', '', '3f6be98ec909bd442df7f3bdec87837d', '2febfa649830eaa2347dc78f3dcb3fc9f1ab0b31', '1', '1443647422');
INSERT INTO `yershop_picture` VALUES ('156', '/Uploads/Picture/2017-03-18/1489833130.jpg', '', '', '', '1', '1489833130');
INSERT INTO `yershop_picture` VALUES ('157', '/Uploads/Picture/2017-03-18/1489833193.jpg', '', '', '', '1', '1489833193');
INSERT INTO `yershop_picture` VALUES ('158', '/Uploads/Picture/2017-03-18/1489833237.jpg', '', '', '', '1', '1489833237');
INSERT INTO `yershop_picture` VALUES ('159', '/Uploads/Picture/2017-04-10/58ea728da93d6.jpg', '', 'fbe492e4129c37da9108def74891ffd3', '', '0', '0');
INSERT INTO `yershop_picture` VALUES ('160', '/Uploads/Picture/2017-04-10/58ea72ad6b7b5.jpg', '', 'e772bdc47334739991c6e0ed7b883044', '', '0', '0');
INSERT INTO `yershop_picture` VALUES ('161', '/Uploads/Picture/2017-04-10/58ea7344ba5bb.jpg', '', 'e772bdc47334739991c6e0ed7b883044', '', '0', '0');
INSERT INTO `yershop_picture` VALUES ('162', '/Uploads/Picture/2017-04-10/58ea7373323c6.jpg', '', 'e772bdc47334739991c6e0ed7b883044', '', '0', '0');
INSERT INTO `yershop_picture` VALUES ('163', '/Uploads/Picture/2017-04-10/58ea739e5b426.jpg', '', 'e772bdc47334739991c6e0ed7b883044', '', '0', '0');
INSERT INTO `yershop_picture` VALUES ('164', '/Uploads/Picture/2017-04-10/58ea741c3c765.jpg', '', '3f2f102f8b1de130101378eb6e6f523c', '', '0', '0');
INSERT INTO `yershop_picture` VALUES ('165', '/Uploads/Picture/2017-04-10/58ea74c57144b.png', '', 'a9e8476c71652114c1a8485948bc2eb3', '', '0', '0');
INSERT INTO `yershop_picture` VALUES ('166', '/Uploads/Picture/2017-04-10/58ea750990423.jpg', '', '60be787ff19aacedca764129855f883d', '', '0', '0');
INSERT INTO `yershop_picture` VALUES ('167', '/Uploads/Picture/2017-04-10/58ea755252f92.jpg', '', 'e772bdc47334739991c6e0ed7b883044', '', '0', '0');
INSERT INTO `yershop_picture` VALUES ('168', '/Uploads/Picture/2017-04-10/58ea75e593ffa.png', '', 'a9e8476c71652114c1a8485948bc2eb3', '', '0', '0');
INSERT INTO `yershop_picture` VALUES ('169', '/Uploads/Picture/2017-04-10/58ea76457e34b.jpg', '', 'e772bdc47334739991c6e0ed7b883044', '', '0', '0');
INSERT INTO `yershop_picture` VALUES ('170', '/Uploads/Picture/2017-04-10/58ea76f647856.jpg', '', 'e772bdc47334739991c6e0ed7b883044', '', '0', '0');
INSERT INTO `yershop_picture` VALUES ('171', '/Uploads/Picture/2017-04-10/58ea77613b2e9.jpg', '', 'e772bdc47334739991c6e0ed7b883044', '', '0', '0');
INSERT INTO `yershop_picture` VALUES ('172', '/Uploads/Picture/2017-04-10/58ea7889a445b.jpg', '', 'e772bdc47334739991c6e0ed7b883044', '', '0', '0');
INSERT INTO `yershop_picture` VALUES ('173', '/Uploads/Picture/2017-04-10/58ea78f890081.png', '', 'a9e8476c71652114c1a8485948bc2eb3', '', '0', '0');
INSERT INTO `yershop_picture` VALUES ('174', '/Uploads/Picture/2017-04-10/58ea7bf470e88.jpg', '', 'e772bdc47334739991c6e0ed7b883044', '', '0', '0');
INSERT INTO `yershop_picture` VALUES ('175', '/Uploads/Picture/2017-04-27/59015a64a416f.png', '', 'aad4be71840752d8dbbc39e74c9acaef', '1533a5279b892edc075dd6413c7aa08ad2cd2978', '0', '1493260900');
INSERT INTO `yershop_picture` VALUES ('176', '/Uploads/Picture/2017-04-27/59015ab2ae242.png', '', '3c15c452b0634481b5ed31ece7fe8476', 'b941e181d8ac55a3229f9606f6b5589444bee74c', '0', '1493260978');
INSERT INTO `yershop_picture` VALUES ('177', '/Uploads/Picture/2017-04-27/59015ade4a915.jpg', '', '8258766e1b790fb7c1fe5a2a9caa65d0', 'd6ded094cff01419050eeb23c39ce85812bf2ce8', '0', '1493261022');
INSERT INTO `yershop_picture` VALUES ('178', '/Uploads/Picture/2017-04-27/59015b313731d.jpg', '', '8258766e1b790fb7c1fe5a2a9caa65d0', 'd6ded094cff01419050eeb23c39ce85812bf2ce8', '0', '1493261105');
INSERT INTO `yershop_picture` VALUES ('179', '/Uploads/Picture/2017-04-27/59015c4f2bbc7.png', '', 'e0f4a9ff4018d01a8ea9f372405426e7', 'e05fa3c0980421692ac72d712deb92e6f84b026a', '0', '1493261391');
INSERT INTO `yershop_picture` VALUES ('180', '/Uploads/Picture/2017-04-27/59015d2658d3a.jpg', '', '29e0e481e4642156586f85de4a56f241', '077944d495a9e2a9106ae86a4bed7b36a3200183', '0', '1493261606');
INSERT INTO `yershop_picture` VALUES ('181', '/uploads/Picture/2017-04-27/590160abd4107.png', '', 'f7946d29cd2293bcef37768578592624', '4907c286571625da4bc04eb817513425a1eff329', '0', '1493262507');
INSERT INTO `yershop_picture` VALUES ('182', '/uploads/Picture/2017-04-27/5901af9262172.jpg', '', 'd82b42da9052d7d0c9941607966bd68b', '89e4ce2c36bcd3fb0ba08675d6193ef49a7018cc', '0', '1493282706');
INSERT INTO `yershop_picture` VALUES ('183', '/uploads/Picture/2017-04-27/5901afa1842a0.png', '', 'f7946d29cd2293bcef37768578592624', '4907c286571625da4bc04eb817513425a1eff329', '0', '1493282721');
INSERT INTO `yershop_picture` VALUES ('184', '/uploads/Picture/2017-04-27/5901b05425217.png', '', 'f7946d29cd2293bcef37768578592624', '4907c286571625da4bc04eb817513425a1eff329', '0', '1493282900');
INSERT INTO `yershop_picture` VALUES ('185', '/uploads/Picture/2017-04-27/5901b0cc729e2.png', '', 'f7946d29cd2293bcef37768578592624', '4907c286571625da4bc04eb817513425a1eff329', '0', '1493283020');
INSERT INTO `yershop_picture` VALUES ('186', '/uploads/Picture/2017-04-27/5901b3c6051cc.jpg', '', '59895df03becec239632a8fa0c36b8d3', '90e3e6767eb9e6fa375fe4c0f6fc3fd62e4e5fc4', '0', '1493283782');
INSERT INTO `yershop_picture` VALUES ('187', '/uploads/Picture/2017-06-03/593246bab5b4e.jpg', '', 'df18e2fba1ea9d775b62898993896f09', 'ea848e85275b794cddedac4605e1da14ab3fa980', '0', '1496467130');
INSERT INTO `yershop_picture` VALUES ('188', '/uploads/Picture/2017-06-03/593246f20b365.png', '', '3db4a9c86c87941e35f64bada2989012', 'a2d9fd4a194ba1867f73aeb9e3e298e3844f1328', '0', '1496467186');
INSERT INTO `yershop_picture` VALUES ('189', '/uploads/Picture/2017-06-03/59324718d315d.jpg', '', '12f46a2077e8613d9b7e0bd707f9e281', 'f7865b97e36f4c7e0a46a6ccc82ad3f0cc5a1006', '0', '1496467224');
INSERT INTO `yershop_picture` VALUES ('190', '/uploads/Picture/2017-06-03/5932473a94475.png', '', 'dba4ab759283ce84a2f3db1c38a0251a', '0c58990f7e2dd14d866d8aa71acd3ad8cca2a3cb', '0', '1496467258');
INSERT INTO `yershop_picture` VALUES ('191', '/uploads/Picture/2017-06-03/59324765b3951.png', '', 'dba4ab759283ce84a2f3db1c38a0251a', '0c58990f7e2dd14d866d8aa71acd3ad8cca2a3cb', '0', '1496467301');
INSERT INTO `yershop_picture` VALUES ('192', '/uploads/Picture/2017-06-03/5932476f2b323.jpg', '', '92ebda32af67ee222a8761c039235f16', 'ad41c51ed019bbb7c5d1b341025098c0e82d2fab', '0', '1496467311');
INSERT INTO `yershop_picture` VALUES ('193', '/uploads/Picture/2017-06-03/593247cf5672d.jpg', '', '12f46a2077e8613d9b7e0bd707f9e281', 'f7865b97e36f4c7e0a46a6ccc82ad3f0cc5a1006', '0', '1496467407');
INSERT INTO `yershop_picture` VALUES ('194', '/uploads/Picture/2017-06-03/593247d5aff74.png', '', 'a658f9e720b91e0ea69d99b978bed497', '8e8a697972a17ceebc85367230c4516eac977dc9', '0', '1496467413');
INSERT INTO `yershop_picture` VALUES ('195', '/uploads/Picture/2017-06-03/5932481da3fc0.jpg', '', 'df18e2fba1ea9d775b62898993896f09', 'ea848e85275b794cddedac4605e1da14ab3fa980', '0', '1496467485');
INSERT INTO `yershop_picture` VALUES ('196', '/uploads/Picture/2017-06-03/593248237106d.jpg', '', '92ebda32af67ee222a8761c039235f16', 'ad41c51ed019bbb7c5d1b341025098c0e82d2fab', '0', '1496467491');
INSERT INTO `yershop_picture` VALUES ('197', '/uploads/Picture/2017-06-03/593251449e0b3.jpg', '', '12f46a2077e8613d9b7e0bd707f9e281', 'f7865b97e36f4c7e0a46a6ccc82ad3f0cc5a1006', '0', '1496469828');
INSERT INTO `yershop_picture` VALUES ('198', '/uploads/Picture/2017-06-03/5932514c5e670.png', '', '3db4a9c86c87941e35f64bada2989012', 'a2d9fd4a194ba1867f73aeb9e3e298e3844f1328', '0', '1496469836');
INSERT INTO `yershop_picture` VALUES ('199', '/uploads/Picture/2017-06-03/593252a70d3ca.jpg', '', '92ebda32af67ee222a8761c039235f16', 'ad41c51ed019bbb7c5d1b341025098c0e82d2fab', '0', '1496470183');
INSERT INTO `yershop_picture` VALUES ('200', '/uploads/Picture/2017-06-03/593252ab19939.jpg', '', 'df18e2fba1ea9d775b62898993896f09', 'ea848e85275b794cddedac4605e1da14ab3fa980', '0', '1496470187');
INSERT INTO `yershop_picture` VALUES ('201', '/uploads/Picture/2017-06-04/59339aaf30f7e.jpg', '', 'df18e2fba1ea9d775b62898993896f09', 'ea848e85275b794cddedac4605e1da14ab3fa980', '0', '1496554159');
INSERT INTO `yershop_picture` VALUES ('202', '/uploads/Picture/2017-06-04/59339ab4443fe.png', '', '3db4a9c86c87941e35f64bada2989012', 'a2d9fd4a194ba1867f73aeb9e3e298e3844f1328', '0', '1496554164');
INSERT INTO `yershop_picture` VALUES ('203', '/uploads/Picture/2017-06-04/59339abc39975.jpg', '', 'e91d7b93dd88d79eb1ab6029b9420e87', '4f15a3484196aabef7996f514ec9079ff815a4b3', '0', '1496554172');
INSERT INTO `yershop_picture` VALUES ('204', '/uploads/Picture/2017-06-08/59382de1f0c4d.png', '', 'ade99d895ebc71b9a9e52a08a451c1f6', 'b363746196da6d7a37ae7bb6cc79157dc0118b40', '0', '1496853985');
INSERT INTO `yershop_picture` VALUES ('205', '/uploads/Picture/2017-06-08/59382e6989c21.jpg', '', 'df18e2fba1ea9d775b62898993896f09', 'ea848e85275b794cddedac4605e1da14ab3fa980', '0', '1496854121');
INSERT INTO `yershop_picture` VALUES ('206', '/uploads/Picture/2017-06-08/5938321d1a0b8.jpg', '', 'df18e2fba1ea9d775b62898993896f09', 'ea848e85275b794cddedac4605e1da14ab3fa980', '0', '1496855069');
INSERT INTO `yershop_picture` VALUES ('207', '/uploads/Picture/2017-06-10/593af2721c9df.jpg', '', '5332d77768534c1863d87e4660ee207b', '3c21386aa1f23038b1240680b079bed2f2a12097', '0', '1497035378');
INSERT INTO `yershop_picture` VALUES ('208', '/uploads/Picture/2017-06-10/593af2ab73069.jpg', '', '618f425810aaee83564b2d5384c43500', '176ed5bdbf544fe8a67a1c53480b0d3a546fdb4b', '0', '1497035435');
INSERT INTO `yershop_picture` VALUES ('209', '/uploads/Picture/2017-06-10/593b473d21a8d.jpg', '', 'f40309d6e909e5475c063c8502c9776c', '38f96bd641cdf99db3b5ce3e9fe568c98439f517', '0', '1497057085');
INSERT INTO `yershop_picture` VALUES ('210', '/uploads/Picture/2017-06-10/593b4858b844a.jpg', '', 'a57729b797ee17917c3e5436d6d31e6d', '432e8e755ae89588dfd074f2dddb7f9829cde2af', '0', '1497057368');
INSERT INTO `yershop_picture` VALUES ('211', '/uploads/Picture/2017-06-10/593b48aa7b751.jpg', '', '536c08c0a5cb10edaf1bac707c55025a', 'a26fb784f006c0a7192ed30ba87390c1a98e7c68', '0', '1497057450');
INSERT INTO `yershop_picture` VALUES ('212', '/uploads/Picture/2017-06-10/593b48c2917d3.jpg', '', '38affd4dcca613daba37db6a9f91b204', 'e6c87d94ad2051d2072dbfc3f3c5108fc8195a21', '0', '1497057474');
INSERT INTO `yershop_picture` VALUES ('213', '/uploads/Picture/2017-06-10/593b48cf7a6a4.jpg', '', '536c08c0a5cb10edaf1bac707c55025a', 'a26fb784f006c0a7192ed30ba87390c1a98e7c68', '0', '1497057487');
INSERT INTO `yershop_picture` VALUES ('214', '/uploads/Picture/2017-06-10/593b48dfd1488.jpg', '', '244b2e7c149af541900f5c9cb3c17e0a', '5ba16ece19ec85058ee5ee62d6bd153305d0afbd', '0', '1497057503');
INSERT INTO `yershop_picture` VALUES ('215', '/uploads/Picture/2017-06-10/593b49029c41a.jpg', '', '83ca6fb33e1164d3e4699849237bff10', 'de3c7e6e0ed67243daafa611c4b15d97a90789be', '0', '1497057538');
INSERT INTO `yershop_picture` VALUES ('216', '/uploads/Picture/2017-06-10/593b492a3f651.jpg', '', 'f3e60ab5a1c41f282080c306301cc354', '6df99acc50de9fa7e48d1d274a9a0b3d4da14e32', '0', '1497057578');
INSERT INTO `yershop_picture` VALUES ('217', '/uploads/Picture/2017-06-10/593b49652e774.jpg', '', '9633a7a94a30bb85ee65feb7745fd074', '93974ac32e0aa464213b5429827101606f251158', '0', '1497057637');
INSERT INTO `yershop_picture` VALUES ('218', '/uploads/Picture/2017-06-10/593b49da4be8a.png', '', '6a42de2dc1c015959b6876fd0091bd99', 'acb907a5ef5c6310b526dd6f999d59b73147b164', '0', '1497057754');
INSERT INTO `yershop_picture` VALUES ('219', '/uploads/Picture/2017-06-10/593b4a23873de.jpg', '', '536c08c0a5cb10edaf1bac707c55025a', 'a26fb784f006c0a7192ed30ba87390c1a98e7c68', '0', '1497057827');
INSERT INTO `yershop_picture` VALUES ('220', '/uploads/Picture/2017-06-10/593b4be76841c.png', '', '4b34ceeb1a62296ac07c69542fc60ccc', 'e05700fdb4425424464cdfb551e7351b7ec76dbd', '0', '1497058279');
INSERT INTO `yershop_picture` VALUES ('221', '/uploads/Picture/2017-06-10/593b4ca5b86a6.jpg', '', '570c2bc96240f2868469caebaee43565', 'b0c7aefc53eed5851f2c535d6df315ecd450e791', '0', '1497058469');
INSERT INTO `yershop_picture` VALUES ('222', '/uploads/Picture/2017-06-10/593b4cc8b89ee.jpg', '', '8895b46e241808531b52238a66261e34', '8a775a65ac498e52c1277d9fc7c5de2659b906f1', '0', '1497058504');
INSERT INTO `yershop_picture` VALUES ('223', '/uploads/Picture/2017-06-10/593b4cf227b4e.jpg', '', '0af856cabcfb15c409defd5a90900494', 'f5e0c8518d74761f4284c7dc6438b996e7f33817', '0', '1497058546');
INSERT INTO `yershop_picture` VALUES ('224', '/uploads/Picture/2017-06-10/593b4e639e660.jpg', '', 'ece3884ec7bf17a0580b8856dde247aa', 'd5f0ce295385e2c2e8b546ccd55d1ceb29e69507', '0', '1497058915');
INSERT INTO `yershop_picture` VALUES ('225', '/uploads/Picture/2017-06-10/593b50055245a.jpg', '', '239769d731a5eb504f1183722cde4d09', 'f53c5cf8f1300a5a247fff354a111d7008c56a4b', '0', '1497059333');
INSERT INTO `yershop_picture` VALUES ('226', '/uploads/Picture/2017-06-10/593b5029f0f5c.jpg', '', '8f6dee1b82487959a34961811d6871f6', 'eed689df64393a45ab645b7b1299fe4486fd53b9', '0', '1497059369');
INSERT INTO `yershop_picture` VALUES ('227', '/uploads/Picture/2017-06-10/593b505453a4c.jpg', '', 'fc13447d9ea4269f9067c68e0fa86eef', 'd80d828010ed09799809ae2b7c37f7aea33cdac9', '0', '1497059412');
INSERT INTO `yershop_picture` VALUES ('228', '/uploads/Picture/2017-06-10/593b508b77396.jpg', '', '50d4f43e24ad56331fc41f05cf51699c', '55da9adddc17420b24832675704806babd21fcf6', '0', '1497059467');
INSERT INTO `yershop_picture` VALUES ('229', '/uploads/Picture/2017-06-10/593b533ad646a.jpg', '', '2f6d092829f2dbe171479fae26dc7e02', '4368a3051dd1c35f3c60deacc9490004a28320f9', '0', '1497060154');
INSERT INTO `yershop_picture` VALUES ('230', '/uploads/Picture/2017-06-10/593b56975d266.jpg', '', 'ece3884ec7bf17a0580b8856dde247aa', 'd5f0ce295385e2c2e8b546ccd55d1ceb29e69507', '0', '1497061015');
INSERT INTO `yershop_picture` VALUES ('231', '/uploads/Picture/2017-06-11/593c6f8d00bae.jpg', '', 'eacd46878b826fc8f377282eced38a5f', '350435aff3cf87b546781320f3c67de752d0a88e', '0', '1497132941');
INSERT INTO `yershop_picture` VALUES ('232', '/uploads/Picture/2017-06-11/593c7095e1a73.jpg', '', '205670ac324cd1516da2928cb4dbdebe', '58b847589eeeab811402f2047458a63d38197f45', '0', '1497133205');
INSERT INTO `yershop_picture` VALUES ('233', '/uploads/Picture/2017-06-11/593c71358b2f8.jpg', '', '1268ecb74cdb78e9a00c3a7bd9f07cbb', '36664122deddb0965ad78f2263b69f85c273cde4', '0', '1497133365');
INSERT INTO `yershop_picture` VALUES ('234', '/uploads/Picture/2017-06-11/593c71d37866e.jpg', '', '24d12a976c2b0387ed6582dd87f5dfd9', '0795b56a9ad6cf91ad98cbde4ba78243c864921b', '0', '1497133523');
INSERT INTO `yershop_picture` VALUES ('235', '/uploads/Picture/2017-06-11/593c71e910c8f.jpg', '', '85e921f8946870510435ebc9d9cb073b', '8511e201fca9fc8561373d1c63bfc57b45043438', '0', '1497133545');
INSERT INTO `yershop_picture` VALUES ('236', '/uploads/Picture/2017-06-11/593c722b21ce0.jpg', '', '8f6c1ab8a368c4608ad88b6f2e3d990a', 'd6971cef2494d08a9e2374b23df8f03228061579', '0', '1497133611');
INSERT INTO `yershop_picture` VALUES ('237', '/uploads/Picture/2017-06-11/593c73c59ba63.jpg', '', '2643aad1795d84a1ddd4651584888533', 'f5481198541d4facc063c113d19cb24256369139', '0', '1497134021');
INSERT INTO `yershop_picture` VALUES ('238', '/uploads/Picture/2017-06-11/593d619bc1557.png', '', '8a0e828202dc55abb32d581a650a499b', '7b2d18fc2c9970997fd65d8bc8fef11973b108ba', '0', '1497194907');
INSERT INTO `yershop_picture` VALUES ('239', '/uploads/Picture/2017-06-11/593d66418184d.jpg', '', 'cd8289f0b5e2cce081e64cf728a3dad9', '77359403d19d2d7758a38816ffc25e92de6f5071', '0', '1497196097');
INSERT INTO `yershop_picture` VALUES ('240', '/uploads/Picture/2017-06-11/593d668a0b335.jpg', '', '8258766e1b790fb7c1fe5a2a9caa65d0', 'd6ded094cff01419050eeb23c39ce85812bf2ce8', '0', '1497196170');
INSERT INTO `yershop_picture` VALUES ('241', '/uploads/Picture/2017-06-11/593d66b13441e.png', '', '642eb204ee46c475e3663ee66412a064', 'a065eca31d835a10ad0739990aef1833858ed57c', '0', '1497196209');
INSERT INTO `yershop_picture` VALUES ('252', '/uploads/Picture/2017-11-04/1509764207.jpg', '', '', '', '1', '1509764207');
INSERT INTO `yershop_picture` VALUES ('253', '/uploads/Picture/2017-11-04/1509764309.jpg', '', '', '', '1', '1509764309');
INSERT INTO `yershop_picture` VALUES ('243', '/uploads/Picture/2017-06-12/593d720ba26b3.jpg', '', 'cc40bf13003b952c6cb8fe128522ec21', '21984feb63ba59495d667e2ed765e0e4d90dbd94', '0', '1497199115');
INSERT INTO `yershop_picture` VALUES ('244', '/uploads/Picture/2017-06-18/594565c199a91.jpg', '', '685b1133c2fb45479218b2acd6a8b852', 'd8145cf3becdf9e0fdeb24b43cd0cee1518a4699', '0', '1497720257');
INSERT INTO `yershop_picture` VALUES ('245', '/uploads/Picture/2017-06-18/5945725f48956.png', '', 'a16a431bbb61e642b18b940b1473dfd3', 'f4398e7803c4a9bf6430e44be134f335f46a0914', '0', '1497723487');
INSERT INTO `yershop_picture` VALUES ('260', '/uploads/Picture/2017-11-04/1509767146.jpg', '', '', '', '1', '1509767146');
INSERT INTO `yershop_picture` VALUES ('261', '/uploads/Picture/2017-11-04/1509767152.jpg', '', '', '', '1', '1509767152');
INSERT INTO `yershop_picture` VALUES ('258', '/uploads/Picture/2017-11-04/1509766137.jpg', '', '', '', '1', '1509766137');
INSERT INTO `yershop_picture` VALUES ('259', '/uploads/Picture/2017-11-04/1509767121.jpg', '', '', '', '1', '1509767121');
INSERT INTO `yershop_picture` VALUES ('256', '/uploads/Picture/2017-11-04/1509764517.jpg', '', '', '', '1', '1509764517');
INSERT INTO `yershop_picture` VALUES ('257', '/uploads/Picture/2017-11-04/1509764709.jpg', '', '', '', '1', '1509764709');
INSERT INTO `yershop_picture` VALUES ('254', '/uploads/Picture/2017-11-04/1509764326.jpg', '', '', '', '1', '1509764326');
INSERT INTO `yershop_picture` VALUES ('255', '/uploads/Picture/2017-11-04/1509764474.jpg', '', '', '', '1', '1509764474');
INSERT INTO `yershop_picture` VALUES ('250', '/uploads/Picture/2017-10-04/59d49d19e995b.png', '', 'e52be7fe9f76f0b2d20440d01c75b51a', 'b9294fe039b5daedf352ef1c9d0a4dc269c4f423', '0', '1507106073');
INSERT INTO `yershop_picture` VALUES ('251', '/uploads/Picture/2017-10-07/59d88b31c73ea.gif', '', '927d4a2ecfc5380f4b35efe256104c9f', '14644b7ff9b25cd5ec113e3ab7659290b7c81f6a', '0', '1507363633');
INSERT INTO `yershop_picture` VALUES ('262', '/uploads/Picture/2017-11-04/1509767768.jpg', '', '', '', '1', '1509767768');
INSERT INTO `yershop_picture` VALUES ('263', '/uploads/Picture/2017-11-04/1509767785.jpg', '', '', '', '1', '1509767785');
INSERT INTO `yershop_picture` VALUES ('264', '/uploads/Picture/2017-11-04/1509767848.jpg', '', '', '', '1', '1509767848');
INSERT INTO `yershop_picture` VALUES ('265', '/uploads/Picture/2017-11-04/1509767938.jpg', '', '', '', '1', '1509767938');
INSERT INTO `yershop_picture` VALUES ('266', '/uploads/Picture/2017-11-04/1509768029.jpg', '', '', '', '1', '1509768029');
INSERT INTO `yershop_picture` VALUES ('267', '/uploads/Picture/2017-11-04/1509768183.jpg', '', '', '', '1', '1509768183');
INSERT INTO `yershop_picture` VALUES ('268', '/uploads/Picture/2017-11-04/1509768213.jpg', '', '', '', '1', '1509768213');
INSERT INTO `yershop_picture` VALUES ('269', '/uploads/Picture/2017-11-04/1509768258.jpg', '', '', '', '1', '1509768258');
INSERT INTO `yershop_picture` VALUES ('270', '/uploads/Picture/2017-11-04/1509768364.jpg', '', '', '', '1', '1509768364');
INSERT INTO `yershop_picture` VALUES ('271', '/uploads/Picture/2017-11-04/1509768371.jpg', '', '', '', '1', '1509768371');
INSERT INTO `yershop_picture` VALUES ('272', '/uploads/Picture/2017-11-04/1509768375.jpg', '', '', '', '1', '1509768375');
INSERT INTO `yershop_picture` VALUES ('273', '/uploads/Picture/2017-11-04/1509768484.jpg', '', '', '', '1', '1509768484');
INSERT INTO `yershop_picture` VALUES ('274', '/uploads/Picture/2017-11-04/1509768556.jpg', '', '', '', '1', '1509768556');
INSERT INTO `yershop_picture` VALUES ('275', '/uploads/Picture/2017-11-04/1509768616.jpg', '', '', '', '1', '1509768616');
INSERT INTO `yershop_picture` VALUES ('276', '/uploads/Picture/2017-11-04/1509768733.jpg', '', '', '', '1', '1509768733');
INSERT INTO `yershop_picture` VALUES ('277', '/uploads/Picture/2017-11-04/1509768791.jpg', '', '', '', '1', '1509768791');
INSERT INTO `yershop_picture` VALUES ('278', '/uploads/Picture/2017-11-04/1509768797.jpg', '', '', '', '1', '1509768797');
INSERT INTO `yershop_picture` VALUES ('279', '/uploads/Picture/2017-11-04/1509768842.jpg', '', '', '', '1', '1509768842');
INSERT INTO `yershop_picture` VALUES ('280', '/uploads/Picture/2017-11-04/1509768864.jpg', '', '', '', '1', '1509768864');
INSERT INTO `yershop_picture` VALUES ('281', '/uploads/Picture/2017-11-04/1509768989.jpg', '', '', '', '1', '1509768989');
INSERT INTO `yershop_picture` VALUES ('282', '/uploads/Picture/2017-11-04/1509774996.jpg', '', '', '', '1', '1509774996');
INSERT INTO `yershop_picture` VALUES ('283', '/uploads/Picture/2017-11-04/1509775088.jpg', '', '', '', '1', '1509775088');
INSERT INTO `yershop_picture` VALUES ('284', '/uploads/Picture/2017-11-04/1509775098.jpg', '', '', '', '1', '1509775098');
INSERT INTO `yershop_picture` VALUES ('285', '/uploads/Picture/2017-11-04/1509776126.jpg', '', '', '', '1', '1509776126');
INSERT INTO `yershop_picture` VALUES ('286', '/uploads/Picture/2017-11-04/1509776284.jpg', '', '', '', '1', '1509776284');
INSERT INTO `yershop_picture` VALUES ('287', '/uploads/Picture/2017-11-04/1509776887.jpg', '', '', '', '1', '1509776887');
INSERT INTO `yershop_picture` VALUES ('288', '/uploads/Picture/2017-11-04/1509776974.jpg', '', '', '', '1', '1509776974');
INSERT INTO `yershop_picture` VALUES ('289', '/uploads/Picture/2017-11-04/1509776995.jpg', '', '', '', '1', '1509776995');
INSERT INTO `yershop_picture` VALUES ('290', '/uploads/Picture/2017-11-04/1509777008.jpg', '', '', '', '1', '1509777008');
INSERT INTO `yershop_picture` VALUES ('291', '/uploads/Picture/2017-11-04/1509777060.jpg', '', '', '', '1', '1509777060');
INSERT INTO `yershop_picture` VALUES ('292', '/uploads/Picture/2017-11-04/1509777944.jpg', '', '', '', '1', '1509777944');
INSERT INTO `yershop_picture` VALUES ('293', '/uploads/Picture/2017-11-04/1509778821.jpg', '', '', '', '1', '1509778821');
INSERT INTO `yershop_picture` VALUES ('294', '/uploads/Picture/2017-11-04/1509778828.jpg', '', '', '', '1', '1509778828');
INSERT INTO `yershop_picture` VALUES ('295', '/uploads/Picture/2017-11-04/1509788391.jpg', '', '', '', '1', '1509788391');
INSERT INTO `yershop_picture` VALUES ('296', '/uploads/Picture/2017-11-04/1509788398.jpg', '', '', '', '1', '1509788398');
INSERT INTO `yershop_picture` VALUES ('297', '/uploads/Picture/2017-11-04/1509788431.jpg', '', '', '', '1', '1509788431');
INSERT INTO `yershop_picture` VALUES ('298', '/uploads/Picture/2017-11-04/1509788440.jpg', '', '', '', '1', '1509788440');
INSERT INTO `yershop_picture` VALUES ('299', '/uploads/Picture/2017-11-04/1509788469.jpg', '', '', '', '1', '1509788469');
INSERT INTO `yershop_picture` VALUES ('300', '/uploads/Picture/2017-11-04/1509788610.jpg', '', '', '', '1', '1509788610');
INSERT INTO `yershop_picture` VALUES ('301', '/uploads/Picture/2017-11-04/1509788628.jpg', '', '', '', '1', '1509788628');
INSERT INTO `yershop_picture` VALUES ('302', '/uploads/Picture/2017-11-04/1509788835.jpg', '', '', '', '1', '1509788835');
INSERT INTO `yershop_picture` VALUES ('303', '/uploads/Picture/2017-11-04/1509788851.jpg', '', '', '', '1', '1509788851');
INSERT INTO `yershop_picture` VALUES ('304', '/uploads/Picture/2017-11-04/1509788982.jpg', '', '', '', '1', '1509788982');
INSERT INTO `yershop_picture` VALUES ('305', '/uploads/Picture/2017-11-04/1509789038.jpg', '', '', '', '1', '1509789038');
INSERT INTO `yershop_picture` VALUES ('306', '/uploads/Picture/2017-11-04/1509789055.jpg', '', '', '', '1', '1509789055');
INSERT INTO `yershop_picture` VALUES ('307', '/uploads/Picture/2017-11-04/1509789339.jpg', '', '', '', '1', '1509789339');
INSERT INTO `yershop_picture` VALUES ('308', '/uploads/Picture/2017-11-04/1509789347.jpg', '', '', '', '1', '1509789347');
INSERT INTO `yershop_picture` VALUES ('309', '/uploads/Picture/2017-11-04/1509789494.jpg', '', '', '', '1', '1509789494');
INSERT INTO `yershop_picture` VALUES ('310', '/uploads/Picture/2017-11-04/1509790026.jpg', '', '', '', '1', '1509790026');
INSERT INTO `yershop_picture` VALUES ('311', '/uploads/Picture/2017-11-04/1509790033.jpg', '', '', '', '1', '1509790033');
INSERT INTO `yershop_picture` VALUES ('312', '/uploads/Picture/2017-11-04/1509790249.jpg', '', '', '', '1', '1509790249');
INSERT INTO `yershop_picture` VALUES ('313', '/uploads/Picture/2017-11-04/1509790257.jpg', '', '', '', '1', '1509790257');
INSERT INTO `yershop_picture` VALUES ('314', '/uploads/Picture/2017-11-04/1509793893.jpg', '', '', '', '1', '1509793893');
INSERT INTO `yershop_picture` VALUES ('315', '/uploads/Picture/2017-11-04/1509793969.jpg', '', '', '', '1', '1509793969');
INSERT INTO `yershop_picture` VALUES ('316', '/uploads/Picture/2017-11-04/1509794136.jpg', '', '', '', '1', '1509794136');
INSERT INTO `yershop_picture` VALUES ('317', '/uploads/Picture/2017-11-04/1509794168.jpg', '', '', '', '1', '1509794168');
INSERT INTO `yershop_picture` VALUES ('318', '/uploads/Picture/2017-11-04/1509794190.jpg', '', '', '', '1', '1509794190');
INSERT INTO `yershop_picture` VALUES ('319', '/uploads/Picture/2017-11-04/1509794471.jpg', '', '', '', '1', '1509794471');
INSERT INTO `yershop_picture` VALUES ('320', '/uploads/Picture/2017-11-04/1509794559.jpg', '', '', '', '1', '1509794559');
INSERT INTO `yershop_picture` VALUES ('321', '/uploads/Picture/2017-11-04/1509794563.jpg', '', '', '', '1', '1509794563');
INSERT INTO `yershop_picture` VALUES ('322', '/uploads/Picture/2017-11-04/1509794567.jpg', '', '', '', '1', '1509794567');
INSERT INTO `yershop_picture` VALUES ('323', '/uploads/Picture/2017-11-04/1509794971.jpg', '', '', '', '1', '1509794971');
INSERT INTO `yershop_picture` VALUES ('324', '/uploads/Picture/2017-11-04/1509794984.jpg', '', '', '', '1', '1509794984');
INSERT INTO `yershop_picture` VALUES ('325', '/uploads/Picture/2017-11-04/1509795815.jpg', '', '', '', '1', '1509795815');
INSERT INTO `yershop_picture` VALUES ('326', '/uploads/Picture/2017-11-04/1509796230.jpg', '', '', '', '1', '1509796230');
INSERT INTO `yershop_picture` VALUES ('327', '/uploads/Picture/2017-11-04/1509796692.jpg', '', '', '', '1', '1509796692');
INSERT INTO `yershop_picture` VALUES ('328', '/uploads/Picture/2017-11-06/1509907313.jpg', '', '', '', '1', '1509907313');
INSERT INTO `yershop_picture` VALUES ('329', '/uploads/Picture/2017-11-06/1509907337.jpg', '', '', '', '1', '1509907337');
INSERT INTO `yershop_picture` VALUES ('330', '/uploads/Picture/2017-11-06/1509907467.jpg', '', '', '', '1', '1509907467');
INSERT INTO `yershop_picture` VALUES ('331', '/uploads/Picture/2017-11-06/1509907531.jpg', '', '', '', '1', '1509907531');
INSERT INTO `yershop_picture` VALUES ('332', '/uploads/Picture/2017-11-06/1509907751.jpg', '', '', '', '1', '1509907751');
INSERT INTO `yershop_picture` VALUES ('333', '/uploads/Picture/2017-11-06/1509907987.jpg', '', '', '', '1', '1509907987');
INSERT INTO `yershop_picture` VALUES ('334', '/uploads/Picture/2017-11-06/1509908117.jpg', '', '', '', '1', '1509908117');
INSERT INTO `yershop_picture` VALUES ('335', '/uploads/Picture/2017-11-06/1509908203.jpg', '', '', '', '1', '1509908203');
INSERT INTO `yershop_picture` VALUES ('336', '/uploads/Picture/2017-11-06/1509908206.jpg', '', '', '', '1', '1509908206');
INSERT INTO `yershop_picture` VALUES ('337', '/uploads/Picture/2017-11-06/1509908277.jpg', '', '', '', '1', '1509908277');
INSERT INTO `yershop_picture` VALUES ('338', '/uploads/Picture/2017-11-06/1509909114.jpg', '', '', '', '1', '1509909114');
INSERT INTO `yershop_picture` VALUES ('339', '/uploads/Picture/2017-11-06/1509909120.jpg', '', '', '', '1', '1509909120');
INSERT INTO `yershop_picture` VALUES ('340', '/uploads/Picture/2017-11-06/1509909193.jpg', '', '', '', '1', '1509909193');
INSERT INTO `yershop_picture` VALUES ('341', '/uploads/Picture/2017-11-06/1509909295.jpg', '', '', '', '1', '1509909295');
INSERT INTO `yershop_picture` VALUES ('342', '/uploads/Picture/2017-11-06/1509909380.jpg', '', '', '', '1', '1509909380');
INSERT INTO `yershop_picture` VALUES ('343', '/uploads/Picture/2017-11-06/1509909396.jpg', '', '', '', '1', '1509909396');
INSERT INTO `yershop_picture` VALUES ('344', '/uploads/Picture/2017-11-06/1509909486.jpg', '', '', '', '1', '1509909486');
INSERT INTO `yershop_picture` VALUES ('345', '/uploads/Picture/2017-11-06/1509909558.jpg', '', '', '', '1', '1509909558');
INSERT INTO `yershop_picture` VALUES ('346', '/uploads/Picture/2017-11-06/1509909638.jpg', '', '', '', '1', '1509909638');
INSERT INTO `yershop_picture` VALUES ('347', '/uploads/Picture/2017-11-06/1509909645.jpg', '', '', '', '1', '1509909645');
INSERT INTO `yershop_picture` VALUES ('348', '/uploads/Picture/2017-11-06/1509909698.jpg', '', '', '', '1', '1509909698');
INSERT INTO `yershop_picture` VALUES ('349', '/uploads/Picture/2017-11-06/1509910076.jpg', '', '', '', '1', '1509910076');
INSERT INTO `yershop_picture` VALUES ('350', '/uploads/Picture/2017-11-06/1509936498.jpg', '', '', '', '1', '1509936498');
INSERT INTO `yershop_picture` VALUES ('351', '/uploads/Picture/2017-11-06/1509936564.jpg', '', '', '', '1', '1509936564');
INSERT INTO `yershop_picture` VALUES ('352', '/uploads/Picture/2017-11-06/1509936614.jpg', '', '', '', '1', '1509936614');
INSERT INTO `yershop_picture` VALUES ('353', '/uploads/Picture/2017-11-06/1509936698.jpg', '', '', '', '1', '1509936698');
INSERT INTO `yershop_picture` VALUES ('354', '/uploads/Picture/2017-11-06/1509936841.jpg', '', '', '', '1', '1509936841');
INSERT INTO `yershop_picture` VALUES ('355', '/uploads/Picture/2017-11-06/1509937018.jpg', '', '', '', '1', '1509937018');
INSERT INTO `yershop_picture` VALUES ('356', '/uploads/Picture/2017-11-06/1509937133.jpg', '', '', '', '1', '1509937133');
INSERT INTO `yershop_picture` VALUES ('357', '/uploads/Picture/2017-11-06/1509937244.jpg', '', '', '', '1', '1509937244');
INSERT INTO `yershop_picture` VALUES ('358', '/uploads/Picture/2017-11-19/1511030221.jpg', '', '', '', '1', '1511030221');
INSERT INTO `yershop_picture` VALUES ('359', '/uploads/Picture/2017-11-27/1511717517.jpg', '', '', '', '1', '1511717517');
INSERT INTO `yershop_picture` VALUES ('360', '/uploads/Picture/2017-11-27/1511717612.jpg', '', '', '', '1', '1511717612');
INSERT INTO `yershop_picture` VALUES ('361', '/uploads/Picture/2017-11-27/1511717656.jpg', '', '', '', '1', '1511717656');
INSERT INTO `yershop_picture` VALUES ('362', '/uploads/Picture/2017-11-27/1511722538.jpg', '', '', '', '1', '1511722538');
INSERT INTO `yershop_picture` VALUES ('363', '/uploads/Picture/2017-11-27/1511722690.jpg', '', '', '', '1', '1511722690');
INSERT INTO `yershop_picture` VALUES ('364', '/uploads/Picture/2017-11-27/1511723165.jpg', '', '', '', '1', '1511723165');
INSERT INTO `yershop_picture` VALUES ('365', '/uploads/Picture/2017-11-27/1511724412.jpg', '', '', '', '1', '1511724412');
INSERT INTO `yershop_picture` VALUES ('366', '/uploads/Picture/2017-11-27/1511724464.jpg', '', '', '', '1', '1511724464');
INSERT INTO `yershop_picture` VALUES ('367', '/uploads/Picture/2017-12-05/1512476667.jpg', '', '', '', '1', '1512476667');
INSERT INTO `yershop_picture` VALUES ('368', '/uploads/Picture/2017-12-05/1512476751.jpg', '', '', '', '1', '1512476751');
INSERT INTO `yershop_picture` VALUES ('369', '/uploads/Picture/2017-12-05/1512476796.jpg', '', '', '', '1', '1512476796');
INSERT INTO `yershop_picture` VALUES ('370', '/uploads/Picture/2017-12-13/1513112743.jpg', '', '', '', '1', '1513112743');
INSERT INTO `yershop_picture` VALUES ('371', '/uploads/Picture/2017-12-13/1513113066.jpg', '', '', '', '1', '1513113066');
INSERT INTO `yershop_picture` VALUES ('372', '/uploads/Picture/2017-12-13/1513113397.jpg', '', '', '', '1', '1513113397');
INSERT INTO `yershop_picture` VALUES ('373', '/uploads/Picture/2017-12-13/1513113513.jpg', '', '', '', '1', '1513113513');
INSERT INTO `yershop_picture` VALUES ('374', '/uploads/Picture/2017-12-13/1513113938.jpg', '', '', '', '1', '1513113938');
INSERT INTO `yershop_picture` VALUES ('375', '/uploads/Picture/2017-12-13/1513113981.jpg', '', '', '', '1', '1513113981');
INSERT INTO `yershop_picture` VALUES ('376', '/uploads/Picture/2017-12-13/1513114264.jpg', '', '', '', '1', '1513114264');
INSERT INTO `yershop_picture` VALUES ('377', '/uploads/Picture/2017-12-13/1513114393.jpg', '', '', '', '1', '1513114393');
INSERT INTO `yershop_picture` VALUES ('378', '/uploads/Picture/2017-12-13/1513114409.jpg', '', '', '', '1', '1513114409');
INSERT INTO `yershop_picture` VALUES ('379', '/uploads/Picture/2017-12-13/1513114476.jpg', '', '', '', '1', '1513114476');
INSERT INTO `yershop_picture` VALUES ('380', '/uploads/Picture/2017-12-13/1513120326.jpg', '', '', '', '1', '1513120326');
INSERT INTO `yershop_picture` VALUES ('381', '/uploads/Picture/2017-12-13/1513120363.jpg', '', '', '', '1', '1513120363');
INSERT INTO `yershop_picture` VALUES ('382', '/uploads/Picture/2017-12-13/1513120464.jpg', '', '', '', '1', '1513120464');
INSERT INTO `yershop_picture` VALUES ('383', '/uploads/Picture/2017-12-13/1513120596.jpg', '', '', '', '1', '1513120596');
INSERT INTO `yershop_picture` VALUES ('384', '/uploads/Picture/2017-12-13/1513120740.jpg', '', '', '', '1', '1513120740');
INSERT INTO `yershop_picture` VALUES ('385', '/uploads/Picture/2017-12-13/1513120854.jpg', '', '', '', '1', '1513120854');
INSERT INTO `yershop_picture` VALUES ('386', '/uploads/Picture/2017-12-13/1513121077.jpg', '', '', '', '1', '1513121077');
INSERT INTO `yershop_picture` VALUES ('387', '/uploads/Picture/2017-12-31/1514712571.jpg', '', '', '', '1', '1514712571');
INSERT INTO `yershop_picture` VALUES ('388', '/uploads/Picture/2017-12-31/1514712577.jpg', '', '', '', '1', '1514712577');
INSERT INTO `yershop_picture` VALUES ('389', '/uploads/Picture/2017-12-31/1514712584.jpg', '', '', '', '1', '1514712584');
INSERT INTO `yershop_picture` VALUES ('390', '/uploads/Picture/2017-12-31/1514712588.jpg', '', '', '', '1', '1514712588');
INSERT INTO `yershop_picture` VALUES ('391', '/uploads/Picture/2017-12-31/1514713465.jpg', '', '', '', '1', '1514713465');
INSERT INTO `yershop_picture` VALUES ('392', '/uploads/Picture/2017-12-31/1514713482.jpg', '', '', '', '1', '1514713482');

-- ----------------------------
-- Table structure for yershop_records
-- ----------------------------
DROP TABLE IF EXISTS `yershop_records`;
CREATE TABLE `yershop_records` (
  `id` int(225) NOT NULL AUTO_INCREMENT,
  `ip` varchar(225) NOT NULL DEFAULT '',
  `url` varchar(225) NOT NULL DEFAULT '',
  `country` varchar(225) NOT NULL DEFAULT '' COMMENT '订单号',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `info` varchar(225) NOT NULL DEFAULT '',
  `province` varchar(225) NOT NULL DEFAULT '',
  `city` varchar(225) NOT NULL DEFAULT '',
  `isp` varchar(225) NOT NULL DEFAULT '',
  `referer` text COMMENT '访问来源',
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  `page` varchar(225) NOT NULL DEFAULT '',
  `partnerid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=416 DEFAULT CHARSET=utf8 COMMENT='ip访问记录表';

-- ----------------------------
-- Records of yershop_records
-- ----------------------------
INSERT INTO `yershop_records` VALUES ('349', '', 'localhost/b2b/', '', '1445249377', '1', '', '', '', '', 'http://localhost/b2b/index.php?s=/Admin/Index/index.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('350', '', 'localhost/b2b/index.php?s=/Home/Article/detail/id/42.html', '', '1445263004', '0', '', '', '', '', null, '3', '42', '0');
INSERT INTO `yershop_records` VALUES ('351', '', 'localhost/b2b/index.php?s=/Home/Article/detail/id/68.html', '', '1445263650', '1', '', '', '', '', 'http://localhost/b2b/', '3', '68', '0');
INSERT INTO `yershop_records` VALUES ('352', '', 'localhost/b2b/index.php?s=/Home/article/index/pid/146.html', '', '1445269054', '0', '', '', '', '', null, '2', 'shangou', '0');
INSERT INTO `yershop_records` VALUES ('353', '', 'localhost/b2b/index.php?s=/Home/article/index/pid/149.html', '', '1445269063', '0', '', '', '', '', null, '2', 'yuyue', '0');
INSERT INTO `yershop_records` VALUES ('354', '', 'localhost/b2b/index.php?s=/Home/Article/detail/id/74.html', '', '1445269129', '0', '', '', '', '', null, '3', '74', '0');
INSERT INTO `yershop_records` VALUES ('355', '', 'localhost/b2b/', '', '1445270640', '1', '', '', '', '', 'http://localhost/b2b/Public/static/uploadify/uploadify.swf?preventswfcaching=1445270639155', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('356', '', 'localhost/b2b/index.php?s=/Home/article/index/pid/146.html', '', '1445272698', '0', '', '', '', '', null, '2', 'shangou', '0');
INSERT INTO `yershop_records` VALUES ('357', '', 'localhost/b2b/index.php?s=/Home/Article/detail/id/5.html', '', '1445276350', '0', '', '', '', '', null, '3', '5', '0');
INSERT INTO `yershop_records` VALUES ('358', '', 'localhost/b2b/', '', '1445304524', '5', '', '', '', '', 'http://localhost/b2b/index.php?s=/Admin/Change/index.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('359', '', 'localhost/b2b/index.php?s=/home/article/index/pid/111.html', '', '1445306049', '5', '', '', '', '', 'http://localhost/b2b/index.php?s=/Home/Index/index.html', '2', 'jiajujiaz', '0');
INSERT INTO `yershop_records` VALUES ('360', '', 'localhost/b2b/index.php?s=/home/article/index/pid/52.html', '', '1445306064', '5', '', '', '', '', 'http://localhost/b2b/index.php?s=/Home/Index/index.html', '2', 'fruit', '0');
INSERT INTO `yershop_records` VALUES ('361', '', 'localhost/b2b/index.php?s=/Home/Article/detail/id/42.html', '', '1445306096', '5', '', '', '', '', 'http://localhost/b2b/index.php?s=/Home/Index/index.html', '3', '42', '0');
INSERT INTO `yershop_records` VALUES ('362', '', 'localhost/b2b/index.php?s=/Home/Article/detail/id/79.html', '', '1445313192', '5', '', '', '', '', 'http://localhost/b2b/index.php?s=/Home/Index/index.html', '3', '79', '0');
INSERT INTO `yershop_records` VALUES ('363', '', 'localhost/b2b/index.php?s=/Home/Article/detail/id/68.html', '', '1445314176', '5', '', '', '', '', 'http://localhost/b2b/index.php?s=/Home/Index/index.html', '3', '68', '0');
INSERT INTO `yershop_records` VALUES ('364', '', 'localhost/b2b/index.php?s=/Home/Article/detail/id/53.html', '', '1445314878', '5', '', '', '', '', 'http://localhost/b2b/index.php?s=/Home/Index/index.html', '3', '53', '0');
INSERT INTO `yershop_records` VALUES ('365', '', 'localhost/b2b/index.php?s=/Home/article/index/pid/146.html', '', '1445315286', '0', '', '', '', '', null, '2', 'shangou', '0');
INSERT INTO `yershop_records` VALUES ('366', '', 'localhost/b2b/index.php?s=/Home/Article/detail/id/81.html', '', '1445315547', '0', '', '', '', '', null, '3', '81', '0');
INSERT INTO `yershop_records` VALUES ('367', '', 'localhost/b2b/', '', '1445436908', '0', '', '', '', '', 'http://localhost/b2b/index.php?s=/Admin/SellerMenu/index.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('368', '', 'localhost/b2b/index.php?s=/Home/article/index/pid/145.html', '', '1445436923', '0', '', '', '', '', null, '2', 'tuangou', '0');
INSERT INTO `yershop_records` VALUES ('369', '', 'localhost/b2b/index.php?s=/Home/article/index/pid/149.html', '', '1445436930', '0', '', '', '', '', null, '2', 'yuyue', '0');
INSERT INTO `yershop_records` VALUES ('370', '', 'localhost/b2b/index.php?s=/Home/article/index/pid/146.html', '', '1445436934', '0', '', '', '', '', null, '2', 'shangou', '0');
INSERT INTO `yershop_records` VALUES ('371', '', 'localhost/b2b/index.php?s=/Home/Article/detail/id/81.html', '', '1445436940', '0', '', '', '', '', null, '3', '81', '0');
INSERT INTO `yershop_records` VALUES ('372', '', 'localhost/b2b/', '', '1457936004', '0', '', '', '', '', 'http://localhost/', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('373', '', 'localhost/b2b/', '', '1459402227', '0', '', '', '', '', null, '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('374', '', 'localhost/b2b/', '', '1462198704', '0', '', '', '', '', 'http://localhost/', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('375', '', 'localhost/b2b/index.php?s=/Home/article/index/pid/149.html', '', '1462198740', '0', '', '', '', '', 'http://localhost/b2b/', '2', 'yuyue', '0');
INSERT INTO `yershop_records` VALUES ('376', '', 'localhost/b2b/index.php?s=/Home/article/index/pid/146.html', '', '1462198741', '0', '', '', '', '', 'http://localhost/b2b/', '2', 'shangou', '0');
INSERT INTO `yershop_records` VALUES ('377', '', 'localhost/b2b/', '', '1463023128', '0', '', '', '', '', 'http://localhost/b2b/index.php?s=/Admin/Slide/index.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('378', '', 'localhost/b2b/index.php?s=/home/article/index/pid/52.html', '', '1463023135', '0', '', '', '', '', 'http://localhost/b2b/', '2', 'fruit', '0');
INSERT INTO `yershop_records` VALUES ('379', '', 'localhost/b2b/index.php?m=Home&c=Index&a=index', '', '1469053450', '1', '', '', '', '', null, '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('380', '', 'localhost/b2b/', '', '1484645908', '0', '', '', '', '', 'http://localhost/', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('381', '', 'localhost/b2b/', '', '1484645908', '0', '', '', '', '', 'http://localhost/', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('382', '', 'localhost/new/', '', '1486555799', '0', '', '', '', '', 'http://localhost/', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('383', '', 'localhost/new/', '', '1487316569', '0', '', '', '', '', 'http://localhost/', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('384', '', 'localhost/new/', '', '1487844403', '0', '', '', '', '', 'http://localhost/', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('385', '', 'localhost/new/', '', '1489490668', '0', '', '', '', '', 'http://localhost/', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('386', '', 'localhost/new/', '', '1489561392', '0', '', '', '', '', null, '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('387', '', 'localhost/new/', '', '1489589162', '0', '', '', '', '', 'http://localhost/new/Public/static/uploadify/uploadify.swf?preventswfcaching=1489589161021', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('388', '', 'localhost/new/', '', '1489605678', '0', '', '', '', '', 'http://localhost/new/admin.php?s=/Goods/index.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('389', '', 'localhost/new/', '', '1489645514', '0', '', '', '', '', 'http://localhost/new/admin.php?s=/Type/index.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('390', '', 'localhost/new/', '', '1489725371', '0', '', '', '', '', 'http://localhost/new/admin.php?s=/Goods/index.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('391', '', 'localhost/new/', '', '1489754020', '0', '', '', '', '', 'http://localhost/new/admin.php?s=/Types/index.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('392', '', 'localhost/new/', '', '1489769035', '0', '', '', '', '', 'http://localhost/new/admin.php?s=/Goods/index.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('393', '', 'localhost/new/', '', '1489825426', '0', '', '', '', '', 'http://localhost/new/admin.php?s=/Article/index.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('394', '', 'localhost/new/index.php?s=/Home/index/index.html', '', '1489901074', '0', '', '', '', '', 'http://localhost/new/index.php?s=/shop/goods/detail/id/66.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('395', '', 'localhost/new/', '', '1489932849', '0', '', '', '', '', 'http://localhost/new/admin.php?s=/Goods/index.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('396', '', 'localhost/new/', '', '1489974332', '0', '', '', '', '', 'http://localhost/new/admin.php?s=/Stock/edit/id/105.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('397', '', 'localhost/new/index.php?s=/Home/Index/index.html', '', '1490006472', '0', '', '', '', '', 'http://localhost/new/index.php?s=/home/goods/detail/id/66.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('398', '', 'localhost/new/', '', '1490101574', '0', '', '', '', '', 'http://localhost/new/admin.php?s=/Stock/index.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('399', '', 'localhost/new/', '', '1490117088', '0', '', '', '', '', 'http://localhost/new/admin.php?s=/Stock/index.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('400', '', 'localhost/new/index.php?s=/Home/index/index.html', '', '1490170859', '1', '', '', '', '', 'http://localhost/new/index.php?s=/home/goods/detail/id/66.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('401', '', 'localhost/new/index.php?s=/Home/Index/index.html', '', '1490211003', '1', '', '', '', '', 'http://localhost/new/index.php?s=/Home/Address/edit/id/35/p/1.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('402', '', 'localhost/new/index.php?s=/Home/index/index.html', '', '1490247608', '1', '', '', '', '', 'http://localhost/new/index.php?s=/Home/order/index.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('403', '', 'localhost/new/', '', '1490368594', '1', '', '', '', '', 'http://localhost/new/admin.php?s=/Goods/add.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('404', '', 'localhost/new/index.php?s=/Home/Index/index.html', '', '1490372133', '0', '', '', '', '', 'http://localhost/new/index.php?s=/Home/User/forget.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('405', '', 'localhost/new/', '', '1490410613', '0', '', '', '', '', 'http://localhost/new/admin.php?s=/Attributes/index.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('406', '', 'localhost/new/index.php?s=/Home/Index/index.html', '', '1490445017', '0', '', '', '', '', 'http://localhost/new/index.php?s=/home/goods/detail/id/66.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('407', '', 'localhost/new/', '', '1490467022', '0', '', '', '', '', 'http://localhost/new/admin.php?s=/Goods/index.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('408', '', 'localhost/new/', '', '1490499342', '0', '', '', '', '', 'http://localhost/new/admin.php?s=/Check/index.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('409', '', 'localhost/new/index.php?s=/Home/index/index.html', '', '1490587447', '0', '', '', '', '', 'http://localhost/new/index.php?s=/home/goods/detail/id/66.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('410', '', 'localhost/new/', '', '1490929943', '0', '', '', '', '', 'http://localhost/new/admin.php?s=/Index/index.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('411', '', 'localhost/new/index.php?s=/Home/index/index.html', '', '1491232942', '0', '', '', '', '', 'http://localhost/new/index.php?s=/home/goods/detail/id/66.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('412', '', 'localhost/new/index.php?s=/Home/Article/detail/id/85.html', '', '1491235091', '0', '', '', '', '', 'http://localhost/new/index.php?s=/Home/Index/index.html', '3', '85', '0');
INSERT INTO `yershop_records` VALUES ('413', '', 'localhost/new/index.php?s=/Home/index/index.html', '', '1491235276', '0', '', '', '', '', 'http://localhost/new/index.php?s=/Home/goods/detail/id/85.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('414', '', 'localhost/new/', '', '1491293033', '1', '', '', '', '', 'http://localhost/new/admin.php?s=/Index/index.html', '1', 'index', '0');
INSERT INTO `yershop_records` VALUES ('415', '', 'localhost/new/', '', '1491323862', '1', '', '', '', '', 'http://localhost/new/admin.php?s=/Goods/index.html', '1', 'index', '0');

-- ----------------------------
-- Table structure for yershop_reply
-- ----------------------------
DROP TABLE IF EXISTS `yershop_reply`;
CREATE TABLE `yershop_reply` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `messageid` int(10) unsigned NOT NULL DEFAULT '0',
  `content` varchar(225) DEFAULT NULL COMMENT '回复内容',
  `status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '默认null-未提交订单1-未读2-已读',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `group` varchar(225) DEFAULT NULL COMMENT '分组',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='回复表';

-- ----------------------------
-- Records of yershop_reply
-- ----------------------------

-- ----------------------------
-- Table structure for yershop_sales
-- ----------------------------
DROP TABLE IF EXISTS `yershop_sales`;
CREATE TABLE `yershop_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) NOT NULL DEFAULT '0',
  `specifications` varchar(225) CHARACTER SET utf8 DEFAULT NULL,
  `uid` int(10) NOT NULL DEFAULT '0',
  `title` varchar(225) CHARACTER SET utf8 DEFAULT NULL,
  `order_sn` varchar(225) DEFAULT NULL,
  `goods_id` int(10) NOT NULL DEFAULT '0',
  `is_hide` int(10) NOT NULL DEFAULT '0',
  `total` decimal(50,2) NOT NULL DEFAULT '0.00',
  `num` int(10) NOT NULL DEFAULT '0',
  `price` decimal(50,2) NOT NULL DEFAULT '0.00',
  `sku_id` int(10) NOT NULL DEFAULT '0',
  `is_picture` int(10) NOT NULL DEFAULT '0',
  `path` varchar(225) DEFAULT NULL,
  `comment_status` int(10) NOT NULL DEFAULT '0',
  `spress` varchar(255) DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=210 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of yershop_sales
-- ----------------------------
INSERT INTO `yershop_sales` VALUES ('28', '0', '&nbsp;', '1', 'ONLY2016早秋新品白鸭绒双排暗扣无领羽绒服女ES|116323503 010黑 165/84', '2017052614957447671', '129', '0', '230.00', '10', '23.00', '15', '0', null, '2', null, '0');
INSERT INTO `yershop_sales` VALUES ('29', '0', '&nbsp;', '1', 'ONLY2016早秋新品白鸭绒双排暗扣无领羽绒服女ES|116323503 010黑 165/84', '2017053114962214291', '133', '0', '460.00', '20', '23.00', '15', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('30', '0', '&nbsp;', '1', 'ONLY2016早秋新品白鸭绒双排暗扣无领羽绒服女ES|116323503 010黑 165/84', '2017053114962340721', '84', '0', '460.00', '20', '23.00', '15', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('31', '0', '&nbsp;', '1', 'ONLY2016早秋新品白鸭绒双排暗扣无领羽绒服女ES|116323503 010黑 165/84', '2017053114962345041', '84', '0', '460.00', '20', '23.00', '15', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('32', '0', '&nbsp;', '1', 'ONLY2016早秋新品白鸭绒双排暗扣无领羽绒服女ES|116323503 010黑 165/84', '2017053114962381691', '84', '0', '460.00', '20', '23.00', '15', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('33', '0', '&nbsp;', '1', 'ONLY2016早秋新品白鸭绒双排暗扣无领羽绒服女ES|116323503 010黑 165/84', '2017053114962381691', '84', '0', '598.00', '26', '23.00', '15', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('34', '0', '&nbsp;', '1', 'ONLY2016早秋新品白鸭绒双排暗扣无领羽绒服女ES|116323503 010黑 165/84', '2017060114962531441', '84', '0', '644.00', '28', '23.00', '15', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('35', '0', '&nbsp;红色&nbsp;x', '1', '女装3', '2017060214963479681', '120', '0', '0.00', '3', '0.00', '21', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('36', '0', '&nbsp;红色&nbsp;x', '1', '女装3', '2017060214963481971', '120', '0', '1212.00', '1', '1212.00', '22', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('37', '0', '&nbsp;红色&nbsp;x', '1', '女装3', '2017060214963514961', '120', '0', '3636.00', '3', '1212.00', '24', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('38', '0', '&nbsp;红色&nbsp;x', '1', '女装3', '2017060214963516111', '120', '0', '4848.00', '4', '1212.00', '25', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('39', '0', '&nbsp;红色&nbsp;x', '1', '女装3', '2017060214963706051', '120', '0', '7272.00', '6', '1212.00', '25', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('40', '0', null, '0', '女装3', '2017060814968595061', '0', '0', '12.00', '0', '0.00', '184', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('41', '0', null, '0', '女装3', '2017060814968596231', '0', '0', '12.00', '0', '0.00', '184', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('42', '0', null, '0', '女装3', '2017060814968596441', '0', '0', '12.00', '0', '0.00', '184', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('43', '0', null, '0', '女装3', '2017060814968596781', '0', '0', '12.00', '0', '0.00', '184', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('44', '0', null, '0', '女装3', '2017060814968597151', '0', '0', '12.00', '0', '0.00', '184', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('45', '0', null, '0', '女装3', '2017060814968597701', '0', '0', '12.00', '0', '0.00', '184', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('46', '0', null, '0', '女装3', '2017060814968620051', '0', '0', '12.00', '0', '0.00', '184', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('47', '0', null, '1', null, null, '133', '0', '0.00', '0', '110.00', '0', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('48', '0', null, '1', null, null, '133', '0', '0.00', '0', '110.00', '0', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('49', '0', null, '1', null, null, '133', '0', '0.00', '0', '110.00', '0', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('50', '0', null, '1', null, null, '133', '0', '0.00', '0', '110.00', '0', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('51', '0', null, '1', null, null, '133', '0', '0.00', '0', '110.00', '0', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('52', '0', null, '1', null, null, '133', '0', '0.00', '0', '110.00', '0', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('53', '0', null, '1', null, null, '133', '0', '0.00', '0', '110.00', '0', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('54', '0', null, '1', null, null, '133', '0', '0.00', '0', '110.00', '0', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('55', '0', null, '1', null, null, '133', '0', '0.00', '0', '110.00', '0', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('56', '0', null, '1', null, null, '133', '0', '0.00', '0', '110.00', '0', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('57', '0', null, '1', null, null, '133', '0', '0.00', '0', '110.00', '0', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('58', '0', null, '1', null, null, '133', '0', '0.00', '0', '110.00', '0', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('59', '0', null, '1', null, null, '133', '0', '0.00', '0', '110.00', '0', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('60', '0', null, '1', null, null, '133', '0', '0.00', '0', '110.00', '0', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('61', '0', null, '0', '女装3', '2017060914969447911', '0', '0', '12.00', '0', '0.00', '184', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('62', '0', null, '0', '女装3', '2017060914969863111', '0', '0', '12.00', '0', '0.00', '184', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('63', '0', null, '0', '女装3', '2017060914970238771', '0', '0', '12.00', '0', '0.00', '184', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('64', '0', null, '0', '女装3', '2017061014970247461', '0', '0', '12.00', '0', '0.00', '184', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('65', '0', null, '0', '女装3', '2017061014970249981', '0', '0', '12.00', '0', '0.00', '184', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('66', '0', null, '0', '女装3', '2017061014970252041', '0', '0', '12.00', '0', '0.00', '184', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('67', '0', null, '0', '女装3', '2017061014970254641', '0', '0', '12.00', '0', '0.00', '184', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('68', '0', null, '0', '女装3', '2017061014970260211', '0', '0', '12.00', '0', '0.00', '184', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('69', '0', null, '0', '三只松鼠 坚果炒货 零食奶油味 碧根果225g/袋', '20170610149706021524', '0', '0', '21.00', '0', '0.00', '189', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('70', '0', null, '0', '三只松鼠 坚果炒货 零食奶油味 碧根果225g/袋', '20170610149706033124', '0', '0', '21.00', '0', '0.00', '189', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('71', '0', null, '0', '三只松鼠 坚果炒货 零食奶油味 碧根果225g/袋', '20170610149706033224', '0', '0', '21.00', '0', '0.00', '189', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('72', '0', null, '0', '三只松鼠 坚果炒货 零食奶油味 碧根果225g/袋', '20170610149706034024', '0', '0', '21.00', '0', '0.00', '189', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('73', '0', null, '0', '三只松鼠 坚果炒货 零食奶油味 碧根果225g/袋', '20170610149706036824', '138', '0', '21.00', '0', '0.00', '189', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('74', '0', null, '24', '三只松鼠 坚果炒货 零食奶油味 碧根果225g/袋', '20170610149706047324', '138', '0', '21.00', '0', '0.00', '189', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('75', '0', null, '24', '三只松鼠 坚果炒货 零食奶油味 碧根果225g/袋', '20170610149706055324', '138', '0', '21.00', '1', '21.00', '189', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('76', '0', null, '24', '百事京东罐(330ml*24罐）', '20170610149706125824', '135', '0', '54.00', '1', '54.00', '186', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('77', '0', null, '24', '百事京东罐(330ml*24罐）', '20170610149706178124', '135', '0', '54.00', '1', '54.00', '186', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('78', '0', null, '1', '蒙牛 谷物早餐牛奶饮品（红豆+红米+红高粱+小米） 250ml*12 整箱装', '2017061214972094531', '137', '0', '36.00', '1', '36.00', '188', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('79', '0', '&nbsp;', '1', '蒙牛 谷物早餐牛奶饮品（红豆+红米+红高粱+小米） 250ml*12 整箱装', '2017061214972096721', '137', '0', '36.00', '1', '36.00', '29', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('80', '0', '&nbsp;', '1', '三只松鼠 坚果炒货 零食奶油味 碧根果225g/袋', '2017061214972096721', '138', '0', '42.00', '2', '21.00', '30', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('81', '0', null, '1', '百事京东罐(330ml*24罐）', '2017061214972822381', '135', '0', '54.00', '1', '54.00', '186', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('82', '0', null, '1', '百事京东罐(330ml*24罐）', '2017070214989664571', '135', '0', '54.00', '1', '54.00', '186', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('83', '0', '&nbsp;', '1', '百事京东罐(330ml*24罐）', '2017070214989687331', '135', '0', '540.00', '10', '54.00', '31', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('84', '0', '&nbsp;', '1', '百事京东罐(330ml*24罐）', '2017070214989688011', '135', '0', '540.00', '10', '54.00', '31', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('85', '0', '&nbsp;', '1', '百事京东罐(330ml*24罐）', '2017070214989688691', '135', '0', '540.00', '10', '54.00', '31', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('86', '0', '&nbsp;', '1', '百事京东罐(330ml*24罐）', '2017070214989962761', '135', '0', '540.00', '10', '54.00', '31', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('87', '0', '&nbsp;', '1', '百事京东罐(330ml*24罐）', '2017070214989962771', '135', '0', '540.00', '10', '54.00', '31', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('88', '0', '&nbsp;', '1', '百事京东罐(330ml*24罐）', '2017070214989962781', '135', '0', '540.00', '10', '54.00', '31', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('89', '0', '&nbsp;', '1', '百事京东罐(330ml*24罐）', '2017070214989962781', '135', '0', '540.00', '10', '54.00', '31', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('90', '0', '&nbsp;', '1', '百事京东罐(330ml*24罐）', '2017070214989962841', '135', '0', '540.00', '10', '54.00', '31', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('91', '0', '&nbsp;', '1', '百事京东罐(330ml*24罐）', '2017070214989963211', '135', '0', '540.00', '10', '54.00', '31', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('92', '0', '&nbsp;', '1', '百事京东罐(330ml*24罐）', '2017070214989964911', '135', '0', '540.00', '10', '54.00', '31', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('93', '0', '&nbsp;', '1', '蒙牛 谷物早餐牛奶饮品（红豆+红米+红高粱+小米） 250ml*12 整箱装', '2017070414991161471', '137', '0', '144.00', '4', '36.00', '29', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('94', '0', '&nbsp;', '1', '三只松鼠 坚果炒货 零食奶油味 碧根果225g/袋', '2017070414991161471', '138', '0', '126.00', '6', '21.00', '30', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('95', '0', '&nbsp;', '1', '百事京东罐(330ml*24罐）', '2017070414991161471', '135', '0', '1566.00', '29', '54.00', '31', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('96', '0', '&nbsp;', '1', '蒙牛 谷物早餐牛奶饮品（红豆+红米+红高粱+小米） 250ml*12 整箱装', '2017070414991161491', '137', '0', '144.00', '4', '36.00', '29', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('97', '0', '&nbsp;', '1', '三只松鼠 坚果炒货 零食奶油味 碧根果225g/袋', '2017070414991161491', '138', '0', '126.00', '6', '21.00', '30', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('98', '0', '&nbsp;', '1', '百事京东罐(330ml*24罐）', '2017070414991161491', '135', '0', '1566.00', '29', '54.00', '31', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('99', '0', '&nbsp;', '1', 'OPPO耳机原装正品OPPO MH133 R9s R11 A57 R7 R9耳机入耳式耳塞式', '2017111915110267361', '178', '0', '40.00', '1', '40.00', '33', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('100', '0', '&nbsp;', '1', '良品铺子猪肉脯100g芝麻味自然片猪肉干零食小吃特产休闲食品', '2017111915110267361', '169', '0', '77.00', '1', '77.00', '34', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('101', '0', null, '1', '陕西精品红富士1kg 80-85mm 苹果 水果', '2017111915110277281', '163', '0', '24.00', '1', '24.00', '215', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('102', '0', null, '1', '陕西精品红富士1kg 80-85mm 苹果 水果', '2017111915110278811', '163', '0', '24.00', '1', '24.00', '215', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('103', '0', null, '1', '良品铺子猪肉脯100g芝麻味自然片猪肉干零食小吃特产休闲食品', '2017111915110291181', '169', '0', '77.00', '1', '77.00', '221', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('104', '0', null, '1', '伊利 安慕希 205g*16盒 原味 常温酸奶 12盒+4盒', '2017112015111737651', '203', '0', '12.00', '1', '12.00', '313', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('105', '0', null, '1', '伊利 安慕希 205g*16盒 原味 常温酸奶 12盒+4盒', '2017112015111737961', '203', '0', '12.00', '1', '12.00', '313', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('106', '0', null, '1', '伊利 安慕希 205g*16盒 原味 常温酸奶 12盒+4盒', '2017112615116453051', '203', '0', '12.00', '1', '12.00', '313', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('107', '0', null, '1', '伊利 安慕希 205g*16盒 原味 常温酸奶 12盒+4盒', '2017112615116481981', '203', '0', '12.00', '1', '12.00', '313', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('108', '0', null, '1', '伊利 安慕希 205g*16盒 原味 常温酸奶 12盒+4盒', '2017112615116498581', '203', '0', '12.00', '1', '12.00', '313', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('109', '0', '&nbsp;黑&nbsp;套餐1&nbsp;1g', '1', 'HP/惠普 暗影精灵 光影精灵3代游戏本 暗夜精灵2Pro笔记本电脑 i7 ', '2017112615116501821', '179', '0', '5456.00', '1', '5456.00', '275', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('110', '0', '&nbsp;黑&nbsp;官方标配&nbsp;1g', '1', 'HP/惠普 暗影精灵 光影精灵3代游戏本 暗夜精灵2Pro笔记本电脑 i7 ', '2017112615116501821', '179', '0', '5465.00', '1', '5465.00', '273', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('111', '0', '&nbsp;白&nbsp;套餐1&nbsp;1g', '1', 'HP/惠普 暗影精灵 光影精灵3代游戏本 暗夜精灵2Pro笔记本电脑 i7 ', '2017112615116501821', '179', '0', '7456.00', '1', '7456.00', '279', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('112', '0', null, '1', '良品铺子猪肉脯100g芝麻味自然片猪肉干零食小吃特产休闲食品', '2017112615116513311', '169', '0', '77.00', '1', '77.00', '221', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('113', '0', null, '28', '伊利 安慕希 205g*16盒 原味 常温酸奶 12盒+4盒', '20171127151173781128', '203', '0', '12.00', '1', '12.00', '313', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('114', '0', null, '1', '阿迪达斯长裤男 2017秋季新款运动裤针织跑步休闲小脚裤子BS2884', '2017120315122583081', '185', '0', '124.00', '1', '124.00', '289', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('115', '0', null, '1', 'HP/惠普 暗影精灵 光影精灵3代游戏本 暗夜精灵2Pro笔记本电脑 i7 ', '2017120515124265731', '179', '0', '5465.00', '1', '5465.00', '273', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('116', '0', null, '1', '德芙巧克力礼盒 香浓黑巧252g碗装 新老包装随机发货', '2017120515124757481', '167', '0', '34.00', '1', '34.00', '219', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('117', '0', null, '1', '良品铺子猪肉脯100g芝麻味自然片猪肉干零食小吃特产休闲食品', '2017120715126117311', '169', '0', '77.00', '1', '77.00', '221', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('118', '0', null, '1', '良品铺子猪肉脯100g芝麻味自然片猪肉干零食小吃特产休闲食品', '2017120815127374441', '169', '0', '77.00', '1', '77.00', '221', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('119', '0', null, '1', '良品铺子猪肉脯100g芝麻味自然片猪肉干零食小吃特产休闲食品', '2017120815127374461', '169', '0', '77.00', '1', '77.00', '221', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('120', '0', null, '1', '伊利 安慕希 205g*16盒 原味 常温酸奶 12盒+4盒', '2017121015128767321', '203', '0', '12.00', '1', '12.00', '313', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('121', '0', null, '1', '伊利 安慕希 205g*16盒 原味 常温酸奶 12盒+4盒', '2017121015128768451', '203', '0', '12.00', '1', '12.00', '313', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('122', '0', null, '1', '伊利 安慕希 205g*16盒 原味 常温酸奶 12盒+4盒', '2017121315131443991', '203', '0', '12.00', '1', '12.00', '313', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('123', '0', null, '1', '伊利 安慕希 205g*16盒 原味 常温酸奶 12盒+4盒', '2017121315131444001', '203', '0', '12.00', '1', '12.00', '313', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('124', '0', null, '1', '伊利 安慕希 205g*16盒 原味 常温酸奶 12盒+4盒', '2017121315131445191', '203', '0', '12.00', '1', '12.00', '313', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('125', '0', null, '1', '伊利 安慕希 205g*16盒 原味 常温酸奶 12盒+4盒', '2017121315131448561', '203', '0', '12.00', '1', '12.00', '313', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('126', '0', null, '1', '伊利 安慕希 205g*16盒 原味 常温酸奶 12盒+4盒', '2017121315131448581', '203', '0', '12.00', '1', '12.00', '313', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('127', '0', null, '1', 'HP/惠普 暗影精灵 光影精灵3代游戏本 暗夜精灵2Pro笔记本电脑 i7 ', '2017121315131471331', '179', '0', '5465.00', '1', '5465.00', '273', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('128', '0', '&nbsp;红色&nbsp;x', '1', '阿迪达斯长裤男 2017秋季新款运动裤针织跑步休闲小脚裤子BS2884', '2017121315131760921', '185', '0', '4836.00', '39', '124.00', '54', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('129', '0', '&nbsp;黑&nbsp;官方标配&nbsp;1g', '1', 'HP/惠普 暗影精灵 光影精灵3代游戏本 暗夜精灵2Pro笔记本电脑 i7 ', '2017121315131760921', '179', '0', '437200.00', '80', '5465.00', '53', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('130', '0', '&nbsp;普装&nbsp;16开', '1', '正版 小老虎图书 初等英语3-6级词汇速记手册 天津科学技术出版社', '2017121315131760921', '193', '0', '4994.00', '11', '454.00', '58', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('131', '0', '&nbsp;', '1', '耐夫刀具套装厨房组合全套不锈钢德国菜刀套装家用厨具水果刀套刀', '2017121315131760921', '202', '0', '103662.00', '3', '34554.00', '59', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('132', '0', '&nbsp;', '1', '耐夫刀具套装厨房组合全套不锈钢德国菜刀套装家用厨具水果刀套刀', '2017121315131760921', '202', '0', '34554.00', '1', '34554.00', '71', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('133', '0', '&nbsp;红色&nbsp;x', '1', '阿迪达斯长裤男 2017秋季新款运动裤针织跑步休闲小脚裤子BS2884', '2017121415132416101', '185', '0', '5332.00', '43', '124.00', '54', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('134', '0', '&nbsp;红色&nbsp;x', '1', '阿迪达斯长裤男 2017秋季新款运动裤针织跑步休闲小脚裤子BS2884', '2017121415132417631', '185', '0', '5332.00', '43', '124.00', '54', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('135', '0', '&nbsp;红色&nbsp;x', '1', '阿迪达斯长裤男 2017秋季新款运动裤针织跑步休闲小脚裤子BS2884', '2017121415132417651', '185', '0', '5332.00', '43', '124.00', '54', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('136', '0', '&nbsp;红色&nbsp;x', '1', '阿迪达斯长裤男 2017秋季新款运动裤针织跑步休闲小脚裤子BS2884', '2017121415132417841', '185', '0', '5332.00', '43', '124.00', '54', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('137', '0', '&nbsp;1kg&nbsp;优惠套装1', '1', '伊利 安慕希 205g*16盒 原味 常温酸奶 12盒+4盒', '2017121415132420231', '203', '0', '528.00', '44', '12.00', '55', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('138', '0', '&nbsp;', '1', '美的（Midea）M3-L253C 智能微波炉 光波烧烤', '2017121415132420691', '207', '0', '599.00', '1', '599.00', '76', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('139', '0', '&nbsp;', '1', 'Xiaomi/小米 小米手机Note3 6GB+64GB 亮黑色 双摄智能拍照手机', '2017121415132420691', '209', '0', '12980.00', '4', '3245.00', '49', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('140', '0', '&nbsp;黑&nbsp;官方标配&nbsp;1g', '1', 'HP/惠普 暗影精灵 光影精灵3代游戏本 暗夜精灵2Pro笔记本电脑 i7 ', '2017121715134932391', '179', '0', '519175.00', '95', '5465.00', '53', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('141', '0', '&nbsp;红色&nbsp;x', '1', '阿迪达斯长裤男 2017秋季新款运动裤针织跑步休闲小脚裤子BS2884', '2017121715134932391', '185', '0', '124.00', '1', '124.00', '77', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('142', '0', '&nbsp;', '1', '耐夫刀具套装厨房组合全套不锈钢德国菜刀套装家用厨具水果刀套刀', '2017121715134932391', '201', '0', '69108.00', '2', '34554.00', '78', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('143', '0', '&nbsp;2G&nbsp;16G', '1', '【低至5488元】Apple/苹果iPhone 8 Plus 64G全网通手机苹果8', '2017121715134932391', '170', '0', '10976.00', '2', '5488.00', '79', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('144', '0', '&nbsp;红色&nbsp;x', '1', '阿迪达斯长裤男 2017秋季新款运动裤针织跑步休闲小脚裤子BS2884', '2017121915136450071', '185', '0', '124.00', '1', '124.00', '81', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('145', '0', '&nbsp;黑&nbsp;官方标配&nbsp;1g', '1', 'HP/惠普 暗影精灵 光影精灵3代游戏本 暗夜精灵2Pro笔记本电脑 i7 ', '2017121915136450071', '179', '0', '43720.00', '8', '5465.00', '80', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('146', '0', '&nbsp;', '1', 'OPPO耳机原装正品OPPO MH133 R9s R11 A57 R7 R9耳机入耳式耳塞式', '2017121915136450071', '178', '0', '120.00', '3', '40.00', '74', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('147', '0', null, '1', 'HP/惠普 暗影精灵 光影精灵3代游戏本 暗夜精灵2Pro笔记本电脑 i7 ', '2017121915136476961', '179', '0', '5465.00', '1', '5465.00', '273', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('148', '0', '&nbsp;黑&nbsp;官方标配&nbsp;1g', '1', 'HP/惠普 暗影精灵 光影精灵3代游戏本 暗夜精灵2Pro笔记本电脑 i7 ', '2017121915136477061', '179', '0', '54650.00', '10', '5465.00', '84', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('149', '0', '&nbsp;', '1', '耐夫刀具套装厨房组合全套不锈钢德国菜刀套装家用厨具水果刀套刀', '2017121915136477061', '201', '0', '69108.00', '2', '34554.00', '85', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('150', '0', '&nbsp;', '1', 'Apple iPad mini 4 7.9英寸 平板电脑（128GB WLAN版 MK9P2CH A 银色', '2017121915136477061', '205', '0', '9368.00', '4', '2342.00', '64', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('151', '0', '&nbsp;红色&nbsp;x', '1', '阿迪达斯长裤男 2017秋季新款运动裤针织跑步休闲小脚裤子BS2884', '2017121915136477061', '185', '0', '124.00', '1', '124.00', '83', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('152', '0', '&nbsp;2G&nbsp;16G', '1', '【低至5488元】Apple/苹果iPhone 8 Plus 64G全网通手机苹果8', '2017121915136477061', '170', '0', '16464.00', '3', '5488.00', '82', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('153', '0', null, '1', 'HP/惠普 暗影精灵 光影精灵3代游戏本 暗夜精灵2Pro笔记本电脑 i7 ', '2017121915136504621', '179', '0', '5465.00', '1', '5465.00', '273', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('154', '0', '&nbsp;1kg&nbsp;优惠套装1', '1', '伊利 安慕希 205g*16盒 原味 常温酸奶 12盒+4盒', '2017121915136523761', '203', '0', '12.00', '1', '12.00', '89', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('155', '0', '&nbsp;', '1', '耐夫刀具套装厨房组合全套不锈钢德国菜刀套装家用厨具水果刀套刀', '2017121915136523761', '201', '0', '34554.00', '1', '34554.00', '86', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('156', '0', '&nbsp;普装&nbsp;16开', '1', '正版 小老虎图书 初等英语3-6级词汇速记手册 天津科学技术出版社', '2017121915136523761', '193', '0', '11350.00', '25', '454.00', '58', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('157', '0', '&nbsp;黑&nbsp;官方标配&nbsp;1g', '1', 'HP/惠普 暗影精灵 光影精灵3代游戏本 暗夜精灵2Pro笔记本电脑 i7 ', '2017121915136523761', '179', '0', '10930.00', '2', '5465.00', '88', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('158', '0', '&nbsp;红色&nbsp;x', '1', '阿迪达斯长裤男 2017秋季新款运动裤针织跑步休闲小脚裤子BS2884', '2017121915136523761', '185', '0', '620.00', '5', '124.00', '87', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('159', '0', '&nbsp;', '1', '耐夫刀具套装厨房组合全套不锈钢德国菜刀套装家用厨具水果刀套刀', '2017121915136689621', '201', '0', '276432.00', '8', '34554.00', '94', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('160', '0', '&nbsp;1kg&nbsp;优惠套装1', '1', '伊利 安慕希 205g*16盒 原味 常温酸奶 12盒+4盒', '2017121915136689621', '203', '0', '228.00', '19', '12.00', '95', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('161', '0', '&nbsp;普装&nbsp;16开', '1', '正版 小老虎图书 初等英语3-6级词汇速记手册 天津科学技术出版社', '2017121915136689621', '193', '0', '6810.00', '15', '454.00', '91', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('162', '0', '&nbsp;', '1', '新农哥五香花生136g 坚果炒货小吃 办公零食', '2017121915136689621', '165', '0', '36.00', '4', '9.00', '93', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('163', '0', '&nbsp;', '1', '费列罗巧克力零食48粒 3*16条 休闲零食 香浓美味', '2017121915136689621', '166', '0', '330.00', '11', '30.00', '57', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('164', '0', '&nbsp;红色&nbsp;x', '1', '阿迪达斯长裤男 2017秋季新款运动裤针织跑步休闲小脚裤子BS2884', '2017121915136689621', '185', '0', '1984.00', '16', '124.00', '90', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('165', '0', '&nbsp;4G&nbsp;16G', '1', 'Huawei/华为 Mate 10 4G+64G年度旗舰手机', '2017121915136689621', '173', '0', '21392.00', '7', '3056.00', '61', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('166', '0', '&nbsp;', '1', '永赢一路发一苏宁银车挂 银色', '2017121915136689621', '208', '0', '138.00', '6', '23.00', '68', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('167', '0', '&nbsp;黑&nbsp;官方标配&nbsp;1g', '1', 'HP/惠普 暗影精灵 光影精灵3代游戏本 暗夜精灵2Pro笔记本电脑 i7 ', '2017121915136689621', '179', '0', '158485.00', '29', '5465.00', '92', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('168', '0', '&nbsp;', '1', 'OPPO耳机原装正品OPPO MH133 R9s R11 A57 R7 R9耳机入耳式耳塞式', '2017121915136689621', '178', '0', '120.00', '3', '40.00', '96', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('169', '0', '&nbsp;', '1', '罗辑思维官方 今天故事书 作文宝典 书书籍畅销书 亲子图书 罗胖跨年演讲推荐书童书 正版', '2017121915136689621', '189', '0', '468.00', '2', '234.00', '97', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('170', '0', '&nbsp;', '1', 'ZARA 新品 男装 细针美丽诺针织衫 00693300500', '2017121915136689621', '181', '0', '223.00', '1', '223.00', '98', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('171', '0', '&nbsp;普装&nbsp;16开', '1', '正版 小老虎图书 初等英语3-6级词汇速记手册 天津科学技术出版社', '2017121915136740181', '193', '0', '454.00', '1', '454.00', '100', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('172', '0', '&nbsp;红色&nbsp;x', '1', '阿迪达斯长裤男 2017秋季新款运动裤针织跑步休闲小脚裤子BS2884', '2017121915136740181', '185', '0', '248.00', '2', '124.00', '101', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('173', '0', '&nbsp;1kg&nbsp;优惠套装1', '1', '伊利 安慕希 205g*16盒 原味 常温酸奶 12盒+4盒', '2017121915136740181', '203', '0', '12.00', '1', '12.00', '102', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('174', '0', '&nbsp;黑&nbsp;官方标配&nbsp;1g', '1', 'HP/惠普 暗影精灵 光影精灵3代游戏本 暗夜精灵2Pro笔记本电脑 i7 ', '2017121915136740181', '179', '0', '16395.00', '3', '5465.00', '99', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('175', '0', '&nbsp;', '1', 'Apple iPad mini 4 7.9英寸 平板电脑（128GB WLAN版 MK9P2CH A 银色', '2017121915136758161', '205', '0', '2342.00', '1', '2342.00', '112', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('176', '0', '&nbsp;', '1', '耐夫刀具套装厨房组合全套不锈钢德国菜刀套装家用厨具水果刀套刀', '2017121915136758161', '201', '0', '138216.00', '4', '34554.00', '111', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('177', '0', '&nbsp;', '1', '新农哥五香花生136g 坚果炒货小吃 办公零食', '2017121915136758161', '165', '0', '9.00', '1', '9.00', '110', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('178', '0', '&nbsp;1kg&nbsp;优惠套装1', '1', '伊利 安慕希 205g*16盒 原味 常温酸奶 12盒+4盒', '2017121915136758161', '203', '0', '84.00', '7', '12.00', '109', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('179', '0', '&nbsp;', '1', 'OPPO耳机原装正品OPPO MH133 R9s R11 A57 R7 R9耳机入耳式耳塞式', '2017121915136758161', '178', '0', '40.00', '1', '40.00', '108', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('180', '0', '&nbsp;', '1', 'ZARA 新品 男装 细针美丽诺针织衫 00693300500', '2017121915136758161', '181', '0', '446.00', '2', '223.00', '106', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('181', '0', '&nbsp;4G&nbsp;16G', '1', 'Huawei/华为 Mate 10 4G+64G年度旗舰手机', '2017121915136758161', '173', '0', '12224.00', '4', '3056.00', '107', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('182', '0', '&nbsp;黑&nbsp;官方标配&nbsp;1g', '1', 'HP/惠普 暗影精灵 光影精灵3代游戏本 暗夜精灵2Pro笔记本电脑 i7 ', '2017121915136758161', '179', '0', '76510.00', '14', '5465.00', '105', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('183', '0', '&nbsp;', '1', '费列罗巧克力零食48粒 3*16条 休闲零食 香浓美味', '2017121915136758161', '166', '0', '210.00', '7', '30.00', '104', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('184', '0', '&nbsp;红色&nbsp;x', '1', '阿迪达斯长裤男 2017秋季新款运动裤针织跑步休闲小脚裤子BS2884', '2017121915136758161', '185', '0', '1240.00', '10', '124.00', '103', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('185', '0', '&nbsp;', '1', '永赢一路发一苏宁银车挂 银色', '2017121915136758161', '208', '0', '69.00', '3', '23.00', '113', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('186', '0', '&nbsp;', '1', '永赢一路发一苏宁银车挂 银色', '2017121915136824591', '208', '0', '23.00', '1', '23.00', '122', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('187', '0', '&nbsp;', '1', '美的（Midea）M3-L253C 智能微波炉 光波烧烤', '2017121915136824591', '207', '0', '599.00', '1', '599.00', '121', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('188', '0', '&nbsp;', '1', 'ZARA 新品 男装 细针美丽诺针织衫 00693300500', '2017121915136824591', '181', '0', '223.00', '1', '223.00', '117', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('189', '0', '&nbsp;红色&nbsp;x', '1', '阿迪达斯长裤男 2017秋季新款运动裤针织跑步休闲小脚裤子BS2884', '2017121915136824591', '185', '0', '496.00', '4', '124.00', '118', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('190', '0', '&nbsp;', '1', '耐夫刀具套装厨房组合全套不锈钢德国菜刀套装家用厨具水果刀套刀', '2017121915136824591', '201', '0', '103662.00', '3', '34554.00', '120', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('191', '0', '&nbsp;', '1', 'Apple iPad mini 4 7.9英寸 平板电脑（128GB WLAN版 MK9P2CH A 银色', '2017121915136824591', '205', '0', '2342.00', '1', '2342.00', '119', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('192', '0', '&nbsp;黑&nbsp;官方标配&nbsp;1g', '1', 'HP/惠普 暗影精灵 光影精灵3代游戏本 暗夜精灵2Pro笔记本电脑 i7 ', '2017121915136824591', '179', '0', '16395.00', '3', '5465.00', '116', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('193', '0', '&nbsp;普装&nbsp;16开', '1', '正版 小老虎图书 初等英语3-6级词汇速记手册 天津科学技术出版社', '2017121915136824591', '193', '0', '1362.00', '3', '454.00', '115', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('194', '0', '&nbsp;1kg&nbsp;优惠套装1', '1', '伊利 安慕希 205g*16盒 原味 常温酸奶 12盒+4盒', '2017121915136824591', '203', '0', '24.00', '2', '12.00', '114', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('195', '0', '&nbsp;', '1', '费列罗巧克力零食48粒 3*16条 休闲零食 香浓美味', '2017121915136825691', '166', '0', '30.00', '1', '30.00', '126', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('196', '0', '&nbsp;2G&nbsp;16G', '1', 'Xiaomi/小米 红米手机4A 超长待机双卡智能手机', '2017121915136825691', '172', '0', '10920.00', '2', '5460.00', '125', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('197', '0', '&nbsp;', '1', 'OPPO耳机原装正品OPPO MH133 R9s R11 A57 R7 R9耳机入耳式耳塞式', '2017121915136825691', '178', '0', '40.00', '1', '40.00', '124', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('198', '0', '&nbsp;黑&nbsp;官方标配&nbsp;1g', '1', 'HP/惠普 暗影精灵 光影精灵3代游戏本 暗夜精灵2Pro笔记本电脑 i7 ', '2017121915136825691', '179', '0', '16395.00', '3', '5465.00', '123', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('199', '0', '&nbsp;红色&nbsp;x', '1', '阿迪达斯长裤男 2017秋季新款运动裤针织跑步休闲小脚裤子BS2884', '2017121915136827101', '185', '0', '124.00', '1', '124.00', '128', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('200', '0', '&nbsp;黑&nbsp;官方标配&nbsp;1g', '1', 'HP/惠普 暗影精灵 光影精灵3代游戏本 暗夜精灵2Pro笔记本电脑 i7 ', '2017121915136827101', '179', '0', '5465.00', '1', '5465.00', '127', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('201', '0', ' 黑 官方标配 1g', '1', 'HP/惠普 暗影精灵 光影精灵3代游戏本 暗夜精灵2Pro笔记本电脑 i7 ', '2017122015137423151', '179', '0', '16395.00', '3', '5465.00', '129', '0', null, '0', '0', '0');
INSERT INTO `yershop_sales` VALUES ('202', '0', '&nbsp;红色&nbsp;x', '1', '阿迪达斯长裤男 2017秋季新款运动裤针织跑步休闲小脚裤子BS2884', '2018032315217631001', '185', '0', '1488.00', '12', '124.00', '135', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('203', '0', '&nbsp;', '1', '耐夫刀具套装厨房组合全套不锈钢德国菜刀套装家用厨具水果刀套刀', '2018032315217631001', '201', '0', '207324.00', '6', '34554.00', '133', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('204', '0', '&nbsp;', '1', '德芙巧克力礼盒 香浓黑巧252g碗装 新老包装随机发货', '2018032315217631001', '167', '0', '238.00', '7', '34.00', '75', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('205', '0', '&nbsp;黑&nbsp;官方标配&nbsp;1g', '1', 'HP/惠普 暗影精灵 光影精灵3代游戏本 暗夜精灵2Pro笔记本电脑 i7 ', '2018032315217631001', '179', '0', '136625.00', '25', '5465.00', '130', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('206', '0', '&nbsp;1kg&nbsp;优惠套装1', '1', '澳大利亚进口 德亚全脂牛奶（澳洲甄选）250ml*24/箱', '2018032315217631001', '210', '0', '23.00', '1', '23.00', '136', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('207', '0', '&nbsp;', '1', '陕西精品红富士1kg 80-85mm 苹果 水果', '2018032315217631001', '163', '0', '24.00', '1', '24.00', '137', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('208', '0', '&nbsp;', '1', 'Apple iPad mini 4 7.9英寸 平板电脑（128GB WLAN版 MK9P2CH A 银色', '2018032315217631001', '205', '0', '2342.00', '1', '2342.00', '138', '0', null, '0', null, '0');
INSERT INTO `yershop_sales` VALUES ('209', '0', '&nbsp;', '1', 'Apple iPad mini 4 7.9英寸 平板电脑（128GB WLAN版 MK9P2CH A 银色', '2018032315217631181', '205', '0', '2342.00', '1', '2342.00', '139', '0', null, '0', null, '0');

-- ----------------------------
-- Table structure for yershop_score_log
-- ----------------------------
DROP TABLE IF EXISTS `yershop_score_log`;
CREATE TABLE `yershop_score_log` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id,自增主键',
  `score` text COMMENT '积分值',
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1+,0-',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  `content` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yershop_score_log
-- ----------------------------
INSERT INTO `yershop_score_log` VALUES ('1', '10', '1', '1', '1335456465', '120', '购物');
INSERT INTO `yershop_score_log` VALUES ('2', '10', '1', '1', '1335456465', '120', '购物');
INSERT INTO `yershop_score_log` VALUES ('3', '10', '1', '1', '1335456465', '120', '购物');
INSERT INTO `yershop_score_log` VALUES ('4', '10', '1', '1', '1335456465', '120', '购物');
INSERT INTO `yershop_score_log` VALUES ('5', '10', '1', '1', '1335456465', '120', '购物');
INSERT INTO `yershop_score_log` VALUES ('6', '10', '1', '1', '1335456465', '120', '购物');
INSERT INTO `yershop_score_log` VALUES ('7', '10', '1', '1', '1335456465', '120', '购物');
INSERT INTO `yershop_score_log` VALUES ('8', '10', '1', '1', '1335456465', '120', '购物');
INSERT INTO `yershop_score_log` VALUES ('9', '10', '1', '1', '1335456465', '120', '购物');
INSERT INTO `yershop_score_log` VALUES ('10', '10', '1', '1', '1335456465', '120', '购物');
INSERT INTO `yershop_score_log` VALUES ('11', '10', '1', '1', '1335456465', '120', '购物');
INSERT INTO `yershop_score_log` VALUES ('12', '10', '1', '1', '1335456465', '120', '购物');
INSERT INTO `yershop_score_log` VALUES ('13', '10', '1', '1', '1335456465', '120', '购物');
INSERT INTO `yershop_score_log` VALUES ('14', '10', '1', '1', '1335456465', '120', '购物');
INSERT INTO `yershop_score_log` VALUES ('15', '10', '1', '1', '1335456465', '120', '购物');
INSERT INTO `yershop_score_log` VALUES ('16', '10', '1', '1', '1335456465', '120', '购物');
INSERT INTO `yershop_score_log` VALUES ('17', '10', '1', '1', '1335456465', '120', '购物');
INSERT INTO `yershop_score_log` VALUES ('18', '10', '1', '1', '1335456465', '120', '购物');
INSERT INTO `yershop_score_log` VALUES ('19', '10', '1', '1', '1335456465', '120', '购物');
INSERT INTO `yershop_score_log` VALUES ('20', '10', '1', '1', '1335456465', '120', '购物');
INSERT INTO `yershop_score_log` VALUES ('21', '10', '1', '1', '1335456465', '120', '购物');
INSERT INTO `yershop_score_log` VALUES ('22', '10', '1', '1', '1335456465', '120', '购物');
INSERT INTO `yershop_score_log` VALUES ('23', '10', '1', '1', '1335456465', '120', '购物');
INSERT INTO `yershop_score_log` VALUES ('24', '34', '1', '0', '3124324423', '10', '消费');
INSERT INTO `yershop_score_log` VALUES ('25', '12', '1', '0', '123234230', '30', '消费');
INSERT INTO `yershop_score_log` VALUES ('26', '12', '1', '0', '123234230', '30', '消费');
INSERT INTO `yershop_score_log` VALUES ('27', '12', '1', '0', '123234230', '30', '消费');
INSERT INTO `yershop_score_log` VALUES ('28', '12', '1', '0', '123234230', '30', '消费');
INSERT INTO `yershop_score_log` VALUES ('29', '12', '1', '0', '123234230', '30', '消费');
INSERT INTO `yershop_score_log` VALUES ('30', '12', '1', '0', '123234230', '30', '消费');
INSERT INTO `yershop_score_log` VALUES ('31', '12', '1', '0', '123234230', '30', '消费');
INSERT INTO `yershop_score_log` VALUES ('32', '12', '1', '0', '123234230', '30', '消费');
INSERT INTO `yershop_score_log` VALUES ('33', '12', '1', '0', '123234230', '30', '消费');
INSERT INTO `yershop_score_log` VALUES ('34', '12', '1', '0', '123234230', '30', '消费');
INSERT INTO `yershop_score_log` VALUES ('35', '12', '1', '0', '123234230', '30', '消费');
INSERT INTO `yershop_score_log` VALUES ('36', '12', '1', '0', '123234230', '30', '消费');
INSERT INTO `yershop_score_log` VALUES ('37', '12', '1', '0', '123234230', '30', '消费');
INSERT INTO `yershop_score_log` VALUES ('38', '12', '1', '0', '123234230', '30', '消费');
INSERT INTO `yershop_score_log` VALUES ('39', '12', '1', '0', '123234230', '30', '消费');
INSERT INTO `yershop_score_log` VALUES ('40', '12', '1', '0', '123234230', '30', '消费');
INSERT INTO `yershop_score_log` VALUES ('41', '12', '1', '0', '123234230', '30', '消费');
INSERT INTO `yershop_score_log` VALUES ('42', '12', '1', '0', '123234230', '30', '消费');
INSERT INTO `yershop_score_log` VALUES ('43', '12', '1', '0', '123234230', '30', '消费');
INSERT INTO `yershop_score_log` VALUES ('44', '12', '1', '0', '123234230', '30', '消费');
INSERT INTO `yershop_score_log` VALUES ('45', '12', '1', '0', '123234230', '30', '消费');
INSERT INTO `yershop_score_log` VALUES ('46', '12', '1', '0', '123234230', '30', '消费');

-- ----------------------------
-- Table structure for yershop_service
-- ----------------------------
DROP TABLE IF EXISTS `yershop_service`;
CREATE TABLE `yershop_service` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `goodid` int(10) unsigned NOT NULL DEFAULT '0',
  `num` int(10) unsigned NOT NULL DEFAULT '0',
  `orderid` varchar(225) NOT NULL DEFAULT '' COMMENT '订单号',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(225) NOT NULL DEFAULT '',
  `reason` varchar(225) NOT NULL DEFAULT '',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `assistant` int(10) unsigned NOT NULL DEFAULT '0',
  `backinfo` varchar(225) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='售后服务表';

-- ----------------------------
-- Records of yershop_service
-- ----------------------------

-- ----------------------------
-- Table structure for yershop_sku
-- ----------------------------
DROP TABLE IF EXISTS `yershop_sku`;
CREATE TABLE `yershop_sku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(225) DEFAULT NULL,
  `goods_id` int(11) NOT NULL,
  `origprice` decimal(10,0) NOT NULL DEFAULT '0',
  `price` decimal(50,2) NOT NULL DEFAULT '0.00',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sales` int(1) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `hits` int(11) NOT NULL DEFAULT '0',
  `path` varchar(64) DEFAULT '',
  `attributes` text,
  `num` int(10) NOT NULL DEFAULT '999999',
  `cover_id` int(10) NOT NULL DEFAULT '0',
  `mprice` int(10) NOT NULL DEFAULT '0',
  `j_price` decimal(50,2) NOT NULL DEFAULT '0.00',
  `profit` decimal(50,2) NOT NULL DEFAULT '0.00',
  `number` int(10) NOT NULL DEFAULT '0' COMMENT '库存编号',
  `upc` varchar(225) DEFAULT NULL,
  `code` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=334 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yershop_sku
-- ----------------------------
INSERT INTO `yershop_sku` VALUES ('220', '无', '168', '0', '99.00', '0000-00-00 00:00:00', '0', '1', '0', '168', null, '10', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('218', '无', '166', '0', '30.00', '0000-00-00 00:00:00', '0', '1', '0', '166', null, '23', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('219', '无', '167', '0', '34.00', '0000-00-00 00:00:00', '0', '1', '0', '167', null, '333', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('217', '无', '165', '0', '9.00', '0000-00-00 00:00:00', '0', '1', '0', '165', null, '234', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('216', '无', '164', '0', '20.00', '0000-00-00 00:00:00', '0', '1', '0', '164', null, '122', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('215', '无', '163', '0', '24.00', '0000-00-00 00:00:00', '0', '1', '0', '163', null, '666', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('214', '无', '162', '0', '39.00', '0000-00-00 00:00:00', '0', '1', '0', '162', null, '100', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('221', '无', '169', '0', '77.00', '0000-00-00 00:00:00', '0', '1', '0', '169', null, '77', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('233', '3G、64G', '170', '0', '7464.00', '0000-00-00 00:00:00', '0', '1', '0', '75,89', null, '76', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('232', '3G、32G', '170', '0', '6479.00', '0000-00-00 00:00:00', '0', '1', '0', '75,88', null, '47', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('231', '3G、16G', '170', '0', '6456.00', '0000-00-00 00:00:00', '0', '1', '0', '75,87', null, '56', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('230', '2G、64G', '170', '0', '5654.00', '0000-00-00 00:00:00', '0', '1', '0', '74,89', null, '34', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('229', '2G、32G', '170', '0', '5654.00', '0000-00-00 00:00:00', '0', '1', '0', '74,88', null, '98', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('228', '2G、16G', '170', '0', '5488.00', '0000-00-00 00:00:00', '0', '1', '0', '74,87', null, '10', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('234', '2G、16G', '171', '0', '5675.00', '0000-00-00 00:00:00', '0', '1', '0', '74,87', null, '5675', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('235', '2G、32G', '171', '0', '65567.00', '0000-00-00 00:00:00', '0', '1', '0', '74,88', null, '5676', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('236', '2G、64G', '171', '0', '5467.00', '0000-00-00 00:00:00', '0', '1', '0', '74,89', null, '56765', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('237', '4G、16G', '171', '0', '56765.00', '0000-00-00 00:00:00', '0', '1', '0', '76,87', null, '5675', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('238', '4G、32G', '171', '0', '56765.00', '0000-00-00 00:00:00', '0', '1', '0', '76,88', null, '56765', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('239', '4G、64G', '171', '0', '567657.00', '0000-00-00 00:00:00', '0', '1', '0', '76,89', null, '56765', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('240', '2G、16G', '172', '0', '5460.00', '0000-00-00 00:00:00', '0', '1', '0', '74,87', null, '50', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('241', '3G、16G', '172', '0', '4560.00', '0000-00-00 00:00:00', '0', '1', '0', '75,87', null, '40', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('242', '4G、16G', '172', '0', '4560.00', '0000-00-00 00:00:00', '0', '1', '0', '76,87', null, '50', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('243', '6G、16G', '172', '0', '5564.00', '0000-00-00 00:00:00', '0', '1', '0', '77,87', null, '45', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('244', '4G、16G', '173', '0', '3056.00', '0000-00-00 00:00:00', '0', '1', '0', '76,87', null, '345', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('245', '4G、32G', '173', '0', '3453.00', '0000-00-00 00:00:00', '0', '1', '0', '76,88', null, '345', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('246', '4G、64G', '173', '0', '5475.00', '0000-00-00 00:00:00', '0', '1', '0', '76,89', null, '4564', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('247', '2G、16G', '174', '0', '3455.00', '0000-00-00 00:00:00', '0', '1', '0', '74,87', null, '345', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('248', '2G、32G', '174', '0', '3454.00', '0000-00-00 00:00:00', '0', '1', '0', '74,88', null, '34535', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('249', '2G、64G', '174', '0', '34543.00', '0000-00-00 00:00:00', '0', '1', '0', '74,89', null, '3', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('250', '红色、x', '175', '0', '435.00', '0000-00-00 00:00:00', '0', '1', '0', '63,66', null, '546', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('251', '红色、xl', '175', '0', '4564.00', '0000-00-00 00:00:00', '0', '1', '0', '63,67', null, '456', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('252', '红色、xxl', '175', '0', '4564.00', '0000-00-00 00:00:00', '0', '1', '0', '63,68', null, '456', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('253', '蓝色、x', '175', '0', '546.00', '0000-00-00 00:00:00', '0', '1', '0', '64,66', null, '546', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('254', '蓝色、xl', '175', '0', '5465.00', '0000-00-00 00:00:00', '0', '1', '0', '64,67', null, '546', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('255', '蓝色、xxl', '175', '0', '456.00', '0000-00-00 00:00:00', '0', '1', '0', '64,68', null, '4565', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('256', '红色、xl', '176', '0', '567.00', '0000-00-00 00:00:00', '0', '1', '0', '63,67', null, '678', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('257', '红色、xxl', '176', '0', '6576.00', '0000-00-00 00:00:00', '0', '1', '0', '63,68', null, '7897', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('258', '白色、xl', '176', '0', '78987.00', '0000-00-00 00:00:00', '0', '1', '0', '69,67', null, '789', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('259', '白色、xxl', '176', '0', '7897.00', '0000-00-00 00:00:00', '0', '1', '0', '69,68', null, '7897', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('260', '黑、官方标配', '177', '0', '456.00', '0000-00-00 00:00:00', '0', '1', '0', '91,95', null, '456', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('261', '黑、套餐1', '177', '0', '456.00', '0000-00-00 00:00:00', '0', '1', '0', '91,96', null, '456', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('262', '黑、套餐2', '177', '0', '456.00', '0000-00-00 00:00:00', '0', '1', '0', '91,97', null, '456', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('263', '白、官方标配', '177', '0', '456.00', '0000-00-00 00:00:00', '0', '1', '0', '92,95', null, '456', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('264', '白、套餐1', '177', '0', '4565.00', '0000-00-00 00:00:00', '0', '1', '0', '92,96', null, '456', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('265', '白、套餐2', '177', '0', '45645.00', '0000-00-00 00:00:00', '0', '1', '0', '92,97', null, '45654', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('266', '金、官方标配', '177', '0', '45654.00', '0000-00-00 00:00:00', '0', '1', '0', '93,95', null, '456', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('267', '金、套餐1', '177', '0', '45654.00', '0000-00-00 00:00:00', '0', '1', '0', '93,96', null, '456', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('268', '金、套餐2', '177', '0', '4564.00', '0000-00-00 00:00:00', '0', '1', '0', '93,97', null, '4565', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('269', '无', '178', '0', '40.00', '0000-00-00 00:00:00', '0', '1', '0', '178', null, '100', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('274', '黑、官方标配、2g', '179', '0', '3456.00', '0000-00-00 00:00:00', '0', '1', '0', '91,95,74', null, '654', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('273', '黑、官方标配、1g', '179', '0', '5465.00', '0000-00-00 00:00:00', '0', '1', '0', '91,95,101', null, '546', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('275', '黑、套餐1、1g', '179', '0', '5456.00', '0000-00-00 00:00:00', '0', '1', '0', '91,96,101', null, '645', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('276', '黑、套餐1、2g', '179', '0', '4456.00', '0000-00-00 00:00:00', '0', '1', '0', '91,96,74', null, '645', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('277', '白、官方标配、1g', '179', '0', '4456.00', '0000-00-00 00:00:00', '0', '1', '0', '92,95,101', null, '645', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('278', '白、官方标配、2g', '179', '0', '6456.00', '0000-00-00 00:00:00', '0', '1', '0', '92,95,74', null, '54', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('279', '白、套餐1、1g', '179', '0', '7456.00', '0000-00-00 00:00:00', '0', '1', '0', '92,96,101', null, '456', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('280', '白、套餐1、2g', '179', '0', '84564.00', '0000-00-00 00:00:00', '0', '1', '0', '92,96,74', null, '456', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('281', '无', '180', '0', '34.00', '0000-00-00 00:00:00', '0', '1', '0', '180', null, '122', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('282', '无', '181', '0', '223.00', '0000-00-00 00:00:00', '0', '1', '0', '181', null, '23', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('283', '无', '182', '0', '233.00', '0000-00-00 00:00:00', '0', '1', '0', '182', null, '123', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('284', '无', '183', '0', '234.00', '0000-00-00 00:00:00', '0', '1', '0', '183', null, '234', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('285', '蓝色、xl', '184', '0', '234.00', '0000-00-00 00:00:00', '0', '1', '0', '64,67', null, '32', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('286', '蓝色、xxl', '184', '0', '342.00', '0000-00-00 00:00:00', '0', '1', '0', '64,68', null, '23', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('287', '白色、xl', '184', '0', '234.00', '0000-00-00 00:00:00', '0', '1', '0', '69,67', null, '324', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('288', '白色、xxl', '184', '0', '343.00', '0000-00-00 00:00:00', '0', '1', '0', '69,68', null, '32324', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('289', '红色、x', '185', '0', '124.00', '0000-00-00 00:00:00', '0', '1', '0', '63,66', null, '567', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('290', '红色、xl', '185', '0', '235.00', '0000-00-00 00:00:00', '0', '1', '0', '63,67', null, '567', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('291', '蓝色、x', '185', '0', '534.00', '0000-00-00 00:00:00', '0', '1', '0', '64,66', null, '675', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('292', '蓝色、xl', '185', '0', '765.00', '0000-00-00 00:00:00', '0', '1', '0', '64,67', null, '567', '337', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('293', '无', '186', '0', '234.00', '0000-00-00 00:00:00', '0', '1', '0', '186', null, '234', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('294', '无', '187', '0', '234.00', '0000-00-00 00:00:00', '0', '1', '0', '187', null, '234', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('295', '无', '188', '0', '234.00', '0000-00-00 00:00:00', '0', '1', '0', '188', null, '234', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('296', '无', '189', '0', '234.00', '0000-00-00 00:00:00', '0', '1', '0', '189', null, '234', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('297', '无', '190', '0', '34.00', '0000-00-00 00:00:00', '0', '1', '0', '190', null, '324', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('298', '无', '191', '0', '123.00', '0000-00-00 00:00:00', '0', '1', '0', '191', null, '123', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('299', '无', '192', '0', '213.00', '0000-00-00 00:00:00', '0', '1', '0', '192', null, '123', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('300', '普装、16开', '193', '0', '454.00', '0000-00-00 00:00:00', '0', '1', '0', '113,116', null, '345', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('301', '普装、32开', '193', '0', '345.00', '0000-00-00 00:00:00', '0', '1', '0', '113,117', null, '345', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('302', '精装、16开', '193', '0', '345.00', '0000-00-00 00:00:00', '0', '1', '0', '114,116', null, '345', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('303', '精装、32开', '193', '0', '345.00', '0000-00-00 00:00:00', '0', '1', '0', '114,117', null, '345', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('304', '无', '194', '0', '434.00', '0000-00-00 00:00:00', '0', '1', '0', '194', null, '324', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('305', '无', '195', '0', '324.00', '0000-00-00 00:00:00', '0', '1', '0', '195', null, '234', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('306', '无', '196', '0', '324.00', '0000-00-00 00:00:00', '0', '1', '0', '196', null, '234', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('307', '无', '197', '0', '234.00', '0000-00-00 00:00:00', '0', '1', '0', '197', null, '234', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('308', '无', '198', '0', '345.00', '0000-00-00 00:00:00', '0', '1', '0', '198', null, '435', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('309', '无', '199', '0', '3245.00', '0000-00-00 00:00:00', '0', '1', '0', '199', null, '234', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('310', '无', '200', '0', '234.00', '0000-00-00 00:00:00', '0', '1', '0', '200', null, '234', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('311', '无', '201', '0', '34554.00', '0000-00-00 00:00:00', '0', '1', '0', '201', null, '345', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('312', '无', '202', '0', '34554.00', '0000-00-00 00:00:00', '0', '1', '0', '202', null, '345', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('313', '1kg、优惠套装1', '203', '0', '12.00', '0000-00-00 00:00:00', '0', '1', '0', '80,83', null, '56765', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('314', '1kg、优惠套装2', '203', '0', '18.00', '0000-00-00 00:00:00', '0', '1', '0', '80,84', null, '567', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('315', '2kg、优惠套装1', '203', '0', '20.00', '0000-00-00 00:00:00', '0', '1', '0', '81,83', null, '567', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('316', '2kg、优惠套装2', '203', '0', '26.00', '0000-00-00 00:00:00', '0', '1', '0', '81,84', null, '5675', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('317', '无', '204', '0', '7213.00', '0000-00-00 00:00:00', '0', '1', '0', '204', null, '123', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('318', '无', '205', '0', '2342.00', '0000-00-00 00:00:00', '0', '1', '0', '205', null, '23', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('319', '无', '206', '0', '234.00', '0000-00-00 00:00:00', '0', '1', '0', '206', null, '23432', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('320', '无', '207', '0', '599.00', '0000-00-00 00:00:00', '0', '1', '0', '207', null, '344', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('321', '无', '208', '0', '23.00', '0000-00-00 00:00:00', '0', '1', '0', '208', null, '234', '0', '0', '0.00', '0.00', '0', null, null);
INSERT INTO `yershop_sku` VALUES ('322', '无', '209', '0', '3245.00', '0000-00-00 00:00:00', '0', '1', '0', '209', null, '234', '0', '0', '0.00', '0.00', '0', null, null);

-- ----------------------------
-- Table structure for yershop_slide
-- ----------------------------
DROP TABLE IF EXISTS `yershop_slide`;
CREATE TABLE `yershop_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `title` varchar(225) DEFAULT '' COMMENT '标题',
  `url` varchar(225) DEFAULT '' COMMENT '链接',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '外链',
  `place` tinyint(30) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许发布内容',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '数据状态',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类图标',
  `sort` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='幻灯片图片储存表';

-- ----------------------------
-- Records of yershop_slide
-- ----------------------------
INSERT INTO `yershop_slide` VALUES ('16', 'linin', 'goods/lists?id=52', '0', '0', '0', '0', '1', '207', '0');
INSERT INTO `yershop_slide` VALUES ('17', '43534', 'goods/lists?id=52', '0', '0', '0', '0', '1', '208', '0');

-- ----------------------------
-- Table structure for yershop_sms
-- ----------------------------
DROP TABLE IF EXISTS `yershop_sms`;
CREATE TABLE `yershop_sms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `mobile` varchar(225) NOT NULL DEFAULT '' COMMENT '手机号码',
  `content` varchar(225) NOT NULL DEFAULT '' COMMENT '短信内容',
  `extcode` varchar(225) NOT NULL DEFAULT '' COMMENT '扩展子号',
  `signtag` varchar(225) NOT NULL DEFAULT '' COMMENT '签名',
  `uid` varchar(225) NOT NULL DEFAULT '' COMMENT '用户id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发送时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `tempid` varchar(255) NOT NULL DEFAULT '' COMMENT '模板编号',
  `group` tinyint(2) NOT NULL DEFAULT '0' COMMENT '分组1-验证2-通知',
  `other` tinyint(2) NOT NULL DEFAULT '0' COMMENT '备用',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态1-有效2-过期3-验证',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='短信记录表';

-- ----------------------------
-- Records of yershop_sms
-- ----------------------------

-- ----------------------------
-- Table structure for yershop_specs
-- ----------------------------
DROP TABLE IF EXISTS `yershop_specs`;
CREATE TABLE `yershop_specs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(64) CHARACTER SET utf8 NOT NULL,
  `sort` int(10) NOT NULL DEFAULT '0',
  `model_id` int(10) NOT NULL DEFAULT '0',
  `type` int(2) DEFAULT '0',
  `value` varchar(225) CHARACTER SET utf8 DEFAULT NULL,
  `is_show` int(2) NOT NULL DEFAULT '1',
  `short_title` varchar(225) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of yershop_specs
-- ----------------------------
INSERT INTO `yershop_specs` VALUES ('62', '0', '颜色', '0', '42', '0', '红色、蓝色、白色', '1', null);
INSERT INTO `yershop_specs` VALUES ('63', '62', '红色', '0', '42', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('64', '62', '蓝色', '0', '42', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('65', '0', '尺码', '0', '42', '0', 'x、xl、xxl', '1', null);
INSERT INTO `yershop_specs` VALUES ('66', '65', 'x', '0', '42', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('67', '65', 'xl', '0', '42', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('68', '65', 'xxl', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('69', '62', '白色', '0', '43', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('90', '0', '颜色', '0', '44', '0', '黑、白、金', '1', null);
INSERT INTO `yershop_specs` VALUES ('71', '70', '黑色', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('72', '70', '银色', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('73', '0', '内存', '0', '43', '0', '2G、3G、4G、6G、8G', '1', null);
INSERT INTO `yershop_specs` VALUES ('74', '73', '2G', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('75', '73', '3G', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('76', '73', '4G', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('77', '73', '6G', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('78', '73', '8G', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('79', '0', '克重', '0', '47', '0', '1kg、2kg', '1', null);
INSERT INTO `yershop_specs` VALUES ('80', '79', '1kg', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('81', '79', '2kg', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('82', '0', '优惠套装', '0', '47', '0', '优惠套装1、优惠套装2、优惠套装3', '1', null);
INSERT INTO `yershop_specs` VALUES ('83', '82', '优惠套装1', '0', '47', '0', '', '1', null);
INSERT INTO `yershop_specs` VALUES ('84', '82', '优惠套装2', '0', '47', '0', '', '1', null);
INSERT INTO `yershop_specs` VALUES ('85', '82', '优惠套装3', '0', '47', '0', '', '1', null);
INSERT INTO `yershop_specs` VALUES ('86', '0', '存储容量', '0', '43', '0', '16G、32G、64G', '1', null);
INSERT INTO `yershop_specs` VALUES ('87', '86', '16G', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('88', '86', '32G', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('89', '86', '64G', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('91', '90', '黑', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('92', '90', '白', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('93', '90', '金', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('94', '0', '套餐类型', '0', '44', '0', '官方标配、套餐1、套餐2', '1', null);
INSERT INTO `yershop_specs` VALUES ('95', '94', '官方标配', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('96', '94', '套餐1', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('97', '94', '套餐2', '0', '0', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('98', '0', '显卡容量', '0', '44', '0', '1g、2g、3g、4g、6g', '1', null);
INSERT INTO `yershop_specs` VALUES ('101', '98', '1g', '0', '44', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('102', '98', '2g', '0', '44', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('109', '98', '3g', '0', '44', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('106', '105', '54646', '0', '41', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('107', '105', '676', '0', '41', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('108', '105', '而', '0', '41', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('110', '98', '4g', '0', '44', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('111', '98', '6g', '0', '44', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('112', '0', '包装', '0', '46', '0', '普装、精装', '1', null);
INSERT INTO `yershop_specs` VALUES ('113', '112', '普装', '0', '46', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('114', '112', '精装', '0', '46', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('115', '0', '开数', '0', '46', '0', '16开、32开', '1', null);
INSERT INTO `yershop_specs` VALUES ('116', '115', '16开', '0', '46', '0', null, '1', null);
INSERT INTO `yershop_specs` VALUES ('117', '115', '32开', '0', '46', '0', null, '1', null);

-- ----------------------------
-- Table structure for yershop_tags
-- ----------------------------
DROP TABLE IF EXISTS `yershop_tags`;
CREATE TABLE `yershop_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(225) CHARACTER SET utf8 NOT NULL,
  `num` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `goods_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of yershop_tags
-- ----------------------------

-- ----------------------------
-- Table structure for yershop_third_login
-- ----------------------------
DROP TABLE IF EXISTS `yershop_third_login`;
CREATE TABLE `yershop_third_login` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `openid` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `access_token` varchar(255) NOT NULL,
  `refresh_token` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `appid` varchar(225) DEFAULT NULL,
  `create_time` int(10) NOT NULL DEFAULT '0',
  `figureurl` varchar(226) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='第三方登陆表';

-- ----------------------------
-- Records of yershop_third_login
-- ----------------------------

-- ----------------------------
-- Table structure for yershop_ucenter_member
-- ----------------------------
DROP TABLE IF EXISTS `yershop_ucenter_member`;
CREATE TABLE `yershop_ucenter_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` char(16) NOT NULL COMMENT '用户名',
  `password` char(32) NOT NULL COMMENT '密码',
  `email` varchar(225) DEFAULT NULL COMMENT '用户邮箱',
  `mobile` char(15) NOT NULL DEFAULT '' COMMENT '用户手机',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `reg_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '注册IP',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `last_login_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '最后登录IP',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) DEFAULT '0' COMMENT '用户状态',
  `cover_id` int(10) NOT NULL DEFAULT '1',
  `account` decimal(50,2) NOT NULL DEFAULT '0.00',
  `score` int(10) DEFAULT '0',
  `birthday` int(10) NOT NULL DEFAULT '0',
  `star` varchar(225) DEFAULT NULL,
  `sex` varchar(225) DEFAULT NULL,
  `province` varchar(225) DEFAULT NULL,
  `city` varchar(225) DEFAULT NULL,
  `area` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='用户表';


-- ----------------------------
-- Table structure for yershop_user_log
-- ----------------------------
DROP TABLE IF EXISTS `yershop_user_log`;
CREATE TABLE `yershop_user_log` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组id,自增主键',
  `title` text COMMENT '名称',
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户组状态：为1正常，为0禁用,2为已使用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yershop_user_log
-- ----------------------------

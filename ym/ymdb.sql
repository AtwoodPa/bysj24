/*
 Navicat Premium Data Transfer

 Source Server         : ymdb-plus
 Source Server Type    : MySQL
 Source Server Version : 80024
 Source Host           : 43.142.255.148:3306
 Source Schema         : ymdb

 Target Server Type    : MySQL
 Target Server Version : 80024
 File Encoding         : 65001

 Date: 02/02/2024 17:19:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for district
-- ----------------------------
DROP TABLE IF EXISTS `district`;
CREATE TABLE `district` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3524 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of district
-- ----------------------------
BEGIN;
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1, '110100', '110101', '东城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2, '110100', '110102', '西城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3, '110100', '110103', '崇文区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (4, '110100', '110104', '宣武区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (5, '110100', '110105', '朝阳区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (6, '110100', '110106', '丰台区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (7, '110100', '110107', '石景山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (8, '110100', '110108', '海淀区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (9, '110100', '110109', '门头沟区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (10, '110100', '110111', '房山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (11, '110100', '110112', '通州区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (12, '110100', '110113', '顺义区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (13, '110100', '110114', '昌平区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (14, '110100', '110115', '大兴区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (15, '110100', '110116', '怀柔区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (16, '110100', '110117', '平谷区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (17, '110200', '110228', '密云县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (18, '110200', '110229', '延庆县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (19, '120100', '120101', '和平区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (20, '120100', '120102', '河东区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (21, '120100', '120103', '河西区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (22, '120100', '120104', '南开区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (23, '120100', '120105', '河北区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (24, '120100', '120106', '红桥区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (25, '120100', '120107', '塘沽区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (26, '120100', '120108', '汉沽区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (27, '120100', '120109', '大港区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (28, '120100', '120110', '东丽区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (29, '120100', '120111', '西青区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (30, '120100', '120112', '津南区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (31, '120100', '120113', '北辰区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (32, '120100', '120114', '武清区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (33, '120100', '120115', '宝坻区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (34, '120200', '120221', '宁河县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (35, '120200', '120223', '静海县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (36, '120200', '120225', '蓟　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (37, '130100', '130101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (38, '130100', '130102', '长安区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (39, '130100', '130103', '桥东区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (40, '130100', '130104', '桥西区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (41, '130100', '130105', '新华区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (42, '130100', '130107', '井陉矿区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (43, '130100', '130108', '裕华区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (44, '130100', '130121', '井陉县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (45, '130100', '130123', '正定县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (46, '130100', '130124', '栾城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (47, '130100', '130125', '行唐县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (48, '130100', '130126', '灵寿县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (49, '130100', '130127', '高邑县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (50, '130100', '130128', '深泽县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (51, '130100', '130129', '赞皇县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (52, '130100', '130130', '无极县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (53, '130100', '130131', '平山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (54, '130100', '130132', '元氏县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (55, '130100', '130133', '赵　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (56, '130100', '130181', '辛集市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (57, '130100', '130182', '藁城市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (58, '130100', '130183', '晋州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (59, '130100', '130184', '新乐市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (60, '130100', '130185', '鹿泉市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (61, '130200', '130201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (62, '130200', '130202', '路南区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (63, '130200', '130203', '路北区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (64, '130200', '130204', '古冶区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (65, '130200', '130205', '开平区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (66, '130200', '130207', '丰南区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (67, '130200', '130208', '丰润区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (68, '130200', '130223', '滦　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (69, '130200', '130224', '滦南县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (70, '130200', '130225', '乐亭县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (71, '130200', '130227', '迁西县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (72, '130200', '130229', '玉田县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (73, '130200', '130230', '唐海县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (74, '130200', '130281', '遵化市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (75, '130200', '130283', '迁安市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (76, '130300', '130301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (77, '130300', '130302', '海港区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (78, '130300', '130303', '山海关区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (79, '130300', '130304', '北戴河区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (80, '130300', '130321', '青龙满族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (81, '130300', '130322', '昌黎县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (82, '130300', '130323', '抚宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (83, '130300', '130324', '卢龙县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (84, '130400', '130401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (85, '130400', '130402', '邯山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (86, '130400', '130403', '丛台区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (87, '130400', '130404', '复兴区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (88, '130400', '130406', '峰峰矿区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (89, '130400', '130421', '邯郸县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (90, '130400', '130423', '临漳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (91, '130400', '130424', '成安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (92, '130400', '130425', '大名县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (93, '130400', '130426', '涉　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (94, '130400', '130427', '磁　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (95, '130400', '130428', '肥乡县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (96, '130400', '130429', '永年县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (97, '130400', '130430', '邱　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (98, '130400', '130431', '鸡泽县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (99, '130400', '130432', '广平县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (100, '130400', '130433', '馆陶县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (101, '130400', '130434', '魏　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (102, '130400', '130435', '曲周县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (103, '130400', '130481', '武安市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (104, '130500', '130501', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (105, '130500', '130502', '桥东区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (106, '130500', '130503', '桥西区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (107, '130500', '130521', '邢台县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (108, '130500', '130522', '临城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (109, '130500', '130523', '内丘县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (110, '130500', '130524', '柏乡县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (111, '130500', '130525', '隆尧县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (112, '130500', '130526', '任　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (113, '130500', '130527', '南和县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (114, '130500', '130528', '宁晋县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (115, '130500', '130529', '巨鹿县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (116, '130500', '130530', '新河县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (117, '130500', '130531', '广宗县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (118, '130500', '130532', '平乡县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (119, '130500', '130533', '威　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (120, '130500', '130534', '清河县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (121, '130500', '130535', '临西县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (122, '130500', '130581', '南宫市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (123, '130500', '130582', '沙河市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (124, '130600', '130601', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (125, '130600', '130602', '新市区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (126, '130600', '130603', '北市区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (127, '130600', '130604', '南市区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (128, '130600', '130621', '满城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (129, '130600', '130622', '清苑县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (130, '130600', '130623', '涞水县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (131, '130600', '130624', '阜平县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (132, '130600', '130625', '徐水县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (133, '130600', '130626', '定兴县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (134, '130600', '130627', '唐　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (135, '130600', '130628', '高阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (136, '130600', '130629', '容城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (137, '130600', '130630', '涞源县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (138, '130600', '130631', '望都县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (139, '130600', '130632', '安新县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (140, '130600', '130633', '易　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (141, '130600', '130634', '曲阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (142, '130600', '130635', '蠡　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (143, '130600', '130636', '顺平县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (144, '130600', '130637', '博野县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (145, '130600', '130638', '雄　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (146, '130600', '130681', '涿州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (147, '130600', '130682', '定州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (148, '130600', '130683', '安国市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (149, '130600', '130684', '高碑店市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (150, '130700', '130701', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (151, '130700', '130702', '桥东区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (152, '130700', '130703', '桥西区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (153, '130700', '130705', '宣化区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (154, '130700', '130706', '下花园区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (155, '130700', '130721', '宣化县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (156, '130700', '130722', '张北县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (157, '130700', '130723', '康保县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (158, '130700', '130724', '沽源县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (159, '130700', '130725', '尚义县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (160, '130700', '130726', '蔚　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (161, '130700', '130727', '阳原县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (162, '130700', '130728', '怀安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (163, '130700', '130729', '万全县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (164, '130700', '130730', '怀来县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (165, '130700', '130731', '涿鹿县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (166, '130700', '130732', '赤城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (167, '130700', '130733', '崇礼县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (168, '130800', '130801', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (169, '130800', '130802', '双桥区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (170, '130800', '130803', '双滦区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (171, '130800', '130804', '鹰手营子矿区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (172, '130800', '130821', '承德县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (173, '130800', '130822', '兴隆县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (174, '130800', '130823', '平泉县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (175, '130800', '130824', '滦平县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (176, '130800', '130825', '隆化县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (177, '130800', '130826', '丰宁满族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (178, '130800', '130827', '宽城满族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (179, '130800', '130828', '围场满族蒙古族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (180, '130900', '130901', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (181, '130900', '130902', '新华区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (182, '130900', '130903', '运河区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (183, '130900', '130921', '沧　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (184, '130900', '130922', '青　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (185, '130900', '130923', '东光县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (186, '130900', '130924', '海兴县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (187, '130900', '130925', '盐山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (188, '130900', '130926', '肃宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (189, '130900', '130927', '南皮县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (190, '130900', '130928', '吴桥县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (191, '130900', '130929', '献　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (192, '130900', '130930', '孟村回族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (193, '130900', '130981', '泊头市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (194, '130900', '130982', '任丘市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (195, '130900', '130983', '黄骅市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (196, '130900', '130984', '河间市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (197, '131000', '131001', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (198, '131000', '131002', '安次区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (199, '131000', '131003', '广阳区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (200, '131000', '131022', '固安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (201, '131000', '131023', '永清县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (202, '131000', '131024', '香河县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (203, '131000', '131025', '大城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (204, '131000', '131026', '文安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (205, '131000', '131028', '大厂回族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (206, '131000', '131081', '霸州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (207, '131000', '131082', '三河市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (208, '131100', '131101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (209, '131100', '131102', '桃城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (210, '131100', '131121', '枣强县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (211, '131100', '131122', '武邑县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (212, '131100', '131123', '武强县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (213, '131100', '131124', '饶阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (214, '131100', '131125', '安平县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (215, '131100', '131126', '故城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (216, '131100', '131127', '景　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (217, '131100', '131128', '阜城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (218, '131100', '131181', '冀州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (219, '131100', '131182', '深州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (220, '140100', '140101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (221, '140100', '140105', '小店区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (222, '140100', '140106', '迎泽区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (223, '140100', '140107', '杏花岭区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (224, '140100', '140108', '尖草坪区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (225, '140100', '140109', '万柏林区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (226, '140100', '140110', '晋源区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (227, '140100', '140121', '清徐县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (228, '140100', '140122', '阳曲县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (229, '140100', '140123', '娄烦县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (230, '140100', '140181', '古交市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (231, '140200', '140201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (232, '140200', '140202', '城　区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (233, '140200', '140203', '矿　区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (234, '140200', '140211', '南郊区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (235, '140200', '140212', '新荣区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (236, '140200', '140221', '阳高县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (237, '140200', '140222', '天镇县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (238, '140200', '140223', '广灵县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (239, '140200', '140224', '灵丘县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (240, '140200', '140225', '浑源县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (241, '140200', '140226', '左云县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (242, '140200', '140227', '大同县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (243, '140300', '140301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (244, '140300', '140302', '城　区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (245, '140300', '140303', '矿　区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (246, '140300', '140311', '郊　区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (247, '140300', '140321', '平定县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (248, '140300', '140322', '盂　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (249, '140400', '140401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (250, '140400', '140402', '城　区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (251, '140400', '140411', '郊　区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (252, '140400', '140421', '长治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (253, '140400', '140423', '襄垣县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (254, '140400', '140424', '屯留县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (255, '140400', '140425', '平顺县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (256, '140400', '140426', '黎城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (257, '140400', '140427', '壶关县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (258, '140400', '140428', '长子县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (259, '140400', '140429', '武乡县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (260, '140400', '140430', '沁　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (261, '140400', '140431', '沁源县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (262, '140400', '140481', '潞城市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (263, '140500', '140501', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (264, '140500', '140502', '城　区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (265, '140500', '140521', '沁水县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (266, '140500', '140522', '阳城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (267, '140500', '140524', '陵川县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (268, '140500', '140525', '泽州县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (269, '140500', '140581', '高平市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (270, '140600', '140601', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (271, '140600', '140602', '朔城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (272, '140600', '140603', '平鲁区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (273, '140600', '140621', '山阴县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (274, '140600', '140622', '应　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (275, '140600', '140623', '右玉县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (276, '140600', '140624', '怀仁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (277, '140700', '140701', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (278, '140700', '140702', '榆次区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (279, '140700', '140721', '榆社县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (280, '140700', '140722', '左权县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (281, '140700', '140723', '和顺县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (282, '140700', '140724', '昔阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (283, '140700', '140725', '寿阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (284, '140700', '140726', '太谷县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (285, '140700', '140727', '祁　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (286, '140700', '140728', '平遥县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (287, '140700', '140729', '灵石县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (288, '140700', '140781', '介休市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (289, '140800', '140801', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (290, '140800', '140802', '盐湖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (291, '140800', '140821', '临猗县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (292, '140800', '140822', '万荣县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (293, '140800', '140823', '闻喜县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (294, '140800', '140824', '稷山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (295, '140800', '140825', '新绛县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (296, '140800', '140826', '绛　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (297, '140800', '140827', '垣曲县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (298, '140800', '140828', '夏　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (299, '140800', '140829', '平陆县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (300, '140800', '140830', '芮城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (301, '140800', '140881', '永济市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (302, '140800', '140882', '河津市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (303, '140900', '140901', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (304, '140900', '140902', '忻府区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (305, '140900', '140921', '定襄县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (306, '140900', '140922', '五台县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (307, '140900', '140923', '代　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (308, '140900', '140924', '繁峙县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (309, '140900', '140925', '宁武县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (310, '140900', '140926', '静乐县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (311, '140900', '140927', '神池县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (312, '140900', '140928', '五寨县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (313, '140900', '140929', '岢岚县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (314, '140900', '140930', '河曲县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (315, '140900', '140931', '保德县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (316, '140900', '140932', '偏关县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (317, '140900', '140981', '原平市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (318, '141000', '141001', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (319, '141000', '141002', '尧都区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (320, '141000', '141021', '曲沃县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (321, '141000', '141022', '翼城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (322, '141000', '141023', '襄汾县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (323, '141000', '141024', '洪洞县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (324, '141000', '141025', '古　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (325, '141000', '141026', '安泽县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (326, '141000', '141027', '浮山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (327, '141000', '141028', '吉　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (328, '141000', '141029', '乡宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (329, '141000', '141030', '大宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (330, '141000', '141031', '隰　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (331, '141000', '141032', '永和县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (332, '141000', '141033', '蒲　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (333, '141000', '141034', '汾西县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (334, '141000', '141081', '侯马市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (335, '141000', '141082', '霍州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (336, '141100', '141101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (337, '141100', '141102', '离石区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (338, '141100', '141121', '文水县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (339, '141100', '141122', '交城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (340, '141100', '141123', '兴　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (341, '141100', '141124', '临　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (342, '141100', '141125', '柳林县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (343, '141100', '141126', '石楼县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (344, '141100', '141127', '岚　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (345, '141100', '141128', '方山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (346, '141100', '141129', '中阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (347, '141100', '141130', '交口县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (348, '141100', '141181', '孝义市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (349, '141100', '141182', '汾阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (350, '150100', '150101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (351, '150100', '150102', '新城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (352, '150100', '150103', '回民区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (353, '150100', '150104', '玉泉区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (354, '150100', '150105', '赛罕区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (355, '150100', '150121', '土默特左旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (356, '150100', '150122', '托克托县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (357, '150100', '150123', '和林格尔县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (358, '150100', '150124', '清水河县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (359, '150100', '150125', '武川县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (360, '150200', '150201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (361, '150200', '150202', '东河区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (362, '150200', '150203', '昆都仑区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (363, '150200', '150204', '青山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (364, '150200', '150205', '石拐区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (365, '150200', '150206', '白云矿区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (366, '150200', '150207', '九原区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (367, '150200', '150221', '土默特右旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (368, '150200', '150222', '固阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (369, '150200', '150223', '达尔罕茂明安联合旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (370, '150300', '150301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (371, '150300', '150302', '海勃湾区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (372, '150300', '150303', '海南区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (373, '150300', '150304', '乌达区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (374, '150400', '150401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (375, '150400', '150402', '红山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (376, '150400', '150403', '元宝山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (377, '150400', '150404', '松山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (378, '150400', '150421', '阿鲁科尔沁旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (379, '150400', '150422', '巴林左旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (380, '150400', '150423', '巴林右旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (381, '150400', '150424', '林西县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (382, '150400', '150425', '克什克腾旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (383, '150400', '150426', '翁牛特旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (384, '150400', '150428', '喀喇沁旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (385, '150400', '150429', '宁城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (386, '150400', '150430', '敖汉旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (387, '150500', '150501', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (388, '150500', '150502', '科尔沁区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (389, '150500', '150521', '科尔沁左翼中旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (390, '150500', '150522', '科尔沁左翼后旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (391, '150500', '150523', '开鲁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (392, '150500', '150524', '库伦旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (393, '150500', '150525', '奈曼旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (394, '150500', '150526', '扎鲁特旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (395, '150500', '150581', '霍林郭勒市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (396, '150600', '150602', '东胜区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (397, '150600', '150621', '达拉特旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (398, '150600', '150622', '准格尔旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (399, '150600', '150623', '鄂托克前旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (400, '150600', '150624', '鄂托克旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (401, '150600', '150625', '杭锦旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (402, '150600', '150626', '乌审旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (403, '150600', '150627', '伊金霍洛旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (404, '150700', '150701', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (405, '150700', '150702', '海拉尔区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (406, '150700', '150721', '阿荣旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (407, '150700', '150722', '莫力达瓦达斡尔族自治旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (408, '150700', '150723', '鄂伦春自治旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (409, '150700', '150724', '鄂温克族自治旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (410, '150700', '150725', '陈巴尔虎旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (411, '150700', '150726', '新巴尔虎左旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (412, '150700', '150727', '新巴尔虎右旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (413, '150700', '150781', '满洲里市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (414, '150700', '150782', '牙克石市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (415, '150700', '150783', '扎兰屯市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (416, '150700', '150784', '额尔古纳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (417, '150700', '150785', '根河市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (418, '150800', '150801', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (419, '150800', '150802', '临河区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (420, '150800', '150821', '五原县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (421, '150800', '150822', '磴口县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (422, '150800', '150823', '乌拉特前旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (423, '150800', '150824', '乌拉特中旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (424, '150800', '150825', '乌拉特后旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (425, '150800', '150826', '杭锦后旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (426, '150900', '150901', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (427, '150900', '150902', '集宁区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (428, '150900', '150921', '卓资县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (429, '150900', '150922', '化德县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (430, '150900', '150923', '商都县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (431, '150900', '150924', '兴和县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (432, '150900', '150925', '凉城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (433, '150900', '150926', '察哈尔右翼前旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (434, '150900', '150927', '察哈尔右翼中旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (435, '150900', '150928', '察哈尔右翼后旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (436, '150900', '150929', '四子王旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (437, '150900', '150981', '丰镇市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (438, '152200', '152201', '乌兰浩特市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (439, '152200', '152202', '阿尔山市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (440, '152200', '152221', '科尔沁右翼前旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (441, '152200', '152222', '科尔沁右翼中旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (442, '152200', '152223', '扎赉特旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (443, '152200', '152224', '突泉县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (444, '152500', '152501', '二连浩特市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (445, '152500', '152502', '锡林浩特市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (446, '152500', '152522', '阿巴嘎旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (447, '152500', '152523', '苏尼特左旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (448, '152500', '152524', '苏尼特右旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (449, '152500', '152525', '东乌珠穆沁旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (450, '152500', '152526', '西乌珠穆沁旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (451, '152500', '152527', '太仆寺旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (452, '152500', '152528', '镶黄旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (453, '152500', '152529', '正镶白旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (454, '152500', '152530', '正蓝旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (455, '152500', '152531', '多伦县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (456, '152900', '152921', '阿拉善左旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (457, '152900', '152922', '阿拉善右旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (458, '152900', '152923', '额济纳旗');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (459, '210100', '210101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (460, '210100', '210102', '和平区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (461, '210100', '210103', '沈河区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (462, '210100', '210104', '大东区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (463, '210100', '210105', '皇姑区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (464, '210100', '210106', '铁西区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (465, '210100', '210111', '苏家屯区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (466, '210100', '210112', '东陵区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (467, '210100', '210113', '新城子区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (468, '210100', '210114', '于洪区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (469, '210100', '210122', '辽中县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (470, '210100', '210123', '康平县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (471, '210100', '210124', '法库县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (472, '210100', '210181', '新民市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (473, '210200', '210201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (474, '210200', '210202', '中山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (475, '210200', '210203', '西岗区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (476, '210200', '210204', '沙河口区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (477, '210200', '210211', '甘井子区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (478, '210200', '210212', '旅顺口区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (479, '210200', '210213', '金州区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (480, '210200', '210224', '长海县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (481, '210200', '210281', '瓦房店市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (482, '210200', '210282', '普兰店市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (483, '210200', '210283', '庄河市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (484, '210300', '210301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (485, '210300', '210302', '铁东区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (486, '210300', '210303', '铁西区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (487, '210300', '210304', '立山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (488, '210300', '210311', '千山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (489, '210300', '210321', '台安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (490, '210300', '210323', '岫岩满族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (491, '210300', '210381', '海城市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (492, '210400', '210401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (493, '210400', '210402', '新抚区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (494, '210400', '210403', '东洲区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (495, '210400', '210404', '望花区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (496, '210400', '210411', '顺城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (497, '210400', '210421', '抚顺县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (498, '210400', '210422', '新宾满族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (499, '210400', '210423', '清原满族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (500, '210500', '210501', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (501, '210500', '210502', '平山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (502, '210500', '210503', '溪湖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (503, '210500', '210504', '明山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (504, '210500', '210505', '南芬区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (505, '210500', '210521', '本溪满族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (506, '210500', '210522', '桓仁满族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (507, '210600', '210601', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (508, '210600', '210602', '元宝区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (509, '210600', '210603', '振兴区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (510, '210600', '210604', '振安区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (511, '210600', '210624', '宽甸满族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (512, '210600', '210681', '东港市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (513, '210600', '210682', '凤城市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (514, '210700', '210701', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (515, '210700', '210702', '古塔区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (516, '210700', '210703', '凌河区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (517, '210700', '210711', '太和区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (518, '210700', '210726', '黑山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (519, '210700', '210727', '义　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (520, '210700', '210781', '凌海市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (521, '210700', '210782', '北宁市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (522, '210800', '210801', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (523, '210800', '210802', '站前区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (524, '210800', '210803', '西市区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (525, '210800', '210804', '鲅鱼圈区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (526, '210800', '210811', '老边区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (527, '210800', '210881', '盖州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (528, '210800', '210882', '大石桥市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (529, '210900', '210901', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (530, '210900', '210902', '海州区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (531, '210900', '210903', '新邱区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (532, '210900', '210904', '太平区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (533, '210900', '210905', '清河门区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (534, '210900', '210911', '细河区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (535, '210900', '210921', '阜新蒙古族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (536, '210900', '210922', '彰武县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (537, '211000', '211001', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (538, '211000', '211002', '白塔区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (539, '211000', '211003', '文圣区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (540, '211000', '211004', '宏伟区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (541, '211000', '211005', '弓长岭区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (542, '211000', '211011', '太子河区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (543, '211000', '211021', '辽阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (544, '211000', '211081', '灯塔市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (545, '211100', '211101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (546, '211100', '211102', '双台子区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (547, '211100', '211103', '兴隆台区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (548, '211100', '211121', '大洼县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (549, '211100', '211122', '盘山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (550, '211200', '211201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (551, '211200', '211202', '银州区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (552, '211200', '211204', '清河区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (553, '211200', '211221', '铁岭县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (554, '211200', '211223', '西丰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (555, '211200', '211224', '昌图县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (556, '211200', '211281', '调兵山市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (557, '211200', '211282', '开原市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (558, '211300', '211301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (559, '211300', '211302', '双塔区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (560, '211300', '211303', '龙城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (561, '211300', '211321', '朝阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (562, '211300', '211322', '建平县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (563, '211300', '211324', '喀喇沁左翼蒙古族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (564, '211300', '211381', '北票市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (565, '211300', '211382', '凌源市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (566, '211400', '211401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (567, '211400', '211402', '连山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (568, '211400', '211403', '龙港区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (569, '211400', '211404', '南票区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (570, '211400', '211421', '绥中县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (571, '211400', '211422', '建昌县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (572, '211400', '211481', '兴城市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (573, '220100', '220101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (574, '220100', '220102', '南关区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (575, '220100', '220103', '宽城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (576, '220100', '220104', '朝阳区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (577, '220100', '220105', '二道区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (578, '220100', '220106', '绿园区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (579, '220100', '220112', '双阳区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (580, '220100', '220122', '农安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (581, '220100', '220181', '九台市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (582, '220100', '220182', '榆树市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (583, '220100', '220183', '德惠市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (584, '220200', '220201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (585, '220200', '220202', '昌邑区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (586, '220200', '220203', '龙潭区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (587, '220200', '220204', '船营区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (588, '220200', '220211', '丰满区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (589, '220200', '220221', '永吉县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (590, '220200', '220281', '蛟河市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (591, '220200', '220282', '桦甸市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (592, '220200', '220283', '舒兰市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (593, '220200', '220284', '磐石市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (594, '220300', '220301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (595, '220300', '220302', '铁西区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (596, '220300', '220303', '铁东区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (597, '220300', '220322', '梨树县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (598, '220300', '220323', '伊通满族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (599, '220300', '220381', '公主岭市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (600, '220300', '220382', '双辽市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (601, '220400', '220401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (602, '220400', '220402', '龙山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (603, '220400', '220403', '西安区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (604, '220400', '220421', '东丰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (605, '220400', '220422', '东辽县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (606, '220500', '220501', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (607, '220500', '220502', '东昌区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (608, '220500', '220503', '二道江区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (609, '220500', '220521', '通化县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (610, '220500', '220523', '辉南县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (611, '220500', '220524', '柳河县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (612, '220500', '220581', '梅河口市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (613, '220500', '220582', '集安市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (614, '220600', '220601', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (615, '220600', '220602', '八道江区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (616, '220600', '220621', '抚松县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (617, '220600', '220622', '靖宇县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (618, '220600', '220623', '长白朝鲜族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (619, '220600', '220625', '江源县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (620, '220600', '220681', '临江市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (621, '220700', '220701', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (622, '220700', '220702', '宁江区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (623, '220700', '220721', '前郭尔罗斯蒙古族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (624, '220700', '220722', '长岭县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (625, '220700', '220723', '乾安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (626, '220700', '220724', '扶余县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (627, '220800', '220801', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (628, '220800', '220802', '洮北区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (629, '220800', '220821', '镇赉县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (630, '220800', '220822', '通榆县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (631, '220800', '220881', '洮南市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (632, '220800', '220882', '大安市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (633, '222400', '222401', '延吉市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (634, '222400', '222402', '图们市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (635, '222400', '222403', '敦化市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (636, '222400', '222404', '珲春市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (637, '222400', '222405', '龙井市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (638, '222400', '222406', '和龙市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (639, '222400', '222424', '汪清县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (640, '222400', '222426', '安图县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (641, '230100', '230101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (642, '230100', '230102', '道里区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (643, '230100', '230103', '南岗区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (644, '230100', '230104', '道外区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (645, '230100', '230106', '香坊区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (646, '230100', '230107', '动力区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (647, '230100', '230108', '平房区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (648, '230100', '230109', '松北区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (649, '230100', '230111', '呼兰区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (650, '230100', '230123', '依兰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (651, '230100', '230124', '方正县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (652, '230100', '230125', '宾　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (653, '230100', '230126', '巴彦县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (654, '230100', '230127', '木兰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (655, '230100', '230128', '通河县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (656, '230100', '230129', '延寿县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (657, '230100', '230181', '阿城市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (658, '230100', '230182', '双城市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (659, '230100', '230183', '尚志市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (660, '230100', '230184', '五常市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (661, '230200', '230201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (662, '230200', '230202', '龙沙区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (663, '230200', '230203', '建华区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (664, '230200', '230204', '铁锋区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (665, '230200', '230205', '昂昂溪区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (666, '230200', '230206', '富拉尔基区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (667, '230200', '230207', '碾子山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (668, '230200', '230208', '梅里斯达斡尔族区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (669, '230200', '230221', '龙江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (670, '230200', '230223', '依安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (671, '230200', '230224', '泰来县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (672, '230200', '230225', '甘南县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (673, '230200', '230227', '富裕县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (674, '230200', '230229', '克山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (675, '230200', '230230', '克东县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (676, '230200', '230231', '拜泉县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (677, '230200', '230281', '讷河市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (678, '230300', '230301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (679, '230300', '230302', '鸡冠区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (680, '230300', '230303', '恒山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (681, '230300', '230304', '滴道区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (682, '230300', '230305', '梨树区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (683, '230300', '230306', '城子河区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (684, '230300', '230307', '麻山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (685, '230300', '230321', '鸡东县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (686, '230300', '230381', '虎林市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (687, '230300', '230382', '密山市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (688, '230400', '230401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (689, '230400', '230402', '向阳区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (690, '230400', '230403', '工农区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (691, '230400', '230404', '南山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (692, '230400', '230405', '兴安区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (693, '230400', '230406', '东山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (694, '230400', '230407', '兴山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (695, '230400', '230421', '萝北县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (696, '230400', '230422', '绥滨县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (697, '230500', '230501', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (698, '230500', '230502', '尖山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (699, '230500', '230503', '岭东区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (700, '230500', '230505', '四方台区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (701, '230500', '230506', '宝山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (702, '230500', '230521', '集贤县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (703, '230500', '230522', '友谊县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (704, '230500', '230523', '宝清县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (705, '230500', '230524', '饶河县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (706, '230600', '230601', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (707, '230600', '230602', '萨尔图区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (708, '230600', '230603', '龙凤区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (709, '230600', '230604', '让胡路区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (710, '230600', '230605', '红岗区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (711, '230600', '230606', '大同区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (712, '230600', '230621', '肇州县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (713, '230600', '230622', '肇源县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (714, '230600', '230623', '林甸县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (715, '230600', '230624', '杜尔伯特蒙古族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (716, '230700', '230701', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (717, '230700', '230702', '伊春区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (718, '230700', '230703', '南岔区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (719, '230700', '230704', '友好区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (720, '230700', '230705', '西林区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (721, '230700', '230706', '翠峦区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (722, '230700', '230707', '新青区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (723, '230700', '230708', '美溪区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (724, '230700', '230709', '金山屯区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (725, '230700', '230710', '五营区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (726, '230700', '230711', '乌马河区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (727, '230700', '230712', '汤旺河区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (728, '230700', '230713', '带岭区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (729, '230700', '230714', '乌伊岭区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (730, '230700', '230715', '红星区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (731, '230700', '230716', '上甘岭区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (732, '230700', '230722', '嘉荫县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (733, '230700', '230781', '铁力市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (734, '230800', '230801', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (735, '230800', '230802', '永红区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (736, '230800', '230803', '向阳区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (737, '230800', '230804', '前进区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (738, '230800', '230805', '东风区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (739, '230800', '230811', '郊　区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (740, '230800', '230822', '桦南县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (741, '230800', '230826', '桦川县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (742, '230800', '230828', '汤原县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (743, '230800', '230833', '抚远县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (744, '230800', '230881', '同江市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (745, '230800', '230882', '富锦市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (746, '230900', '230901', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (747, '230900', '230902', '新兴区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (748, '230900', '230903', '桃山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (749, '230900', '230904', '茄子河区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (750, '230900', '230921', '勃利县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (751, '231000', '231001', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (752, '231000', '231002', '东安区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (753, '231000', '231003', '阳明区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (754, '231000', '231004', '爱民区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (755, '231000', '231005', '西安区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (756, '231000', '231024', '东宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (757, '231000', '231025', '林口县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (758, '231000', '231081', '绥芬河市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (759, '231000', '231083', '海林市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (760, '231000', '231084', '宁安市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (761, '231000', '231085', '穆棱市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (762, '231100', '231101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (763, '231100', '231102', '爱辉区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (764, '231100', '231121', '嫩江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (765, '231100', '231123', '逊克县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (766, '231100', '231124', '孙吴县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (767, '231100', '231181', '北安市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (768, '231100', '231182', '五大连池市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (769, '231200', '231201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (770, '231200', '231202', '北林区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (771, '231200', '231221', '望奎县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (772, '231200', '231222', '兰西县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (773, '231200', '231223', '青冈县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (774, '231200', '231224', '庆安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (775, '231200', '231225', '明水县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (776, '231200', '231226', '绥棱县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (777, '231200', '231281', '安达市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (778, '231200', '231282', '肇东市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (779, '231200', '231283', '海伦市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (780, '232700', '232721', '呼玛县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (781, '232700', '232722', '塔河县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (782, '232700', '232723', '漠河县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (783, '310100', '310101', '黄浦区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (784, '310100', '310103', '卢湾区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (785, '310100', '310104', '徐汇区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (786, '310100', '310105', '长宁区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (787, '310100', '310106', '静安区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (788, '310100', '310107', '普陀区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (789, '310100', '310108', '闸北区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (790, '310100', '310109', '虹口区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (791, '310100', '310110', '杨浦区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (792, '310100', '310112', '闵行区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (793, '310100', '310113', '宝山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (794, '310100', '310114', '嘉定区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (795, '310100', '310115', '浦东新区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (796, '310100', '310116', '金山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (797, '310100', '310117', '松江区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (798, '310100', '310118', '青浦区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (799, '310100', '310119', '南汇区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (800, '310100', '310120', '奉贤区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (801, '310200', '310230', '崇明县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (802, '320100', '320101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (803, '320100', '320102', '玄武区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (804, '320100', '320103', '白下区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (805, '320100', '320104', '秦淮区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (806, '320100', '320105', '建邺区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (807, '320100', '320106', '鼓楼区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (808, '320100', '320107', '下关区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (809, '320100', '320111', '浦口区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (810, '320100', '320113', '栖霞区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (811, '320100', '320114', '雨花台区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (812, '320100', '320115', '江宁区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (813, '320100', '320116', '六合区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (814, '320100', '320124', '溧水县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (815, '320100', '320125', '高淳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (816, '320200', '320201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (817, '320200', '320202', '崇安区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (818, '320200', '320203', '南长区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (819, '320200', '320204', '北塘区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (820, '320200', '320205', '锡山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (821, '320200', '320206', '惠山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (822, '320200', '320211', '滨湖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (823, '320200', '320281', '江阴市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (824, '320200', '320282', '宜兴市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (825, '320300', '320301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (826, '320300', '320302', '鼓楼区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (827, '320300', '320303', '云龙区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (828, '320300', '320304', '九里区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (829, '320300', '320305', '贾汪区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (830, '320300', '320311', '泉山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (831, '320300', '320321', '丰　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (832, '320300', '320322', '沛　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (833, '320300', '320323', '铜山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (834, '320300', '320324', '睢宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (835, '320300', '320381', '新沂市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (836, '320300', '320382', '邳州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (837, '320400', '320401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (838, '320400', '320402', '天宁区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (839, '320400', '320404', '钟楼区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (840, '320400', '320405', '戚墅堰区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (841, '320400', '320411', '新北区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (842, '320400', '320412', '武进区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (843, '320400', '320481', '溧阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (844, '320400', '320482', '金坛市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (845, '320500', '320501', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (846, '320500', '320502', '沧浪区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (847, '320500', '320503', '平江区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (848, '320500', '320504', '金阊区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (849, '320500', '320505', '虎丘区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (850, '320500', '320506', '吴中区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (851, '320500', '320507', '相城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (852, '320500', '320581', '常熟市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (853, '320500', '320582', '张家港市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (854, '320500', '320583', '昆山市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (855, '320500', '320584', '吴江市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (856, '320500', '320585', '太仓市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (857, '320600', '320601', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (858, '320600', '320602', '崇川区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (859, '320600', '320611', '港闸区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (860, '320600', '320621', '海安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (861, '320600', '320623', '如东县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (862, '320600', '320681', '启东市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (863, '320600', '320682', '如皋市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (864, '320600', '320683', '通州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (865, '320600', '320684', '海门市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (866, '320700', '320701', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (867, '320700', '320703', '连云区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (868, '320700', '320705', '新浦区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (869, '320700', '320706', '海州区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (870, '320700', '320721', '赣榆县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (871, '320700', '320722', '东海县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (872, '320700', '320723', '灌云县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (873, '320700', '320724', '灌南县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (874, '320800', '320801', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (875, '320800', '320802', '清河区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (876, '320800', '320803', '楚州区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (877, '320800', '320804', '淮阴区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (878, '320800', '320811', '清浦区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (879, '320800', '320826', '涟水县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (880, '320800', '320829', '洪泽县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (881, '320800', '320830', '盱眙县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (882, '320800', '320831', '金湖县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (883, '320900', '320901', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (884, '320900', '320902', '亭湖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (885, '320900', '320903', '盐都区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (886, '320900', '320921', '响水县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (887, '320900', '320922', '滨海县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (888, '320900', '320923', '阜宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (889, '320900', '320924', '射阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (890, '320900', '320925', '建湖县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (891, '320900', '320981', '东台市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (892, '320900', '320982', '大丰市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (893, '321000', '321001', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (894, '321000', '321002', '广陵区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (895, '321000', '321003', '邗江区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (896, '321000', '321011', '郊　区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (897, '321000', '321023', '宝应县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (898, '321000', '321081', '仪征市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (899, '321000', '321084', '高邮市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (900, '321000', '321088', '江都市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (901, '321100', '321101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (902, '321100', '321102', '京口区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (903, '321100', '321111', '润州区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (904, '321100', '321112', '丹徒区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (905, '321100', '321181', '丹阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (906, '321100', '321182', '扬中市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (907, '321100', '321183', '句容市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (908, '321200', '321201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (909, '321200', '321202', '海陵区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (910, '321200', '321203', '高港区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (911, '321200', '321281', '兴化市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (912, '321200', '321282', '靖江市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (913, '321200', '321283', '泰兴市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (914, '321200', '321284', '姜堰市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (915, '321300', '321301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (916, '321300', '321302', '宿城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (917, '321300', '321311', '宿豫区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (918, '321300', '321322', '沭阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (919, '321300', '321323', '泗阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (920, '321300', '321324', '泗洪县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (921, '330100', '330101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (922, '330100', '330102', '上城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (923, '330100', '330103', '下城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (924, '330100', '330104', '江干区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (925, '330100', '330105', '拱墅区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (926, '330100', '330106', '西湖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (927, '330100', '330108', '滨江区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (928, '330100', '330109', '萧山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (929, '330100', '330110', '余杭区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (930, '330100', '330122', '桐庐县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (931, '330100', '330127', '淳安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (932, '330100', '330182', '建德市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (933, '330100', '330183', '富阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (934, '330100', '330185', '临安市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (935, '330200', '330201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (936, '330200', '330203', '海曙区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (937, '330200', '330204', '江东区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (938, '330200', '330205', '江北区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (939, '330200', '330206', '北仑区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (940, '330200', '330211', '镇海区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (941, '330200', '330212', '鄞州区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (942, '330200', '330225', '象山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (943, '330200', '330226', '宁海县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (944, '330200', '330281', '余姚市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (945, '330200', '330282', '慈溪市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (946, '330200', '330283', '奉化市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (947, '330300', '330301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (948, '330300', '330302', '鹿城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (949, '330300', '330303', '龙湾区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (950, '330300', '330304', '瓯海区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (951, '330300', '330322', '洞头县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (952, '330300', '330324', '永嘉县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (953, '330300', '330326', '平阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (954, '330300', '330327', '苍南县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (955, '330300', '330328', '文成县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (956, '330300', '330329', '泰顺县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (957, '330300', '330381', '瑞安市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (958, '330300', '330382', '乐清市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (959, '330400', '330401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (960, '330400', '330402', '秀城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (961, '330400', '330411', '秀洲区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (962, '330400', '330421', '嘉善县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (963, '330400', '330424', '海盐县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (964, '330400', '330481', '海宁市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (965, '330400', '330482', '平湖市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (966, '330400', '330483', '桐乡市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (967, '330500', '330501', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (968, '330500', '330502', '吴兴区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (969, '330500', '330503', '南浔区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (970, '330500', '330521', '德清县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (971, '330500', '330522', '长兴县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (972, '330500', '330523', '安吉县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (973, '330600', '330601', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (974, '330600', '330602', '越城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (975, '330600', '330621', '绍兴县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (976, '330600', '330624', '新昌县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (977, '330600', '330681', '诸暨市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (978, '330600', '330682', '上虞市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (979, '330600', '330683', '嵊州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (980, '330700', '330701', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (981, '330700', '330702', '婺城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (982, '330700', '330703', '金东区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (983, '330700', '330723', '武义县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (984, '330700', '330726', '浦江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (985, '330700', '330727', '磐安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (986, '330700', '330781', '兰溪市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (987, '330700', '330782', '义乌市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (988, '330700', '330783', '东阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (989, '330700', '330784', '永康市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (990, '330800', '330801', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (991, '330800', '330802', '柯城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (992, '330800', '330803', '衢江区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (993, '330800', '330822', '常山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (994, '330800', '330824', '开化县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (995, '330800', '330825', '龙游县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (996, '330800', '330881', '江山市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (997, '330900', '330901', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (998, '330900', '330902', '定海区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (999, '330900', '330903', '普陀区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1000, '330900', '330921', '岱山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1001, '330900', '330922', '嵊泗县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1002, '331000', '331001', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1003, '331000', '331002', '椒江区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1004, '331000', '331003', '黄岩区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1005, '331000', '331004', '路桥区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1006, '331000', '331021', '玉环县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1007, '331000', '331022', '三门县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1008, '331000', '331023', '天台县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1009, '331000', '331024', '仙居县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1010, '331000', '331081', '温岭市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1011, '331000', '331082', '临海市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1012, '331100', '331101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1013, '331100', '331102', '莲都区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1014, '331100', '331121', '青田县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1015, '331100', '331122', '缙云县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1016, '331100', '331123', '遂昌县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1017, '331100', '331124', '松阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1018, '331100', '331125', '云和县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1019, '331100', '331126', '庆元县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1020, '331100', '331127', '景宁畲族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1021, '331100', '331181', '龙泉市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1022, '340100', '340101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1023, '340100', '340102', '瑶海区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1024, '340100', '340103', '庐阳区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1025, '340100', '340104', '蜀山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1026, '340100', '340111', '包河区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1027, '340100', '340121', '长丰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1028, '340100', '340122', '肥东县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1029, '340100', '340123', '肥西县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1030, '340200', '340201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1031, '340200', '340202', '镜湖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1032, '340200', '340203', '马塘区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1033, '340200', '340204', '新芜区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1034, '340200', '340207', '鸠江区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1035, '340200', '340221', '芜湖县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1036, '340200', '340222', '繁昌县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1037, '340200', '340223', '南陵县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1038, '340300', '340301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1039, '340300', '340302', '龙子湖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1040, '340300', '340303', '蚌山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1041, '340300', '340304', '禹会区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1042, '340300', '340311', '淮上区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1043, '340300', '340321', '怀远县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1044, '340300', '340322', '五河县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1045, '340300', '340323', '固镇县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1046, '340400', '340401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1047, '340400', '340402', '大通区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1048, '340400', '340403', '田家庵区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1049, '340400', '340404', '谢家集区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1050, '340400', '340405', '八公山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1051, '340400', '340406', '潘集区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1052, '340400', '340421', '凤台县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1053, '340500', '340501', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1054, '340500', '340502', '金家庄区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1055, '340500', '340503', '花山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1056, '340500', '340504', '雨山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1057, '340500', '340521', '当涂县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1058, '340600', '340601', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1059, '340600', '340602', '杜集区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1060, '340600', '340603', '相山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1061, '340600', '340604', '烈山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1062, '340600', '340621', '濉溪县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1063, '340700', '340701', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1064, '340700', '340702', '铜官山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1065, '340700', '340703', '狮子山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1066, '340700', '340711', '郊　区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1067, '340700', '340721', '铜陵县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1068, '340800', '340801', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1069, '340800', '340802', '迎江区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1070, '340800', '340803', '大观区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1071, '340800', '340811', '郊　区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1072, '340800', '340822', '怀宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1073, '340800', '340823', '枞阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1074, '340800', '340824', '潜山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1075, '340800', '340825', '太湖县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1076, '340800', '340826', '宿松县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1077, '340800', '340827', '望江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1078, '340800', '340828', '岳西县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1079, '340800', '340881', '桐城市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1080, '341000', '341001', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1081, '341000', '341002', '屯溪区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1082, '341000', '341003', '黄山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1083, '341000', '341004', '徽州区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1084, '341000', '341021', '歙　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1085, '341000', '341022', '休宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1086, '341000', '341023', '黟　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1087, '341000', '341024', '祁门县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1088, '341100', '341101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1089, '341100', '341102', '琅琊区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1090, '341100', '341103', '南谯区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1091, '341100', '341122', '来安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1092, '341100', '341124', '全椒县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1093, '341100', '341125', '定远县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1094, '341100', '341126', '凤阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1095, '341100', '341181', '天长市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1096, '341100', '341182', '明光市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1097, '341200', '341201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1098, '341200', '341202', '颍州区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1099, '341200', '341203', '颍东区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1100, '341200', '341204', '颍泉区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1101, '341200', '341221', '临泉县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1102, '341200', '341222', '太和县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1103, '341200', '341225', '阜南县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1104, '341200', '341226', '颍上县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1105, '341200', '341282', '界首市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1106, '341300', '341301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1107, '341300', '341302', '墉桥区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1108, '341300', '341321', '砀山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1109, '341300', '341322', '萧　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1110, '341300', '341323', '灵璧县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1111, '341300', '341324', '泗　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1112, '341400', '341401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1113, '341400', '341402', '居巢区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1114, '341400', '341421', '庐江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1115, '341400', '341422', '无为县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1116, '341400', '341423', '含山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1117, '341400', '341424', '和　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1118, '341500', '341501', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1119, '341500', '341502', '金安区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1120, '341500', '341503', '裕安区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1121, '341500', '341521', '寿　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1122, '341500', '341522', '霍邱县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1123, '341500', '341523', '舒城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1124, '341500', '341524', '金寨县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1125, '341500', '341525', '霍山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1126, '341600', '341601', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1127, '341600', '341602', '谯城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1128, '341600', '341621', '涡阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1129, '341600', '341622', '蒙城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1130, '341600', '341623', '利辛县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1131, '341700', '341701', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1132, '341700', '341702', '贵池区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1133, '341700', '341721', '东至县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1134, '341700', '341722', '石台县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1135, '341700', '341723', '青阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1136, '341800', '341801', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1137, '341800', '341802', '宣州区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1138, '341800', '341821', '郎溪县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1139, '341800', '341822', '广德县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1140, '341800', '341823', '泾　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1141, '341800', '341824', '绩溪县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1142, '341800', '341825', '旌德县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1143, '341800', '341881', '宁国市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1144, '350100', '350101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1145, '350100', '350102', '鼓楼区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1146, '350100', '350103', '台江区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1147, '350100', '350104', '仓山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1148, '350100', '350105', '马尾区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1149, '350100', '350111', '晋安区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1150, '350100', '350121', '闽侯县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1151, '350100', '350122', '连江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1152, '350100', '350123', '罗源县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1153, '350100', '350124', '闽清县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1154, '350100', '350125', '永泰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1155, '350100', '350128', '平潭县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1156, '350100', '350181', '福清市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1157, '350100', '350182', '长乐市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1158, '350200', '350201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1159, '350200', '350203', '思明区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1160, '350200', '350205', '海沧区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1161, '350200', '350206', '湖里区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1162, '350200', '350211', '集美区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1163, '350200', '350212', '同安区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1164, '350200', '350213', '翔安区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1165, '350300', '350301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1166, '350300', '350302', '城厢区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1167, '350300', '350303', '涵江区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1168, '350300', '350304', '荔城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1169, '350300', '350305', '秀屿区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1170, '350300', '350322', '仙游县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1171, '350400', '350401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1172, '350400', '350402', '梅列区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1173, '350400', '350403', '三元区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1174, '350400', '350421', '明溪县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1175, '350400', '350423', '清流县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1176, '350400', '350424', '宁化县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1177, '350400', '350425', '大田县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1178, '350400', '350426', '尤溪县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1179, '350400', '350427', '沙　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1180, '350400', '350428', '将乐县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1181, '350400', '350429', '泰宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1182, '350400', '350430', '建宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1183, '350400', '350481', '永安市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1184, '350500', '350501', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1185, '350500', '350502', '鲤城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1186, '350500', '350503', '丰泽区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1187, '350500', '350504', '洛江区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1188, '350500', '350505', '泉港区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1189, '350500', '350521', '惠安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1190, '350500', '350524', '安溪县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1191, '350500', '350525', '永春县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1192, '350500', '350526', '德化县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1193, '350500', '350527', '金门县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1194, '350500', '350581', '石狮市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1195, '350500', '350582', '晋江市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1196, '350500', '350583', '南安市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1197, '350600', '350601', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1198, '350600', '350602', '芗城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1199, '350600', '350603', '龙文区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1200, '350600', '350622', '云霄县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1201, '350600', '350623', '漳浦县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1202, '350600', '350624', '诏安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1203, '350600', '350625', '长泰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1204, '350600', '350626', '东山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1205, '350600', '350627', '南靖县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1206, '350600', '350628', '平和县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1207, '350600', '350629', '华安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1208, '350600', '350681', '龙海市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1209, '350700', '350701', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1210, '350700', '350702', '延平区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1211, '350700', '350721', '顺昌县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1212, '350700', '350722', '浦城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1213, '350700', '350723', '光泽县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1214, '350700', '350724', '松溪县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1215, '350700', '350725', '政和县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1216, '350700', '350781', '邵武市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1217, '350700', '350782', '武夷山市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1218, '350700', '350783', '建瓯市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1219, '350700', '350784', '建阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1220, '350800', '350801', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1221, '350800', '350802', '新罗区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1222, '350800', '350821', '长汀县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1223, '350800', '350822', '永定县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1224, '350800', '350823', '上杭县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1225, '350800', '350824', '武平县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1226, '350800', '350825', '连城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1227, '350800', '350881', '漳平市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1228, '350900', '350901', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1229, '350900', '350902', '蕉城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1230, '350900', '350921', '霞浦县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1231, '350900', '350922', '古田县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1232, '350900', '350923', '屏南县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1233, '350900', '350924', '寿宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1234, '350900', '350925', '周宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1235, '350900', '350926', '柘荣县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1236, '350900', '350981', '福安市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1237, '350900', '350982', '福鼎市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1238, '360100', '360101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1239, '360100', '360102', '东湖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1240, '360100', '360103', '西湖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1241, '360100', '360104', '青云谱区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1242, '360100', '360105', '湾里区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1243, '360100', '360111', '青山湖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1244, '360100', '360121', '南昌县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1245, '360100', '360122', '新建县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1246, '360100', '360123', '安义县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1247, '360100', '360124', '进贤县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1248, '360200', '360201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1249, '360200', '360202', '昌江区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1250, '360200', '360203', '珠山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1251, '360200', '360222', '浮梁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1252, '360200', '360281', '乐平市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1253, '360300', '360301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1254, '360300', '360302', '安源区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1255, '360300', '360313', '湘东区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1256, '360300', '360321', '莲花县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1257, '360300', '360322', '上栗县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1258, '360300', '360323', '芦溪县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1259, '360400', '360401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1260, '360400', '360402', '庐山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1261, '360400', '360403', '浔阳区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1262, '360400', '360421', '九江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1263, '360400', '360423', '武宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1264, '360400', '360424', '修水县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1265, '360400', '360425', '永修县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1266, '360400', '360426', '德安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1267, '360400', '360427', '星子县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1268, '360400', '360428', '都昌县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1269, '360400', '360429', '湖口县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1270, '360400', '360430', '彭泽县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1271, '360400', '360481', '瑞昌市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1272, '360500', '360501', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1273, '360500', '360502', '渝水区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1274, '360500', '360521', '分宜县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1275, '360600', '360601', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1276, '360600', '360602', '月湖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1277, '360600', '360622', '余江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1278, '360600', '360681', '贵溪市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1279, '360700', '360701', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1280, '360700', '360702', '章贡区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1281, '360700', '360721', '赣　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1282, '360700', '360722', '信丰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1283, '360700', '360723', '大余县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1284, '360700', '360724', '上犹县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1285, '360700', '360725', '崇义县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1286, '360700', '360726', '安远县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1287, '360700', '360727', '龙南县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1288, '360700', '360728', '定南县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1289, '360700', '360729', '全南县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1290, '360700', '360730', '宁都县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1291, '360700', '360731', '于都县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1292, '360700', '360732', '兴国县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1293, '360700', '360733', '会昌县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1294, '360700', '360734', '寻乌县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1295, '360700', '360735', '石城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1296, '360700', '360781', '瑞金市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1297, '360700', '360782', '南康市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1298, '360800', '360801', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1299, '360800', '360802', '吉州区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1300, '360800', '360803', '青原区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1301, '360800', '360821', '吉安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1302, '360800', '360822', '吉水县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1303, '360800', '360823', '峡江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1304, '360800', '360824', '新干县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1305, '360800', '360825', '永丰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1306, '360800', '360826', '泰和县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1307, '360800', '360827', '遂川县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1308, '360800', '360828', '万安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1309, '360800', '360829', '安福县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1310, '360800', '360830', '永新县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1311, '360800', '360881', '井冈山市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1312, '360900', '360901', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1313, '360900', '360902', '袁州区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1314, '360900', '360921', '奉新县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1315, '360900', '360922', '万载县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1316, '360900', '360923', '上高县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1317, '360900', '360924', '宜丰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1318, '360900', '360925', '靖安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1319, '360900', '360926', '铜鼓县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1320, '360900', '360981', '丰城市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1321, '360900', '360982', '樟树市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1322, '360900', '360983', '高安市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1323, '361000', '361001', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1324, '361000', '361002', '临川区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1325, '361000', '361021', '南城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1326, '361000', '361022', '黎川县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1327, '361000', '361023', '南丰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1328, '361000', '361024', '崇仁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1329, '361000', '361025', '乐安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1330, '361000', '361026', '宜黄县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1331, '361000', '361027', '金溪县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1332, '361000', '361028', '资溪县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1333, '361000', '361029', '东乡县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1334, '361000', '361030', '广昌县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1335, '361100', '361101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1336, '361100', '361102', '信州区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1337, '361100', '361121', '上饶县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1338, '361100', '361122', '广丰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1339, '361100', '361123', '玉山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1340, '361100', '361124', '铅山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1341, '361100', '361125', '横峰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1342, '361100', '361126', '弋阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1343, '361100', '361127', '余干县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1344, '361100', '361128', '鄱阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1345, '361100', '361129', '万年县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1346, '361100', '361130', '婺源县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1347, '361100', '361181', '德兴市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1348, '370100', '370101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1349, '370100', '370102', '历下区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1350, '370100', '370103', '市中区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1351, '370100', '370104', '槐荫区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1352, '370100', '370105', '天桥区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1353, '370100', '370112', '历城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1354, '370100', '370113', '长清区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1355, '370100', '370124', '平阴县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1356, '370100', '370125', '济阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1357, '370100', '370126', '商河县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1358, '370100', '370181', '章丘市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1359, '370200', '370201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1360, '370200', '370202', '市南区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1361, '370200', '370203', '市北区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1362, '370200', '370205', '四方区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1363, '370200', '370211', '黄岛区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1364, '370200', '370212', '崂山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1365, '370200', '370213', '李沧区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1366, '370200', '370214', '城阳区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1367, '370200', '370281', '胶州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1368, '370200', '370282', '即墨市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1369, '370200', '370283', '平度市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1370, '370200', '370284', '胶南市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1371, '370200', '370285', '莱西市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1372, '370300', '370301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1373, '370300', '370302', '淄川区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1374, '370300', '370303', '张店区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1375, '370300', '370304', '博山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1376, '370300', '370305', '临淄区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1377, '370300', '370306', '周村区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1378, '370300', '370321', '桓台县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1379, '370300', '370322', '高青县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1380, '370300', '370323', '沂源县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1381, '370400', '370401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1382, '370400', '370402', '市中区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1383, '370400', '370403', '薛城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1384, '370400', '370404', '峄城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1385, '370400', '370405', '台儿庄区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1386, '370400', '370406', '山亭区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1387, '370400', '370481', '滕州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1388, '370500', '370501', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1389, '370500', '370502', '东营区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1390, '370500', '370503', '河口区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1391, '370500', '370521', '垦利县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1392, '370500', '370522', '利津县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1393, '370500', '370523', '广饶县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1394, '370600', '370601', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1395, '370600', '370602', '芝罘区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1396, '370600', '370611', '福山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1397, '370600', '370612', '牟平区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1398, '370600', '370613', '莱山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1399, '370600', '370634', '长岛县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1400, '370600', '370681', '龙口市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1401, '370600', '370682', '莱阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1402, '370600', '370683', '莱州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1403, '370600', '370684', '蓬莱市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1404, '370600', '370685', '招远市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1405, '370600', '370686', '栖霞市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1406, '370600', '370687', '海阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1407, '370700', '370701', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1408, '370700', '370702', '潍城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1409, '370700', '370703', '寒亭区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1410, '370700', '370704', '坊子区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1411, '370700', '370705', '奎文区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1412, '370700', '370724', '临朐县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1413, '370700', '370725', '昌乐县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1414, '370700', '370781', '青州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1415, '370700', '370782', '诸城市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1416, '370700', '370783', '寿光市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1417, '370700', '370784', '安丘市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1418, '370700', '370785', '高密市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1419, '370700', '370786', '昌邑市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1420, '370800', '370801', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1421, '370800', '370802', '市中区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1422, '370800', '370811', '任城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1423, '370800', '370826', '微山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1424, '370800', '370827', '鱼台县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1425, '370800', '370828', '金乡县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1426, '370800', '370829', '嘉祥县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1427, '370800', '370830', '汶上县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1428, '370800', '370831', '泗水县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1429, '370800', '370832', '梁山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1430, '370800', '370881', '曲阜市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1431, '370800', '370882', '兖州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1432, '370800', '370883', '邹城市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1433, '370900', '370901', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1434, '370900', '370902', '泰山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1435, '370900', '370903', '岱岳区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1436, '370900', '370921', '宁阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1437, '370900', '370923', '东平县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1438, '370900', '370982', '新泰市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1439, '370900', '370983', '肥城市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1440, '371000', '371001', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1441, '371000', '371002', '环翠区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1442, '371000', '371081', '文登市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1443, '371000', '371082', '荣成市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1444, '371000', '371083', '乳山市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1445, '371100', '371101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1446, '371100', '371102', '东港区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1447, '371100', '371103', '岚山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1448, '371100', '371121', '五莲县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1449, '371100', '371122', '莒　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1450, '371200', '371201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1451, '371200', '371202', '莱城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1452, '371200', '371203', '钢城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1453, '371300', '371301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1454, '371300', '371302', '兰山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1455, '371300', '371311', '罗庄区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1456, '371300', '371312', '河东区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1457, '371300', '371321', '沂南县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1458, '371300', '371322', '郯城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1459, '371300', '371323', '沂水县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1460, '371300', '371324', '苍山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1461, '371300', '371325', '费　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1462, '371300', '371326', '平邑县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1463, '371300', '371327', '莒南县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1464, '371300', '371328', '蒙阴县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1465, '371300', '371329', '临沭县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1466, '371400', '371401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1467, '371400', '371402', '德城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1468, '371400', '371421', '陵　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1469, '371400', '371422', '宁津县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1470, '371400', '371423', '庆云县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1471, '371400', '371424', '临邑县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1472, '371400', '371425', '齐河县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1473, '371400', '371426', '平原县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1474, '371400', '371427', '夏津县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1475, '371400', '371428', '武城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1476, '371400', '371481', '乐陵市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1477, '371400', '371482', '禹城市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1478, '371500', '371501', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1479, '371500', '371502', '东昌府区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1480, '371500', '371521', '阳谷县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1481, '371500', '371522', '莘　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1482, '371500', '371523', '茌平县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1483, '371500', '371524', '东阿县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1484, '371500', '371525', '冠　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1485, '371500', '371526', '高唐县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1486, '371500', '371581', '临清市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1487, '371600', '371601', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1488, '371600', '371602', '滨城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1489, '371600', '371621', '惠民县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1490, '371600', '371622', '阳信县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1491, '371600', '371623', '无棣县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1492, '371600', '371624', '沾化县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1493, '371600', '371625', '博兴县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1494, '371600', '371626', '邹平县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1495, '371700', '371701', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1496, '371700', '371702', '牡丹区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1497, '371700', '371721', '曹　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1498, '371700', '371722', '单　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1499, '371700', '371723', '成武县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1500, '371700', '371724', '巨野县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1501, '371700', '371725', '郓城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1502, '371700', '371726', '鄄城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1503, '371700', '371727', '定陶县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1504, '371700', '371728', '东明县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1505, '410100', '410101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1506, '410100', '410102', '中原区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1507, '410100', '410103', '二七区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1508, '410100', '410104', '管城回族区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1509, '410100', '410105', '金水区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1510, '410100', '410106', '上街区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1511, '410100', '410108', '邙山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1512, '410100', '410122', '中牟县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1513, '410100', '410181', '巩义市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1514, '410100', '410182', '荥阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1515, '410100', '410183', '新密市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1516, '410100', '410184', '新郑市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1517, '410100', '410185', '登封市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1518, '410200', '410201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1519, '410200', '410202', '龙亭区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1520, '410200', '410203', '顺河回族区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1521, '410200', '410204', '鼓楼区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1522, '410200', '410205', '南关区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1523, '410200', '410211', '郊　区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1524, '410200', '410221', '杞　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1525, '410200', '410222', '通许县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1526, '410200', '410223', '尉氏县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1527, '410200', '410224', '开封县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1528, '410200', '410225', '兰考县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1529, '410300', '410301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1530, '410300', '410302', '老城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1531, '410300', '410303', '西工区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1532, '410300', '410304', '廛河回族区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1533, '410300', '410305', '涧西区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1534, '410300', '410306', '吉利区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1535, '410300', '410307', '洛龙区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1536, '410300', '410322', '孟津县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1537, '410300', '410323', '新安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1538, '410300', '410324', '栾川县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1539, '410300', '410325', '嵩　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1540, '410300', '410326', '汝阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1541, '410300', '410327', '宜阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1542, '410300', '410328', '洛宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1543, '410300', '410329', '伊川县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1544, '410300', '410381', '偃师市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1545, '410400', '410401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1546, '410400', '410402', '新华区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1547, '410400', '410403', '卫东区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1548, '410400', '410404', '石龙区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1549, '410400', '410411', '湛河区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1550, '410400', '410421', '宝丰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1551, '410400', '410422', '叶　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1552, '410400', '410423', '鲁山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1553, '410400', '410425', '郏　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1554, '410400', '410481', '舞钢市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1555, '410400', '410482', '汝州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1556, '410500', '410501', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1557, '410500', '410502', '文峰区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1558, '410500', '410503', '北关区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1559, '410500', '410505', '殷都区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1560, '410500', '410506', '龙安区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1561, '410500', '410522', '安阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1562, '410500', '410523', '汤阴县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1563, '410500', '410526', '滑　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1564, '410500', '410527', '内黄县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1565, '410500', '410581', '林州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1566, '410600', '410601', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1567, '410600', '410602', '鹤山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1568, '410600', '410603', '山城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1569, '410600', '410611', '淇滨区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1570, '410600', '410621', '浚　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1571, '410600', '410622', '淇　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1572, '410700', '410701', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1573, '410700', '410702', '红旗区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1574, '410700', '410703', '卫滨区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1575, '410700', '410704', '凤泉区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1576, '410700', '410711', '牧野区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1577, '410700', '410721', '新乡县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1578, '410700', '410724', '获嘉县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1579, '410700', '410725', '原阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1580, '410700', '410726', '延津县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1581, '410700', '410727', '封丘县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1582, '410700', '410728', '长垣县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1583, '410700', '410781', '卫辉市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1584, '410700', '410782', '辉县市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1585, '410800', '410801', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1586, '410800', '410802', '解放区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1587, '410800', '410803', '中站区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1588, '410800', '410804', '马村区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1589, '410800', '410811', '山阳区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1590, '410800', '410821', '修武县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1591, '410800', '410822', '博爱县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1592, '410800', '410823', '武陟县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1593, '410800', '410825', '温　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1594, '410800', '410881', '济源市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1595, '410800', '410882', '沁阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1596, '410800', '410883', '孟州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1597, '410900', '410901', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1598, '410900', '410902', '华龙区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1599, '410900', '410922', '清丰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1600, '410900', '410923', '南乐县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1601, '410900', '410926', '范　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1602, '410900', '410927', '台前县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1603, '410900', '410928', '濮阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1604, '411000', '411001', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1605, '411000', '411002', '魏都区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1606, '411000', '411023', '许昌县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1607, '411000', '411024', '鄢陵县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1608, '411000', '411025', '襄城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1609, '411000', '411081', '禹州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1610, '411000', '411082', '长葛市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1611, '411100', '411101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1612, '411100', '411102', '源汇区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1613, '411100', '411103', '郾城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1614, '411100', '411104', '召陵区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1615, '411100', '411121', '舞阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1616, '411100', '411122', '临颍县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1617, '411200', '411201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1618, '411200', '411202', '湖滨区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1619, '411200', '411221', '渑池县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1620, '411200', '411222', '陕　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1621, '411200', '411224', '卢氏县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1622, '411200', '411281', '义马市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1623, '411200', '411282', '灵宝市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1624, '411300', '411301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1625, '411300', '411302', '宛城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1626, '411300', '411303', '卧龙区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1627, '411300', '411321', '南召县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1628, '411300', '411322', '方城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1629, '411300', '411323', '西峡县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1630, '411300', '411324', '镇平县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1631, '411300', '411325', '内乡县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1632, '411300', '411326', '淅川县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1633, '411300', '411327', '社旗县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1634, '411300', '411328', '唐河县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1635, '411300', '411329', '新野县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1636, '411300', '411330', '桐柏县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1637, '411300', '411381', '邓州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1638, '411400', '411401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1639, '411400', '411402', '梁园区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1640, '411400', '411403', '睢阳区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1641, '411400', '411421', '民权县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1642, '411400', '411422', '睢　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1643, '411400', '411423', '宁陵县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1644, '411400', '411424', '柘城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1645, '411400', '411425', '虞城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1646, '411400', '411426', '夏邑县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1647, '411400', '411481', '永城市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1648, '411500', '411501', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1649, '411500', '411502', '师河区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1650, '411500', '411503', '平桥区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1651, '411500', '411521', '罗山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1652, '411500', '411522', '光山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1653, '411500', '411523', '新　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1654, '411500', '411524', '商城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1655, '411500', '411525', '固始县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1656, '411500', '411526', '潢川县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1657, '411500', '411527', '淮滨县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1658, '411500', '411528', '息　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1659, '411600', '411601', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1660, '411600', '411602', '川汇区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1661, '411600', '411621', '扶沟县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1662, '411600', '411622', '西华县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1663, '411600', '411623', '商水县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1664, '411600', '411624', '沈丘县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1665, '411600', '411625', '郸城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1666, '411600', '411626', '淮阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1667, '411600', '411627', '太康县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1668, '411600', '411628', '鹿邑县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1669, '411600', '411681', '项城市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1670, '411700', '411701', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1671, '411700', '411702', '驿城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1672, '411700', '411721', '西平县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1673, '411700', '411722', '上蔡县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1674, '411700', '411723', '平舆县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1675, '411700', '411724', '正阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1676, '411700', '411725', '确山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1677, '411700', '411726', '泌阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1678, '411700', '411727', '汝南县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1679, '411700', '411728', '遂平县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1680, '411700', '411729', '新蔡县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1681, '420100', '420101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1682, '420100', '420102', '江岸区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1683, '420100', '420103', '江汉区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1684, '420100', '420104', '乔口区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1685, '420100', '420105', '汉阳区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1686, '420100', '420106', '武昌区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1687, '420100', '420107', '青山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1688, '420100', '420111', '洪山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1689, '420100', '420112', '东西湖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1690, '420100', '420113', '汉南区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1691, '420100', '420114', '蔡甸区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1692, '420100', '420115', '江夏区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1693, '420100', '420116', '黄陂区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1694, '420100', '420117', '新洲区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1695, '420200', '420201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1696, '420200', '420202', '黄石港区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1697, '420200', '420203', '西塞山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1698, '420200', '420204', '下陆区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1699, '420200', '420205', '铁山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1700, '420200', '420222', '阳新县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1701, '420200', '420281', '大冶市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1702, '420300', '420301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1703, '420300', '420302', '茅箭区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1704, '420300', '420303', '张湾区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1705, '420300', '420321', '郧　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1706, '420300', '420322', '郧西县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1707, '420300', '420323', '竹山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1708, '420300', '420324', '竹溪县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1709, '420300', '420325', '房　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1710, '420300', '420381', '丹江口市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1711, '420500', '420501', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1712, '420500', '420502', '西陵区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1713, '420500', '420503', '伍家岗区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1714, '420500', '420504', '点军区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1715, '420500', '420505', '猇亭区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1716, '420500', '420506', '夷陵区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1717, '420500', '420525', '远安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1718, '420500', '420526', '兴山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1719, '420500', '420527', '秭归县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1720, '420500', '420528', '长阳土家族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1721, '420500', '420529', '五峰土家族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1722, '420500', '420581', '宜都市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1723, '420500', '420582', '当阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1724, '420500', '420583', '枝江市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1725, '420600', '420601', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1726, '420600', '420602', '襄城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1727, '420600', '420606', '樊城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1728, '420600', '420607', '襄阳区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1729, '420600', '420624', '南漳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1730, '420600', '420625', '谷城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1731, '420600', '420626', '保康县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1732, '420600', '420682', '老河口市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1733, '420600', '420683', '枣阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1734, '420600', '420684', '宜城市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1735, '420700', '420701', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1736, '420700', '420702', '梁子湖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1737, '420700', '420703', '华容区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1738, '420700', '420704', '鄂城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1739, '420800', '420801', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1740, '420800', '420802', '东宝区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1741, '420800', '420804', '掇刀区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1742, '420800', '420821', '京山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1743, '420800', '420822', '沙洋县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1744, '420800', '420881', '钟祥市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1745, '420900', '420901', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1746, '420900', '420902', '孝南区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1747, '420900', '420921', '孝昌县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1748, '420900', '420922', '大悟县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1749, '420900', '420923', '云梦县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1750, '420900', '420981', '应城市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1751, '420900', '420982', '安陆市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1752, '420900', '420984', '汉川市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1753, '421000', '421001', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1754, '421000', '421002', '沙市区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1755, '421000', '421003', '荆州区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1756, '421000', '421022', '公安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1757, '421000', '421023', '监利县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1758, '421000', '421024', '江陵县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1759, '421000', '421081', '石首市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1760, '421000', '421083', '洪湖市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1761, '421000', '421087', '松滋市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1762, '421100', '421101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1763, '421100', '421102', '黄州区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1764, '421100', '421121', '团风县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1765, '421100', '421122', '红安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1766, '421100', '421123', '罗田县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1767, '421100', '421124', '英山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1768, '421100', '421125', '浠水县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1769, '421100', '421126', '蕲春县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1770, '421100', '421127', '黄梅县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1771, '421100', '421181', '麻城市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1772, '421100', '421182', '武穴市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1773, '421200', '421201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1774, '421200', '421202', '咸安区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1775, '421200', '421221', '嘉鱼县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1776, '421200', '421222', '通城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1777, '421200', '421223', '崇阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1778, '421200', '421224', '通山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1779, '421200', '421281', '赤壁市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1780, '421300', '421301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1781, '421300', '421302', '曾都区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1782, '421300', '421381', '广水市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1783, '422800', '422801', '恩施市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1784, '422800', '422802', '利川市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1785, '422800', '422822', '建始县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1786, '422800', '422823', '巴东县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1787, '422800', '422825', '宣恩县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1788, '422800', '422826', '咸丰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1789, '422800', '422827', '来凤县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1790, '422800', '422828', '鹤峰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1791, '429000', '429004', '仙桃市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1792, '429000', '429005', '潜江市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1793, '429000', '429006', '天门市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1794, '429000', '429021', '神农架林区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1795, '430100', '430101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1796, '430100', '430102', '芙蓉区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1797, '430100', '430103', '天心区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1798, '430100', '430104', '岳麓区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1799, '430100', '430105', '开福区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1800, '430100', '430111', '雨花区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1801, '430100', '430121', '长沙县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1802, '430100', '430122', '望城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1803, '430100', '430124', '宁乡县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1804, '430100', '430181', '浏阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1805, '430200', '430201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1806, '430200', '430202', '荷塘区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1807, '430200', '430203', '芦淞区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1808, '430200', '430204', '石峰区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1809, '430200', '430211', '天元区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1810, '430200', '430221', '株洲县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1811, '430200', '430223', '攸　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1812, '430200', '430224', '茶陵县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1813, '430200', '430225', '炎陵县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1814, '430200', '430281', '醴陵市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1815, '430300', '430301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1816, '430300', '430302', '雨湖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1817, '430300', '430304', '岳塘区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1818, '430300', '430321', '湘潭县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1819, '430300', '430381', '湘乡市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1820, '430300', '430382', '韶山市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1821, '430400', '430401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1822, '430400', '430405', '珠晖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1823, '430400', '430406', '雁峰区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1824, '430400', '430407', '石鼓区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1825, '430400', '430408', '蒸湘区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1826, '430400', '430412', '南岳区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1827, '430400', '430421', '衡阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1828, '430400', '430422', '衡南县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1829, '430400', '430423', '衡山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1830, '430400', '430424', '衡东县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1831, '430400', '430426', '祁东县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1832, '430400', '430481', '耒阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1833, '430400', '430482', '常宁市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1834, '430500', '430501', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1835, '430500', '430502', '双清区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1836, '430500', '430503', '大祥区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1837, '430500', '430511', '北塔区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1838, '430500', '430521', '邵东县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1839, '430500', '430522', '新邵县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1840, '430500', '430523', '邵阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1841, '430500', '430524', '隆回县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1842, '430500', '430525', '洞口县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1843, '430500', '430527', '绥宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1844, '430500', '430528', '新宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1845, '430500', '430529', '城步苗族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1846, '430500', '430581', '武冈市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1847, '430600', '430601', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1848, '430600', '430602', '岳阳楼区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1849, '430600', '430603', '云溪区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1850, '430600', '430611', '君山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1851, '430600', '430621', '岳阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1852, '430600', '430623', '华容县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1853, '430600', '430624', '湘阴县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1854, '430600', '430626', '平江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1855, '430600', '430681', '汨罗市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1856, '430600', '430682', '临湘市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1857, '430700', '430701', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1858, '430700', '430702', '武陵区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1859, '430700', '430703', '鼎城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1860, '430700', '430721', '安乡县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1861, '430700', '430722', '汉寿县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1862, '430700', '430723', '澧　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1863, '430700', '430724', '临澧县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1864, '430700', '430725', '桃源县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1865, '430700', '430726', '石门县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1866, '430700', '430781', '津市市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1867, '430800', '430801', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1868, '430800', '430802', '永定区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1869, '430800', '430811', '武陵源区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1870, '430800', '430821', '慈利县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1871, '430800', '430822', '桑植县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1872, '430900', '430901', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1873, '430900', '430902', '资阳区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1874, '430900', '430903', '赫山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1875, '430900', '430921', '南　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1876, '430900', '430922', '桃江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1877, '430900', '430923', '安化县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1878, '430900', '430981', '沅江市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1879, '431000', '431001', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1880, '431000', '431002', '北湖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1881, '431000', '431003', '苏仙区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1882, '431000', '431021', '桂阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1883, '431000', '431022', '宜章县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1884, '431000', '431023', '永兴县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1885, '431000', '431024', '嘉禾县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1886, '431000', '431025', '临武县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1887, '431000', '431026', '汝城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1888, '431000', '431027', '桂东县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1889, '431000', '431028', '安仁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1890, '431000', '431081', '资兴市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1891, '431100', '431101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1892, '431100', '431102', '芝山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1893, '431100', '431103', '冷水滩区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1894, '431100', '431121', '祁阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1895, '431100', '431122', '东安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1896, '431100', '431123', '双牌县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1897, '431100', '431124', '道　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1898, '431100', '431125', '江永县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1899, '431100', '431126', '宁远县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1900, '431100', '431127', '蓝山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1901, '431100', '431128', '新田县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1902, '431100', '431129', '江华瑶族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1903, '431200', '431201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1904, '431200', '431202', '鹤城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1905, '431200', '431221', '中方县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1906, '431200', '431222', '沅陵县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1907, '431200', '431223', '辰溪县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1908, '431200', '431224', '溆浦县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1909, '431200', '431225', '会同县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1910, '431200', '431226', '麻阳苗族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1911, '431200', '431227', '新晃侗族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1912, '431200', '431228', '芷江侗族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1913, '431200', '431229', '靖州苗族侗族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1914, '431200', '431230', '通道侗族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1915, '431200', '431281', '洪江市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1916, '431300', '431301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1917, '431300', '431302', '娄星区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1918, '431300', '431321', '双峰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1919, '431300', '431322', '新化县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1920, '431300', '431381', '冷水江市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1921, '431300', '431382', '涟源市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1922, '433100', '433101', '吉首市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1923, '433100', '433122', '泸溪县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1924, '433100', '433123', '凤凰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1925, '433100', '433124', '花垣县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1926, '433100', '433125', '保靖县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1927, '433100', '433126', '古丈县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1928, '433100', '433127', '永顺县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1929, '433100', '433130', '龙山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1930, '440100', '440101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1931, '440100', '440102', '东山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1932, '440100', '440103', '荔湾区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1933, '440100', '440104', '越秀区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1934, '440100', '440105', '海珠区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1935, '440100', '440106', '天河区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1936, '440100', '440107', '芳村区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1937, '440100', '440111', '白云区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1938, '440100', '440112', '黄埔区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1939, '440100', '440113', '番禺区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1940, '440100', '440114', '花都区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1941, '440100', '440183', '增城市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1942, '440100', '440184', '从化市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1943, '440200', '440201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1944, '440200', '440203', '武江区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1945, '440200', '440204', '浈江区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1946, '440200', '440205', '曲江区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1947, '440200', '440222', '始兴县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1948, '440200', '440224', '仁化县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1949, '440200', '440229', '翁源县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1950, '440200', '440232', '乳源瑶族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1951, '440200', '440233', '新丰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1952, '440200', '440281', '乐昌市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1953, '440200', '440282', '南雄市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1954, '440300', '440301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1955, '440300', '440303', '罗湖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1956, '440300', '440304', '福田区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1957, '440300', '440305', '南山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1958, '440300', '440306', '宝安区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1959, '440300', '440307', '龙岗区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1960, '440300', '440308', '盐田区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1961, '440400', '440401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1962, '440400', '440402', '香洲区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1963, '440400', '440403', '斗门区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1964, '440400', '440404', '金湾区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1965, '440500', '440501', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1966, '440500', '440507', '龙湖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1967, '440500', '440511', '金平区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1968, '440500', '440512', '濠江区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1969, '440500', '440513', '潮阳区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1970, '440500', '440514', '潮南区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1971, '440500', '440515', '澄海区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1972, '440500', '440523', '南澳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1973, '440600', '440601', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1974, '440600', '440604', '禅城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1975, '440600', '440605', '南海区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1976, '440600', '440606', '顺德区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1977, '440600', '440607', '三水区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1978, '440600', '440608', '高明区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1979, '440700', '440701', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1980, '440700', '440703', '蓬江区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1981, '440700', '440704', '江海区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1982, '440700', '440705', '新会区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1983, '440700', '440781', '台山市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1984, '440700', '440783', '开平市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1985, '440700', '440784', '鹤山市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1986, '440700', '440785', '恩平市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1987, '440800', '440801', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1988, '440800', '440802', '赤坎区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1989, '440800', '440803', '霞山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1990, '440800', '440804', '坡头区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1991, '440800', '440811', '麻章区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1992, '440800', '440823', '遂溪县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1993, '440800', '440825', '徐闻县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1994, '440800', '440881', '廉江市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1995, '440800', '440882', '雷州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1996, '440800', '440883', '吴川市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1997, '440900', '440901', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1998, '440900', '440902', '茂南区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (1999, '440900', '440903', '茂港区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2000, '440900', '440923', '电白县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2001, '440900', '440981', '高州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2002, '440900', '440982', '化州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2003, '440900', '440983', '信宜市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2004, '441200', '441201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2005, '441200', '441202', '端州区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2006, '441200', '441203', '鼎湖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2007, '441200', '441223', '广宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2008, '441200', '441224', '怀集县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2009, '441200', '441225', '封开县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2010, '441200', '441226', '德庆县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2011, '441200', '441283', '高要市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2012, '441200', '441284', '四会市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2013, '441300', '441301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2014, '441300', '441302', '惠城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2015, '441300', '441303', '惠阳区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2016, '441300', '441322', '博罗县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2017, '441300', '441323', '惠东县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2018, '441300', '441324', '龙门县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2019, '441400', '441401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2020, '441400', '441402', '梅江区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2021, '441400', '441421', '梅　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2022, '441400', '441422', '大埔县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2023, '441400', '441423', '丰顺县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2024, '441400', '441424', '五华县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2025, '441400', '441426', '平远县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2026, '441400', '441427', '蕉岭县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2027, '441400', '441481', '兴宁市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2028, '441500', '441501', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2029, '441500', '441502', '城　区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2030, '441500', '441521', '海丰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2031, '441500', '441523', '陆河县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2032, '441500', '441581', '陆丰市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2033, '441600', '441601', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2034, '441600', '441602', '源城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2035, '441600', '441621', '紫金县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2036, '441600', '441622', '龙川县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2037, '441600', '441623', '连平县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2038, '441600', '441624', '和平县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2039, '441600', '441625', '东源县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2040, '441700', '441701', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2041, '441700', '441702', '江城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2042, '441700', '441721', '阳西县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2043, '441700', '441723', '阳东县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2044, '441700', '441781', '阳春市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2045, '441800', '441801', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2046, '441800', '441802', '清城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2047, '441800', '441821', '佛冈县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2048, '441800', '441823', '阳山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2049, '441800', '441825', '连山壮族瑶族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2050, '441800', '441826', '连南瑶族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2051, '441800', '441827', '清新县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2052, '441800', '441881', '英德市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2053, '441800', '441882', '连州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2054, '445100', '445101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2055, '445100', '445102', '湘桥区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2056, '445100', '445121', '潮安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2057, '445100', '445122', '饶平县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2058, '445200', '445201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2059, '445200', '445202', '榕城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2060, '445200', '445221', '揭东县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2061, '445200', '445222', '揭西县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2062, '445200', '445224', '惠来县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2063, '445200', '445281', '普宁市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2064, '445300', '445301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2065, '445300', '445302', '云城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2066, '445300', '445321', '新兴县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2067, '445300', '445322', '郁南县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2068, '445300', '445323', '云安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2069, '445300', '445381', '罗定市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2070, '450100', '450101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2071, '450100', '450102', '兴宁区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2072, '450100', '450103', '青秀区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2073, '450100', '450105', '江南区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2074, '450100', '450107', '西乡塘区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2075, '450100', '450108', '良庆区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2076, '450100', '450109', '邕宁区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2077, '450100', '450122', '武鸣县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2078, '450100', '450123', '隆安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2079, '450100', '450124', '马山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2080, '450100', '450125', '上林县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2081, '450100', '450126', '宾阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2082, '450100', '450127', '横　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2083, '450200', '450201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2084, '450200', '450202', '城中区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2085, '450200', '450203', '鱼峰区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2086, '450200', '450204', '柳南区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2087, '450200', '450205', '柳北区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2088, '450200', '450221', '柳江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2089, '450200', '450222', '柳城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2090, '450200', '450223', '鹿寨县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2091, '450200', '450224', '融安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2092, '450200', '450225', '融水苗族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2093, '450200', '450226', '三江侗族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2094, '450300', '450301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2095, '450300', '450302', '秀峰区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2096, '450300', '450303', '叠彩区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2097, '450300', '450304', '象山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2098, '450300', '450305', '七星区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2099, '450300', '450311', '雁山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2100, '450300', '450321', '阳朔县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2101, '450300', '450322', '临桂县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2102, '450300', '450323', '灵川县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2103, '450300', '450324', '全州县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2104, '450300', '450325', '兴安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2105, '450300', '450326', '永福县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2106, '450300', '450327', '灌阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2107, '450300', '450328', '龙胜各族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2108, '450300', '450329', '资源县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2109, '450300', '450330', '平乐县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2110, '450300', '450331', '荔蒲县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2111, '450300', '450332', '恭城瑶族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2112, '450400', '450401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2113, '450400', '450403', '万秀区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2114, '450400', '450404', '蝶山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2115, '450400', '450405', '长洲区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2116, '450400', '450421', '苍梧县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2117, '450400', '450422', '藤　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2118, '450400', '450423', '蒙山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2119, '450400', '450481', '岑溪市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2120, '450500', '450501', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2121, '450500', '450502', '海城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2122, '450500', '450503', '银海区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2123, '450500', '450512', '铁山港区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2124, '450500', '450521', '合浦县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2125, '450600', '450601', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2126, '450600', '450602', '港口区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2127, '450600', '450603', '防城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2128, '450600', '450621', '上思县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2129, '450600', '450681', '东兴市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2130, '450700', '450701', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2131, '450700', '450702', '钦南区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2132, '450700', '450703', '钦北区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2133, '450700', '450721', '灵山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2134, '450700', '450722', '浦北县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2135, '450800', '450801', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2136, '450800', '450802', '港北区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2137, '450800', '450803', '港南区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2138, '450800', '450804', '覃塘区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2139, '450800', '450821', '平南县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2140, '450800', '450881', '桂平市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2141, '450900', '450901', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2142, '450900', '450902', '玉州区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2143, '450900', '450921', '容　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2144, '450900', '450922', '陆川县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2145, '450900', '450923', '博白县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2146, '450900', '450924', '兴业县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2147, '450900', '450981', '北流市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2148, '451000', '451001', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2149, '451000', '451002', '右江区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2150, '451000', '451021', '田阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2151, '451000', '451022', '田东县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2152, '451000', '451023', '平果县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2153, '451000', '451024', '德保县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2154, '451000', '451025', '靖西县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2155, '451000', '451026', '那坡县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2156, '451000', '451027', '凌云县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2157, '451000', '451028', '乐业县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2158, '451000', '451029', '田林县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2159, '451000', '451030', '西林县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2160, '451000', '451031', '隆林各族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2161, '451100', '451101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2162, '451100', '451102', '八步区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2163, '451100', '451121', '昭平县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2164, '451100', '451122', '钟山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2165, '451100', '451123', '富川瑶族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2166, '451200', '451201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2167, '451200', '451202', '金城江区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2168, '451200', '451221', '南丹县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2169, '451200', '451222', '天峨县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2170, '451200', '451223', '凤山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2171, '451200', '451224', '东兰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2172, '451200', '451225', '罗城仫佬族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2173, '451200', '451226', '环江毛南族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2174, '451200', '451227', '巴马瑶族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2175, '451200', '451228', '都安瑶族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2176, '451200', '451229', '大化瑶族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2177, '451200', '451281', '宜州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2178, '451300', '451301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2179, '451300', '451302', '兴宾区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2180, '451300', '451321', '忻城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2181, '451300', '451322', '象州县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2182, '451300', '451323', '武宣县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2183, '451300', '451324', '金秀瑶族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2184, '451300', '451381', '合山市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2185, '451400', '451401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2186, '451400', '451402', '江洲区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2187, '451400', '451421', '扶绥县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2188, '451400', '451422', '宁明县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2189, '451400', '451423', '龙州县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2190, '451400', '451424', '大新县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2191, '451400', '451425', '天等县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2192, '451400', '451481', '凭祥市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2193, '460100', '460101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2194, '460100', '460105', '秀英区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2195, '460100', '460106', '龙华区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2196, '460100', '460107', '琼山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2197, '460100', '460108', '美兰区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2198, '460200', '460201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2199, '469000', '469001', '五指山市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2200, '469000', '469002', '琼海市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2201, '469000', '469003', '儋州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2202, '469000', '469005', '文昌市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2203, '469000', '469006', '万宁市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2204, '469000', '469007', '东方市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2205, '469000', '469025', '定安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2206, '469000', '469026', '屯昌县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2207, '469000', '469027', '澄迈县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2208, '469000', '469028', '临高县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2209, '469000', '469030', '白沙黎族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2210, '469000', '469031', '昌江黎族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2211, '469000', '469033', '乐东黎族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2212, '469000', '469034', '陵水黎族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2213, '469000', '469035', '保亭黎族苗族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2214, '469000', '469036', '琼中黎族苗族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2215, '469000', '469037', '西沙群岛');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2216, '469000', '469038', '南沙群岛');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2217, '469000', '469039', '中沙群岛的岛礁及其海域');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2218, '500100', '500101', '万州区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2219, '500100', '500102', '涪陵区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2220, '500100', '500103', '渝中区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2221, '500100', '500104', '大渡口区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2222, '500100', '500105', '江北区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2223, '500100', '500106', '沙坪坝区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2224, '500100', '500107', '九龙坡区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2225, '500100', '500108', '南岸区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2226, '500100', '500109', '北碚区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2227, '500100', '500110', '万盛区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2228, '500100', '500111', '双桥区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2229, '500100', '500112', '渝北区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2230, '500100', '500113', '巴南区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2231, '500100', '500114', '黔江区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2232, '500100', '500115', '长寿区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2233, '500200', '500222', '綦江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2234, '500200', '500223', '潼南县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2235, '500200', '500224', '铜梁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2236, '500200', '500225', '大足县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2237, '500200', '500226', '荣昌县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2238, '500200', '500227', '璧山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2239, '500200', '500228', '梁平县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2240, '500200', '500229', '城口县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2241, '500200', '500230', '丰都县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2242, '500200', '500231', '垫江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2243, '500200', '500232', '武隆县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2244, '500200', '500233', '忠　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2245, '500200', '500234', '开　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2246, '500200', '500235', '云阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2247, '500200', '500236', '奉节县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2248, '500200', '500237', '巫山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2249, '500200', '500238', '巫溪县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2250, '500200', '500240', '石柱土家族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2251, '500200', '500241', '秀山土家族苗族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2252, '500200', '500242', '酉阳土家族苗族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2253, '500200', '500243', '彭水苗族土家族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2254, '500300', '500381', '江津市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2255, '500300', '500382', '合川市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2256, '500300', '500383', '永川市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2257, '500300', '500384', '南川市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2258, '510100', '510101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2259, '510100', '510104', '锦江区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2260, '510100', '510105', '青羊区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2261, '510100', '510106', '金牛区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2262, '510100', '510107', '武侯区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2263, '510100', '510108', '成华区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2264, '510100', '510112', '龙泉驿区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2265, '510100', '510113', '青白江区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2266, '510100', '510114', '新都区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2267, '510100', '510115', '温江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2268, '510100', '510121', '金堂县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2269, '510100', '510122', '双流县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2270, '510100', '510124', '郫　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2271, '510100', '510129', '大邑县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2272, '510100', '510131', '蒲江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2273, '510100', '510132', '新津县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2274, '510100', '510181', '都江堰市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2275, '510100', '510182', '彭州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2276, '510100', '510183', '邛崃市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2277, '510100', '510184', '崇州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2278, '510300', '510301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2279, '510300', '510302', '自流井区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2280, '510300', '510303', '贡井区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2281, '510300', '510304', '大安区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2282, '510300', '510311', '沿滩区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2283, '510300', '510321', '荣　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2284, '510300', '510322', '富顺县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2285, '510400', '510401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2286, '510400', '510402', '东　区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2287, '510400', '510403', '西　区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2288, '510400', '510411', '仁和区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2289, '510400', '510421', '米易县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2290, '510400', '510422', '盐边县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2291, '510500', '510501', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2292, '510500', '510502', '江阳区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2293, '510500', '510503', '纳溪区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2294, '510500', '510504', '龙马潭区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2295, '510500', '510521', '泸　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2296, '510500', '510522', '合江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2297, '510500', '510524', '叙永县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2298, '510500', '510525', '古蔺县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2299, '510600', '510601', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2300, '510600', '510603', '旌阳区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2301, '510600', '510623', '中江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2302, '510600', '510626', '罗江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2303, '510600', '510681', '广汉市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2304, '510600', '510682', '什邡市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2305, '510600', '510683', '绵竹市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2306, '510700', '510701', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2307, '510700', '510703', '涪城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2308, '510700', '510704', '游仙区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2309, '510700', '510722', '三台县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2310, '510700', '510723', '盐亭县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2311, '510700', '510724', '安　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2312, '510700', '510725', '梓潼县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2313, '510700', '510726', '北川羌族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2314, '510700', '510727', '平武县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2315, '510700', '510781', '江油市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2316, '510800', '510801', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2317, '510800', '510802', '市中区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2318, '510800', '510811', '元坝区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2319, '510800', '510812', '朝天区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2320, '510800', '510821', '旺苍县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2321, '510800', '510822', '青川县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2322, '510800', '510823', '剑阁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2323, '510800', '510824', '苍溪县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2324, '510900', '510901', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2325, '510900', '510903', '船山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2326, '510900', '510904', '安居区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2327, '510900', '510921', '蓬溪县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2328, '510900', '510922', '射洪县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2329, '510900', '510923', '大英县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2330, '511000', '511001', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2331, '511000', '511002', '市中区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2332, '511000', '511011', '东兴区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2333, '511000', '511024', '威远县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2334, '511000', '511025', '资中县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2335, '511000', '511028', '隆昌县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2336, '511100', '511101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2337, '511100', '511102', '市中区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2338, '511100', '511111', '沙湾区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2339, '511100', '511112', '五通桥区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2340, '511100', '511113', '金口河区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2341, '511100', '511123', '犍为县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2342, '511100', '511124', '井研县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2343, '511100', '511126', '夹江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2344, '511100', '511129', '沐川县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2345, '511100', '511132', '峨边彝族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2346, '511100', '511133', '马边彝族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2347, '511100', '511181', '峨眉山市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2348, '511300', '511301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2349, '511300', '511302', '顺庆区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2350, '511300', '511303', '高坪区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2351, '511300', '511304', '嘉陵区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2352, '511300', '511321', '南部县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2353, '511300', '511322', '营山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2354, '511300', '511323', '蓬安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2355, '511300', '511324', '仪陇县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2356, '511300', '511325', '西充县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2357, '511300', '511381', '阆中市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2358, '511400', '511401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2359, '511400', '511402', '东坡区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2360, '511400', '511421', '仁寿县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2361, '511400', '511422', '彭山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2362, '511400', '511423', '洪雅县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2363, '511400', '511424', '丹棱县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2364, '511400', '511425', '青神县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2365, '511500', '511501', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2366, '511500', '511502', '翠屏区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2367, '511500', '511521', '宜宾县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2368, '511500', '511522', '南溪县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2369, '511500', '511523', '江安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2370, '511500', '511524', '长宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2371, '511500', '511525', '高　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2372, '511500', '511526', '珙　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2373, '511500', '511527', '筠连县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2374, '511500', '511528', '兴文县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2375, '511500', '511529', '屏山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2376, '511600', '511601', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2377, '511600', '511602', '广安区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2378, '511600', '511621', '岳池县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2379, '511600', '511622', '武胜县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2380, '511600', '511623', '邻水县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2381, '511600', '511681', '华莹市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2382, '511700', '511701', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2383, '511700', '511702', '通川区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2384, '511700', '511721', '达　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2385, '511700', '511722', '宣汉县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2386, '511700', '511723', '开江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2387, '511700', '511724', '大竹县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2388, '511700', '511725', '渠　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2389, '511700', '511781', '万源市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2390, '511800', '511801', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2391, '511800', '511802', '雨城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2392, '511800', '511821', '名山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2393, '511800', '511822', '荥经县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2394, '511800', '511823', '汉源县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2395, '511800', '511824', '石棉县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2396, '511800', '511825', '天全县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2397, '511800', '511826', '芦山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2398, '511800', '511827', '宝兴县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2399, '511900', '511901', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2400, '511900', '511902', '巴州区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2401, '511900', '511921', '通江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2402, '511900', '511922', '南江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2403, '511900', '511923', '平昌县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2404, '512000', '512001', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2405, '512000', '512002', '雁江区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2406, '512000', '512021', '安岳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2407, '512000', '512022', '乐至县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2408, '512000', '512081', '简阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2409, '513200', '513221', '汶川县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2410, '513200', '513222', '理　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2411, '513200', '513223', '茂　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2412, '513200', '513224', '松潘县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2413, '513200', '513225', '九寨沟县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2414, '513200', '513226', '金川县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2415, '513200', '513227', '小金县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2416, '513200', '513228', '黑水县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2417, '513200', '513229', '马尔康县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2418, '513200', '513230', '壤塘县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2419, '513200', '513231', '阿坝县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2420, '513200', '513232', '若尔盖县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2421, '513200', '513233', '红原县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2422, '513300', '513321', '康定县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2423, '513300', '513322', '泸定县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2424, '513300', '513323', '丹巴县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2425, '513300', '513324', '九龙县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2426, '513300', '513325', '雅江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2427, '513300', '513326', '道孚县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2428, '513300', '513327', '炉霍县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2429, '513300', '513328', '甘孜县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2430, '513300', '513329', '新龙县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2431, '513300', '513330', '德格县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2432, '513300', '513331', '白玉县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2433, '513300', '513332', '石渠县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2434, '513300', '513333', '色达县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2435, '513300', '513334', '理塘县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2436, '513300', '513335', '巴塘县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2437, '513300', '513336', '乡城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2438, '513300', '513337', '稻城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2439, '513300', '513338', '得荣县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2440, '513400', '513401', '西昌市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2441, '513400', '513422', '木里藏族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2442, '513400', '513423', '盐源县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2443, '513400', '513424', '德昌县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2444, '513400', '513425', '会理县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2445, '513400', '513426', '会东县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2446, '513400', '513427', '宁南县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2447, '513400', '513428', '普格县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2448, '513400', '513429', '布拖县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2449, '513400', '513430', '金阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2450, '513400', '513431', '昭觉县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2451, '513400', '513432', '喜德县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2452, '513400', '513433', '冕宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2453, '513400', '513434', '越西县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2454, '513400', '513435', '甘洛县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2455, '513400', '513436', '美姑县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2456, '513400', '513437', '雷波县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2457, '520100', '520101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2458, '520100', '520102', '南明区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2459, '520100', '520103', '云岩区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2460, '520100', '520111', '花溪区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2461, '520100', '520112', '乌当区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2462, '520100', '520113', '白云区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2463, '520100', '520114', '小河区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2464, '520100', '520121', '开阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2465, '520100', '520122', '息烽县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2466, '520100', '520123', '修文县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2467, '520100', '520181', '清镇市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2468, '520200', '520201', '钟山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2469, '520200', '520203', '六枝特区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2470, '520200', '520221', '水城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2471, '520200', '520222', '盘　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2472, '520300', '520301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2473, '520300', '520302', '红花岗区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2474, '520300', '520303', '汇川区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2475, '520300', '520321', '遵义县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2476, '520300', '520322', '桐梓县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2477, '520300', '520323', '绥阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2478, '520300', '520324', '正安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2479, '520300', '520325', '道真仡佬族苗族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2480, '520300', '520326', '务川仡佬族苗族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2481, '520300', '520327', '凤冈县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2482, '520300', '520328', '湄潭县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2483, '520300', '520329', '余庆县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2484, '520300', '520330', '习水县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2485, '520300', '520381', '赤水市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2486, '520300', '520382', '仁怀市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2487, '520400', '520401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2488, '520400', '520402', '西秀区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2489, '520400', '520421', '平坝县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2490, '520400', '520422', '普定县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2491, '520400', '520423', '镇宁布依族苗族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2492, '520400', '520424', '关岭布依族苗族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2493, '520400', '520425', '紫云苗族布依族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2494, '522200', '522201', '铜仁市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2495, '522200', '522222', '江口县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2496, '522200', '522223', '玉屏侗族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2497, '522200', '522224', '石阡县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2498, '522200', '522225', '思南县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2499, '522200', '522226', '印江土家族苗族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2500, '522200', '522227', '德江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2501, '522200', '522228', '沿河土家族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2502, '522200', '522229', '松桃苗族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2503, '522200', '522230', '万山特区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2504, '522300', '522301', '兴义市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2505, '522300', '522322', '兴仁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2506, '522300', '522323', '普安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2507, '522300', '522324', '晴隆县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2508, '522300', '522325', '贞丰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2509, '522300', '522326', '望谟县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2510, '522300', '522327', '册亨县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2511, '522300', '522328', '安龙县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2512, '522400', '522401', '毕节市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2513, '522400', '522422', '大方县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2514, '522400', '522423', '黔西县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2515, '522400', '522424', '金沙县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2516, '522400', '522425', '织金县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2517, '522400', '522426', '纳雍县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2518, '522400', '522427', '威宁彝族回族苗族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2519, '522400', '522428', '赫章县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2520, '522600', '522601', '凯里市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2521, '522600', '522622', '黄平县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2522, '522600', '522623', '施秉县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2523, '522600', '522624', '三穗县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2524, '522600', '522625', '镇远县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2525, '522600', '522626', '岑巩县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2526, '522600', '522627', '天柱县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2527, '522600', '522628', '锦屏县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2528, '522600', '522629', '剑河县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2529, '522600', '522630', '台江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2530, '522600', '522631', '黎平县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2531, '522600', '522632', '榕江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2532, '522600', '522633', '从江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2533, '522600', '522634', '雷山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2534, '522600', '522635', '麻江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2535, '522600', '522636', '丹寨县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2536, '522700', '522701', '都匀市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2537, '522700', '522702', '福泉市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2538, '522700', '522722', '荔波县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2539, '522700', '522723', '贵定县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2540, '522700', '522725', '瓮安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2541, '522700', '522726', '独山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2542, '522700', '522727', '平塘县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2543, '522700', '522728', '罗甸县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2544, '522700', '522729', '长顺县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2545, '522700', '522730', '龙里县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2546, '522700', '522731', '惠水县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2547, '522700', '522732', '三都水族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2548, '530100', '530101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2549, '530100', '530102', '五华区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2550, '530100', '530103', '盘龙区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2551, '530100', '530111', '官渡区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2552, '530100', '530112', '西山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2553, '530100', '530113', '东川区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2554, '530100', '530121', '呈贡县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2555, '530100', '530122', '晋宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2556, '530100', '530124', '富民县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2557, '530100', '530125', '宜良县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2558, '530100', '530126', '石林彝族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2559, '530100', '530127', '嵩明县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2560, '530100', '530128', '禄劝彝族苗族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2561, '530100', '530129', '寻甸回族彝族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2562, '530100', '530181', '安宁市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2563, '530300', '530301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2564, '530300', '530302', '麒麟区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2565, '530300', '530321', '马龙县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2566, '530300', '530322', '陆良县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2567, '530300', '530323', '师宗县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2568, '530300', '530324', '罗平县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2569, '530300', '530325', '富源县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2570, '530300', '530326', '会泽县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2571, '530300', '530328', '沾益县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2572, '530300', '530381', '宣威市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2573, '530400', '530401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2574, '530400', '530402', '红塔区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2575, '530400', '530421', '江川县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2576, '530400', '530422', '澄江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2577, '530400', '530423', '通海县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2578, '530400', '530424', '华宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2579, '530400', '530425', '易门县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2580, '530400', '530426', '峨山彝族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2581, '530400', '530427', '新平彝族傣族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2582, '530400', '530428', '元江哈尼族彝族傣族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2583, '530500', '530501', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2584, '530500', '530502', '隆阳区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2585, '530500', '530521', '施甸县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2586, '530500', '530522', '腾冲县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2587, '530500', '530523', '龙陵县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2588, '530500', '530524', '昌宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2589, '530600', '530601', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2590, '530600', '530602', '昭阳区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2591, '530600', '530621', '鲁甸县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2592, '530600', '530622', '巧家县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2593, '530600', '530623', '盐津县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2594, '530600', '530624', '大关县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2595, '530600', '530625', '永善县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2596, '530600', '530626', '绥江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2597, '530600', '530627', '镇雄县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2598, '530600', '530628', '彝良县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2599, '530600', '530629', '威信县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2600, '530600', '530630', '水富县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2601, '530700', '530701', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2602, '530700', '530702', '古城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2603, '530700', '530721', '玉龙纳西族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2604, '530700', '530722', '永胜县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2605, '530700', '530723', '华坪县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2606, '530700', '530724', '宁蒗彝族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2607, '530800', '530801', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2608, '530800', '530802', '翠云区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2609, '530800', '530821', '普洱哈尼族彝族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2610, '530800', '530822', '墨江哈尼族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2611, '530800', '530823', '景东彝族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2612, '530800', '530824', '景谷傣族彝族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2613, '530800', '530825', '镇沅彝族哈尼族拉祜族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2614, '530800', '530826', '江城哈尼族彝族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2615, '530800', '530827', '孟连傣族拉祜族佤族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2616, '530800', '530828', '澜沧拉祜族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2617, '530800', '530829', '西盟佤族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2618, '530900', '530901', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2619, '530900', '530902', '临翔区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2620, '530900', '530921', '凤庆县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2621, '530900', '530922', '云　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2622, '530900', '530923', '永德县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2623, '530900', '530924', '镇康县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2624, '530900', '530925', '双江拉祜族佤族布朗族傣族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2625, '530900', '530926', '耿马傣族佤族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2626, '530900', '530927', '沧源佤族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2627, '532300', '532301', '楚雄市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2628, '532300', '532322', '双柏县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2629, '532300', '532323', '牟定县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2630, '532300', '532324', '南华县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2631, '532300', '532325', '姚安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2632, '532300', '532326', '大姚县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2633, '532300', '532327', '永仁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2634, '532300', '532328', '元谋县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2635, '532300', '532329', '武定县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2636, '532300', '532331', '禄丰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2637, '532500', '532501', '个旧市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2638, '532500', '532502', '开远市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2639, '532500', '532522', '蒙自县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2640, '532500', '532523', '屏边苗族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2641, '532500', '532524', '建水县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2642, '532500', '532525', '石屏县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2643, '532500', '532526', '弥勒县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2644, '532500', '532527', '泸西县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2645, '532500', '532528', '元阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2646, '532500', '532529', '红河县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2647, '532500', '532530', '金平苗族瑶族傣族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2648, '532500', '532531', '绿春县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2649, '532500', '532532', '河口瑶族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2650, '532600', '532621', '文山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2651, '532600', '532622', '砚山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2652, '532600', '532623', '西畴县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2653, '532600', '532624', '麻栗坡县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2654, '532600', '532625', '马关县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2655, '532600', '532626', '丘北县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2656, '532600', '532627', '广南县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2657, '532600', '532628', '富宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2658, '532800', '532801', '景洪市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2659, '532800', '532822', '勐海县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2660, '532800', '532823', '勐腊县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2661, '532900', '532901', '大理市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2662, '532900', '532922', '漾濞彝族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2663, '532900', '532923', '祥云县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2664, '532900', '532924', '宾川县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2665, '532900', '532925', '弥渡县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2666, '532900', '532926', '南涧彝族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2667, '532900', '532927', '巍山彝族回族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2668, '532900', '532928', '永平县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2669, '532900', '532929', '云龙县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2670, '532900', '532930', '洱源县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2671, '532900', '532931', '剑川县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2672, '532900', '532932', '鹤庆县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2673, '533100', '533102', '瑞丽市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2674, '533100', '533103', '潞西市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2675, '533100', '533122', '梁河县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2676, '533100', '533123', '盈江县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2677, '533100', '533124', '陇川县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2678, '533300', '533321', '泸水县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2679, '533300', '533323', '福贡县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2680, '533300', '533324', '贡山独龙族怒族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2681, '533300', '533325', '兰坪白族普米族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2682, '533400', '533421', '香格里拉县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2683, '533400', '533422', '德钦县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2684, '533400', '533423', '维西傈僳族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2685, '540100', '540101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2686, '540100', '540102', '城关区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2687, '540100', '540121', '林周县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2688, '540100', '540122', '当雄县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2689, '540100', '540123', '尼木县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2690, '540100', '540124', '曲水县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2691, '540100', '540125', '堆龙德庆县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2692, '540100', '540126', '达孜县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2693, '540100', '540127', '墨竹工卡县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2694, '542100', '542121', '昌都县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2695, '542100', '542122', '江达县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2696, '542100', '542123', '贡觉县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2697, '542100', '542124', '类乌齐县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2698, '542100', '542125', '丁青县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2699, '542100', '542126', '察雅县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2700, '542100', '542127', '八宿县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2701, '542100', '542128', '左贡县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2702, '542100', '542129', '芒康县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2703, '542100', '542132', '洛隆县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2704, '542100', '542133', '边坝县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2705, '542200', '542221', '乃东县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2706, '542200', '542222', '扎囊县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2707, '542200', '542223', '贡嘎县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2708, '542200', '542224', '桑日县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2709, '542200', '542225', '琼结县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2710, '542200', '542226', '曲松县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2711, '542200', '542227', '措美县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2712, '542200', '542228', '洛扎县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2713, '542200', '542229', '加查县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2714, '542200', '542231', '隆子县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2715, '542200', '542232', '错那县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2716, '542200', '542233', '浪卡子县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2717, '542300', '542301', '日喀则市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2718, '542300', '542322', '南木林县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2719, '542300', '542323', '江孜县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2720, '542300', '542324', '定日县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2721, '542300', '542325', '萨迦县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2722, '542300', '542326', '拉孜县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2723, '542300', '542327', '昂仁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2724, '542300', '542328', '谢通门县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2725, '542300', '542329', '白朗县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2726, '542300', '542330', '仁布县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2727, '542300', '542331', '康马县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2728, '542300', '542332', '定结县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2729, '542300', '542333', '仲巴县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2730, '542300', '542334', '亚东县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2731, '542300', '542335', '吉隆县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2732, '542300', '542336', '聂拉木县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2733, '542300', '542337', '萨嘎县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2734, '542300', '542338', '岗巴县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2735, '542400', '542421', '那曲县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2736, '542400', '542422', '嘉黎县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2737, '542400', '542423', '比如县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2738, '542400', '542424', '聂荣县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2739, '542400', '542425', '安多县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2740, '542400', '542426', '申扎县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2741, '542400', '542427', '索　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2742, '542400', '542428', '班戈县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2743, '542400', '542429', '巴青县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2744, '542400', '542430', '尼玛县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2745, '542500', '542521', '普兰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2746, '542500', '542522', '札达县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2747, '542500', '542523', '噶尔县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2748, '542500', '542524', '日土县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2749, '542500', '542525', '革吉县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2750, '542500', '542526', '改则县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2751, '542500', '542527', '措勤县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2752, '542600', '542621', '林芝县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2753, '542600', '542622', '工布江达县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2754, '542600', '542623', '米林县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2755, '542600', '542624', '墨脱县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2756, '542600', '542625', '波密县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2757, '542600', '542626', '察隅县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2758, '542600', '542627', '朗　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2759, '610100', '610101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2760, '610100', '610102', '新城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2761, '610100', '610103', '碑林区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2762, '610100', '610104', '莲湖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2763, '610100', '610111', '灞桥区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2764, '610100', '610112', '未央区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2765, '610100', '610113', '雁塔区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2766, '610100', '610114', '阎良区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2767, '610100', '610115', '临潼区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2768, '610100', '610116', '长安区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2769, '610100', '610122', '蓝田县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2770, '610100', '610124', '周至县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2771, '610100', '610125', '户　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2772, '610100', '610126', '高陵县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2773, '610200', '610201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2774, '610200', '610202', '王益区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2775, '610200', '610203', '印台区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2776, '610200', '610204', '耀州区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2777, '610200', '610222', '宜君县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2778, '610300', '610301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2779, '610300', '610302', '渭滨区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2780, '610300', '610303', '金台区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2781, '610300', '610304', '陈仓区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2782, '610300', '610322', '凤翔县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2783, '610300', '610323', '岐山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2784, '610300', '610324', '扶风县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2785, '610300', '610326', '眉　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2786, '610300', '610327', '陇　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2787, '610300', '610328', '千阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2788, '610300', '610329', '麟游县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2789, '610300', '610330', '凤　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2790, '610300', '610331', '太白县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2791, '610400', '610401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2792, '610400', '610402', '秦都区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2793, '610400', '610403', '杨凌区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2794, '610400', '610404', '渭城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2795, '610400', '610422', '三原县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2796, '610400', '610423', '泾阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2797, '610400', '610424', '乾　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2798, '610400', '610425', '礼泉县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2799, '610400', '610426', '永寿县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2800, '610400', '610427', '彬　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2801, '610400', '610428', '长武县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2802, '610400', '610429', '旬邑县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2803, '610400', '610430', '淳化县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2804, '610400', '610431', '武功县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2805, '610400', '610481', '兴平市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2806, '610500', '610501', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2807, '610500', '610502', '临渭区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2808, '610500', '610521', '华　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2809, '610500', '610522', '潼关县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2810, '610500', '610523', '大荔县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2811, '610500', '610524', '合阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2812, '610500', '610525', '澄城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2813, '610500', '610526', '蒲城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2814, '610500', '610527', '白水县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2815, '610500', '610528', '富平县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2816, '610500', '610581', '韩城市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2817, '610500', '610582', '华阴市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2818, '610600', '610601', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2819, '610600', '610602', '宝塔区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2820, '610600', '610621', '延长县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2821, '610600', '610622', '延川县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2822, '610600', '610623', '子长县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2823, '610600', '610624', '安塞县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2824, '610600', '610625', '志丹县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2825, '610600', '610626', '吴旗县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2826, '610600', '610627', '甘泉县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2827, '610600', '610628', '富　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2828, '610600', '610629', '洛川县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2829, '610600', '610630', '宜川县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2830, '610600', '610631', '黄龙县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2831, '610600', '610632', '黄陵县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2832, '610700', '610701', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2833, '610700', '610702', '汉台区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2834, '610700', '610721', '南郑县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2835, '610700', '610722', '城固县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2836, '610700', '610723', '洋　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2837, '610700', '610724', '西乡县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2838, '610700', '610725', '勉　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2839, '610700', '610726', '宁强县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2840, '610700', '610727', '略阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2841, '610700', '610728', '镇巴县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2842, '610700', '610729', '留坝县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2843, '610700', '610730', '佛坪县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2844, '610800', '610801', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2845, '610800', '610802', '榆阳区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2846, '610800', '610821', '神木县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2847, '610800', '610822', '府谷县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2848, '610800', '610823', '横山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2849, '610800', '610824', '靖边县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2850, '610800', '610825', '定边县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2851, '610800', '610826', '绥德县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2852, '610800', '610827', '米脂县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2853, '610800', '610828', '佳　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2854, '610800', '610829', '吴堡县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2855, '610800', '610830', '清涧县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2856, '610800', '610831', '子洲县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2857, '610900', '610901', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2858, '610900', '610902', '汉滨区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2859, '610900', '610921', '汉阴县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2860, '610900', '610922', '石泉县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2861, '610900', '610923', '宁陕县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2862, '610900', '610924', '紫阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2863, '610900', '610925', '岚皋县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2864, '610900', '610926', '平利县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2865, '610900', '610927', '镇坪县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2866, '610900', '610928', '旬阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2867, '610900', '610929', '白河县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2868, '611000', '611001', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2869, '611000', '611002', '商州区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2870, '611000', '611021', '洛南县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2871, '611000', '611022', '丹凤县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2872, '611000', '611023', '商南县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2873, '611000', '611024', '山阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2874, '611000', '611025', '镇安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2875, '611000', '611026', '柞水县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2876, '620100', '620101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2877, '620100', '620102', '城关区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2878, '620100', '620103', '七里河区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2879, '620100', '620104', '西固区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2880, '620100', '620105', '安宁区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2881, '620100', '620111', '红古区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2882, '620100', '620121', '永登县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2883, '620100', '620122', '皋兰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2884, '620100', '620123', '榆中县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2885, '620200', '620201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2886, '620300', '620301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2887, '620300', '620302', '金川区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2888, '620300', '620321', '永昌县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2889, '620400', '620401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2890, '620400', '620402', '白银区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2891, '620400', '620403', '平川区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2892, '620400', '620421', '靖远县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2893, '620400', '620422', '会宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2894, '620400', '620423', '景泰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2895, '620500', '620501', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2896, '620500', '620502', '秦城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2897, '620500', '620503', '北道区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2898, '620500', '620521', '清水县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2899, '620500', '620522', '秦安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2900, '620500', '620523', '甘谷县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2901, '620500', '620524', '武山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2902, '620500', '620525', '张家川回族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2903, '620600', '620601', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2904, '620600', '620602', '凉州区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2905, '620600', '620621', '民勤县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2906, '620600', '620622', '古浪县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2907, '620600', '620623', '天祝藏族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2908, '620700', '620701', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2909, '620700', '620702', '甘州区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2910, '620700', '620721', '肃南裕固族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2911, '620700', '620722', '民乐县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2912, '620700', '620723', '临泽县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2913, '620700', '620724', '高台县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2914, '620700', '620725', '山丹县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2915, '620800', '620801', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2916, '620800', '620802', '崆峒区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2917, '620800', '620821', '泾川县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2918, '620800', '620822', '灵台县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2919, '620800', '620823', '崇信县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2920, '620800', '620824', '华亭县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2921, '620800', '620825', '庄浪县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2922, '620800', '620826', '静宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2923, '620900', '620901', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2924, '620900', '620902', '肃州区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2925, '620900', '620921', '金塔县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2926, '620900', '620922', '安西县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2927, '620900', '620923', '肃北蒙古族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2928, '620900', '620924', '阿克塞哈萨克族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2929, '620900', '620981', '玉门市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2930, '620900', '620982', '敦煌市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2931, '621000', '621001', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2932, '621000', '621002', '西峰区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2933, '621000', '621021', '庆城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2934, '621000', '621022', '环　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2935, '621000', '621023', '华池县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2936, '621000', '621024', '合水县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2937, '621000', '621025', '正宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2938, '621000', '621026', '宁　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2939, '621000', '621027', '镇原县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2940, '621100', '621101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2941, '621100', '621102', '安定区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2942, '621100', '621121', '通渭县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2943, '621100', '621122', '陇西县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2944, '621100', '621123', '渭源县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2945, '621100', '621124', '临洮县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2946, '621100', '621125', '漳　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2947, '621100', '621126', '岷　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2948, '621200', '621201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2949, '621200', '621202', '武都区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2950, '621200', '621221', '成　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2951, '621200', '621222', '文　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2952, '621200', '621223', '宕昌县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2953, '621200', '621224', '康　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2954, '621200', '621225', '西和县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2955, '621200', '621226', '礼　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2956, '621200', '621227', '徽　县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2957, '621200', '621228', '两当县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2958, '622900', '622901', '临夏市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2959, '622900', '622921', '临夏县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2960, '622900', '622922', '康乐县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2961, '622900', '622923', '永靖县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2962, '622900', '622924', '广河县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2963, '622900', '622925', '和政县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2964, '622900', '622926', '东乡族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2965, '622900', '622927', '积石山保安族东乡族撒拉族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2966, '623000', '623001', '合作市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2967, '623000', '623021', '临潭县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2968, '623000', '623022', '卓尼县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2969, '623000', '623023', '舟曲县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2970, '623000', '623024', '迭部县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2971, '623000', '623025', '玛曲县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2972, '623000', '623026', '碌曲县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2973, '623000', '623027', '夏河县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2974, '630100', '630101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2975, '630100', '630102', '城东区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2976, '630100', '630103', '城中区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2977, '630100', '630104', '城西区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2978, '630100', '630105', '城北区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2979, '630100', '630121', '大通回族土族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2980, '630100', '630122', '湟中县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2981, '630100', '630123', '湟源县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2982, '632100', '632121', '平安县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2983, '632100', '632122', '民和回族土族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2984, '632100', '632123', '乐都县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2985, '632100', '632126', '互助土族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2986, '632100', '632127', '化隆回族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2987, '632100', '632128', '循化撒拉族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2988, '632200', '632221', '门源回族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2989, '632200', '632222', '祁连县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2990, '632200', '632223', '海晏县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2991, '632200', '632224', '刚察县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2992, '632300', '632321', '同仁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2993, '632300', '632322', '尖扎县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2994, '632300', '632323', '泽库县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2995, '632300', '632324', '河南蒙古族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2996, '632500', '632521', '共和县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2997, '632500', '632522', '同德县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2998, '632500', '632523', '贵德县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (2999, '632500', '632524', '兴海县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3000, '632500', '632525', '贵南县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3001, '632600', '632621', '玛沁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3002, '632600', '632622', '班玛县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3003, '632600', '632623', '甘德县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3004, '632600', '632624', '达日县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3005, '632600', '632625', '久治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3006, '632600', '632626', '玛多县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3007, '632700', '632721', '玉树县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3008, '632700', '632722', '杂多县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3009, '632700', '632723', '称多县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3010, '632700', '632724', '治多县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3011, '632700', '632725', '囊谦县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3012, '632700', '632726', '曲麻莱县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3013, '632800', '632801', '格尔木市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3014, '632800', '632802', '德令哈市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3015, '632800', '632821', '乌兰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3016, '632800', '632822', '都兰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3017, '632800', '632823', '天峻县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3018, '640100', '640101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3019, '640100', '640104', '兴庆区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3020, '640100', '640105', '西夏区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3021, '640100', '640106', '金凤区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3022, '640100', '640121', '永宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3023, '640100', '640122', '贺兰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3024, '640100', '640181', '灵武市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3025, '640200', '640201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3026, '640200', '640202', '大武口区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3027, '640200', '640205', '惠农区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3028, '640200', '640221', '平罗县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3029, '640300', '640301', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3030, '640300', '640302', '利通区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3031, '640300', '640323', '盐池县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3032, '640300', '640324', '同心县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3033, '640300', '640381', '青铜峡市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3034, '640400', '640401', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3035, '640400', '640402', '原州区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3036, '640400', '640422', '西吉县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3037, '640400', '640423', '隆德县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3038, '640400', '640424', '泾源县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3039, '640400', '640425', '彭阳县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3040, '640500', '640501', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3041, '640500', '640502', '沙坡头区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3042, '640500', '640521', '中宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3043, '640400', '640522', '海原县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3044, '650100', '650101', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3045, '650100', '650102', '天山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3046, '650100', '650103', '沙依巴克区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3047, '650100', '650104', '新市区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3048, '650100', '650105', '水磨沟区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3049, '650100', '650106', '头屯河区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3050, '650100', '650107', '达坂城区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3051, '650100', '650108', '东山区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3052, '650100', '650121', '乌鲁木齐县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3053, '650200', '650201', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3054, '650200', '650202', '独山子区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3055, '650200', '650203', '克拉玛依区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3056, '650200', '650204', '白碱滩区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3057, '650200', '650205', '乌尔禾区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3058, '652100', '652101', '吐鲁番市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3059, '652100', '652122', '鄯善县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3060, '652100', '652123', '托克逊县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3061, '652200', '652201', '哈密市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3062, '652200', '652222', '巴里坤哈萨克自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3063, '652200', '652223', '伊吾县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3064, '652300', '652301', '昌吉市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3065, '652300', '652302', '阜康市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3066, '652300', '652303', '米泉市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3067, '652300', '652323', '呼图壁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3068, '652300', '652324', '玛纳斯县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3069, '652300', '652325', '奇台县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3070, '652300', '652327', '吉木萨尔县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3071, '652300', '652328', '木垒哈萨克自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3072, '652700', '652701', '博乐市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3073, '652700', '652722', '精河县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3074, '652700', '652723', '温泉县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3075, '652800', '652801', '库尔勒市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3076, '652800', '652822', '轮台县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3077, '652800', '652823', '尉犁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3078, '652800', '652824', '若羌县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3079, '652800', '652825', '且末县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3080, '652800', '652826', '焉耆回族自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3081, '652800', '652827', '和静县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3082, '652800', '652828', '和硕县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3083, '652800', '652829', '博湖县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3084, '652900', '652901', '阿克苏市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3085, '652900', '652922', '温宿县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3086, '652900', '652923', '库车县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3087, '652900', '652924', '沙雅县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3088, '652900', '652925', '新和县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3089, '652900', '652926', '拜城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3090, '652900', '652927', '乌什县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3091, '652900', '652928', '阿瓦提县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3092, '652900', '652929', '柯坪县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3093, '653000', '653001', '阿图什市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3094, '653000', '653022', '阿克陶县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3095, '653000', '653023', '阿合奇县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3096, '653000', '653024', '乌恰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3097, '653100', '653101', '喀什市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3098, '653100', '653121', '疏附县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3099, '653100', '653122', '疏勒县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3100, '653100', '653123', '英吉沙县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3101, '653100', '653124', '泽普县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3102, '653100', '653125', '莎车县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3103, '653100', '653126', '叶城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3104, '653100', '653127', '麦盖提县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3105, '653100', '653128', '岳普湖县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3106, '653100', '653129', '伽师县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3107, '653100', '653130', '巴楚县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3108, '653100', '653131', '塔什库尔干塔吉克自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3109, '653200', '653201', '和田市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3110, '653200', '653221', '和田县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3111, '653200', '653222', '墨玉县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3112, '653200', '653223', '皮山县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3113, '653200', '653224', '洛浦县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3114, '653200', '653225', '策勒县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3115, '653200', '653226', '于田县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3116, '653200', '653227', '民丰县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3117, '654000', '654002', '伊宁市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3118, '654000', '654003', '奎屯市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3119, '654000', '654021', '伊宁县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3120, '654000', '654022', '察布查尔锡伯自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3121, '654000', '654023', '霍城县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3122, '654000', '654024', '巩留县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3123, '654000', '654025', '新源县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3124, '654000', '654026', '昭苏县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3125, '654000', '654027', '特克斯县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3126, '654000', '654028', '尼勒克县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3127, '654200', '654201', '塔城市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3128, '654200', '654202', '乌苏市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3129, '654200', '654221', '额敏县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3130, '654200', '654223', '沙湾县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3131, '654200', '654224', '托里县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3132, '654200', '654225', '裕民县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3133, '654200', '654226', '和布克赛尔蒙古自治县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3134, '654300', '654301', '阿勒泰市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3135, '654300', '654321', '布尔津县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3136, '654300', '654322', '富蕴县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3137, '654300', '654323', '福海县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3138, '654300', '654324', '哈巴河县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3139, '654300', '654325', '青河县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3140, '654300', '654326', '吉木乃县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3141, '659000', '659001', '石河子市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3142, '659000', '659002', '阿拉尔市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3143, '659000', '659003', '图木舒克市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3144, '659000', '659004', '五家渠市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3145, '110000', '110100', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3146, '110000', '110200', '县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3147, '120000', '120100', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3148, '120000', '120200', '县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3149, '130000', '130100', '石家庄市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3150, '130000', '130200', '唐山市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3151, '130000', '130300', '秦皇岛市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3152, '130000', '130400', '邯郸市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3153, '130000', '130500', '邢台市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3154, '130000', '130600', '保定市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3155, '130000', '130700', '张家口市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3156, '130000', '130800', '承德市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3157, '130000', '130900', '沧州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3158, '130000', '131000', '廊坊市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3159, '130000', '131100', '衡水市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3160, '140000', '140100', '太原市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3161, '140000', '140200', '大同市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3162, '140000', '140300', '阳泉市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3163, '140000', '140400', '长治市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3164, '140000', '140500', '晋城市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3165, '140000', '140600', '朔州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3166, '140000', '140700', '晋中市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3167, '140000', '140800', '运城市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3168, '140000', '140900', '忻州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3169, '140000', '141000', '临汾市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3170, '140000', '141100', '吕梁市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3171, '150000', '150100', '呼和浩特市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3172, '150000', '150200', '包头市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3173, '150000', '150300', '乌海市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3174, '150000', '150400', '赤峰市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3175, '150000', '150500', '通辽市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3176, '150000', '150600', '鄂尔多斯市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3177, '150000', '150700', '呼伦贝尔市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3178, '150000', '150800', '巴彦淖尔市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3179, '150000', '150900', '乌兰察布市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3180, '150000', '152200', '兴安盟');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3181, '150000', '152500', '锡林郭勒盟');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3182, '150000', '152900', '阿拉善盟');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3183, '210000', '210100', '沈阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3184, '210000', '210200', '大连市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3185, '210000', '210300', '鞍山市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3186, '210000', '210400', '抚顺市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3187, '210000', '210500', '本溪市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3188, '210000', '210600', '丹东市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3189, '210000', '210700', '锦州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3190, '210000', '210800', '营口市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3191, '210000', '210900', '阜新市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3192, '210000', '211000', '辽阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3193, '210000', '211100', '盘锦市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3194, '210000', '211200', '铁岭市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3195, '210000', '211300', '朝阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3196, '210000', '211400', '葫芦岛市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3197, '220000', '220100', '长春市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3198, '220000', '220200', '吉林市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3199, '220000', '220300', '四平市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3200, '220000', '220400', '辽源市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3201, '220000', '220500', '通化市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3202, '220000', '220600', '白山市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3203, '220000', '220700', '松原市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3204, '220000', '220800', '白城市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3205, '220000', '222400', '延边朝鲜族自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3206, '230000', '230100', '哈尔滨市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3207, '230000', '230200', '齐齐哈尔市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3208, '230000', '230300', '鸡西市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3209, '230000', '230400', '鹤岗市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3210, '230000', '230500', '双鸭山市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3211, '230000', '230600', '大庆市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3212, '230000', '230700', '伊春市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3213, '230000', '230800', '佳木斯市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3214, '230000', '230900', '七台河市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3215, '230000', '231000', '牡丹江市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3216, '230000', '231100', '黑河市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3217, '230000', '231200', '绥化市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3218, '230000', '232700', '大兴安岭地区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3219, '310000', '310100', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3220, '310000', '310200', '县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3221, '320000', '320100', '南京市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3222, '320000', '320200', '无锡市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3223, '320000', '320300', '徐州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3224, '320000', '320400', '常州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3225, '320000', '320500', '苏州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3226, '320000', '320600', '南通市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3227, '320000', '320700', '连云港市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3228, '320000', '320800', '淮安市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3229, '320000', '320900', '盐城市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3230, '320000', '321000', '扬州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3231, '320000', '321100', '镇江市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3232, '320000', '321200', '泰州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3233, '320000', '321300', '宿迁市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3234, '330000', '330100', '杭州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3235, '330000', '330200', '宁波市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3236, '330000', '330300', '温州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3237, '330000', '330400', '嘉兴市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3238, '330000', '330500', '湖州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3239, '330000', '330600', '绍兴市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3240, '330000', '330700', '金华市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3241, '330000', '330800', '衢州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3242, '330000', '330900', '舟山市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3243, '330000', '331000', '台州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3244, '330000', '331100', '丽水市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3245, '340000', '340100', '合肥市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3246, '340000', '340200', '芜湖市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3247, '340000', '340300', '蚌埠市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3248, '340000', '340400', '淮南市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3249, '340000', '340500', '马鞍山市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3250, '340000', '340600', '淮北市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3251, '340000', '340700', '铜陵市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3252, '340000', '340800', '安庆市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3253, '340000', '341000', '黄山市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3254, '340000', '341100', '滁州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3255, '340000', '341200', '阜阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3256, '340000', '341300', '宿州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3257, '340000', '341400', '巢湖市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3258, '340000', '341500', '六安市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3259, '340000', '341600', '亳州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3260, '340000', '341700', '池州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3261, '340000', '341800', '宣城市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3262, '350000', '350100', '福州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3263, '350000', '350200', '厦门市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3264, '350000', '350300', '莆田市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3265, '350000', '350400', '三明市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3266, '350000', '350500', '泉州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3267, '350000', '350600', '漳州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3268, '350000', '350700', '南平市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3269, '350000', '350800', '龙岩市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3270, '350000', '350900', '宁德市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3271, '360000', '360100', '南昌市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3272, '360000', '360200', '景德镇市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3273, '360000', '360300', '萍乡市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3274, '360000', '360400', '九江市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3275, '360000', '360500', '新余市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3276, '360000', '360600', '鹰潭市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3277, '360000', '360700', '赣州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3278, '360000', '360800', '吉安市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3279, '360000', '360900', '宜春市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3280, '360000', '361000', '抚州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3281, '360000', '361100', '上饶市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3282, '370000', '370100', '济南市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3283, '370000', '370200', '青岛市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3284, '370000', '370300', '淄博市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3285, '370000', '370400', '枣庄市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3286, '370000', '370500', '东营市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3287, '370000', '370600', '烟台市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3288, '370000', '370700', '潍坊市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3289, '370000', '370800', '济宁市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3290, '370000', '370900', '泰安市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3291, '370000', '371000', '威海市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3292, '370000', '371100', '日照市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3293, '370000', '371200', '莱芜市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3294, '370000', '371300', '临沂市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3295, '370000', '371400', '德州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3296, '370000', '371500', '聊城市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3297, '370000', '371600', '滨州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3298, '370000', '371700', '荷泽市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3299, '410000', '410100', '郑州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3300, '410000', '410200', '开封市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3301, '410000', '410300', '洛阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3302, '410000', '410400', '平顶山市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3303, '410000', '410500', '安阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3304, '410000', '410600', '鹤壁市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3305, '410000', '410700', '新乡市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3306, '410000', '410800', '焦作市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3307, '410000', '410900', '濮阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3308, '410000', '411000', '许昌市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3309, '410000', '411100', '漯河市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3310, '410000', '411200', '三门峡市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3311, '410000', '411300', '南阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3312, '410000', '411400', '商丘市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3313, '410000', '411500', '信阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3314, '410000', '411600', '周口市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3315, '410000', '411700', '驻马店市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3316, '420000', '420100', '武汉市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3317, '420000', '420200', '黄石市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3318, '420000', '420300', '十堰市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3319, '420000', '420500', '宜昌市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3320, '420000', '420600', '襄樊市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3321, '420000', '420700', '鄂州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3322, '420000', '420800', '荆门市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3323, '420000', '420900', '孝感市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3324, '420000', '421000', '荆州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3325, '420000', '421100', '黄冈市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3326, '420000', '421200', '咸宁市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3327, '420000', '421300', '随州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3328, '420000', '422800', '恩施土家族苗族自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3329, '420000', '429000', '省直辖行政单位');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3330, '430000', '430100', '长沙市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3331, '430000', '430200', '株洲市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3332, '430000', '430300', '湘潭市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3333, '430000', '430400', '衡阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3334, '430000', '430500', '邵阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3335, '430000', '430600', '岳阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3336, '430000', '430700', '常德市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3337, '430000', '430800', '张家界市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3338, '430000', '430900', '益阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3339, '430000', '431000', '郴州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3340, '430000', '431100', '永州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3341, '430000', '431200', '怀化市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3342, '430000', '431300', '娄底市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3343, '430000', '433100', '湘西土家族苗族自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3344, '440000', '440100', '广州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3345, '440000', '440200', '韶关市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3346, '440000', '440300', '深圳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3347, '440000', '440400', '珠海市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3348, '440000', '440500', '汕头市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3349, '440000', '440600', '佛山市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3350, '440000', '440700', '江门市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3351, '440000', '440800', '湛江市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3352, '440000', '440900', '茂名市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3353, '440000', '441200', '肇庆市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3354, '440000', '441300', '惠州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3355, '440000', '441400', '梅州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3356, '440000', '441500', '汕尾市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3357, '440000', '441600', '河源市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3358, '440000', '441700', '阳江市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3359, '440000', '441800', '清远市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3360, '440000', '441900', '东莞市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3361, '440000', '442000', '中山市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3362, '440000', '445100', '潮州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3363, '440000', '445200', '揭阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3364, '440000', '445300', '云浮市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3365, '450000', '450100', '南宁市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3366, '450000', '450200', '柳州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3367, '450000', '450300', '桂林市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3368, '450000', '450400', '梧州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3369, '450000', '450500', '北海市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3370, '450000', '450600', '防城港市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3371, '450000', '450700', '钦州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3372, '450000', '450800', '贵港市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3373, '450000', '450900', '玉林市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3374, '450000', '451000', '百色市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3375, '450000', '451100', '贺州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3376, '450000', '451200', '河池市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3377, '450000', '451300', '来宾市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3378, '450000', '451400', '崇左市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3379, '460000', '460100', '海口市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3380, '460000', '460200', '三亚市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3381, '460000', '469000', '省直辖县级行政单位');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3382, '500000', '500100', '市辖区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3383, '500000', '500200', '县');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3384, '500000', '500300', '市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3385, '510000', '510100', '成都市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3386, '510000', '510300', '自贡市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3387, '510000', '510400', '攀枝花市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3388, '510000', '510500', '泸州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3389, '510000', '510600', '德阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3390, '510000', '510700', '绵阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3391, '510000', '510800', '广元市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3392, '510000', '510900', '遂宁市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3393, '510000', '511000', '内江市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3394, '510000', '511100', '乐山市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3395, '510000', '511300', '南充市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3396, '510000', '511400', '眉山市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3397, '510000', '511500', '宜宾市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3398, '510000', '511600', '广安市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3399, '510000', '511700', '达州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3400, '510000', '511800', '雅安市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3401, '510000', '511900', '巴中市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3402, '510000', '512000', '资阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3403, '510000', '513200', '阿坝藏族羌族自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3404, '510000', '513300', '甘孜藏族自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3405, '510000', '513400', '凉山彝族自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3406, '520000', '520100', '贵阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3407, '520000', '520200', '六盘水市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3408, '520000', '520300', '遵义市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3409, '520000', '520400', '安顺市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3410, '520000', '522200', '铜仁地区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3411, '520000', '522300', '黔西南布依族苗族自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3412, '520000', '522400', '毕节地区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3413, '520000', '522600', '黔东南苗族侗族自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3414, '520000', '522700', '黔南布依族苗族自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3415, '530000', '530100', '昆明市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3416, '530000', '530300', '曲靖市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3417, '530000', '530400', '玉溪市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3418, '530000', '530500', '保山市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3419, '530000', '530600', '昭通市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3420, '530000', '530700', '丽江市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3421, '530000', '530800', '思茅市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3422, '530000', '530900', '临沧市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3423, '530000', '532300', '楚雄彝族自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3424, '530000', '532500', '红河哈尼族彝族自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3425, '530000', '532600', '文山壮族苗族自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3426, '530000', '532800', '西双版纳傣族自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3427, '530000', '532900', '大理白族自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3428, '530000', '533100', '德宏傣族景颇族自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3429, '530000', '533300', '怒江傈僳族自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3430, '530000', '533400', '迪庆藏族自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3431, '540000', '540100', '拉萨市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3432, '540000', '542100', '昌都地区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3433, '540000', '542200', '山南地区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3434, '540000', '542300', '日喀则地区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3435, '540000', '542400', '那曲地区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3436, '540000', '542500', '阿里地区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3437, '540000', '542600', '林芝地区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3438, '610000', '610100', '西安市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3439, '610000', '610200', '铜川市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3440, '610000', '610300', '宝鸡市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3441, '610000', '610400', '咸阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3442, '610000', '610500', '渭南市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3443, '610000', '610600', '延安市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3444, '610000', '610700', '汉中市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3445, '610000', '610800', '榆林市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3446, '610000', '610900', '安康市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3447, '610000', '611000', '商洛市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3448, '620000', '620100', '兰州市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3449, '620000', '620200', '嘉峪关市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3450, '620000', '620300', '金昌市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3451, '620000', '620400', '白银市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3452, '620000', '620500', '天水市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3453, '620000', '620600', '武威市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3454, '620000', '620700', '张掖市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3455, '620000', '620800', '平凉市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3456, '620000', '620900', '酒泉市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3457, '620000', '621000', '庆阳市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3458, '620000', '621100', '定西市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3459, '620000', '621200', '陇南市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3460, '620000', '622900', '临夏回族自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3461, '620000', '623000', '甘南藏族自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3462, '630000', '630100', '西宁市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3463, '630000', '632100', '海东地区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3464, '630000', '632200', '海北藏族自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3465, '630000', '632300', '黄南藏族自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3466, '630000', '632500', '海南藏族自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3467, '630000', '632600', '果洛藏族自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3468, '630000', '632700', '玉树藏族自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3469, '630000', '632800', '海西蒙古族藏族自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3470, '640000', '640100', '银川市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3471, '640000', '640200', '石嘴山市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3472, '640000', '640300', '吴忠市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3473, '640000', '640400', '固原市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3474, '640000', '640500', '中卫市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3475, '650000', '650100', '乌鲁木齐市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3476, '650000', '650200', '克拉玛依市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3477, '650000', '652100', '吐鲁番地区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3478, '650000', '652200', '哈密地区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3479, '650000', '652300', '昌吉回族自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3480, '650000', '652700', '博尔塔拉蒙古自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3481, '650000', '652800', '巴音郭楞蒙古自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3482, '650000', '652900', '阿克苏地区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3483, '650000', '653000', '克孜勒苏柯尔克孜自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3484, '650000', '653100', '喀什地区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3485, '650000', '653200', '和田地区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3486, '650000', '654000', '伊犁哈萨克自治州');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3487, '650000', '654200', '塔城地区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3488, '650000', '654300', '阿勒泰地区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3489, '650000', '659000', '省直辖行政单位');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3490, '86', '110000', '北京市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3491, '86', '120000', '天津市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3492, '86', '130000', '河北省');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3493, '86', '140000', '山西省');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3494, '86', '150000', '内蒙古自治区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3495, '86', '210000', '辽宁省');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3496, '86', '220000', '吉林省');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3497, '86', '230000', '黑龙江省');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3498, '86', '310000', '上海市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3499, '86', '320000', '江苏省');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3500, '86', '330000', '浙江省');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3501, '86', '340000', '安徽省');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3502, '86', '350000', '福建省');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3503, '86', '360000', '江西省');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3504, '86', '370000', '山东省');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3505, '86', '410000', '河南省');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3506, '86', '420000', '湖北省');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3507, '86', '430000', '湖南省');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3508, '86', '440000', '广东省');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3509, '86', '450000', '广西壮族自治区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3510, '86', '460000', '海南省');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3511, '86', '500000', '重庆市');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3512, '86', '510000', '四川省');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3513, '86', '520000', '贵州省');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3514, '86', '530000', '云南省');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3515, '86', '540000', '西藏自治区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3516, '86', '610000', '陕西省');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3517, '86', '620000', '甘肃省');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3518, '86', '630000', '青海省');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3519, '86', '640000', '宁夏回族自治区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3520, '86', '650000', '新疆维吾尔自治区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3521, '86', '710000', '台湾省');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3522, '86', '810000', '香港特别行政区');
INSERT INTO `district` (`id`, `parent`, `code`, `name`) VALUES (3523, '86', '820000', '澳门特别行政区');
COMMIT;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL COMMENT '编号',
  `table_name` varchar(200) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) COLLATE utf8mb4_general_ci DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) COLLATE utf8mb4_general_ci DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
BEGIN;
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1751833812203261954, 'district', '疫苗系统省市区号信息表', NULL, NULL, 'District', 'crud', 'com.ym.vaccine', 'vaccine', 'district', '省市区号', 'ym', '0', '/', '{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":1}', 'admin', '2024-01-29 10:52:29', 'admin', '2024-01-29 13:10:51', NULL);
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1751833813188923393, 'ym_appoint', '疫苗预约信息表', NULL, NULL, 'YmAppoint', 'crud', 'com.ym.vaccine', 'vaccine', 'appoint', '预约', 'ym', '0', '/', '{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":8}', 'admin', '2024-01-29 10:52:11', 'admin', '2024-01-29 18:14:56', NULL);
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1751833814124253186, 'ym_inoculate', '疫苗接种信息表', NULL, NULL, 'YmInoculate', 'crud', 'com.ym.vaccine', 'vaccine', 'inoculate', '疫苗接种记录', 'ym', '0', '/', '{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":8}', 'admin', '2024-01-29 10:52:13', 'admin', '2024-01-29 18:15:18', NULL);
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1751833815227355137, 'ym_inoculate_site', '疫苗接种站点信息表', NULL, NULL, 'YmInoculateSite', 'crud', 'com.ym.vaccine', 'vaccine', 'inoculateSite', '疫苗接种站点管理', 'ym', '0', '/', '{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":5}', 'admin', '2024-01-29 10:52:15', 'admin', '2024-01-29 13:38:43', NULL);
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1751833815965552642, 'ym_observe', '留观信息表', NULL, NULL, 'YmObserve', 'crud', 'com.ym.vaccine', 'vaccine', 'observe', '留观查询', 'ym', '0', '/', '{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":8}', 'admin', '2024-01-29 10:52:16', 'admin', '2024-01-29 18:15:44', NULL);
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1751833817026711553, 'ym_pay', '支付信息表', NULL, NULL, 'YmPay', 'crud', 'com.ym.vaccine', 'vaccine', 'pay', '支付功能', 'ym', '0', '/', '{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":8}', 'admin', '2024-01-29 10:52:18', 'admin', '2024-01-29 17:58:51', '接种支付记录表');
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1751833818813485058, 'ym_pre_check', '接种预检信息表', NULL, NULL, 'YmPreCheck', 'crud', 'com.ym.vaccine', 'vaccine', 'preCheck', '预检信息查询', 'ym', '0', '/', '{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":8}', 'admin', '2024-01-29 10:52:21', 'admin', '2024-01-29 18:12:22', '疫苗接种前进行的预检信息记录');
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1751833819899809794, 'ym_sign', '签到信息表', NULL, NULL, 'YmSign', 'crud', 'com.ym.vaccine', 'vaccine', 'sign', '接种签到', 'ym', '0', '/', '{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":8}', 'admin', '2024-01-29 10:52:24', 'admin', '2024-01-29 18:13:19', '接种疫苗签到信息');
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1751833820768030721, 'ym_worker', '医护人员信息表', NULL, NULL, 'YmWorker', 'crud', 'com.ym.vaccine', 'vaccine', 'worker', '医护人员信息', 'ym', '0', '/', '{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":7}', 'admin', '2024-01-29 10:52:27', 'admin', '2024-01-29 18:14:20', NULL);
COMMIT;

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL COMMENT '编号',
  `table_id` bigint DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) COLLATE utf8mb4_general_ci DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
BEGIN;
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833812714967042, 1751833812203261954, 'id', '', 'int', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2024-01-29 13:05:03', 'admin', '2024-01-29 13:10:51');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833812727549954, 1751833812203261954, 'parent', '', 'varchar(255)', 'String', 'parent', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-01-29 13:05:03', 'admin', '2024-01-29 13:10:52');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833812731744258, 1751833812203261954, 'code', '', 'varchar(255)', 'String', 'code', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-01-29 13:05:03', 'admin', '2024-01-29 13:10:52');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833812740132865, 1751833812203261954, 'name', '', 'varchar(255)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2024-01-29 13:05:03', 'admin', '2024-01-29 13:10:52');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833813507690498, 1751833813188923393, 'id', '', 'int', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2024-01-29 13:05:03', 'admin', '2024-01-29 18:14:56');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833813516079106, 1751833813188923393, 'user_id', '预约用户id', 'int', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-01-29 13:05:03', 'admin', '2024-01-29 18:14:56');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833813520273410, 1751833813188923393, 'appoint_date', '预约日期', 'date', 'Date', 'appointDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2024-01-29 13:05:03', 'admin', '2024-01-29 18:14:56');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833813524467714, 1751833813188923393, 'status', '', 'int', 'Long', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', '', 4, 'admin', '2024-01-29 13:05:03', 'admin', '2024-01-29 18:14:56');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833813528662017, 1751833813188923393, 'qr_code_url', '', 'varchar(255)', 'String', 'qrCodeUrl', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-01-29 13:05:03', 'admin', '2024-01-29 18:14:56');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833813532856322, 1751833813188923393, 'plan_id', '', 'int', 'Long', 'planId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-01-29 13:05:03', 'admin', '2024-01-29 18:14:56');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833813537050625, 1751833813188923393, 'time_slot', '', 'int', 'Long', 'timeSlot', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2024-01-29 13:05:03', 'admin', '2024-01-29 18:14:56');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833813537050626, 1751833813188923393, 'create_time', '', 'datetime', 'Date', 'createTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2024-01-29 13:05:03', 'admin', '2024-01-29 18:14:56');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833814422048769, 1751833814124253186, 'id', '', 'int', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2024-01-29 13:05:04', 'admin', '2024-01-29 18:15:18');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833814430437377, 1751833814124253186, 'part', '', 'varchar(255)', 'String', 'part', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-01-29 13:05:04', 'admin', '2024-01-29 18:15:18');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833814438825985, 1751833814124253186, 'vaccine_batch_code', '', 'varchar(255)', 'String', 'vaccineBatchCode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-01-29 13:05:04', 'admin', '2024-01-29 18:15:18');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833814443020289, 1751833814124253186, 'worker_id', '', 'int', 'Long', 'workerId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-01-29 13:05:04', 'admin', '2024-01-29 18:15:18');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833814443020290, 1751833814124253186, 'create_time', '', 'datetime', 'Date', 'createTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2024-01-29 13:05:04', 'admin', '2024-01-29 18:15:18');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833814447214594, 1751833814124253186, 'appoint_id', '', 'int', 'Long', 'appointId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-01-29 13:05:04', 'admin', '2024-01-29 18:15:18');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833814455603201, 1751833814124253186, 'note', '', 'varchar(255)', 'String', 'note', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2024-01-29 13:05:04', 'admin', '2024-01-29 18:15:18');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833815520956418, 1751833815227355137, 'id', '', 'int', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2024-01-29 13:05:04', 'admin', '2024-01-29 13:38:43');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833815525150721, 1751833815227355137, 'name', '', 'varchar(255)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-01-29 13:05:04', 'admin', '2024-01-29 13:38:43');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833815529345025, 1751833815227355137, 'province_code', '', 'varchar(255)', 'String', 'provinceCode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-01-29 13:05:04', 'admin', '2024-01-29 13:38:43');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833815529345026, 1751833815227355137, 'city_code', '', 'varchar(255)', 'String', 'cityCode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-01-29 13:05:04', 'admin', '2024-01-29 13:38:43');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833815533539329, 1751833815227355137, 'district_code', '', 'varchar(255)', 'String', 'districtCode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-01-29 13:05:04', 'admin', '2024-01-29 13:38:43');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833815541927938, 1751833815227355137, 'address', '', 'varchar(255)', 'String', 'address', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-01-29 13:05:04', 'admin', '2024-01-29 13:38:43');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833815541927939, 1751833815227355137, 'img_url', '', 'varchar(255)', 'String', 'imgUrl', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2024-01-29 13:05:04', 'admin', '2024-01-29 13:38:43');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833816267542529, 1751833815965552642, 'id', '', 'int', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2024-01-29 13:05:04', 'admin', '2024-01-29 18:15:44');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833816271736833, 1751833815965552642, 'worker_id', '', 'int', 'Long', 'workerId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-01-29 13:05:04', 'admin', '2024-01-29 18:15:44');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833816275931138, 1751833815965552642, 'create_time', '', 'datetime', 'Date', 'createTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 3, 'admin', '2024-01-29 13:05:04', 'admin', '2024-01-29 18:15:44');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833816280125442, 1751833815965552642, 'appoint_id', '', 'int', 'Long', 'appointId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-01-29 13:05:04', 'admin', '2024-01-29 18:15:44');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833816280125443, 1751833815965552642, 'is_finish', '', 'int', 'Long', 'isFinish', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-01-29 13:05:04', 'admin', '2024-01-29 18:15:44');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833816284319746, 1751833815965552642, 'note', '', 'varchar(255)', 'String', 'note', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-01-29 13:05:04', 'admin', '2024-01-29 18:15:44');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833816292708354, 1751833815965552642, 'end_time', '', 'datetime', 'Date', 'endTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2024-01-29 13:05:04', 'admin', '2024-01-29 18:15:44');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833817328701442, 1751833817026711553, 'id', '', 'int', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2024-01-29 13:05:04', 'admin', '2024-01-29 17:58:52');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833817332895746, 1751833817026711553, 'cost', '支付费用', 'float', 'Long', 'cost', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-01-29 13:05:04', 'admin', '2024-01-29 17:58:52');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833817332895747, 1751833817026711553, 'create_time', '支付时间', 'datetime', 'Date', 'createTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 3, 'admin', '2024-01-29 13:05:04', 'admin', '2024-01-29 17:58:52');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833817337090049, 1751833817026711553, 'appoint_id', '预约id', 'int', 'Long', 'appointId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-01-29 13:05:04', 'admin', '2024-01-29 17:58:52');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833819111280642, 1751833818813485058, 'id', '', 'int', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2024-01-29 13:05:05', 'admin', '2024-01-29 18:12:23');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833819115474946, 1751833818813485058, 'is_medicine', '', 'int', 'Long', 'isMedicine', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-01-29 13:05:05', 'admin', '2024-01-29 18:12:23');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833819119669249, 1751833818813485058, 'medicine', '', 'varchar(255)', 'String', 'medicine', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-01-29 13:05:05', 'admin', '2024-01-29 18:12:23');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833819123863554, 1751833818813485058, 'is_contraindication', '', 'int', 'Long', 'isContraindication', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-01-29 13:05:05', 'admin', '2024-01-29 18:12:23');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833819123863555, 1751833818813485058, 'contraindication', '', 'varchar(255)', 'String', 'contraindication', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-01-29 13:05:05', 'admin', '2024-01-29 18:12:23');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833819128057857, 1751833818813485058, 'blood_pressure_high', '', 'float', 'Long', 'bloodPressureHigh', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-01-29 13:05:05', 'admin', '2024-01-29 18:12:23');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833819128057858, 1751833818813485058, 'blood_pressure_low', '', 'float', 'Long', 'bloodPressureLow', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2024-01-29 13:05:05', 'admin', '2024-01-29 18:12:23');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833819132252161, 1751833818813485058, 'temperature', '', 'float', 'Long', 'temperature', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2024-01-29 13:05:05', 'admin', '2024-01-29 18:12:23');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833819132252162, 1751833818813485058, 'worker_id', '', 'int', 'Long', 'workerId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2024-01-29 13:05:05', 'admin', '2024-01-29 18:12:23');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833819132252163, 1751833818813485058, 'create_time', '', 'datetime', 'Date', 'createTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2024-01-29 13:05:05', 'admin', '2024-01-29 18:12:23');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833819140640769, 1751833818813485058, 'appoint_id', '', 'int', 'Long', 'appointId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2024-01-29 13:05:05', 'admin', '2024-01-29 18:12:23');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833819144835074, 1751833818813485058, 'note', '', 'varchar(255)', 'String', 'note', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2024-01-29 13:05:05', 'admin', '2024-01-29 18:12:23');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833820193411073, 1751833819899809794, 'id', '', 'int', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2024-01-29 13:05:05', 'admin', '2024-01-29 18:13:19');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833820197605377, 1751833819899809794, 'worker_id', '', 'int', 'Long', 'workerId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-01-29 13:05:05', 'admin', '2024-01-29 18:13:19');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833820201799681, 1751833819899809794, 'appoint_id', '', 'int', 'Long', 'appointId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-01-29 13:05:05', 'admin', '2024-01-29 18:13:19');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833820201799682, 1751833819899809794, 'create_time', '', 'datetime', 'Date', 'createTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 4, 'admin', '2024-01-29 13:05:05', 'admin', '2024-01-29 18:13:19');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833821057437698, 1751833820768030721, 'id', '', 'int', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2024-01-29 13:05:05', 'admin', '2024-01-29 18:14:20');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833821065826306, 1751833820768030721, 'username', '', 'varchar(255)', 'String', 'username', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-01-29 13:05:05', 'admin', '2024-01-29 18:14:20');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833821070020609, 1751833820768030721, 'password', '', 'varchar(255)', 'String', 'password', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-01-29 13:05:05', 'admin', '2024-01-29 18:14:20');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833821070020610, 1751833820768030721, 'real_name', '', 'varchar(255)', 'String', 'realName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2024-01-29 13:05:05', 'admin', '2024-01-29 18:14:20');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833821078409217, 1751833820768030721, 'card_id', '', 'varchar(255)', 'String', 'cardId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-01-29 13:05:05', 'admin', '2024-01-29 18:14:20');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833821082603521, 1751833820768030721, 'phone', '', 'varchar(255)', 'String', 'phone', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-01-29 13:05:05', 'admin', '2024-01-29 18:14:20');
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1751833821082603522, 1751833820768030721, 'inoculate_site_id', '', 'int', 'Long', 'inoculateSiteId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2024-01-29 13:05:05', 'admin', '2024-01-29 18:14:20');
COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` bigint NOT NULL COMMENT '参数主键',
  `config_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) COLLATE utf8mb4_general_ci DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-01-17 17:51:55', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-01-17 17:51:55', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-01-17 17:51:55', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2024-01-17 17:51:55', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2024-01-17 17:51:55', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (11, 'OSS预览列表资源开关', 'sys.oss.previewListResource', 'true', 'Y', 'admin', '2024-01-17 17:51:55', 'admin', '2024-01-25 14:19:30', 'true:开启, false:关闭');
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(500) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '邮箱',
  `status` char(1) COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (100, 0, '0', '如梦科技', 0, 'PP', '15888888888', 'pp@qq.com', '0', '0', 'admin', '2024-01-17 17:51:52', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (101, 100, '0,100', '宿迁总公司', 1, 'PP', '15888888888', 'pp@qq.com', '0', '0', 'admin', '2024-01-17 17:51:52', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (102, 100, '0,100', '南京分公司', 2, 'PP', '15888888888', 'pp@qq.com', '0', '2', 'admin', '2024-01-17 17:51:52', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (103, 101, '0,100,101', '研发部门', 1, 'PP', '15888888888', 'pp@qq.com', '0', '0', 'admin', '2024-01-17 17:51:52', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (104, 101, '0,100,101', '市场部门', 2, 'PP', '15888888888', 'pp@qq.com', '0', '0', 'admin', '2024-01-17 17:51:52', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (105, 101, '0,100,101', '测试部门', 3, 'PP', '15888888888', 'pp@qq.com', '0', '0', 'admin', '2024-01-17 17:51:52', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (106, 101, '0,100,101', '财务部门', 4, 'PP', '15888888888', 'pp@qq.com', '0', '2', 'admin', '2024-01-17 17:51:52', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (107, 101, '0,100,101', '运维部门', 5, 'PP', '15888888888', 'pp@qq.com', '0', '2', 'admin', '2024-01-17 17:51:52', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (108, 102, '0,100,102', '市场部门', 1, 'PP', '15888888888', 'pp@qq.com', '0', '2', 'admin', '2024-01-17 17:51:52', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (109, 102, '0,100,102', '财务部门', 2, 'PP', '15888888888', 'pp@qq.com', '0', '2', 'admin', '2024-01-17 17:51:52', '', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) COLLATE utf8mb4_general_ci DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '性别男');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '性别女');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '通知');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '公告');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (29, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '其他操作');
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL COMMENT '字典主键',
  `dict_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典类型',
  `status` char(1) COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2024-01-17 17:51:55', '', NULL, '登录状态列表');
COMMIT;

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint NOT NULL COMMENT '访问ID',
  `user_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '操作系统',
  `status` char(1) COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
BEGIN;
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1747559403665858561, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-17 18:00:05');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1747574437200576513, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-17 18:59:49');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1747866694738829313, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-18 14:21:08');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1747868547870482434, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '退出成功', '2024-01-18 14:28:30');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1747868572587515906, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-18 14:28:36');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1747874222319136769, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-18 14:51:03');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1747879571868688386, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-18 15:12:19');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1747888972054708226, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '退出成功', '2024-01-18 15:49:40');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1747888991419809793, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-18 15:49:44');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1747894591042142210, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-18 16:11:59');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1747903941232082945, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-18 16:49:09');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1747905577996304386, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-18 16:55:39');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1749423389453631489, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-22 21:26:53');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1750389343385907202, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-25 13:25:15');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1750393259351699457, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-25 13:40:48');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1750395330184441858, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-25 13:49:02');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1750402895047913474, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-25 14:19:06');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1750404599508144129, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '退出成功', '2024-01-25 14:25:52');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1750404626141974530, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '1', '验证码已失效', '2024-01-25 14:25:58');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1750404646937333762, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-25 14:26:03');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1750408003148091394, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '退出成功', '2024-01-25 14:39:24');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1750408021783384066, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-25 14:39:28');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1750704837854814209, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-26 10:18:55');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1750711765410570242, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-26 10:46:26');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1750748371857240066, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-26 13:11:54');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1750748398776283137, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '退出成功', '2024-01-26 13:12:00');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1750749267454390274, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '1', '验证码已失效', '2024-01-26 13:15:27');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1750749284831391745, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-26 13:15:32');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1751213630535548930, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-27 20:00:40');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1751221354040180738, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-27 20:31:22');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1751814319074758657, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-29 11:47:35');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1751820902768906242, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-29 12:13:45');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1751827503357673474, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-29 12:39:59');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1751897294902693889, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-29 17:17:18');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1751900038904451073, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '退出成功', '2024-01-29 17:28:13');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1751900134828183554, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-29 17:28:36');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1751901348416491522, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '退出成功', '2024-01-29 17:33:25');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1751901781323190274, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-29 17:35:08');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1751904755197972481, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '退出成功', '2024-01-29 17:46:57');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1751904774365941762, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-29 17:47:02');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1751910887920533505, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-29 18:11:19');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1751922522517237762, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-29 18:57:33');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1751932851930361858, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-29 19:38:36');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1751933338784198658, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '退出成功', '2024-01-29 19:40:32');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1751933358849748994, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-29 19:40:37');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1751935437890744322, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '退出成功', '2024-01-29 19:48:52');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1751935456731557889, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-29 19:48:57');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1751935829382885377, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-29 19:50:26');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1751936189128339457, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '退出成功', '2024-01-29 19:51:52');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1751936213518217217, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-29 19:51:57');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (1751955412655370242, 'admin', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome', 'OSX', '0', '登录成功', '2024-01-29 21:08:15');
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  `menu_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '组件路径',
  `query_param` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '路由参数',
  `is_frame` int DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '显示状态（0显示 1隐藏）',
  `status` char(1) COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) COLLATE utf8mb4_general_ci DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2024-01-17 17:51:53', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, '系统监控', 0, 7, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2024-01-17 17:51:53', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, '系统工具', 0, 8, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2024-01-17 17:51:53', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (5, '疫苗管理', 0, 2, 'vaccine', NULL, '', 1, 0, 'M', '0', '0', '', 'guide', 'admin', '2024-01-17 18:21:29', '', NULL, '疫苗预约管理目录');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (6, '预约计划管理', 0, 3, 'plan', '', '', 1, 0, 'M', '0', '0', 'vaccine:appointment:list', 'tool', 'admin', '2024-01-17 18:21:29', '', NULL, '疫苗预约目录');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (7, '疫苗接种管理', 0, 4, 'inoculated', '', '', 1, 0, 'M', '0', '0', 'vaccine:vaccinationRecord:list', 'people', 'admin', '2024-01-17 18:21:29', 'admin', '2024-01-30 13:02:29', '疫苗预约记录菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (8, '接种流程查询', 0, 6, 'flow', '', '', 1, 0, 'M', '0', '0', 'vaccine:vaccinationRecord:list', 'fullscreen', 'admin', '2024-01-17 18:21:29', 'admin', '2024-01-30 13:02:56', '疫苗预约记录菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-01-17 17:51:53', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-01-17 17:51:53', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-01-17 17:51:53', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2024-01-17 17:51:53', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2024-01-17 17:51:53', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2024-01-17 17:51:53', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2024-01-17 17:51:53', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2024-01-17 17:51:53', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2024-01-17 17:51:53', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2024-01-17 17:51:53', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (112, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2024-01-17 17:51:53', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2024-01-17 17:51:53', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2024-01-17 17:51:53', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2024-01-17 17:51:53', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (118, '文件管理', 1, 10, 'oss', 'system/oss/index', '', 1, 0, 'C', '0', '0', 'system:oss:list', 'upload', 'admin', '2024-01-17 17:51:53', '', NULL, '文件管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (121, '疫苗信息', 5, 1, 'vaccine', 'vaccine/vaccine/index', '', 1, 0, 'C', '0', '0', 'vaccine:vaccine:list', 'documentation', 'admin', '2024-01-17 18:23:19', 'admin', '2024-01-30 13:01:19', '疫苗信息管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (122, '疫苗预约用户', 5, 2, 'ym_user', 'vaccine/ym_user/index', '', 1, 0, 'C', '0', '0', 'vaccine:ym_user:list', 'user', 'admin', '2024-01-17 18:23:19', '', NULL, '疫苗预约用户菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (123, '预约计划信息', 6, 1, 'plan', 'vaccine/plan/index', NULL, 1, 0, 'C', '0', '0', 'vaccine:plan:list', 'edit', 'admin', '2024-01-29 17:46:53', 'admin', '2024-01-30 13:00:49', '预约计划管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (124, '支付记录', 8, 1, 'pay', 'vaccine/pay/index', NULL, 1, 0, 'C', '0', '0', 'vaccine:pay:list', 'money', 'admin', '2024-01-29 19:38:07', 'admin', '2024-01-30 13:03:25', '支付功能菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (125, '预约记录', 8, 1, 'appoint', 'vaccine/appoint/index', NULL, 1, 0, 'C', '0', '0', 'vaccine:appoint:list', 'log', 'admin', '2024-01-29 19:38:08', 'admin', '2024-01-30 13:03:40', '预约菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (126, '接种签到', 8, 1, 'sign', 'vaccine/sign/index', NULL, 1, 0, 'C', '0', '0', 'vaccine:sign:list', 'edit', 'admin', '2024-01-29 19:38:10', 'admin', '2024-01-30 13:03:57', '接种签到菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (127, '预检信息查询', 8, 1, 'preCheck', 'vaccine/preCheck/index', NULL, 1, 0, 'C', '0', '0', 'vaccine:preCheck:list', 'job', 'admin', '2024-01-29 19:38:11', 'admin', '2024-01-30 13:04:12', '预检信息查询菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (128, '疫苗接种记录', 8, 1, 'inoculate', 'vaccine/inoculate/index', NULL, 1, 0, 'C', '0', '0', 'vaccine:inoculate:list', 'checkbox', 'admin', '2024-01-29 19:38:13', 'admin', '2024-01-30 13:04:29', '疫苗接种记录菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (129, '留观查询', 8, 1, 'observe', 'vaccine/observe/index', NULL, 1, 0, 'C', '0', '0', 'vaccine:observe:list', 'eye-open', 'admin', '2024-01-29 19:38:14', 'admin', '2024-01-30 13:04:44', '留观查询菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (130, '疫苗接种站点管理', 7, 1, 'inoculateSite', 'vaccine/inoculateSite/index', NULL, 1, 0, 'C', '0', '0', 'vaccine:inoculateSite:list', 'radio', 'admin', '2024-01-29 19:38:15', 'admin', '2024-01-30 13:02:12', '疫苗接种站点管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (131, '医护人员信息', 7, 1, 'worker', 'vaccine/worker/index', NULL, 1, 0, 'C', '0', '0', 'vaccine:worker:list', 'peoples', 'admin', '2024-01-29 19:38:17', 'admin', '2024-01-30 13:02:39', '医护人员信息菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2024-01-17 17:51:53', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-01-17 17:51:53', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1001, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1002, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1003, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1004, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1005, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1006, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1007, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1008, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1009, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1010, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1011, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1012, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1013, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1014, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1015, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1016, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1017, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1018, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1019, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1020, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1021, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1022, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1023, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1024, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1025, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1026, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1027, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1028, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1029, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1030, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1031, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1032, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1033, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1034, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1035, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1036, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1037, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1038, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1039, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1040, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1041, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1042, '日志导出', 500, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1043, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1044, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1045, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1050, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1055, '生成查询', 115, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1056, '生成修改', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1057, '生成删除', 115, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1058, '导入代码', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1059, '预览代码', 115, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1060, '生成代码', 115, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1231, '预约计划管理查询', 123, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:plan:query', '#', 'admin', '2024-01-29 17:49:24', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1232, '预约计划管理新增', 123, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:plan:add', '#', 'admin', '2024-01-29 17:49:24', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1233, '预约计划管理修改', 123, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:plan:edit', '#', 'admin', '2024-01-29 17:49:24', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1234, '预约计划管理删除', 123, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:plan:remove', '#', 'admin', '2024-01-29 17:49:25', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1235, '预约计划管理导出', 123, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:plan:export', '#', 'admin', '2024-01-29 17:49:25', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1241, '支付记录查询', 124, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:pay:query', '#', 'admin', '2024-01-29 19:38:07', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1242, '支付记录新增', 124, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:pay:add', '#', 'admin', '2024-01-29 19:38:07', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1243, '支付记录修改', 124, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:pay:edit', '#', 'admin', '2024-01-29 19:38:08', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1244, '支付记录删除', 124, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:pay:remove', '#', 'admin', '2024-01-29 19:38:08', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1245, '支付记录导出', 124, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:pay:export', '#', 'admin', '2024-01-29 19:38:08', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1251, '预约记录查询', 125, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:appoint:query', '#', 'admin', '2024-01-29 19:38:09', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1252, '预约记录新增', 125, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:appoint:add', '#', 'admin', '2024-01-29 19:38:09', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1253, '预约记录修改', 125, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:appoint:edit', '#', 'admin', '2024-01-29 19:38:09', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1254, '预约记录删除', 125, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:appoint:remove', '#', 'admin', '2024-01-29 19:38:09', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1255, '预约记录导出', 125, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:appoint:export', '#', 'admin', '2024-01-29 19:38:10', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1261, '接种签到查询', 126, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:sign:query', '#', 'admin', '2024-01-29 19:38:10', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1262, '接种签到新增', 126, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:sign:add', '#', 'admin', '2024-01-29 19:38:10', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1263, '接种签到修改', 126, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:sign:edit', '#', 'admin', '2024-01-29 19:38:10', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1264, '接种签到删除', 126, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:sign:remove', '#', 'admin', '2024-01-29 19:38:11', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1265, '接种签到导出', 126, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:sign:export', '#', 'admin', '2024-01-29 19:38:11', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1271, '预检信息查询查询', 127, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:preCheck:query', '#', 'admin', '2024-01-29 19:38:11', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1272, '预检信息查询新增', 127, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:preCheck:add', '#', 'admin', '2024-01-29 19:38:12', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1273, '预检信息查询修改', 127, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:preCheck:edit', '#', 'admin', '2024-01-29 19:38:12', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1274, '预检信息查询删除', 127, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:preCheck:remove', '#', 'admin', '2024-01-29 19:38:12', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1275, '预检信息查询导出', 127, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:preCheck:export', '#', 'admin', '2024-01-29 19:38:12', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1281, '疫苗接种记录查询', 128, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:inoculate:query', '#', 'admin', '2024-01-29 19:38:13', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1282, '疫苗接种记录新增', 128, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:inoculate:add', '#', 'admin', '2024-01-29 19:38:13', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1283, '疫苗接种记录修改', 128, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:inoculate:edit', '#', 'admin', '2024-01-29 19:38:13', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1284, '疫苗接种记录删除', 128, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:inoculate:remove', '#', 'admin', '2024-01-29 19:38:14', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1285, '疫苗接种记录导出', 128, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:inoculate:export', '#', 'admin', '2024-01-29 19:38:14', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1291, '留观查询查询', 129, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:observe:query', '#', 'admin', '2024-01-29 19:38:14', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1292, '留观查询新增', 129, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:observe:add', '#', 'admin', '2024-01-29 19:38:14', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1293, '留观查询修改', 129, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:observe:edit', '#', 'admin', '2024-01-29 19:38:15', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1294, '留观查询删除', 129, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:observe:remove', '#', 'admin', '2024-01-29 19:38:15', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1295, '留观查询导出', 129, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:observe:export', '#', 'admin', '2024-01-29 19:38:15', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1301, '疫苗接种站点管理查询', 130, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:inoculateSite:query', '#', 'admin', '2024-01-29 19:38:16', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1302, '疫苗接种站点管理新增', 130, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:inoculateSite:add', '#', 'admin', '2024-01-29 19:38:16', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1303, '疫苗接种站点管理修改', 130, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:inoculateSite:edit', '#', 'admin', '2024-01-29 19:38:16', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1304, '疫苗接种站点管理删除', 130, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:inoculateSite:remove', '#', 'admin', '2024-01-29 19:38:16', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1305, '疫苗接种站点管理导出', 130, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:inoculateSite:export', '#', 'admin', '2024-01-29 19:38:17', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1311, '医护人员信息查询', 131, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:worker:query', '#', 'admin', '2024-01-29 19:38:17', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1312, '医护人员信息新增', 131, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:worker:add', '#', 'admin', '2024-01-29 19:38:17', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1313, '医护人员信息修改', 131, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:worker:edit', '#', 'admin', '2024-01-29 19:38:17', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1314, '医护人员信息删除', 131, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:worker:remove', '#', 'admin', '2024-01-29 19:38:18', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1315, '医护人员信息导出', 131, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'vaccine:worker:export', '#', 'admin', '2024-01-29 19:38:18', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1600, '文件查询', 118, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:oss:query', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1601, '文件上传', 118, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:oss:upload', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1602, '文件下载', 118, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:oss:download', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1603, '文件删除', 118, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:oss:remove', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1604, '配置添加', 118, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:oss:add', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query_param`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1605, '配置编辑', 118, 6, '#', '', '', 1, 0, 'F', '0', '0', 'system:oss:edit', '#', 'admin', '2024-01-17 17:51:53', '', NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` bigint NOT NULL COMMENT '公告ID',
  `notice_title` varchar(50) COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
BEGIN;
INSERT INTO `sys_notice` (`notice_id`, `notice_title`, `notice_type`, `notice_content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, '温馨提醒：2018-07-01 新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2024-01-17 17:51:55', '', NULL, '管理员');
INSERT INTO `sys_notice` (`notice_id`, `notice_title`, `notice_type`, `notice_content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, '维护通知：2018-07-01 系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2024-01-17 17:51:55', '', NULL, '管理员');
INSERT INTO `sys_notice` (`notice_id`, `notice_title`, `notice_type`, `notice_content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, '关于新型冠状病毒疫苗接种的通知', '2', 0xE6A0B9E68DAEE59BBDE5AEB6E58DABE7949FE581A5E5BAB7E5A794E59198E4BC9AE79A84E8A681E6B182EFBC8CE68891E999A2E5B086E4BA8EE8BF91E69C9FE5BC80E5A78BE696B0E59E8BE586A0E78AB6E79785E6AF92E796ABE88B97E68EA5E7A78DE5B7A5E4BD9CE38082E8AFB7E5B9BFE5A4A7E5B882E6B091E5AF86E58887E585B3E6B3A8E5AE98E696B9E9809AE79FA5EFBC8CE5819AE5A5BDE68EA5E7A78DE58786E5A487E38082, '0', 'admin', '2023-12-20 08:00:00', 'admin', '2023-12-20 08:00:00', '管理员');
INSERT INTO `sys_notice` (`notice_id`, `notice_title`, `notice_type`, `notice_content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (4, '关于疫苗接种后注意事项的公告', '2', 0xE796ABE88B97E68EA5E7A78DE5908EEFBC8CE6B3A8E6848FE4BC91E681AFEFBC8CE4BF9DE68C81E58585E8B6B3E79A84E6B0B4E58886E69184E585A5EFBC8CE981BFE5858DE589A7E78388E8BF90E58AA8EFBC8CE8A782E5AF9FE68EA5E7A78DE983A8E4BD8DE698AFE590A6E69C89E5BC82E5B8B8E58F8DE5BA94E7AD89E38082E5A682E69C89E4B88DE98082EFBC8CE8AFB7E58F8AE697B6E5B0B1E58CBBE38082, '0', 'admin', '2023-12-20 09:00:00', 'admin', '2023-12-20 09:00:00', '管理员');
COMMIT;

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint NOT NULL COMMENT '日志主键',
  `title` varchar(50) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
BEGIN;
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747565698003341313, '代码生成', 6, 'com.ym.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '0:0:0:0:0:0:0:1', '内网IP', '\"ym_vaccine_type,ym_manufacturer\"', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-17 18:25:05');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747565890077298689, '代码生成', 2, 'com.ym.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2024-01-17 18:25:50\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"\"},\"tableId\":\"1747565697063817217\",\"tableName\":\"ym_vaccine_type\",\"tableComment\":\"疫苗类型表，存储疫苗的类型信息\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"YmVaccineType\",\"tplCategory\":\"crud\",\"packageName\":\"com.ym.vaccine\",\"moduleName\":\"vaccine\",\"businessName\":\"vaccineType\",\"functionName\":\"疫苗类型，存储疫苗的类型信息\",\"functionAuthor\":\"ym\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2024-01-17 18:25:05\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-17 18:25:50\",\"columnId\":\"1747565697386778625\",\"tableId\":\"1747565697063817217\",\"columnName\":\"type_id\",\"columnComment\":\"类型id\",\"columnType\":\"int\",\"javaType\":\"Long\",\"javaField\":\"typeId\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"pk\":true,\"edit\":true,\"list\":true,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"increment\":true,\"query\":false,\"capJavaField\":\"TypeId\",\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-17 18:25:05\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-17 18:25:50\",\"columnId\":\"1747565697390972929\",\"tableId\":\"1747565697063817217\",\"columnName\":\"type_name\",\"columnComment\":\"疫苗类型名称\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"typeName\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"pk\":false,\"edit\":true,\"list\":true,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"increment\":false,\"query\":true,\"capJavaField\":\"TypeName\",\"required\":true}],\"options\":\"{\\\"treeCode\\\":null,\\\"treeName\\\":null,\\\"treeParentCode\\\":null,\\\"parentMenuId\\\":\\\"\\\"}\",\"remark\":null,\"treeCode\":null,\"treeParentCode\":null,\"treeName\":null,\"menuIds\":null,\"parentMenuId\":\"\",\"parentMenuNa', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-17 18:25:51');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747566033891594242, '代码生成', 2, 'com.ym.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2024-01-17 18:26:25\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":5},\"tableId\":\"1747565696392728577\",\"tableName\":\"ym_manufacturer\",\"tableComment\":\"疫苗厂家表，存储疫苗厂家信息\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"YmManufacturer\",\"tplCategory\":\"crud\",\"packageName\":\"com.ym.vaccine\",\"moduleName\":\"vaccine\",\"businessName\":\"manufacturer\",\"functionName\":\"疫苗厂家，存储疫苗厂家信息\",\"functionAuthor\":\"ym\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2024-01-17 18:25:05\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-17 18:26:25\",\"columnId\":\"1747565696740855809\",\"tableId\":\"1747565696392728577\",\"columnName\":\"manufacturer_id\",\"columnComment\":\"\",\"columnType\":\"bigint\",\"javaType\":\"Long\",\"javaField\":\"manufacturerId\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"pk\":true,\"edit\":true,\"list\":true,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"increment\":true,\"query\":false,\"capJavaField\":\"ManufacturerId\",\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-17 18:25:05\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-17 18:26:25\",\"columnId\":\"1747565696749244418\",\"tableId\":\"1747565696392728577\",\"columnName\":\"facturer_name\",\"columnComment\":\"\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"facturerName\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"pk\":false,\"edit\":true,\"list\":true,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"increment\":false,\"query\":true,\"capJavaField\":\"FacturerName\",\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-17 18:25:05\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-17 18:26:25\",\"columnId\":\"1747565696753438721\",\"tableId\":\"1747565696392728577\",\"columnNa', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-17 18:26:25');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747566088115556353, '代码生成', 2, 'com.ym.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2024-01-17 18:26:38\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":5},\"tableId\":\"1747565697063817217\",\"tableName\":\"ym_vaccine_type\",\"tableComment\":\"疫苗类型表，存储疫苗的类型信息\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"YmVaccineType\",\"tplCategory\":\"crud\",\"packageName\":\"com.ym.vaccine\",\"moduleName\":\"vaccine\",\"businessName\":\"vaccineType\",\"functionName\":\"疫苗类型，存储疫苗的类型信息\",\"functionAuthor\":\"ym\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2024-01-17 18:25:05\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-17 18:26:38\",\"columnId\":\"1747565697386778625\",\"tableId\":\"1747565697063817217\",\"columnName\":\"type_id\",\"columnComment\":\"类型id\",\"columnType\":\"int\",\"javaType\":\"Long\",\"javaField\":\"typeId\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"pk\":true,\"edit\":true,\"list\":true,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"increment\":true,\"query\":false,\"capJavaField\":\"TypeId\",\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-17 18:25:05\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-17 18:26:38\",\"columnId\":\"1747565697390972929\",\"tableId\":\"1747565697063817217\",\"columnName\":\"type_name\",\"columnComment\":\"疫苗类型名称\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"typeName\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"pk\":false,\"edit\":true,\"list\":true,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"increment\":false,\"query\":true,\"capJavaField\":\"TypeName\",\"required\":true}],\"options\":\"{\\\"treeCode\\\":null,\\\"treeName\\\":null,\\\"treeParentCode\\\":null,\\\"parentMenuId\\\":5}\",\"remark\":null,\"treeCode\":null,\"treeParentCode\":null,\"treeName\":null,\"menuIds\":null,\"parentMenuId\":\"5\",\"parentMenuName\"', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-17 18:26:38');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747566162614784002, '代码生成', 2, 'com.ym.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2024-01-17 18:26:55\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"5\"},\"tableId\":\"1747565697063817217\",\"tableName\":\"ym_vaccine_type\",\"tableComment\":\"疫苗类型表，存储疫苗的类型信息\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"YmVaccineType\",\"tplCategory\":\"crud\",\"packageName\":\"com.ym.vaccine\",\"moduleName\":\"vaccine\",\"businessName\":\"vaccineType\",\"functionName\":\"疫苗类型，存储疫苗的类型信息\",\"functionAuthor\":\"ym\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2024-01-17 18:25:05\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-17 18:26:55\",\"columnId\":\"1747565697386778625\",\"tableId\":\"1747565697063817217\",\"columnName\":\"type_id\",\"columnComment\":\"类型id\",\"columnType\":\"int\",\"javaType\":\"Long\",\"javaField\":\"typeId\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"pk\":true,\"edit\":true,\"list\":true,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"increment\":true,\"query\":false,\"capJavaField\":\"TypeId\",\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-17 18:25:05\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-17 18:26:55\",\"columnId\":\"1747565697390972929\",\"tableId\":\"1747565697063817217\",\"columnName\":\"type_name\",\"columnComment\":\"疫苗类型名称\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"typeName\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"pk\":false,\"edit\":true,\"list\":true,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"increment\":false,\"query\":true,\"capJavaField\":\"TypeName\",\"required\":true}],\"options\":\"{\\\"treeCode\\\":null,\\\"treeName\\\":null,\\\"treeParentCode\\\":null,\\\"parentMenuId\\\":\\\"5\\\"}\",\"remark\":null,\"treeCode\":null,\"treeParentCode\":null,\"treeName\":null,\"menuIds\":null,\"parentMenuId\":\"5\",\"parentMen', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-17 18:26:56');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747566177831718914, '代码生成', 8, 'com.ym.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '0:0:0:0:0:0:0:1', '内网IP', '{\"tables\":\"ym_manufacturer,ym_vaccine_type\"}', '', 0, '', '2024-01-17 18:27:00');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747866774350913538, '部门管理', 3, 'com.ym.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/102', '0:0:0:0:0:0:0:1', '内网IP', '{}', '{\"code\":601,\"msg\":\"存在下级部门,不允许删除\",\"data\":null}', 0, '', '2024-01-18 14:21:27');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747866788544438274, '部门管理', 3, 'com.ym.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/108', '0:0:0:0:0:0:0:1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 14:21:31');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747866819695534081, '部门管理', 3, 'com.ym.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/109', '0:0:0:0:0:0:0:1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 14:21:38');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747866833926807554, '部门管理', 3, 'com.ym.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/102', '0:0:0:0:0:0:0:1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 14:21:42');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747866849697390594, '部门管理', 3, 'com.ym.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/107', '0:0:0:0:0:0:0:1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 14:21:45');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747866885382529025, '部门管理', 3, 'com.ym.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/106', '0:0:0:0:0:0:0:1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 14:21:54');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747866893343318017, '部门管理', 3, 'com.ym.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/105', '0:0:0:0:0:0:0:1', '内网IP', '{}', '{\"code\":601,\"msg\":\"部门存在用户,不允许删除\",\"data\":null}', 0, '', '2024-01-18 14:21:56');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747874487550144514, '菜单管理', 3, 'com.ym.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/117', '0:0:0:0:0:0:0:1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 14:52:06');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747874517904322561, '菜单管理', 3, 'com.ym.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/120', '0:0:0:0:0:0:0:1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 14:52:14');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747874535642034178, '菜单管理', 3, 'com.ym.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/4', '0:0:0:0:0:0:0:1', '内网IP', '{}', '{\"code\":601,\"msg\":\"菜单已分配,不允许删除\",\"data\":null}', 0, '', '2024-01-18 14:52:18');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747874595800936449, '菜单管理', 2, 'com.ym.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-01-17 17:51:53\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 14:52:32\",\"parentName\":null,\"parentId\":0,\"children\":[],\"menuId\":4,\"menuName\":\"PLUS官网\",\"orderNum\":7,\"path\":\"https://gitee.com/dromara/RuoYi-Vue-Plus\",\"component\":null,\"queryParam\":\"\",\"isFrame\":\"1\",\"isCache\":\"0\",\"menuType\":\"M\",\"visible\":\"1\",\"status\":\"1\",\"perms\":\"\",\"icon\":\"guide\",\"remark\":\"RuoYi-Vue-Plus官网地址\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 14:52:32');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747874618198519810, '菜单管理', 3, 'com.ym.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/4', '0:0:0:0:0:0:0:1', '内网IP', '{}', '{\"code\":601,\"msg\":\"菜单已分配,不允许删除\",\"data\":null}', 0, '', '2024-01-18 14:52:38');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747874825959174146, '个人信息', 2, 'com.ym.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', '研发部门', '/system/user/profile', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-01-17 17:51:52\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 14:53:26\",\"userId\":1,\"deptId\":null,\"userName\":null,\"nickName\":\"Seele\",\"userType\":\"sys_user\",\"email\":\"crazyLionLi@163.com\",\"phonenumber\":\"15888888888\",\"sex\":\"0\",\"avatar\":null,\"status\":\"0\",\"delFlag\":\"0\",\"loginIp\":\"0:0:0:0:0:0:0:1\",\"loginDate\":\"2024-01-18 14:51:03\",\"remark\":\"管理员\",\"dept\":{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"parentName\":null,\"parentId\":101,\"children\":[],\"deptId\":103,\"deptName\":\"研发部门\",\"orderNum\":1,\"leader\":\"若依\",\"phone\":null,\"email\":null,\"status\":\"0\",\"delFlag\":null,\"ancestors\":\"0,100,101\"},\"roles\":[{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"roleId\":1,\"roleName\":\"超级管理员\",\"roleKey\":\"admin\",\"roleSort\":1,\"dataScope\":\"1\",\"menuCheckStrictly\":null,\"deptCheckStrictly\":null,\"status\":\"0\",\"delFlag\":null,\"remark\":null,\"flag\":false,\"menuIds\":null,\"deptIds\":null,\"admin\":true}],\"roleIds\":null,\"postIds\":null,\"roleId\":null,\"admin\":true}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 14:53:27');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747874923153780737, '个人信息', 2, 'com.ym.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', '研发部门', '/system/user/profile', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-01-17 17:51:52\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 14:53:50\",\"userId\":1,\"deptId\":null,\"userName\":null,\"nickName\":\"Seele\",\"userType\":\"sys_user\",\"email\":\"panpan@163.com\",\"phonenumber\":\"15888888888\",\"sex\":\"0\",\"avatar\":null,\"status\":\"0\",\"delFlag\":\"0\",\"loginIp\":\"0:0:0:0:0:0:0:1\",\"loginDate\":\"2024-01-18 14:51:03\",\"remark\":\"管理员\",\"dept\":{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"parentName\":null,\"parentId\":101,\"children\":[],\"deptId\":103,\"deptName\":\"研发部门\",\"orderNum\":1,\"leader\":\"若依\",\"phone\":null,\"email\":null,\"status\":\"0\",\"delFlag\":null,\"ancestors\":\"0,100,101\"},\"roles\":[{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"roleId\":1,\"roleName\":\"超级管理员\",\"roleKey\":\"admin\",\"roleSort\":1,\"dataScope\":\"1\",\"menuCheckStrictly\":null,\"deptCheckStrictly\":null,\"status\":\"0\",\"delFlag\":null,\"remark\":null,\"flag\":false,\"menuIds\":null,\"deptIds\":null,\"admin\":true}],\"roleIds\":null,\"postIds\":null,\"roleId\":null,\"admin\":true}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 14:53:50');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747879849565167618, '用户管理', 2, 'com.ym.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-01-17 17:51:52\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:13:24\",\"userId\":2,\"deptId\":105,\"userName\":\"lionli\",\"nickName\":\"ll\",\"userType\":\"sys_user\",\"email\":\"Lilin@qq.com\",\"phonenumber\":\"15666666666\",\"sex\":\"0\",\"avatar\":\"\",\"status\":\"0\",\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"loginDate\":\"2024-01-17 17:51:52\",\"remark\":\"测试员\",\"dept\":{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"parentName\":null,\"parentId\":101,\"children\":[],\"deptId\":105,\"deptName\":\"测试部门\",\"orderNum\":3,\"leader\":\"若依\",\"phone\":null,\"email\":null,\"status\":\"0\",\"delFlag\":null,\"ancestors\":\"0,100,101\"},\"roles\":[{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"roleId\":2,\"roleName\":\"普通角色\",\"roleKey\":\"common\",\"roleSort\":2,\"dataScope\":\"2\",\"menuCheckStrictly\":null,\"deptCheckStrictly\":null,\"status\":\"0\",\"delFlag\":null,\"remark\":null,\"flag\":false,\"menuIds\":null,\"deptIds\":null,\"admin\":false}],\"roleIds\":[2],\"postIds\":[2],\"roleId\":null,\"admin\":false}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 15:13:25');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747884944415571970, '疫苗类型，存储疫苗的类型信息', 1, 'com.ym.vaccine.controller.YmVaccineTypeController.add()', 'POST', 1, 'admin', '研发部门', '/vaccine/vaccineType', '0:0:0:0:0:0:0:1', '内网IP', '{\"typeId\":null,\"typeName\":null}', '', 1, '\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'type_id\' at row 1\n### The error may exist in com/ym/vaccine/mapper/YmVaccineTypeMapper.java (best guess)\n### The error may involve com.ym.vaccine.mapper.YmVaccineTypeMapper.insert-Inline\n### The error occurred while setting parameters\n### SQL: INSERT INTO ym_vaccine_type  ( type_id )  VALUES (  ?  )\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'type_id\' at row 1\n; Data truncation: Out of range value for column \'type_id\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'type_id\' at row 1', '2024-01-18 15:33:40');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747885017501319169, '疫苗类型，存储疫苗的类型信息', 1, 'com.ym.vaccine.controller.YmVaccineTypeController.add()', 'POST', 1, 'admin', '研发部门', '/vaccine/vaccineType', '0:0:0:0:0:0:0:1', '内网IP', '{\"typeId\":37,\"typeName\":\"测试疫苗类型\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 15:33:57');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747885216005144577, '疫苗类型，存储疫苗的类型信息', 3, 'com.ym.vaccine.controller.YmVaccineTypeController.remove()', 'DELETE', 1, 'admin', '研发部门', '/vaccine/vaccineType/37', '0:0:0:0:0:0:0:1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 15:34:44');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747885316848795649, '疫苗类型，存储疫苗的类型信息', 1, 'com.ym.vaccine.controller.YmVaccineTypeController.add()', 'POST', 1, 'admin', '研发部门', '/vaccine/vaccineType', '0:0:0:0:0:0:0:1', '内网IP', '{\"typeId\":37,\"typeName\":\"测试疫苗类型\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 15:35:08');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747885391180251137, '疫苗类型，存储疫苗的类型信息', 2, 'com.ym.vaccine.controller.YmVaccineTypeController.edit()', 'PUT', 1, 'admin', '研发部门', '/vaccine/vaccineType', '0:0:0:0:0:0:0:1', '内网IP', '{\"typeId\":37,\"typeName\":\"测试疫苗类型3737373\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 15:35:26');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747885436017360897, '疫苗类型，存储疫苗的类型信息', 3, 'com.ym.vaccine.controller.YmVaccineTypeController.remove()', 'DELETE', 1, 'admin', '研发部门', '/vaccine/vaccineType/37', '0:0:0:0:0:0:0:1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 15:35:37');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747886337671086081, '代码生成', 6, 'com.ym.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '0:0:0:0:0:0:0:1', '内网IP', '\"ym_vaccine,ym_appointment,ym_vaccination_record\"', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 15:39:12');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747886689371865090, '代码生成', 2, 'com.ym.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:40:35\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":6},\"tableId\":\"1747886335351635969\",\"tableName\":\"ym_appointment\",\"tableComment\":\"预约表，存储用户预约信息\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"YmAppointment\",\"tplCategory\":\"crud\",\"packageName\":\"com.ym.vaccine\",\"moduleName\":\"vaccine\",\"businessName\":\"appointment\",\"functionName\":\"疫苗预约，存储用户预约信息\",\"functionAuthor\":\"ym\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2024-01-18 15:39:11\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:40:35\",\"columnId\":\"1747886335720734722\",\"tableId\":\"1747886335351635969\",\"columnName\":\"appointment_ID\",\"columnComment\":\"\",\"columnType\":\"int\",\"javaType\":\"Long\",\"javaField\":\"appointmentId\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"capJavaField\":\"AppointmentId\",\"increment\":true,\"query\":false,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"list\":true,\"pk\":true,\"edit\":true,\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-18 15:39:11\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:40:35\",\"columnId\":\"1747886335729123330\",\"tableId\":\"1747886335351635969\",\"columnName\":\"user_id\",\"columnComment\":\"\",\"columnType\":\"bigint\",\"javaType\":\"Long\",\"javaField\":\"userId\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"capJavaField\":\"UserId\",\"increment\":false,\"query\":true,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"list\":true,\"pk\":false,\"edit\":true,\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-18 15:39:11\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:40:35\",\"columnId\":\"1747886335737511938\",\"tableId\":\"1747886335351635969\",\"columnName\":\"vaccine_id\",\"columnComment\":\"\",\"co', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 15:40:36');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747886832045309954, '代码生成', 2, 'com.ym.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:41:09\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":7},\"tableId\":\"1747886336198885378\",\"tableName\":\"ym_vaccination_record\",\"tableComment\":\"接种记录表，存储用户接种记录\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"YmVaccinationRecord\",\"tplCategory\":\"crud\",\"packageName\":\"com.ym.vaccine\",\"moduleName\":\"vaccine\",\"businessName\":\"vaccinationRecord\",\"functionName\":\"接种记录，存储用户接种记录\",\"functionAuthor\":\"ym\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2024-01-18 15:39:11\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:41:09\",\"columnId\":\"1747886336404406274\",\"tableId\":\"1747886336198885378\",\"columnName\":\"record_id\",\"columnComment\":\"记录id\",\"columnType\":\"int\",\"javaType\":\"Long\",\"javaField\":\"recordId\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"capJavaField\":\"RecordId\",\"increment\":true,\"query\":false,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"list\":true,\"pk\":true,\"edit\":true,\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-18 15:39:11\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:41:09\",\"columnId\":\"1747886336412794881\",\"tableId\":\"1747886336198885378\",\"columnName\":\"user_id\",\"columnComment\":\"用户id\",\"columnType\":\"bigint\",\"javaType\":\"Long\",\"javaField\":\"userId\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"capJavaField\":\"UserId\",\"increment\":false,\"query\":true,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"list\":true,\"pk\":false,\"edit\":true,\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-18 15:39:11\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:41:09\",\"columnId\":\"1747886336416989185\",\"tableId\":\"1747886336198885378\",\"columnName\":\"vaccine_id\",\"columnC', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 15:41:10');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747887033581617153, '代码生成', 2, 'com.ym.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:41:57\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":5},\"tableId\":\"1747886336819642369\",\"tableName\":\"ym_vaccine\",\"tableComment\":\"疫苗表，存储疫苗信息\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"YmVaccine\",\"tplCategory\":\"crud\",\"packageName\":\"com.ym.vaccine\",\"moduleName\":\"vaccine\",\"businessName\":\"vaccine\",\"functionName\":\"疫苗，存储疫苗信息\",\"functionAuthor\":\"ym\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2024-01-18 15:39:12\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:41:57\",\"columnId\":\"1747886337134215170\",\"tableId\":\"1747886336819642369\",\"columnName\":\"vaccine_id\",\"columnComment\":\"疫苗id\",\"columnType\":\"bigint\",\"javaType\":\"Long\",\"javaField\":\"vaccineId\",\"isPk\":\"1\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"capJavaField\":\"VaccineId\",\"increment\":false,\"query\":false,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"list\":true,\"pk\":true,\"edit\":true,\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-18 15:39:12\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:41:57\",\"columnId\":\"1747886337138409473\",\"tableId\":\"1747886336819642369\",\"columnName\":\"vaccine_name\",\"columnComment\":\"疫苗名称\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"vaccineName\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"capJavaField\":\"VaccineName\",\"increment\":false,\"query\":true,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"list\":true,\"pk\":false,\"edit\":true,\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-18 15:39:12\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:41:57\",\"columnId\":\"1747886337142603778\",\"tableId\":\"1747886336819642369\",\"columnName\":\"type_id\",\"columnComment\":\"疫', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 15:41:58');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747887121229987842, '代码生成', 8, 'com.ym.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '0:0:0:0:0:0:0:1', '内网IP', '{\"tables\":\"ym_appointment,ym_vaccination_record,ym_vaccine\"}', '', 0, '', '2024-01-18 15:42:19');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747890321718820866, '代码生成', 2, 'com.ym.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:55:01\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"5\"},\"tableId\":\"1747565696392728577\",\"tableName\":\"ym_manufacturer\",\"tableComment\":\"疫苗厂家表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"YmManufacturer\",\"tplCategory\":\"crud\",\"packageName\":\"com.ym.vaccine\",\"moduleName\":\"vaccine\",\"businessName\":\"manufacturer\",\"functionName\":\"疫苗厂家\",\"functionAuthor\":\"ym\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2024-01-17 18:25:05\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:55:01\",\"columnId\":\"1747565696740855809\",\"tableId\":\"1747565696392728577\",\"columnName\":\"manufacturer_id\",\"columnComment\":\"\",\"columnType\":\"bigint\",\"javaType\":\"Long\",\"javaField\":\"manufacturerId\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"capJavaField\":\"ManufacturerId\",\"pk\":true,\"edit\":true,\"list\":true,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"increment\":true,\"query\":false,\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-17 18:25:05\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:55:01\",\"columnId\":\"1747565696749244418\",\"tableId\":\"1747565696392728577\",\"columnName\":\"facturer_name\",\"columnComment\":\"\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"facturerName\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"capJavaField\":\"FacturerName\",\"pk\":false,\"edit\":true,\"list\":true,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"increment\":false,\"query\":true,\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-17 18:25:05\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:55:01\",\"columnId\":\"1747565696753438721\",\"tableId\":\"1747565696392728577\",\"columnName\":\"address\",\"c', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 15:55:02');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747890401058275329, '代码生成', 2, 'com.ym.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:55:20\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"5\"},\"tableId\":\"1747565697063817217\",\"tableName\":\"ym_vaccine_type\",\"tableComment\":\"疫苗类型表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"YmVaccineType\",\"tplCategory\":\"crud\",\"packageName\":\"com.ym.vaccine\",\"moduleName\":\"vaccine\",\"businessName\":\"vaccineType\",\"functionName\":\"疫苗类型\",\"functionAuthor\":\"ym\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2024-01-17 18:25:05\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:55:20\",\"columnId\":\"1747565697386778625\",\"tableId\":\"1747565697063817217\",\"columnName\":\"type_id\",\"columnComment\":\"类型id\",\"columnType\":\"int\",\"javaType\":\"Long\",\"javaField\":\"typeId\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"capJavaField\":\"TypeId\",\"pk\":true,\"edit\":true,\"list\":true,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"increment\":true,\"query\":false,\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-17 18:25:05\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:55:20\",\"columnId\":\"1747565697390972929\",\"tableId\":\"1747565697063817217\",\"columnName\":\"type_name\",\"columnComment\":\"疫苗类型名称\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"typeName\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"capJavaField\":\"TypeName\",\"pk\":false,\"edit\":true,\"list\":true,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"increment\":false,\"query\":true,\"required\":true}],\"options\":\"{\\\"treeCode\\\":null,\\\"treeName\\\":null,\\\"treeParentCode\\\":null,\\\"parentMenuId\\\":\\\"5\\\"}\",\"remark\":null,\"treeCode\":null,\"treeParentCode\":null,\"treeName\":null,\"menuIds\":null,\"parentMenuId\":\"5\",\"parentMenuName\":null,\"sub\":fa', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 15:55:21');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747890499934797825, '代码生成', 2, 'com.ym.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:55:43\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"\"},\"tableId\":\"1747886335351635969\",\"tableName\":\"ym_appointment\",\"tableComment\":\"预约表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"YmAppointment\",\"tplCategory\":\"crud\",\"packageName\":\"com.ym.vaccine\",\"moduleName\":\"vaccine\",\"businessName\":\"appointment\",\"functionName\":\"疫苗预约\",\"functionAuthor\":\"ym\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2024-01-18 15:39:11\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:55:43\",\"columnId\":\"1747886335720734722\",\"tableId\":\"1747886335351635969\",\"columnName\":\"appointment_ID\",\"columnComment\":\"\",\"columnType\":\"int\",\"javaType\":\"Long\",\"javaField\":\"appointmentId\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"capJavaField\":\"AppointmentId\",\"pk\":true,\"edit\":true,\"list\":true,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"increment\":true,\"query\":false,\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-18 15:39:11\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:55:43\",\"columnId\":\"1747886335729123330\",\"tableId\":\"1747886335351635969\",\"columnName\":\"user_id\",\"columnComment\":\"\",\"columnType\":\"bigint\",\"javaType\":\"Long\",\"javaField\":\"userId\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"capJavaField\":\"UserId\",\"pk\":false,\"edit\":true,\"list\":true,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"increment\":false,\"query\":true,\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-18 15:39:11\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:55:43\",\"columnId\":\"1747886335737511938\",\"tableId\":\"1747886335351635969\",\"columnName\":\"vaccine_id\",\"columnComment\":\"\",\"columnType\":\"bigint', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 15:55:44');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747890604133892098, '代码生成', 2, 'com.ym.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:56:08\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"\"},\"tableId\":\"1747886336198885378\",\"tableName\":\"ym_vaccination_record\",\"tableComment\":\"接种记录表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"YmVaccinationRecord\",\"tplCategory\":\"crud\",\"packageName\":\"com.ym.vaccine\",\"moduleName\":\"vaccine\",\"businessName\":\"vaccinationRecord\",\"functionName\":\"接种记录\",\"functionAuthor\":\"ym\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2024-01-18 15:39:11\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:56:08\",\"columnId\":\"1747886336404406274\",\"tableId\":\"1747886336198885378\",\"columnName\":\"record_id\",\"columnComment\":\"记录id\",\"columnType\":\"int\",\"javaType\":\"Long\",\"javaField\":\"recordId\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"capJavaField\":\"RecordId\",\"pk\":true,\"edit\":true,\"list\":true,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"increment\":true,\"query\":false,\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-18 15:39:11\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:56:08\",\"columnId\":\"1747886336412794881\",\"tableId\":\"1747886336198885378\",\"columnName\":\"user_id\",\"columnComment\":\"用户id\",\"columnType\":\"bigint\",\"javaType\":\"Long\",\"javaField\":\"userId\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"capJavaField\":\"UserId\",\"pk\":false,\"edit\":true,\"list\":true,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"increment\":false,\"query\":true,\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-18 15:39:11\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:56:08\",\"columnId\":\"1747886336416989185\",\"tableId\":\"1747886336198885378\",\"columnName\":\"vaccine_id\",\"columnComment\":\"疫苗id\",\"c', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 15:56:09');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747890691757096961, '代码生成', 2, 'com.ym.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:56:29\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"5\"},\"tableId\":\"1747886336819642369\",\"tableName\":\"ym_vaccine\",\"tableComment\":\"疫苗信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"YmVaccine\",\"tplCategory\":\"crud\",\"packageName\":\"com.ym.vaccine\",\"moduleName\":\"vaccine\",\"businessName\":\"vaccine\",\"functionName\":\"存储疫苗信息\",\"functionAuthor\":\"ym\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2024-01-18 15:39:12\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:56:29\",\"columnId\":\"1747886337134215170\",\"tableId\":\"1747886336819642369\",\"columnName\":\"vaccine_id\",\"columnComment\":\"疫苗id\",\"columnType\":\"bigint\",\"javaType\":\"Long\",\"javaField\":\"vaccineId\",\"isPk\":\"1\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"capJavaField\":\"VaccineId\",\"pk\":true,\"edit\":true,\"list\":true,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"increment\":false,\"query\":false,\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-18 15:39:12\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:56:29\",\"columnId\":\"1747886337138409473\",\"tableId\":\"1747886336819642369\",\"columnName\":\"vaccine_name\",\"columnComment\":\"疫苗名称\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"vaccineName\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"capJavaField\":\"VaccineName\",\"pk\":false,\"edit\":true,\"list\":true,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"increment\":false,\"query\":true,\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-18 15:39:12\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 15:56:29\",\"columnId\":\"1747886337142603778\",\"tableId\":\"1747886336819642369\",\"columnName\":\"type_id\",\"columnComment\":\"疫苗类型id\"', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 15:56:30');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747890704709107714, '代码生成', 8, 'com.ym.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '0:0:0:0:0:0:0:1', '内网IP', '{\"tables\":\"ym_manufacturer,ym_vaccine_type,ym_appointment,ym_vaccination_record,ym_vaccine\"}', '', 0, '', '2024-01-18 15:56:33');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747892330874322945, '疫苗，存储疫苗信息', 5, 'com.ym.vaccine.controller.YmVaccineController.export()', 'POST', 1, 'admin', '研发部门', '/vaccine/vaccine/export', '0:0:0:0:0:0:0:1', '内网IP', '{\"vaccineId\":null,\"vaccineName\":null,\"typeId\":null,\"manufacturerId\":null,\"description\":null}', '', 0, '', '2024-01-18 16:03:01');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747904815538946050, '角色管理', 1, 'com.ym.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', '研发部门', '/system/role', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-01-18 16:52:36\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 16:52:36\",\"roleId\":\"1747904814486175745\",\"roleName\":\"医生\",\"roleKey\":\"doctor\",\"roleSort\":2,\"dataScope\":null,\"menuCheckStrictly\":true,\"deptCheckStrictly\":true,\"status\":\"0\",\"delFlag\":null,\"remark\":null,\"flag\":false,\"menuIds\":[5,121,1606,1607,1608,1609,1610,122,1611,1612,1613,1614,1615,123,1616,1617,1618,1619,1620,124,6,1621,1622,1623,1624,1625,7,1626,1627,1628,1629,1630],\"deptIds\":[],\"admin\":false}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 16:52:37');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747904867523149825, '角色管理', 2, 'com.ym.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-01-18 16:52:37\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 16:52:49\",\"roleId\":\"1747904814486175745\",\"roleName\":\"医生\",\"roleKey\":\"doctor\",\"roleSort\":3,\"dataScope\":\"1\",\"menuCheckStrictly\":true,\"deptCheckStrictly\":true,\"status\":\"0\",\"delFlag\":\"0\",\"remark\":null,\"flag\":false,\"menuIds\":[5,121,1606,1607,1608,1609,1610,122,1611,1612,1613,1614,1615,123,1616,1617,1618,1619,1620,124,6,1621,1622,1623,1624,1625,7,1626,1627,1628,1629,1630],\"deptIds\":null,\"admin\":false}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 16:52:50');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747905182704123906, '角色管理', 1, 'com.ym.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', '研发部门', '/system/role', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-01-18 16:54:04\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 16:54:04\",\"roleId\":\"1747905182179835906\",\"roleName\":\"接种者\",\"roleKey\":\"person\",\"roleSort\":4,\"dataScope\":null,\"menuCheckStrictly\":true,\"deptCheckStrictly\":true,\"status\":\"0\",\"delFlag\":null,\"remark\":null,\"flag\":false,\"menuIds\":[5,121,122,6,7,1606,1611,1621,1622,1623,1626,1627,1628],\"deptIds\":[],\"admin\":false}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 16:54:05');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747905646388625410, '菜单管理', 3, 'com.ym.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/4', '0:0:0:0:0:0:0:1', '内网IP', '{}', '{\"code\":601,\"msg\":\"菜单已分配,不允许删除\",\"data\":null}', 0, '', '2024-01-18 16:55:55');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747905794225258498, '角色管理', 2, 'com.ym.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-01-17 17:51:52\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-18 16:56:30\",\"roleId\":2,\"roleName\":\"普通角色\",\"roleKey\":\"common\",\"roleSort\":2,\"dataScope\":\"2\",\"menuCheckStrictly\":true,\"deptCheckStrictly\":true,\"status\":\"0\",\"delFlag\":\"0\",\"remark\":\"普通角色\",\"flag\":false,\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,1050,2,109,1046,1047,1048,113,112,3,114,115,1055,1056,1058,1057,1059,1060],\"deptIds\":null,\"admin\":false}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 16:56:31');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747905837283983361, '菜单管理', 3, 'com.ym.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/4', '0:0:0:0:0:0:0:1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-18 16:56:41');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1747906048005816322, '用户头像', 2, 'com.ym.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/avatar', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '文件存储服务类型无法找到!', '2024-01-18 16:57:31');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750391425400664066, '对象存储配置', 2, 'com.ym.web.controller.system.SysOssConfigController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/oss/config', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"ossConfigId\":1,\"configKey\":\"minio\",\"accessKey\":\"CS6IJBFTeDPmeFErdUPf\",\"secretKey\":\"NOa5XcDdYilpZ5C4pVKA5LZ3abh5F6CLu4KolCBs\",\"bucketName\":\"ym2024\",\"prefix\":\"\",\"endpoint\":\"43.142.255.148:33639\",\"domain\":\"\",\"isHttps\":\"N\",\"status\":\"0\",\"region\":\"\",\"ext1\":\"\",\"remark\":null,\"accessPolicy\":\"1\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-25 13:33:31');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750391516681302017, 'OSS对象存储', 1, 'com.ym.web.controller.system.SysOssController.upload()', 'POST', 1, 'admin', '研发部门', '/system/oss/upload', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '创建Bucket失败, 请核对配置信息:[S3 API Requests must be made to API port. (Service: Amazon S3; Status Code: 400; Error Code: InvalidArgument; Request ID: 0; S3 Extended Request ID: null; Proxy: null)]', '2024-01-25 13:33:53');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750391618992959490, 'OSS对象存储', 1, 'com.ym.web.controller.system.SysOssController.upload()', 'POST', 1, 'admin', '研发部门', '/system/oss/upload', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '创建Bucket失败, 请核对配置信息:[S3 API Requests must be made to API port. (Service: Amazon S3; Status Code: 400; Error Code: InvalidArgument; Request ID: 0; S3 Extended Request ID: null; Proxy: null)]', '2024-01-25 13:34:17');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750391927572099074, '对象存储配置', 2, 'com.ym.web.controller.system.SysOssConfigController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/oss/config', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"ossConfigId\":1,\"configKey\":\"minio\",\"accessKey\":\"YRRJT6VjatVIp3L5koPx\",\"secretKey\":\"HORzK29cuHgOPOYaHk7w1cqkNcaUW4JvlAv6ucX9\",\"bucketName\":\"ym2024\",\"prefix\":\"\",\"endpoint\":\"43.142.255.148:33639\",\"domain\":\"\",\"isHttps\":\"N\",\"status\":\"0\",\"region\":\"\",\"ext1\":\"\",\"remark\":\"\",\"accessPolicy\":\"1\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-25 13:35:31');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750391975143895041, 'OSS对象存储', 1, 'com.ym.web.controller.system.SysOssController.upload()', 'POST', 1, 'admin', '研发部门', '/system/oss/upload', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '创建Bucket失败, 请核对配置信息:[S3 API Requests must be made to API port. (Service: Amazon S3; Status Code: 400; Error Code: InvalidArgument; Request ID: 0; S3 Extended Request ID: null; Proxy: null)]', '2024-01-25 13:35:42');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750392052809822210, 'OSS对象存储', 1, 'com.ym.web.controller.system.SysOssController.upload()', 'POST', 1, 'admin', '研发部门', '/system/oss/upload', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '创建Bucket失败, 请核对配置信息:[S3 API Requests must be made to API port. (Service: Amazon S3; Status Code: 400; Error Code: InvalidArgument; Request ID: 0; S3 Extended Request ID: null; Proxy: null)]', '2024-01-25 13:36:01');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750392235824082946, 'OSS对象存储', 1, 'com.ym.web.controller.system.SysOssController.upload()', 'POST', 1, 'admin', '研发部门', '/system/oss/upload', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '创建Bucket失败, 请核对配置信息:[S3 API Requests must be made to API port. (Service: Amazon S3; Status Code: 400; Error Code: InvalidArgument; Request ID: 0; S3 Extended Request ID: null; Proxy: null)]', '2024-01-25 13:36:44');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750393075146256386, 'OSS对象存储', 1, 'com.ym.web.controller.system.SysOssController.upload()', 'POST', 1, 'admin', '研发部门', '/system/oss/upload', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '创建Bucket失败, 请核对配置信息:[S3 API Requests must be made to API port. (Service: Amazon S3; Status Code: 400; Error Code: InvalidArgument; Request ID: 0; S3 Extended Request ID: null; Proxy: null)]', '2024-01-25 13:40:05');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750393372832788481, '对象存储配置', 2, 'com.ym.web.controller.system.SysOssConfigController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/oss/config', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"ossConfigId\":1,\"configKey\":\"minio\",\"accessKey\":\"YRRJT6VjatVIp3L5koPx\",\"secretKey\":\"HORzK29cuHgOPOYaHk7w1cqkNcaUW4JvlAv6ucX9\",\"bucketName\":\"ym2024\",\"prefix\":\"\",\"endpoint\":\"43.142.255.148:9000\",\"domain\":\"\",\"isHttps\":\"N\",\"status\":\"0\",\"region\":\"\",\"ext1\":\"\",\"remark\":\"\",\"accessPolicy\":\"1\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-25 13:41:15');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750393410040459265, 'OSS对象存储', 1, 'com.ym.web.controller.system.SysOssController.upload()', 'POST', 1, 'admin', '研发部门', '/system/oss/upload', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '文件存储服务类型无法找到!', '2024-01-25 13:41:24');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750393436728815617, 'OSS对象存储', 1, 'com.ym.web.controller.system.SysOssController.upload()', 'POST', 1, 'admin', '研发部门', '/system/oss/upload', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '文件存储服务类型无法找到!', '2024-01-25 13:41:31');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750393478877376514, '对象存储配置', 2, 'com.ym.web.controller.system.SysOssConfigController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/oss/config', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"ossConfigId\":1,\"configKey\":\"minio\",\"accessKey\":\"YRRJT6VjatVIp3L5koPx\",\"secretKey\":\"HORzK29cuHgOPOYaHk7w1cqkNcaUW4JvlAv6ucX9\",\"bucketName\":\"ym2024\",\"prefix\":\"\",\"endpoint\":\"43.142.255.148:9001\",\"domain\":\"\",\"isHttps\":\"N\",\"status\":\"0\",\"region\":\"\",\"ext1\":\"\",\"remark\":\"\",\"accessPolicy\":\"1\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-25 13:41:41');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750393507826462722, 'OSS对象存储', 1, 'com.ym.web.controller.system.SysOssController.upload()', 'POST', 1, 'admin', '研发部门', '/system/oss/upload', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '文件存储服务类型无法找到!', '2024-01-25 13:41:48');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750393682397589505, 'OSS对象存储', 1, 'com.ym.web.controller.system.SysOssController.upload()', 'POST', 1, 'admin', '研发部门', '/system/oss/upload', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '文件存储服务类型无法找到!', '2024-01-25 13:42:29');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750393775645356033, '对象存储配置', 2, 'com.ym.web.controller.system.SysOssConfigController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/oss/config', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"ossConfigId\":1,\"configKey\":\"minio\",\"accessKey\":\"YRRJT6VjatVIp3L5koPx\",\"secretKey\":\"HORzK29cuHgOPOYaHk7w1cqkNcaUW4JvlAv6ucX9\",\"bucketName\":\"ym2024\",\"prefix\":\"\",\"endpoint\":\"43.142.255.148:9000\",\"domain\":\"\",\"isHttps\":\"N\",\"status\":\"0\",\"region\":\"\",\"ext1\":\"\",\"remark\":\"\",\"accessPolicy\":\"1\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-25 13:42:52');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750393804808351746, 'OSS对象存储', 1, 'com.ym.web.controller.system.SysOssController.upload()', 'POST', 1, 'admin', '研发部门', '/system/oss/upload', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '文件存储服务类型无法找到!', '2024-01-25 13:42:58');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750393840082448385, 'OSS对象存储', 1, 'com.ym.web.controller.system.SysOssController.upload()', 'POST', 1, 'admin', '研发部门', '/system/oss/upload', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '文件存储服务类型无法找到!', '2024-01-25 13:43:07');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750395399646310402, 'OSS对象存储', 1, 'com.ym.web.controller.system.SysOssController.upload()', 'POST', 1, 'admin', '研发部门', '/system/oss/upload', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '文件存储服务类型无法找到!', '2024-01-25 13:49:19');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750395452750393345, 'OSS对象存储', 1, 'com.ym.web.controller.system.SysOssController.upload()', 'POST', 1, 'admin', '研发部门', '/system/oss/upload', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '文件存储服务类型无法找到!', '2024-01-25 13:49:31');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750396539456811010, '对象存储配置', 2, 'com.ym.web.controller.system.SysOssConfigController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/oss/config', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"ossConfigId\":1,\"configKey\":\"minio\",\"accessKey\":\"YRRJT6VjatVIp3L5koPx\",\"secretKey\":\"HORzK29cuHgOPOYaHk7w1cqkNcaUW4JvlAv6ucX9\",\"bucketName\":\"ym2024\",\"prefix\":\"\",\"endpoint\":\"43.142.255.148:33639\",\"domain\":\"\",\"isHttps\":\"N\",\"status\":\"0\",\"region\":\"\",\"ext1\":\"\",\"remark\":\"\",\"accessPolicy\":\"1\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-25 13:53:50');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750396566828838913, 'OSS对象存储', 1, 'com.ym.web.controller.system.SysOssController.upload()', 'POST', 1, 'admin', '研发部门', '/system/oss/upload', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '文件存储服务类型无法找到!', '2024-01-25 13:53:57');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750397242216640514, '对象存储配置', 2, 'com.ym.web.controller.system.SysOssConfigController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/oss/config', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"ossConfigId\":1,\"configKey\":\"minio\",\"accessKey\":\"YRRJT6VjatVIp3L5koPx\",\"secretKey\":\"HORzK29cuHgOPOYaHk7w1cqkNcaUW4JvlAv6ucX9\",\"bucketName\":\"ym2024\",\"prefix\":\"\",\"endpoint\":\"http://43.142.255.148:33639\",\"domain\":\"\",\"isHttps\":\"N\",\"status\":\"0\",\"region\":\"\",\"ext1\":\"\",\"remark\":\"\",\"accessPolicy\":\"1\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-25 13:56:38');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750397288563699714, 'OSS对象存储', 1, 'com.ym.web.controller.system.SysOssController.upload()', 'POST', 1, 'admin', '研发部门', '/system/oss/upload', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '文件存储服务类型无法找到!', '2024-01-25 13:56:49');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750397522396147714, '对象存储配置', 2, 'com.ym.web.controller.system.SysOssConfigController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/oss/config', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"ossConfigId\":1,\"configKey\":\"minio\",\"accessKey\":\"zSuMCn1uIFHQ1Y8Qvgre\",\"secretKey\":\"IqWgmFaAI6VN8P4mzrdZKvWtyUgm6vkIRY0Othcz\",\"bucketName\":\"ym2024\",\"prefix\":\"\",\"endpoint\":\"http://43.142.255.148:33639\",\"domain\":\"\",\"isHttps\":\"N\",\"status\":\"0\",\"region\":\"\",\"ext1\":\"\",\"remark\":\"\",\"accessPolicy\":\"1\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-25 13:57:45');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750397699391582209, '对象存储配置', 2, 'com.ym.web.controller.system.SysOssConfigController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/oss/config', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"ossConfigId\":1,\"configKey\":\"minio\",\"accessKey\":\"zSuMCn1uIFHQ1Y8Qvgre\",\"secretKey\":\"IqWgmFaAI6VN8P4mzrdZKvWtyUgm6vkIRY0Othcz\",\"bucketName\":\"ym2024\",\"prefix\":\"\",\"endpoint\":\"43.142.255.148:33639\",\"domain\":\"\",\"isHttps\":\"N\",\"status\":\"0\",\"region\":\"\",\"ext1\":\"\",\"remark\":\"\",\"accessPolicy\":\"1\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-25 13:58:27');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750397729674457089, 'OSS对象存储', 1, 'com.ym.web.controller.system.SysOssController.upload()', 'POST', 1, 'admin', '研发部门', '/system/oss/upload', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '文件存储服务类型无法找到!', '2024-01-25 13:58:34');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750398572964442114, '对象存储配置', 2, 'com.ym.web.controller.system.SysOssConfigController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/oss/config', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"ossConfigId\":1,\"configKey\":\"minio\",\"accessKey\":\"zSuMCn1uIFHQ1Y8Qvgre\",\"secretKey\":\"IqWgmFaAI6VN8P4mzrdZKvWtyUgm6vkIRY0Othcz\",\"bucketName\":\"ym-24\",\"prefix\":\"\",\"endpoint\":\"43.142.255.148:33639\",\"domain\":\"\",\"isHttps\":\"N\",\"status\":\"0\",\"region\":\"\",\"ext1\":\"\",\"remark\":\"\",\"accessPolicy\":\"1\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-25 14:01:55');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750398599443083266, 'OSS对象存储', 1, 'com.ym.web.controller.system.SysOssController.upload()', 'POST', 1, 'admin', '研发部门', '/system/oss/upload', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '文件存储服务类型无法找到!', '2024-01-25 14:02:02');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750399659167543298, '对象存储配置', 2, 'com.ym.web.controller.system.SysOssConfigController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/oss/config', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"ossConfigId\":1,\"configKey\":\"minio\",\"accessKey\":\"zSuMCn1uIFHQ1Y8Qvgre\",\"secretKey\":\"IqWgmFaAI6VN8P4mzrdZKvWtyUgm6vkIRY0Othcz\",\"bucketName\":\"ym-24\",\"prefix\":\"\",\"endpoint\":\"43.142.255.148:9000\",\"domain\":\"\",\"isHttps\":\"N\",\"status\":\"0\",\"region\":\"\",\"ext1\":\"\",\"remark\":\"\",\"accessPolicy\":\"1\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-25 14:06:14');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750399684895404034, 'OSS对象存储', 1, 'com.ym.web.controller.system.SysOssController.upload()', 'POST', 1, 'admin', '研发部门', '/system/oss/upload', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '文件存储服务类型无法找到!', '2024-01-25 14:06:20');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750400884139192322, '对象存储配置', 2, 'com.ym.web.controller.system.SysOssConfigController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/oss/config', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"ossConfigId\":1,\"configKey\":\"minio\",\"accessKey\":\"zSuMCn1uIFHQ1Y8Qvgre\",\"secretKey\":\"IqWgmFaAI6VN8P4mzrdZKvWtyUgm6vkIRY0Othcz\",\"bucketName\":\"ym-24\",\"prefix\":\"\",\"endpoint\":\"43.142.255.148:33639\",\"domain\":\"\",\"isHttps\":\"N\",\"status\":\"0\",\"region\":\"\",\"ext1\":\"\",\"remark\":\"\",\"accessPolicy\":\"1\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-25 14:11:06');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750400995116281857, 'OSS对象存储', 1, 'com.ym.web.controller.system.SysOssController.upload()', 'POST', 1, 'admin', '研发部门', '/system/oss/upload', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '文件存储服务类型无法找到!', '2024-01-25 14:11:33');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750401174817042434, '对象存储配置', 2, 'com.ym.web.controller.system.SysOssConfigController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/oss/config', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"ossConfigId\":1,\"configKey\":\"minio\",\"accessKey\":\"zSuMCn1uIFHQ1Y8Qvgre\",\"secretKey\":\"IqWgmFaAI6VN8P4mzrdZKvWtyUgm6vkIRY0Othcz\",\"bucketName\":\"ym2024\",\"prefix\":\"\",\"endpoint\":\"43.142.255.148:9000\",\"domain\":\"\",\"isHttps\":\"N\",\"status\":\"0\",\"region\":\"\",\"ext1\":\"\",\"remark\":\"\",\"accessPolicy\":\"1\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-25 14:12:16');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750401205292855297, 'OSS对象存储', 1, 'com.ym.web.controller.system.SysOssController.upload()', 'POST', 1, 'admin', '研发部门', '/system/oss/upload', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '文件存储服务类型无法找到!', '2024-01-25 14:12:23');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750402125942583298, 'OSS对象存储', 1, 'com.ym.web.controller.system.SysOssController.upload()', 'POST', 1, 'admin', '研发部门', '/system/oss/upload', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '文件存储服务类型无法找到!', '2024-01-25 14:16:02');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750402213234438145, '对象存储状态修改', 2, 'com.ym.web.controller.system.SysOssConfigController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/system/oss/config/changeStatus', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"ossConfigId\":1,\"configKey\":\"minio\",\"accessKey\":null,\"secretKey\":null,\"bucketName\":null,\"prefix\":null,\"endpoint\":null,\"domain\":null,\"isHttps\":null,\"status\":\"0\",\"region\":null,\"ext1\":null,\"remark\":null,\"accessPolicy\":null}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-25 14:16:23');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750402246415577089, 'OSS对象存储', 1, 'com.ym.web.controller.system.SysOssController.upload()', 'POST', 1, 'admin', '研发部门', '/system/oss/upload', '0:0:0:0:0:0:0:1', '内网IP', '', '{\"code\":200,\"msg\":\"操作成功\",\"data\":{\"ossId\":\"1750402245975175169\",\"url\":\"http://43.142.255.148:9000/ym2024/2024/01/25/8e36f518c69e407f8d51467a33dd410e.png\",\"fileName\":\"概览图.png\"}}', 0, '', '2024-01-25 14:16:31');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750402981509296129, '参数管理', 2, 'com.ym.web.controller.system.SysConfigController.updateByKey()', 'PUT', 1, 'admin', '研发部门', '/system/config/updateByKey', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2024-01-25 14:19:26\",\"configId\":null,\"configName\":null,\"configKey\":\"sys.oss.previewListResource\",\"configValue\":\"false\",\"configType\":null,\"remark\":null}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-25 14:19:26');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750402995597963265, '参数管理', 2, 'com.ym.web.controller.system.SysConfigController.updateByKey()', 'PUT', 1, 'admin', '研发部门', '/system/config/updateByKey', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2024-01-25 14:19:29\",\"configId\":null,\"configName\":null,\"configKey\":\"sys.oss.previewListResource\",\"configValue\":\"true\",\"configType\":null,\"remark\":null}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-25 14:19:30');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750404460265639937, 'OSS对象存储', 1, 'com.ym.web.controller.system.SysOssController.upload()', 'POST', 1, 'admin', '研发部门', '/system/oss/upload', '0:0:0:0:0:0:0:1', '内网IP', '', '{\"code\":200,\"msg\":\"操作成功\",\"data\":{\"ossId\":\"1750404459695214594\",\"url\":\"http://43.142.255.148:9000/ym2024/2024/01/25/4708bc310b994a22baa66f1da9750d68.jpg\",\"fileName\":\"login-background.jpg\"}}', 0, '', '2024-01-25 14:25:19');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750404574241656834, '用户头像', 2, 'com.ym.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/avatar', '0:0:0:0:0:0:0:1', '内网IP', '', '{\"code\":200,\"msg\":\"操作成功\",\"data\":{\"imgUrl\":\"http://43.142.255.148:9000/ym2024/2024/01/25/376fdcb664db4dccb054e538a418db8f.png\"}}', 0, '', '2024-01-25 14:25:46');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750404704185389057, 'OSS对象存储', 1, 'com.ym.web.controller.system.SysOssController.upload()', 'POST', 1, 'admin', '研发部门', '/system/oss/upload', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '文件存储服务类型无法找到!', '2024-01-25 14:26:17');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750404774750359554, '用户头像', 2, 'com.ym.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/avatar', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '文件存储服务类型无法找到!', '2024-01-25 14:26:34');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750404782656622593, '用户头像', 2, 'com.ym.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/avatar', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '文件存储服务类型无法找到!', '2024-01-25 14:26:36');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750404788092440578, '用户头像', 2, 'com.ym.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/avatar', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '文件存储服务类型无法找到!', '2024-01-25 14:26:37');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750404792471293954, '用户头像', 2, 'com.ym.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/avatar', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '文件存储服务类型无法找到!', '2024-01-25 14:26:38');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750404801728122881, '用户头像', 2, 'com.ym.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/avatar', '0:0:0:0:0:0:0:1', '内网IP', '', '', 1, '文件存储服务类型无法找到!', '2024-01-25 14:26:40');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750404996805201922, '对象存储配置', 2, 'com.ym.web.controller.system.SysOssConfigController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/oss/config', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"ossConfigId\":5,\"configKey\":\"image\",\"accessKey\":\"zSuMCn1uIFHQ1Y8Qvgre\",\"secretKey\":\"ym123\",\"bucketName\":\"ym\",\"prefix\":\"image\",\"endpoint\":\"127.0.0.1:9000\",\"domain\":\"\",\"isHttps\":\"N\",\"status\":\"1\",\"region\":\"\",\"ext1\":\"\",\"remark\":null,\"accessPolicy\":\"1\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-25 14:27:27');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750405322262220802, '对象存储配置', 2, 'com.ym.web.controller.system.SysOssConfigController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/oss/config', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"ossConfigId\":5,\"configKey\":\"image\",\"accessKey\":\"zSuMCn1uIFHQ1Y8Qvgre\",\"secretKey\":\"IqWgmFaAI6VN8P4mzrdZKvWtyUgm6vkIRY0Othcz\",\"bucketName\":\"ym2024\",\"prefix\":\"image\",\"endpoint\":\"43.142.255.148:9000\",\"domain\":\"\",\"isHttps\":\"N\",\"status\":\"1\",\"region\":\"\",\"ext1\":\"\",\"remark\":\"\",\"accessPolicy\":\"1\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-25 14:28:44');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750405341958672386, '对象存储状态修改', 2, 'com.ym.web.controller.system.SysOssConfigController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/system/oss/config/changeStatus', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"ossConfigId\":5,\"configKey\":\"image\",\"accessKey\":null,\"secretKey\":null,\"bucketName\":null,\"prefix\":null,\"endpoint\":null,\"domain\":null,\"isHttps\":null,\"status\":\"0\",\"region\":null,\"ext1\":null,\"remark\":null,\"accessPolicy\":null}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-25 14:28:49');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750409967449726978, 'OSS对象存储', 1, 'com.ym.web.controller.system.SysOssController.upload()', 'POST', 1, 'admin', '研发部门', '/system/oss/upload', '0:0:0:0:0:0:0:1', '内网IP', '', '{\"code\":200,\"msg\":\"操作成功\",\"data\":{\"ossId\":\"1750409966921244673\",\"url\":\"http://43.142.255.148:9000/ym2024/image/2024/01/25/01f24cb1e44e4ee5b95ecd984b2359c9.png\",\"fileName\":\"app_icon.png\"}}', 0, '', '2024-01-25 14:47:12');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750711194943283202, '疫苗厂家，存储疫苗厂家信息', 1, 'com.ym.vaccine.controller.YmManufacturerController.add()', 'POST', 1, 'admin', '研发部门', '/vaccine/manufacturer', '0:0:0:0:0:0:0:1', '内网IP', '{\"manufacturerId\":\"1750711194540630017\",\"facturerName\":\"3\",\"address\":\"3\",\"description\":\"1\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-26 10:44:10');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750711217223426049, '疫苗厂家，存储疫苗厂家信息', 3, 'com.ym.vaccine.controller.YmManufacturerController.remove()', 'DELETE', 1, 'admin', '研发部门', '/vaccine/manufacturer/1750711194540630017', '0:0:0:0:0:0:0:1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-26 10:44:15');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750711391656140802, '疫苗厂家，存储疫苗厂家信息', 5, 'com.ym.vaccine.controller.YmManufacturerController.export()', 'POST', 1, 'admin', '研发部门', '/vaccine/manufacturer/export', '0:0:0:0:0:0:0:1', '内网IP', '{\"manufacturerId\":null,\"facturerName\":null,\"address\":null,\"description\":null}', '', 0, '', '2024-01-26 10:44:57');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750718293983158273, '疫苗厂家，存储疫苗厂家信息', 1, 'com.ym.vaccine.controller.YmManufacturerController.add()', 'POST', 1, 'admin', '研发部门', '/vaccine/manufacturer', '0:0:0:0:0:0:0:1', '内网IP', '{\"manufacturerId\":\"1750718293668585474\",\"facturerName\":\"武汉生物1\",\"address\":\"湖北省武汉市东湖新技术开发区生物产业基地\",\"description\":\"武汉生物是中国最大的生物制品生产企业之一，产品涵盖多种疫苗。\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-26 11:12:23');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750718310739402754, '疫苗厂家，存储疫苗厂家信息', 3, 'com.ym.vaccine.controller.YmManufacturerController.remove()', 'DELETE', 1, 'admin', '研发部门', '/vaccine/manufacturer/1750718293668585474', '0:0:0:0:0:0:0:1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-26 11:12:27');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750750099780464642, '疫苗厂家，存储疫苗厂家信息', 1, 'com.ym.vaccine.controller.YmManufacturerController.add()', 'POST', 1, 'admin', '研发部门', '/vaccine/manufacturer', '0:0:0:0:0:0:0:1', '内网IP', '{\"manufacturerId\":\"1750750099369422849\",\"facturerName\":\"manufacturerForm\",\"address\":\"manufacturerForm\",\"description\":\"manufacturerFormmanufacturerFormv\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-26 13:18:46');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750750170605481986, '疫苗厂家，存储疫苗厂家信息', 2, 'com.ym.vaccine.controller.YmManufacturerController.edit()', 'PUT', 1, 'admin', '研发部门', '/vaccine/manufacturer', '0:0:0:0:0:0:0:1', '内网IP', '{\"manufacturerId\":\"1750750099369422849\",\"facturerName\":\"manufacturerForm111\",\"address\":\"manufacturerForm111\",\"description\":\"manufacturerFormmanufacturerFormv111\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-26 13:19:03');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1750750193858703362, '疫苗厂家，存储疫苗厂家信息', 3, 'com.ym.vaccine.controller.YmManufacturerController.remove()', 'DELETE', 1, 'admin', '研发部门', '/vaccine/manufacturer/1750750099369422849', '0:0:0:0:0:0:0:1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-26 13:19:08');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751219231441338369, '疫苗类型，存储疫苗的类型信息', 2, 'com.ym.vaccine.controller.YmVaccineTypeController.edit()', 'PUT', 1, 'admin', '研发部门', '/vaccine/vaccineType', '0:0:0:0:0:0:0:1', '内网IP', '{\"typeId\":1,\"typeName\":\"灭活疫苗1\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-27 20:22:56');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751219256045125634, '疫苗类型，存储疫苗的类型信息', 2, 'com.ym.vaccine.controller.YmVaccineTypeController.edit()', 'PUT', 1, 'admin', '研发部门', '/vaccine/vaccineType', '0:0:0:0:0:0:0:1', '内网IP', '{\"typeId\":1,\"typeName\":\"灭活疫苗\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-27 20:23:01');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751220181342142465, '疫苗类型，存储疫苗的类型信息', 1, 'com.ym.vaccine.controller.YmVaccineTypeController.add()', 'POST', 1, 'admin', '研发部门', '/vaccine/vaccineType', '0:0:0:0:0:0:0:1', '内网IP', '{\"typeId\":null,\"typeName\":\"测试数据\"}', '', 1, '\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'type_id\' at row 1\n### The error may exist in com/ym/vaccine/mapper/YmVaccineTypeMapper.java (best guess)\n### The error may involve com.ym.vaccine.mapper.YmVaccineTypeMapper.insert-Inline\n### The error occurred while setting parameters\n### SQL: INSERT INTO ym_vaccine_type  ( type_id, type_name )  VALUES (  ?, ?  )\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'type_id\' at row 1\n; Data truncation: Out of range value for column \'type_id\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'type_id\' at row 1', '2024-01-27 20:26:42');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751220206340194305, '疫苗类型，存储疫苗的类型信息', 1, 'com.ym.vaccine.controller.YmVaccineTypeController.add()', 'POST', 1, 'admin', '研发部门', '/vaccine/vaccineType', '0:0:0:0:0:0:0:1', '内网IP', '{\"typeId\":null,\"typeName\":\"测试数据\"}', '', 1, '\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'type_id\' at row 1\n### The error may exist in com/ym/vaccine/mapper/YmVaccineTypeMapper.java (best guess)\n### The error may involve com.ym.vaccine.mapper.YmVaccineTypeMapper.insert-Inline\n### The error occurred while setting parameters\n### SQL: INSERT INTO ym_vaccine_type  ( type_id, type_name )  VALUES (  ?, ?  )\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'type_id\' at row 1\n; Data truncation: Out of range value for column \'type_id\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'type_id\' at row 1', '2024-01-27 20:26:48');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751221383928791041, '疫苗类型，存储疫苗的类型信息', 1, 'com.ym.vaccine.controller.YmVaccineTypeController.add()', 'POST', 1, 'admin', '研发部门', '/vaccine/vaccineType', '0:0:0:0:0:0:0:1', '内网IP', '{\"typeId\":null,\"typeName\":\"ce\"}', '', 1, '\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'type_id\' at row 1\n### The error may exist in com/ym/vaccine/mapper/YmVaccineTypeMapper.java (best guess)\n### The error may involve com.ym.vaccine.mapper.YmVaccineTypeMapper.insert-Inline\n### The error occurred while setting parameters\n### SQL: INSERT INTO ym_vaccine_type  ( type_id, type_name )  VALUES (  ?, ?  )\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'type_id\' at row 1\n; Data truncation: Out of range value for column \'type_id\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'type_id\' at row 1', '2024-01-27 20:31:29');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751221628397993985, '疫苗类型，存储疫苗的类型信息', 1, 'com.ym.vaccine.controller.YmVaccineTypeController.add()', 'POST', 1, 'admin', '研发部门', '/vaccine/vaccineType', '0:0:0:0:0:0:0:1', '内网IP', '{\"typeId\":null,\"typeName\":\"ce\"}', '', 1, '\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'type_id\' at row 1\n### The error may exist in com/ym/vaccine/mapper/YmVaccineTypeMapper.java (best guess)\n### The error may involve com.ym.vaccine.mapper.YmVaccineTypeMapper.insert-Inline\n### The error occurred while setting parameters\n### SQL: INSERT INTO ym_vaccine_type  ( type_id, type_name )  VALUES (  ?, ?  )\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'type_id\' at row 1\n; Data truncation: Out of range value for column \'type_id\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'type_id\' at row 1', '2024-01-27 20:32:27');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751814363374997506, '代码生成', 6, 'com.ym.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '0:0:0:0:0:0:0:1', '内网IP', '\"ym_vaccine\"', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-29 11:47:46');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751815724044963842, '代码生成', 2, 'com.ym.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 11:53:09\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":5},\"tableId\":\"1751814362167037954\",\"tableName\":\"ym_vaccine\",\"tableComment\":\"疫苗信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"Vaccine\",\"tplCategory\":\"crud\",\"packageName\":\"com.ym.system\",\"moduleName\":\"vaccine\",\"businessName\":\"vaccine\",\"functionName\":\"疫苗信息\",\"functionAuthor\":\"ym\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 11:47:46\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 11:53:10\",\"columnId\":\"1751814362599051265\",\"tableId\":\"1751814362167037954\",\"columnName\":\"id\",\"columnComment\":\"疫苗id\",\"columnType\":\"int\",\"javaType\":\"Long\",\"javaField\":\"id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"list\":true,\"pk\":true,\"edit\":true,\"increment\":true,\"query\":false,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"capJavaField\":\"Id\",\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 11:47:46\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 11:53:10\",\"columnId\":\"1751814362607439873\",\"tableId\":\"1751814362167037954\",\"columnName\":\"name\",\"columnComment\":\"疫苗名称\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"name\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"list\":true,\"pk\":false,\"edit\":true,\"increment\":false,\"query\":true,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"capJavaField\":\"Name\",\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 11:47:46\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 11:53:10\",\"columnId\":\"1751814362615828481\",\"tableId\":\"1751814362167037954\",\"columnName\":\"price\",\"columnComment\":\"疫苗价格\",\"columnType\":\"float\",\"javaType\":\"Long\",\"javaField\":\"price\"', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-29 11:53:10');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751815804076478465, '代码生成', 6, 'com.ym.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '0:0:0:0:0:0:0:1', '内网IP', '\"ym_user\"', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-29 11:53:30');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751815817724743681, '代码生成', 8, 'com.ym.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '0:0:0:0:0:0:0:1', '内网IP', '{\"tables\":\"ym_vaccine\"}', '', 0, '', '2024-01-29 11:53:33');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751822928957456385, '代码生成', 2, 'com.ym.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 12:21:47\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":5},\"tableId\":\"1751815803032096770\",\"tableName\":\"ym_user\",\"tableComment\":\"疫苗预约系统用户表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"YmUser\",\"tplCategory\":\"crud\",\"packageName\":\"com.ym.vaccine\",\"moduleName\":\"vaccine\",\"businessName\":\"ym_user\",\"functionName\":\"疫苗预约用户\",\"functionAuthor\":\"ym\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 11:53:29\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 12:21:47\",\"columnId\":\"1751815803426361346\",\"tableId\":\"1751815803032096770\",\"columnName\":\"id\",\"columnComment\":\"疫苗用户id\",\"columnType\":\"int\",\"javaType\":\"Long\",\"javaField\":\"id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"capJavaField\":\"Id\",\"increment\":true,\"query\":false,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"pk\":true,\"edit\":true,\"list\":true,\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 11:53:29\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 12:21:47\",\"columnId\":\"1751815803430555649\",\"tableId\":\"1751815803032096770\",\"columnName\":\"username\",\"columnComment\":\"疫苗用户名\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"username\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"capJavaField\":\"Username\",\"increment\":false,\"query\":true,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"pk\":false,\"edit\":true,\"list\":true,\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 11:53:29\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 12:21:47\",\"columnId\":\"1751815803434749953\",\"tableId\":\"1751815803032096770\",\"columnName\":\"password\",\"columnComment\":\"疫苗用户密码\",\"columnType\":\"varchar(255)\",\"javaTy', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-29 12:21:48');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751822947500474369, '代码生成', 8, 'com.ym.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '0:0:0:0:0:0:0:1', '内网IP', '{\"tables\":\"ym_user\"}', '', 0, '', '2024-01-29 12:21:53');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751833821829189633, '代码生成', 6, 'com.ym.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '0:0:0:0:0:0:0:1', '内网IP', '\"district,ym_worker,ym_sign,ym_pre_check,ym_plan,ym_pay,ym_observe,ym_inoculate_site,ym_inoculate,ym_appoint\"', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-29 13:05:05');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751833915114704898, '代码生成', 3, 'com.ym.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/1751814362167037954,1751815803032096770', '0:0:0:0:0:0:0:1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-29 13:05:28');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751835274996142081, '代码生成', 2, 'com.ym.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 13:10:51\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":1},\"tableId\":\"1751833812203261954\",\"tableName\":\"district\",\"tableComment\":\"疫苗系统省市区号信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"District\",\"tplCategory\":\"crud\",\"packageName\":\"com.ym.vaccine\",\"moduleName\":\"vaccine\",\"businessName\":\"district\",\"functionName\":\"省市区号\",\"functionAuthor\":\"ym\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:03\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 13:10:51\",\"columnId\":\"1751833812714967042\",\"tableId\":\"1751833812203261954\",\"columnName\":\"id\",\"columnComment\":\"\",\"columnType\":\"int\",\"javaType\":\"Long\",\"javaField\":\"id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"capJavaField\":\"Id\",\"pk\":true,\"edit\":true,\"list\":true,\"increment\":true,\"query\":false,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:03\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 13:10:51\",\"columnId\":\"1751833812727549954\",\"tableId\":\"1751833812203261954\",\"columnName\":\"parent\",\"columnComment\":\"\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"parent\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"capJavaField\":\"Parent\",\"pk\":false,\"edit\":true,\"list\":true,\"increment\":false,\"query\":true,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:03\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 13:10:51\",\"columnId\":\"1751833812731744258\",\"tableId\":\"1751833812203261954\",\"columnName\":\"code\",\"columnComment\":\"\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-29 13:10:52');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751836400571174913, '代码生成', 2, 'com.ym.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 13:15:19\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":6},\"tableId\":\"1751833813188923393\",\"tableName\":\"ym_appoint\",\"tableComment\":\"疫苗预约信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"YmAppoint\",\"tplCategory\":\"crud\",\"packageName\":\"com.ym.vaccine\",\"moduleName\":\"vaccine\",\"businessName\":\"appoint\",\"functionName\":\"预约\",\"functionAuthor\":\"ym\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:03\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 13:15:19\",\"columnId\":\"1751833813507690498\",\"tableId\":\"1751833813188923393\",\"columnName\":\"id\",\"columnComment\":\"\",\"columnType\":\"int\",\"javaType\":\"Long\",\"javaField\":\"id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"capJavaField\":\"Id\",\"pk\":true,\"edit\":true,\"list\":true,\"increment\":true,\"query\":false,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:03\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 13:15:19\",\"columnId\":\"1751833813516079106\",\"tableId\":\"1751833813188923393\",\"columnName\":\"user_id\",\"columnComment\":\"预约用户id\",\"columnType\":\"int\",\"javaType\":\"Long\",\"javaField\":\"userId\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"capJavaField\":\"UserId\",\"pk\":false,\"edit\":true,\"list\":true,\"increment\":false,\"query\":true,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:03\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 13:15:19\",\"columnId\":\"1751833813520273410\",\"tableId\":\"1751833813188923393\",\"columnName\":\"appoint_date\",\"columnComment\":\"预约日期\",\"columnType\":\"date\",\"javaType\":\"Date\",\"javaField\":\"appoi', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-29 13:15:20');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751840970496069634, '代码生成', 2, 'com.ym.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 13:33:29\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":7},\"tableId\":\"1751833814124253186\",\"tableName\":\"ym_inoculate\",\"tableComment\":\"疫苗接种信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"YmInoculate\",\"tplCategory\":\"crud\",\"packageName\":\"com.ym.vaccine\",\"moduleName\":\"vaccine\",\"businessName\":\"inoculate\",\"functionName\":\"疫苗接种记录\",\"functionAuthor\":\"ym\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:04\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 13:33:29\",\"columnId\":\"1751833814422048769\",\"tableId\":\"1751833814124253186\",\"columnName\":\"id\",\"columnComment\":\"\",\"columnType\":\"int\",\"javaType\":\"Long\",\"javaField\":\"id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"capJavaField\":\"Id\",\"pk\":true,\"edit\":true,\"list\":true,\"increment\":true,\"query\":false,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:04\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 13:33:29\",\"columnId\":\"1751833814430437377\",\"tableId\":\"1751833814124253186\",\"columnName\":\"part\",\"columnComment\":\"\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"part\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"capJavaField\":\"Part\",\"pk\":false,\"edit\":true,\"list\":true,\"increment\":false,\"query\":true,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:04\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 13:33:29\",\"columnId\":\"1751833814438825985\",\"tableId\":\"1751833814124253186\",\"columnName\":\"vaccine_batch_code\",\"columnComment\":\"\",\"columnType\":\"varchar(255)\",\"javaType\":\"String', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-29 13:33:30');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751842285959827457, '代码生成', 2, 'com.ym.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 13:38:42\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":5},\"tableId\":\"1751833815227355137\",\"tableName\":\"ym_inoculate_site\",\"tableComment\":\"疫苗接种站点信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"YmInoculateSite\",\"tplCategory\":\"crud\",\"packageName\":\"com.ym.vaccine\",\"moduleName\":\"vaccine\",\"businessName\":\"inoculateSite\",\"functionName\":\"疫苗接种站点管理\",\"functionAuthor\":\"ym\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:04\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 13:38:42\",\"columnId\":\"1751833815520956418\",\"tableId\":\"1751833815227355137\",\"columnName\":\"id\",\"columnComment\":\"\",\"columnType\":\"int\",\"javaType\":\"Long\",\"javaField\":\"id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"capJavaField\":\"Id\",\"pk\":true,\"edit\":true,\"list\":true,\"increment\":true,\"query\":false,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:04\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 13:38:42\",\"columnId\":\"1751833815525150721\",\"tableId\":\"1751833815227355137\",\"columnName\":\"name\",\"columnComment\":\"\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"name\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"capJavaField\":\"Name\",\"pk\":false,\"edit\":true,\"list\":true,\"increment\":false,\"query\":true,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:04\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 13:38:42\",\"columnId\":\"1751833815529345025\",\"tableId\":\"1751833815227355137\",\"columnName\":\"province_code\",\"columnComment\":\"\",\"columnType\":\"varchar(255)\",\"jav', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-29 13:38:43');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751902673028026369, '代码生成', 2, 'com.ym.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 17:38:39\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":6},\"tableId\":\"1751833818075287553\",\"tableName\":\"ym_plan\",\"tableComment\":\"疫苗预约计划管理\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"YmPlan\",\"tplCategory\":\"crud\",\"packageName\":\"com.ym.vacinne\",\"moduleName\":\"vaccine\",\"businessName\":\"plan\",\"functionName\":\"预约计划管理\",\"functionAuthor\":\"ym\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:04\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 17:38:39\",\"columnId\":\"1751833818373083137\",\"tableId\":\"1751833818075287553\",\"columnName\":\"id\",\"columnComment\":\"\",\"columnType\":\"int\",\"javaType\":\"Long\",\"javaField\":\"id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"increment\":true,\"query\":false,\"pk\":true,\"edit\":true,\"list\":true,\"capJavaField\":\"Id\",\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:04\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 17:38:40\",\"columnId\":\"1751833818377277441\",\"tableId\":\"1751833818075287553\",\"columnName\":\"start_date\",\"columnComment\":\"\",\"columnType\":\"date\",\"javaType\":\"Date\",\"javaField\":\"startDate\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"EQ\",\"htmlType\":\"datetime\",\"dictType\":\"\",\"sort\":2,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"increment\":false,\"query\":true,\"pk\":false,\"edit\":true,\"list\":true,\"capJavaField\":\"StartDate\",\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:04\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 17:38:40\",\"columnId\":\"1751833818381471746\",\"tableId\":\"1751833818075287553\",\"columnName\":\"end_date\",\"columnComment\":\"\",\"columnType\":\"date\",\"javaType\":\"Date\",\"javaField\":\"endDate\",\"', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-29 17:38:41');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751902696969113601, '代码生成', 8, 'com.ym.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '0:0:0:0:0:0:0:1', '内网IP', '{\"tables\":\"ym_plan\"}', '', 0, '', '2024-01-29 17:38:46');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751906707239632898, '代码生成', 3, 'com.ym.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/1751833818075287553', '0:0:0:0:0:0:0:1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-29 17:54:43');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751907752917368834, '代码生成', 2, 'com.ym.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 17:58:51\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":8},\"tableId\":\"1751833817026711553\",\"tableName\":\"ym_pay\",\"tableComment\":\"支付信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"YmPay\",\"tplCategory\":\"crud\",\"packageName\":\"com.ym.vaccine\",\"moduleName\":\"vaccine\",\"businessName\":\"pay\",\"functionName\":\"支付功能\",\"functionAuthor\":\"ym\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:04\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 17:58:51\",\"columnId\":\"1751833817328701442\",\"tableId\":\"1751833817026711553\",\"columnName\":\"id\",\"columnComment\":\"\",\"columnType\":\"int\",\"javaType\":\"Long\",\"javaField\":\"id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"increment\":true,\"query\":false,\"list\":true,\"pk\":true,\"edit\":true,\"capJavaField\":\"Id\",\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:04\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 17:58:51\",\"columnId\":\"1751833817332895746\",\"tableId\":\"1751833817026711553\",\"columnName\":\"cost\",\"columnComment\":\"支付费用\",\"columnType\":\"float\",\"javaType\":\"Long\",\"javaField\":\"cost\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"increment\":false,\"query\":true,\"list\":true,\"pk\":false,\"edit\":true,\"capJavaField\":\"Cost\",\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:04\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 17:58:51\",\"columnId\":\"1751833817332895747\",\"tableId\":\"1751833817026711553\",\"columnName\":\"create_time\",\"columnComment\":\"支付时间\",\"columnType\":\"datetime\",\"javaType\":\"Date\",\"javaField\":\"createTime\",\"isPk\":\"0', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-29 17:58:52');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751911155705872385, '代码生成', 2, 'com.ym.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 18:12:22\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":8},\"tableId\":\"1751833818813485058\",\"tableName\":\"ym_pre_check\",\"tableComment\":\"接种预检信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"YmPreCheck\",\"tplCategory\":\"crud\",\"packageName\":\"com.ym.vaccine\",\"moduleName\":\"vaccine\",\"businessName\":\"preCheck\",\"functionName\":\"预检信息查询\",\"functionAuthor\":\"ym\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:05\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 18:12:22\",\"columnId\":\"1751833819111280642\",\"tableId\":\"1751833818813485058\",\"columnName\":\"id\",\"columnComment\":\"\",\"columnType\":\"int\",\"javaType\":\"Long\",\"javaField\":\"id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"increment\":true,\"query\":false,\"list\":true,\"pk\":true,\"edit\":true,\"capJavaField\":\"Id\",\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:05\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 18:12:22\",\"columnId\":\"1751833819115474946\",\"tableId\":\"1751833818813485058\",\"columnName\":\"is_medicine\",\"columnComment\":\"\",\"columnType\":\"int\",\"javaType\":\"Long\",\"javaField\":\"isMedicine\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"increment\":false,\"query\":true,\"list\":true,\"pk\":false,\"edit\":true,\"capJavaField\":\"IsMedicine\",\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:05\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 18:12:22\",\"columnId\":\"1751833819119669249\",\"tableId\":\"1751833818813485058\",\"columnName\":\"medicine\",\"columnComment\":\"\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"j', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-29 18:12:23');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751911392424001537, '代码生成', 2, 'com.ym.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 18:13:19\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":8},\"tableId\":\"1751833819899809794\",\"tableName\":\"ym_sign\",\"tableComment\":\"签到信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"YmSign\",\"tplCategory\":\"crud\",\"packageName\":\"com.ym.vaccine\",\"moduleName\":\"vaccine\",\"businessName\":\"sign\",\"functionName\":\"接种签到\",\"functionAuthor\":\"ym\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:05\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 18:13:19\",\"columnId\":\"1751833820193411073\",\"tableId\":\"1751833819899809794\",\"columnName\":\"id\",\"columnComment\":\"\",\"columnType\":\"int\",\"javaType\":\"Long\",\"javaField\":\"id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"increment\":true,\"query\":false,\"list\":true,\"pk\":true,\"edit\":true,\"capJavaField\":\"Id\",\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:05\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 18:13:19\",\"columnId\":\"1751833820197605377\",\"tableId\":\"1751833819899809794\",\"columnName\":\"worker_id\",\"columnComment\":\"\",\"columnType\":\"int\",\"javaType\":\"Long\",\"javaField\":\"workerId\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"increment\":false,\"query\":true,\"list\":true,\"pk\":false,\"edit\":true,\"capJavaField\":\"WorkerId\",\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:05\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 18:13:19\",\"columnId\":\"1751833820201799681\",\"tableId\":\"1751833819899809794\",\"columnName\":\"appoint_id\",\"columnComment\":\"\",\"columnType\":\"int\",\"javaType\":\"Long\",\"javaField\":\"appointId\",\"isPk\":\"0\"', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-29 18:13:20');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751911647932612610, '代码生成', 2, 'com.ym.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 18:14:20\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":7},\"tableId\":\"1751833820768030721\",\"tableName\":\"ym_worker\",\"tableComment\":\"医护人员信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"YmWorker\",\"tplCategory\":\"crud\",\"packageName\":\"com.ym.vaccine\",\"moduleName\":\"vaccine\",\"businessName\":\"worker\",\"functionName\":\"医护人员信息\",\"functionAuthor\":\"ym\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:05\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 18:14:20\",\"columnId\":\"1751833821057437698\",\"tableId\":\"1751833820768030721\",\"columnName\":\"id\",\"columnComment\":\"\",\"columnType\":\"int\",\"javaType\":\"Long\",\"javaField\":\"id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"increment\":true,\"query\":false,\"list\":true,\"pk\":true,\"edit\":true,\"capJavaField\":\"Id\",\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:05\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 18:14:20\",\"columnId\":\"1751833821065826306\",\"tableId\":\"1751833820768030721\",\"columnName\":\"username\",\"columnComment\":\"\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"username\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"increment\":false,\"query\":true,\"list\":true,\"pk\":false,\"edit\":true,\"capJavaField\":\"Username\",\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:05\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 18:14:20\",\"columnId\":\"1751833821070020609\",\"tableId\":\"1751833820768030721\",\"columnName\":\"password\",\"columnComment\":\"\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"ja', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-29 18:14:20');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751911798705258498, '代码生成', 2, 'com.ym.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 18:14:55\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":8},\"tableId\":\"1751833813188923393\",\"tableName\":\"ym_appoint\",\"tableComment\":\"疫苗预约信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"YmAppoint\",\"tplCategory\":\"crud\",\"packageName\":\"com.ym.vaccine\",\"moduleName\":\"vaccine\",\"businessName\":\"appoint\",\"functionName\":\"预约\",\"functionAuthor\":\"ym\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:03\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 18:14:55\",\"columnId\":\"1751833813507690498\",\"tableId\":\"1751833813188923393\",\"columnName\":\"id\",\"columnComment\":\"\",\"columnType\":\"int\",\"javaType\":\"Long\",\"javaField\":\"id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"increment\":true,\"query\":false,\"list\":true,\"pk\":true,\"edit\":true,\"capJavaField\":\"Id\",\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:03\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 18:14:56\",\"columnId\":\"1751833813516079106\",\"tableId\":\"1751833813188923393\",\"columnName\":\"user_id\",\"columnComment\":\"预约用户id\",\"columnType\":\"int\",\"javaType\":\"Long\",\"javaField\":\"userId\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"increment\":false,\"query\":true,\"list\":true,\"pk\":false,\"edit\":true,\"capJavaField\":\"UserId\",\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:03\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 18:14:56\",\"columnId\":\"1751833813520273410\",\"tableId\":\"1751833813188923393\",\"columnName\":\"appoint_date\",\"columnComment\":\"预约日期\",\"columnType\":\"date\",\"javaType\":\"Date\",\"javaField\":\"appoi', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-29 18:14:56');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751911891382599681, '代码生成', 2, 'com.ym.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 18:15:18\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":8},\"tableId\":\"1751833814124253186\",\"tableName\":\"ym_inoculate\",\"tableComment\":\"疫苗接种信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"YmInoculate\",\"tplCategory\":\"crud\",\"packageName\":\"com.ym.vaccine\",\"moduleName\":\"vaccine\",\"businessName\":\"inoculate\",\"functionName\":\"疫苗接种记录\",\"functionAuthor\":\"ym\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:04\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 18:15:18\",\"columnId\":\"1751833814422048769\",\"tableId\":\"1751833814124253186\",\"columnName\":\"id\",\"columnComment\":\"\",\"columnType\":\"int\",\"javaType\":\"Long\",\"javaField\":\"id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"increment\":true,\"query\":false,\"list\":true,\"pk\":true,\"edit\":true,\"capJavaField\":\"Id\",\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:04\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 18:15:18\",\"columnId\":\"1751833814430437377\",\"tableId\":\"1751833814124253186\",\"columnName\":\"part\",\"columnComment\":\"\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"part\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"increment\":false,\"query\":true,\"list\":true,\"pk\":false,\"edit\":true,\"capJavaField\":\"Part\",\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:04\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 18:15:18\",\"columnId\":\"1751833814438825985\",\"tableId\":\"1751833814124253186\",\"columnName\":\"vaccine_batch_code\",\"columnComment\":\"\",\"columnType\":\"varchar(255)\",\"javaType\":\"String', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-29 18:15:19');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751912000740687873, '代码生成', 2, 'com.ym.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '0:0:0:0:0:0:0:1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 18:15:44\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":8},\"tableId\":\"1751833815965552642\",\"tableName\":\"ym_observe\",\"tableComment\":\"留观信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"YmObserve\",\"tplCategory\":\"crud\",\"packageName\":\"com.ym.vaccine\",\"moduleName\":\"vaccine\",\"businessName\":\"observe\",\"functionName\":\"留观查询\",\"functionAuthor\":\"ym\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:04\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 18:15:44\",\"columnId\":\"1751833816267542529\",\"tableId\":\"1751833815965552642\",\"columnName\":\"id\",\"columnComment\":\"\",\"columnType\":\"int\",\"javaType\":\"Long\",\"javaField\":\"id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"increment\":true,\"query\":false,\"list\":true,\"pk\":true,\"edit\":true,\"capJavaField\":\"Id\",\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:04\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 18:15:44\",\"columnId\":\"1751833816271736833\",\"tableId\":\"1751833815965552642\",\"columnName\":\"worker_id\",\"columnComment\":\"\",\"columnType\":\"int\",\"javaType\":\"Long\",\"javaField\":\"workerId\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"increment\":false,\"query\":true,\"list\":true,\"pk\":false,\"edit\":true,\"capJavaField\":\"WorkerId\",\"required\":true},{\"createBy\":\"admin\",\"createTime\":\"2024-01-29 13:05:04\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-29 18:15:44\",\"columnId\":\"1751833816275931138\",\"tableId\":\"1751833815965552642\",\"columnName\":\"create_time\",\"columnComment\":\"\",\"columnType\":\"datetime\",\"javaType\":\"Date\",\"javaField\":\"create', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2024-01-29 18:15:45');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751912063122571265, '代码生成', 8, 'com.ym.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '0:0:0:0:0:0:0:1', '内网IP', '{\"tables\":\"district,ym_appoint,ym_inoculate,ym_inoculate_site,ym_observe,ym_pay,ym_pre_check,ym_sign,ym_worker\"}', '', 0, '', '2024-01-29 18:15:59');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751912237593034754, '代码生成', 8, 'com.ym.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '0:0:0:0:0:0:0:1', '内网IP', '{\"tables\":\"district,ym_appoint,ym_inoculate,ym_inoculate_site,ym_observe,ym_pay,ym_pre_check,ym_sign,ym_worker\"}', '', 0, '', '2024-01-29 18:16:41');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751912310943023106, '代码生成', 8, 'com.ym.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '0:0:0:0:0:0:0:1', '内网IP', '{\"tables\":\"district,ym_appoint,ym_inoculate,ym_inoculate_site,ym_observe,ym_pay,ym_pre_check,ym_sign,ym_worker\"}', '', 0, '', '2024-01-29 18:16:59');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (1751955514480488450, '疫苗信息', 1, 'com.ym.vaccine.controller.VaccineController.add()', 'POST', 1, 'admin', '研发部门', '/vaccine/vaccine', '0:0:0:0:0:0:0:1', '内网IP', '{\"id\":null,\"name\":\"ce\",\"price\":1000,\"manufacturer\":\"测试\",\"category\":\"二测试\",\"detail\":\"123\",\"imgUrl\":\"#\"}', '', 1, '\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1\n### The error may exist in com/ym/vaccine/mapper/VaccineMapper.java (best guess)\n### The error may involve com.ym.vaccine.mapper.VaccineMapper.insert-Inline\n### The error occurred while setting parameters\n### SQL: INSERT INTO ym_vaccine  ( id, name, price, manufacturer, category, detail, img_url )  VALUES (  ?, ?, ?, ?, ?, ?, ?  )\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1\n; Data truncation: Out of range value for column \'id\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1', '2024-01-29 21:08:39');
COMMIT;

-- ----------------------------
-- Table structure for sys_oss
-- ----------------------------
DROP TABLE IF EXISTS `sys_oss`;
CREATE TABLE `sys_oss` (
  `oss_id` bigint NOT NULL COMMENT '对象存储主键',
  `file_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `original_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '原名',
  `file_suffix` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文件后缀名',
  `url` varchar(500) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'URL地址',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '上传人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新人',
  `service` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'minio' COMMENT '服务商',
  PRIMARY KEY (`oss_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='OSS对象存储表';

-- ----------------------------
-- Records of sys_oss
-- ----------------------------
BEGIN;
INSERT INTO `sys_oss` (`oss_id`, `file_name`, `original_name`, `file_suffix`, `url`, `create_time`, `create_by`, `update_time`, `update_by`, `service`) VALUES (1750402245975175169, '2024/01/25/8e36f518c69e407f8d51467a33dd410e.png', '概览图.png', '.png', 'http://43.142.255.148:9000/ym2024/2024/01/25/8e36f518c69e407f8d51467a33dd410e.png', '2024-01-25 14:16:31', 'admin', '2024-01-25 14:16:31', 'admin', 'minio');
INSERT INTO `sys_oss` (`oss_id`, `file_name`, `original_name`, `file_suffix`, `url`, `create_time`, `create_by`, `update_time`, `update_by`, `service`) VALUES (1750404459695214594, '2024/01/25/4708bc310b994a22baa66f1da9750d68.jpg', 'login-background.jpg', '.jpg', 'http://43.142.255.148:9000/ym2024/2024/01/25/4708bc310b994a22baa66f1da9750d68.jpg', '2024-01-25 14:25:19', 'admin', '2024-01-25 14:25:19', 'admin', 'minio');
INSERT INTO `sys_oss` (`oss_id`, `file_name`, `original_name`, `file_suffix`, `url`, `create_time`, `create_by`, `update_time`, `update_by`, `service`) VALUES (1750404573172109314, '2024/01/25/376fdcb664db4dccb054e538a418db8f.png', 'avatar.png', '.png', 'http://43.142.255.148:9000/ym2024/2024/01/25/376fdcb664db4dccb054e538a418db8f.png', '2024-01-25 14:25:46', 'admin', '2024-01-25 14:25:46', 'admin', 'minio');
INSERT INTO `sys_oss` (`oss_id`, `file_name`, `original_name`, `file_suffix`, `url`, `create_time`, `create_by`, `update_time`, `update_by`, `service`) VALUES (1750409966921244673, 'image/2024/01/25/01f24cb1e44e4ee5b95ecd984b2359c9.png', 'app_icon.png', '.png', 'http://43.142.255.148:9000/ym2024/image/2024/01/25/01f24cb1e44e4ee5b95ecd984b2359c9.png', '2024-01-25 14:47:12', 'admin', '2024-01-25 14:47:12', 'admin', 'image');
COMMIT;

-- ----------------------------
-- Table structure for sys_oss_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_oss_config`;
CREATE TABLE `sys_oss_config` (
  `oss_config_id` bigint NOT NULL COMMENT '主建',
  `config_key` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '配置key',
  `access_key` varchar(255) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT 'accessKey',
  `secret_key` varchar(255) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '秘钥',
  `bucket_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '桶名称',
  `prefix` varchar(255) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '前缀',
  `endpoint` varchar(255) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '访问站点',
  `domain` varchar(255) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '自定义域名',
  `is_https` char(1) COLLATE utf8mb4_general_ci DEFAULT 'N' COMMENT '是否https（Y=是,N=否）',
  `region` varchar(255) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '域',
  `access_policy` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '桶权限类型(0=private 1=public 2=custom)',
  `status` char(1) COLLATE utf8mb4_general_ci DEFAULT '1' COMMENT '是否默认（0=是,1=否）',
  `ext1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '扩展字段',
  `create_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`oss_config_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='对象存储配置表';

-- ----------------------------
-- Records of sys_oss_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_oss_config` (`oss_config_id`, `config_key`, `access_key`, `secret_key`, `bucket_name`, `prefix`, `endpoint`, `domain`, `is_https`, `region`, `access_policy`, `status`, `ext1`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, 'minio', 'zSuMCn1uIFHQ1Y8Qvgre', 'IqWgmFaAI6VN8P4mzrdZKvWtyUgm6vkIRY0Othcz', 'ym2024', '', '43.142.255.148:9000', '', 'N', '', '1', '1', '', 'admin', '2024-01-17 17:51:56', 'admin', '2024-01-25 14:16:23', '');
INSERT INTO `sys_oss_config` (`oss_config_id`, `config_key`, `access_key`, `secret_key`, `bucket_name`, `prefix`, `endpoint`, `domain`, `is_https`, `region`, `access_policy`, `status`, `ext1`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, 'qiniu', 'XXXXXXXXXXXXXXX', 'XXXXXXXXXXXXXXX', 'ym', '', 's3-cn-north-1.qiniucs.com', '', 'N', '', '1', '1', '', 'admin', '2024-01-17 17:51:56', 'admin', '2024-01-17 17:51:56', NULL);
INSERT INTO `sys_oss_config` (`oss_config_id`, `config_key`, `access_key`, `secret_key`, `bucket_name`, `prefix`, `endpoint`, `domain`, `is_https`, `region`, `access_policy`, `status`, `ext1`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, 'aliyun', 'XXXXXXXXXXXXXXX', 'XXXXXXXXXXXXXXX', 'ym', '', 'oss-cn-beijing.aliyuncs.com', '', 'N', '', '1', '1', '', 'admin', '2024-01-17 17:51:56', 'admin', '2024-01-17 17:51:56', NULL);
INSERT INTO `sys_oss_config` (`oss_config_id`, `config_key`, `access_key`, `secret_key`, `bucket_name`, `prefix`, `endpoint`, `domain`, `is_https`, `region`, `access_policy`, `status`, `ext1`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (4, 'qcloud', 'XXXXXXXXXXXXXXX', 'XXXXXXXXXXXXXXX', 'ym-1250000000', '', 'cos.ap-beijing.myqcloud.com', '', 'N', 'ap-beijing', '1', '1', '', 'admin', '2024-01-17 17:51:56', 'admin', '2024-01-17 17:51:56', NULL);
INSERT INTO `sys_oss_config` (`oss_config_id`, `config_key`, `access_key`, `secret_key`, `bucket_name`, `prefix`, `endpoint`, `domain`, `is_https`, `region`, `access_policy`, `status`, `ext1`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (5, 'image', 'zSuMCn1uIFHQ1Y8Qvgre', 'IqWgmFaAI6VN8P4mzrdZKvWtyUgm6vkIRY0Othcz', 'ym2024', 'image', '43.142.255.148:9000', '', 'N', '', '1', '0', '', 'admin', '2024-01-17 17:51:56', 'admin', '2024-01-25 14:28:49', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  `post_code` varchar(64) COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2024-01-17 17:51:52', '', NULL, '');
INSERT INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2024-01-17 17:51:52', '', NULL, '');
INSERT INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2024-01-17 17:51:52', '', NULL, '');
INSERT INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2024-01-17 17:51:52', '', NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `role_name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) COLLATE utf8mb4_general_ci DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` (`role_id`, `role_name`, `role_key`, `role_sort`, `data_scope`, `menu_check_strictly`, `dept_check_strictly`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2024-01-17 17:51:52', '', NULL, '超级管理员');
INSERT INTO `sys_role` (`role_id`, `role_name`, `role_key`, `role_sort`, `data_scope`, `menu_check_strictly`, `dept_check_strictly`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2024-01-17 17:51:52', 'admin', '2024-01-18 16:56:30', '普通角色');
INSERT INTO `sys_role` (`role_id`, `role_name`, `role_key`, `role_sort`, `data_scope`, `menu_check_strictly`, `dept_check_strictly`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, '医生', 'doctor', 3, '1', 1, 1, '0', '0', 'admin', '2024-01-18 16:52:37', 'admin', '2024-01-18 16:52:49', '医生');
INSERT INTO `sys_role` (`role_id`, `role_name`, `role_key`, `role_sort`, `data_scope`, `menu_check_strictly`, `dept_check_strictly`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (4, '接种者', 'person', 4, '1', 1, 1, '0', '0', 'admin', '2024-01-18 16:54:05', 'admin', '2024-01-18 16:54:05', '接种者');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_dept` (`role_id`, `dept_id`) VALUES (2, 100);
INSERT INTO `sys_role_dept` (`role_id`, `dept_id`) VALUES (2, 101);
INSERT INTO `sys_role_dept` (`role_id`, `dept_id`) VALUES (2, 105);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 3);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 100);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 101);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 102);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 103);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 104);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 105);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 106);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 107);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 108);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 109);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 112);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 113);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 114);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 115);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 500);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 501);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1001);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1002);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1003);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1004);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1005);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1006);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1007);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1008);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1009);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1010);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1011);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1012);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1013);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1014);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1015);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1016);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1017);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1018);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1019);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1020);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1021);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1022);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1023);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1024);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1025);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1026);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1027);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1028);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1029);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1030);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1031);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1032);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1033);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1034);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1035);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1036);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1037);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1038);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1039);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1040);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1041);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1042);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1043);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1044);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1045);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1046);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1047);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1048);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1050);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1055);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1056);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1057);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1058);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1059);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1060);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 5);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 6);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 7);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 121);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 122);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 123);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 124);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 1606);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 1607);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 1608);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 1609);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 1610);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 1611);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 1612);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 1613);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 1614);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 1615);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 1616);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 1617);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 1618);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 1619);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 1620);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 1621);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 1622);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 1623);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 1624);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 1625);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 1626);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 1627);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 1628);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 1629);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747904814486175745, 1630);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747905182179835906, 5);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747905182179835906, 6);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747905182179835906, 7);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747905182179835906, 121);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747905182179835906, 122);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747905182179835906, 1606);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747905182179835906, 1611);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747905182179835906, 1621);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747905182179835906, 1622);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747905182179835906, 1623);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747905182179835906, 1626);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747905182179835906, 1627);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1747905182179835906, 1628);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(10) COLLATE utf8mb4_general_ci DEFAULT 'sys_user' COMMENT '用户类型（sys_user系统用户）',
  `email` varchar(50) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '手机号码',
  `sex` char(1) COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '密码',
  `status` char(1) COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, 103, 'admin', 'Seele', 'sys_user', 'panpan@163.com', '15888888888', '0', 'http://43.142.255.148:9000/ym2024/2024/01/25/376fdcb664db4dccb054e538a418db8f.png', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '43.142.255.148', '2024-02-01 19:35:02', 'admin', '2024-01-17 17:51:52', 'admin', '2024-02-01 19:35:02', '管理员');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, 105, 'lionli', 'll', 'sys_user', 'Lilin@qq.com', '15666666666', '0', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-01-17 17:51:52', 'admin', '2024-01-17 17:51:52', 'admin', '2024-01-18 15:13:25', '测试员');
COMMIT;

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (1, 1);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (2, 2);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES (1, 1);
INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES (2, 2);
COMMIT;

-- ----------------------------
-- Table structure for ym_appoint
-- ----------------------------
DROP TABLE IF EXISTS `ym_appoint`;
CREATE TABLE `ym_appoint` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `appoint_date` date DEFAULT NULL,
  `status` int DEFAULT NULL,
  `qr_code_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `plan_id` int DEFAULT NULL,
  `time_slot` int DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of ym_appoint
-- ----------------------------
BEGIN;
INSERT INTO `ym_appoint` (`id`, `user_id`, `appoint_date`, `status`, `qr_code_url`, `plan_id`, `time_slot`, `create_time`) VALUES (27, 6, '2024-01-23', 6, '/04835abb7d5741a1bc32d559cb2e9487.jpg', 11, 1, '2024-01-22 12:40:18');
INSERT INTO `ym_appoint` (`id`, `user_id`, `appoint_date`, `status`, `qr_code_url`, `plan_id`, `time_slot`, `create_time`) VALUES (28, 6, '2024-01-22', 4, '/f1b0b388686d4399815fc558aa080036.jpg', 11, 1, '2024-01-22 12:52:05');
INSERT INTO `ym_appoint` (`id`, `user_id`, `appoint_date`, `status`, `qr_code_url`, `plan_id`, `time_slot`, `create_time`) VALUES (29, 7, '2024-01-22', 4, '/e06bf3f8600f47b5a252548c14283947.jpg', 11, 1, '2024-01-22 12:58:37');
INSERT INTO `ym_appoint` (`id`, `user_id`, `appoint_date`, `status`, `qr_code_url`, `plan_id`, `time_slot`, `create_time`) VALUES (30, 8, '2024-01-22', 4, '/d418fef3f45f4076997b66eb3a766e51.jpg', 11, 1, '2024-01-22 12:59:03');
INSERT INTO `ym_appoint` (`id`, `user_id`, `appoint_date`, `status`, `qr_code_url`, `plan_id`, `time_slot`, `create_time`) VALUES (31, 6, '2024-01-22', 4, '/d1954fb852ac432983433dc67da1dc03.jpg', 11, 1, '2024-01-22 14:56:01');
INSERT INTO `ym_appoint` (`id`, `user_id`, `appoint_date`, `status`, `qr_code_url`, `plan_id`, `time_slot`, `create_time`) VALUES (32, 7, '2024-01-22', 4, '/b32dd862bc814ff4a05ca805516199dd.jpg', 13, 1, '2024-01-22 15:23:15');
INSERT INTO `ym_appoint` (`id`, `user_id`, `appoint_date`, `status`, `qr_code_url`, `plan_id`, `time_slot`, `create_time`) VALUES (33, 8, '2024-01-22', 4, '/2cb311e623ac446e8169025049ceb371.jpg', 14, 1, '2024-01-22 15:28:43');
INSERT INTO `ym_appoint` (`id`, `user_id`, `appoint_date`, `status`, `qr_code_url`, `plan_id`, `time_slot`, `create_time`) VALUES (34, 6, '2024-06-01', 6, '/fbb97fdaa6264fdc8dc5f6b0faef2881.jpg', 11, 0, '2024-02-01 12:36:29');
COMMIT;

-- ----------------------------
-- Table structure for ym_inoculate
-- ----------------------------
DROP TABLE IF EXISTS `ym_inoculate`;
CREATE TABLE `ym_inoculate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `part` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `vaccine_batch_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `worker_id` int DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `appoint_id` int DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of ym_inoculate
-- ----------------------------
BEGIN;
INSERT INTO `ym_inoculate` (`id`, `part`, `vaccine_batch_code`, `worker_id`, `create_time`, `appoint_id`, `note`) VALUES (4, '右臂', 'HR1001', 5, '2024-01-22 14:11:30', 30, '正常完成接种');
INSERT INTO `ym_inoculate` (`id`, `part`, `vaccine_batch_code`, `worker_id`, `create_time`, `appoint_id`, `note`) VALUES (5, '右臂', 'HR1002', 5, '2024-01-22 14:45:00', 28, '接种正常');
INSERT INTO `ym_inoculate` (`id`, `part`, `vaccine_batch_code`, `worker_id`, `create_time`, `appoint_id`, `note`) VALUES (6, '右臂', 'HR1003', 5, '2024-01-22 14:57:35', 31, '接种正常');
INSERT INTO `ym_inoculate` (`id`, `part`, `vaccine_batch_code`, `worker_id`, `create_time`, `appoint_id`, `note`) VALUES (7, '右臂', 'HL1001', 4, '2024-01-22 15:25:06', 32, '接种正常');
INSERT INTO `ym_inoculate` (`id`, `part`, `vaccine_batch_code`, `worker_id`, `create_time`, `appoint_id`, `note`) VALUES (8, '右臂', 'HB1001', 6, '2024-01-22 15:31:59', 33, '接种正常');
COMMIT;

-- ----------------------------
-- Table structure for ym_inoculate_site
-- ----------------------------
DROP TABLE IF EXISTS `ym_inoculate_site`;
CREATE TABLE `ym_inoculate_site` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of ym_inoculate_site
-- ----------------------------
BEGIN;
INSERT INTO `ym_inoculate_site` (`id`, `name`, `address`, `img_url`) VALUES (9, '宿迁市宿城区人民医院', ' 宿迁市宿城区宿支路120号', '/2aced27ac13c4623b25b115e3d1c057e.jpg');
INSERT INTO `ym_inoculate_site` (`id`, `name`, `address`, `img_url`) VALUES (10, '江苏省职工康复医院', '南京市江宁区汤泉东路229号', '/80830cd34ccd4b229b8d8557c7f4b21b.jpg');
INSERT INTO `ym_inoculate_site` (`id`, `name`, `address`, `img_url`) VALUES (11, '江苏省人民医院', '南京市鼓楼区广州路300号', '/ad571c5ee19546069568dd4dcb255919.jpg');
INSERT INTO `ym_inoculate_site` (`id`, `name`, `address`, `img_url`) VALUES (14, '测试', '1', '/4a9f59034f664877826fe142fbc3ca1d.png');
COMMIT;

-- ----------------------------
-- Table structure for ym_observe
-- ----------------------------
DROP TABLE IF EXISTS `ym_observe`;
CREATE TABLE `ym_observe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `worker_id` int DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `appoint_id` int DEFAULT NULL,
  `is_finish` int DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of ym_observe
-- ----------------------------
BEGIN;
INSERT INTO `ym_observe` (`id`, `worker_id`, `create_time`, `appoint_id`, `is_finish`, `note`, `end_time`) VALUES (4, 5, '2024-01-22 14:11:30', 30, 1, '留观时间已满，正常结束留观', '2024-01-22 14:53:27');
INSERT INTO `ym_observe` (`id`, `worker_id`, `create_time`, `appoint_id`, `is_finish`, `note`, `end_time`) VALUES (5, 5, '2024-01-22 14:45:00', 28, 0, '提前离开并表示愿意承担风险', '2024-01-22 14:55:52');
INSERT INTO `ym_observe` (`id`, `worker_id`, `create_time`, `appoint_id`, `is_finish`, `note`, `end_time`) VALUES (6, 5, '2024-01-22 14:57:35', 31, 1, '留观时间已满，留观结束', '2024-01-22 14:30:54');
INSERT INTO `ym_observe` (`id`, `worker_id`, `create_time`, `appoint_id`, `is_finish`, `note`, `end_time`) VALUES (7, 4, '2024-01-22 15:25:06', 32, 1, '留观时间已满，留观结束', '2024-01-22 15:58:02');
INSERT INTO `ym_observe` (`id`, `worker_id`, `create_time`, `appoint_id`, `is_finish`, `note`, `end_time`) VALUES (8, 6, '2024-01-22 15:31:59', 33, 1, '留观时间已满，留观结束', '2024-01-22 16:00:19');
COMMIT;

-- ----------------------------
-- Table structure for ym_pay
-- ----------------------------
DROP TABLE IF EXISTS `ym_pay`;
CREATE TABLE `ym_pay` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cost` float DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `appoint_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of ym_pay
-- ----------------------------
BEGIN;
INSERT INTO `ym_pay` (`id`, `cost`, `create_time`, `appoint_id`) VALUES (11, 0, '2024-01-22 12:40:18', 27);
INSERT INTO `ym_pay` (`id`, `cost`, `create_time`, `appoint_id`) VALUES (12, 0, '2024-01-22 12:52:05', 28);
INSERT INTO `ym_pay` (`id`, `cost`, `create_time`, `appoint_id`) VALUES (13, 0, '2024-01-22 12:58:37', 29);
INSERT INTO `ym_pay` (`id`, `cost`, `create_time`, `appoint_id`) VALUES (14, 0, '2024-01-22 12:59:03', 30);
INSERT INTO `ym_pay` (`id`, `cost`, `create_time`, `appoint_id`) VALUES (15, 0, '2024-01-22 14:56:01', 31);
INSERT INTO `ym_pay` (`id`, `cost`, `create_time`, `appoint_id`) VALUES (16, 799.99, '2024-01-22 15:23:15', 32);
INSERT INTO `ym_pay` (`id`, `cost`, `create_time`, `appoint_id`) VALUES (17, 29.99, '2024-01-22 15:28:43', 33);
INSERT INTO `ym_pay` (`id`, `cost`, `create_time`, `appoint_id`) VALUES (18, 0, '2024-02-01 12:36:29', 34);
COMMIT;

-- ----------------------------
-- Table structure for ym_plan
-- ----------------------------
DROP TABLE IF EXISTS `ym_plan`;
CREATE TABLE `ym_plan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_time_morning` int DEFAULT NULL,
  `end_time_morning` int DEFAULT NULL,
  `start_time_afternoon` int DEFAULT NULL,
  `end_time_afternoon` int DEFAULT NULL,
  `vaccine_id` int DEFAULT NULL,
  `inoculate_site_id` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `start_time_evening` int DEFAULT NULL,
  `end_time_evening` int DEFAULT NULL,
  `morning_limit` int DEFAULT NULL,
  `afternoon_limit` int DEFAULT NULL,
  `evening_limit` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of ym_plan
-- ----------------------------
BEGIN;
INSERT INTO `ym_plan` (`id`, `start_date`, `end_date`, `start_time_morning`, `end_time_morning`, `start_time_afternoon`, `end_time_afternoon`, `vaccine_id`, `inoculate_site_id`, `amount`, `start_time_evening`, `end_time_evening`, `morning_limit`, `afternoon_limit`, `evening_limit`) VALUES (11, '2024-01-15', '2024-06-06', 9, 12, 14, 18, 9, 10, 1000, 19, 23, 50, 50, 50);
INSERT INTO `ym_plan` (`id`, `start_date`, `end_date`, `start_time_morning`, `end_time_morning`, `start_time_afternoon`, `end_time_afternoon`, `vaccine_id`, `inoculate_site_id`, `amount`, `start_time_evening`, `end_time_evening`, `morning_limit`, `afternoon_limit`, `evening_limit`) VALUES (12, '2024-01-01', '2024-07-02', 9, 12, 14, 18, 9, 10, 1000, 19, 23, 50, 50, 50);
INSERT INTO `ym_plan` (`id`, `start_date`, `end_date`, `start_time_morning`, `end_time_morning`, `start_time_afternoon`, `end_time_afternoon`, `vaccine_id`, `inoculate_site_id`, `amount`, `start_time_evening`, `end_time_evening`, `morning_limit`, `afternoon_limit`, `evening_limit`) VALUES (13, '2024-01-15', '2024-04-11', 9, 12, 14, 18, 10, 9, 1000, 19, 23, 50, 50, 50);
INSERT INTO `ym_plan` (`id`, `start_date`, `end_date`, `start_time_morning`, `end_time_morning`, `start_time_afternoon`, `end_time_afternoon`, `vaccine_id`, `inoculate_site_id`, `amount`, `start_time_evening`, `end_time_evening`, `morning_limit`, `afternoon_limit`, `evening_limit`) VALUES (14, '2024-01-15', '2025-01-31', 9, 12, 14, 18, 11, 11, 1000, 19, 23, 50, 50, 50);
INSERT INTO `ym_plan` (`id`, `start_date`, `end_date`, `start_time_morning`, `end_time_morning`, `start_time_afternoon`, `end_time_afternoon`, `vaccine_id`, `inoculate_site_id`, `amount`, `start_time_evening`, `end_time_evening`, `morning_limit`, `afternoon_limit`, `evening_limit`) VALUES (15, '2024-01-15', '2025-01-31', 9, 12, 14, 18, 9, 9, 1000, 19, 23, 50, 50, 50);
COMMIT;

-- ----------------------------
-- Table structure for ym_pre_check
-- ----------------------------
DROP TABLE IF EXISTS `ym_pre_check`;
CREATE TABLE `ym_pre_check` (
  `id` int NOT NULL AUTO_INCREMENT,
  `is_medicine` int DEFAULT NULL,
  `medicine` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_contraindication` int DEFAULT NULL,
  `contraindication` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `blood_pressure_high` float DEFAULT NULL,
  `blood_pressure_low` float DEFAULT NULL,
  `temperature` float DEFAULT NULL,
  `worker_id` int DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `appoint_id` int DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of ym_pre_check
-- ----------------------------
BEGIN;
INSERT INTO `ym_pre_check` (`id`, `is_medicine`, `medicine`, `is_contraindication`, `contraindication`, `blood_pressure_high`, `blood_pressure_low`, `temperature`, `worker_id`, `create_time`, `appoint_id`, `note`) VALUES (4, 0, NULL, 0, NULL, 119.28, 70.56, 37.8, 5, '2024-01-22 14:10:18', 30, '可正常接种疫苗');
INSERT INTO `ym_pre_check` (`id`, `is_medicine`, `medicine`, `is_contraindication`, `contraindication`, `blood_pressure_high`, `blood_pressure_low`, `temperature`, `worker_id`, `create_time`, `appoint_id`, `note`) VALUES (5, 1, '托拉塞米', 1, '高血压', 130.6, 59.8, 37.9, 5, '2024-01-22 14:20:55', 29, '接种者血压过高，不适宜接种疫苗');
INSERT INTO `ym_pre_check` (`id`, `is_medicine`, `medicine`, `is_contraindication`, `contraindication`, `blood_pressure_high`, `blood_pressure_low`, `temperature`, `worker_id`, `create_time`, `appoint_id`, `note`) VALUES (6, 0, NULL, 0, NULL, 117.12, 65.18, 36.9, 5, '2024-01-22 14:44:18', 28, '预检结果正常，可以接种疫苗');
INSERT INTO `ym_pre_check` (`id`, `is_medicine`, `medicine`, `is_contraindication`, `contraindication`, `blood_pressure_high`, `blood_pressure_low`, `temperature`, `worker_id`, `create_time`, `appoint_id`, `note`) VALUES (7, 0, NULL, 0, NULL, 120.36, 67.18, 37.7, 5, '2024-01-22 14:57:18', 31, '预检正常，可以接种');
INSERT INTO `ym_pre_check` (`id`, `is_medicine`, `medicine`, `is_contraindication`, `contraindication`, `blood_pressure_high`, `blood_pressure_low`, `temperature`, `worker_id`, `create_time`, `appoint_id`, `note`) VALUES (8, 0, NULL, 0, NULL, 114.58, 65.34, 36.9, 4, '2024-01-22 15:24:49', 32, '预检正常，可以接种');
INSERT INTO `ym_pre_check` (`id`, `is_medicine`, `medicine`, `is_contraindication`, `contraindication`, `blood_pressure_high`, `blood_pressure_low`, `temperature`, `worker_id`, `create_time`, `appoint_id`, `note`) VALUES (9, 0, NULL, 0, NULL, 118.86, 62.38, 37.4, 6, '2024-01-22 15:30:38', 33, '预检正常，可以接种');
COMMIT;

-- ----------------------------
-- Table structure for ym_sign
-- ----------------------------
DROP TABLE IF EXISTS `ym_sign`;
CREATE TABLE `ym_sign` (
  `id` int NOT NULL AUTO_INCREMENT,
  `worker_id` int DEFAULT NULL,
  `appoint_id` int DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of ym_sign
-- ----------------------------
BEGIN;
INSERT INTO `ym_sign` (`id`, `worker_id`, `appoint_id`, `create_time`) VALUES (3, 5, 30, '2024-01-22 14:09:36');
INSERT INTO `ym_sign` (`id`, `worker_id`, `appoint_id`, `create_time`) VALUES (4, 5, 29, '2024-01-22 14:15:50');
INSERT INTO `ym_sign` (`id`, `worker_id`, `appoint_id`, `create_time`) VALUES (5, 5, 28, '2024-01-22 14:43:30');
INSERT INTO `ym_sign` (`id`, `worker_id`, `appoint_id`, `create_time`) VALUES (6, 5, 31, '2024-01-22 14:56:45');
INSERT INTO `ym_sign` (`id`, `worker_id`, `appoint_id`, `create_time`) VALUES (7, 4, 32, '2024-01-22 15:24:25');
INSERT INTO `ym_sign` (`id`, `worker_id`, `appoint_id`, `create_time`) VALUES (8, 6, 33, '2024-01-22 15:30:15');
COMMIT;

-- ----------------------------
-- Table structure for ym_user
-- ----------------------------
DROP TABLE IF EXISTS `ym_user`;
CREATE TABLE `ym_user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '疫苗用户id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '疫苗用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '疫苗用户密码',
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '疫苗用户真实姓名',
  `card_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '疫苗用户身份证号',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '疫苗用户手机号',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '疫苗用户地址',
  `district_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '疫苗用户所在地区编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of ym_user
-- ----------------------------
BEGIN;
INSERT INTO `ym_user` (`id`, `username`, `password`, `real_name`, `card_id`, `phone`, `address`, `district_code`) VALUES (6, 'ww666', '123456', '王五', '520113198911036359', '18880909123', '南京市雨花台区华博智慧园', '520113');
INSERT INTO `ym_user` (`id`, `username`, `password`, `real_name`, `card_id`, `phone`, `address`, `district_code`) VALUES (7, 'zl666', '123456', '赵六', '520111199907289635', '18880903698', '南京市雨花台区华博智慧园', '520111');
INSERT INTO `ym_user` (`id`, `username`, `password`, `real_name`, `card_id`, `phone`, `address`, `district_code`) VALUES (8, 'sq666', '123456', '孙七', '520102199003256536', '18880904592', '南京市雨花台区华博智慧园', '520102');
COMMIT;

-- ----------------------------
-- Table structure for ym_vaccine
-- ----------------------------
DROP TABLE IF EXISTS `ym_vaccine`;
CREATE TABLE `ym_vaccine` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '疫苗id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '疫苗名称',
  `price` float DEFAULT NULL COMMENT '疫苗价格',
  `manufacturer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '疫苗厂家',
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '疫苗分类',
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '疫苗详情',
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '疫苗图片地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of ym_vaccine
-- ----------------------------
BEGIN;
INSERT INTO `ym_vaccine` (`id`, `name`, `price`, `manufacturer`, `category`, `detail`, `img_url`) VALUES (9, '新冠CHO疫苗', 0, '武汉生物', '二类', '可以有效预防新冠肺炎', '/dfc1488ea9eb40f1b22e0647a801564b.jpg');
INSERT INTO `ym_vaccine` (`id`, `name`, `price`, `manufacturer`, `category`, `detail`, `img_url`) VALUES (10, 'HPV疫苗', 799.99, '万泰生物', '二类', '可以有效预防HPV病毒感染', '/9d8dd75693d346ec935eeb7034038218.jpg');
INSERT INTO `ym_vaccine` (`id`, `name`, `price`, `manufacturer`, `category`, `detail`, `img_url`) VALUES (11, '乙肝疫苗', 29.99, '恒瑞医药', '二类', '可以有效预防乙型肝炎', '/a314703e2abc40309130fb16cdff2f9a.jpg');
COMMIT;

-- ----------------------------
-- Table structure for ym_worker
-- ----------------------------
DROP TABLE IF EXISTS `ym_worker`;
CREATE TABLE `ym_worker` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `card_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `inoculate_site_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of ym_worker
-- ----------------------------
BEGIN;
INSERT INTO `ym_worker` (`id`, `username`, `password`, `real_name`, `card_id`, `phone`, `inoculate_site_id`) VALUES (4, 'ce666', '123456', '陈二', '520113199512283970', '13798756326', 10);
INSERT INTO `ym_worker` (`id`, `username`, `password`, `real_name`, `card_id`, `phone`, `inoculate_site_id`) VALUES (5, 'zs666', '123456', '张三', '520111199004053672', '15883026740', 11);
INSERT INTO `ym_worker` (`id`, `username`, `password`, `real_name`, `card_id`, `phone`, `inoculate_site_id`) VALUES (6, 'ls666', '123456', '李四', '52010211253841', '13786243598', 9);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

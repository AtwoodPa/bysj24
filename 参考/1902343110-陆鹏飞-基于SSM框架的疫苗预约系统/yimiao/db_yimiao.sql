/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : db_yimiao

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 07/06/2022 17:26:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for children
-- ----------------------------
DROP TABLE IF EXISTS `children`;
CREATE TABLE `children`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '儿童id',
  `uid` int NULL DEFAULT NULL COMMENT '预约人id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '儿童姓名',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int NULL DEFAULT NULL COMMENT '年龄',
  `guomin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '过敏药物',
  `isdel` int NULL DEFAULT NULL COMMENT '删除标记',
  `bak1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  `bak2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of children
-- ----------------------------
INSERT INTO `children` VALUES (1, 3, '大娃', ' 男', 8, '无', 0, NULL, NULL);
INSERT INTO `children` VALUES (2, 3, '二娃', '女', 8, '胰岛素', 0, NULL, NULL);
INSERT INTO `children` VALUES (3, 3, 'test3', '男', 18, '无', 1, NULL, NULL);

-- ----------------------------
-- Table structure for firm
-- ----------------------------
DROP TABLE IF EXISTS `firm`;
CREATE TABLE `firm`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '厂家id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '厂家名称',
  `content` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '厂家介绍',
  `pic` varchar(2555) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '厂家照片',
  `isdel` int NULL DEFAULT NULL COMMENT '删除标记',
  `bak1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  `bak2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of firm
-- ----------------------------
INSERT INTO `firm` VALUES (1, '大丰制药', '<h4><span style=\"font-weight: bold;\">大丰制药</span></h4><div><span style=\"font-weight: bold;\"><br></span></div><div><h4>公司由世界著名的制药设计机构——NNE Pharm设计，安装配置了国际先进水平的制剂生产设施、设备和分析仪器，拥有一支制剂国际化的研发、生产和质量管理团队。公司以制剂技术创新和GMP符合性为核心，以缓控释技术药品研发和生产为特色，面向国内和欧美等海外市场，致力于建设仿制药的国际化制造平台。目前已陆续研发和申报制剂产品至美国FDA。</h4></div><p><img src=\"/yimiao/images/yao1.jpg\" style=\"max-width: 100%;\"></p>', 'yao1.jpg', 0, NULL, NULL);
INSERT INTO `firm` VALUES (2, '小川制药', '<h4><span style=\"font-weight: bold;\">小川制药</span></h4><div><span style=\"font-weight: bold;\"><br></span></div><h4>小川制药公司是百洋医药集团合资创建的制药企业，主要从事化学固体制剂药品及原料药的研发、生产和销售。公司位于青岛即墨市营城路268号，占地面积56000㎡，其中一期建筑面积达到18,000㎡，具有生产渗透泵、微丸包衣、骨架片等缓控释固体制剂产品的设施、设备及其技术能力。</h4><p><img src=\"/yimiao/images/yao2.jpg\" style=\"max-width:100%;\"><br></p>', 'yao2.jpg', 0, NULL, NULL);
INSERT INTO `firm` VALUES (3, '高科制药', '<h4><span style=\"font-weight: bold;\">高科制药</span></h4><div><span style=\"font-weight: bold;\"><br></span></div><h5><span style=\"font-weight: bold;\">公司是百洋医药集团合资创建的制药企业，主要从事化学固体制剂药品及原料药的研发、生产和销售。公司位于青岛即墨市营城路268号，占地面积56000㎡，其中一期建筑面积达到18,000㎡，具有生产渗透泵、微丸包衣、骨架片等缓控释固体制剂产品的设施、设备及其技术能力。</span></h5><p><br></p><p><img src=\"/yimiao/images/yao3.jpg\" style=\"max-width:100%;\"><br></p>', 'yao3.jpg', 0, NULL, NULL);
INSERT INTO `firm` VALUES (4, '北京科兴中维生物技术', '<p>经营范围包括研究、开发生物疫苗技术；诊断试剂盒技术，提供技术服务、技术咨询、技术转让；销售自产产品；批发生物原料（不涉及国营贸易管理商品；涉及配额许可证管理商品的按照国家有关规定办理申请手续）；货物进出口；生产药品（生物药品生产）；道路货物运输（不含危险货物）；销售第三类医疗器械（以医疗器械经营许可证为准）。（市场主体依法自主选择经营项目，开展经营活动；销售第三类医疗器械（以医疗器械经营许可证为准）、道路货物运输（不含危险货物）以及依法须经批准的项目，经相关部门批准后依批准的内容开展经营活动；不得从事国家和本市产业政策禁止和限制类项目的经营活动。）<br></p>', 'OIP-C.jpg', 0, NULL, NULL);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '新闻id',
  `tid` int NULL DEFAULT NULL COMMENT '类型id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `optime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布时间',
  `content` varchar(2555) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `zan` int NULL DEFAULT NULL COMMENT '点赞数',
  `isdel` int NULL DEFAULT NULL COMMENT '删除标记',
  `bak1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  `bak2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, 1, '抓紧时间！下一波新冠疫情到来前，请及时接种流感疫苗！', '2022-04-19', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;新冠病毒目前仍然在全球蔓延，美国、巴西、印度等国家新增病例惊人，若继续这样下去，全球没有哪个国家能成为安全的孤岛。本以为，南半球夏季的到来，会让新冠病毒“知难而退”，但钟南山早就说过，这种想法观念是天真的。如今，新冠病毒不仅走过了春夏两季，而且还有可能会在秋冬季节“重整旗鼓”，继续与人类战斗！</p><p>　　张文宏曾表示，2020年11月份，新一波的疫情将会到来<strong>，</strong>我们也将会面临着巨大的挑战。到那时，战役吃紧，人们更应提高警惕，防疫措施必须要做足、做好。</p><p><img src=\"https://image.39.net/auth/w/20180910/55713.jpg\"><br></p><p><strong>流感疫情，也不可掉以轻心</strong></p><p>　　实际上，秋冬之际，流感疫情也在“虎视眈眈”着，幻想着与新冠“分一杯羹”。</p><p>　　秋冬是流感的高发季节，<strong>近几年来我国流感发病率与病死率逐渐上升，仅去年5月份，流感上报病例就高达177万。流感致病率较高，全球每年约有5%-10%的成年人和20%-30%的儿童患季节性流感。此外，每年都会在全球各地蔓延，导致25-50万人死亡。</strong></p><p>　　流感与新冠肺炎很像，同样是由病毒引起，同样会引发呼吸道感染，同样会导致发热、咳嗽等症状，同样具有传染性，若不及时处理同样具有死亡风险！</p><p>　　<strong>新冠疫情反弹、季节性流感高发，二者在秋冬之际叠加起来，无疑给新冠疫情的防控增加了挑战。</strong>因此，为降低新冠与流感的鉴别诊断难度，降低隔离成本，减少社会资源投入，预防季节性流感，亟需重视！</p>', 'tu1.jpg', 23, 0, NULL, NULL);
INSERT INTO `news` VALUES (2, 2, 'HIB是什么疫苗？有必要接种吗？', '2022-04-20', '<p>说起HIB很多人并不知晓，由此，对于HIB疫苗更是陌生。那么，<strong>HIB是什么疫苗呢？</strong>其实，HIB是在新生儿时期多发的b型流感嗜血杆菌，感染后会使婴幼儿发生严重的疾病，情况严重的时候会危及新生儿的生命。因此，国家发行了HIB疫苗，其归属于国家二级疫苗。那么HIB做为二级疫苗，有必要接种吗？<br></p><p><strong>HIB疫苗有必要接种吗？</strong><br></p><p>根据研究显示，HIB作为新生儿阶段易感且患病后情况易重的疾病，主要的传染途径是通过人与人之间的飞沫而进行直接传播。在菌体通过飞沫进入到新生儿鼻腔或咽喉的时候，新生儿初期可能还不会有异常的出现，但当菌体吸收散播至机体肺部和全身血液循环系统后，b型流感嗜血杆菌就会开始攻击机体免疫系统，从而引起新生儿同时爆发多种疾病。<strong><br></strong></p><p><img src=\"/yimiao/images/tu2.jpg\" style=\"max-width:100%;\"><br></p><p>除此之外，根据美国调查数据显示，美国本土每年至少会有两万名左右的新生儿或低龄幼儿受到b型流感嗜血杆菌的威胁。其中，这些生命受到威胁的幼儿群体当中，死亡率达到了3%-6%。而在全球幼儿当中，约有三百万的生命每年会面临b型流感嗜血杆菌的威胁，感染后死亡率同样是高达3%-6%。在中国，数据更加明显：每年有50%左右的幼儿患化脓性脑膜炎、30%左右的幼儿患肺炎，其全由HIB所引起。所以，在中国乃至全球，给新生儿接种HIB疫苗是预防感染HIB的必然措施。<br></p><p><strong>接种HIB疫苗后主要能预防哪些幼儿常见疾病？&nbsp;</strong><br><br>1.脑膜炎。根据临床研究显示，HIB引起的脑膜炎致死率居高，且全球每年因HIB引起脑膜炎而死亡的幼儿超过50000人。即使幸存，大部分还会伴有智力、视力、听力、行为不协调等障碍，影响正常生活。<br><br>2.厌炎。一种发病后可以使幼儿产生呼吸困难、喉部肿胀等急性症状的气道阻塞性疾病，会危及幼儿生命。<br><br>3.其他疾病。菌血症：发病特征为全身性的感染，可危及生命；肺炎：为世界各地幼儿常发的疾病之一，每年因此死亡的人数居高不下；心包炎：患者心脏受到感染而引发死亡。<br></p>', 'tu2.jpg', 2, 0, NULL, NULL);
INSERT INTO `news` VALUES (3, 3, '“动态清零”和“零感染”有何区别？', '2022-05-02', '<p>　　新华社北京5月2日电 当前全球疫情仍处于高位。我国疫情呈现点多面广、规模化与散发聚集性疫情并存、多点多源多链等特点。“动态清零”和“零感染”有何区别？如何救治重症患者？“五一”期间怎样做好货运物流保通保畅工作？国务院联防联控机制有关专家作出权威解答。</p><p>　　<strong>“动态清零”不是绝对的“零感染”</strong></p><p>　　“动态清零”和“零感染”有什么区别？</p><p>　　“‘动态清零’不是绝对的‘零感染’”。国家卫生健康委副主任李斌表示，面对奥密克戎等变异株的挑战，在丰富的防控实践中，我国积累了一套卓有成效的防控措施，因时因势对防控措施不断优化升级。<img src=\"/yimiao/images/2022521651489016439_487.jpg\" style=\"max-width: 100%;\"></p>', '', 0, 1, NULL, NULL);
INSERT INTO `news` VALUES (4, 3, '“动态清零”和“零感染”有何区别？', '2022-05-02', '<h3><p>　新华社北京5月2日电 当前全球疫情仍处于高位。我国疫情呈现点多面广、规模化与散发聚集性疫情并存、多点多源多链等特点。“动态清零”和“零感染”有何区别？如何救治重症患者？“五一”期间怎样做好货运物流保通保畅工作？国务院联防联控机制有关专家作出权威解答。</p><p>　　<strong>“动态清零”不是绝对的“零感染”</strong></p><p>　　“动态清零”和“零感染”有什么区别？</p><p>　　“‘动态清零’不是绝对的‘零感染’”。国家卫生健康委副主任李斌表示，面对奥密克戎等变异株的挑战，在丰富的防控实践中，我国积累了一套卓有成效的防控措施，因时因势对防控措施不断优化升级。</p></h3>', '屏幕截图 2022-05-02 194721.png', 1, 0, NULL, NULL);

-- ----------------------------
-- Table structure for newstype
-- ----------------------------
DROP TABLE IF EXISTS `newstype`;
CREATE TABLE `newstype`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '资讯类型id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资讯类型名称',
  `isdel` int NULL DEFAULT NULL COMMENT '删除标记',
  `bak1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  `bak2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of newstype
-- ----------------------------
INSERT INTO `newstype` VALUES (1, '健康资讯', 0, NULL, NULL);
INSERT INTO `newstype` VALUES (2, '产品资讯', 0, NULL, NULL);
INSERT INTO `newstype` VALUES (3, '疫情咨询', 0, NULL, NULL);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '公告id',
  `content` varchar(2500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `isdel` int NULL DEFAULT NULL COMMENT '删除标记',
  `bak1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  `bak2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '一类新冠疫苗补货了！', 0, NULL, NULL);
INSERT INTO `notice` VALUES (2, '一批新的疫苗已上线！', 0, NULL, NULL);
INSERT INTO `notice` VALUES (3, '疫苗全面降低售价！', 1, NULL, NULL);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '预约信息id',
  `uid` int NULL DEFAULT NULL COMMENT '预约人id',
  `cid` int NULL DEFAULT NULL COMMENT '儿童id',
  `yid` int NULL DEFAULT NULL COMMENT '疫苗id',
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接种时间',
  `no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接种码',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预约状态',
  `isdel` int NULL DEFAULT NULL COMMENT '删除标记',
  `bak1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  `bak2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 3, 1, 1, '2022-04-20', '42342351256', '已接种', 0, '记录已添加', '1');
INSERT INTO `orders` VALUES (11, 3, 1, 2, '2022-04-16', '20173036690', '已预约', 0, NULL, '1');
INSERT INTO `orders` VALUES (12, 3, 1, 2, '2022-04-23', '20230741007', '已接种', 0, '记录已添加', '1');
INSERT INTO `orders` VALUES (13, 3, 1, 2, '2022-04-24', '20231611199', '已接种', 0, '记录已添加', '1');
INSERT INTO `orders` VALUES (14, 3, 1, 2, '2022-04-23', '22190136332', '已预约', 0, NULL, '0');
INSERT INTO `orders` VALUES (15, 3, 1, 3, '2022-06-05', '01135304660', '已接种', 0, NULL, '0');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '接种记录id',
  `oid` int NULL DEFAULT NULL COMMENT '预约信息id',
  `uid` int NULL DEFAULT NULL COMMENT '预约人id',
  `cid` int NULL DEFAULT NULL COMMENT '儿童id',
  `yid` int NULL DEFAULT NULL COMMENT '疫苗id',
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接种位置',
  `mode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接种方式',
  `doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生',
  `isdel` int NULL DEFAULT NULL COMMENT '删除标记',
  `bak1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  `bak2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES (1, 1, 3, 1, 1, '左臂', '手臂注射', '陆鹏飞', 0, '0', '0');
INSERT INTO `record` VALUES (2, 12, 3, 1, 2, '右臂', '手臂注射', '陆鹏飞', 0, '0', '0');
INSERT INTO `record` VALUES (3, 13, 3, 1, 2, '右臂', '手臂注射', '陆鹏飞', 0, '0', '0');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `dizhi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `role` int NULL DEFAULT NULL COMMENT '身份',
  `isdel` int NULL DEFAULT NULL COMMENT '删除标记',
  `bak1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段1',
  `bak2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段2',
  `bak3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '111', '陆总', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `users` VALUES (2, 'doctor', '111', '陆鹏飞', '13961506206', NULL, NULL, 1, 0, NULL, NULL, NULL);
INSERT INTO `users` VALUES (3, '111', '111', 'lpf', '13961506206', '3037377963@qq.com', '江苏省南京市栖霞区', 2, 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for yimiao
-- ----------------------------
DROP TABLE IF EXISTS `yimiao`;
CREATE TABLE `yimiao`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '疫苗id',
  `fid` int NULL DEFAULT NULL COMMENT '厂家id',
  `tid` int NULL DEFAULT NULL COMMENT '疫苗类型id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '疫苗名称',
  `price` int NULL DEFAULT NULL COMMENT '疫苗价格',
  `no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生产批号',
  `stock` int NULL DEFAULT NULL COMMENT '疫苗库存',
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生产日期',
  `yonliang` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '疫苗用量',
  `apply` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '适用年龄',
  `pic` varchar(2555) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '疫苗图片',
  `isdel` int NULL DEFAULT NULL COMMENT '删除标记',
  `bak1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  `bak2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yimiao
-- ----------------------------
INSERT INTO `yimiao` VALUES (1, 1, 1, '新冠疫苗', 0, '20220419', 5000, '2022-04-19', '5ml', '10岁以上', 'OIP-C.jpg', 0, NULL, NULL);
INSERT INTO `yimiao` VALUES (2, 2, 2, '新冠疫苗', 200, '20220411', 600, '2022-04-11', '8ml', '12岁以上', 'yimiao.jpg', 0, NULL, NULL);
INSERT INTO `yimiao` VALUES (3, 1, 4, 'HPV疫苗', 605, '008257', 99, '2022-04-30', '6个月三真', '20-45岁', 'hpv.jpg', 0, NULL, NULL);

-- ----------------------------
-- Table structure for yimiaotype
-- ----------------------------
DROP TABLE IF EXISTS `yimiaotype`;
CREATE TABLE `yimiaotype`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '疫苗类型id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '疫苗类型名称',
  `isdel` int NULL DEFAULT NULL COMMENT '删除标记',
  `bak1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  `bak2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yimiaotype
-- ----------------------------
INSERT INTO `yimiaotype` VALUES (1, '一类疫苗', 0, NULL, NULL);
INSERT INTO `yimiaotype` VALUES (2, '二类疫苗', 0, NULL, NULL);
INSERT INTO `yimiaotype` VALUES (3, '灭活疫苗', 0, NULL, NULL);
INSERT INTO `yimiaotype` VALUES (4, '腺病毒载体疫苗', 0, NULL, NULL);
INSERT INTO `yimiaotype` VALUES (5, '重组蛋白疫苗', 0, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;

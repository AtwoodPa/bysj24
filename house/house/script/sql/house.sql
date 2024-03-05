-- ----------------------------
-- Table structure for cms_article 内容管理cms
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article`
(
    `id`              bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
    `article_type`    varchar(50)  NOT NULL COMMENT '类型',
    `small_title`     varchar(100) NOT NULL COMMENT '简短标题',
    `big_title`       varchar(200) DEFAULT NULL COMMENT '完整标题',
    `face_url`        varchar(200) DEFAULT NULL COMMENT '封面图',
    `face_thum`       varchar(200) DEFAULT NULL COMMENT '缩略图',
    `article_content` mediumtext COMMENT '内容',
    `article_source`  varchar(50)  DEFAULT NULL COMMENT '来源',
    `sort_no`         int(4) DEFAULT NULL COMMENT '排序号',
    `star_Num`        int(10) DEFAULT NULL,
    `create_time`     datetime     DEFAULT NULL COMMENT '创建时间',
    `create_by`       varchar(50)  DEFAULT NULL COMMENT '创建人',
    `update_time`     datetime     DEFAULT NULL COMMENT '修改时间',
    `update_by`       varchar(50)  DEFAULT NULL COMMENT '修改人',
    `remark`          varchar(100) DEFAULT NULL COMMENT '备注',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8 COMMENT='文章内容管理';

-- ----------------------------
-- Records of cms_article
-- ----------------------------

-- ----------------------------
-- Table structure for cms_feedback
-- ----------------------------
DROP TABLE IF EXISTS `cms_feedback`;
CREATE TABLE `cms_feedback`
(
    `id`           bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
    `feed_type`    varchar(255) DEFAULT NULL COMMENT '类别',
    `feed_title`   varchar(255) DEFAULT NULL COMMENT '标题',
    `feed_content` varchar(255) DEFAULT NULL COMMENT '详情',
    `create_by`    varchar(64)  DEFAULT NULL,
    `create_time`  datetime     DEFAULT NULL,
    `update_by`    varchar(64)  DEFAULT NULL,
    `update_time`  datetime     DEFAULT NULL,
    `remark`       varchar(255) DEFAULT NULL COMMENT '备注',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COMMENT='用户反馈管理（用户发布求租信息，找舍友信息）';

-- 房源特色 看房方便，交通便利，独立卫生间，独立阳台，独立厨房，家具家电齐全，拎包入住
DROP TABLE IF EXISTS `house_feature`;
CREATE TABLE `house_feature`
(
    `id`       bigint(20) NOT NULL AUTO_INCREMENT,
    `house_id` bigint(20) NOT NULL COMMENT '房源id',
    `feature`  varchar(10) DEFAULT NULL COMMENT '特色描述',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=608 DEFAULT CHARSET=utf8 COMMENT='房源特色';

-- 房屋收藏
DROP TABLE IF EXISTS `house_heart`;
CREATE TABLE `house_heart`
(
    `id`          bigint(20) NOT NULL AUTO_INCREMENT,
    `house_id`    bigint(20) NOT NULL COMMENT '房屋id',
    `user_id`     bigint(20) NOT NULL COMMENT '用户id',
    `create_time` datetime DEFAULT NULL COMMENT '收藏时间',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=551 DEFAULT CHARSET=utf8 COMMENT='房屋收藏';

-- 房源图片表
DROP TABLE IF EXISTS `house_image`;
CREATE TABLE `house_image`
(
    `id`         bigint(20) NOT NULL AUTO_INCREMENT,
    `house_id`   bigint(20) DEFAULT NULL COMMENT '房源id',
    `image_name` varchar(50)  DEFAULT NULL COMMENT '图片名称',
    `image_path` varchar(200) DEFAULT NULL COMMENT '图片路径',
    `img_url`    varchar(200) DEFAULT NULL COMMENT '图片url',
    `image_size` float(11, 2) DEFAULT NULL COMMENT '图片大小',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=357 DEFAULT CHARSET=utf8 COMMENT='房源图片';

-- 房源详情

DROP TABLE IF EXISTS `house_room`;
CREATE TABLE `house_room`
(
    `id`         bigint(20) NOT NULL AUTO_INCREMENT,
    `type`       int(1) NOT NULL COMMENT '0整租/1合租',
    `house_num`  varchar(2) DEFAULT NULL COMMENT '居室',
    `toilet_num` varchar(2) DEFAULT NULL COMMENT '卫生间',
    `house_area` float(6, 2) DEFAULT NULL COMMENT '整套面积',
  `room_type` int(1) DEFAULT NULL COMMENT '1主卧,2次卧',
  `room_code` varchar(10) DEFAULT NULL COMMENT '房间号',
  `room_area` float(6,0) DEFAULT NULL COMMENT '房屋面积',
  `direction` varchar(2) DEFAULT NULL COMMENT '朝向',
  `price` decimal(10,2) DEFAULT NULL COMMENT '租金',
  `floor` varchar(10) DEFAULT NULL COMMENT '楼层',
  `step_type` varchar(10) DEFAULT NULL COMMENT '楼房类型',
  `start_date` datetime DEFAULT NULL COMMENT '起租日期',
  `introduce` varchar(255) DEFAULT NULL COMMENT '房源描述',
  `owner_name` varchar(20) DEFAULT NULL COMMENT '房东姓名',
  `ower_phone` varchar(11) DEFAULT NULL COMMENT '房东电话',
  `village_id` bigint(20) DEFAULT NULL COMMENT '小区id',
  `village_name` varchar(20) DEFAULT NULL COMMENT '小区名称',
  `address` varchar(100) DEFAULT NULL COMMENT '具体地址',
  `house_no` varchar(50) DEFAULT NULL COMMENT '房牌号',
  `pay_type` varchar(10) DEFAULT NULL COMMENT '付款方式',
  `publish_id` bigint(20) DEFAULT NULL COMMENT '发布人id',
  `state` int(1) DEFAULT NULL COMMENT '0：待出租, 1：已出租, 2:下架',
  `create_time` datetime DEFAULT NULL,
  `create_name` varchar(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_name` varchar(20) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `house_Hall` varchar(2) DEFAULT NULL COMMENT '客厅数量',
  `code` varchar(32) DEFAULT NULL COMMENT '房源编号',
  `face_Url` varchar(200) NOT NULL COMMENT '封面图',
  `decoration` varchar(50) DEFAULT NULL COMMENT '装修情况',
  `agent_Name` varchar(20) DEFAULT NULL COMMENT '经纪人姓名',
  `agent_Phone` varchar(20) DEFAULT NULL COMMENT '经纪人电话',
  `agent_User_Id` bigint(20) DEFAULT NULL COMMENT '经纪人id',
  `agent_Avatar` varchar(255) DEFAULT NULL COMMENT '经纪人头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_unique_house` (`publish_id`,`village_id`,`address`,`house_no`,`price`,`ower_phone`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8 COMMENT='房源详情';

-- 出租信息表
DROP TABLE IF EXISTS `house_user`;
CREATE TABLE `house_user`
(
    `id`           bigint(20) NOT NULL AUTO_INCREMENT,
    `house_id`     bigint(20) NOT NULL COMMENT '房源id',
    `user_id`      bigint(20) NOT NULL COMMENT '用户id',
    `publish_id`   bigint(20) NOT NULL COMMENT '发布人id(房东id)',
    `actual_price` decimal(10, 2) NOT NULL COMMENT '实际价格',
    `state`        int(1) NOT NULL COMMENT '0：待出租, 1：已出租, 2:下架',
    `create_time`  datetime                          DEFAULT NULL,
    `create_by`    varchar(50) CHARACTER SET latin1  DEFAULT NULL,
    `update_time`  datetime                          DEFAULT NULL,
    `update_by`    varchar(50) CHARACTER SET latin1  DEFAULT NULL,
    `remark`       varchar(100) CHARACTER SET latin1 DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='出租信息';

-- 小区表
DROP TABLE IF EXISTS `house_village`;
CREATE TABLE `house_village`
(
    `id`       bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
    `province` varchar(10) NOT NULL COMMENT '省',
    `city`     varchar(20) NOT NULL COMMENT '市',
    `area`     varchar(50) NOT NULL COMMENT '区',
    `name`     varchar(50) NOT NULL COMMENT '名称',
    `code`     varchar(50) DEFAULT NULL COMMENT '代号',
    `year`     int(4) DEFAULT NULL COMMENT '年份',
    `type`     varchar(20) DEFAULT NULL COMMENT '建筑类型',
    `green`    float(5, 2) DEFAULT NULL COMMENT '绿化率',
  `introduce` varchar(200) DEFAULT NULL COMMENT '介绍',
  `way_state` int(1) DEFAULT NULL COMMENT '靠近地铁',
  `way_code` varchar(20) DEFAULT NULL COMMENT '地铁线路',
  `way_space` int(8) DEFAULT NULL COMMENT '地铁距离',
  `lon` decimal(10,6) DEFAULT NULL COMMENT '经度',
  `Lat` decimal(10,6) DEFAULT NULL COMMENT '纬度',
  `state` int(1) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL,
  `create_by` varchar(50) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_by` varchar(50) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='房源小区';
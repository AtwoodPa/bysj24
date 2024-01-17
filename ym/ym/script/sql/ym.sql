-- 疫苗表
CREATE TABLE IF NOT EXISTS ym_vaccine
(
    vaccine_id bigint(20) not null comment '疫苗id',
    vaccine_name VARCHAR(255) NOT NULL comment '疫苗名称',
    type_id INT NOT NULL comment '疫苗类型id',
    manufacturer_id bigint NOT NULL comment '疫苗厂家id',
    description VARCHAR(500) comment '疫苗信息描述',
    primary key (vaccine_id),
    FOREIGN KEY(type_id) REFERENCES ym_vaccine_type(type_id),
    FOREIGN KEY(manufacturer_id) REFERENCES ym_manufacturer(manufacturer_id)
    ) COMMENT='疫苗表，存储疫苗信息';
-- 疫苗类型表
CREATE TABLE IF NOT EXISTS ym_vaccine_type
(
    type_id INT AUTO_INCREMENT PRIMARY KEY comment '类型id',
    type_name VARCHAR(255) NOT NULL comment '疫苗类型名称'
    ) COMMENT='疫苗类型表，存储疫苗的类型信息';
-- 插入疫苗类型数据
INSERT INTO ym_vaccine_type (type_name)
VALUES ('灭活疫苗'),
       ('减毒活疫苗'),
       ('亚单位疫苗'),
       ('基因工程疫苗');
-- 疫苗厂家表
CREATE TABLE IF NOT EXISTS ym_manufacturer
(
    manufacturer_id bigint(20) AUTO_INCREMENT PRIMARY KEY,
    facturer_name VARCHAR(255) NOT NULL,
    address VARCHAR(255),
    description varchar(500) comment '厂家信息描述'
    )engine=innodb COMMENT='疫苗厂家表，存储疫苗厂家信息';
-- 插入疫苗厂家数据
INSERT INTO ym_manufacturer (facturer_name, address,description)
VALUES ('武汉生物', '湖北省武汉市东湖新技术开发区生物产业基地','武汉生物是中国最大的生物制品生产企业之一，产品涵盖多种疫苗。'),
       ('北京生物', '北京市丰台区南四环西路11号','北京生物是中国生物制品领域的知名企业，产品广泛应用于临床。'),
       ('长春长生', '吉林省长春市经济技术开发区创新街2888号','长春长生是中国疫苗行业的领军企业之一，致力于疫苗的研发和生产。');
-- 预约表
CREATE TABLE IF NOT EXISTS ym_appointment
(
    appointment_ID INT AUTO_INCREMENT PRIMARY KEY,
    user_id bigint NOT NULL,
    vaccine_id bigint NOT NULL,
    status int(3) NOT NULL comment '预约状态（0_Booked 1_Pending 2_Completed）',
    create_time   datetime  comment '创建时间',
    update_time   datetime  comment '更新时间',
    FOREIGN KEY(user_id) REFERENCES sys_user(user_id),
    FOREIGN KEY(vaccine_id) REFERENCES ym_vaccine(vaccine_id)
    ) COMMENT='预约表，存储用户预约信息';

-- 接种记录表
CREATE TABLE IF NOT EXISTS ym_vaccination_record
(
    record_id INT AUTO_INCREMENT PRIMARY KEY comment '记录id',
    user_id bigint NOT NULL comment '用户id',
    vaccine_id bigint NOT NULL comment '疫苗id',
    create_time   datetime  comment '创建时间',
    update_time   datetime  comment '更新时间',
    FOREIGN KEY(user_id) REFERENCES sys_user(user_id),
    FOREIGN KEY(vaccine_id) REFERENCES ym_vaccine(vaccine_id)
    ) COMMENT='接种记录表，存储用户接种记录';


-- ----------------------------
-- 1、用户信息表
-- ----------------------------
drop table if exists sys_user;
create table sys_user (
                          user_id           bigint(20)      not null     comment '用户ID',
                          user_name         varchar(30)     not null                   comment '用户账号',
                          nick_name         varchar(30)     not null                   comment '用户昵称',
                          user_type         varchar(10)     default 'sys_user'         comment '用户类型（sys_user系统用户）',
                          email             varchar(50)     default ''                 comment '用户邮箱',
                          phonenumber       varchar(11)     default ''                 comment '手机号码',
                          sex               char(1)         default '0'                comment '用户性别（0男 1女 2未知）',
                          avatar            varchar(100)    default ''                 comment '头像地址',
                          password          varchar(100)    default ''                 comment '密码',
                          status            char(1)         default '0'                comment '帐号状态（0正常 1停用）',
                          del_flag          char(1)         default '0'                comment '删除标志（0代表存在 2代表删除）',
                          login_ip          varchar(128)    default ''                 comment '最后登录IP',
                          login_date        datetime                                   comment '最后登录时间',
                          create_by         varchar(64)     default ''                 comment '创建者',
                          create_time       datetime                                   comment '创建时间',
                          update_by         varchar(64)     default ''                 comment '更新者',
                          update_time       datetime                                   comment '更新时间',
                          remark            varchar(500)    default null               comment '备注',
                          primary key (user_id)
) engine=innodb comment = '用户信息表';

-- ----------------------------
-- 初始化-用户信息表数据
-- ----------------------------
insert into sys_user values(1, 'admin', '超级管理员', 'sys_user', 'superadmin@pp.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', sysdate(), 'admin', sysdate(), '', null, '超级管理员');
insert into sys_user values(2, 'panpan', '管理员', 'sys_user', 'panpan@pp.com',  '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', sysdate(), 'admin', sysdate(), '', null, '测试员');

-- ----------------------------
-- 2、角色信息表
-- ----------------------------
drop table if exists sys_role;
create table sys_role (
                          role_id              bigint(20)      not null                   comment '角色ID',
                          role_name            varchar(30)     not null                   comment '角色名称',
                          role_key             varchar(100)    not null                   comment '角色权限字符串',
                          role_sort            int(4)          not null                   comment '显示顺序',
                          data_scope           char(1)         default '1'                comment '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
                          menu_check_strictly  tinyint(1)      default 1                  comment '菜单树选择项是否关联显示',
                          dept_check_strictly  tinyint(1)      default 1                  comment '部门树选择项是否关联显示',
                          status               char(1)         not null                   comment '角色状态（0正常 1停用）',
                          del_flag             char(1)         default '0'                comment '删除标志（0代表存在 2代表删除）',
                          create_by            varchar(64)     default ''                 comment '创建者',
                          create_time          datetime                                   comment '创建时间',
                          update_by            varchar(64)     default ''                 comment '更新者',
                          update_time          datetime                                   comment '更新时间',
                          remark               varchar(500)    default null               comment '备注',
                          primary key (role_id)
) engine=innodb comment = '角色信息表';

-- ----------------------------
-- 初始化-角色信息表数据
-- ----------------------------
insert into sys_role values('1', '超级管理员',  'admin',  1, 1, 1, 1, '0', '0', 'admin', sysdate(), '', null, '超级管理员');
insert into sys_role values('2', '普通角色',    'common', 2, 2, 1, 1, '0', '0', 'admin', sysdate(), '', null, '普通角色');

-- ----------------------------
-- 3、菜单权限表
-- ----------------------------
drop table if exists sys_menu;
create table sys_menu (
                          menu_id           bigint(20)      not null                   comment '菜单ID',
                          menu_name         varchar(50)     not null                   comment '菜单名称',
                          parent_id         bigint(20)      default 0                  comment '父菜单ID',
                          order_num         int(4)          default 0                  comment '显示顺序',
                          path              varchar(200)    default ''                 comment '路由地址',
                          component         varchar(255)    default null               comment '组件路径',
                          query_param       varchar(255)    default null               comment '路由参数',
                          is_frame          int(1)          default 1                  comment '是否为外链（0是 1否）',
                          is_cache          int(1)          default 0                  comment '是否缓存（0缓存 1不缓存）',
                          menu_type         char(1)         default ''                 comment '菜单类型（M目录 C菜单 F按钮）',
                          visible           char(1)         default 0                  comment '显示状态（0显示 1隐藏）',
                          status            char(1)         default 0                  comment '菜单状态（0正常 1停用）',
                          perms             varchar(100)    default null               comment '权限标识',
                          icon              varchar(100)    default '#'                comment '菜单图标',
                          create_by         varchar(64)     default ''                 comment '创建者',
                          create_time       datetime                                   comment '创建时间',
                          update_by         varchar(64)     default ''                 comment '更新者',
                          update_time       datetime                                   comment '更新时间',
                          remark            varchar(500)    default ''                 comment '备注',
                          primary key (menu_id)
) engine=innodb comment = '菜单权限表';

-- 一级菜单
insert into sys_menu values('1', '系统管理', '0', '1', 'system',           null, '', 1, 0, 'M', '0', '0', '', 'system',   'admin', sysdate(), '', null, '系统管理目录');
insert into sys_menu values('2', '疫苗管理', '0', '2', 'vaccine', null, '', 1, 0, 'M', '0', '0', '', 'guide',    'admin', sysdate(), '', null, '疫苗预约管理目录');
insert into sys_menu values('3',  '疫苗预约', '0',   '3', 'user', 'appointment','', 1, 0, 'C', '0', '0', '', 'tool', 'admin', sysdate(), '', null, '疫苗预约目录');
insert into sys_menu values('4',  '疫苗接种', '0',   '4', 'user', 'inoculate', '', 1, 0, 'C', '0', '0', '', 'tool','admin', sysdate(), '', null, '疫苗预约记录菜单');
-- 二级菜单
-- 系统管理
insert into sys_menu values('100',  '用户管理', '1',   '1', 'user',       'system/user/index',        '', 1, 0, 'C', '0', '0', '',        'user',          'admin', sysdate(), '', null, '用户管理菜单');
insert into sys_menu values('101',  '角色管理', '1',   '2', 'role',       'system/role/index',        '', 1, 0, 'C', '0', '0', '',        'peoples',       'admin', sysdate(), '', null, '角色管理菜单');
insert into sys_menu values('102',  '通知公告', '1',   '3', 'notice',     'system/notice/index',      '', 1, 0, 'C', '0', '0', '',      'message',       'admin', sysdate(), '', null, '通知公告菜单');
insert into sys_menu values('103',  '日志管理', '1',   '4', 'log',        '',                         '', 1, 0, 'C', '0', '0', '',                        'log',           'admin', sysdate(), '', null, '日志管理菜单');
-- 疫苗管理 疫苗信息、疫苗类型、疫苗厂家、疫苗库存管理
insert into sys_menu values('104',  '疫苗信息', '2',   '1', 'log',       'vaccine/detail/index',        '', 1, 0, 'C', '0', '0', '',        'user',          'admin', sysdate(), '', null, '疫苗信息管理菜单');
insert into sys_menu values('105',  '疫苗类型', '2',   '2', 'log',       'vaccine/type/index',        '', 1, 0, 'C', '0', '0', '',        'user',          'admin', sysdate(), '', null, '疫苗类型管理菜单');
insert into sys_menu values('106',  '疫苗厂家', '2',   '3', 'log',       'vaccine/factory/index',        '', 1, 0, 'C', '0', '0', '',        'user',          'admin', sysdate(), '', null, '疫苗厂家管理菜单');
insert into sys_menu values('107',  '疫苗库存', '2',   '4', 'log',       'vaccine/stock/index',        '', 1, 0, 'C', '0', '0', '',        'user',          'admin', sysdate(), '', null, '疫苗库存管理菜单');
-- ----------------------------
-- 4、用户和角色关联表  用户N-1角色
-- ----------------------------
drop table if exists sys_user_role;
create table sys_user_role (
                               user_id   bigint(20) not null comment '用户ID',
                               role_id   bigint(20) not null comment '角色ID',
                               primary key(user_id, role_id)
) engine=innodb comment = '用户和角色关联表';

-- ----------------------------
-- 初始化-用户和角色关联表数据
-- ----------------------------
insert into sys_user_role values ('1', '1');
insert into sys_user_role values ('2', '2');

-- ----------------------------
-- 5、角色和菜单关联表  角色1-N菜单
-- ----------------------------
drop table if exists sys_role_menu;
create table sys_role_menu (
                               role_id   bigint(20) not null comment '角色ID',
                               menu_id   bigint(20) not null comment '菜单ID',
                               primary key(role_id, menu_id)
) engine=innodb comment = '角色和菜单关联表';

-- ----------------------------
-- 初始化-角色和菜单关联表数据
-- ----------------------------
insert into sys_role_menu values ('2', '1');
insert into sys_role_menu values ('2', '2');
insert into sys_role_menu values ('2', '3');
insert into sys_role_menu values ('2', '4');
-- ----------------------------
-- 6、操作日志记录
-- ----------------------------
drop table if exists sys_oper_log;
create table sys_oper_log (
                              oper_id           bigint(20)      not null                   comment '日志主键',
                              title             varchar(50)     default ''                 comment '模块标题',
                              business_type     int(2)          default 0                  comment '业务类型（0其它 1新增 2修改 3删除）',
                              method            varchar(100)    default ''                 comment '方法名称',
                              request_method    varchar(10)     default ''                 comment '请求方式',
                              operator_type     int(1)          default 0                  comment '操作类别（0其它 1后台用户 2手机端用户）',
                              oper_name         varchar(50)     default ''                 comment '操作人员',
                              dept_name         varchar(50)     default ''                 comment '部门名称',
                              oper_url          varchar(255)    default ''                 comment '请求URL',
                              oper_ip           varchar(128)    default ''                 comment '主机地址',
                              oper_location     varchar(255)    default ''                 comment '操作地点',
                              oper_param        varchar(2000)   default ''                 comment '请求参数',
                              json_result       varchar(2000)   default ''                 comment '返回参数',
                              status            int(1)          default 0                  comment '操作状态（0正常 1异常）',
                              error_msg         varchar(2000)   default ''                 comment '错误消息',
                              oper_time         datetime                                   comment '操作时间',
                              primary key (oper_id),
                              key idx_sys_oper_log_bt (business_type),
                              key idx_sys_oper_log_s  (status),
                              key idx_sys_oper_log_ot (oper_time)
) engine=innodb comment = '操作日志记录';

-- ----------------------------
-- 7、通知公告表
-- ----------------------------
drop table if exists sys_notice;
create table sys_notice (
                            notice_id         bigint(20)      not null                   comment '公告ID',
                            notice_title      varchar(50)     not null                   comment '公告标题',
                            notice_type       char(1)         not null                   comment '公告类型（1通知 2公告）',
                            notice_content    longblob        default null               comment '公告内容',
                            status            char(1)         default '0'                comment '公告状态（0正常 1关闭）',
                            create_by         varchar(64)     default ''                 comment '创建者',
                            create_time       datetime                                   comment '创建时间',
                            update_by         varchar(64)     default ''                 comment '更新者',
                            update_time       datetime                                   comment '更新时间',
                            remark            varchar(255)    default null               comment '备注',
                            primary key (notice_id)
) engine=innodb comment = '通知公告表';
INSERT INTO sys_notice (notice_id, notice_title, notice_type, notice_content, status, create_by, create_time, update_by, update_time, remark) VALUES
    (1, '关于新型冠状病毒疫苗接种的通知', '1', '根据国家卫生健康委员会的要求，我院将于近期开始新型冠状病毒疫苗接种工作。请广大市民密切关注官方通知，做好接种准备。', '0', '管理员A', '2023-12-20 08:00:00', '管理员A', '2023-12-20 08:00:00', '无');
INSERT INTO sys_notice (notice_id, notice_title, notice_type, notice_content, status, create_by, create_time, update_by, update_time, remark) VALUES
    (2, '关于疫苗接种后注意事项的公告', '2', '疫苗接种后，注意休息，保持充足的水分摄入，避免剧烈运动，观察接种部位是否有异常反应等。如有不适，请及时就医。', '0', '管理员B', '2023-12-20 09:00:00', '管理员B', '2023-12-20 09:00:00', '无');


-- ----------------------------
-- 初始化-公告信息表数据
-- ----------------------------
insert into sys_notice values('1', '温馨提醒：2018-07-01 新版本发布啦', '2', '新版本内容', '0', 'admin', sysdate(), '', null, '管理员');
insert into sys_notice values('2', '维护通知：2018-07-01 系统凌晨维护', '1', '维护内容',   '0', 'admin', sysdate(), '', null, '管理员');

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
    vaccine_id INT NOT NULL,
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
    vaccine_id INT NOT NULL comment '疫苗id',
    create_time   datetime  comment '创建时间',
    update_time   datetime  comment '更新时间',
    FOREIGN KEY(user_id) REFERENCES sys_user(user_id),
    FOREIGN KEY(vaccine_id) REFERENCES ym_vaccine(vaccine_id)
    ) COMMENT='接种记录表，存储用户接种记录';


-- 菜单 SQL
insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(119, '文章内容管理', '3', '1', 'article', 'core/article/index', 1, 0, 'C', '0', '0', 'core:article:list', '#', 'admin', sysdate(), '', null, '文章内容管理菜单');

-- 按钮 SQL
insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(1191, '文章内容管理查询', 119, '1',  '#', '', 1, 0, 'F', '0', '0', 'core:article:query',        '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(1192, '文章内容管理新增', 119, '2',  '#', '', 1, 0, 'F', '0', '0', 'core:article:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(1193, '文章内容管理修改', 119, '3',  '#', '', 1, 0, 'F', '0', '0', 'core:article:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(1194, '文章内容管理删除', 119, '4',  '#', '', 1, 0, 'F', '0', '0', 'core:article:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(1195, '文章内容管理导出', 119, '5',  '#', '', 1, 0, 'F', '0', '0', 'core:article:export',       '#', 'admin', sysdate(), '', null, '');


-- 菜单 SQL
insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(120, '用户反馈管理', '3', '1', 'feedback', 'core/feedback/index', 1, 0, 'C', '0', '0', 'core:feedback:list', '#', 'admin', sysdate(), '', null, '用户反馈管理菜单');

-- 按钮 SQL
insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(1201, '用户反馈管理查询', 120, '1',  '#', '', 1, 0, 'F', '0', '0', 'core:feedback:query',        '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(1202, '用户反馈管理新增', 120, '2',  '#', '', 1, 0, 'F', '0', '0', 'core:feedback:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(1203, '用户反馈管理修改', 120, '3',  '#', '', 1, 0, 'F', '0', '0', 'core:feedback:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(1204, '用户反馈管理删除', 120, '4',  '#', '', 1, 0, 'F', '0', '0', 'core:feedback:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(1205, '用户反馈管理导出', 120, '5',  '#', '', 1, 0, 'F', '0', '0', 'core:feedback:export',       '#', 'admin', sysdate(), '', null, '');

-- 菜单 SQL
insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(121, '房源管理', '5', '1', 'room', 'core/room/index', 1, 0, 'C', '0', '0', 'core:room:list', '#', 'admin', sysdate(), '', null, '房源管理菜单');

-- 按钮 SQL
insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(1211, '房源管理查询', 121, '1',  '#', '', 1, 0, 'F', '0', '0', 'core:room:query',        '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(1212, '房源管理新增', 121, '2',  '#', '', 1, 0, 'F', '0', '0', 'core:room:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(1213, '房源管理修改', 121, '3',  '#', '', 1, 0, 'F', '0', '0', 'core:room:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(1214, '房源管理删除', 121, '4',  '#', '', 1, 0, 'F', '0', '0', 'core:room:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(1215, '房源管理导出', 121, '5',  '#', '', 1, 0, 'F', '0', '0', 'core:room:export',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(122, '出租管理', '5', '1', 'user', 'core/user/index', 1, 0, 'C', '0', '0', 'core:user:list', '#', 'admin', sysdate(), '', null, '出租管理菜单');

-- 按钮 SQL
insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(1221, '出租管理查询', 122, '1',  '#', '', 1, 0, 'F', '0', '0', 'core:user:query',        '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(1222, '出租管理新增', 122, '2',  '#', '', 1, 0, 'F', '0', '0', 'core:user:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(1223, '出租管理修改', 122, '3',  '#', '', 1, 0, 'F', '0', '0', 'core:user:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(1224, '出租管理删除', 122, '4',  '#', '', 1, 0, 'F', '0', '0', 'core:user:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(1225, '出租管理导出', 122, '5',  '#', '', 1, 0, 'F', '0', '0', 'core:user:export',       '#', 'admin', sysdate(), '', null, '');

-- 菜单 SQL
insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(123, '小区管理', '5', '1', 'village', 'core/village/index', 1, 0, 'C', '0', '0', 'core:village:list', '#', 'admin', sysdate(), '', null, '小区管理菜单');

-- 按钮 SQL
insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(1231, '小区管理查询', 123, '1',  '#', '', 1, 0, 'F', '0', '0', 'core:village:query',        '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(1232, '小区管理新增', 123, '2',  '#', '', 1, 0, 'F', '0', '0', 'core:village:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(1233, '小区管理修改', 123, '3',  '#', '', 1, 0, 'F', '0', '0', 'core:village:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(1234, '小区管理删除', 123, '4',  '#', '', 1, 0, 'F', '0', '0', 'core:village:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values(1235, '小区管理导出', 123, '5',  '#', '', 1, 0, 'F', '0', '0', 'core:village:export',       '#', 'admin', sysdate(), '', null, '');

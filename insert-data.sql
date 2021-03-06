-----User_t用户表
insert into user_t(user_id,user_name,user_password)values(user_seq.nextval,'大伟','123456');
insert into user_t
  (user_id, user_name, user_password, sex, age, image_id, role_id)
values
  (user_seq.nextval, '小二', '123456', '男', 20, 1, 6);

-----oprator_t管理员表
insert into oprator_t(oprator_id,oprator_name,oprator_disable,role_id)values(oprator_seq.nextval,'NiuDa',0,7);
insert into oprator_t
  (oprator_id, oprator_name, oprator_disable, role_id)
values
  (oprator_seq.nextval, 'NiuDa', 0, 7);
-----role_t角色表
insert into role_t
  (role_id, role_name, role_discription)
values
  (role_seq.nextval, 'vip1', '打折优惠半折');

insert into role_t
  (role_id, role_name, role_discription)
values
  (role_seq.nextval, 'vip2', '打折优惠1折');

insert into role_t
  (role_id, role_name, role_discription)
values
  (role_seq.nextval, 'vip3', '打折优惠2折，可进入vip商场');
  
insert into role_t
  (role_id, role_name, role_discription)
values
  (role_seq.nextval, 'consumer', '没有打折，只能进入普通商品区');
  
insert into role_t
  (role_id, role_name, role_discription)
values
  (role_seq.nextval, 'guest', '只能看商品，不能添加购物车之类');

insert into role_t
  (role_id, role_name, role_discription)
values
  (role_seq.nextval, 'admin', '权限的CRUD、');
-----permission_t权限表
insert into permission_t(permission_id,permission_name)values(permission_seq.nextval,'VIP_STORE');       --VIP商场
insert into permission_t(permission_id,permission_name)values(permission_seq.nextval,'SHOPPING');        --购物
insert into permission_t(permission_id,permission_name)values(permission_seq.nextval,'LOOK_COMMODITY');  --查看商品具体信息
insert into permission_t(permission_id,permission_name)values(permission_seq.nextval,'DISCOUNT_05');     --优惠半折
insert into permission_t(permission_id,permission_name)values(permission_seq.nextval,'DISCOUNT_10');     --优惠一折
insert into permission_t(permission_id,permission_name)values(permission_seq.nextval,'DISCOUNT_20');     --优惠二折
insert into permission_t(permission_id,permission_name)values(permission_seq.nextval,'DISCOUNT_35');     --优惠35折

insert into permission_t(permission_id,permission_name)values(permission_seq.nextval,'ROLE_DELETE');     --删除角色权限
insert into permission_t(permission_id,permission_name)values(permission_seq.nextval,'ROLE_CREATE');     --添加角色权限
insert into permission_t(permission_id,permission_name)values(permission_seq.nextval,'ROLE_UPDATE');     --修改角色权限


-----role_permission_t角色权限表
insert into role_permission_t(role_id,permission_id)values(2,3);
insert into role_permission_t(role_id,permission_id)values(2,4);
insert into role_permission_t(role_id,permission_id)values(2,5);

insert into role_permission_t(role_id,permission_id)values(3,3);
insert into role_permission_t(role_id,permission_id)values(3,4);
insert into role_permission_t(role_id,permission_id)values(3,6);

insert into role_permission_t(role_id,permission_id)values(4,2);
insert into role_permission_t(role_id,permission_id)values(4,3);
insert into role_permission_t(role_id,permission_id)values(4,4);
insert into role_permission_t(role_id,permission_id)values(4,7);

insert into role_permission_t(role_id,permission_id)values(5,4);

insert into role_permission_t(role_id,permission_id)values(6,3);
insert into role_permission_t(role_id,permission_id)values(6,4);
--为超级管理员添加相应权限
insert into role_permission_t(role_id,permission_id)values(7,9);
insert into role_permission_t(role_id,permission_id)values(7,10);
insert into role_permission_t(role_id,permission_id)values(7,11);


-----images_t图像表
insert into images_t
  (image_id, image_url)
values
  (1, 'images/20180717135715.jpg');
  
insert into images_t
  (image_id, image_url)
values
  (images_seq.nextval, 'images/20180717135900.jpg');
-----登录注销时间管理表
insert into user_login_logout_time_t
  (user_time_id, user_id, login_time)
values
  (user_login_logout_time_seq.nextval, 2, sysdate);
-----商品表

--添加商品
insert into commodity_t
  (commodity_id,
   commodity_name,
   brand,
   model,
   os,
   cpu,
   ram,
   sc,
   color,
   discription,
   price)
values
  (commodity_seq.nextval,
   '华为荣耀4A',
   '华为',
   '荣耀4A',
   'Android',
   '',
   2,
   '8',
   '白色',
   '',
   899);

----购物车表
insert into shopping_car_t (user_id, commodity_id, count) values (4, 2, 1);





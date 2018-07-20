-----User_t用户表
create table user_t(
       user_id number,
       user_name varchar(128),
       user_password varchar(16),
       sex varchar(15),
       age number,
       image_id number，
       role_id  number
);
-----oprator_t管理员表
create table oprator_t(
       oprator_id number,
       oprator_name varchar(128),
       oprator_discription varchar(256),
       oprator_disable number(1),
       role_id number
);
-----role_t角色表
create table role_t(
       role_id number,
       role_name varchar(64),
       role_discription varchar(256)
);
-----permission_t权限表
create table permission_t(
       permission_id number,
       permission_name varchar(64),
       permission_description varchar(256)
);
-----role_permission_t角色权限表
create table role_permission_t(
       role_id number,
       permission_id number
);
-----images_t图像表
create table images_t(
       image_id number,
       image_url varchar(256),
       image_discription varchar(256)
);
-----登录注销时间管理表
create table user_login_logout_time_t(
       user_id number ,
       login_time date,
       logout_time date,
       user_time_id NUMBER
);

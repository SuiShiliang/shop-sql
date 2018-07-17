-----User_t用户表
alter table USER_T modify user_name not null;
alter table USER_T modify user_password not null;
alter table USER_T
  add constraint user_id_pk primary key (USER_ID);
alter table USER_T
  add constraint user_image_id_fk foreign key (IMAGE_ID)
  references images_t (IMAGE_ID);
alter table USER_T
  add constraint user_role_id_fk foreign key (ROLE_ID)
  references role_t (ROLE_ID);
--序列
create sequence user_seq;         


-----oprator_t管理员表
alter table OPRATOR_T modify oprator_name not null;
alter table OPRATOR_T modify oprator_disable not null;
alter table OPRATOR_T
  add constraint oprator_id_pk primary key (OPRATOR_ID);
alter table OPRATOR_T
  add constraint oprator_role_fk foreign key (ROLE_ID)
  references role_t (ROLE_ID);
  
--序列
create sequence OPRATOR_seq;   
  
-----role_t角色表
alter table ROLE_T modify role_name not null;
alter table ROLE_T
  add constraint role_id_pk primary key (ROLE_ID);

--序列
create sequence ROLE_seq; 

-----permission_t权限表
alter table PERMISSION_T modify permission_name not null;
alter table PERMISSION_T
  add constraint permission_id_pk primary key (PERMISSION_ID);
 
--序列
create sequence PERMISSION_seq; 
 
-----role_permission_t角色权限表
alter table ROLE_PERMISSION_T modify role_id not null;
alter table ROLE_PERMISSION_T modify permission_id not null;
alter table ROLE_PERMISSION_T
  add constraint ROLE_PRIMISSION_P_FK foreign key (PERMISSION_ID)
  references PERMISSION_T (PERMISSION_ID);
alter table ROLE_PERMISSION_T
  add constraint ROLE_PRIMISSION_R_FK foreign key (ROLE_ID)
  references ROLE_T (ROLE_ID);

-----images_t图像表
alter table IMAGES_T modify image_url not null;
alter table IMAGES_T
  add constraint IMAGES_ID_PK primary key (IMAGE_ID);
  
--序列
create sequence IMAGES_seq; 

-----User_t�û���
create table user_t(
       user_id number,
       user_name varchar(128),
       user_password varchar(16),
       sex varchar(15),
       age number,
       image_id number��
       role_id  number
);
-----oprator_t����Ա��
create table oprator_t(
       oprator_id number,
       oprator_name varchar(128),
       oprator_discription varchar(256),
       oprator_disable number(1),
       role_id number
);
-----role_t��ɫ��
create table role_t(
       role_id number,
       role_name varchar(64),
       role_discription varchar(256)
);
-----permission_tȨ�ޱ�
create table permission_t(
       permission_id number,
       permission_name varchar(64),
       permission_description varchar(256)
);
-----role_permission_t��ɫȨ�ޱ�
create table role_permission_t(
       role_id number,
       permission_id number
);
-----images_tͼ���
create table images_t(
       image_id number,
       image_url varchar(256),
       image_discription varchar(256)
);
-----��¼ע��ʱ������
create table user_login_logout_time_t(
       user_id number ,
       login_time date,
       logout_time date,
       user_time_id NUMBER
);
-----��Ʒ��
-- Create table
create table COMMODITY_T
(
  commodity_id   NUMBER not null,
  commodity_name VARCHAR2(128),
  brand          VARCHAR2(128),
  model          VARCHAR2(128),
  os             VARCHAR2(128),
  cpu            VARCHAR2(128),
  ram            NUMBER,
  sc             NUMBER,
  color          VARCHAR2(128),
  discription    VARCHAR2(256),
  price          NUMBER
)��
comment on column COMMODITY_T.commodity_id
  is '��Ʒid';
comment on column COMMODITY_T.commodity_name
  is '��Ʒ��';
comment on column COMMODITY_T.brand
  is 'Ʒ��';
comment on column COMMODITY_T.model
  is '�ͺ�';
comment on column COMMODITY_T.os
  is '����ϵͳ';
comment on column COMMODITY_T.cpu
  is 'CPUƷ��';
comment on column COMMODITY_T.ram
  is '�ڴ�';
comment on column COMMODITY_T.sc
  is '�洢����';
comment on column COMMODITY_T.color
  is '��ɫ';
comment on column COMMODITY_T.discription
  is '����';
comment on column COMMODITY_T.price
  is '�۸�';
-----���ﳵ
create table SHOPPING_CAR_T
(
  user_id      NUMBER,
  commodity_id NUMBER,
  count        NUMBER
);


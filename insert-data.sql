-----User_t�û���
insert into user_t(user_id,user_name,user_password)values(user_seq.nextval,'��ΰ','123456');
insert into user_t
  (user_id, user_name, user_password, sex, age, image_id, role_id)
values
  (user_seq.nextval, 'С��', '123456', '��', 20, 1, 6);

-----oprator_t����Ա��
insert into oprator_t(oprator_id,oprator_name,oprator_disable,role_id)values(oprator_seq.nextval,'NiuDa',0,7);
insert into oprator_t
  (oprator_id, oprator_name, oprator_disable, role_id)
values
  (oprator_seq.nextval, 'NiuDa', 0, 7);
-----role_t��ɫ��
insert into role_t
  (role_id, role_name, role_discription)
values
  (role_seq.nextval, 'vip1', '�����Żݰ���');

insert into role_t
  (role_id, role_name, role_discription)
values
  (role_seq.nextval, 'vip2', '�����Ż�1��');

insert into role_t
  (role_id, role_name, role_discription)
values
  (role_seq.nextval, 'vip3', '�����Ż�2�ۣ��ɽ���vip�̳�');
  
insert into role_t
  (role_id, role_name, role_discription)
values
  (role_seq.nextval, 'consumer', 'û�д��ۣ�ֻ�ܽ�����ͨ��Ʒ��');
  
insert into role_t
  (role_id, role_name, role_discription)
values
  (role_seq.nextval, 'guest', 'ֻ�ܿ���Ʒ��������ӹ��ﳵ֮��');

insert into role_t
  (role_id, role_name, role_discription)
values
  (role_seq.nextval, 'admin', 'Ȩ�޵�CRUD��');
-----permission_tȨ�ޱ�
insert into permission_t(permission_id,permission_name)values(permission_seq.nextval,'VIP_STORE');       --VIP�̳�
insert into permission_t(permission_id,permission_name)values(permission_seq.nextval,'SHOPPING');        --����
insert into permission_t(permission_id,permission_name)values(permission_seq.nextval,'LOOK_COMMODITY');  --�鿴��Ʒ������Ϣ
insert into permission_t(permission_id,permission_name)values(permission_seq.nextval,'DISCOUNT_05');     --�Żݰ���
insert into permission_t(permission_id,permission_name)values(permission_seq.nextval,'DISCOUNT_10');     --�Ż�һ��
insert into permission_t(permission_id,permission_name)values(permission_seq.nextval,'DISCOUNT_20');     --�Żݶ���
insert into permission_t(permission_id,permission_name)values(permission_seq.nextval,'DISCOUNT_35');     --�Ż�35��

insert into permission_t(permission_id,permission_name)values(permission_seq.nextval,'ROLE_DELETE');     --ɾ����ɫȨ��
insert into permission_t(permission_id,permission_name)values(permission_seq.nextval,'ROLE_CREATE');     --��ӽ�ɫȨ��
insert into permission_t(permission_id,permission_name)values(permission_seq.nextval,'ROLE_UPDATE');     --�޸Ľ�ɫȨ��


-----role_permission_t��ɫȨ�ޱ�
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
--Ϊ��������Ա�����ӦȨ��
insert into role_permission_t(role_id,permission_id)values(7,9);
insert into role_permission_t(role_id,permission_id)values(7,10);
insert into role_permission_t(role_id,permission_id)values(7,11);


-----images_tͼ���
insert into images_t
  (image_id, image_url)
values
  (1, 'images/20180717135715.jpg');
  
insert into images_t
  (image_id, image_url)
values
  (images_seq.nextval, 'images/20180717135900.jpg');
-----��¼ע��ʱ������
insert into user_login_logout_time_t
  (user_time_id, user_id, login_time)
values
  (user_login_logout_time_seq.nextval, 2, sysdate);
-----��Ʒ��

--�����Ʒ
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
   '��Ϊ��ҫ4A',
   '��Ϊ',
   '��ҫ4A',
   'Android',
   '',
   2,
   '8',
   '��ɫ',
   '',
   899);

----���ﳵ��
insert into shopping_car_t (user_id, commodity_id, count) values (4, 2, 1);





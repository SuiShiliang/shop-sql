--��ѯ�û����й���Ϣ
select *
  from user_t us
  left join images_t img
    on us.image_id = img.image_id
  left join role_t ro
    on us.role_id = ro.role_id
  left join role_permission_t rop 
    on ro.role_id = rop.role_id
  left join permission_t pe 
    on rop.permission_id = pe.permission_id
 where us.user_name = 'С��';
--��ѯ����Ա���й���Ϣ
select *
  from oprator_t op
  left join role_t ro
    on op.role_id = ro.role_id
  left join role_permission_t rop
    on ro.role_id = rop.role_id
  left join permission_t pe
    on rop.permission_id = pe.permission_id
 where op.oprator_name = 'NiuDa';

 
--ɾ���û�
delete from user_t us where us.user_id = 4;
--�����û������µ�¼��Ϣ��id
select ull.user_time_id
  from user_login_logout_time_t ull
 where ull.user_id = 2
   and ull.login_time = (
       select max(ull.login_time)
         from user_login_logout_time_t ull
        where ull.user_id = 2);
--�����û�С��ĳ��ʱ���¼��Ϣ
select ull.login_time
  from user_login_logout_time_t ull
 where ull.user_id = 2
   and ull.login_time <
       TO_TIMESTAMP_TZ('2018/7/19 15:02:09',
                       'YYYY/MM/DD HH24:MI:SS');
--������ѯ��Ʒ
select *
  from commodity_t co
 where co.commodity_name = '' and co.brand = ''
   and co.model = ''
   and co.os = ''
   and co.cpu = ''
   and co.ram = ''
   and co.sc = ''
   and co.color = ''
   and co.price between 200 and 400;
   
select * from commodity_t co where co.price between 200 and 900;
select * from commodity_t co where co.price >= 200;
--ɾ����Ʒ    
delete from commodity_t co where co.commodity_id = 4;
--ɾ��������Ʒ�Ĺ��ﳵ��¼
delete from shopping_car_t so where so.commodity_id = 2;
--ɾ�����ﳵ��һ����¼
delete from shopping_car_t so
 where so.user_id = 4
   and so.commodity_id = 2;
--��ѯ�û��Ĺ��ﳵ
select *
  from shopping_car_t so
  left join commodity_t co
    on so.commodity_id = co.commodity_id
 where so.user_id = 4;
   


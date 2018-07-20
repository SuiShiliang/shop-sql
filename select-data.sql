--ɾ���û����й���Ϣ
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

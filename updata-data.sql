--�޸��û���Ϣ
update user_t us
   set us.user_name     = 'С��',
       us.user_password = '123456',
       us.sex           = 'Ů',
       us.age           = '18',
       us.image_id      = 1
 where us.user_id = 4;
-----�޸��û�ע����Ϣ
--����ʱ��
update user_login_logout_time_t ull
   set ull.logout_time = sysdate
 where ull.user_id = 2
   and ull.login_time =
       TO_TIMESTAMP_TZ('2018/7/19 15:02:09', 'YYYY/MM/DD HH24:MI:SS');
--����id
update user_login_logout_time_t ull
   set ull.logout_time = sysdate
 where ull.user_time_id = 3;

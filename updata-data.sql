--�޸��û���Ϣ
update user_t us
   set us.user_name     = 'С��',
       us.user_password = '123456',
       us.sex           = 'Ů',
       us.age           = '18',
       us.image_id      = 1
 where us.user_id = 4;

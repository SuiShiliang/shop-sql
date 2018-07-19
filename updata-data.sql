--修改用户信息
update user_t us
   set us.user_name     = '小三',
       us.user_password = '123456',
       us.sex           = '女',
       us.age           = '18',
       us.image_id      = 1
 where us.user_id = 4;

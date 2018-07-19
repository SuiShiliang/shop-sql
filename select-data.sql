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
 where us.user_name = '小三';
--删除用户
delete from user_t us where us.user_id = 4;

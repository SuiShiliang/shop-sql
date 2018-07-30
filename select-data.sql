--查询用户的有关信息
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
--查询管理员的有关信息
select *
  from oprator_t op
  left join role_t ro
    on op.role_id = ro.role_id
  left join role_permission_t rop
    on ro.role_id = rop.role_id
  left join permission_t pe
    on rop.permission_id = pe.permission_id
 where op.oprator_name = 'NiuDa';

 
--删除用户
delete from user_t us where us.user_id = 4;
--查找用户的最新登录信息的id
select ull.user_time_id
  from user_login_logout_time_t ull
 where ull.user_id = 2
   and ull.login_time = (
       select max(ull.login_time)
         from user_login_logout_time_t ull
        where ull.user_id = 2);
--查找用户小于某个时间登录信息
select ull.login_time
  from user_login_logout_time_t ull
 where ull.user_id = 2
   and ull.login_time <
       TO_TIMESTAMP_TZ('2018/7/19 15:02:09',
                       'YYYY/MM/DD HH24:MI:SS');
--条件查询商品
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
--删除商品    
delete from commodity_t co where co.commodity_id = 4;
--删除关于商品的购物车记录
delete from shopping_car_t so where so.commodity_id = 2;
--删除购物车中一条记录
delete from shopping_car_t so
 where so.user_id = 4
   and so.commodity_id = 2;
--查询用户的购物车
select *
  from shopping_car_t so
  left join commodity_t co
    on so.commodity_id = co.commodity_id
 where so.user_id = 4;
   


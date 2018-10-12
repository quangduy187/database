-- Lấy danh sách tất cả người dùng
select user_id,email, user_name, method from users;
delete from users
select * from social_account

-- Lấy danh sách loại người dùng (1)
select user_name,first_name, role_id from users inner join user_role on users.user_id = user_role.user_id where user_role.role_id =2;
-- Lấy danh sách loại người dùng theo khóa (K61, 1)
select * from users inner join user_role on users.user_id = user_role.user_id where (user_role.role_id =1) and (users.student_gen = 'K61');

update  user_role set role_id = 2 where user_id = 1;

-- Lấy danh sách các quyền của người dùng (user_id)
select user_name,first_name, permission_name from 
users inner join user_role on users.user_id = user_role.user_id 
inner join role_permission on user_role.role_id = role_permission.role_id
inner join permissions on role_permission.permission_id = permissions.permission_id where users.user_id = 1;



-- Lấy danh sách thông tin các quyền
select * from permissions;

-- Thay đổi quyền người dùng (role_id, user_id)
update user_role set role_id = 4 where user_id = 1;


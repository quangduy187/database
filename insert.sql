
-- START TABLE USERS
select user_id, email from users


-- END TABLE USERS
-- #1
SELECT SETVAL((SELECT pg_get_serial_sequence('users', 'user_id')), 1, false);
insert into users(user_name,first_name,last_name,
			native_land, native_commune_ward,native_district,native_province,native_city,
			permanent_address,permanent_commune_ward,permanent_district,permanent_province,permanent_city,
			class_name,tel,date_of_birth,password,email,student_gen)
values('Nguyễn Viết Cảnh', 'Cảnh', 'Nguyễn Viết',
	   'Thiện Kế - Bình Xuyên - Vĩnh Phúc', 'Thiện Kế', 'Bình Xuyên', 'Vĩnh Phúc',null,
	  'Trương Định - Hai Bà Trưng - Hà Nội', 'Trương Định', 'Hai Bà Trưng', null, 'Hà Nội',
	  'TĐH 04', '0328443446', '19980107', 'admin', 'canhcvp1998@gmail.com', 'K61');

-- #2
insert into users(user_name,first_name,last_name,
			native_land, native_commune_ward,native_district,native_province,native_city,
			permanent_address,permanent_commune_ward,permanent_district,permanent_province,permanent_city,
			class_name,tel,date_of_birth,password,email,student_gen)
values('Bùi Quang Duy', 'Duy', 'Bùi Quang',
	   'Thiện Kế - Bình Xuyên - Vĩnh Phúc', 'Thiện Kế', 'Bình Xuyên', 'Vĩnh Phúc',null,
	  'Trương Định - Hai Bà Trưng - Hà Nội', 'Trương Định', 'Hai Bà Trưng', null, 'Hà Nội',
	  'TĐH 04', '0328443446', '19980107', 'password', 'canhcvp1998@gmail.com', 'K61');
	  
	  
-- 	START TABLE ROLES


	SELECT SETVAL((SELECT pg_get_serial_sequence('roles', 'role_id')), 1, false);
	insert into roles(role_name,role_description)
	values('Khách', 'Người dùng bình thường');
	insert into roles(role_name,role_description)
	values('Starter', 'Thành viên dự bị');
	insert into roles(role_name,role_description)
	values('Member', 'Thành viên chính thức');
	insert into roles(role_name,role_description)
	values('Admin', 'Quản lý');
	select * from roles;
	
	delete from roles;
	
	
	
	 
-- END TABLE ROW
	  
-- START TABLE ROW_PERMISSION
select * from role_permission

delete from role_permission;
SELECT SETVAL((SELECT pg_get_serial_sequence('role_permission', 'id')), 1, false);

-- END TABLE ROW_PERMISSION

-- START TABLE PERMISSION

insert into permissions(permission_name, permission_description)
values('Meeting','Tham gia họp lab');
insert into permissions(permission_name, permission_description)
values('Borrow Devices','Mượn đồ phòng thí nghiệm');
insert into permissions(permission_name, permission_description)
values('Real Project','Tham gia các dự án thực tế của Lab');
insert into permissions(permission_name, permission_description)
values('Training','Đăng các bài viết');

select * from permissions;
delete from permissions;
-- END TABLE PERMISSION






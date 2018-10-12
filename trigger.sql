-- START USERS

create trigger users_created_at
before insert
on users
for each row
execute procedure created_at()

create trigger users_set_role
after insert
on users
for each row
execute procedure set_role()

create trigger users_set_social
after insert
on users
for each row
execute procedure set_social_acount()

-- END USERS
-- user_role
create trigger at_time
before insert
on user_role
for each row
execute procedure at_time()

--roles
create trigger set_permission
after insert
on roles
for each row
execute procedure set_permission()
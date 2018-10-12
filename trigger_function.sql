create or replace function set_permission()
returns trigger as $$
BEGIN 
new.permission_id = 1;
return new;
end;
$$ language 'plpgsql';

-- CREATED_AT
create or replace function create_at()
returns trigger as $$
BEGIN 
new.created_at = now();
return new;
end;
$$ language 'plpgsql';

-- AT_TIME
create or replace function at_time()
returns trigger as $$
BEGIN 
new.at_time = now();
return new;
end;
$$ language 'plpgsql';

-- SET SOCIAL_ACCOUNT
create or replace function set_social_acount()
returns trigger as $$
BEGIN 
  INSERT INTO   social_account (user_id)   VALUES  (NEW.user_id);
return new;
end;
$$ language 'plpgsql';

-- SET PERMISSION
CREATE OR REPLACE FUNCTION set_permission() RETURNS TRIGGER AS $$
BEGIN 

if new.role_id = 1 then
  INSERT INTO   role_permission (role_id, permission_id )   VALUES  (NEW.role_id,	1);
end if;

if new.role_id = 2 then
  INSERT INTO   role_permission (role_id, permission_id )   VALUES  (NEW.role_id,	1);
  INSERT INTO   role_permission (role_id, permission_id )   VALUES  (NEW.role_id,	2);
end if;

if new.role_id = 3 then
  INSERT INTO   role_permission (role_id, permission_id )   VALUES  (NEW.role_id,	1);
  INSERT INTO   role_permission (role_id, permission_id )   VALUES  (NEW.role_id,	2);
  INSERT INTO   role_permission (role_id, permission_id )   VALUES  (NEW.role_id,	3);
end if;

if new.role_id = 4 then
  INSERT INTO   role_permission (role_id, permission_id )   VALUES  (NEW.role_id,	1);
  INSERT INTO   role_permission (role_id, permission_id )   VALUES  (NEW.role_id,	2);
  INSERT INTO   role_permission (role_id, permission_id )   VALUES  (NEW.role_id,	3);
  INSERT INTO   role_permission (role_id, permission_id )   VALUES  (NEW.role_id,	4);
end if;

RETURN new;
END;
$$ language 'plpgsql';

-- SET ROLE
create or replace function set_role() returns trigger as $$
begin
insert into user_role (user_id, role_id)
values (new.user_id, 1);
return new;
end;
$$language 'plpgsql'
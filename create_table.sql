CREATE TABLE User(
user_id int IDENTITY PRIMARY KEY,
email varchar (255) NOT NULL,
password varchar (255) NOT NULL,
user_name nvarchar (255) NOT NULL,
first_name nvarchar (255) NOT NULL,
last_name nvarchar (255) NOT NULL,
created_at timestamp NOT null
)

GO

CREATE TABLE Profile(
profile_id int IDENTITY PRIMARY KEY,
email varchar (255) NOT NULL,
password varchar (255) NOT NULL,
user_name nvarchar (255) NOT NULL,
first_name nvarchar (255) NOT NULL,
last_name nvarchar (255) NOT NULL,
created_at timestamp NOT null
)

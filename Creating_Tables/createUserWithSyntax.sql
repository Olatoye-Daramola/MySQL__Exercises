-- use mysql;

-- show tables;

-- select *
-- from user;


-- create users
-- switch database to mysql
-- first display all users in the server
select user from mysql.user;
-- create
create user David@localhost identified by 'Olorunfemi@123';

-- to grant all privileges
grant ALL PRIVILEGES ON * . * TO David@localhost;

-- grant specific privileges
grant create, select, insert on * . * to David@localhost;

-- See the privileges for the user
show grants for David@localhost;
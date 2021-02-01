create database carousel;

-- to connect from PHPStorm
create user 'root'@'172.17.0.1' identified by 'root';
alter user 'root'@'172.17.0.1' identified by 'root';
grant all privileges on *.* to 'root'@'172.17.0.1' with grant option;

-- mysql_secure_installation
-- alter user 'root'@'localhost' identified with mysql_native_password by '<INSERT ROOT PASSWORD>';
-- delete from mysql.user where user='';
-- delete from mysql.user where user='root' and host not in ('localhost', '127.0.0.1', '::1'); -- in this case phpmyadmin won't work
-- drop database if exists test;
-- delete from mysql.db where db='test' or db='test\\_%';
-- flush privileges;

-- creating user for application
create user 'carousel'@'%' identified by 'carousel';
grant all privileges on carousel.* to 'carousel'@'%';
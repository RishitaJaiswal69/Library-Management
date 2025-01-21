# ~~~~~~~~~~~~~~~~~~~~~ library Database ~~~~~~~~~~~~~~~~~~~~~~~~~~~

create database lmsdb;

use lmsdb;

# ~~~~~~~~~~~~~~~~~~~~~~~~ create users tables ~~~~~~~~~~~~~~~~~~~~~
create table users (
    user_id int primary key auto_increment,
    username char(30) not null unique,
    password char(255) not null,
    email char(255) not null unique,
    mobile char(10) not null unique

);


# ~~~~~~~~~~~~~~~~~~~~ create table user_types ~~~~~~~~~~~~~~~~~~
create table user_types (
    user_type_id int primary key auto_increment,
    type char(40) not null unique
);

insert into user_types (type) values ("General"),("Admin");


select user_id,username,password,email,mobile,user_type_id from where email="raj@gmail.com";

alter table users add column user_type_id int not null default 1,
add constraint fk_user_types foreign key (user_type_id) references user_types(user_type_id);
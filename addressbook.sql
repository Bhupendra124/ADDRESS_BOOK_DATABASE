CREATE DATABASE address_Book;
use address_Book;

create table address_Book(firstName varchar(30) not null , lastName varchar(20) not null, 
address varchar(60) not null , city varchar (10) not null , state varchar(20) not null,
zip Int , phoneNumber varchar(10));

describe address_Book;
select * from address_Book_Table;


insert into address_Book
CREATE DATABASE address_Book;
use address_Book;

create table address_Book(firstName varchar(30) not null , lastName varchar(20) not null, 
address varchar(60) not null , city varchar (10) not null , state varchar(20) not null,
zip Int , phoneNumber varchar(10));

describe address_Book;
select * from address_Book;


insert into address_Book values ('Bhupendra', 'Wadekar', 'Govind colony Amla', 'Amla', 'MP','460551','9893902047');

alter table address_Book rename Address_Book_Table;
insert into address_Book_Table values ('Avinash', 'Narvare', 'Bodhki Amla', 'Amla', 'MP','460551','123456789');
insert into address_Book_Table values ('Nitin', 'Gawande', 'Govind colony Amla', 'Amla', 'MP','460551','787789');
insert into address_Book_Table values ('Rakesh', 'Pawar', 'Capital petrol pump', 'Bhopal', 'MP','462003','989347');
insert into address_Book_Table values ('Neeraj', 'Mishra', 'Up Amla', 'Baliya', 'UP','460551','3902047');
insert into address_Book_Table values ('Yogesh', 'Chukkikar', 'Govind colony Amla', 'Amla', 'MP','460551','98902047');

select * from address_Book_Table;


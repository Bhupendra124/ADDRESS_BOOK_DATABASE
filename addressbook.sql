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
SET SQL_SAFE_UPDATES=0;
update address_Book_Table set firstName='Shankar', lastName='wadekar',address='Ujjain mahakal', city='Ujjain' , state='MP',  zip=111111, phoneNumber=99999 where firstName='Avinash';


delete from address_Book_Table where firstName='Nitin';


select firstName , lastName from address_Book_Table where city='Amla';

select count(city or state) from address_Book_Table;

select city , firstName from address_Book_Table order by(firstName);

alter table address_Book_Table add column relation varchar(6) after zip;
alter	table address_Book_Table add column name varchar(20) after zip;

update address_Book_Table set  name= 'Don' , relation ='Dost' where firstName='Neeraj';
select * from address_Book_Table;
update address_Book_Table set name='Daud', relation='family' where firstName='Rakesh';

alter table address_Book_Table change relation relation varchar(20);

update address_Book_Table set name='Rakesh', relation='friend' where firstName='bhupendra';
update address_Book_Table set name='Bhupendra', relation='family' where firstName='shankar';
update address_Book_Table set name='neeraj', relation='friend' where firstName='yogesh';

create table PersonName(Id int auto_increment primary key, firstName varchar(10), lastName varchar(10), addressId int);
desc	PersonName;
insert into PersonName values ('1001', 'bhupi', 'wadu', '2001');
select * from PersonName;
delete from PersonName where Id='1001';
rollback;
insert into PersonName ( Id,firstName,lastName,addressId) values ('1001','happy', 'sing','2001');
insert into PersonName ( firstName,lastName,addressId) values ('bhupi', 'wadu','2001');
insert into PersonName ( firstName,lastName,addressId) values ('nikki', 'chukkiar','2002');
insert into PersonName ( firstName,lastName,addressId) values ('niraj', 'mishra','2003');
insert into PersonName ( firstName,lastName,addressId) values ('rk', 'pawar','2004');
alter table PersonName;

create table Address (Id int primary key auto_increment,city varchar(10), state varchar(10), zip varchar(6), phoneNo varchar(10), personId varchar(10));
insert into Address values('2001','Amla', 'Mp','460551','9893902047','1001');
insert into Address values('2002','Bhopal', 'Mp','462003','93902047','1002');
insert into Address values('2003','Nagpur', 'Maha','4601','98939','1003');
insert into Address values('2004','sonipat', 'Haryana','4601','989390287','1004');
alter table Address change id id int(10);

select * from Address;


alter table personName add foreign key(addressId) references Address(Id);

create table Connection(personId int, relativeName varchar(20) , relation varchar(20), foreign key(personId) references PersonName(Id));

INSERT INTO Connection VALUES ( '1001', 'BHUPENDRA', 'FRIEND');
INSERT INTO Connection VALUES ( '1002', 'RAKESH', 'Family');
INSERT INTO Connection VALUES ( '1003', 'AVINASH', 'FRIEND');
SELECT * FROM Connection;

SELECT * FROM (PersonName INNER JOIN  Address ON PersonName.Id = Address.personId) 
		INNER JOIN Connection ON Connection.personId = PersonName.Id;
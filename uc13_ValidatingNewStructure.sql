--Welcome to AddressBook Service

--Creating database
--uc1
Create database address_book_service
use address_book_service;

--Creating Table
--uc2
create table address_book_table
(
firstname varchar(150) NOT NULL,
lastname varchar(150) NOT NULL,
address varchar(150) NOT NULL ,
city varchar(150) NOT NULL,
state varchar(150) NOT NULL,
zip float NOT NULL,
phonenumber float NOT NULL,
email varchar(150) NOT NULL
);

--Inserting Into Table
--uc3
insert into address_book_table(firstname,lastname,address,city,state,zip,phonenumber,email)
values
('bill','joseph','street1','delhi','India',785459,789456123,'bill@hotmail.com'),
('james','dangling','street 2','newyork','usa',588794,45987522,'james@gamil.com'),
('daisy','erison','street 3','paris','france',121457,8556475,'daisy@yahoo.com'),
('jhonny','jeff','street4','delhi','India',785859,9889456123,'jhonny@hotmail.com'),
('jetty','dome','street 5','newyork','usa',788794,45687522,'jetty@gamil.com'),
('eric','eros','street 36','paris','france',1214577,756556475,'eric@yahoo.com');

--Updating table using name 
--uc4
update  address_book_table set city='newjersy' where firstname='james';

--Delete contact using name 
--uc5
delete from address_book_table where firstname ='bill';

--Retrieving contact from a city or state
--uc6
select * from address_book_table where city='newjersy';
select * from address_book_table where state='france';

--Retrieving size by given state or city
--uc7
select count(city) from address_book_table;
select count(state) from address_book_table;

--Retrieving entries sorted by name with given city or state 
--uc8
select * from address_book_table where city='paris' order by firstname ASC;
select * from address_book_table where state='usa' order by firstname DESC;

--identifying address book with name and type 
--uc9
alter table address_book_table add addressBookName varchar(150), type varchar(150) ;
--udating addressbook adding name and type
update address_book_table set addressBookName ='First', type='Family' where firstname='daisy';
update address_book_table set addressBookName='Second' ,type='Friends' where firstName='james' or firstname='jhonny';
update address_book_table set addressBookName='Third', type='Professional' where firstName='jetty' or firstname='eric';

--Count by type
--uc10
select  type,count(*) from address_book_table group by type;

--Add Same Person in Family and Friends type
--uc11
insert into address_book_table(firstname,lastname,address,city,state,zip,phonenumber,email,addressBookName,type)
values
('daisy','erison','street 3','paris','france',121457,8556475,'daisy@yahoo.com','Second','Friends');

select  type,count(*) from address_book_table group by type;

select * from address_book_table;

--Retrieving all details from er diagram 
--uc12

--creating type of contact table 
create table TypeOfContacts
(TypeId int primary key not null,
TypeName varchar(150) not null
);
--inserting values into type of contact 
Insert into TypeOfContacts(TypeId,TypeName)
values
(1,'Friends'),
(2,'Family'),
(3,'Professional');
select * from TypeOfContacts;


--altering address book table adding addressbookid 
alter table address_book_table add AddressBookId int primary key identity(1,1);
--deleting redundant rows 
delete from address_book_table where firstname= 'daisy' and type ='Friends';
--deleting type column
alter table address_book_table drop column type;
select * from address_book_table;


--creating addressbooktypeanddata table 
create table AddressBookAndTypeData 
(AddressBookId int not null,
TypeId int not null);
--inserting values into table
insert into AddressBookAndTypeData(AddressBookId,TypeId)
values
(1,1),
(2,1),
(3,2),
(4,3),
(5,3),
(1,2);


--Retrieving all details using er diagram
--uc13

--uc6
 select firstname,lastname,city from address_book_table where city='delhi';

--uc7
select city, count(*) from address_book_table where city='paris' group by city;

--uc8
select * from address_book_table where  city='paris'order by firstname;

--uc10
select T.TypeName,count(*) as Count  from address_book_table a
join AddressBookAndTypeData ad
on ad.AddressBookId=a.AddressBookId
join TypeOfContacts t
on t.TypeId = ad.TypeId
group by t.TypeName;
 






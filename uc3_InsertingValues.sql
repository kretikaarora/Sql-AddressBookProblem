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

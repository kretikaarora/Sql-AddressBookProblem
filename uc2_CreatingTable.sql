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


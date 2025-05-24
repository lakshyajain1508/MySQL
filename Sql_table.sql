-- create a table
create database lakshya;
use lakshya;
create table Authors(

author_id int, 
first_name varchar(50), 
last_name varchar(50), 
birth_year date, 
nationality varchar(50)

);

-- insertion value in table
insert into Authors values(101,"parag","sharma","1990-05-23","Indian"),
(102,"nilesh","pandey","1995-05-13","Indian"),
(103,"gauri","Raul","1991-05-23","Indian"),
(104,"avnit","Thakur","1997-05-14","Indian"),
(105,"anish","Yadav","1998-05-27","Indian"),
(106,"mayank","tiwari","2003-05-23","Indian");


-- show table
select * from Authors;

use lakshya;
create table books(

book_id int, 
title varchar(30), 
author_id varchar(50), 
publication_year int, 
genre varchar(50), 
price int, 
stock int

);

-- value table 

insert into Books values(1,"The Great Gatsby",101,1925,"Fictio",10.99,12),
(2,"To Kill a Mockingbird",102,1960,"Classic",8.99,8),
(3,"1984",103,1949,"Dystopian",9.50,5),
(4,"A Brief History of Time",104,1988,"Science",15.00,3),
(5,"The Hobbit",105,1937,"Fantasy",12.45,7),
(6,"Pride and Prejudice",107,1813,"Romance",6.75,9);

-- show table

select * from Books;

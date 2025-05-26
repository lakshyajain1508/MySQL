-- create a table 1
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


-- Table 2

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

-- table 3
 use lakshya;
 
 create table customers(
 
 customer_id int, 
 first_name varchar(50), 
 last_name varchar(50), 
 email varchar(50) unique, 
 join_date date
 
 );
 
 -- insert value
 
 insert into customers values(1,"lakshya","jain","lakshyajain15@gmail.com","2017-01-07"),
 (2,"dhrumit","sharma","dhrumit145@gmail.com","2018-02-14"),
 (3,"yash","pal","yashpal9015@gmail.com","2017-04-28"),
 (4,"aryan","tiwari","aryantiwari908@gmail.com","2023-012-07"),
 (5,"aman","paswan","amanpaswan456@gmail.com","2019-06-12"),
 (6,"devandra","pandey","devpandey234gmail.com","2023-04-25"),
 (7,"avaneet","singh","avaneetsingh783@gmail.com","2024-11-05");
 
 -- show table 
 
 select * from customer;
 
-- table 4

use lakshya;

create table orders1(
customer_id int, 
order_id varchar(40), 
book_id int , 
order_date date, 
quantity int , 
total_amount float
);

-- insert values

insert into orders1 values(1,"OR1203",1234,"2024-03-22",3,7400.32),
(2,"OR1204",1235,"2023-03-23",5,4010.32),
(3,"OR1208",1256,"2022-03-24",9,2040.47),
(4,"OR1211",1245,"2024-03-25",2,1400.89),
(5,"OR1236",1289,"2023-03-26",3,4400),
(6,"OR1250",1246,"2023-03-27",6,5400.62),
(7,"OR1289",1279,"2020-03-28",10,8400.37);

-- show table 

select * from orderss; 

-- Questions 

-- Q.5 Write a query to find all books priced between $15 and $25.

select *from Books
where price between 15 and 20;

-- Q.6 Find all books with either "Pride and Prejudice" or "A Brief History of Time" in their title

select * from Books
where title like "Pride and Prejudice" or title like "A Brief History of Time";

-- Q.7 List all authors who were born after 1980 AND are either American or British.

select * from Authors
where birth_year<1980 or nationality like "Indian";

-- Q.8 Display all customers who joined in 2023 but haven't placed any orders.

select * from customers
where join_date = 2023 
and  customer_id not in (select distinct customer_id from orders1)

-- Q.9 Show the total number of books sold for each author, including authors who haven't sold any books.




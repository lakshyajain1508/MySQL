create database lakshya;

use lakshya;

-- Q1) Create the Authors table with appropriate data types and constraints. Make author_id the primary key and ensure first_name and last_name 
-- cannot be null.

create table Authors(
author_id int primary key, 
first_name varchar(40) not null, 
last_name varchar(40) not null, 
birth_year year, 
nationality varchar(20)
);

use lakshya;

-- Q2) Create the Books table with:
-- A primary key for book_id
-- A foreign key referencing Authors table
-- A constraint ensuring price is greater than 0
-- A default value of 0 for stock

create table Books(
book_id int primary key, 
title varchar(40), 
author_id int, 
publication_year year, 
genre varchar(20), 
price int, 
stock int default 0,
foreign key(author_id) references Authors(author_id)
);

-- Q3) Insert three authors into the Authors table with different nationalities.

insert into Authors values(1, 'Alice', 'Walker', 1944, 'American'),
(2, 'James', 'Smith', 1985, 'British'),
(3, 'Maria', 'Lopez', 1975, 'Spanish'); 

-- Q4) Insert five books into the Books table, ensuring at least two books are by the same author.
insert into Books values(101, 'Learning 

Python', 1, 2020, 'Programming', 22.99, 10),
(102, 'Mastering Java', 1, 2021, 'Programming', 19.99, 5),
(103, 'Data Science Basics', 2, 2022, 'Science', 25.50, 7),
(104, 'Modern Art Explained', 3, 2019, 'Art', 17.75, 3),
(105, 'Java for Beginners', 2, 2023, 'Programming', 14.99, 0);

-- Q5) Write a query to find all books priced between $15 and $25.
select * from Books
where price between 15 and 25;

-- Q6) Find all books with either "Python" or "Java" in their title.
select * from Books
where title like "%python%" or title like "%java%";

-- Q7) List all authors who were born after 1980 AND are either American or British.
select * from authors
where birth_year > 1980 and nationality like "american" or nationality like "british";

-- Q8) Display all customers who joined in 2023 but haven't placed any orders.

use lakshya;
create table Customers (
customer_id int primary key, 
first_name varchar(40), 
last_name varchar(40),
email varchar(50) unique, 
join_date date not null
); 

insert into customers values(201, 'John', 'Doe', 'john.doe@example.com', '2023-01-10'),
(202, 'Emma', 'Clark', 'emma.clark@example.com', '2023-02-05'),
(203, 'Mike', 'Brown', 'mike.brown@example.com', '2022-11-25'),
(204, 'Lily', 'Adams', 'lily.adams@example.com', '2023-07-18'),
(205, 'David', 'Wang', 'david.wang@example.com', '2021-09-30');

use lakshya;
create table orders(
order_id int primary key, 
customer_id int, 
book_id int, 
order_date date, 
quantity int, 
total_amount int,
foreign key (customer_id) references Customers(customer_id),
foreign key(book_id) references books(book_id)
);

insert into orders values
(301, 201, 101, '2023-03-01', 1, 22.99),
(302, 203, 104, '2023-04-15', 2, 35.50),
(303, 205, 102, '2023-05-10', 1, 19.99),
(304, 201, 105, '2023-07-21', 1, 14.99),
(305, 205, 103, '2024-01-05', 1, 25.50);
drop table orders;
-- Display all customers who joined in 2023 but haven't placed any orders.

select * from customers
where year(join_date) = 2023 and customer_id not in (select  distinct customer_id from orders);

-- Q9) Show the total number of books sold for each author, including authors who haven't sold any books.


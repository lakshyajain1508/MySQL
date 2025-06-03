use classicmodels;

show tables;

-- concat()
select * from customers;
select concat(contactfirstname,' ',contactlastname) as full_name from customers;

-- lower()
select * from customers;
select lower(country) as country_lower from customers;

-- upper()
select * from customers;
select upper(city) as city_upper from customers;

-- substring()
select * from employees;
select substring(email,1,5) as email from employees;

-- left()
select * from customers;
select left(customername, 6) as name from customers;

-- right()
select * from customers;
select right(customername, 6) as name from customers;

-- length()
select * from offices;
select city, length(city) as citylength from offices;

-- replace()
select * from offices;
select city, replace(city,'o','k') as cityreplace from offices;

-- trim()
select city, trim(city) as citytrimmed from offices;

--
-- 1. List all customers who live in Texas (use JOINs)
select * from address;
select * from customer;
select address.address_id, address.address, address.district, customer.customer_id, customer.first_name, customer.last_name 
from address
full outer join customer on address.address_id=customer.address_id 
where district = 'Texas';
--2. Get all payments above $6.99 with the Customer's Full Name
select * from customer;
select * from payment; 
select customer.customer_id, customer.first_name, customer.last_name, payment.customer_id, payment.amount, payment.payment_id
from customer
full outer join payment on payment.customer_id=customer.customer_id  
where amount > 6.99
--3. Show all customers names who have made payments over $175(use subqueries)
select * from customer;
select * from payment; 
select customer.customer_id, customer.first_name, customer.last_name, payment.customer_id, payment.amount, payment.payment_id
from customer
full outer join payment on payment.customer_id=customer.customer_id  
where amount > 175.00
--4. List all customers that live in Nepal (use the city table)
select * from city;
select * from customer;
select * from address;
select address.address, address.city_id, customer.address_id, customer.first_name, customer.last_name, city.city_id, city.city
from customer
full outer join address 
on address.address_id=customer.address_id 
full join city
on address.city_id=city.city_id 
where city = 'Nepal';
--5. Which staff member had the most transactions?
select *
from sales_dept sd 
--? this code question and code do not make sense
--6. How many movies of each rating arethere?
SELECT COUNT(fid), rating
FROM film_list fl 
GROUP BY rating ;
--7.Show all customers who have made a single payment above $6.99 (Use Subqueries)
select payment.payment_id, payment.amount, payment.customer_id, customer.first_name, customer.last_name 
from payment
full join  customer
on payment.customer_id=customer.customer_id 
where amount > 6.99




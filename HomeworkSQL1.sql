--Week 5 - Monday Questions

--1. How many actors are there with the last name ‘Wahlberg’?
select first_name, last_name
from actor
where last_name = 'Wahlberg'

--Nick Wahlberg and Daryl Wahlberg
--2. How many payments were made between $3.99 and $5.99?
select count(amount)
from payment 
where amount <= 5.99 and amount >= 3.99;
-- 5602 payments
--3. What film does the store have the most of? (search in inventory)
SELECT film_id, COUNT(film_id) AS num_copies
FROM inventory
GROUP BY film_id
ORDER BY num_copies desc

-- Crossroad casualties with 8

--4. How many customers have the last name ‘William’?
select first_name, last_name
from customer
where last_name = 'Williams'

-- 1. Linda Williams

--5. What store employee (get the id) sold the most rentals?
select staff_id, count(*) as rental_count
from rental 
group by staff_id
order by rental_count desc

-- Mike (staff_id =1) had the most rentals with 8040

--6. How many different district names are there?
select count(distinct district) as district_count
from address;

-- 378 different districts

--7. What film has the most actors in it? (use film_actor table and get film_id)
select film_id, count(actor_id) as actor_count
from film_actor 
group by film_id 
order by actor_count desc

-- The movie 'Lambs Cincinatti' has the most actors with 15

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

select *
from customer 
where store_id = 1 and last_name like '%es'

-- 13 customers names end with 'es' 

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)

select amount, count(*)
from payment
where customer_id between 380 and 430
group by amount 
having count(*) > 250;

-- 3 payments 2.99 (290) 4.99 (281) and 0.99 (269) all have rentals above 250

--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?

select count(distinct rating) as count_of_rating_categories
from film;

-- 5 rating categories

select rating, count(*) as movie_count
from film
group by rating 
order by movie_count desc;

-- PG-13 has the most movies total
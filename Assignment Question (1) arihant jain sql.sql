/*
Q1.List all details of actors
*/
select * from actor;
/*
Q2.List all customer information from DB.
*/
select * from customer;
/*
Q3.List different countries.
*/
select * from country;
/*
Q4.Display all active customers.
*/
select customer_id, first_name, last_name, active from customer where active like "1";
/*
Q5.List of all rental IDs for customer with ID 1. 
*/
select rental_id from rental where customer_id = 1;
/*
Q6.Display all the films whose rental duration is greater than 5
*/
select * from film where rental_duration >5;
/*
Q7.List the total number of films whose replacement cost is greater than $15 and less than $20.
*/
select * from film where replacement_cost > 15 and replacement_cost < 20;
/*
Q 08.Display the count of unique first names of actors. 
*/
SELECT first_name from actor;
/*   
Q 09 Display the first 10 records from the customer table 
*/
select * from customer limit 10;
/*
Q10.Display the first 3 records from the customer table whose first name starts with ‘b’.
*/
select first_name from customer where first_name like '%b%' limit 3;
/*
Q11.Display the names of the first 5 movies which are rated as ‘G’. 
*/
select rating from film where rating = 'G' limit 5;
/*
q12. Find all customers whose first name starts with "a". 
*/
select first_name from customer where first_name like 'a%';
/*
Q13. Find all customers whose first name ends with "a". 
*/
select first_name from customer where first_name like '%a';
/*
Q14. Display the list of first 4 cities which start and end with ‘a’ . 
*/
select city from city where city like '%a%a';
/*
Q15. Find all customers whose first name have "NI" in any position. 
*/
select first_name from customer where first_name like '%ni%';
/*
Q16. Find all customers whose first name have "r" in the second position 
*/
select first_name from customer where first_name like '_r%';
/*
Q17.  Find all customers whose first name starts with "a" and are at least 5 characters in length. 
*/
select first_name from customer where first_name like '_a%' and length(first_name)>=5;
/*
Q18.Find all customers whose first name starts with "a" and ends with "o". 
*/
select first_name from customer where first_name like 'a%%o';
 /*
 q19. Get the films with pg and pg-13 rating using IN operator. 
*/
SELECT * FROM film WHERE rating IN ('PG', 'PG-13');
/*
Q20. Get the films with length between 50 to 100 using between operator.
*/
 
SELECT count(length)
FROM film
WHERE length BETWEEN 50 AND 100;
/*
q21.Get the top 50 actors using limit operator.
*/
select first_name from actor limit 50; 
/*
Q23  Get the distinct film ids from inventory table. 
*/
SELECT DISTINCT film_id
FROM inventory;








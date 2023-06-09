SELECT first_name, last_name, email, country
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
INNER JOIN city
ON city.city_id = address.city_id
INNER JOIN country
ON city.country_id = country.country_id
WHERE country = 'Angola';


-----------------HOMEWORK--------------------

--Question 1:
SELECT first_name, last_name, district
FROM customer
INNER JOIN address
ON address.address_id = customer.address_id
WHERE district = 'Texas';



--Question 2:
SELECT first_name, last_name, amount
FROM customer
INNER JOIN payment 
ON customer.customer_id = payment.customer_id
WHERE amount > 6.99
ORDER BY amount;



--Question 3:
SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
	HAVING SUM(amount) > 175
	ORDER BY SUM(amount) DESC
);



--Question 4:
SELECT first_name, last_name, city
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
INNER JOIN city
ON address.city_id = city.city_id
INNER JOIN country
ON city.country_id = country.country_id
WHERE country = 'Nepal';



-- Question 5:
SELECT first_name, last_name, COUNT(payment_id)
FROM staff
INNER JOIN payment
ON staff.staff_id = payment.staff_id
GROUP BY first_name, last_name
ORDER BY COUNT(payment_id) DESC;



--Question 6:
SELECT rating, COUNT(title)
FROM film
GROUP BY rating
ORDER BY rating;



--Question 7:
SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
	SELECT customer_id
	FROM payment
	WHERE amount > 6.99
	GROUP BY customer_id
	HAVING COUNT(customer_id) = 1
);

--with join:

-- SELECT first_name, last_name
-- FROM customer
-- INNER JOIN payment
-- ON customer.customer_id = payment.customer_id
-- WHERE amount > 6.99
-- GROUP BY first_name, last_name
-- HAVING COUNT(last_name) = 1;



-- Question 8:
SELECT COUNT(amount), amount
FROM payment
WHERE amount = 0.00
GROUP BY amount






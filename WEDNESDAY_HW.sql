SELECT first_name
FROM customer
WHERE customer_id IN(
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
	HAVING SUM(amount) > 175
);

SELECT first_name
FROM customer
WHERE customer_id IN(
	SELECT customer_id
	FROM payment
	WHERE amount > 6.99
	GROUP BY customer_id
);

SELECT *
FROM film
WHERE film_id IN(
	SELECT film_id
	FROM inventory
	GROUP BY film_id
	HAVING COUNT(*) >= 5
);

SELECT *
FROM country
WHERE country_id IN(
	SELECT country_id
	FROM city
	WHERE city LIKE 'D%'
);

SELECT *
FROM film
WHERE language_id IN(
	SELECT language_id
	FROM public.language
	WHERE name = 'French' 
);
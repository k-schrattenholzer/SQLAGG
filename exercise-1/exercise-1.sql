-- find the title and count of the top 10 most rented films
-- use COUNT to count each row
-- GROUP BY the film_id
-- ORDER in descending order
-- LIMIT 10
SELECT film.title, COUNT(rental.rental_date)
FROM inventory
LEFT JOIN film
ON inventory.film_id = film.film_id
LEFT JOIN rental
on inventory.inventory_id = rental.inventory_id
GROUP BY film.film_id
ORDER BY count DESC
LIMIT 10;
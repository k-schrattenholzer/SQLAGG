-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts
SELECT city.city, SUM(payment.amount)
FROM city
LEFT JOIN address
ON city.city_id = address.city_id
INNER JOIN customer
on customer.address_id = address.address_id
INNER JOIN payment
on payment.customer_id = customer.customer_id
GROUP BY city.city
ORDER BY SUM DESC
LIMIT 10
;
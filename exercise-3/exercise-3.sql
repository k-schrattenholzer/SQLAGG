-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount

SELECT country.country, AVG(payment.amount)
FROM country
LEFT JOIN city
ON city.country_id = country.country_id
LEFT JOIN address
ON city.city_id = address.city_id
INNER JOIN customer
on customer.address_id = address.address_id
INNER JOIN payment
on payment.customer_id = customer.customer_id
GROUP BY country.country
ORDER BY AVG desc
LIMIT 10
;

-- customer ranking by total amount spent
-- include email and rank
-- use RANK ORDER BY the SUM of the amount in descending order
SELECT 
  customer.email,
  RANK() OVER (ORDER BY SUM(payment.amount) DESC)
FROM
  customer
INNER JOIN
  payment 
ON
  customer.customer_id = payment.customer_id
GROUP BY
  customer.customer_id
ORDER BY
  RANK ASC
;


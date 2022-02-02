-- CUBE of amount made per year, month, day, and film rating
-- similar to exercise 9 but include the rating with joins
-- replace ROLLUP with CUBE

SELECT 
  EXTRACT (YEAR FROM payment_date) AS y,
  EXTRACT (MONTH FROM payment_date) AS m,
  EXTRACT (DAY FROM payment_date) AS d,
  SUM(amount)
FROM 
  payment
GROUP BY 
  ROLLUP (y, m, d)
;

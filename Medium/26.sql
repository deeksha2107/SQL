--Display a single row with max_visits, min_visits, average_visits where the maximum, minimum and average number of admissions per day is calculated. 
--Average is rounded to 2 decimal places.
SELECT MAX(number_of_visits) AS max_visits,
MIN(number_of_visits) AS min_visits,
ROUND(AVG(number_of_visits),2) AS average_visits
FROM (
  SELECT admission_date, COUNT(*) AS number_of_visits
  FROM admissions
  GROUP BY admission_date
)

--Based on the cities that our patients live in, show unique cities that are in province_id 'NS'.
SELECT DISTINCT(city) as unique_cities
from patients
where province_id='NS'

--or

SELECT city
FROM patients
GROUP BY city
HAVING province_id = 'NS';

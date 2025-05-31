--Show the difference between the largest weight and smallest weight for patients with the last name 'Maroni'

SELECT MAX(WEIGHT)-MIN(WEIGHT) AS weight_delta
from patients
where last_name = 'Maroni'

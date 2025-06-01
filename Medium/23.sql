--display the first name, last name and number of duplicate patients based on their first name and last name.

SELECT first_name,last_name, Count(*) AS num_of_duplicates
from patients
GROUP BY first_name,last_name
HAVING COUNT(*)>1

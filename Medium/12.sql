--Show all patient's first_name, last_name, and birth_date who were born in the 1970s decade. Sort the list starting from the earliest birth_date.

SELECT first_name,last_name,birth_date
FROM patients
WHERE year(birth_date) BETWEEN 1970 and 1979
ORDER BY birth_date

--or

SELECT
  first_name,
  last_name,
  birth_date
FROM patients
WHERE
  birth_date >= '1970-01-01'
  AND birth_date < '1980-01-01'
ORDER BY birth_date ASC

--or
  
SELECT
  first_name,
  last_name,
  birth_date
FROM patients
WHERE year(birth_date) LIKE '197%'
ORDER BY birth_date ASC

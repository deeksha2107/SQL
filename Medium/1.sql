--Show unique birth years from patients and order them by ascending.
SELECT DISTINCT(YEAR(birth_date))
FROM patients
order by YEAR(birth_date) ASC
--or
SELECT year(birth_date)
FROM patients
GROUP BY year(birth_date)

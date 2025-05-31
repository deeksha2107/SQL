-- Show all allergies ordered by popularity. Remove NULL values from query.

SELECT allergies, COUNT(patient_id) as total_diagnosis
FROM patients
WHERE allergies IS NOT NULL
GROUP BY allergies 
ORDER BY total_diagnosis DESC

--or

SELECT
  allergies,
  count(*)
FROM patients
WHERE allergies NOT NULL
GROUP BY allergies
ORDER BY count(*) DESC

--or

SELECT
  allergies,
  count(allergies) AS total_diagnosis
FROM patients
GROUP BY allergies
HAVING
  allergies IS NOT NULL
ORDER BY total_diagnosis DESC

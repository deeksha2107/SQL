--Show all of the patients grouped into weight groups. Show the total amount of patients in each weight group. Order the list by the weight group decending.
-- For example, if they weight 100 to 109 they are placed in the 100 weight group, 110-119 = 110 weight group, etc.

SELECT COUNT(*) AS patients_in_group, FLOOR(weight/10)*10 as weight_group
FROM patients
GROUP BY weight_group
order by weight_group DESC

--or

SELECT
  TRUNCATE(weight, -1) AS weight_group,
  COUNT(*)
FROM patients
GROUP BY weight_group
ORDER BY weight_group DESC;

--or
SELECT
  count(patient_id),
  weight - weight % 10 AS weight_group
FROM patients
GROUP BY weight_group
ORDER BY weight_group DESC

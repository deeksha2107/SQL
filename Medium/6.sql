--Show the total amount of male patients and the total amount of female patients in the patients table.
--Display the two results in the same row.

SELECT 
(SELECT COUNT(*) FROM patients WHERE gender='M') AS male_count,
(SELECT COUNT(*) FROM patients WHERE gender='F') AS female_count;

--or

SELECT 
  SUM(Gender = 'M') as male_count, 
  SUM(Gender = 'F') AS female_count
FROM patients

--or
  
SELECT 
  SUM(CASE WHEN gender = 'M' THEN 1 END) AS male_count,
  SUM(CASE WHEN gender = 'F' THEN 1 END) AS female_count 
FROM patients;

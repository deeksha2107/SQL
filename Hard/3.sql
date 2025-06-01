--All patients who have gone through admissions, can see their medical documents on our site. Those patients are given a temporary password after their first admission. Show the patient_id and temp_password.

--The password must be the following, in order: 1. patient_id 2. the numerical length of patient's last_name 3. year of patient's birth_date

SELECT DISTINCT(p.patient_id), CONCAT(p.patient_id,len(p.last_name),YEAR(birth_date)) as temp_password
from patients as p
join admissions on p.patient_id=admissions.patient_id

--or

SELECT
  DISTINCT p.patient_id,
  p.patient_id || floor(len(last_name)) || floor(YEAR(birth_date)) as temp_password
FROM patients p
  JOIN admissions a ON p.patient_id = a.patient_id

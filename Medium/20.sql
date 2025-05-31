--For each doctor, display their id, full name, and the first and last admission date they attended.

SELECT doctor_id, CONCAT(first_name,' ',last_name) as full_name,
MIN(admission_date) AS first_admission_date, MAX(admission_date) as last_admission_date
from doctors
RIGHT join admissions ON doctors.doctor_id=admissions.attending_doctor_id
GROUP BY attending_doctor_id

--or

SELECT
  doctor_id,
  first_name || ' ' || last_name AS full_name,
  min(admission_date) AS first_admission_date,
  max(admission_date) AS last_admission_date
FROM admissions a
  JOIN doctors ph ON a.attending_doctor_id = ph.doctor_id
GROUP BY doctor_id;

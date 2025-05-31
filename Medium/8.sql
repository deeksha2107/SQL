--Show patient_id, diagnosis from admissions. Find patients admitted multiple times for the same diagnosis.
SELECT patient_id, diagnosis
from admissions
group by patient_id, diagnosis
having COUNT(*)>1

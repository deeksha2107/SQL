-- Show the patient id and the total number of admissions for patient_id 579.

SELECT patient_id, COUNT(*) as total_admissions
FROM admissions
WHERE patient_id=579

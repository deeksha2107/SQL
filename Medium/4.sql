-- Show patient_id, first_name, last_name from patients whos diagnosis is 'Dementia'.Primary diagnosis is stored in the admissions table.
SELECT patients.patient_id, first_name, last_name
FROM patients
JOIN admissions ON admissions.patient_id = patients.patient_id 
WHERE diagnosis = 'Dementia'

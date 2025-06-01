--For every admission, display the patient's full name, their admission diagnosis, and their doctor's full name who diagnosed their problem.

SELECT CONCAT(p.first_name,' ',p.last_name) as patient_name, diagnosis, CONCAT(d.first_name,' ',d.last_name)
FROM patients as p
JOIN admissions as a ON p.patient_id = a.patient_id
join doctors AS d ON a.attending_doctor_id = d.doctor_id

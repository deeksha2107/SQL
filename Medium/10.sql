--Show first name, last name and role of every person that is either patient or doctor.
--The roles are either "Patient" or "Doctor"

SELECT first_name,last_name,'Patient' AS role from patients
union ALL select first_name,last_name,'Doctor' FROM doctors;

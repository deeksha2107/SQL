--We need a breakdown for the total amount of admissions each doctor has started each year. 
--Show the doctor_id, doctor_full_name, specialty, year, total_admissions for that year.

SELECT 
d.doctor_id AS doctor_id,
CONCAT(d.first_name," ",d.last_name) as doctor_name, 
d.specialty, 
YEAR(a.admission_date) as selected_year,
COUNT(*) AS total_admissions
FROM doctors as d
	LEFT JOIN admissions AS a ON a.attending_doctor_id = d.doctor_id
group by doctor_name, selected_year
ORDER BY doctor_id, selected_year

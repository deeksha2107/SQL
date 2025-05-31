--Display the total amount of patients for each province. Order by descending.
SELECT province_name, count(*) as patient_count
FROM PATIENTS
JOIN province_names on patients.province_id = province_names.province_id
group by province_name
order by patient_count desc


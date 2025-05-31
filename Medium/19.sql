--Show first_name, last_name, and the total number of admissions attended for each doctor.Every admission has been attended by a doctor.

SELECT first_name, last_name, count(*)
from admissions
join doctors on admissions.attending_doctor_id = doctors.doctor_id
group by attending_doctor_id

--or

SELECT
  first_name,
  last_name,
  count(*)
from
  doctors p,
  admissions a
where
  a.attending_doctor_id = p.doctor_id
group by p.doctor_id;

--Each admission costs $50 for patients without insurance, and $10 for patients with insurance. All patients with an even patient_id have insurance.
--Give each patient a 'Yes' if they have insurance, and a 'No' if they don't have insurance. Add up the admission_total cost for each has_insurance group.

SELECT 
CASE when patient_id % 2 = 0 THEN 'Yes' ELSE 'No' END as has_insurance,
SUM(CASE when patient_id % 2 = 0 then 10 else 50 end) as cost_after_insurance
FROM admissions

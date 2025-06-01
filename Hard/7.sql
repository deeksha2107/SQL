--Show the percent of patients that have 'M' as their gender. Round the answer to the nearest hundreth number and in percent form.

SELECT 
CONCAT(ROUND(AVG(gender='M')*100,2),'%') as percent_of_male_patients
from patients;

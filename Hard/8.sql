--For each day display the total amount of admissions on that day. Display the amount changed from the previous date.

SELECT 
admission_date, COUNT(admission_date) as admission_day,
count(admission_date) - LAG(count(admission_date)) OVER(ORDER BY admission_date) AS admission_count_change 
FROM admissions
 group by admission_date
 

--Show the province_id(s), sum of height; where the total sum of its patient's height is greater than or equal to 7,000.

SELECT province_id, sum(height) as sum_height
FROM patients
group by province_id
HAVING sum(height) > 7000

--or

SELECT * FROM (SELECT province_id, SUM(height) AS sum_height FROM patients GROUP BY province_id) WHERE sum_height >= 7000;

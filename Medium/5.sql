--Display every patient's first_name.
--Order the list by the length of each name and then by alphabetically.

SELECT first_name
FROM patients
order by LEN(first_name), first_name

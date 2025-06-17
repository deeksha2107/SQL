--Show the employee's first_name and last_name, a "num_orders" column with a count of the orders taken, and a column called "Shipped" that displays "On Time" if the order shipped_date is less or equal to the required_date, "Late" if the order shipped late, "Not Shipped" if shipped_date is null.

Order by employee last_name, then by first_name, and then descending by number of orders.

SELECT e.first_name, e.last_name, COUNT(o.order_id) AS num_orders,
(CASE 
 	WHEN o.shipped_date <= o.required_date THEN 'On Time'
 	WHEN o.shipped_date > o.required_date THEN 'Late'
 	WHEN o.shipped_date is null then 'Not shipped'
 end
 ) as shipped
from orders o
	JOIN employees e ON e.employee_id = o.employee_id
GROUP BY 
e.first_name,
e.last_name,
shipped
ORDER BY
e.last_name,
e.first_name,
num_orders DESc

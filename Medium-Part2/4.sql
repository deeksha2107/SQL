-- Show the total amount of orders for each year/month.

SELECT YEAR(order_date) as order_year, MONTH(order_date) as order_month, COUNt(*) AS no_of_orders
from orders
GROUP BY order_year, order_month

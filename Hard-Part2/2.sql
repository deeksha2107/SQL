--Show how much money the company lost due to giving discounts each year, order the years from most recent to least recent. Round to 2 decimal places

SELECT year(o.order_date) AS 'order_year', 
ROUND(SUM(p.unit_price*od.quantity*od.discount),2) AS 'discount_amount'

from orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON p.product_id = od. product_id

GROUP BY YEAR(o.order_date)
ORDER BY order_year DESC;
